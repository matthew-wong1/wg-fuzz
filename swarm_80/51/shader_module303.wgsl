struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> vec3<i32> {
    let var_0 = Struct_2(true);
    let var_1 = -779f;
    let var_2 = !(!arg_1);
    let var_3 = Struct_2(abs(arg_0) > _wgslsmith_sub_i32(~14267i, u_input.b.x | ~u_input.a.x));
    let var_4 = vec3<i32>(8563i, -34604i, 10753i);
    return countOneBits(vec3<i32>(var_4.x, -firstLeadingBit(firstLeadingBit(737i)), ~3077i));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: f32) -> u32 {
    var var_0 = Struct_2(false);
    var_0 = Struct_2((1u & (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 28616u, 4294967295u)) | ~0u)) == 1u);
    let var_1 = vec4<u32>(~(~firstLeadingBit(1u)), ~1u, _wgslsmith_div_u32(~(abs(0u) | select(0u, 1u, false)), 25515u), _wgslsmith_sub_u32(1u, ~firstTrailingBit(43165u)));
    let var_2 = Struct_2(true && all(arg_0.yz));
    var var_3 = Struct_1(abs(23224u), ~var_1.x & 0u, 0u);
    return 20001u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: i32) -> vec3<u32> {
    var var_0 = Struct_1(~(~(countOneBits(arg_0.x) << (_wgslsmith_mod_u32(arg_0.x, 12261u) % 32u))), ~arg_0.x, arg_0.x);
    var_0 = Struct_1(~(~(~arg_0.x)) | select(~33297u, var_0.a, false), func_4(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), any(vec3<bool>(false, true, false))), func_3(_wgslsmith_div_i32(-14858i, arg_1.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), arg_2.x) & _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, arg_1.x, -16360i), u_input.b.wzz), vec3<i32>(-2147483647i, -2147483647i, -2147483647i)), -734f), 4294967295u);
    var_0 = Struct_1(63069u, var_0.c, ~0u);
    var_0 = Struct_1(arg_0.x, 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~52234u, ~28600u, ~var_0.a, ~arg_0.x), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_0.zzx, arg_0.zzx), var_0.c, 16117u, max(var_0.a, 23942u))), ~(~(~arg_0))));
    let var_1 = firstLeadingBit(~abs(0i));
    return arg_0.zzw;
}

fn func_1() -> Struct_1 {
    let var_0 = -(i32(-1i) * -8748i);
    let var_1 = 1u;
    var var_2 = ~func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4727u, 1u, 1u) | ~vec4<u32>(var_1, 1u, 4294967295u, var_1), ~vec4<u32>(2733u, var_1, 112566u, var_1) | ~vec4<u32>(var_1, var_1, var_1, var_1)), abs(u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(715f)), 1000f)), countOneBits(81516i & var_0));
    var_2 = vec3<u32>(0u, 1u, ~(~((27611u << (var_1 % 32u)) ^ func_4(vec4<bool>(true, false, true, true), u_input.a, 1329f))));
    let var_3 = !(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), true)));
    return Struct_1(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(4294967295u, 4294967295u, 62756u, 4294967295u))), ~vec4<u32>(firstLeadingBit(var_1), ~var_2.x, var_1, 22297u)), var_2.x, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-108f, _wgslsmith_f_op_f32(-142f * _wgslsmith_f_op_f32(max(1000f, -208f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f)), -527f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2007f, -1259f, 1247f, 612f) + vec4<f32>(534f, -1091f, 386f, -1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-406f, 890f, -933f, 1340f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1532f, -1001f, 479f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1136f, 519f, -1000f, -999f)), vec4<bool>(true, true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(~reverseBits(1i)), ~(~(i32(-1i) * -1594i)), _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), u_input.b.yyx)), reverseBits(~u_input.b.x)), min(-reverseBits(52056i), -(i32(-1i) * -6660i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-180f))) - var_1.x), -520f)));
}

