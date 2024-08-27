struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: vec4<bool>) -> i32 {
    let var_0 = false == all(select(arg_3.wx, select(!vec2<bool>(false, arg_3.x), !arg_3.yw, true), true));
    let var_1 = Struct_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(8008u, abs(u_input.a), u_input.a), ~vec3<u32>(1u, 29226u, u_input.a), vec3<u32>(u_input.a << (u_input.a % 32u), select(0u, u_input.a, true), 4294967295u)));
    let var_2 = arg_3.x;
    var var_3 = firstTrailingBit(_wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), vec4<u32>(u_input.a, var_1.a.x, 32460u, u_input.a)), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)), vec4<u32>(4294967295u, u_input.a, var_1.a.x, u_input.a) << ((vec4<u32>(u_input.a, 33832u, 1u, 4294967295u) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, var_1.a.x)) % vec4<u32>(32u)), any(!arg_3.zzx)), ~vec4<u32>(var_1.a.x, 4294967295u, var_1.a.x, u_input.a)));
    let var_4 = arg_2;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_4, ~64579i, var_4, reverseBits(var_4)) & _wgslsmith_div_vec4_i32(vec4<i32>(var_4, var_4, var_4, 1i), vec4<i32>(911i, arg_2, var_4, 2708i)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-9020i, -7141i, arg_2, var_4), vec4<i32>(var_4, -1i, var_4, var_4), vec4<i32>(var_4, arg_2, 2147483647i, var_4)) >> (select(vec4<u32>(0u, 44397u, u_input.a, u_input.a), vec4<u32>(u_input.a, 9186u, u_input.a, var_3.x), arg_3) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(abs(vec4<i32>(arg_2, 1i, -50351i, 2147483647i)), -vec4<i32>(47309i, -1i, 0i, arg_2)))), abs((min(vec4<i32>(1i, -5358i, 2147483647i, 0i), vec4<i32>(arg_2, arg_2, arg_2, -1i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_2, 49401i, arg_2), vec4<i32>(arg_2, arg_2, -10356i, -14914i), vec4<i32>(-18122i, 0i, var_4, arg_2))) ^ vec4<i32>(_wgslsmith_sub_i32(-1i, 4256i), abs(var_4), ~var_4, 1i)));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<bool>) -> bool {
    var var_0 = Struct_1(abs(~(~(vec3<u32>(u_input.a, 2705u, 0u) | vec3<u32>(36476u, 1u, arg_0)))));
    var_0 = Struct_1(~_wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_0, 31526u), var_0.a)), select(vec3<u32>(u_input.a, arg_0, u_input.a) & var_0.a, vec3<u32>(2658u, var_0.a.x, u_input.a) >> (vec3<u32>(arg_0, var_0.a.x, arg_0) % vec3<u32>(32u)), !arg_3.xzx)));
    var_0 = Struct_1(var_0.a);
    var_0 = Struct_1(firstLeadingBit(~var_0.a));
    var var_1 = vec2<i32>(~(~_wgslsmith_mod_i32(0i, arg_2)), arg_2);
    return !arg_3.x;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_1(~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(59319u, u_input.a, u_input.a), vec3<u32>(554u, 17832u, arg_0))));
    var_0 = Struct_1(_wgslsmith_mult_vec3_u32(~var_0.a | var_0.a, firstTrailingBit(var_0.a)));
    var_0 = Struct_1(~(var_0.a >> (countOneBits(vec3<u32>(24405u, 4294967295u, arg_0)) % vec3<u32>(32u))));
    var_0 = Struct_1(select(~vec3<u32>(u_input.a, var_0.a.x, ~arg_0), var_0.a | vec3<u32>(28269u, 1u, _wgslsmith_sub_u32(var_0.a.x, arg_0)), func_4(abs(1u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(932f, -207f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1034f, -1331f))))), func_3(-1240f, _wgslsmith_div_f32(-510f, 1000f), ~2147483647i, vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, false, true, true)))));
    var var_1 = -abs(min(0i, -_wgslsmith_sub_i32(-56769i, 0i)));
    return Struct_2(Struct_1(~var_0.a), Struct_1(_wgslsmith_mod_vec3_u32(~vec3<u32>(20192u, 27411u, 0u), ~vec3<u32>(1u, 65488u, 55959u))), false, -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(66587i, -8090i, 2147483647i), ~vec3<i32>(-1i, 1i, 0i)), _wgslsmith_sub_i32(40914i, 1i)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = !(any(arg_2.xz) & all(arg_2.zyy)) & arg_0.c;
    var var_1 = true & !arg_1.c;
    var var_2 = func_2(289u).a;
    var_2 = arg_0.a;
    var var_3 = vec2<u32>(16700u, ~reverseBits(max(34544u, _wgslsmith_div_u32(0u, arg_3.a.x))));
    return Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(~(arg_0.a.a & arg_1.a.a), vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(88436u, u_input.a, 0u, u_input.a), vec4<u32>(0u, 4294967295u, arg_3.a.x, var_2.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.a.x, 0u, 12805u, var_3.x), vec4<u32>(35734u, var_2.a.x, var_2.a.x, 0u))))), func_2(38083u).a, true, arg_0.d);
}

