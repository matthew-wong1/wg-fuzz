struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(Struct_2(vec2<i32>(1897i, -611i), 51666u), vec4<u32>(14328u, 4294967295u, 1u, 1u), Struct_2(vec2<i32>(29644i, 1i), 4294967295u), Struct_1(vec4<u32>(1u, 47828u, 1u, 35258u), 1u, 134f), Struct_3(false)), Struct_5(Struct_2(vec2<i32>(-36634i, -366i), 4294967295u), vec4<u32>(61976u, 4294967295u, 55479u, 4294967295u), Struct_2(vec2<i32>(1i, -18927i), 2844u), Struct_1(vec4<u32>(41630u, 44237u, 1u, 4294967295u), 0u, 1143f), Struct_3(false)), Struct_5(Struct_2(vec2<i32>(41391i, -12815i), 33213u), vec4<u32>(0u, 1u, 46650u, 50160u), Struct_2(vec2<i32>(-24056i, -12415i), 19924u), Struct_1(vec4<u32>(60043u, 1u, 7418u, 53991u), 21357u, 128f), Struct_3(true)), Struct_5(Struct_2(vec2<i32>(-8685i, 24202i), 39268u), vec4<u32>(4294967295u, 68173u, 12648u, 0u), Struct_2(vec2<i32>(0i, -1i), 1u), Struct_1(vec4<u32>(44736u, 4294967295u, 3592u, 69618u), 1390u, -295f), Struct_3(true)), Struct_5(Struct_2(vec2<i32>(41700i, -42088i), 68399u), vec4<u32>(1u, 1u, 4294967295u, 19144u), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), 33898u), Struct_1(vec4<u32>(0u, 4294967295u, 79421u, 4294967295u), 4294967295u, 1124f), Struct_3(true)));

var<private> global1: bool;

var<private> global2: array<bool, 6>;

var<private> global3: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global4: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> u32 {
    let var_0 = !(u_input.a.x < 81348u);
    let var_1 = vec3<i32>(max(_wgslsmith_mod_i32(~select(2147483647i, 34842i, true), 1i), min(-33893i, -1i >> (~u_input.a.x % 32u))), _wgslsmith_sub_i32(abs(-_wgslsmith_clamp_i32(41279i, -1i, 1i)), firstTrailingBit(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-23917i, -3810i, -21852i)), vec3<i32>(1i, 1i, 1i)))), (abs(16414i) & (_wgslsmith_div_i32(-22394i, -1i) << (u_input.a.x % 32u))) & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 42696i, 2147483647i), vec3<i32>(1i, 1i, 1i)));
    global0 = array<Struct_5, 5>();
    let var_2 = Struct_3(false);
    let var_3 = u_input.a;
    return 3837u;
}

fn func_3(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(min(~arg_0.x, 1u), _wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)))), 1u)] || global4[_wgslsmith_index_u32(~(~u_input.a.x), 1u)]);
    let var_1 = Struct_1(_wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(arg_0 >> (vec4<u32>(arg_0.x, 48971u, 4294967295u, 8712u) % vec4<u32>(32u)), min(arg_0, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)))), ~vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~u_input.a.x, 2592u >> (u_input.a.x % 32u), ~u_input.a.x)), arg_0.x, 117f);
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 6u)]);
    let var_3 = var_1.c;
    var var_4 = ~vec2<i32>(~(-1i), 35419i);
    return var_1;
}

fn func_1() -> i32 {
    let var_0 = func_3(vec4<u32>(~1u, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(22506u | u_input.a.x, 4294967295u)), min(u_input.a.x, func_2()), u_input.a.x));
    global4 = array<bool, 1>();
    global1 = !global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(var_0.a), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, 0u, 4294967295u, u_input.a.x), vec4<u32>(1u, 14168u, u_input.a.x, u_input.a.x))), vec4<u32>(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x << (u_input.a.x % 32u)), func_3(var_0.a | vec4<u32>(0u, u_input.a.x, 9929u, u_input.a.x)).a.x, u_input.a.x, min(func_2(), ~u_input.a.x))), 1u)];
    global2 = array<bool, 6>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-var_0.c) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-999f, var_0.c))));
    return ~(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(0i, _wgslsmith_sub_i32(-(~32330i), 1i)) & -_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 1i), ~firstTrailingBit(vec2<i32>(-92711i, 70404i)), _wgslsmith_div_vec2_i32(-vec2<i32>(0i, -78012i), _wgslsmith_add_vec2_i32(vec2<i32>(6652i, -6194i), vec2<i32>(-9170i, 1i))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), -524f)), -2696f)) <= _wgslsmith_f_op_f32(f32(-1f) * -476f);
    var_0 = -vec2<i32>(firstTrailingBit(func_1()), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.x, 0i) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a) % vec2<u32>(32u)), ~(vec2<i32>(var_0.x, -2147483647i) ^ vec2<i32>(var_0.x, var_0.x))));
    let var_2 = Struct_2(~(~(-(~vec2<i32>(-52710i, -10671i)))), 0u);
    global4 = array<bool, 1>();
    var var_3 = Struct_3(-279f < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 395f) + -1256f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(871f)), _wgslsmith_f_op_f32(sign(425f))))));
    let var_4 = func_3(~(reverseBits(abs(vec4<u32>(u_input.a.x, 4294967295u, 0u, var_2.b))) >> (func_3(vec4<u32>(u_input.a.x, u_input.a.x, 43739u, var_2.b) & vec4<u32>(u_input.a.x, u_input.a.x, 3804u, u_input.a.x)).a % vec4<u32>(32u)))).a.wx;
    var var_5 = vec2<bool>(global4[_wgslsmith_index_u32(~var_4.x, 1u)], any(!vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 6u)], global4[_wgslsmith_index_u32(func_2(), 1u)])));
    let x = u_input.a;
    s_output = StorageBuffer(556f, vec4<f32>(-447f, _wgslsmith_f_op_f32(833f * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, -835f)), 146f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(146f, -1070f)), _wgslsmith_f_op_f32(ceil(-1000f))))), max(_wgslsmith_sub_i32(-9950i, var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 0i, -30454i, var_0.x) & ~vec4<i32>(var_2.a.x, var_0.x, var_2.a.x, 45780i), reverseBits(countOneBits(vec4<i32>(-1i, var_2.a.x, var_2.a.x, var_2.a.x))))), ~var_2.b);
}

