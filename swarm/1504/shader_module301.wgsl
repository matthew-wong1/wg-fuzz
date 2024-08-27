struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: u32,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

var<private> global2: f32 = 2127f;

var<private> global3: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_2(vec3<i32>(-5926i, 29551i, 8996i), 0u), vec4<bool>(true, true, false, false), 50038u, vec3<u32>(89704u, 939u, 36582u), Struct_2(vec3<i32>(1i, -1i, 7810i), 30390u)), Struct_4(Struct_2(vec3<i32>(71733i, 0i, 2147483647i), 18818u), vec4<bool>(false, true, true, true), 0u, vec3<u32>(4294967295u, 0u, 1u), Struct_2(vec3<i32>(0i, 12755i, 0i), 4294967295u)), Struct_4(Struct_2(vec3<i32>(10195i, -1i, 1i), 4294967295u), vec4<bool>(false, true, true, false), 33449u, vec3<u32>(51733u, 29335u, 17163u), Struct_2(vec3<i32>(-20861i, i32(-2147483648), 0i), 61246u)), Struct_4(Struct_2(vec3<i32>(-16257i, 2147483647i, 2147483647i), 0u), vec4<bool>(true, true, true, false), 4294967295u, vec3<u32>(4294967295u, 4294967295u, 30498u), Struct_2(vec3<i32>(2147483647i, -22057i, 2147483647i), 13195u)), Struct_4(Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 65591i), 4685u), vec4<bool>(true, true, false, false), 73111u, vec3<u32>(16886u, 4294967295u, 34260u), Struct_2(vec3<i32>(19602i, 41838i, 36812i), 6102u)), Struct_4(Struct_2(vec3<i32>(-17911i, 2147483647i, 5219i), 111860u), vec4<bool>(true, true, false, false), 1u, vec3<u32>(43223u, 1u, 28590u), Struct_2(vec3<i32>(2147483647i, 1i, -25547i), 4294967295u)), Struct_4(Struct_2(vec3<i32>(-43657i, 2147483647i, 76819i), 4294967295u), vec4<bool>(false, true, true, true), 0u, vec3<u32>(4294967295u, 2279u, 53416u), Struct_2(vec3<i32>(1i, i32(-2147483648), -68734i), 0u)), Struct_4(Struct_2(vec3<i32>(i32(-2147483648), -1604i, 23017i), 6096u), vec4<bool>(true, false, true, false), 0u, vec3<u32>(4294967295u, 4294967295u, 24323u), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 0i), 4642u)), Struct_4(Struct_2(vec3<i32>(29360i, 37612i, -1i), 4294967295u), vec4<bool>(true, true, true, true), 966u, vec3<u32>(4294967295u, 9045u, 1u), Struct_2(vec3<i32>(4761i, -34453i, i32(-2147483648)), 74328u)), Struct_4(Struct_2(vec3<i32>(1i, 1i, 2147483647i), 17802u), vec4<bool>(true, true, true, false), 1u, vec3<u32>(0u, 32456u, 0u), Struct_2(vec3<i32>(0i, 0i, i32(-2147483648)), 4294967295u)), Struct_4(Struct_2(vec3<i32>(30937i, -9165i, i32(-2147483648)), 0u), vec4<bool>(true, false, true, true), 75994u, vec3<u32>(41420u, 1u, 4294967295u), Struct_2(vec3<i32>(-1i, 2147483647i, -58035i), 4438u)), Struct_4(Struct_2(vec3<i32>(-15443i, i32(-2147483648), 0i), 0u), vec4<bool>(true, true, true, false), 0u, vec3<u32>(25255u, 38621u, 17404u), Struct_2(vec3<i32>(27657i, 1i, 2147483647i), 4294967295u)), Struct_4(Struct_2(vec3<i32>(23770i, -65264i, 0i), 75015u), vec4<bool>(true, false, false, true), 0u, vec3<u32>(55428u, 26843u, 0u), Struct_2(vec3<i32>(i32(-2147483648), 24695i, 6055i), 46120u)), Struct_4(Struct_2(vec3<i32>(71443i, -38855i, 2147483647i), 9221u), vec4<bool>(true, true, true, false), 47280u, vec3<u32>(0u, 1u, 0u), Struct_2(vec3<i32>(-11988i, 25717i, 50824i), 27230u)), Struct_4(Struct_2(vec3<i32>(-1i, 1i, -6537i), 4294967295u), vec4<bool>(false, true, true, false), 14018u, vec3<u32>(0u, 0u, 20300u), Struct_2(vec3<i32>(i32(-2147483648), 16115i, -32383i), 4294967295u)), Struct_4(Struct_2(vec3<i32>(21108i, 0i, 0i), 0u), vec4<bool>(true, true, true, false), 1u, vec3<u32>(50866u, 1u, 1u), Struct_2(vec3<i32>(0i, 1i, 4423i), 1u)), Struct_4(Struct_2(vec3<i32>(2147483647i, 2147483647i, 85484i), 63226u), vec4<bool>(false, false, false, false), 15316u, vec3<u32>(1u, 2263u, 4294967295u), Struct_2(vec3<i32>(0i, -24102i, -1i), 0u)), Struct_4(Struct_2(vec3<i32>(1i, -26887i, 5311i), 18406u), vec4<bool>(false, false, false, true), 1u, vec3<u32>(4294967295u, 104440u, 1u), Struct_2(vec3<i32>(-76224i, -33161i, i32(-2147483648)), 4294967295u)), Struct_4(Struct_2(vec3<i32>(2147483647i, 0i, -1i), 29301u), vec4<bool>(false, false, true, false), 1u, vec3<u32>(0u, 1u, 0u), Struct_2(vec3<i32>(i32(-2147483648), 0i, -8958i), 5518u)), Struct_4(Struct_2(vec3<i32>(-1i, 14282i, -1i), 10880u), vec4<bool>(false, true, true, true), 39620u, vec3<u32>(54612u, 71690u, 4294967295u), Struct_2(vec3<i32>(42435i, -8631i, 0i), 6294u)));

