struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec3<u32>, 15>;

var<private> global2: Struct_1;

var<private> global3: Struct_4;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = global2.e.yy;
    var var_1 = countOneBits(_wgslsmith_sub_u32(u_input.b.x << ((u_input.d ^ _wgslsmith_mult_u32(33901u, global3.e.x)) % 32u), reverseBits(27564u)));
    let var_2 = Struct_4(Struct_1(-(u_input.a.x >> ((global3.e.x << (13704u % 32u)) % 32u)), !vec3<bool>(!global0.x, any(global3.c.b), global2.e.x), _wgslsmith_f_op_f32(step(global2.c, _wgslsmith_f_op_f32(min(global3.c.c, global3.c.c)))), select(u_input.a.x, global3.a.d, !all(vec3<bool>(var_0.x, global2.e.x, true))), !(!select(global2.b, global3.a.e, vec3<bool>(global0.x, false, var_0.x)))), global3.b, Struct_1(_wgslsmith_sub_i32(~1i, global3.c.d), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(floor(1694f)))), -2147483647i, select(global2.b, global3.c.e, global0.x & global3.b.x)), global2.c, vec4<u32>(1u, global3.e.x, 4294967295u, ~(~min(34154u, u_input.e))));
    let var_3 = var_2;
    let var_4 = ~global2.a;
    return select(true, !(true && var_0.x), global0.x);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> vec2<bool> {
    global0 = select(!vec2<bool>(arg_0, !(global2.c >= global2.c)), select(!vec2<bool>(func_3(), !global0.x), global3.a.b.yy, global2.b.xz), select(arg_0, false, global3.a.e.x));
    var var_0 = vec3<u32>(arg_1.x, 1235u ^ ((max(arg_1.x, 4294967295u) ^ _wgslsmith_dot_vec4_u32(global3.e, vec4<u32>(12594u, 0u, arg_1.x, global3.e.x))) & global3.e.x), abs(firstLeadingBit(arg_1.x)));
    var var_1 = Struct_3(global3.a.d, -505f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.c.c + global3.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(abs(global2.c))) * global2.c), -533f), global2.d, countOneBits(18029i));
    var_1 = Struct_3(-45272i | ~global2.d, all(select(!(!global2.b), vec3<bool>(true, arg_0, true), false)), 318f, -1i, -1i);
    global2 = global3.c;
    return !vec2<bool>(!(!var_1.b), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.c.d, global3.a.d, -2147483647i, global2.a), vec4<i32>(1i, -9992i, 2147483647i, 36700i))) < (i32(-1i) * -29318i));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> bool {
    var var_0 = select(vec4<u32>(~38609u, 4294967295u, 10419u, 1u), countOneBits(arg_0 & ~reverseBits(global3.e)), global3.b);
    global0 = select(select(!select(vec2<bool>(true, true), func_2(false, arg_2.yy), any(arg_1)), global3.c.e.xy, all(vec3<bool>(true, func_2(global3.b.x, var_0.xx).x, true))), vec2<bool>(global2.b.x & (true || func_2(false, arg_0.xx).x), ((global3.a.b.x || global3.b.x) && select(global2.e.x, arg_1.x, global2.b.x)) == global2.e.x), vec2<bool>(any(vec3<bool>(false, global2.e.x || true, global3.b.x)), global3.a.b.x));
    global1 = array<vec3<u32>, 15>();
    global3 = Struct_4(global3.a, !vec4<bool>(true, global0.x, !all(arg_1.xx), arg_1.x), global3.a, _wgslsmith_f_op_f32(-global3.a.c), global3.e);
    let var_1 = global0.x;
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(select(select(global2.b.zz, select(vec2<bool>(global0.x, global0.x), global2.b.yz, global2.b.xx), true), !vec2<bool>(global2.e.x, false), global3.b.x), global2.e.xx, global2.b.yy);
    global1 = array<vec3<u32>, 15>();
    global1 = array<vec3<u32>, 15>();
    var var_0 = 1u;
    var var_1 = Struct_3(abs(u_input.a.x), global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d * global3.d) * global3.c.c)))), _wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(global3.c.d, -(u_input.a.x << (u_input.d % 32u)))), u_input.a.x);
    var var_2 = Struct_4(global3.a, !select(global3.b, vec4<bool>(select(true, false, var_1.b), false, true, any(global2.b.xx)), true), Struct_1(-_wgslsmith_add_i32(global2.d, var_1.e), global2.e, -867f, global2.a, select(vec3<bool>(any(vec4<bool>(global0.x, global0.x, true, false)), !global0.x, true), vec3<bool>(func_1(vec4<u32>(global3.e.x, global3.e.x, global3.e.x, 6193u), global2.b, u_input.b.xxy), true, true), vec3<bool>(var_1.b, false != var_1.b, true))), _wgslsmith_f_op_f32(f32(-1f) * -1534f), u_input.b);
    let var_3 = Struct_2(global3.e.wwz << (_wgslsmith_mult_vec3_u32(global3.e.zyx, u_input.b.wxy) % vec3<u32>(32u)), var_2.a, global2.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global3.c.c, global2.c, func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.e.x, global3.e.x, var_2.e.x, u_input.b.x), vec4<u32>(var_2.e.x, global3.e.x, u_input.b.x, var_2.e.x)), var_2.c.e, var_2.e.yzx))))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec4_i32(-abs(vec4<i32>(0i, var_3.b.a, 2147483647i, u_input.a.x)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(8898i, 2147483647i, -12575i, global2.a), vec4<i32>(-5746i, var_2.c.d, u_input.a.x, var_3.b.a)))));
}

