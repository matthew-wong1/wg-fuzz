struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<f32>(1676f, -476f, -526f)), Struct_2(vec3<f32>(-775f, 1108f, 663f)), Struct_2(vec3<f32>(389f, -565f, 977f)), Struct_2(vec3<f32>(-430f, 697f, -614f)), Struct_2(vec3<f32>(-501f, -826f, 1855f)), Struct_2(vec3<f32>(-1279f, -879f, 1862f)), Struct_2(vec3<f32>(-1129f, 749f, 1221f)), Struct_2(vec3<f32>(578f, -414f, 640f)), Struct_2(vec3<f32>(414f, 1419f, 489f)), Struct_2(vec3<f32>(229f, -580f, 304f)), Struct_2(vec3<f32>(890f, -1058f, 507f)), Struct_2(vec3<f32>(2640f, -1000f, -1000f)), Struct_2(vec3<f32>(-873f, 918f, 206f)), Struct_2(vec3<f32>(233f, 504f, -1000f)), Struct_2(vec3<f32>(552f, -631f, 514f)), Struct_2(vec3<f32>(-1414f, -183f, 2382f)), Struct_2(vec3<f32>(-1047f, 1907f, 976f)), Struct_2(vec3<f32>(920f, 678f, 154f)), Struct_2(vec3<f32>(-1000f, -375f, 312f)), Struct_2(vec3<f32>(-985f, -1000f, 358f)), Struct_2(vec3<f32>(-2334f, 1130f, 819f)), Struct_2(vec3<f32>(1755f, 1000f, -508f)), Struct_2(vec3<f32>(230f, -1037f, -1338f)), Struct_2(vec3<f32>(-342f, 2465f, 350f)), Struct_2(vec3<f32>(1132f, 398f, -272f)), Struct_2(vec3<f32>(1405f, 463f, -721f)), Struct_2(vec3<f32>(-3273f, -1297f, -399f)), Struct_2(vec3<f32>(1973f, 901f, -497f)), Struct_2(vec3<f32>(2022f, -170f, 819f)), Struct_2(vec3<f32>(1979f, 433f, 575f)), Struct_2(vec3<f32>(1490f, 1369f, 920f)));

var<private> global1: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> bool {
    global0 = array<Struct_2, 31>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(167f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(-488f * -711f)))));
    global0 = array<Struct_2, 31>();
    let var_1 = vec3<bool>((1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(54885u, 4294967295u))) > _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 38475u), ~vec2<u32>(0u, 0u)), 50112u), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false)) | false, select(true, true, true));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(1u, 1u, 0u, 81179u)), vec4<u32>(6701u, 50793u, 17300u, 15130u), vec4<u32>(22326u, 4294967295u, 13397u, 11758u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(58071u, 0u, 143274u, 4294967295u), vec4<u32>(53727u, 71995u, 87059u, 1u))), 0u) << (vec2<u32>(~1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(16220u, 4294967295u, 96331u, 19170u), select(vec4<u32>(47011u, 46331u, 3333u, 46922u), vec4<u32>(4908u, 0u, 0u, 0u), var_1.x)))) % vec2<u32>(32u));
    return all(vec2<bool>(var_1.x, true));
}

