struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> u32 {
    let var_0 = Struct_2(~36341u, Struct_1(select(arg_1, 1u, false), 1u, 0u >> (_wgslsmith_mod_u32(arg_2.b, countOneBits(4294967295u)) % 32u), vec3<i32>(countOneBits(6223i) | -u_input.a, ~(-u_input.a), u_input.a | (u_input.a & -43425i)), 45762u), firstLeadingBit(countOneBits(abs(vec2<u32>(arg_2.b, 0u)) & ~vec2<u32>(4294967295u, 842u))), vec3<u32>(arg_1, 4294967295u, arg_2.b), Struct_1(37563u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(arg_2.b, 1u)), vec2<u32>(arg_1, 1u) | vec2<u32>(arg_2.b, arg_2.b)), ~vec2<u32>(9283u, arg_1)), abs(_wgslsmith_sub_u32(arg_2.b, 4294967295u)) & 1u, vec3<i32>(_wgslsmith_mod_i32(~(-24035i), u_input.a), 0i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-13267i, u_input.a), u_input.a & u_input.a, _wgslsmith_mod_i32(7961i, u_input.a))), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(arg_2.b, arg_1, arg_1, 1u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, arg_2.b, arg_2.b), vec4<u32>(arg_2.b, 1u, 24674u, 11990u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, arg_2.b, arg_2.b, arg_1), vec4<u32>(arg_2.b, 0u, arg_1, arg_2.b)), select(vec4<bool>(false, false, arg_2.a.x, false), vec4<bool>(arg_2.a.x, true, true, false), arg_2.a.x)))));
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, _wgslsmith_mult_i32(~u_input.a, -min(var_0.b.d.x, var_0.e.d.x))), u_input.a);
    return 49324u >> (_wgslsmith_clamp_u32(max(~1u, ~arg_2.b), 839u, 4294967295u) % 32u);
}

fn func_2() -> u32 {
    let var_0 = ~min(_wgslsmith_add_u32(1u, ~1u), 30724u);
    let var_1 = Struct_2(0u, Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(func_3(vec3<f32>(-1000f, 1166f, 1118f), 0u, Struct_3(vec3<bool>(false, true, false), var_0), -564f), 3781u), ~(var_0 & 0u)), firstTrailingBit(var_0), var_0, firstTrailingBit(~countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a))), ~(~(~4294967295u))), abs(abs(firstLeadingBit(vec2<u32>(1u, 0u)))) | vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(36592u, 61103u), _wgslsmith_mod_u32(var_0, 0u)), var_0), select(vec3<u32>(~countOneBits(var_0), var_0, ~abs(0u)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(55039u, 41927u, var_0), vec3<u32>(var_0, 0u, var_0), true), firstLeadingBit(abs(vec3<u32>(23792u, var_0, 63165u)))), vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), any(vec3<bool>(false, false, true)), false)), Struct_1(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0, 0u, 1u), ~vec4<u32>(21645u, 0u, var_0, var_0)), vec4<u32>(37274u, var_0, 0u, 36224u) & reverseBits(vec4<u32>(0u, var_0, var_0, var_0))), firstTrailingBit(var_0) >> (firstLeadingBit(var_0 << (var_0 % 32u)) % 32u), abs(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 3152i) << (vec3<u32>(0u, 0u, 4294967295u) % vec3<u32>(32u)))), 1u));
    var var_2 = var_1;
    let var_3 = var_2.e.b;
    let var_4 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - 1596f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1052f - _wgslsmith_f_op_f32(f32(-1f) * -1015f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(135f * 1399f) + 906f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2017f * -969f))), 2271f)));
    return 4294967295u;
}

fn func_1() -> bool {
    let var_0 = !vec2<bool>((select(true, true, false) & all(vec3<bool>(false, true, true))) | (func_2() > reverseBits(40827u)), !(!all(vec3<bool>(false, false, true))));
    let var_1 = 455f;
    let var_2 = var_0.x;
    var var_3 = select(!vec4<bool>(true, !var_2 != var_2, var_0.x, true), !select(vec4<bool>(var_2, u_input.a < u_input.a, var_2, select(false, var_2, var_0.x)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, var_0.x, true), var_0.x), !vec4<bool>(var_0.x, true, var_2, false), false), select(!var_2, true, var_2)), !(all(var_0) && true));
    let var_4 = vec4<u32>(~_wgslsmith_mult_u32(~1u, 1u), ~countOneBits(_wgslsmith_mod_u32(31866u, 4294967295u)), 55419u, 6349u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~15660u, 14909u, ~0u, firstTrailingBit(abs(vec3<i32>(-1i, 2147483647i, u_input.a) | vec3<i32>(23085i, -10945i, u_input.a)) | reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -32217i, 27311i), vec3<i32>(-28856i, -36261i, u_input.a)))), 1u);
    let var_1 = vec3<bool>(true, all(vec4<bool>(all(vec2<bool>(true, true)), func_1() != false, false, true)), true);
    let var_2 = select(!var_1.zy, select(!var_1.zy, !vec2<bool>(true, var_1.x), !vec2<bool>(var_1.x, var_1.x)), func_1());
    var var_3 = var_2.x;
    var_3 = !func_1();
    let var_4 = Struct_2(_wgslsmith_dot_vec2_u32(select(~_wgslsmith_mod_vec2_u32(vec2<u32>(311u, 4294967295u), vec2<u32>(var_0.e, 0u)), abs(~vec2<u32>(57425u, 4294967295u)), !select(vec2<bool>(var_1.x, false), var_2, true)), ~min(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.a), vec2<u32>(1u, var_0.a)), ~vec2<u32>(var_0.c, var_0.b))), var_0, select(vec2<u32>(13176u, min(_wgslsmith_mult_u32(var_0.e, 38474u), var_0.a)), ~vec2<u32>(var_0.e, var_0.a), !(!select(vec2<bool>(var_1.x, false), var_1.zz, var_1.xx))), vec3<u32>(_wgslsmith_clamp_u32(var_0.c, 50401u, ~var_0.a), var_0.c, 45166u) << (~countOneBits(vec3<u32>(var_0.a, 99911u, var_0.b)) % vec3<u32>(32u)), var_0);
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(442f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-858f * 1373f), 596f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(539f * 802f), 703f))), 153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1965f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~46337u | _wgslsmith_mod_u32(3921u, var_4.e.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x - _wgslsmith_f_op_f32(-var_5.x)))));
}

