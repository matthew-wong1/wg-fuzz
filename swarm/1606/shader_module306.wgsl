struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_3(Struct_2(vec4<bool>(!any(vec3<bool>(true, true, false)), true, abs(75389i) > abs(u_input.c), false), ~vec4<u32>(u_input.d.x, 4294967295u, ~1u, ~1u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 1u) | vec4<u32>(u_input.d.x, 34875u, u_input.d.x, 52553u), vec4<u32>(28666u, u_input.d.x, 1u, 1u)), ~select(u_input.d.x, u_input.d.x, true), countOneBits(1u), ~u_input.d.x)), Struct_2(vec4<bool>(true, all(vec2<bool>(true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), (u_input.b & -40918i) == 1i), vec4<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.d.x, 79714u, u_input.d.x, 16534u), vec4<u32>(u_input.d.x, 96086u, 44893u, u_input.d.x)), ~vec4<u32>(24056u, u_input.d.x, u_input.d.x, 0u)), abs(u_input.d.x), firstLeadingBit(0u), 0u), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.d.x, 0u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)) << (abs(vec4<u32>(104u, u_input.d.x, u_input.d.x, u_input.d.x)) % vec4<u32>(32u)))), arg_0);
    let var_1 = Struct_3(Struct_2(!var_0.a.a, var_0.b.b, vec4<u32>(abs(abs(15367u)), 10240u, _wgslsmith_mult_u32(1u, 1u), 3014u)), var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.c, -1000f)), var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(628f)))));
    var_0 = var_1;
    var var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_1.b.c.x, var_1.a.b.x), var_0.b.b.x, u_input.d.x, var_1.b.b.x) ^ _wgslsmith_add_vec4_u32(~var_0.b.c, vec4<u32>(var_0.b.c.x, 1538u, var_1.a.b.x, var_0.b.c.x)), ~(~vec4<u32>(var_1.a.c.x, 4324u, var_0.b.c.x, 22966u)));
    var var_3 = -(~abs(countOneBits(reverseBits(0i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1366f, 1169f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -165f))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_vec3_u32(~(~arg_0.c.wyx), vec3<u32>(~select(44923u, abs(2726u), !arg_0.a.x), max(~(u_input.d.x ^ arg_0.c.x), 29712u), arg_0.b.x));
    let var_1 = arg_2.x;
    let var_2 = arg_2;
    var var_3 = select(~firstLeadingBit(countOneBits(-vec4<i32>(-2147483647i, u_input.a.x, -1i, -31962i))), _wgslsmith_div_vec4_i32((abs(vec4<i32>(u_input.b, u_input.a.x, -2147483647i, 42182i)) << (vec4<u32>(63121u, 34000u, var_0.x, 67255u) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(arg_0.b, firstTrailingBit(vec4<u32>(u_input.d.x, 1u, var_0.x, arg_0.c.x))) % vec4<u32>(32u)), ~vec4<i32>(0i, u_input.c, u_input.b, -7589i) & select(-vec4<i32>(0i, u_input.c, 2147483647i, u_input.b), vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.c) << (vec4<u32>(0u, u_input.d.x, u_input.d.x, arg_0.b.x) % vec4<u32>(32u)), select(arg_0.a, arg_0.a, vec4<bool>(arg_3.b, false, true, arg_0.a.x)))), true);
    let var_4 = Struct_1(-841f, true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1, arg_3.a))), -1000f) + _wgslsmith_f_op_f32(-1f)));
    return (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4.c))) <= _wgslsmith_f_op_f32(func_3(-421f))) & true;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1339f)), _wgslsmith_f_op_f32(f32(-1f) * -1804f));
    var var_1 = _wgslsmith_f_op_f32(max(-859f, -438f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1762f);
    var var_2 = Struct_1(148f, func_4(Struct_2(vec4<bool>(true, u_input.d.x <= 32467u, all(vec4<bool>(true, false, false, false)), false), vec4<u32>(1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 2529u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), 0u), vec4<u32>(_wgslsmith_div_u32(0u, 1u), ~u_input.d.x, u_input.d.x & 22719u, u_input.d.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(115f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(186f, 2097f, true)))), -815f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), 848f), Struct_1(_wgslsmith_f_op_f32(-1000f - -1452f), true, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1837f))));
    let var_3 = u_input.d | u_input.d;
    return 117434u;
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = select(vec4<bool>(!arg_0, !any(vec3<bool>(true, true, true)), true, arg_0), !vec4<bool>(false, u_input.c <= -44315i, true, true), !(!select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, false, arg_0, arg_0)), false)));
    let var_1 = Struct_2(!vec4<bool>(arg_0, arg_0, true, true), vec4<u32>(func_2(), u_input.d.x, max(_wgslsmith_mod_u32(select(41480u, 75836u, false), 28104u), ~u_input.d.x), ~_wgslsmith_dot_vec2_u32(~u_input.d, u_input.d)), min(select(vec4<u32>(u_input.d.x, u_input.d.x, 21453u, 68136u), (vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.d.x) << (vec4<u32>(u_input.d.x, 1u, 1u, u_input.d.x) % vec4<u32>(32u))) & reverseBits(vec4<u32>(u_input.d.x, 50442u, u_input.d.x, u_input.d.x)), vec4<bool>(any(var_0), false, var_0.x | true, arg_0)), ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(62225u, u_input.d.x, u_input.d.x, 17119u), vec4<u32>(u_input.d.x, 2392u, 9590u, 4340u)), vec4<u32>(138u, 1u, 32908u, 1u), select(vec4<bool>(arg_0, var_0.x, true, var_0.x), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(true, arg_0, var_0.x, false)))));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-u_input.a.x, countOneBits(u_input.c), ~max(0i, 0i), -21279i) | countOneBits(vec4<i32>(reverseBits(5994i), u_input.c ^ u_input.a.x, reverseBits(-9309i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.c, -2147483647i)))), ~firstLeadingBit(vec4<i32>(u_input.c, -1053i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), countOneBits(13124i))));
    return !(!any(select(vec3<bool>(false, var_1.a.x, var_1.a.x), select(vec3<bool>(var_0.x, var_0.x, arg_0), var_0.yxx, var_0.zwx), any(var_1.a))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    let var_0 = arg_3;
    var var_1 = select(u_input.a, u_input.a, arg_0);
    let var_2 = vec3<i32>(12476i, u_input.b, ~_wgslsmith_mod_i32(var_1.x, -reverseBits(6795i)));
    var_1 = u_input.a >> (u_input.d % vec2<u32>(32u));
    let var_3 = Struct_3(Struct_2(select(vec4<bool>(true, arg_0.x, true, arg_0.x), !(!vec4<bool>(true, var_0.b, arg_3.b, true)), !arg_1.b), ~vec4<u32>(~u_input.d.x, select(81882u, 21376u, arg_1.b), 1u << (u_input.d.x % 32u), 26350u), vec4<u32>(u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 4294967295u, ~(~4294967295u))), Struct_2(!vec4<bool>(-475f == arg_3.c, true, true, true & arg_3.b), ((vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x) << (vec4<u32>(0u, 4294967295u, u_input.d.x, u_input.d.x) % vec4<u32>(32u))) >> (firstTrailingBit(vec4<u32>(1u, 4294967295u, u_input.d.x, u_input.d.x)) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 5u, u_input.d.x, u_input.d.x), ~vec4<u32>(0u, u_input.d.x, 0u, u_input.d.x)), abs(~vec4<u32>(u_input.d.x, u_input.d.x, 80321u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a)))) - _wgslsmith_f_op_f32(f32(-1f) * -260f)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 37806u;
    var_0 = (1u | u_input.d.x) | _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 70149u, u_input.d.x, 4294967295u))), ~reverseBits(vec2<u32>(u_input.d.x, 30006u)), _wgslsmith_f_op_f32(step(439f, 580f)) < _wgslsmith_f_op_f32(max(111f, -481f))), u_input.d);
    var var_1 = u_input.d.x;
    var var_2 = func_5(vec2<bool>(all(vec3<bool>(true, true, true)) & func_1(all(vec3<bool>(true, false, false))), false), Struct_1(_wgslsmith_f_op_f32(-1344f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-323f, -1453f)))), !((21925i | u_input.c) != 3533i), -113f), -1285i < u_input.a.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(764f - 531f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-398f + 171f) - _wgslsmith_f_op_f32(f32(-1f) * -227f))), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(2807f))))));
    var_1 = 4294967295u | var_2.b.c.x;
    var var_3 = var_2.a.a.x;
    var var_4 = vec3<i32>(i32(-1i) * -countOneBits(1i), ~abs(1i) ^ u_input.b, 2147483647i);
    var_3 = !var_2.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(var_2.a.b.yxx), ~var_2.b.b.zzz), max(~(~var_2.b.c.zxx), var_2.b.b.wzz), vec3<u32>(var_2.a.c.x, ~13422u, 50029u)), var_4.x, select(max(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_2.a.b.xz, vec2<u32>(1u, var_2.a.b.x)), vec2<u32>(1u, 4294967295u))), ~(~(~u_input.d)), false));
}

