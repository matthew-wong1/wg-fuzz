struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: array<i32, 32>;

var<private> global2: f32;

var<private> global3: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1350f, 409f) - vec2<f32>(-483f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(arg_1, arg_1)), any(vec2<bool>(true, false))))))), ~global1[_wgslsmith_index_u32(~u_input.b, 32u)], !select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), any(vec4<bool>(false, true, true, true))), vec3<bool>(true, any(vec3<bool>(true, false, true)), true), vec3<bool>(any(vec3<bool>(true, false, false)), true, all(vec3<bool>(false, false, true)))), Struct_2(vec2<u32>(4232u, 0u)));
    var var_1 = abs(vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.d.a, vec2<u32>(7472u, 4294967295u)), u_input.b >> (4294967295u % 32u)), _wgslsmith_mod_u32(countOneBits(~var_0.d.a.x), ~firstTrailingBit(22104u))));
    global1 = array<i32, 32>();
    let var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a - var_0.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-911f, -755f))))), arg_0.b.x, vec3<bool>(false, false && !(var_0.c.x | var_0.c.x), !(arg_1 > -777f)), var_0.d);
    let var_3 = Struct_1(countOneBits(var_0.b), arg_0.b);
    return _wgslsmith_add_vec4_u32(firstLeadingBit(select(reverseBits(vec4<u32>(var_0.d.a.x, 62012u, 26598u, var_1.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0.d.a.x, 39264u, 4294967295u), vec4<u32>(var_2.d.a.x, 21672u, u_input.b, var_0.d.a.x), vec4<u32>(1u, u_input.b, u_input.b, 5604u)), true)), vec4<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(~var_0.d.a, firstLeadingBit(var_2.d.a))), 48160u, ~_wgslsmith_mod_u32(min(var_1.x, u_input.b), 1u), ~(~(~var_0.d.a.x))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(-1i, vec4<i32>(-1i, 2147483647i, -firstLeadingBit(-global0[_wgslsmith_index_u32(u_input.b, 20u)]), u_input.a));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(39434u, 1u, 9147u, u_input.b)), ~vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b)) >> (abs(func_3(Struct_1(10631i, var_0.b), -434f)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(23403u ^ u_input.b, u_input.b, abs(0u)), ~(~u_input.b), u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 42683u, u_input.b, 148624u)))), abs(firstLeadingBit(~firstTrailingBit(vec4<u32>(629u, u_input.b, u_input.b, u_input.b)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-552f - 518f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(875f, 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(2095f, 142f)), _wgslsmith_div_f32(512f, -392f), true)), -995f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-275f, _wgslsmith_f_op_f32(f32(-1f) * -2452f), -1168f, -912f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(296f, -576f, -1410f, 1746f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(361f, -102f, 163f, -658f)))))));
    let var_3 = Struct_4(u_input.b, Struct_1(-1867i | ~firstTrailingBit(2147483647i), -vec4<i32>(~(-18029i), _wgslsmith_clamp_i32(-1i, -33707i, u_input.a), u_input.a, 0i)), firstLeadingBit(vec3<u32>(~u_input.b, 1u, _wgslsmith_div_u32(~1u, 4294967295u))), firstLeadingBit(select(_wgslsmith_sub_vec4_i32(abs(var_0.b), max(vec4<i32>(0i, var_0.b.x, var_0.a, global1[_wgslsmith_index_u32(0u, 32u)]), vec4<i32>(-1i, 2147483647i, -2147483647i, -47357i))), vec4<i32>(~u_input.a, u_input.a, firstTrailingBit(u_input.a), _wgslsmith_add_i32(var_0.b.x, -1i)), false)), Struct_2(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, u_input.b), func_3(Struct_1(2147483647i, var_0.b), _wgslsmith_f_op_f32(exp2(var_2.x))).yw)));
    var_1 = reverseBits(u_input.b);
    return var_3.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_4 {
    global2 = _wgslsmith_f_op_f32(1000f * 1f);
    let var_0 = Struct_4(~u_input.b, func_2(true), ~(~(vec3<u32>(81874u, 4294967295u, u_input.b) ^ (vec3<u32>(u_input.b, 61835u, 59547u) >> (vec3<u32>(67017u, u_input.b, u_input.b) % vec3<u32>(32u))))), vec4<i32>(countOneBits(func_2(1u > u_input.b).b.x), -27056i, ~(arg_0.a >> ((1u >> (u_input.b % 32u)) % 32u)), -61388i), Struct_2(_wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(53545u, u_input.b), vec2<u32>(52416u, 8377u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 36118u)))));
    var var_1 = Struct_4(u_input.b << (u_input.b % 32u), Struct_1(1i, -_wgslsmith_mult_vec4_i32(~var_0.b.b, -arg_0.b)), abs(_wgslsmith_mod_vec3_u32(reverseBits(abs(vec3<u32>(var_0.e.a.x, 64077u, u_input.b))), _wgslsmith_div_vec3_u32(~var_0.c, vec3<u32>(var_0.e.a.x, u_input.b, 58809u)))), (_wgslsmith_mult_vec4_i32(firstTrailingBit(arg_0.b), arg_0.b) >> (vec4<u32>(_wgslsmith_sub_u32(var_0.e.a.x, var_0.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 0u, u_input.b, 4294967295u), vec4<u32>(var_0.a, u_input.b, var_0.c.x, 19516u)), select(u_input.b, 1u, true), abs(1u)) % vec4<u32>(32u))) ^ (vec4<i32>(-1i) * -vec4<i32>(24753i, -2649i, global0[_wgslsmith_index_u32(1u, 20u)], var_0.b.a)), var_0.e);
    global3 = all(select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, !select(false, true, false)), vec2<bool>(true, true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1756f, -1331f, 530f, arg_1.x), vec4<f32>(840f, -266f, 2024f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, -1066f, arg_1.x, arg_1.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1379f, -1145f, arg_1.x, -1387f), vec4<f32>(arg_1.x, 456f, arg_1.x, arg_1.x)))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -2905f)) * vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 231f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-892f, -621f, arg_1.x, 167f) + vec4<f32>(arg_1.x, -1450f, arg_1.x, -298f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 709f)))))));
    return Struct_4(1u, Struct_1(~_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, var_1.d.x), -57549i), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(arg_0.a, -2147483647i, arg_0.b.x, -61732i)), vec4<i32>(-1i) * -var_0.b.b)), vec3<u32>(~1u, ~66319u & (var_1.c.x << (~var_1.e.a.x % 32u)), ~abs(1u)), arg_0.b & _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(var_1.b.b.x, global0[_wgslsmith_index_u32(u_input.b, 20u)], 1i, global0[_wgslsmith_index_u32(u_input.b, 20u)])), -min(arg_0.b, var_1.b.b)), Struct_2(~((vec2<u32>(var_1.e.a.x, 69167u) & var_0.e.a) & vec2<u32>(u_input.b, 44155u))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1290f) * -225f) - _wgslsmith_f_op_f32(select(754f, _wgslsmith_f_op_f32(select(2634f, -119f, true)), all(vec3<bool>(arg_2, arg_2, false)))))));
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-255f, _wgslsmith_f_op_f32(-786f - _wgslsmith_f_op_f32(1090f - _wgslsmith_f_op_f32(f32(-1f) * -1681f))), true))));
    var var_1 = func_4(func_2(true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)) - _wgslsmith_f_op_f32(sign(1050f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2869f * 495f) - _wgslsmith_f_op_f32(round(-541f))))), -1000f));
    let var_2 = firstTrailingBit(func_2(-33910i == -_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(var_1.e.a.x, 20u)], -1i)).b);
    let var_3 = 3319f;
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(min(min(~vec2<u32>(u_input.b, 30906u), firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), firstLeadingBit(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, u_input.b)))), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, abs(min(u_input.b, 1u))), ~(~u_input.b) & u_input.b), ((false || all(vec3<bool>(false, false, true))) && !any(vec2<bool>(false, true))) | ((-global1[_wgslsmith_index_u32(35008u, 32u)] < firstLeadingBit(-1i)) & true));
    var var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), u_input.a <= u_input.a)));
    global1 = array<i32, 32>();
    var var_2 = vec3<bool>(false, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-377f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) - _wgslsmith_f_op_f32(367f * _wgslsmith_f_op_f32(select(-542f, 1361f, true)))));
    let var_3 = var_1.x;
    global0 = array<i32, 20>();
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1166f);
    let x = u_input.a;
    s_output = StorageBuffer(select(13497i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-12970i, 0i), vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(var_0.a.x, 32u)])), reverseBits(vec2<i32>(38915i, global1[_wgslsmith_index_u32(var_0.a.x, 32u)]))), 5173i, all(vec4<bool>(var_2.x, any(vec3<bool>(true, true, var_2.x)), all(vec4<bool>(var_2.x, var_1.x, false, true)), var_2.x & var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-393f, _wgslsmith_f_op_f32(trunc(956f))), 688f, true)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(398f, -1011f, true))))), -1196f, vec2<i32>(min(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a.x, var_0.a.x) & var_0.a.x, 32u)], abs(1i)), 2147483647i), firstTrailingBit(vec3<i32>(reverseBits(global0[_wgslsmith_index_u32(0u, 20u)]), ~global0[_wgslsmith_index_u32(var_0.a.x, 20u)], _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(var_0.a.x, 32u)], global1[_wgslsmith_index_u32(var_0.a.x, 32u)])) | reverseBits(vec3<i32>(u_input.a, u_input.a, 901i))));
}

