struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-552f, 202f, 236f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    let var_0 = -815f;
    let var_1 = arg_0;
    var var_2 = Struct_4(Struct_1(arg_1.a, select(_wgslsmith_dot_vec2_u32(vec2<u32>(20816u, arg_2), vec2<u32>(1u, 26384u)), ~1u, arg_0.a >= var_0) & ~arg_2), !(!vec4<bool>(any(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, true, false, true)), true, true)), Struct_3(~(arg_1.a & arg_1.a), select(vec4<bool>(false, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true))), -1387f), 1000f);
    var_2 = Struct_4(Struct_1(vec4<u32>(~_wgslsmith_sub_u32(arg_2, 42351u), 0u, arg_1.b, var_2.a.a.x), arg_1.b), select(!vec4<bool>(true, var_2.b.x, !var_2.c.b.x, var_2.b.x | true), var_2.c.b, var_2.b.x || true), Struct_3(abs(vec4<u32>(32181u, 1u, 4344u, abs(4294967295u))), vec4<bool>(select(select(false, var_2.b.x, var_2.b.x), u_input.a != -77798i, true), !(false | var_2.c.b.x), true && var_2.b.x, var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2710f, arg_0.a, true))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_1.b, 3u)], global0[_wgslsmith_index_u32(var_2.c.a.x, 3u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) - arg_0.a) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.a.a.zy, var_2.c.a.xw), 3u)]), global0[_wgslsmith_index_u32(~arg_1.a.x, 3u)]))));
    global0 = array<f32, 3>();
    return var_2.c.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_3(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), !(!func_3(Struct_2(global0[_wgslsmith_index_u32(0u, 3u)]), Struct_1(vec4<u32>(17578u, 0u, 44491u, 4294967295u), 20883u), 51878u)), global0[_wgslsmith_index_u32(reverseBits(0u), 3u)]);
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_1 = -vec3<i32>(44103i, _wgslsmith_sub_i32(_wgslsmith_div_i32(-arg_1.x, ~u_input.a), 8319i), abs(u_input.a));
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> f32 {
    var var_0 = max(-arg_2, -14821i);
    global0 = array<f32, 3>();
    var_0 = arg_2;
    var_0 = ~(-1i);
    var var_1 = Struct_1(~(~(~vec4<u32>(arg_1.a.a.x, arg_0.a.x, arg_1.c.a.x, arg_1.c.a.x)) << (_wgslsmith_div_vec4_u32(~arg_0.a, ~vec4<u32>(4294967295u, 3775u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), 32911u);
    return global0[_wgslsmith_index_u32(arg_0.a.x ^ arg_0.a.x, 3u)];
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = vec3<bool>(!(~(~arg_1.a.x) >= ~25735u), (~(~arg_1.a.x) >= ~(~arg_1.b)) && true, false);
    global0 = array<f32, 3>();
    var var_1 = !func_2(min(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -25746i, u_input.a, -26189i) & vec4<i32>(u_input.a, 0i, u_input.a, 0i), ~vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i)), -vec4<i32>(23765i, 2298i, 1i, 29512i)), min(~(-vec3<i32>(u_input.a, u_input.a, -27699i)), select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -25637i, u_input.a), vec3<i32>(u_input.a, 10562i, -57882i)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -67530i, -22594i), vec3<i32>(0i, u_input.a, u_input.a)), vec3<bool>(true, var_0.x, var_0.x)))).b.x;
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec4_i32(~(vec4<i32>(33845i, -54415i, u_input.a, u_input.a) << (~arg_1.a % vec4<u32>(32u))), vec4<i32>(5827i, abs(u_input.a & 76771i), u_input.a, _wgslsmith_mod_i32(_wgslsmith_add_i32(-3636i, -26128i), _wgslsmith_mod_i32(u_input.a, u_input.a)))));
    var var_3 = arg_0.x;
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -486f));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_1, arg_1) >> (vec3<u32>(2652u, 80509u, arg_1) % vec3<u32>(32u)), ~vec3<u32>(0u, arg_1, arg_1)) | _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, 1u, 0u), firstLeadingBit(vec3<u32>(arg_1, arg_1, arg_1))), ~(~vec3<u32>(1u, arg_1, 36450u) | min(vec3<u32>(4294967295u, 0u, arg_1), vec3<u32>(41937u, arg_1, arg_1)))) >> (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_1, 1u), ~arg_1), func_2(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, 15629i, u_input.a)), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), ~vec4<i32>(-1i, u_input.a, -17642i, u_input.a)), min(vec3<i32>(-19856i, -2147483647i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(4762i, u_input.a, u_input.a), vec3<i32>(-2147483647i, u_input.a, u_input.a)))).a.x, 1u) % vec3<u32>(32u));
    let var_1 = vec2<u32>(var_0.x, _wgslsmith_mod_u32(select(0u, ~1u ^ _wgslsmith_mod_u32(arg_1, var_0.x), func_2(-vec4<i32>(-1i, 2147483647i, 1i, 22855i), abs(vec3<i32>(u_input.a, u_input.a, u_input.a))).b.x), 26943u));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 3u)] + global0[_wgslsmith_index_u32(82794u, 3u)]), 871f, _wgslsmith_div_f32(739f, -731f), -143f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, global0[_wgslsmith_index_u32(arg_1, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], 470f) - vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], arg_0.a, arg_0.a)))))));
    let var_3 = vec2<f32>(227f, -181f);
    return func_2(abs(~vec4<i32>(~(-1974i), -1i, u_input.a >> (var_1.x % 32u), ~u_input.a)), ~vec3<i32>(~(i32(-1i) * -41088i), _wgslsmith_sub_i32(~u_input.a, u_input.a), u_input.a));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = 1157f;
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_1 = func_6(func_5(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_2(vec4<i32>(-1i, -2147483647i, arg_1.x, -13669i), vec3<i32>(arg_1.x, u_input.a, 908i)), Struct_4(Struct_1(vec4<u32>(0u, 0u, 16355u, 1u), 29964u), vec4<bool>(false, arg_0, false, true), Struct_3(vec4<u32>(20916u, 16709u, 40663u, 2549u), arg_2, var_0), 380f), _wgslsmith_sub_i32(arg_1.x, arg_1.x))), 1242f, _wgslsmith_f_op_f32(min(-2752f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(88496u, 3u)] * var_0))), 1000f), Struct_1(~vec4<u32>(1u, 1u, 1u, 1u), 34156u), 21396u, Struct_4(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), ~61488u), !func_2(vec4<i32>(-2147483647i, arg_1.x, arg_1.x, u_input.a), vec3<i32>(u_input.a, -1i, 5406i)).b, func_2(~vec4<i32>(u_input.a, 27960i, arg_1.x, -11559i), ~vec3<i32>(u_input.a, -5i, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(25572u, 3u)], 2141f)))), countOneBits(~(~abs(4294967295u))), arg_2.x);
    var var_2 = false;
    return Struct_2(1260f);
}

