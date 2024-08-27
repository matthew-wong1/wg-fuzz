struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 4294967295u), vec3<bool>(true, false, true), vec3<i32>(1i, 0i, -67648i), 1926u, vec3<bool>(false, true, true));

var<private> global1: Struct_2;

var<private> global2: i32 = 1i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> vec2<u32> {
    let var_0 = !select(select(global1.a, vec2<bool>(arg_0.a.x, all(vec3<bool>(false, arg_0.a.x, arg_0.a.x))), !select(vec2<bool>(global0.e.x, false), vec2<bool>(global0.b.x, true), false)), vec2<bool>(all(!vec4<bool>(false, global0.e.x, true, arg_0.a.x)), true), all(select(select(vec2<bool>(true, false), global0.e.xz, vec2<bool>(global0.b.x, global1.a.x)), vec2<bool>(true, true), !global1.a)));
    global1 = arg_0;
    global1 = arg_0;
    global0 = Struct_1(global0.a, vec3<bool>((-u_input.b > 39144i) && !(!var_0.x), false, false), -_wgslsmith_clamp_vec3_i32(global0.c, -vec3<i32>(global0.c.x, global0.c.x, 0i), _wgslsmith_mod_vec3_i32(abs(global0.c), vec3<i32>(-59532i, -45606i, 4899i))), ~global0.d, global0.b);
    var var_1 = arg_0;
    return abs(reverseBits(~firstTrailingBit(~vec2<u32>(12231u, 6091u))));
}

fn func_2() -> vec2<u32> {
    global2 = u_input.b;
    global0 = Struct_1(func_3(Struct_2(select(vec2<bool>(global1.a.x, false), select(global1.a, global0.b.xz, global0.b.zz), global1.a)), _wgslsmith_mod_vec4_u32(~u_input.c, vec4<u32>(u_input.a, u_input.c.x, 4294967295u, global0.d) ^ (u_input.c >> (u_input.c % vec4<u32>(32u))))), !(!vec3<bool>(!global1.a.x, true, global1.a.x)), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global0.c.x), global0.c.yz), global0.c.yy) | abs(global0.c.x), 1i, i32(-1i) * -1i), 1u, vec3<bool>(all(select(select(vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x), vec4<bool>(global1.a.x, true, false, global0.b.x), true), !vec4<bool>(false, global0.b.x, global0.b.x, false), select(vec4<bool>(false, true, global0.b.x, global1.a.x), vec4<bool>(global0.b.x, true, true, global0.e.x), false))), true, -_wgslsmith_mult_i32(global0.c.x, 0i) <= u_input.b));
    let var_0 = Struct_1(~(~u_input.c.wx), select(select(vec3<bool>(false, u_input.c.x >= 0u, 2147483647i < u_input.b), global0.e, global0.e.x), !select(global0.e, select(vec3<bool>(global1.a.x, true, global1.a.x), vec3<bool>(global0.e.x, false, false), global0.b), !global1.a.x), global0.b), vec3<i32>(-6047i, -2147483647i, -1i), 0u, global0.b);
    let var_1 = var_0;
    let var_2 = vec2<u32>(0u, abs(var_1.d));
    return ~global0.a;
}

fn func_1(arg_0: vec4<u32>) -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, 52414u, 1u), ~global0.a.x), vec2<u32>(4294967295u, global0.a.x), ~vec2<u32>(arg_0.x, 20469u)), vec2<u32>(~global0.a.x, 1u) >> (func_2() % vec2<u32>(32u))), global0.e, global0.c, 4294967295u, global0.b);
    let var_0 = Struct_1(~max(global0.a, arg_0.zz << (vec2<u32>(u_input.a, 32692u) % vec2<u32>(32u))) | select(firstLeadingBit(u_input.c.zz & vec2<u32>(0u, u_input.a)), u_input.c.ww, !(!vec2<bool>(global0.e.x, true))), select(select(select(!vec3<bool>(global0.e.x, true, true), select(vec3<bool>(global1.a.x, global1.a.x, global0.b.x), vec3<bool>(global1.a.x, true, false), global0.b.x), !vec3<bool>(false, global1.a.x, false)), vec3<bool>(global1.a.x, !global0.b.x, global0.b.x), _wgslsmith_div_u32(global0.d, arg_0.x) < u_input.a), select(global0.b, !vec3<bool>(global1.a.x, global1.a.x, false), select(vec3<bool>(true, global1.a.x, true), vec3<bool>(global1.a.x, true, global1.a.x), vec3<bool>(true, global0.e.x, true))), !(!global0.e)), -(~reverseBits(vec3<i32>(global0.c.x, u_input.b, global0.c.x))), global0.d, !global0.e);
    global1 = Struct_2(!select(!select(vec2<bool>(global1.a.x, var_0.b.x), vec2<bool>(false, global1.a.x), true), vec2<bool>(true, global0.e.x), select(vec2<bool>(global0.b.x, global0.e.x), vec2<bool>(var_0.b.x, global1.a.x), select(vec2<bool>(true, var_0.b.x), vec2<bool>(var_0.e.x, var_0.b.x), vec2<bool>(true, global1.a.x)))));
    global0 = var_0;
    let var_1 = select(_wgslsmith_div_vec2_u32(func_2(), u_input.c.xw), u_input.c.yx, var_0.b.zx) | max(select(arg_0.wz, ~_wgslsmith_sub_vec2_u32(u_input.c.ww, arg_0.zw), var_0.e.x), min(var_0.a, _wgslsmith_div_vec2_u32(arg_0.xy << (global0.a % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global0.d), vec2<u32>(1u, u_input.a)))));
    return vec3<bool>(_wgslsmith_f_op_f32(ceil(-1261f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f + -1000f)) * _wgslsmith_f_op_f32(max(-878f, -424f))), false, global1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_sub_vec2_u32(global0.a, ~(~global0.a)), !(!(!func_1(u_input.c))), vec3<i32>(_wgslsmith_add_i32(global0.c.x | 0i, 1i), -1i, -(~u_input.b)), 20384u, vec3<bool>(1u >= _wgslsmith_sub_u32(global0.a.x, u_input.a), !(all(vec4<bool>(global0.e.x, global1.a.x, global1.a.x, true)) && true), -1239f <= _wgslsmith_f_op_f32(floor(-1095f))));
    var var_1 = var_0.c.x;
    let var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-165f + 885f)))) + _wgslsmith_f_op_f32(-1f)), ~4294967295u, _wgslsmith_f_op_f32(1f + 894f), countOneBits(vec3<i32>(~(~16354i), 30855i, 40413i)));
}

