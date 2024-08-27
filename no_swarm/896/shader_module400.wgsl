struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    var var_0 = select(arg_1.d.zw, -min(arg_1.d.xy, select(_wgslsmith_sub_vec2_i32(vec2<i32>(33484i, arg_1.d.x), arg_1.d.ww), vec2<i32>(arg_1.d.x, arg_1.d.x) & vec2<i32>(-53347i, u_input.b), select(arg_1.c.xx, arg_1.c.ww, arg_1.c.xz))), false);
    var_0 = firstTrailingBit(-_wgslsmith_clamp_vec2_i32(-(vec2<i32>(58930i, -1i) >> (arg_0.ww % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(arg_1.d.xz & vec2<i32>(u_input.b, -2147483647i), -arg_1.d.xz, arg_1.d.zx), vec2<i32>(~var_0.x, min(arg_1.d.x, -1i))));
    return arg_1.b.x;
}

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = Struct_1(!vec4<bool>((-64380i & arg_0.x) >= ~19269i, _wgslsmith_sub_u32(8901u, u_input.a) != 1u, true, (arg_0.x > u_input.b) | true), vec4<bool>(false, reverseBits(arg_0.x & arg_0.x) < u_input.b, any(vec3<bool>(any(vec4<bool>(true, true, false, true)), func_1(vec4<u32>(46203u, u_input.a, 52292u, u_input.a), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<i32>(43832i, 56444i, 19850i, arg_0.x))), true)), !any(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), abs(~vec4<i32>(2147483647i, select(u_input.b, -55284i, false), _wgslsmith_clamp_i32(arg_0.x, u_input.b, u_input.b), _wgslsmith_clamp_i32(-35360i, 40264i, -2147483647i))));
    let var_1 = Struct_2(Struct_1(var_0.b, var_0.c, select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.b.x & var_0.a.x), !var_0.a, vec4<bool>(select(true, true, var_0.b.x), false, false, true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.b | arg_0.x, i32(-1i) * -71390i, firstLeadingBit(-1i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -26953i, 23880i, arg_0.x), var_0.d) ^ var_0.d, vec4<i32>(abs(-1i), abs(u_input.b), -18567i & u_input.b, ~(-1i)))), Struct_1(vec4<bool>(var_0.c.x, true, false, !var_0.a.x), select(!select(var_0.b, vec4<bool>(var_0.a.x, false, false, var_0.c.x), true), !var_0.b, select(!var_0.b, select(vec4<bool>(var_0.b.x, true, true, var_0.a.x), vec4<bool>(false, false, true, var_0.c.x), vec4<bool>(var_0.a.x, false, var_0.b.x, false)), false == var_0.a.x)), select(!select(var_0.b, var_0.b, vec4<bool>(var_0.b.x, false, false, var_0.c.x)), vec4<bool>(true, true, any(vec2<bool>(false, var_0.b.x)), any(vec4<bool>(var_0.b.x, true, true, true))), all(var_0.c)), -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(15964i, var_0.d.x, var_0.d.x), vec3<i32>(arg_0.x, -2147483647i, -25877i)), -2147483647i, _wgslsmith_mod_i32(var_0.d.x, 1464i), _wgslsmith_sub_i32(19996i, -18973i))));
    var_0 = Struct_1(var_0.b, vec4<bool>(true, true, var_0.c.x == false, var_0.a.x), !select(var_1.a.c, var_0.a, vec4<bool>(any(var_0.c.zzx), all(vec3<bool>(true, true, true)), all(vec3<bool>(false, var_1.a.b.x, true)), true)), reverseBits(_wgslsmith_clamp_vec4_i32(~var_1.b.d ^ _wgslsmith_clamp_vec4_i32(var_0.d, vec4<i32>(1i, 2147483647i, 0i, 0i), vec4<i32>(5988i, 52009i, var_0.d.x, -2147483647i)), vec4<i32>(_wgslsmith_mod_i32(-1i, var_0.d.x), -1i, -var_1.a.d.x, 1i), var_1.b.d)));
    var var_2 = _wgslsmith_sub_vec3_u32(~select(vec3<u32>(u_input.a, u_input.a, u_input.a), countOneBits(vec3<u32>(u_input.a, 22869u, u_input.a)), var_1.a.a.x) & firstLeadingBit(vec3<u32>(select(21610u, u_input.a, var_0.b.x), ~4294967295u, firstTrailingBit(0u))), firstLeadingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(6318u, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(58208u, 1u, u_input.a), vec3<u32>(u_input.a, 31538u, 1u)))));
    let var_3 = vec2<bool>(false, var_0.c.x);
    return true;
}