fn func_7(arg_0: Struct_2, arg_1: bool) -> vec4<u32> {
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(func_6(func_5(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), Struct_1(vec4<u32>(4294967295u, 0u, 26450u, 99729u), 1u), 0u, Struct_4(Struct_1(vec4<u32>(133804u, 11688u, 107350u, 18965u), 718u), vec4<bool>(false, true, true, arg_1), Struct_3(vec4<u32>(0u, 2150u, 30910u, 20426u), vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(47420u, 3u)]), 176f)), _wgslsmith_div_u32(4294967295u, 1u), true).a.x, ~(~18280u), 0u, max(reverseBits(47461u), 0u)), ~(~abs(vec4<u32>(6842u, 68700u, 26878u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    var var_0 = Struct_3(func_7(func_1(true, vec2<i32>(u_input.a >> (1u % 32u), u_input.a), vec4<bool>(-1069f == global0[_wgslsmith_index_u32(47620u, 3u)], any(vec3<bool>(true, false, true)), true, true), select(true, true, false)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.a >= _wgslsmith_add_i32(-32119i, u_input.a), false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]) - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(53458u, 4294967295u, 1u), vec3<u32>(4294967295u, 16983u, 0u)), 3u)]))));
    var var_1 = vec2<u32>(1u, ~var_0.a.x);
    global0 = array<f32, 3>();
    let var_2 = !var_0.b.x;
    var var_3 = !var_0.b.x;
    let var_4 = var_0.b.x;
    var_0 = func_6(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1185f + var_0.c))), ~var_1.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -36973i))), (~vec3<u32>(12426u, var_0.a.x, 4294967295u) ^ ~func_7(Struct_2(1314f), var_2).zxx) >> (firstLeadingBit(var_0.a.zxy) % vec3<u32>(32u)));
}

