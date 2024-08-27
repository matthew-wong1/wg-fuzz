struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1258f), Struct_1(reverseBits(u_input.c)), -vec3<i32>(arg_0.x, _wgslsmith_clamp_i32(~(-1i), ~0i, _wgslsmith_mult_i32(u_input.a.x, -32974i)), u_input.b.x << (abs(u_input.d.x) % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-567f + -904f), _wgslsmith_f_op_f32(ceil(-210f)))), -195f, select(true, true, 0i < _wgslsmith_add_i32(u_input.b.x, -56801i)))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_f_op_f32(ceil(var_0.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, var_0.a, var_0.d))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.d, -2093f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, -533f, 901f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.d, var_0.d) + vec3<f32>(var_0.d, var_0.a, 196f))))) - vec3<f32>(var_0.a, 216f, 758f)), !any(vec3<bool>(true, all(vec3<bool>(true, true, true)), true))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-567f, 1152f)) - arg_3.x)), Struct_1(1u), ~(~_wgslsmith_clamp_vec3_i32(arg_1.e, arg_1.e, u_input.a.xyy)), _wgslsmith_f_op_f32(floor(1844f))));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(~arg_2.xz, ~select(u_input.d.zy, vec2<u32>(0u, 4480u), vec2<bool>(arg_1.c, arg_1.c)), true), ~(max(u_input.d.xy, vec2<u32>(u_input.c, 23501u)) & _wgslsmith_sub_vec2_u32(vec2<u32>(25950u, arg_1.b), vec2<u32>(76880u, var_0.a.b.a)))), ~(~(~0u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(625f, arg_3.x, -210f, var_0.a.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(129f, -343f, -102f, 1087f) + vec4<f32>(var_0.a.d, -273f, arg_3.x, -1685f))) + _wgslsmith_div_vec4_f32(vec4<f32>(1239f, -147f, 1000f, -1337f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.x, var_0.a.d, arg_3.x, 1000f), vec4<f32>(201f, arg_3.x, -286f, -1000f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-673f, 926f, arg_3.x, var_0.a.d) + vec4<f32>(-1000f, var_0.a.d, -654f, var_0.a.a)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-237f + var_0.a.a), _wgslsmith_f_op_f32(arg_3.x + var_0.a.d)), _wgslsmith_f_op_f32(trunc(-383f)), 724f, _wgslsmith_f_op_f32(105f + arg_3.x))));
    let var_3 = arg_2.zyw;
    var_1 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec4_u32(arg_2, abs(vec4<u32>(4294967295u, 52685u, var_3.x, var_3.x)))), select(~arg_2.x, arg_1.b, !all(arg_1.a))), min(~(~4294967295u), 4625u));
    return arg_2.x;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> bool {
    var var_0 = 113226u;
    let var_1 = Struct_1(_wgslsmith_clamp_u32(arg_0, abs(4294967295u), select(_wgslsmith_sub_u32(1u, u_input.c) << (firstLeadingBit(4294967295u) % 32u), func_4(~arg_1.x, Struct_4(vec3<bool>(false, true, false), 6109u, true, 53556i, vec3<i32>(-52264i, 22746i, 20625i)), vec4<u32>(arg_0, 0u, arg_0, 30355u), _wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(1i, arg_1.x, -11835i), vec4<u32>(u_input.e, 4294967295u, 0u, 1u)))), select(true, true, any(vec2<bool>(false, false))))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(2534f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 364f))))), var_1, vec3<i32>(2147483647i, -firstTrailingBit(12351i), ~select(u_input.a.x, 34376i, true)), _wgslsmith_f_op_f32(-1f)));
    return !(!(true | select(49560u <= var_2.a.b.a, true, true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_3 {
    let var_0 = !func_2(~min(arg_1, arg_1), u_input.a.zyy);
    let var_1 = vec4<bool>(!all(!vec3<bool>(false, false, var_0)) | var_0, min(arg_1, _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_mod_u32(14806u, 1u))) > ~(~40582u), false, var_0);
    var var_2 = Struct_1(arg_1);
    let var_3 = vec2<i32>(~(~29919i), ~u_input.a.x);
    var var_4 = _wgslsmith_dot_vec4_u32(abs(u_input.d), vec4<u32>(arg_1, 1u, 1u, u_input.d.x));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(388f * _wgslsmith_f_op_f32(f32(-1f) * -769f))), Struct_1(countOneBits(_wgslsmith_sub_u32(0u, var_2.a))), (firstLeadingBit(vec3<i32>(-1i, var_3.x, var_3.x)) ^ select(vec3<i32>(u_input.b.x, u_input.b.x, var_3.x), vec3<i32>(var_3.x, 2147483647i, var_3.x), vec3<bool>(false, true, true))) >> (vec3<u32>(var_2.a, 8937u, var_2.a >> (u_input.e % 32u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(round(arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(615f + -102f), 1f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2158f, 1867f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-345f, 2857f)))))), 0u);
    let var_1 = Struct_4(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), 1u, var_0.a.d <= 421f, _wgslsmith_dot_vec2_i32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a, var_0.a.a) * vec2<f32>(var_0.a.a, var_0.a.a))), firstLeadingBit(u_input.d.x)).a.c.yz, _wgslsmith_div_vec2_i32(var_0.a.c.yz, u_input.a.zw)), _wgslsmith_mod_vec3_i32(~(-(vec3<i32>(var_0.a.c.x, var_0.a.c.x, 0i) & vec3<i32>(var_0.a.c.x, -42823i, var_0.a.c.x))), var_0.a.c));
    var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.a.yzx, vec4<u32>(25282u, func_4(-38112i, var_1, u_input.d, vec3<f32>(-246f, var_0.a.d, -381f)), 6770u, ~u_input.d.x))).xx * vec2<f32>(227f, var_0.a.d)), var_1.b);
    var_0 = Struct_3(Struct_2(-419f, Struct_1(var_0.a.b.a), vec3<i32>(_wgslsmith_mod_i32(var_0.a.c.x, u_input.b.x) >> (_wgslsmith_dot_vec2_u32(u_input.d.yz, u_input.d.zy) % 32u), _wgslsmith_clamp_i32(~(-1i), _wgslsmith_clamp_i32(34152i, var_0.a.c.x, 1i), 2147483647i), ~(-1i)), -633f));
    var var_2 = select(-(reverseBits(vec4<i32>(52793i, u_input.a.x, var_0.a.c.x, 0i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.b, u_input.c, 4294967295u), ~u_input.d) % vec4<u32>(32u))), max(vec4<i32>(var_0.a.c.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-16449i, var_0.a.c.x), ~44628i), u_input.a.x, u_input.a.x), vec4<i32>(var_0.a.c.x, countOneBits(-73331i), 28672i, -33177i)), !var_1.c);
    var_2 = (vec4<i32>(var_1.d, 33499i ^ max(u_input.b.x, var_0.a.c.x), firstTrailingBit(firstTrailingBit(var_0.a.c.x)), -1i) >> (vec4<u32>(~firstLeadingBit(var_0.a.b.a), firstLeadingBit(var_0.a.b.a ^ u_input.c), ~var_0.a.b.a, var_0.a.b.a) % vec4<u32>(32u))) & vec4<i32>(~var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, -_wgslsmith_dot_vec4_i32(~u_input.a, abs(vec4<i32>(28236i, -1i, 0i, var_2.x))));
    var var_3 = Struct_4(vec3<bool>(false, var_1.a.x | false, select(87692u, var_1.b, true) == _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.a.b.a, 0u), vec3<u32>(1u, 4294967295u, 0u))), 0u, var_1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-16764i, var_0.a.c.x)), firstLeadingBit(vec2<i32>(var_2.x, u_input.b.x))), _wgslsmith_dot_vec4_i32(~u_input.a, ~vec4<i32>(var_2.x, -1i, -2216i, var_1.e.x))), vec2<i32>(reverseBits(_wgslsmith_clamp_i32(var_0.a.c.x, var_2.x, var_0.a.c.x)), -1i)), var_2.wwx);
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-var_0.a.d), var_0.a.b, var_3.e, 1655f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mod_vec3_i32((var_1.e ^ var_0.a.c) & select(var_3.e, vec3<i32>(var_3.d, 2147483647i, var_3.e.x), var_1.a), firstLeadingBit(~vec3<i32>(u_input.b.x, 1i, -1i))), (_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, vec4<u32>(var_3.b, var_1.b, 22596u, 103986u)) | u_input.d) & vec4<u32>(var_0.a.b.a, ~var_3.b, ~10862u, 25517u))));
}

