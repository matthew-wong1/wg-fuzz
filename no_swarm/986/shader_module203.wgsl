struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    global0 = any(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)) && true;
    var var_0 = firstLeadingBit(~(~(~4294967295u)));
    let var_1 = false;
    global1 = array<vec4<bool>, 9>();
    global0 = true;
    return ~(~1u);
}

fn func_2() -> vec3<bool> {
    global1 = array<vec4<bool>, 9>();
    var var_0 = ~vec2<u32>(_wgslsmith_mult_u32(1u >> (func_3() % 32u), ~(~u_input.c)), 0u);
    var var_1 = _wgslsmith_sub_i32(select(u_input.b, 0i, firstLeadingBit(_wgslsmith_mult_u32(6681u, 57622u)) <= select(1u, ~1u, true)), u_input.b);
    var_0 = vec2<u32>(firstLeadingBit(abs(countOneBits(0u))) << (var_0.x % 32u), ~(~min(~var_0.x, u_input.d.x | u_input.a)));
    let var_2 = true;
    return vec3<bool>(any(select(vec4<bool>(!var_2, any(vec2<bool>(var_2, true)), true, true), !(!global1[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<bool>(all(vec3<bool>(var_2, false, var_2)), true, true, u_input.b != 1i))), true, all(vec3<bool>(!var_2, any(vec3<bool>(var_2, true, false)), var_2)));
}

fn func_1() -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-1f) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1049f + _wgslsmith_f_op_f32(f32(-1f) * -1505f)))));
    var var_0 = ~(~(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(-26304i, u_input.b, u_input.b)) & reverseBits(vec3<i32>(u_input.b, 1i, 2147483647i))) ^ vec3<i32>(firstLeadingBit(32274i), u_input.b, 6880i));
    var var_1 = false;
    var var_2 = vec2<bool>((true & (-14883i > u_input.b)) | any(func_2()), !select(true, true, true));
    var_1 = -_wgslsmith_mod_i32(var_0.x, 22391i) != -1i;
    return Struct_3(Struct_2(u_input.b, Struct_1(!(!vec2<bool>(var_2.x, var_2.x)), !vec4<bool>(var_2.x, false, var_2.x, var_2.x), u_input.a, _wgslsmith_f_op_f32(-1111f + _wgslsmith_f_op_f32(abs(-875f))), vec3<i32>(0i << (1u % 32u), -33357i, -2147483647i)), ~vec2<u32>(~60022u, ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~max(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(69917u, u_input.d.x), vec2<u32>(30094u, 1u)), 93551u), u_input.d.xz);
    global1 = array<vec4<bool>, 9>();
    var var_2 = func_1().a.b;
    var var_3 = Struct_2(i32(-1i) * -56829i, var_0.a.b, var_1);
    let var_4 = abs(~(~u_input.b ^ ~0i)) ^ -(firstLeadingBit(-1i) >> (var_1.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2273i, -min(_wgslsmith_div_i32(-2147483647i, var_4), -1i), -19190i), 1000f);
}

