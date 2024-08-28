struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(i32(-1i) * -59544i, abs(-2147483647i)), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-8509i, -1i) << (u_input.d % vec2<u32>(32u)), ~vec2<i32>(-8118i, u_input.b)))), u_input.b >> (u_input.e % 32u));
    let var_1 = vec2<u32>(~_wgslsmith_mult_u32(u_input.e, u_input.d.x), _wgslsmith_dot_vec2_u32(max(u_input.d, _wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(1u, u_input.d.x))), firstTrailingBit(u_input.d << (countOneBits(u_input.d) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1079f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1209f, -1021f))))))) + -799f);
    let var_3 = false;
    var var_4 = ~_wgslsmith_mod_i32(~u_input.b | firstTrailingBit(var_0), abs(~u_input.a));
    return var_0;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> i32 {
    global0 = array<bool, 29>();
    let var_0 = Struct_1(~countOneBits(~(~vec3<u32>(u_input.e, u_input.e, 4294967295u))));
    let var_1 = ~(-(func_3() >> (abs(_wgslsmith_mult_u32(var_0.a.x, var_0.a.x)) % 32u)));
    global0 = array<bool, 29>();
    var var_2 = Struct_4(Struct_1(~abs(var_0.a)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1718f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-956f * -1000f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))), select(max(~countOneBits(vec2<u32>(1u, var_0.a.x)), _wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(var_0.a.x, var_0.a.x)) << (~u_input.d % vec2<u32>(32u))), firstTrailingBit(~var_0.a.yz), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.a.x, 29u)]), vec2<bool>(global0[_wgslsmith_index_u32(86644u, 29u)], true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a.x, 58859u), 29u)]), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(17983u, 29u)]), vec2<bool>(global0[_wgslsmith_index_u32(7693u, 29u)], global0[_wgslsmith_index_u32(105873u, 29u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 29u)])), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a.x, 35837u) ^ u_input.e, 29u)])));
    return _wgslsmith_dot_vec3_i32(reverseBits(-arg_0), _wgslsmith_add_vec3_i32(countOneBits(arg_0 | arg_0), vec3<i32>(arg_0.x, ~(-34467i), u_input.b)) ^ reverseBits(-arg_0));
}

