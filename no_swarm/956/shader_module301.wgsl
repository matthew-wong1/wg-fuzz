struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = Struct_1(vec3<f32>(-1087f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(118f, 701f)))), 173f), _wgslsmith_f_op_f32(-1217f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1115f, 1203f)))));
    var var_1 = ~22296u;
    let var_2 = true;
    return 2147483647i << (min(~(4708u << (u_input.b % 32u)) | ~1u, 4294967295u) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> bool {
    return arg_2.a.x;
}

fn func_3() -> i32 {
    var var_0 = abs(-vec2<i32>(select(0i, 11527i, true), _wgslsmith_sub_i32(55409i, 0i) ^ ~u_input.c));
    var_0 = vec2<i32>(33345i, ~select(i32(-1i) * -33095i, firstLeadingBit(9273i) | countOneBits(var_0.x), true));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-418f, 2061f, 1031f, -1546f)))))))));
    let var_3 = 491f;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<i32>(func_1(_wgslsmith_div_u32(~u_input.b, u_input.b)), ~(~_wgslsmith_mod_i32(23594i, u_input.a)), -54407i));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-111f + 614f), _wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(-1175f - 1717f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-389f, -288f, 471f))))))));
    let var_2 = Struct_4(var_0.a ^ ~_wgslsmith_mod_vec3_i32(-vec3<i32>(1186i, 0i, 2147483647i), var_0.a), vec2<bool>(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -1203f, var_1.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(561f, var_1.a.x)), Struct_2(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), ~vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<bool>(true, true, true))), true), Struct_3(~_wgslsmith_sub_vec3_i32(var_0.a, var_0.a) & _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(var_0.a, var_0.a), ~var_0.a)), Struct_3(var_0.a));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec2<u32>(8690u, 1u) >> (reverseBits(vec2<u32>(49970u, u_input.b)) % vec2<u32>(32u)))), ~vec2<u32>(u_input.b, ~_wgslsmith_sub_u32(u_input.b, u_input.b)), var_3.c.a.xz, func_3());
}

