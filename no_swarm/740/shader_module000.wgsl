struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(i32(-2147483648)), Struct_1(27396i), Struct_1(-1i), Struct_1(4509i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = ~(~vec4<i32>(arg_0, -1i, min(_wgslsmith_dot_vec4_i32(vec4<i32>(77003i, 2147483647i, arg_0, 1i), vec4<i32>(-28196i, 26238i, 0i, 0i)), -1i << (u_input.a.x % 32u)), -reverseBits(arg_0)));
    var var_1 = Struct_1(~arg_0 | (firstLeadingBit(u_input.b) >> (u_input.a.x % 32u)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x << (14489u % 32u), 4u)];
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(-var_1.a, firstLeadingBit(max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, var_1.a, u_input.b), var_0), _wgslsmith_div_i32(2147483647i, var_0.x)))), -1i);
    let var_4 = Struct_1(_wgslsmith_mod_i32(select(2147483647i >> (1u % 32u), -_wgslsmith_dot_vec2_i32(var_0.xz, var_0.ww), false), firstLeadingBit(-var_1.a) ^ max(var_1.a, _wgslsmith_mult_i32(var_1.a, var_0.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(825f, -1244f));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = abs(reverseBits(arg_2.a));
    global0 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-452f, -1201f, -1085f), vec3<f32>(-296f, -613f, 282f), arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1334f, 1000f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), 1202f, _wgslsmith_f_op_f32(select(-1726f, _wgslsmith_f_op_f32(739f - 1000f), arg_1.x & true)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(921f, var_1.x, var_1.x)))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-244f, var_1.x, -101f))))))));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_1.x, var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) * _wgslsmith_f_op_f32(ceil(-274f))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(var_1.x - var_1.x))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, -354f, var_1.x)))))), vec3<f32>(_wgslsmith_f_op_f32(func_3(-_wgslsmith_sub_i32(12968i, 0i))), -553f, var_2.x));
    return u_input.a.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = !all(vec4<bool>(false, true, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) <= func_2(arg_2, vec2<bool>(false, false), arg_2), _wgslsmith_div_i32(arg_2.a, 0i) > u_input.b));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(27367u, u_input.a.x >> (_wgslsmith_div_u32(u_input.a.x, 0u) % 32u)), u_input.a) ^ _wgslsmith_dot_vec2_u32(abs(abs(vec2<u32>(u_input.a.x, u_input.a.x))), vec2<u32>(1u, u_input.a.x) >> (_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = true;
    var var_3 = ~(~(u_input.a.x >> (1u % 32u)) & 0u) << (u_input.a.x % 32u);
    var var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-34750i, arg_0), vec2<i32>(0i, u_input.b))), ~min(arg_1.a, -13814i), countOneBits(-1i), arg_1.a & -u_input.b) ^ (min(vec4<i32>(arg_2.a, -2147483647i, arg_1.a, arg_1.a), vec4<i32>(arg_1.a, -28131i, -1i, arg_0) & vec4<i32>(u_input.b, 2147483647i, 49284i, u_input.b)) | -vec4<i32>(arg_0, 17911i, u_input.b, -18444i)), abs(vec4<i32>(~arg_2.a, firstTrailingBit(arg_2.a), reverseBits(u_input.b), -2147483647i ^ u_input.b) ^ (_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a, 2147483647i, arg_0, 36217i), vec4<i32>(arg_2.a, arg_0, u_input.b, arg_2.a)) ^ ~vec4<i32>(-10727i, 2147483647i, u_input.b, arg_2.a))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = func_1(u_input.b, global0[_wgslsmith_index_u32(min(u_input.a.x, 1u), 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]);
    global0 = array<Struct_1, 4>();
    var var_1 = ~firstLeadingBit(abs(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, 0i, 1i, 0i)), abs(vec4<i32>(u_input.b, 1686i, -2147483647i, 4779i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1414f, -1437f, 632f, 1546f) + _wgslsmith_div_vec4_f32(vec4<f32>(2043f, -369f, -320f, -553f), vec4<f32>(-171f, -1188f, 1109f, 562f))))), ~min(~firstTrailingBit(vec4<u32>(65081u, 1u, 4294967295u, u_input.a.x)), vec4<u32>(u_input.a.x, 1u, _wgslsmith_mod_u32(687u, u_input.a.x), _wgslsmith_mod_u32(21145u, u_input.a.x))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 14358u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 775u)), u_input.a.x, ~28142u, 1u), vec4<u32>(u_input.a.x, ~33496u, ~4294967295u, reverseBits(0u))), _wgslsmith_f_op_f32(ceil(-1045f)));
}