fn func_6(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_2(func_5(Struct_2(Struct_1(firstLeadingBit(arg_0.b.a)), Struct_1(arg_0.a.a), !(arg_0.b.a.x > arg_0.a.a.x), vec2<i32>(arg_0.d.x, arg_0.d.x) << (firstLeadingBit(vec2<u32>(arg_0.b.a.x, u_input.a)) % vec2<u32>(32u))), Struct_2(arg_0.a, func_5(Struct_2(Struct_1(vec3<u32>(u_input.a, 1u, arg_0.b.a.x)), Struct_1(arg_0.a.a), false, arg_0.d), func_2(37862u), vec4<bool>(arg_0.c, false, true, false), Struct_1(arg_0.b.a)).b, !(!arg_0.c), firstTrailingBit(vec2<i32>(arg_0.d.x, arg_0.d.x))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, arg_0.c, false, arg_0.c), vec4<bool>(arg_0.c, false, true, arg_0.c), arg_0.c), select(vec4<bool>(arg_0.c, true, false, arg_0.c), vec4<bool>(false, arg_0.c, true, arg_0.c), true), !arg_0.c), vec4<bool>(true, true, true, arg_0.c)), func_5(func_5(Struct_2(arg_0.a, arg_0.b, arg_0.c, arg_0.d), Struct_2(arg_0.b, Struct_1(vec3<u32>(u_input.a, arg_0.b.a.x, u_input.a)), true, arg_0.d), select(vec4<bool>(false, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, false, false), true), arg_0.b), arg_0, vec4<bool>(func_2(arg_0.a.a.x).c, arg_0.c, arg_0.c, arg_0.c == true), arg_0.a).a).b, func_5(Struct_2(Struct_1(arg_0.b.a ^ arg_0.b.a), func_2(1u).a, all(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.c, true, arg_0.c), vec3<bool>(false, false, true))), arg_0.d), arg_0, !(!vec4<bool>(true, true, arg_0.c, arg_0.c)), Struct_1(firstTrailingBit(arg_0.a.a))).b, all(vec4<bool>(any(select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, false), false)), true, arg_0.c, true)), abs(vec2<i32>(abs(_wgslsmith_mod_i32(arg_0.d.x, arg_0.d.x)), 2147483647i)));
    let var_1 = arg_0;
    let var_2 = select(vec2<bool>(true, true), !(!select(vec2<bool>(false, true), select(vec2<bool>(var_1.c, false), vec2<bool>(var_0.c, var_1.c), vec2<bool>(var_1.c, true)), !vec2<bool>(var_1.c, var_0.c))), select(false && (true != !var_0.c), all(vec2<bool>(true, arg_0.c)), false));
    var var_3 = 24072i;
    let var_4 = var_2.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1594f)), false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1073f * -1064f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1959f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-896f)) - _wgslsmith_f_op_f32(min(1072f, -374f)))) * -1235f)));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_6(func_5(func_2(u_input.a), func_2(u_input.a), vec4<bool>(true, false, arg_0.x, false), Struct_1(vec3<u32>(u_input.a, u_input.a, 4294967295u))))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1388f);
    let var_1 = !(!arg_0);
    var var_2 = -select(vec2<i32>(1i, ~min(-20574i, 1i)), reverseBits(vec2<i32>(-5312i, 1i)), var_1.x);
    let var_3 = select(vec4<bool>(!(!(!var_1.x)), all(vec3<bool>(5855i > var_2.x, any(vec2<bool>(true, false)), func_2(u_input.a).c)), !var_1.x && arg_0.x, arg_0.x), select(!select(select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(var_1.x, false, true, true), false), select(vec4<bool>(arg_0.x, var_1.x, var_1.x, false), vec4<bool>(false, true, var_1.x, arg_0.x), var_1.x), !vec4<bool>(false, var_1.x, true, true)), vec4<bool>(!(u_input.a != 1u), true, func_5(func_5(Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_1(vec3<u32>(u_input.a, u_input.a, 4294967295u)), var_1.x, vec2<i32>(var_2.x, var_2.x)), Struct_2(Struct_1(vec3<u32>(1u, 17566u, u_input.a)), Struct_1(vec3<u32>(u_input.a, 0u, u_input.a)), false, vec2<i32>(-1i, 0i)), vec4<bool>(arg_0.x, var_1.x, true, true), Struct_1(vec3<u32>(u_input.a, 0u, 17674u))), Struct_2(Struct_1(vec3<u32>(1u, u_input.a, 1u)), Struct_1(vec3<u32>(u_input.a, u_input.a, 0u)), true, vec2<i32>(var_2.x, var_2.x)), select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(false, false, var_1.x, false), var_1.x), func_5(Struct_2(Struct_1(vec3<u32>(23796u, u_input.a, 77867u)), Struct_1(vec3<u32>(u_input.a, 0u, 0u)), false, vec2<i32>(var_2.x, 27980i)), Struct_2(Struct_1(vec3<u32>(0u, u_input.a, 1u)), Struct_1(vec3<u32>(0u, 42141u, 4294967295u)), var_1.x, vec2<i32>(0i, 2147483647i)), vec4<bool>(arg_0.x, false, var_1.x, var_1.x), Struct_1(vec3<u32>(u_input.a, u_input.a, 75571u))).a).c, true), !vec4<bool>(false, false, false != var_1.x, arg_0.x)), !var_1.x);
    return -(~(var_2.x | min(max(-37149i, -4453i), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec3<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a, ~u_input.a) & vec3<u32>(_wgslsmith_div_u32(u_input.a, 5074u), u_input.a, ~1u), ~(~(~vec3<u32>(0u, u_input.a, u_input.a))), all(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_mod_i32(firstLeadingBit(-37822i), -1i >> (var_0.a.x % 32u));
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-countOneBits(func_1(vec3<bool>(true, false, true))), func_5(func_5(func_5(Struct_2(var_0, Struct_1(vec3<u32>(1u, u_input.a, var_0.a.x)), false, vec2<i32>(-2147483647i, 33643i)), Struct_2(Struct_1(var_0.a), Struct_1(vec3<u32>(u_input.a, 4294967295u, 275u)), false, vec2<i32>(-2147483647i, 15206i)), vec4<bool>(false, true, false, true), Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a))), Struct_2(Struct_1(var_0.a), var_0, true, vec2<i32>(-1i, 17638i)), vec4<bool>(true, true, false, true), func_2(var_0.a.x).b), func_2(~var_0.a.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), true), func_2(_wgslsmith_mult_u32(var_0.a.x, 0u)).a).d.x), ~vec2<i32>(firstTrailingBit(51838i), -2147483647i) >> (abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, u_input.a), _wgslsmith_mod_vec2_u32(var_0.a.xx, var_0.a.zx))) % vec2<u32>(32u)));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1608f, -1059f) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1555f, 184f), -645f)))));
    let var_4 = ~vec4<u32>(abs(var_0.a.x), ~u_input.a, 71745u, u_input.a);
    var var_5 = func_5(func_5(func_5(func_5(func_5(Struct_2(var_0, Struct_1(vec3<u32>(var_4.x, 26192u, u_input.a)), var_2, vec2<i32>(-40227i, -1i)), Struct_2(var_0, var_0, var_2, vec2<i32>(2147483647i, -23266i)), vec4<bool>(false, var_2, var_2, var_2), Struct_1(var_0.a)), func_5(Struct_2(var_0, var_0, false, vec2<i32>(-81097i, 1i)), Struct_2(var_0, var_0, true, vec2<i32>(0i, 0i)), vec4<bool>(var_2, var_2, var_2, false), var_0), select(vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(true, true, var_2, var_2), true), var_0), func_2(u_input.a), vec4<bool>(false & var_2, !var_2, all(vec2<bool>(true, true)), all(vec2<bool>(var_2, var_2))), func_5(Struct_2(Struct_1(vec3<u32>(6097u, 58600u, 46824u)), Struct_1(var_4.wxz), false, vec2<i32>(30961i, -3279i)), func_2(var_4.x), !vec4<bool>(false, false, var_2, var_2), var_0).b), func_2(1u >> ((var_0.a.x | var_0.a.x) % 32u)), vec4<bool>(false, func_3(var_3.x, var_3.x, -2253i, vec4<bool>(false, true, var_2, var_2)) > max(-1i, 0i), 70154u > abs(var_4.x), select(true, func_4(66609u, vec2<f32>(var_3.x, var_3.x), 1i, vec4<bool>(var_2, false, var_2, false)), var_2)), var_0), Struct_2(func_5(func_5(func_5(Struct_2(var_0, Struct_1(var_0.a), false, vec2<i32>(-2147483647i, 1i)), Struct_2(Struct_1(vec3<u32>(19375u, 4294967295u, var_0.a.x)), var_0, var_2, vec2<i32>(0i, 0i)), vec4<bool>(true, true, false, var_2), var_0), func_5(Struct_2(var_0, Struct_1(var_4.xxx), true, vec2<i32>(47759i, 0i)), Struct_2(Struct_1(var_4.zxx), var_0, false, vec2<i32>(-1i, -3241i)), vec4<bool>(false, var_2, false, var_2), var_0), vec4<bool>(false, true, false, var_2), Struct_1(var_4.xyx)), Struct_2(var_0, Struct_1(vec3<u32>(var_4.x, var_0.a.x, var_0.a.x)), true, max(vec2<i32>(0i, 2147483647i), vec2<i32>(20968i, 19838i))), select(vec4<bool>(true, var_2, false, false), vec4<bool>(false, var_2, true, var_2), var_2 & var_2), var_0).b, Struct_1(~var_4.wxx), true || all(select(vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, var_2, var_2), false)), countOneBits(vec2<i32>(-1i) * -vec2<i32>(80935i, 0i))), select(vec4<bool>(false, var_2, true, select(var_2, var_2, true)), !vec4<bool>(any(vec2<bool>(var_2, true)), true, var_2, var_2), !(!var_2)), func_5(func_2(u_input.a), Struct_2(func_2(u_input.a | var_4.x).b, func_5(func_2(25269u), Struct_2(var_0, var_0, var_2, vec2<i32>(-2147483647i, -2147483647i)), select(vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(false, var_2, var_2, false), false), Struct_1(vec3<u32>(39456u, 0u, var_0.a.x))).a, select(true, var_2, !var_2), func_2(var_0.a.x).d << (var_0.a.yy % vec2<u32>(32u))), select(select(!vec4<bool>(true, var_2, true, var_2), select(vec4<bool>(var_2, false, var_2, true), vec4<bool>(false, false, var_2, var_2), var_2), vec4<bool>(true, true, true, true)), vec4<bool>(var_2 & var_2, var_2, true, any(vec2<bool>(false, true))), !vec4<bool>(true, false, var_2, false)), func_2(var_0.a.x).a).a).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))) * -1816f)));
}