var<private> global4: array<bool, 23> = array<bool, 23>(false, false, true, true, false, false, true, true, true, false, true, false, false, false, false, false, true, false, false, false, true, false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.a.ww, _wgslsmith_mult_vec2_i32(vec2<i32>(-(1i >> (u_input.b.x % 32u)), -2147483647i), vec2<i32>(0i, _wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(arg_2.b, u_input.a.x)))));
    global1 = abs(~(~abs(countOneBits(u_input.b))));
    global4 = array<bool, 23>();
    global3 = array<Struct_4, 20>();
    let var_1 = Struct_2(-(u_input.a.yyx << (u_input.b % vec3<u32>(32u))), ~u_input.b.x);
    return any(!select(vec2<bool>(any(vec3<bool>(arg_2.c, arg_2.c, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2.c), vec2<bool>(false, arg_2.c), arg_2.c), vec2<bool>(false, global4[_wgslsmith_index_u32(12696u, 23u)])), vec2<bool>(select(false, false, false), all(vec2<bool>(true, arg_2.c)))));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_5, arg_3: f32) -> i32 {
    global4 = array<bool, 23>();
    global0 = false == any(select(vec4<bool>(true, true, true, true), !vec4<bool>(global4[_wgslsmith_index_u32(15612u, 23u)], true, false, global4[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec4<bool>(func_3(Struct_3(-3450f), arg_1, Struct_1(global1.x, -2147483647i, global4[_wgslsmith_index_u32(global1.x, 23u)])), !global4[_wgslsmith_index_u32(global1.x, 23u)], true, true)));
    let var_0 = _wgslsmith_div_vec4_i32(~arg_2.a | (_wgslsmith_clamp_vec4_i32(~arg_2.a, u_input.a, abs(arg_2.a)) & (countOneBits(vec4<i32>(arg_2.a.x, u_input.a.x, -1i, 2147483647i)) & arg_2.a)), -firstLeadingBit(~vec4<i32>(arg_2.a.x, 1371i, 19228i, -8649i)));
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1885f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1203f, !global4[_wgslsmith_index_u32(4294967295u, 23u)])))));
    global0 = global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(abs(global1.x), u_input.b.x) ^ min(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global1.x, u_input.b.x, 39808u)), firstTrailingBit(~global1.x)), 23u)] || true;
    return var_0.x;
}

