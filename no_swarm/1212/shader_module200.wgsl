struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(0u, 48338u, 0u, 0u, 13377u, 19837u, 0u, 47604u, 72953u, 83u, 67617u, 4294967295u, 0u, 1u, 4294967295u, 12659u, 4294967295u, 53542u, 33460u);

var<private> global1: f32;

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(0u, vec3<i32>(-1i, 1i, 53681i), vec3<u32>(1u, 22388u, 100729u)), Struct_3(1u, vec3<i32>(1i, 2147483647i, -4911i), vec3<u32>(0u, 4294967295u, 1u)), Struct_3(1u, vec3<i32>(1i, -1i, 0i), vec3<u32>(0u, 0u, 1u)), Struct_3(0u, vec3<i32>(2147483647i, 1i, -16060i), vec3<u32>(4294967295u, 1u, 14914u)), Struct_3(0u, vec3<i32>(-12314i, 7666i, 17616i), vec3<u32>(4294967295u, 82204u, 0u)), Struct_3(1u, vec3<i32>(14753i, 2277i, 39505i), vec3<u32>(22029u, 38231u, 45592u)), Struct_3(12626u, vec3<i32>(21207i, -9279i, 1i), vec3<u32>(22315u, 8408u, 72016u)), Struct_3(4294967295u, vec3<i32>(0i, -1i, 1i), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_3(12599u, vec3<i32>(-12358i, i32(-2147483648), 1i), vec3<u32>(1u, 4294967295u, 1u)), Struct_3(94045u, vec3<i32>(-24617i, -1i, -1i), vec3<u32>(1u, 78748u, 58637u)), Struct_3(26667u, vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<u32>(4294967295u, 4294967295u, 7480u)), Struct_3(4294967295u, vec3<i32>(1i, -16088i, 0i), vec3<u32>(46515u, 0u, 23576u)), Struct_3(99440u, vec3<i32>(-1i, -19342i, 4090i), vec3<u32>(20982u, 26411u, 3746u)), Struct_3(137169u, vec3<i32>(2672i, 21061i, 0i), vec3<u32>(9097u, 4294967295u, 6830u)), Struct_3(0u, vec3<i32>(39790i, 2147483647i, -19745i), vec3<u32>(4294967295u, 0u, 51731u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    global0 = array<u32, 19>();
    var var_0 = select(vec2<bool>(true, true), select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(true, true, true, false))), vec2<bool>(true, true)), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), !(global0[_wgslsmith_index_u32(~58581u, 19u)] >= ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)])), global0[_wgslsmith_index_u32(~4294967295u, 19u)] <= firstLeadingBit(~(~global0[_wgslsmith_index_u32(49868u, 19u)])));
    var var_1 = Struct_2(max(vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29716u, 19u)], 19u)], 19u)], 19u)]) | _wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(39727u, 19u)]), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), vec3<u32>(1u, 26338u, 19565u) ^ vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 19505u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14700u, 19u)], 19u)])), 1u, 1u), vec4<u32>(countOneBits(~39097u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(9435u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12822u, 19u)], 19u)], 19u)], 81699u, 24764u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20004u, 19u)], 19u)], 3563u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 45750u, 0u, 123451u))), 19u)], _wgslsmith_sub_u32(firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40723u, 19u)], 19u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)]), ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global0[_wgslsmith_index_u32(32398u, 19u)]), 19u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-486f + 468f), _wgslsmith_div_f32(519f, -1010f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1975f, 816f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-552f, 2089f), vec2<f32>(-670f, -123f))), !var_0.x))) - vec2<f32>(-573f, _wgslsmith_f_op_f32(max(987f, _wgslsmith_f_op_f32(592f * -898f))))), -vec3<i32>(u_input.a.x, i32(-1i) * -38061i, 0i), Struct_1(_wgslsmith_add_vec4_i32(~u_input.a, -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, 18126i), u_input.a)), firstTrailingBit(~u_input.a.x)));
    var var_2 = firstLeadingBit(var_1.a.x);
    var_0 = vec2<bool>(var_0.x, select(var_0.x, ~(var_1.a.x & global0[_wgslsmith_index_u32(0u, 19u)]) <= abs(12654u), false));
    return 0u;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1) == arg_1;
    global2 = array<Struct_3, 15>();
    var var_1 = _wgslsmith_sub_u32(max(~reverseBits(1u), 17262u), abs(_wgslsmith_add_u32(~func_3(), global0[_wgslsmith_index_u32(29387u, 19u)])));
    global2 = array<Struct_3, 15>();
    global0 = array<u32, 19>();
    return _wgslsmith_add_vec4_u32(vec4<u32>(~1u >> (_wgslsmith_sub_u32(1u, arg_0.c.x) % 32u), func_3(), ~_wgslsmith_div_u32(0u, 4294967295u << (arg_0.a % 32u)), ~(1u | (12039u << (global0[_wgslsmith_index_u32(59932u, 19u)] % 32u)))), vec4<u32>(~(~func_3()), 1u, _wgslsmith_mod_u32(1u, select(arg_0.a, arg_0.c.x, var_0)), ~4294967295u));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(func_2(Struct_3(abs(1u), vec3<i32>(abs(u_input.a.x), ~arg_0, -90649i & arg_0), _wgslsmith_clamp_vec3_u32(arg_1, arg_1, vec3<u32>(arg_1.x, 0u, 1u)) ^ _wgslsmith_add_vec3_u32(arg_1, vec3<u32>(28968u, global0[_wgslsmith_index_u32(32105u, 19u)], 1u))), _wgslsmith_f_op_f32(f32(-1f) * -920f), 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1084f, 249f)), vec2<f32>(-1586f, -519f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 208f)))), abs(u_input.a.yzw), Struct_1(~vec4<i32>(arg_0, 0i, u_input.a.x, -1i) << ((select(vec4<u32>(68483u, 21646u, 12435u, arg_1.x), vec4<u32>(11073u, 0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)]), false) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 61660u, global0[_wgslsmith_index_u32(arg_1.x, 19u)]), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, global0[_wgslsmith_index_u32(22105u, 19u)]), vec4<u32>(4294967295u, arg_1.x, arg_1.x, 64759u)) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_0));
    let var_1 = Struct_2(~var_0.a | vec4<u32>(abs(3912u), global0[_wgslsmith_index_u32(8418u, 19u)], _wgslsmith_clamp_u32(firstTrailingBit(arg_1.x), firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 19u)], 19u)]), ~73507u), ~global0[_wgslsmith_index_u32(4294967295u, 19u)]), _wgslsmith_f_op_vec2_f32(max(var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(var_0.b, vec2<f32>(var_0.b.x, var_0.b.x), vec2<bool>(true, true))))) * var_0.b))), countOneBits(vec3<i32>(-33828i, 0i, arg_0)) | abs(u_input.a.yxx | vec3<i32>(-28108i, 1i, var_0.c.x)), Struct_1(u_input.a, ~(-_wgslsmith_mod_i32(u_input.b, 54173i))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -187f) + -1786f);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_div_f32(-1000f, var_0.b.x))))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.x)) - -166f));
    let var_3 = all(vec2<bool>(true, any(vec3<bool>(true, true, true)))) & (0u == var_0.a.x);
    return Struct_2(select(firstTrailingBit(~(~var_1.a)), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.a.x, 1u, global0[_wgslsmith_index_u32(arg_1.x, 19u)]), ~vec4<u32>(14942u, arg_1.x, arg_1.x, var_0.a.x))), _wgslsmith_f_op_f32(abs(var_0.b.x)) <= _wgslsmith_f_op_f32(round(var_0.b.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - -2359f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.x)))))), vec3<i32>(1i, -arg_0, 11194i), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false), true)), vec4<bool>(true, true, true, _wgslsmith_mult_i32(~u_input.a.x, u_input.a.x) >= -1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1127f, -1307f, true)), -1011f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-437f)) - -214f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2116f + 1535f) - -1120f)) * _wgslsmith_f_op_f32(ceil(-1000f))));
    var var_2 = func_1(max(_wgslsmith_div_i32(94839i, countOneBits(1i)), 1i), _wgslsmith_mod_vec3_u32(select(vec3<u32>(52485u, global0[_wgslsmith_index_u32(29610u, 19u)], 1298u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32540u, 19u)], 19u)], 19u)], 91113u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), true) << (~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51225u, 19u)], 19u)], 12051u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9611u, 19u)], 19u)], 19u)]) % vec3<u32>(32u)), ~vec3<u32>(35151u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], global0[_wgslsmith_index_u32(1u, 19u)])) & (firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(0u, 19u)], 0u, 41391u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 11164u), vec3<u32>(59238u, 2978u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)])) % vec3<u32>(32u))));
    global2 = array<Struct_3, 15>();
    global0 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(4294967295u, 19u)]), 19u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(784f, 1000f)), _wgslsmith_f_op_f32(max(501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))), var_2.a.yxz);
}