fn func_2() -> vec2<u32> {
    var var_0 = 350f;
    let var_1 = ~39418u;
    let var_2 = _wgslsmith_div_f32(188f, 371f);
    let var_3 = all(vec4<bool>(!func_3(-vec2<i32>(u_input.b, 7022i)), !(!select(true, true, false)), all(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, true, false, false)) && true));
    var var_4 = Struct_1(select(select(select(!vec4<bool>(true, false, var_3, true), !vec4<bool>(var_3, true, var_3, false), var_3), select(select(vec4<bool>(var_3, true, false, var_3), vec4<bool>(false, true, var_3, true), false), select(vec4<bool>(var_3, true, var_3, var_3), vec4<bool>(var_3, true, false, var_3), false), 0i <= u_input.b), !select(vec4<bool>(var_3, var_3, false, var_3), vec4<bool>(var_3, var_3, true, false), var_3)), vec4<bool>(true, true, false, any(select(vec4<bool>(var_3, var_3, var_3, true), vec4<bool>(var_3, var_3, false, true), var_3))), countOneBits(u_input.b) != 1i), !vec4<bool>(func_1(~vec4<u32>(8974u, var_1, u_input.a, 10912u), Struct_1(vec4<bool>(true, var_3, true, true), vec4<bool>(false, var_3, var_3, var_3), vec4<bool>(var_3, false, false, var_3), vec4<i32>(0i, u_input.b, -2147483647i, u_input.b))), (var_1 | var_1) >= 59794u, !all(vec3<bool>(var_3, var_3, false)), _wgslsmith_mult_u32(var_1, 0u) <= ~u_input.a), !vec4<bool>(_wgslsmith_mult_u32(u_input.a, 0u) >= firstTrailingBit(u_input.a), false & all(vec2<bool>(var_3, true)), all(vec2<bool>(var_3, var_3)), true), ~_wgslsmith_mod_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, -8348i, u_input.b))), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 14777i, 50552i, u_input.b), ~vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b))));
    return ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(31172u, var_1), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 0u), vec2<u32>(30356u, 4294967295u))) << (min(vec2<u32>(30132u, _wgslsmith_mod_u32(var_1, u_input.a)), ~(~vec2<u32>(var_1, u_input.a))) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-310f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(988f * -352f)) + 1f), _wgslsmith_f_op_f32(min(706f, 1000f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1312f), -1319f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(100f)), -1099f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(501f, var_0.x, 319f), vec3<f32>(var_0.x, 2022f, -347f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1122f, -1257f, var_0.x) * vec3<f32>(var_0.x, var_0.x, -2419f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x), -206f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(673f)), _wgslsmith_f_op_f32(select(1321f, var_0.x, true)), _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -672f, var_0.x))))), false));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -2033f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1345f, 228f))))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2060f)) + 662f));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, select(!(!select(false, false, true)), u_input.a > u_input.a, true), any(!vec2<bool>(true, func_1(vec4<u32>(u_input.a, 32912u, u_input.a, u_input.a), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<i32>(u_input.b, 1i, u_input.b, 0i))))), false);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f));
    var var_2 = _wgslsmith_f_op_f32(-197f + _wgslsmith_f_op_f32(func_4(func_2())));
    let var_3 = u_input.b ^ abs(-1i);
    var var_4 = Struct_1(vec4<bool>(var_3 == var_3, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + -1630f), var_0.x), !vec4<bool>(all(!vec4<bool>(var_0.x, var_0.x, true, false)), (u_input.a >= u_input.a) | var_0.x, func_1(vec4<u32>(0u, 4294967295u, 0u, u_input.a), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, var_0.x, true, var_0.x), vec4<i32>(u_input.b, -3377i, 1i, 7037i))), true), !vec4<bool>(true, !(var_0.x && true), true, (u_input.a ^ u_input.a) >= _wgslsmith_mod_u32(u_input.a, 61907u)), select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, -15082i) & vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(2147483647i, var_3, 24849i)), _wgslsmith_add_i32(var_3, ~(-2147483647i)), _wgslsmith_div_i32(13768i & var_3, u_input.b), var_3), _wgslsmith_mult_vec4_i32(-reverseBits(vec4<i32>(1i, -1i, u_input.b, -1i)), -vec4<i32>(u_input.b, var_3, 2147483647i, u_input.b)), true));
    var var_5 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 593f, -1000f) + vec3<f32>(-844f, -1257f, -235f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1085f, -1708f, -1038f) + vec3<f32>(-1326f, 601f, -3202f)))))))));
    var var_6 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3, var_4.d.x & (var_4.d.x >> (18759u % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_4.d.zz, var_4.d.xy, vec2<i32>(-33005i, -45376i)), vec2<i32>(u_input.b, var_4.d.x))), ~vec3<i32>(0i, ~u_input.b, var_4.d.x)), -_wgslsmith_add_i32(var_4.d.x, u_input.b & var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~(~countOneBits(vec4<u32>(1u, u_input.a, 4294967295u, 0u))), abs(abs(firstTrailingBit(vec4<u32>(1752u, u_input.a, u_input.a, 45551u)))), select(vec4<u32>(u_input.a, u_input.a, 1u, 45188u), ~vec4<u32>(u_input.a, 48140u, 89754u, u_input.a) ^ (vec4<u32>(u_input.a, u_input.a, 1u, 52890u) ^ vec4<u32>(u_input.a, 14009u, u_input.a, u_input.a)), !vec4<bool>(false, var_4.a.x, var_4.b.x, var_4.c.x))));
}

