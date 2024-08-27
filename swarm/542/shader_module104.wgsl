struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: vec4<i32> = vec4<i32>(4463i, -1i, 2147483647i, 7057i);

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(4294967295u, 4294967295u, 1u, 2127u), vec4<u32>(0u, 744u, 0u, 31847u), vec4<u32>(39260u, 28515u, 44453u, 0u), vec4<u32>(68601u, 15928u, 4294967295u, 18780u), vec4<u32>(1u, 30657u, 39453u, 78044u), vec4<u32>(0u, 0u, 50168u, 16646u), vec4<u32>(0u, 76662u, 47206u, 4294967295u), vec4<u32>(1u, 1u, 14789u, 13180u), vec4<u32>(0u, 4294967295u, 0u, 602u), vec4<u32>(20927u, 7982u, 4294967295u, 2512u), vec4<u32>(16948u, 1u, 81474u, 34128u), vec4<u32>(1u, 43704u, 20560u, 4294967295u), vec4<u32>(79333u, 40169u, 220u, 32358u), vec4<u32>(5148u, 1u, 1u, 15633u), vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(0u, 1u, 3122u, 4294967295u), vec4<u32>(38974u, 0u, 9040u, 1u), vec4<u32>(21096u, 29317u, 0u, 0u), vec4<u32>(0u, 8635u, 14377u, 33823u), vec4<u32>(4294967295u, 25352u, 25556u, 37435u), vec4<u32>(76055u, 4063u, 54288u, 0u), vec4<u32>(0u, 2600u, 3186u, 22123u), vec4<u32>(55195u, 28546u, 17557u, 153946u), vec4<u32>(0u, 34322u, 1u, 1094u), vec4<u32>(1u, 9630u, 1u, 1u), vec4<u32>(0u, 2924u, 61733u, 76501u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(1u, 13036u, 14240u, 44u), vec4<u32>(4294967295u, 24767u, 83124u, 80756u), vec4<u32>(4294967295u, 41251u, 62228u, 0u));

var<private> global4: vec2<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-397f * _wgslsmith_f_op_f32(max(-355f, 453f))), _wgslsmith_f_op_f32(step(-514f, 584f)))) + _wgslsmith_f_op_f32(max(-439f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) + -1427f), _wgslsmith_f_op_f32(-1361f + _wgslsmith_f_op_f32(f32(-1f) * -808f))))));
    let var_1 = !(!select(vec3<bool>(false, true, arg_2), select(!vec3<bool>(arg_2, arg_1.c, false), select(vec3<bool>(arg_1.c, arg_1.c, false), vec3<bool>(arg_2, false, true), arg_2), var_0 <= 534f), vec3<bool>(arg_1.c, true, !arg_1.c)));
    let var_2 = global2[_wgslsmith_index_u32(arg_3, 4u)];
    global1 = _wgslsmith_add_vec4_i32(-(vec4<i32>(abs(var_2.b.x), -53282i, -global1.x, firstLeadingBit(2147483647i)) ^ arg_1.b), -_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(var_2.b, var_2.b), _wgslsmith_clamp_vec4_i32(~var_2.b, vec4<i32>(-2147483647i, arg_1.b.x, -2147483647i, global1.x), vec4<i32>(arg_1.b.x, 0i, -45358i, global1.x))));
    let var_3 = max(~countOneBits(_wgslsmith_clamp_i32(~arg_1.b.x, firstLeadingBit(-723i), var_2.b.x)), 2147483647i);
    return _wgslsmith_f_op_f32(-247f - 1009f);
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(u_input.a.x, 9513u, 0u)), global2[_wgslsmith_index_u32(1u, 4u)], true, global4.x)), _wgslsmith_f_op_f32(round(-105f)), 602f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1586f, -662f, -1105f, -1268f), vec4<f32>(497f, 1593f, 892f, -1937f)), vec4<f32>(1077f, -622f, 1000f, -236f), vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-153f, _wgslsmith_f_op_f32(trunc(225f)), -1117f, _wgslsmith_f_op_f32(min(1000f, 532f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1111f, -564f, 361f, 1067f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, 1900f, -610f, 322f) * vec4<f32>(899f, -470f, -154f, 890f))))))));
    let var_1 = firstTrailingBit(vec3<i32>(-64439i, 1i, global1.x | 29839i)) >> (vec3<u32>(max(u_input.a.x, ~abs(global4.x)), firstLeadingBit(~countOneBits(1u)), _wgslsmith_add_u32(1u, u_input.a.x) ^ _wgslsmith_mult_u32(~25546u, ~u_input.a.x)) % vec3<u32>(32u));
    var var_2 = var_0;
    return vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(-1i, global1.x, var_1.x), vec3<i32>(47775i, -1i, 9117i)), _wgslsmith_mult_vec3_i32(global1.xzz, vec3<i32>(var_1.x, global1.x, -1i)), ~var_1), vec3<i32>(global1.x, 2147483647i, 0i)), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(49516i, -22921i), global1.xy) & max(0i, var_1.x))), reverseBits(-(max(global1.x, -42357i) << (109568u % 32u))), _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.x, 0i, global1.x), vec4<i32>(-20933i, 0i, 0i, -16250i)), global1.x << (4294967295u % 32u), min(global1.x, var_1.x)), var_1)), _wgslsmith_clamp_i32(firstLeadingBit(var_1.x), -var_1.x, -_wgslsmith_mod_i32(-global1.x, abs(global1.x))));
}