fn func_1(arg_0: Struct_2) -> Struct_5 {
    global4 = array<bool, 23>();
    let var_0 = 0i;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1394f) * _wgslsmith_f_op_f32(round(541f))))), -2094f) >= 1f;
    var var_1 = Struct_5(vec4<i32>(select(~_wgslsmith_mult_i32(0i, arg_0.a.x), func_2(u_input.a.x, Struct_3(-1086f), Struct_5(u_input.a), _wgslsmith_f_op_f32(floor(855f))), true), -3681i, var_0, i32(-1i) * -25803i));
    var var_2 = _wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, arg_0.b, 1u, u_input.b.x), vec4<u32>(global1.x, u_input.b.x, 1u, global1.x) ^ vec4<u32>(69545u, 0u, arg_0.b, global1.x), vec4<u32>(arg_0.b, 0u, 0u, 1u)), abs(select(vec4<u32>(78667u, 4294967295u, 0u, 4294967295u), vec4<u32>(15413u, 1u, arg_0.b, arg_0.b), vec4<bool>(global4[_wgslsmith_index_u32(1u, 23u)], global4[_wgslsmith_index_u32(u_input.b.x, 23u)], true, true))))), ~(_wgslsmith_div_vec4_u32(~vec4<u32>(30643u, 4895u, 68498u, arg_0.b), ~vec4<u32>(4294967295u, u_input.b.x, global1.x, 13220u)) << (reverseBits(vec4<u32>(14329u, arg_0.b, arg_0.b, arg_0.b)) % vec4<u32>(32u))));
    return Struct_5(-(vec4<i32>(~(-1i), i32(-1i) * -1i, 1i, 42727i) << (~vec4<u32>(47595u, arg_0.b, 5134u, u_input.b.x) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x >> (arg_1.a.b % 32u), arg_1.a.b | (33760u ^ arg_1.e.b), ~reverseBits(0u), _wgslsmith_mult_u32(34398u, arg_2.x)), ~(~(vec4<u32>(117278u, 4294967295u, arg_1.c, 0u) << (vec4<u32>(31847u, 65908u, 1u, 4294967295u) % vec4<u32>(32u)))));
    let var_1 = arg_1.a;
    let var_2 = Struct_1(abs(0u), -2147483647i, arg_1.b.x);
    global0 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, -32327i), vec2<i32>(-var_1.a.x, 0i), select(select(vec2<bool>(false, true), vec2<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 23u)]), arg_1.b.x), select(arg_3, vec2<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 23u)], arg_3.x), arg_1.b.x), -2147483647i <= arg_1.a.a.x)), vec2<i32>(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.zy, vec2<i32>(arg_1.e.a.x, u_input.a.x)), vec2<i32>(arg_0.a.x, u_input.a.x) & arg_1.e.a.zy))) == var_1.a.x;
    var var_3 = 0u;
    return select(vec4<bool>(global4[_wgslsmith_index_u32(arg_2.x, 23u)], !any(vec2<bool>(var_2.c, var_2.c)), arg_0.a.x != -1i, global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(global1.x, 1u)) & u_input.b.x, 23u)]), vec4<bool>(true, arg_3.x, any(vec4<bool>(all(vec3<bool>(true, true, true)), false, !arg_1.b.x, !global4[_wgslsmith_index_u32(var_0.x, 23u)])), true), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec2<bool>(false, !global4[_wgslsmith_index_u32(u_input.b.x, 23u)]));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-997f, -1421f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2129f * 1426f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) + 1f)), _wgslsmith_f_op_f32(-1164f + 216f));
    var var_2 = select(vec4<bool>(any(!(!vec3<bool>(global4[_wgslsmith_index_u32(75077u, 23u)], global4[_wgslsmith_index_u32(global1.x, 23u)], global4[_wgslsmith_index_u32(global1.x, 23u)]))), false, any(vec3<bool>(global4[_wgslsmith_index_u32(~global1.x, 23u)], global4[_wgslsmith_index_u32(u_input.b.x, 23u)] || true, !global4[_wgslsmith_index_u32(0u, 23u)])), !global4[_wgslsmith_index_u32(global1.x, 23u)]), func_4(func_1(Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, 57455i), u_input.a.wzw), _wgslsmith_mod_u32(493u, global1.x))), global3[_wgslsmith_index_u32(1u, 20u)], ~(~_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(0u, 39202u, 4294967295u))), vec2<bool>(!global4[_wgslsmith_index_u32(global1.x, 23u)] & true, true)), !(!vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 23u)] || true, false, all(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 23u)], global4[_wgslsmith_index_u32(1887u, 23u)])), all(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 23u)], false, true)))));
    var var_3 = u_input.a;
    let var_4 = ~var_3.xzx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(~u_input.b.x, 1u), 4294967295u, u_input.b.x, 68070u), global1.yy, firstLeadingBit(u_input.a.x), _wgslsmith_add_i32(~(-u_input.a.x), 0i), vec3<u32>(u_input.b.x >> (_wgslsmith_sub_u32(~54552u, countOneBits(1u)) % 32u), _wgslsmith_add_u32(~select(28791u, global1.x, true), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 44836u), vec2<u32>(u_input.b.x, u_input.b.x)) >> (global1.x % 32u)), ~(~(global1.x & 4294967295u))));
}

