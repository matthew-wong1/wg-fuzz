struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = -186f;
    var_0 = 1968f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(208f, arg_0.x, any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true)))))));
    var_0 = arg_0.x;
    var_0 = 211f;
    return abs(u_input.c.x);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> u32 {
    return arg_1 << (u_input.e % 32u);
}

fn func_2() -> u32 {
    var var_0 = ~(func_4(u_input.c.x, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-762f, 521f) * vec2<f32>(1375f, -410f))), _wgslsmith_sub_vec2_i32(u_input.a.xz, u_input.a.xy) ^ vec2<i32>(u_input.d, -23536i), vec2<i32>(u_input.b.x, ~u_input.b.x)) | _wgslsmith_mult_u32(~(u_input.e & 41445u), firstTrailingBit(1u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1533f, -821f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(702f, -1000f), vec2<f32>(-524f, 935f)))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1016f, -104f) - vec2<f32>(1282f, -856f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(334f)), 355f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(649f, 1000f))))))));
    var_0 = _wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~46866u, firstTrailingBit(u_input.c.x)), abs(_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(22375u, u_input.c.x))), reverseBits(4294967295u & u_input.c.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, u_input.c.x, u_input.e), u_input.c) ^ ~vec3<u32>(u_input.e, u_input.c.x, u_input.e)), u_input.e);
    var_0 = _wgslsmith_mult_u32(~(~max(u_input.e, 3844u) ^ 4294967295u), u_input.c.x ^ 30958u);
    let var_2 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), -456f >= var_1.x), select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), vec3<bool>(0u == _wgslsmith_mod_u32(u_input.c.x, u_input.e), select(all(vec2<bool>(true, true)), true, false), false)), vec3<bool>(true, false, true), true);
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c.x, 0u), vec2<u32>(~1u, 4294967295u));
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(928f, 1691f, 1000f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-256f, arg_0.x, arg_0.x))), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))))), false, vec4<bool>(false, true, true, any(vec4<bool>(true, true, true, true))), u_input.a.xx), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, arg_0.x, 1141f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1721f, 2397f, arg_0.x) - vec3<f32>(-1041f, arg_0.x, -173f))), all(vec4<bool>(true, true, true, false)), vec4<bool>(24970i != u_input.b.x, true, 4294967295u != u_input.c.x, true), u_input.b), ~_wgslsmith_mult_i32(1i, u_input.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 1059f))), true, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), ~(~u_input.a.xz)), 1105f, Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.x, -438f) - vec3<f32>(939f, arg_0.x, 2229f)))), false, select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, false, true, false), true), firstLeadingBit(u_input.a.yx) ^ (vec2<i32>(u_input.b.x, u_input.d) ^ vec2<i32>(11392i, arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-944f)) + _wgslsmith_f_op_f32(-arg_0.x)), arg_1);
    var var_1 = var_0.a;
    var var_2 = reverseBits(vec2<u32>(3954u, 2148u) & ~(~u_input.c.zx | ~vec2<u32>(57936u, arg_1)));
    var_1 = var_0.a;
    var_1 = Struct_1(var_0.b.a.a, var_0.a.b, vec4<bool>(true || !(2605u <= var_2.x), false, _wgslsmith_f_op_f32(-var_0.c) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c, -206f)) + 469f), any(var_1.c.yzw)), ~(-select(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 0i), var_1.d), var_1.d & vec2<i32>(-2147483647i, u_input.a.x), select(var_0.a.c.zw, vec2<bool>(false, var_1.c.x), false))));
    return var_0.b.e;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32) -> i32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(1240f + _wgslsmith_f_op_f32(arg_2 * arg_0))), arg_2, -998f));
    let var_2 = true;
    let var_3 = Struct_4(func_5(_wgslsmith_f_op_vec2_f32(var_1.yz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_2), var_1.xz, vec2<bool>(false, arg_1))) - _wgslsmith_f_op_vec2_f32(step(var_1.xy, vec2<f32>(arg_2, arg_2))))), func_2(), max(_wgslsmith_sub_i32(43634i, -79885i), -41278i), _wgslsmith_mult_vec4_u32(vec4<u32>(func_3(vec2<f32>(var_1.x, var_1.x)), 15526u, u_input.c.x, ~u_input.e), vec4<u32>(u_input.c.x, 42103u, u_input.c.x, u_input.c.x) & select(vec4<u32>(u_input.e, 1u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.e, 60701u, 59093u, 4294967295u), vec4<bool>(true, false, var_2, var_2)))), Struct_2(Struct_1(vec3<f32>(1065f, _wgslsmith_f_op_f32(floor(-790f)), _wgslsmith_f_op_f32(-arg_2)), true, !select(vec4<bool>(var_2, arg_1, var_2, arg_1), vec4<bool>(true, arg_1, true, false), vec4<bool>(false, false, arg_1, var_2)), _wgslsmith_div_vec2_i32(u_input.a.xy, ~u_input.a.zx)), _wgslsmith_sub_i32(1i & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.b.x, u_input.b.x), vec3<i32>(0i, u_input.b.x, u_input.a.x)), u_input.d), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, arg_0, arg_0) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-157f, arg_0, arg_0))), var_2 | true, !func_5(vec2<f32>(arg_2, arg_0), 4294967295u, u_input.a.x, vec4<u32>(0u, u_input.e, u_input.e, 4294967295u)).c, u_input.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -799f), arg_2, 35125u != ~u_input.e)), func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0) + vec2<f32>(var_1.x, arg_2)) * var_1.xz), 1u, i32(-1i) * -22683i, min(reverseBits(vec4<u32>(0u, 16865u, u_input.c.x, u_input.e)), _wgslsmith_mod_vec4_u32(vec4<u32>(27602u, u_input.e, u_input.e, u_input.e), vec4<u32>(u_input.c.x, u_input.e, u_input.c.x, 4294967295u))))), -589f, 1u);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a.a - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.b.a.a.x, 379f, arg_2)))) - vec3<f32>(_wgslsmith_f_op_f32(arg_2 * 1637f), _wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(-var_3.b.a.a.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_3.c)), 1607f, _wgslsmith_f_op_f32(arg_0 - -1000f))));
    return 1i;
}

fn func_6(arg_0: bool, arg_1: vec3<i32>) -> StorageBuffer {
    var var_0 = 0u;
    var_0 = 32895u;
    var_0 = ~0u >> (u_input.e % 32u);
    let var_1 = ~(_wgslsmith_sub_i32(u_input.b.x >> (firstTrailingBit(11806u) % 32u), select(_wgslsmith_div_i32(53361i, arg_1.x), min(u_input.a.x, arg_1.x), arg_0)) >> ((41791u & _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.e), vec4<u32>(u_input.c.x, 4294967295u, 8748u, 26264u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 5366u, 31129u, u_input.e), vec4<u32>(u_input.e, 1u, u_input.e, 76938u), vec4<u32>(31546u, 0u, u_input.c.x, 77833u)))) % 32u));
    var_0 = 7534u;
    return StorageBuffer(_wgslsmith_sub_vec2_i32(u_input.a.yx, vec2<i32>(max(firstTrailingBit(-1i), ~u_input.b.x), ~u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(false, vec3<i32>((i32(-1i) * -1i) | func_1(_wgslsmith_f_op_f32(969f * -1503f), true, _wgslsmith_f_op_f32(476f - -899f)), u_input.d, ~reverseBits(u_input.d)));
}

