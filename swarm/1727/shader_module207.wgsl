struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: i32) -> i32 {
    let var_0 = vec3<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_3, arg_0.c), vec3<i32>(arg_1.a, arg_3, 88052i)), -arg_1.a), select(~vec2<i32>(arg_1.a, -13549i), vec2<i32>(arg_2.a.c, arg_2.a.c), select(arg_2.a.a.yy, vec2<bool>(false, arg_2.a.a.x), vec2<bool>(false, true))))), -2147483647i, -min(21984i, _wgslsmith_mult_i32(arg_2.a.c, -9819i)) ^ ~u_input.a);
    var var_1 = arg_1.d.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.d.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f)))));
    var_1 = -795f;
    let var_2 = false;
    return _wgslsmith_sub_i32(arg_1.a, arg_0.c);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> i32 {
    let var_0 = ~(-vec3<i32>(func_3(arg_1.a, Struct_3(arg_0.a.c, vec3<f32>(1509f, 806f, 184f), arg_0.a.d.x, vec2<f32>(195f, -719f), arg_0.a.d.xz), arg_1, -u_input.a), arg_1.a.c ^ (i32(-1i) * -5487i), _wgslsmith_div_i32(1i, -2147483647i << (arg_2.x % 32u))));
    let var_1 = reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2.xw, _wgslsmith_mult_vec2_u32(arg_0.a.d.yz, arg_2.zz)), arg_1.a.d.x) | countOneBits(~arg_2.zx));
    var var_2 = vec3<i32>(firstTrailingBit(var_0.x), _wgslsmith_sub_i32(var_0.x, _wgslsmith_mod_i32(var_0.x, ~2147483647i) >> (_wgslsmith_mod_u32(~arg_2.x, min(arg_1.a.b, 1u)) % 32u)), abs(arg_0.a.c));
    let var_3 = -vec2<i32>(1i, i32(-1i) * -23412i);
    var var_4 = Struct_1(!vec4<bool>(true, arg_1.a.a.x, true, arg_1.a.a.x), 0u, _wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(u_input.a, var_3.x)), vec4<u32>(arg_1.a.d.x, 1u, var_1.x, var_1.x));
    return select(~firstLeadingBit(~min(0i, var_0.x)), arg_1.a.c, arg_1.a.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec4<u32>) -> u32 {
    let var_0 = arg_0.c;
    var var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = 1u;
    let var_3 = min(abs(~arg_3.zz), ~var_1.d.yx) >> (firstTrailingBit(vec2<u32>(min(min(arg_0.b, arg_0.d.x), var_1.b), ~1u)) % vec2<u32>(32u));
    return _wgslsmith_dot_vec2_u32(countOneBits(~(~(~var_1.d.zz))), firstTrailingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.x, arg_3.x), max(vec2<u32>(1846u, 1u), vec2<u32>(4294967295u, 0u)))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> vec2<bool> {
    var var_0 = 549f;
    var var_1 = vec4<bool>(true, false, true & all(vec3<bool>(true, true, true)), false);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1164f);
    var var_3 = _wgslsmith_sub_u32(~1u, func_4(Struct_1(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), 4294967295u, _wgslsmith_mult_i32(0i, func_2(Struct_2(Struct_1(vec4<bool>(false, false, var_1.x, false), arg_0.c, arg_2, vec4<u32>(1u, 0u, arg_0.e.x, 4294967295u))), Struct_2(Struct_1(vec4<bool>(var_1.x, true, var_1.x, var_1.x), arg_0.c, arg_0.a, vec4<u32>(arg_0.c, 0u, 1u, arg_0.e.x))), vec4<u32>(arg_0.c, arg_0.e.x, 17083u, arg_0.c))), vec4<u32>(0u, arg_0.c, arg_0.e.x, 4294967295u) << (reverseBits(vec4<u32>(arg_0.e.x, 39732u, 58035u, 40313u)) % vec4<u32>(32u))), arg_1, var_1.x, _wgslsmith_add_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_0.e.x, 1u, 34250u), vec4<u32>(arg_0.c, arg_0.e.x, arg_0.e.x, 25114u)), countOneBits(vec4<u32>(8519u, 1u, arg_0.c, 4294967295u)), !vec4<bool>(true, false, var_1.x, var_1.x)), ~(~vec4<u32>(arg_0.e.x, arg_0.e.x, arg_0.e.x, arg_0.c)))));
    var_3 = arg_0.e.x;
    return var_1.yx;
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    var var_0 = Struct_2(arg_2.a);
    let var_1 = !arg_1;
    var_0 = Struct_2(var_0.a);
    var var_2 = vec4<i32>(-1i, _wgslsmith_clamp_i32(arg_2.a.c, 51249i, 22496i), abs(func_3(var_0.a, Struct_3(0i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1460f, 134f, -1000f), vec3<f32>(-724f, -2702f, -1297f), vec3<bool>(arg_2.a.a.x, var_0.a.a.x, var_1))), arg_2.a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(494f, -717f)), arg_2.a.d.xx & vec2<u32>(0u, var_0.a.d.x)), arg_2, _wgslsmith_dot_vec3_i32(min(arg_3.xwy, arg_3.xwz), min(vec3<i32>(arg_3.x, u_input.a, arg_2.a.c), arg_3.xzx)))), -2147483647i);
    var var_3 = arg_2.a.d.x;
    return var_0.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(!vec4<bool>(all(vec2<bool>(false, false)), true, true, u_input.a > u_input.a), func_5(!func_1(Struct_3(u_input.a, vec3<f32>(-187f, -381f, 326f), 79430u, vec2<f32>(-1114f, -394f), vec2<u32>(1u, 39814u)), 223f, u_input.a), false, Struct_2(Struct_1(vec4<bool>(false, true, true, true), 85945u, u_input.a, vec4<u32>(26564u, 45501u, 4224u, 43896u))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -55377i, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, -43368i, -1i)))), u_input.a, vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = Struct_3(func_3(var_0.a, Struct_3(select(~var_0.a.c, var_0.a.c, !var_0.a.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2151f, 230f, -1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-425f, -1000f, 2079f))), _wgslsmith_dot_vec4_u32(~var_0.a.d, ~var_0.a.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-264f, 369f), vec2<f32>(1346f, -1000f), var_0.a.a.zy))), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(var_0.a.d.x, 0u)), var_0.a.d.wz << (vec2<u32>(0u, var_0.a.d.x) % vec2<u32>(32u)))), Struct_2(var_0.a), -var_0.a.c), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1330f, -751f, 535f) + vec3<f32>(-522f, 1000f, -1286f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 402f, 568f), vec3<f32>(1100f, 703f, 946f))))))), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec2_u32(var_0.a.d.zw, var_0.a.d.xw), 0u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.d.x, 1u, var_0.a.d.x), var_0.a.d.zxz) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-476f, -338f), vec2<f32>(908f, -184f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(122f, -351f), vec2<f32>(-821f, 616f))), vec2<f32>(1227f, 1046f), var_0.a.a.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1309f, 1479f), vec2<f32>(255f, 1642f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(604f, -1449f))))), reverseBits(var_0.a.d.yx));
    var_0 = Struct_2(Struct_1(select(var_0.a.a, select(var_0.a.a, var_0.a.a, !vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, var_0.a.a.x)), var_0.a.a.x), var_1.e.x, select(_wgslsmith_mod_i32(firstLeadingBit(var_0.a.c), u_input.a << (72715u % 32u)), var_0.a.c, _wgslsmith_clamp_i32(var_0.a.c, -2147483647i, -1i) <= _wgslsmith_sub_i32(u_input.a, 52794i)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(var_0.a.d, ~var_0.a.d), reverseBits(var_0.a.d << (vec4<u32>(var_1.e.x, 0u, var_0.a.d.x, 0u) % vec4<u32>(32u))))));
    var var_2 = -1i;
    let var_3 = var_0.a;
    let var_4 = !(!vec4<bool>(var_3.a.x, var_0.a.a.x, func_1(Struct_3(0i, vec3<f32>(var_1.b.x, var_1.d.x, -460f), 0u, var_1.d, var_1.e), var_1.d.x, 2147483647i).x | (-57471i >= var_3.c), !var_0.a.a.x));
    let var_5 = 1240f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_5, 741f)))))), i32(-1i) * -(~(u_input.a << (var_1.c % 32u))), var_3.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5, var_5, -1477f) - vec3<f32>(var_5, 1600f, 1980f)))) + vec3<f32>(_wgslsmith_f_op_f32(max(-719f, var_5)), _wgslsmith_f_op_f32(select(var_1.b.x, -210f, var_3.a.x)), -550f)) + var_1.b), abs(vec4<u32>(var_1.c & 0u, ~29021u, _wgslsmith_mult_u32(var_0.a.d.x, 1u), 1u)) & ~min(var_0.a.d, vec4<u32>(var_0.a.d.x, var_0.a.b, 0u, var_1.e.x)));
}

