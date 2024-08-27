struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 0u, 40692u);

var<private> global1: array<i32, 17>;

var<private> global2: Struct_2 = Struct_2(Struct_1(false, vec4<u32>(1u, 19204u, 1u, 4294967295u), -39555i), Struct_1(true, vec4<u32>(4294967295u, 1u, 0u, 0u), 53667i), 77406u, vec2<i32>(2147483647i, i32(-2147483648)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> vec3<bool> {
    global1 = array<i32, 17>();
    let var_0 = !global2.b.a;
    var var_1 = any(!vec2<bool>(_wgslsmith_f_op_f32(ceil(-562f)) > _wgslsmith_f_op_f32(-235f - 241f), true));
    let var_2 = ~abs(vec3<u32>(~0u, _wgslsmith_dot_vec2_u32(global2.a.b.zx, _wgslsmith_sub_vec2_u32(u_input.b.yx, vec2<u32>(global0.x, u_input.b.x))), global2.b.b.x));
    var var_3 = Struct_5(global2.a, global2.b.b.yy, vec2<u32>(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(73124u, global2.c), ~global0.yy)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(955f)))), _wgslsmith_f_op_f32(f32(-1f) * -1732f))), -916f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1806f)), -881f)), -194f)), global2.b);
    return !select(select(select(!vec3<bool>(var_3.a.a, false, false), !vec3<bool>(var_0, true, true), var_0), !(!vec3<bool>(true, var_3.e.a, true)), var_0), !select(vec3<bool>(global2.a.a, true, global2.b.a), !vec3<bool>(global2.b.a, false, global2.b.a), select(vec3<bool>(false, true, true), vec3<bool>(var_3.e.a, var_3.e.a, var_0), vec3<bool>(var_3.e.a, true, false))), !vec3<bool>(true, global2.b.a, true));
}

fn func_2() -> vec2<u32> {
    var var_0 = abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-41947i, global2.b.c), -1i, global1[_wgslsmith_index_u32(~30221u, 17u)], firstTrailingBit(2147483647i)), -(vec4<i32>(1i, -2147483647i, global1[_wgslsmith_index_u32(global0.x, 17u)], global1[_wgslsmith_index_u32(global0.x, 17u)]) & vec4<i32>(global2.a.c, u_input.c, global1[_wgslsmith_index_u32(global2.b.b.x, 17u)], global2.d.x))), -47621i | firstTrailingBit(0i), u_input.c));
    global1 = array<i32, 17>();
    global1 = array<i32, 17>();
    var var_1 = select(vec3<bool>(any(!select(vec2<bool>(global2.b.a, true), vec2<bool>(true, true), global2.a.a)), !all(func_3(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], 1i, u_input.c, global2.b.c))), true), vec3<bool>(all(vec3<bool>(!global2.b.a, global2.b.a, global2.b.a)), 4294967295u <= (_wgslsmith_dot_vec3_u32(global2.a.b.wzy, vec3<u32>(0u, u_input.a, 26355u)) | 13540u), any(func_3(vec4<i32>(global1[_wgslsmith_index_u32(1u, 17u)], global2.a.c, -21528i, u_input.c)))), all(vec4<bool>(true, false, global2.a.a, global2.b.a)));
    var_0 = countOneBits(_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.c, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 17u)])), -vec3<i32>(1i, var_0.x, var_0.x))) << (_wgslsmith_sub_vec3_u32(~u_input.b, u_input.b) % vec3<u32>(32u));
    return global0.xx;
}

fn func_1() -> Struct_1 {
    let var_0 = global2.b;
    var var_1 = vec4<u32>(firstTrailingBit(54528u), ~var_0.b.x, _wgslsmith_add_u32(~global2.c, _wgslsmith_dot_vec2_u32(countOneBits(func_2()), var_0.b.yz)), global2.a.b.x ^ 85828u);
    global0 = ~countOneBits(var_1.xzz);
    return Struct_1(false | !global2.a.a, max(global2.a.b, global2.b.b), -25686i);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_3 {
    let var_0 = false;
    var var_1 = !select(!(!(!vec3<bool>(arg_0.a, false, global2.b.a))), vec3<bool>(true, true, true), func_3(-vec4<i32>(-5680i, 0i, arg_0.c, arg_0.c)));
    var_1 = !func_3(vec4<i32>(~(-1i), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], global2.b.c), global1[_wgslsmith_index_u32(func_1().b.x, 17u)], func_1().c) & _wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 17u)], global2.b.c, -39870i, -14027i), ~vec4<i32>(global1[_wgslsmith_index_u32(arg_0.b.x, 17u)], arg_0.c, -5466i, 0i)));
    global1 = array<i32, 17>();
    var var_2 = vec4<bool>(var_1.x, var_0, !(!var_1.x), func_1().a);
    return Struct_3(!(false && var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~37379u, ~global2.b.b.x), reverseBits(37870u) << (firstTrailingBit(4294967295u) % 32u)), u_input.a & select(~66699u, ~u_input.a, true), global2.c);
    var var_0 = true;
    let var_1 = func_4(func_1(), firstLeadingBit(~(~(~0u))), _wgslsmith_f_op_f32(step(-492f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))));
    var var_2 = Struct_1(abs(global2.c) <= countOneBits(global0.x), firstLeadingBit(reverseBits(global2.b.b)), 0i);
    global0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 43399u, global0.x, 1u), select(func_1().b, ~vec4<u32>(global2.b.b.x, var_2.b.x, global0.x, 1u), var_2.a)), 1u, u_input.b.x) ^ _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(63097u, 0u, global0.x)), ~vec3<u32>(4294967295u, 39495u, 1u)), u_input.b);
    let var_3 = ~(~countOneBits(var_2.b.x));
    global0 = vec3<u32>(~global2.a.b.x, global0.x, var_2.b.x << (global2.b.b.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~global2.a.c);
}