fn func_2() -> Struct_1 {
    var var_0 = any(vec3<bool>(select(all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true)), true), true, ~u_input.a > global1.x));
    var_0 = false;
    let var_1 = all(vec4<bool>(true, true, func_3(-2147483647i, global1.xx), ~firstTrailingBit(4294967295u) <= ~(~87698u)));
    var var_2 = _wgslsmith_f_op_f32(abs(-263f));
    var_0 = var_1;
    return Struct_1(func_3(-1i, ~vec2<i32>(~u_input.a, -u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(0u), _wgslsmith_clamp_u32(4294967295u, 0u, 19620u)), vec2<u32>(69785u, 1u)) << ((_wgslsmith_dot_vec4_u32(abs(vec4<u32>(32315u, 4500u, 50784u, 76293u)), vec4<u32>(12312u, 13776u, 61805u, 0u)) << (min(~1u, firstTrailingBit(4294967295u)) % 32u)) % 32u), select(vec4<bool>(any(vec4<bool>(false, var_1, var_1, true)), var_1, select(true, var_1, false), false), vec4<bool>(true, all(!vec2<bool>(false, var_1)), any(!vec4<bool>(var_1, false, true, var_1)), var_1), select(!vec4<bool>(var_1, var_1, var_1, var_1), !select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_1, false, false, var_1), false), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    global1 = ~(vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.x, global1.x, -2147483647i), ~vec3<i32>(global1.x, -1i, 6684i)), firstLeadingBit(~global1.x), u_input.a) & select(countOneBits(vec3<i32>(global1.x, global1.x, -21044i) | vec3<i32>(global1.x, -22070i, 13208i)), -_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, u_input.a, u_input.a), vec3<i32>(22921i, 0i, u_input.a)), vec3<bool>(false, true, false)));
    return max(vec3<i32>(-1i) * -(vec3<i32>(u_input.a, u_input.a, global1.x) ^ vec3<i32>(u_input.a, 1i, 1i)), ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, global1.x, u_input.a), vec3<i32>(-9327i, 1i, u_input.a)))) ^ vec3<i32>(abs(~u_input.a), -28845i, _wgslsmith_dot_vec2_i32(global1.zx, _wgslsmith_mod_vec2_i32(min(global1.xz, global1.xx), firstTrailingBit(vec2<i32>(global1.x, u_input.a)))));
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-979f, arg_2.a.x, arg_2.a.x) * vec3<f32>(arg_2.a.x, 612f, arg_2.a.x)) - arg_2.a))));
    var_0 = arg_2;
    var var_1 = Struct_1(false, abs(_wgslsmith_clamp_u32(~0u, firstTrailingBit(303u), 1u)) << (~countOneBits(1u) % 32u), !select(func_2().c, select(func_2().c, vec4<bool>(true, false, false, true), false), select(true, -447f > var_0.a.x, true)));
    var var_2 = vec2<u32>(~4294967295u, ~var_1.b & 4294967295u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a.x))) + arg_2.a.x);
    return func_2();
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-510f, 1326f, -631f), vec3<f32>(305f, 1463f, 582f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1119f, 180f, -1596f)))))));
    let var_1 = func_5(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(func_4(func_2()), -(vec3<i32>(16567i, u_input.a, global1.x) << (vec3<u32>(6664u, 4294967295u, 0u) % vec3<u32>(32u)))), func_4(Struct_1(all(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 80711u, 10332u), vec3<u32>(122599u, 4294967295u, 4294967295u)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))))), -firstLeadingBit((vec3<i32>(1i, 53837i, 19284i) | vec3<i32>(global1.x, u_input.a, -57225i)) | vec3<i32>(67556i, -18568i, global1.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(reverseBits(max(vec3<u32>(11262u, 4294967295u, 46829u), vec3<u32>(23689u, 1u, 0u)))), vec3<u32>(abs(firstTrailingBit(11448u)), 37196u, _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(4294967295u, 1u)))), 31u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -190f) + var_0) * _wgslsmith_f_op_vec3_f32(var_0 - vec3<f32>(var_0.x, var_0.x, 517f))), var_0, var_1.c.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1841f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-549f - -367f) - 1f), _wgslsmith_f_op_f32(-1153f + _wgslsmith_f_op_f32(abs(var_0.x))))))));
    var var_3 = min(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(15634u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 0u, var_1.b), vec3<u32>(1u, var_1.b, var_1.b)))) ^ _wgslsmith_mult_u32(14114u, 27213u), var_1.b);
    return func_5(abs(u_input.a), vec3<i32>(global1.x, 1i, func_4(var_1).x), Struct_2(var_0));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = vec2<u32>(1u, 1u);
    var var_1 = Struct_1(true, 42591u, vec4<bool>(_wgslsmith_f_op_f32(abs(-331f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), true, arg_1.a, !((5055i >> (var_0.x % 32u)) > _wgslsmith_div_i32(29706i, u_input.a))));
    var var_2 = func_1();
    let var_3 = u_input.a;
    global1 = vec3<i32>(u_input.a, 0i, global1.x);
    return ~func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = global0[_wgslsmith_index_u32(1u, 31u)];
    global1 = vec3<i32>(-firstLeadingBit(global1.x << (4294967295u % 32u)) & select(countOneBits(u_input.a | global1.x), global1.x, true), _wgslsmith_mod_i32(countOneBits(global1.x), -1i << (func_6(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), func_1(), global0[_wgslsmith_index_u32(var_0 >> (4294967295u % 32u), 31u)]) % 32u)), 18627i);
    var var_2 = 365f;
    var_2 = var_1.a.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1786f, var_1.a.x) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), _wgslsmith_f_op_f32(trunc(var_1.a.x)))))));
    var_2 = _wgslsmith_f_op_f32(-1000f * var_3.x);
    global0 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(select(func_4(func_1()).yx, -(~_wgslsmith_mod_vec2_i32(global1.zy, global1.yz)), func_1().c.zw), var_1.a.x);
}

