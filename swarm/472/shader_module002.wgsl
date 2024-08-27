struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>) -> i32 {
    return ~_wgslsmith_dot_vec4_i32(-firstTrailingBit(-arg_0), arg_0);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(abs(countOneBits(_wgslsmith_sub_i32(91160i, -16888i)) >> (min(35396u << (u_input.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a))) % 32u)), vec2<f32>(1f, 1f));
    let var_1 = Struct_1(~(-1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.b)) * var_0.b) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.x, -1096f))))))));
    var var_2 = var_1;
    let var_3 = var_1;
    var var_4 = _wgslsmith_mult_vec4_i32(reverseBits(-_wgslsmith_sub_vec4_i32(min(vec4<i32>(5864i, 3655i, var_3.a, var_3.a), vec4<i32>(var_0.a, -83346i, var_1.a, -39847i)), vec4<i32>(18008i, -17185i, var_0.a, 1i) & vec4<i32>(0i, -44256i, -47469i, var_2.a))), vec4<i32>(firstLeadingBit(var_0.a) ^ var_2.a, _wgslsmith_sub_i32(-_wgslsmith_div_i32(var_2.a, 2147483647i), min(3636i, var_3.a)), abs(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -17936i), vec2<i32>(var_2.a, 18731i))), ~(-var_0.a)));
    return _wgslsmith_f_op_f32(-var_0.b.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = -(arg_0.a | 0i);
    var var_2 = 16741u;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 1123f, -1779f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -446f), 613f) + vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(func_3()), var_0.b.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, -411f) - vec3<f32>(354f, -215f, var_0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, var_0.b.x, var_0.b.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -402f, arg_0.b.x) + vec3<f32>(arg_0.b.x, -1000f, arg_0.b.x))))));
    var_2 = u_input.a;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(abs(_wgslsmith_add_i32(1i, -21402i) >> (u_input.a % 32u)), -select(abs(firstLeadingBit(-18581i)), 1i, true));
    var var_1 = vec3<u32>(4294967295u, u_input.a, ~firstLeadingBit(u_input.a));
    let var_2 = func_2(Struct_1(~(-func_1(vec4<i32>(12573i, -1i, -32974i, -33883i), vec2<i32>(-2147483647i, -43577i))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(1096f)), -212f)))));
    var_0 = 0i;
    let var_3 = var_2.a;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-func_2(var_2).b.x), _wgslsmith_f_op_f32(var_2.b.x * var_2.b.x), -860f);
    var var_5 = var_2;
    var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(2080f - _wgslsmith_f_op_f32(-var_2.b.x)), var_2.b.x, -743f))));
    let x = u_input.a;
    s_output = StorageBuffer(-2283f, var_1.yx);
}