fn func_1() -> i32 {
    var var_0 = Struct_1(select(countOneBits(u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, ~(16575u & global4.x)), false), ((max(vec4<i32>(1i, global1.x, global1.x, 20350i), vec4<i32>(16257i, -50909i, -6567i, -1673i)) << ((vec4<u32>(global4.x, 6793u, 14228u, 1u) | global3[_wgslsmith_index_u32(68970u, 30u)]) % vec4<u32>(32u))) ^ abs(func_2())) >> (vec4<u32>(select(u_input.a.x, 1u, true), _wgslsmith_sub_u32(4242u, 1u) >> (u_input.a.x % 32u), ~1u, ~4294967295u) % vec4<u32>(32u)), all(vec4<bool>(_wgslsmith_mod_u32(u_input.a.x, 0u) < _wgslsmith_mult_u32(10994u, u_input.a.x), false, true, true)), 4294967295u);
    var_0 = Struct_1(~global4.x, vec4<i32>(_wgslsmith_add_i32(var_0.b.x, -7797i), 35312i, _wgslsmith_sub_i32(countOneBits(var_0.b.x), global1.x), -1i ^ ~(-var_0.b.x)), var_0.c, ~4294967295u << (reverseBits(~min(u_input.a.x, 4294967295u)) % 32u));
    return func_2().x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = select(select(select(vec2<bool>(arg_1, arg_2), select(!vec2<bool>(false, arg_2), !vec2<bool>(false, arg_2), 25537u == u_input.a.x), !(-76024i <= arg_0)), !(!select(vec2<bool>(true, true), vec2<bool>(arg_2, arg_1), vec2<bool>(arg_1, arg_1))), select(select(select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, false), true), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, true), vec2<bool>(false, true)), arg_2), vec2<bool>(true, true), !all(vec2<bool>(arg_1, false)))), !(!vec2<bool>(false, arg_2)), vec2<bool>(arg_1, arg_2));
    let var_1 = global0[_wgslsmith_index_u32(1u, 5u)];
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(var_1.d), 4294967295u, abs(1u)), select(vec3<u32>(var_1.a << (~4294967295u % 32u), 54231u, _wgslsmith_mod_u32(global4.x ^ global4.x, _wgslsmith_div_u32(1u, 4294967295u))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(39098u, 65795u, 4294967295u), vec3<u32>(u_input.a.x, 57640u, 0u)), ~vec3<u32>(35933u, 8475u, 1u)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), global4.x & 0u, u_input.a.x ^ global4.x) % vec3<u32>(32u)), vec3<bool>(var_0.x, 1u <= abs(global4.x), !any(vec3<bool>(false, var_1.c, false)))));
    let var_3 = -1i;
    global1 = -var_1.b;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global4 = vec2<u32>(global4.x, (_wgslsmith_mod_u32(global4.x, 4294967295u) & global4.x) << (~22537u % 32u));
    var var_1 = vec4<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(any(vec2<bool>(false, false)), false, true)) || true, func_4(func_1(), true, false), !func_4(_wgslsmith_sub_i32(min(-1i, -2147483647i), global1.x), any(vec3<bool>(true, true, false)) | any(vec4<bool>(false, false, true, true)), !(global1.x < global1.x)));
    var_0 = any(select(var_1.zyw, !vec3<bool>(any(var_1.yx), select(var_1.x, var_1.x, var_1.x), false), var_1.wwy));
    let var_2 = true;
    global2 = array<Struct_1, 4>();
    var var_3 = true;
    var var_4 = Struct_2(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global4.x, u_input.a.x), vec3<u32>(0u, global4.x, u_input.a.x))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_sub_u32(38189u, 0u), 0u >> (global4.x % 32u)), ~(vec3<u32>(0u, u_input.a.x, u_input.a.x) | vec3<u32>(global4.x, global4.x, 19766u))) % vec3<u32>(32u)));
    let var_5 = Struct_1(~(firstTrailingBit(76570u) & var_4.a.x), vec4<i32>(~51390i, abs(~global1.x), ~(-2147483647i), ~reverseBits(-1i)) << (abs(global3[_wgslsmith_index_u32(3652u, 30u)]) % vec4<u32>(32u)), true, (4294967295u | ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)) & u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(min(-1i, var_5.b.x), 1i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-113f, _wgslsmith_f_op_f32(sign(-820f)))))))), ~(~global3[_wgslsmith_index_u32(global4.x << (var_4.a.x % 32u), 30u)] & (_wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, 89512u, 3844u, u_input.a.x), global3[_wgslsmith_index_u32(35917u, 30u)]) ^ firstLeadingBit(vec4<u32>(u_input.a.x, 1u, 22054u, u_input.a.x)))));
}

