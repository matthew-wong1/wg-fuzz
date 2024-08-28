struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>) -> i32 {
    var var_0 = Struct_1(~vec2<u32>(u_input.b.x, 0u), 1u, firstTrailingBit(_wgslsmith_div_i32(-2147483647i, 45468i)), reverseBits(arg_0.b.c));
    let var_1 = Struct_2(arg_0.a.b.a, arg_0.c.x, vec2<u32>(1u, abs(var_0.b)) >> (~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.d.yw), ~5380u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-328f + -1873f), 677f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-771f + arg_0.a.d.b), _wgslsmith_f_op_f32(arg_0.c.x + -438f))), true)) * -739f));
    var var_2 = Struct_2(arg_0.b, 248f, vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(63613u, var_1.a.b, u_input.d.x), vec3<u32>(var_1.a.b, 0u, 4294967295u)), 1u | u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) * arg_0.a.c.b), _wgslsmith_f_op_f32(-658f - _wgslsmith_f_op_f32(round(var_1.d)))))));
    var_2 = Struct_2(var_1.a, _wgslsmith_f_op_f32(trunc(-1033f)), arg_0.b.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)), -930f)), 1357f)), 1000f);
    let var_3 = firstLeadingBit(var_0.a);
    return -u_input.c.x;
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~13634u, 9u)] | global0[_wgslsmith_index_u32(37617u, 9u)], u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a.yyx, u_input.c, vec3<i32>(0i, 48456i, -2147483647i)), ~u_input.c))), vec2<i32>(75391i >> ((~u_input.b.x & u_input.d.x) % 32u), ~_wgslsmith_mod_i32(0i, ~(-19430i))));
    var var_1 = _wgslsmith_dot_vec3_i32(u_input.a.xwz, u_input.c);
    var var_2 = Struct_4(Struct_3(arg_0.x, Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(u_input.b.zx, vec2<u32>(0u, 45632u)), 32698u & u_input.d.x, _wgslsmith_sub_i32(var_0, -1i), i32(-1i) * -29856i), _wgslsmith_f_op_f32(f32(-1f) * -1237f), ~vec2<u32>(1u, 0u), -876f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1739f + -3568f)))), Struct_2(Struct_1(u_input.b.zx << (u_input.d.xz % vec2<u32>(32u)), u_input.b.x & 0u, _wgslsmith_div_i32(var_0, u_input.c.x), i32(-1i) * -1i), -127f, u_input.d.yw, -387f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-810f - 204f) - _wgslsmith_f_op_f32(-1358f - -1400f))), Struct_2(Struct_1(firstTrailingBit(u_input.d.zz), u_input.d.x << (4294967295u % 32u), func_3(Struct_4(Struct_3(arg_0.x, Struct_2(Struct_1(u_input.d.xz, u_input.b.x, u_input.c.x, -8097i), 1493f, vec2<u32>(u_input.d.x, 100056u), 837f, 1437f), Struct_2(Struct_1(u_input.d.ww, u_input.d.x, u_input.a.x, 1i), 487f, u_input.b.yy, -1000f, -1250f), Struct_2(Struct_1(vec2<u32>(u_input.d.x, u_input.b.x), 52015u, 1620i, 0i), -272f, u_input.d.zy, -2061f, 940f)), Struct_1(vec2<u32>(2108u, u_input.b.x), u_input.d.x, 2147483647i, 1i), vec4<f32>(-278f, -1000f, 1282f, -279f)), arg_0.wzy), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2145f) * _wgslsmith_f_op_f32(floor(2038f))), select(~u_input.d.zw, ~u_input.d.yw, vec2<bool>(false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -371f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1040f) - 501f))), Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.zy, abs(u_input.d.zz)), vec2<u32>(~u_input.b.x, u_input.d.x)), _wgslsmith_mod_u32(~u_input.b.x, 0u), _wgslsmith_div_i32(~global0[_wgslsmith_index_u32(u_input.d.x, 9u)], 1i), 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1695f, -1050f, -427f, 1715f)), vec4<f32>(836f, 1686f, -973f, -347f)))))));
    var_2 = Struct_4(var_2.a, var_2.a.c.a, vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(round(-781f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))), _wgslsmith_f_op_f32(var_2.c.x - -1153f)));
    return ~_wgslsmith_mult_i32(~var_2.a.d.a.c, var_2.b.d);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> f32 {
    let var_0 = vec3<i32>(func_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), u_input.c.x, _wgslsmith_add_i32(i32(-1i) * -(~global0[_wgslsmith_index_u32(arg_0, 9u)]), abs(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.d.x, 9u)] << (0u % 32u), -global0[_wgslsmith_index_u32(0u, 9u)]))));
    var var_1 = _wgslsmith_f_op_f32(-927f + _wgslsmith_f_op_f32(-796f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1008f - _wgslsmith_f_op_f32(-609f * -1000f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-648f, -178f, 1000f)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1461f, -349f, -1000f)))))))));
    var var_3 = Struct_1(u_input.b.zy, 31231u, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(max(-1i, u_input.c.x), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(arg_0, 9u)], u_input.a.x)), var_0.zy), u_input.c.x), _wgslsmith_div_i32(0i << (_wgslsmith_sub_u32(u_input.d.x, arg_0) % 32u), u_input.c.x));
    var_3 = Struct_1(~arg_1.yy | arg_1.zy, select(~_wgslsmith_mult_u32(var_3.b, u_input.b.x), ~12883u, false) >> (arg_0 % 32u), -var_0.x, var_0.x);
    return _wgslsmith_f_op_f32(ceil(810f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    var var_0 = u_input.c.zx;
    var var_1 = u_input.b.x;
    let var_2 = u_input.a.zyw;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.b.x, vec4<u32>(0u, u_input.b.x, 34224u, u_input.d.x))), -852f), _wgslsmith_f_op_f32(trunc(-1000f)))) >= 1f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(89810u, u_input.d.x, min(u_input.d.x, 0u) << (u_input.b.x % 32u), 10314u), ~_wgslsmith_div_vec4_u32(u_input.d, ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 60761u))), _wgslsmith_mult_i32(firstTrailingBit(-1i) << (1u % 32u), _wgslsmith_div_i32(-41275i, select(var_2.x, var_2.x, var_3)) & 6024i));
}