fn func_4(arg_0: i32) -> bool {
    var var_0 = -1i;
    let var_1 = select(!vec2<bool>(!(u_input.e > u_input.d.x), true), select(vec2<bool>(select(true, true, !global0[_wgslsmith_index_u32(u_input.d.x, 29u)]), global0[_wgslsmith_index_u32(~(u_input.d.x << (u_input.e % 32u)), 29u)]), select(select(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(17041u, 29u)], false), vec2<bool>(false, true)), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.e, 29u)]), vec2<bool>(false, true), false), true), select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 29u)], false), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 29u)], false)), select(vec2<bool>(global0[_wgslsmith_index_u32(52971u, 29u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<bool>(true, false)), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 29u)])), !select(vec2<bool>(false, false), vec2<bool>(true, false), global0[_wgslsmith_index_u32(0u, 29u)])), global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.d.x), 29u)]), select(true, global0[_wgslsmith_index_u32(u_input.e, 29u)], all(select(vec2<bool>(global0[_wgslsmith_index_u32(43518u, 29u)], global0[_wgslsmith_index_u32(u_input.d.x, 29u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(18122u, 29u)], global0[_wgslsmith_index_u32(u_input.d.x, 29u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(u_input.d.x, 29u)]), vec2<bool>(true, true)), vec2<bool>(true, true)))));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0 ^ u_input.b, -24340i), -14803i)), ~u_input.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1812f, 508f), vec2<f32>(-721f, 2359f))))))));
    var var_4 = Struct_4(Struct_1(_wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.d.x, 0u, 0u) | vec3<u32>(1u, u_input.e, u_input.e)), reverseBits(~vec3<u32>(u_input.e, 72828u, 59655u)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -1792f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-187f, var_3.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-593f, var_3.x) - vec2<f32>(-1411f, 287f)))))), _wgslsmith_mod_vec2_u32(~u_input.d, vec2<u32>(u_input.e, countOneBits(4294967295u & u_input.d.x))));
    return !(!(_wgslsmith_sub_i32(arg_0, 20434i) < (i32(-1i) * -2147483647i)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = ~(~arg_2.zzw);
    let var_1 = select(vec2<bool>(true, func_4(func_2(vec3<i32>(u_input.c, u_input.a, -18263i), 115f)) | func_4(~u_input.a)), !vec2<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 29u)], false)), any(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2.x, 29u)], global0[_wgslsmith_index_u32(118032u, 29u)]))), !(1f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1089f - -290f), _wgslsmith_f_op_f32(-935f - -112f), true))));
    var var_2 = Struct_3(vec2<u32>(arg_0.a.x, arg_2.x));
    var_2 = Struct_3(arg_0.a.zz << (~(~vec2<u32>(arg_2.x, u_input.d.x) ^ vec2<u32>(1u, arg_0.a.x)) % vec2<u32>(32u)));
    var var_3 = var_1.x;
    return Struct_3(arg_0.a.zy);
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = -1i;
    let var_1 = true;
    let var_2 = Struct_1(~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, arg_1.a.x, u_input.d.x), vec3<u32>(arg_1.a.x, 1u, u_input.d.x)), _wgslsmith_div_u32(4294967295u, u_input.d.x)), ~7629u, firstLeadingBit(~4643u)));
    return Struct_1(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-(~abs(-23854i)), func_1(Struct_1(vec3<u32>(32560u, u_input.d.x, u_input.e)), ~(_wgslsmith_mult_i32(-38601i, u_input.c) & u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, max(1u, u_input.d.x), firstLeadingBit(22077u), min(u_input.e, u_input.e)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.e, 1u, u_input.e, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 0u, u_input.d.x, 35301u), vec4<u32>(13916u, 0u, 0u, u_input.d.x))))));
    var var_1 = var_0.a.x;
    let var_2 = func_1(Struct_1(var_0.a), u_input.a, vec4<u32>(u_input.e & var_0.a.x, 0u, ~_wgslsmith_sub_u32(~var_0.a.x, max(u_input.d.x, var_0.a.x)), ~u_input.e));
    var var_3 = Struct_2(Struct_1(vec3<u32>(func_5(func_2(vec3<i32>(-1i, u_input.b, u_input.a), 196f), var_2).a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 20732u, 4294967295u, var_2.a.x), vec4<u32>(20523u, 2123u, 2255u, var_2.a.x)), vec4<u32>(u_input.d.x, 35230u, 0u, var_2.a.x)), 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1372f + _wgslsmith_f_op_f32(round(-778f))) * _wgslsmith_f_op_f32(f32(-1f) * -458f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-141f - 742f), _wgslsmith_f_op_f32(876f - -1273f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-749f, -743f, 390f))))), func_5(_wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.c, 0i), vec3<i32>(1i, 0i, -1i))), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(1i, 1i, 1i))), Struct_3(~(vec2<u32>(38329u, 56051u) & vec2<u32>(u_input.e, 0u)))));
    var_3 = Struct_2(Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.x, var_0.a.x, 1286u), vec3<u32>(56810u, var_3.d.a.x, _wgslsmith_sub_u32(var_3.a.a.x, var_3.d.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(863f + -1837f) + -207f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(var_3.b)), -408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) * -1101f)))), func_5(~(-33015i), Struct_3(vec2<u32>(u_input.e, ~86082u))));
    let var_4 = var_3.d.a;
    let var_5 = select(vec4<bool>((u_input.a ^ _wgslsmith_sub_i32(2147483647i, 1i)) != _wgslsmith_dot_vec2_i32(vec2<i32>(-35094i, u_input.b) ^ vec2<i32>(0i, 76991i), firstLeadingBit(vec2<i32>(11334i, u_input.a))), global0[_wgslsmith_index_u32(4294967295u, 29u)], true, false), select(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], true, global0[_wgslsmith_index_u32(var_4.x, 29u)], true)), !vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(var_2.a.x, 29u)]), vec4<bool>(all(vec3<bool>(true, true, false)), any(vec2<bool>(global0[_wgslsmith_index_u32(2116u, 29u)], global0[_wgslsmith_index_u32(11558u, 29u)])), true, global0[_wgslsmith_index_u32(0u, 29u)])), select(!select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(50876u, 29u)], true), vec4<bool>(false, false, false, false), false), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], global0[_wgslsmith_index_u32(u_input.e, 29u)], global0[_wgslsmith_index_u32(22097u, 29u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(var_4.x, 29u)], false, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(35000u, 29u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 29u)], true, false, global0[_wgslsmith_index_u32(4753u, 29u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(var_3.d.a.x, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], true), global0[_wgslsmith_index_u32(var_2.a.x, 29u)])), !any(vec2<bool>(global0[_wgslsmith_index_u32(var_2.a.x, 29u)], false))), !(!all(vec3<bool>(global0[_wgslsmith_index_u32(var_3.a.a.x, 29u)], true, global0[_wgslsmith_index_u32(0u, 29u)])))), !(!(1u < _wgslsmith_div_u32(0u, var_0.a.x))));
    let var_6 = vec4<bool>(false, (1i < (15618i << (var_3.a.a.x % 32u))) && global0[_wgslsmith_index_u32(~var_0.a.x, 29u)], _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, 20891i)), abs(vec2<i32>(2147483647i, 0i))) >= 27228i, all(!(!vec2<bool>(var_5.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_clamp_vec4_u32(~select(select(vec4<u32>(1u, var_4.x, var_0.a.x, 4294967295u), vec4<u32>(var_3.a.a.x, 4294967295u, var_3.a.a.x, 76802u), true), ~vec4<u32>(1u, var_0.a.x, var_0.a.x, 1u), !vec4<bool>(false, false, false, var_6.x)), vec4<u32>(_wgslsmith_sub_u32(var_4.x, var_0.a.x << (1u % 32u)), ~0u & ~var_2.a.x, firstLeadingBit(u_input.d.x), reverseBits(max(37991u, var_0.a.x))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_2.a.x, u_input.d.x, var_4.x), vec4<u32>(35649u, 20977u, 1u, 1673u)), ~vec4<u32>(7308u, 4294967295u, var_4.x, u_input.d.x), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 29u)], true, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(20446u, 29u)])) ^ ~(vec4<u32>(u_input.e, 26255u, var_4.x, 2886u) << (vec4<u32>(var_3.d.a.x, var_0.a.x, 1u, 4294967295u) % vec4<u32>(32u)))), var_0.a.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1000f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) - var_3.c.x)), _wgslsmith_f_op_f32(var_3.b + _wgslsmith_f_op_f32(var_3.c.x + var_3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(561f - var_3.b)));
}

