struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_div_u32(countOneBits(_wgslsmith_mult_u32(12918u, _wgslsmith_add_u32(42112u, 97273u))), _wgslsmith_add_u32(~(~27133u), 1u)), true, _wgslsmith_f_op_f32(f32(-1f) * -1030f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-256f, _wgslsmith_f_op_f32(f32(-1f) * -1388f), -254f, _wgslsmith_f_op_f32(min(117f, -1000f))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -496f), -968f, -1104f)))));
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a, 1u), countOneBits(vec2<u32>(var_0.a, var_0.a))), _wgslsmith_div_vec2_u32(vec2<u32>(42752u, var_0.a), vec2<u32>(var_0.a, 4294967295u) & vec2<u32>(28038u, var_0.a))) << ((vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(19267u, var_0.a), vec2<u32>(28812u, 4647u)), 45275u) | (_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, 17577u), vec2<u32>(var_0.a, var_0.a)) | _wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(var_0.a, var_0.a)))) % vec2<u32>(32u)), vec2<u32>(0u, var_0.a), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(62754u, 1u), countOneBits(vec2<u32>(var_0.a, 62948u))), ~vec2<u32>(var_0.a, var_0.a)), ~vec2<u32>(var_0.a, var_0.a)));
    let var_2 = Struct_2(vec4<u32>(var_1.x, _wgslsmith_div_u32(var_0.a | 13613u, _wgslsmith_dot_vec2_u32(var_1, var_1)), countOneBits(var_0.a), ~0u) << (~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_0.a, var_1.x, var_0.a), vec4<u32>(var_1.x, var_1.x, var_1.x, 9750u)), vec4<u32>(var_0.a, 67554u, 4294967295u, var_1.x)) % vec4<u32>(32u)));
    var var_3 = vec3<bool>(!(!(!(true & var_0.b))), all(vec2<bool>(all(vec4<bool>(false, false, var_0.b, var_0.b)), all(vec4<bool>(false, true, true, false)))), !any(!select(vec3<bool>(true, var_0.b, true), vec3<bool>(var_0.b, true, true), var_0.b)));
    var_3 = !(!vec3<bool>(var_2.a.x != (var_2.a.x ^ var_2.a.x), all(vec2<bool>(false, var_0.b)), !(u_input.a.x < u_input.a.x)));
    return vec3<bool>(var_3.x, all(select(select(vec3<bool>(true, false, var_3.x), vec3<bool>(true, false, var_0.b), !vec3<bool>(false, false, var_0.b)), select(select(vec3<bool>(false, true, var_0.b), vec3<bool>(var_3.x, false, var_0.b), vec3<bool>(var_3.x, false, var_0.b)), select(vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(true, var_0.b, var_0.b)), true), true)), false);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(774f + _wgslsmith_f_op_f32(arg_3.d.x * -497f)));
    let var_1 = !vec2<bool>(!(!arg_3.b), !arg_3.b);
    let var_2 = any(func_3());
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_3.d)) + arg_3.d))));
    var var_4 = arg_2;
    return 1266f;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: i32) -> Struct_2 {
    var var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    let var_1 = !vec3<bool>(!select(true, true, !arg_0), !(true | any(vec4<bool>(arg_0, false, arg_0, false))), arg_0);
    return Struct_2(select(~(~(~vec4<u32>(95790u, 1u, 1u, 17524u))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~firstLeadingBit(vec4<u32>(4294967295u, 1u, 7307u, 0u))), select(select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(arg_0, var_1.x, false, true), false), select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(false, arg_0, true, var_1.x), var_1.x), select(vec4<bool>(arg_0, var_1.x, false, var_1.x), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, var_1.x))), select(!vec4<bool>(var_1.x, true, true, var_1.x), !vec4<bool>(arg_0, true, true, true), arg_0 & true), var_1.x)));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = Struct_1(firstLeadingBit(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(64904u, arg_2.a.x), arg_1.a.yz))), all(select(vec2<bool>(arg_0.x, func_3().x), vec2<bool>(false, select(arg_0.x, arg_0.x, arg_0.x)), all(arg_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-288f, 571f))))), 245f, true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1192f, 2004f, 115f, -132f), vec4<f32>(392f, -156f, 348f, -1153f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1398f, 857f, 422f, 151f)))), all(vec3<bool>(arg_0.x, false, true)))))));
    var var_2 = vec3<i32>(abs(-(min(u_input.a.x, -55347i) ^ 560i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, 41751i, -24884i), firstLeadingBit(vec3<i32>(-26170i, u_input.a.x, u_input.a.x) << (vec3<u32>(arg_1.a.x, 1u, 9599u) % vec3<u32>(32u)))), ~(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, -1i)) ^ u_input.a)), u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(trunc(1364f));
    var var_4 = Struct_1(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(var_0.a, select(var_0.a, vec4<u32>(26019u, var_1.a, 1u, var_0.a.x), var_1.b))), ~firstTrailingBit(_wgslsmith_mod_vec4_u32(arg_1.a, var_0.a))), false, 811f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(var_1.d)), var_1.d)));
    return ~select(-vec4<i32>(u_input.a.x, -40702i, _wgslsmith_mult_i32(u_input.a.x, -19277i), 51373i), ~(-(vec4<i32>(u_input.a.x, -2147483647i, var_2.x, 2147483647i) & vec4<i32>(var_2.x, var_2.x, var_2.x, -2147483647i))), arg_0.x);
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(select(vec2<bool>(true, true), vec2<bool>(u_input.a.x == u_input.a.x, true | all(vec4<bool>(false, false, false, false))), vec2<bool>(any(vec3<bool>(true, true, true)), true)), Struct_2(~(~vec4<u32>(1u, 1u, 1u, 1u))), func_4(450f != _wgslsmith_f_op_f32(1368f * _wgslsmith_f_op_f32(func_2(vec3<u32>(4294967295u, 3818u, 56430u), 37585u, Struct_2(vec4<u32>(69875u, 15731u, 1u, 19187u)), Struct_1(21941u, true, 926f, vec4<f32>(-2028f, -858f, -568f, 1851f))))), -(-u_input.a.x ^ _wgslsmith_mod_i32(u_input.a.x, 32975i)), select(-58386i, countOneBits(0i), true)));
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.a.zz, min(abs(_wgslsmith_mod_vec2_i32(u_input.a.xx, var_0.yw)), vec2<i32>(_wgslsmith_sub_i32(~21274i, u_input.a.x), _wgslsmith_div_i32(~var_0.x, -u_input.a.x))));
    var var_2 = Struct_1(~(~firstTrailingBit(1u)), any(select(vec4<bool>(true, all(vec3<bool>(false, false, true)), select(true, true, true), all(vec3<bool>(true, false, false))), vec4<bool>(true, -2147483647i <= u_input.a.x, true, all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-1425f * 1000f), vec4<f32>(_wgslsmith_f_op_f32(-124f + _wgslsmith_f_op_f32(f32(-1f) * -929f)), -1399f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1506f))), 1f));
    let var_3 = Struct_2(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 4294967295u) >> (vec4<u32>(0u, var_2.a, 4294967295u, 0u) % vec4<u32>(32u)), vec4<u32>(var_2.a, var_2.a, 30728u, 9363u) & vec4<u32>(1u, var_2.a, var_2.a, 4294967295u), vec4<u32>(var_2.a, var_2.a, 4294967295u, 36494u) << (vec4<u32>(var_2.a, var_2.a, var_2.a, 1u) % vec4<u32>(32u)))) & vec4<u32>(firstTrailingBit(firstLeadingBit(var_2.a)), var_2.a ^ reverseBits(var_2.a), 0u, ~101572u));
    var_2 = Struct_1(_wgslsmith_div_u32(~(0u << (var_3.a.x % 32u)), _wgslsmith_sub_u32(21301u, firstLeadingBit(var_2.a))) >> (~abs(~var_2.a) % 32u), true, 1603f, var_2.d);
    return func_4(!(any(vec3<bool>(var_2.b, false, var_2.b)) || var_2.b), ~u_input.a.x, ~40036i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.xy;
    let var_1 = func_1();
    let var_2 = var_0;
    var var_3 = vec4<bool>(false, false | any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, false), false)), !any(vec3<bool>(true, true, true)), all(vec3<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, true, true)))));
    var var_4 = Struct_1(4696u, var_3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-355f + -1000f))) + 244f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1193f, 1880f, 2204f, 329f), vec4<f32>(155f, 1385f, 349f, 517f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_1.a.wzz, var_1.a.x, var_1, Struct_1(var_1.a.x, var_3.x, 317f, vec4<f32>(-805f, -1131f, 602f, 477f))))), 1663f, 399f, 1109f)));
    var_4 = Struct_1(_wgslsmith_mult_u32(var_4.a, ~_wgslsmith_add_u32(var_1.a.x, 0u)) | 95227u, !(var_4.b | false), _wgslsmith_f_op_f32(var_4.c - -1000f), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.d.x))))), _wgslsmith_f_op_f32(func_2(~var_1.a.wyy, ~(~var_1.a.x), func_1(), Struct_1(~var_1.a.x, true, _wgslsmith_f_op_f32(-684f + 328f), var_4.d))), _wgslsmith_div_f32(-1098f, -1079f), _wgslsmith_f_op_f32(select(var_4.c, var_4.c, var_4.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.xxy, abs(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, u_input.a), u_input.a), u_input.a)), firstLeadingBit(var_2.x), -_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, var_0.x), 37467i), ~_wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, 0i), firstLeadingBit(var_0) & vec2<i32>(-2147483647i, var_0.x)));
}

