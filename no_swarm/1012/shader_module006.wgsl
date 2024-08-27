struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-30128i, 1i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    let var_0 = arg_2;
    var var_1 = -select(vec2<i32>(arg_0 >> (16997u % 32u), 0i) >> ((vec2<u32>(u_input.b.x, u_input.b.x) ^ (u_input.b.xx ^ vec2<u32>(70890u, u_input.a))) % vec2<u32>(32u)), vec2<i32>(global0.x, 1i), vec2<bool>(true, any(arg_1.xzw)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))) + 625f)));
    var_2 = var_0;
    var var_3 = _wgslsmith_add_vec4_i32(-firstTrailingBit(vec4<i32>(2086i, arg_0, arg_0, 19979i) >> (vec4<u32>(4294967295u, 0u, 52818u, 0u) % vec4<u32>(32u))) >> (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(3815u, 4294967295u, u_input.a, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 1u)) << ((vec4<u32>(u_input.b.x, u_input.a, 0u, 4294967295u) | vec4<u32>(u_input.a, u_input.a, 63512u, u_input.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<i32>(var_1.x | var_1.x, var_1.x, reverseBits(var_1.x >> (u_input.b.x % 32u)), ~_wgslsmith_mult_i32(-1i, global0.x)));
    return -1103f;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(28951i, vec4<bool>(false, false, false, true), -597f)), _wgslsmith_f_op_f32(sign(489f)), -1359f, 1000f)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.x, vec4<bool>(true, false, true, false), -141f)) * _wgslsmith_f_op_f32(max(-292f, -432f))))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, global0.x, 32428i), vec4<i32>(global0.x, 1i, global0.x, 1i)))), ~u_input.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-637f, -390f, 1171f), vec3<f32>(-708f, 1387f, 416f), true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, 967f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(870f, 1841f, 469f)))), vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), all(vec4<bool>(true, true, false, true)) && true))), ~_wgslsmith_mult_i32(global0.x, max(global0.x, -global0.x)));
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-649f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c - 1f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))))));
    return -205f;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1041f));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(func_2()), 702f, var_0.x)));
    global0 = ~vec2<i32>(-47314i, ~arg_1);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1289f, var_1.x, -1772f) - _wgslsmith_f_op_vec4_f32(-arg_2.a))), arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-235f, _wgslsmith_div_f32(371f, var_1.x))), _wgslsmith_add_vec4_i32(~vec4<i32>(0i, arg_1, global0.x, -1i), abs(-vec4<i32>(38705i, 9576i, arg_1, arg_2.d.x)))), u_input.b.x, arg_2.a.xwz, 0i);
    global0 = var_2.a.d.zx;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(27419i, func_1(true, -global0.x ^ ~36454i, Struct_1(vec4<f32>(-1482f, -2373f, -1852f, 769f), any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(-1893f * -3506f), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, 22888i, 1i), vec4<i32>(-19057i, global0.x, 7492i, global0.x)))), global0.x, 51828i) << (vec4<u32>(u_input.a, ~(u_input.a | 4294967295u) >> (~_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(u_input.a, 0u)) % 32u), _wgslsmith_div_u32(0u, 1u), _wgslsmith_mult_u32(u_input.a, ~39225u)) % vec4<u32>(32u));
    let var_1 = 1000f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1000f, -1455f, 815f) * vec4<f32>(2403f, -632f, var_1, 921f))))), any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), var_1))), var_0), ~(~0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(264f, var_1, var_1), vec3<f32>(var_1, var_1, 918f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-303f, var_1, var_1), vec3<f32>(var_1, -1071f, var_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1))))), -_wgslsmith_add_i32(-9213i, global0.x));
    let var_3 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(select(~4294967295u, var_2.b, true), 57297u, u_input.b.x)), ~var_2.b, reverseBits(_wgslsmith_mod_vec2_u32(~u_input.b.zy, u_input.b.yx)));
}

