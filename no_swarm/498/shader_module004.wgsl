struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -605f)))), _wgslsmith_f_op_f32(1f + 2677f), 150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(838f - -823f))))), false, false, u_input.b.x);
    let var_1 = vec3<bool>(!(u_input.b.x < _wgslsmith_sub_i32(-u_input.b.x, countOneBits(2147483647i))), !any(vec4<bool>(true, all(vec2<bool>(true, var_0.b)), false, false)), false | (1f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(trunc(-710f)))));
    var var_2 = Struct_5(Struct_3(6256u, vec2<i32>(min(u_input.b.x, 0i) ^ ~18083i, u_input.b.x), Struct_2(u_input.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1000f)), select(var_1.x, false, false), var_1.x || any(var_1.xy), -15508i | var_0.d), Struct_2(1i)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.xxz, u_input.a.yww, u_input.a.yyy), u_input.a.ywx), ~1u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-810f, -1375f) * vec2<f32>(var_0.a.x, var_2.a.d.a.x))))))));
    var var_4 = firstLeadingBit(7753i);
    return countOneBits(max(reverseBits(u_input.c) & _wgslsmith_sub_u32(1u, var_2.a.a), ~max(var_2.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(2318u, u_input.a.x, 37141u), vec3<u32>(var_2.a.a, 5382u, 1u)))));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(136f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-562f * -1980f)))));
    return countOneBits(select(abs(~0u) >> (~reverseBits(u_input.c) % 32u), u_input.c, !any(vec2<bool>(true, false))));
}

fn func_2() -> bool {
    var var_0 = u_input.c == 4294967295u;
    var var_1 = u_input.a.x;
    var_1 = ~func_4((firstLeadingBit(u_input.b.x) | -17483i) << (_wgslsmith_clamp_u32(~u_input.c, func_3(), ~u_input.a.x) % 32u), ~vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(1i, u_input.b.x)));
    var_1 = u_input.c;
    let var_2 = u_input.b.zy;
    return true;
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: Struct_3, arg_3: u32) -> u32 {
    let var_0 = func_2();
    var var_1 = arg_1;
    var var_2 = vec3<u32>(~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(53474u, var_1.b)), vec2<u32>(u_input.c, arg_1.a.a)) & var_1.a.a, firstTrailingBit(arg_1.a.a), abs(40145u));
    var var_3 = 3436f;
    var var_4 = Struct_4(arg_2, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1370f * arg_2.d.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(329f, _wgslsmith_f_op_f32(f32(-1f) * -2198f))))), _wgslsmith_f_op_f32(abs(-486f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d.a.x))), var_1.a.d.a, var_1.a.c, _wgslsmith_add_vec3_u32(u_input.a.yxy, abs(firstTrailingBit(vec3<u32>(18330u, var_2.x, 0u)))));
    return ~71303u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, 1u > select(u_input.c, _wgslsmith_div_u32(func_1(u_input.b.x, Struct_5(Struct_3(u_input.a.x, u_input.b.xz, Struct_2(u_input.b.x), Struct_1(vec4<f32>(1414f, -1484f, 1198f, 2096f), false, true, -7802i), Struct_2(-2147483647i)), u_input.a.x), Struct_3(1u, vec2<i32>(-1i, u_input.b.x), Struct_2(u_input.b.x), Struct_1(vec4<f32>(1430f, -1197f, -247f, -613f), true, true, u_input.b.x), Struct_2(u_input.b.x)), u_input.c), u_input.a.x >> (u_input.a.x % 32u)), true));
    var var_1 = Struct_2(firstTrailingBit(u_input.b.x));
    let var_2 = Struct_5(Struct_3(0u, ~(~(-vec2<i32>(1i, var_1.a))), Struct_2(var_1.a), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(455f, 1320f, -1151f, -1108f) - vec4<f32>(-463f, -293f, -794f, 110f))), true, false, 1i), Struct_2(min(reverseBits(-2147483647i), -1i))), 57952u);
    var_1 = Struct_2(var_2.a.d.d);
    var var_3 = Struct_4(var_2.a, _wgslsmith_div_vec4_f32(var_2.a.d.a, vec4<f32>(_wgslsmith_f_op_f32(var_2.a.d.a.x - _wgslsmith_div_f32(1202f, -1349f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.d.a.x) + var_2.a.d.a.x), -1134f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2.a.d.a.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a.d.a)), Struct_2(-4628i), vec3<u32>(1u, ~1887u, _wgslsmith_mult_u32(u_input.c, var_2.a.a) ^ (u_input.c >> (u_input.a.x % 32u))));
    let var_4 = !(var_0.x | false);
    var_3 = Struct_4(Struct_3(1u, vec2<i32>(~reverseBits(u_input.b.x), u_input.b.x), var_2.a.e, var_2.a.d, var_2.a.e), _wgslsmith_f_op_vec4_f32(-var_3.c), var_2.a.d.a, Struct_2(abs(-firstTrailingBit(var_2.a.c.a))), var_3.e);
    var var_5 = Struct_4(var_2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.a.d.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.d.a.x, var_2.a.d.a.x, -122f, 225f)))), true)) - vec4<f32>(-432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1527f - var_2.a.d.a.x)), _wgslsmith_f_op_f32(var_2.a.d.a.x - _wgslsmith_f_op_f32(1135f - var_2.a.d.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.d.a.x, -354f))))), var_3.c, Struct_2(u_input.b.x), ~firstLeadingBit(var_3.e));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~(i32(-1i) * -1i)), u_input.c, _wgslsmith_clamp_vec4_i32(~(~(~vec4<i32>(u_input.b.x, var_1.a, var_5.a.d.d, 22525i))), reverseBits((vec4<i32>(var_2.a.e.a, 33044i, 37347i, var_1.a) << (vec4<u32>(var_2.b, 59263u, var_3.e.x, 12495u) % vec4<u32>(32u))) | (vec4<i32>(var_5.a.b.x, var_1.a, 26537i, 1i) | vec4<i32>(var_5.d.a, -1i, -88735i, var_2.a.c.a))), -countOneBits(abs(vec4<i32>(u_input.b.x, var_3.a.e.a, var_2.a.e.a, var_5.a.c.a)))), var_5.a.d.a.xyy);
}

