struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-364f, 1044f, 845f, 624f, -1744f, -606f, -1212f, 743f, 1000f, 114f, 1000f, -248f, -1562f, -1000f, 1000f, 686f, 595f, 1459f, 1333f, 1000f, 809f, 2162f, -680f, -519f, 534f, -315f, 1000f, -622f, -607f, -879f);

var<private> global1: array<f32, 1> = array<f32, 1>(-1838f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_1;
    var var_1 = arg_2;
    var var_2 = vec4<bool>(false, var_0.b, select(51659u, ~4294967295u, true) <= 1u, any(select(var_0.a, vec3<bool>(all(arg_0.a), false, var_0.b), var_0.b)));
    let var_3 = arg_0;
    let var_4 = true;
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(max(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -32650i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), reverseBits(max(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(2147483647i, 33951i, u_input.a)))), -abs(vec3<i32>(u_input.a, -34878i, u_input.a)) & vec3<i32>(23473i, countOneBits(u_input.a), u_input.a | -42955i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, u_input.a >> (0u % 32u), u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(min(u_input.a, u_input.a), _wgslsmith_sub_i32(-1i, u_input.a), u_input.a), max(vec3<i32>(u_input.a, 11916i, u_input.a), reverseBits(vec3<i32>(9002i, u_input.a, 16798i)))), ~(-vec3<i32>(2147483647i, u_input.a, -3864i))), vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 23890i, 48267i, -2147483647i), vec4<i32>(u_input.a, u_input.a, -11045i, u_input.a)) << (firstLeadingBit(1u) % 32u), u_input.a, _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.a), abs(vec3<i32>(u_input.a, u_input.a, u_input.a))))));
}

fn func_2() -> vec3<i32> {
    var var_0 = ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))));
    var var_1 = _wgslsmith_add_i32(u_input.a, u_input.a);
    global1 = array<f32, 1>();
    return (countOneBits(~func_3(Struct_1(vec3<bool>(false, false, true), false, vec4<f32>(global1[_wgslsmith_index_u32(7340u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], -1217f, global1[_wgslsmith_index_u32(1u, 1u)]), global1[_wgslsmith_index_u32(78478u, 1u)]), Struct_1(vec3<bool>(true, false, false), false, vec4<f32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(0u, 1u)]), -1762f), Struct_1(vec3<bool>(true, true, false), true, vec4<f32>(global1[_wgslsmith_index_u32(39149u, 1u)], global0[_wgslsmith_index_u32(121753u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(1u, 1u)]), global1[_wgslsmith_index_u32(82316u, 1u)]))) & _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(select(0i, u_input.a, false), _wgslsmith_sub_i32(0i, 2147483647i), select(0i, u_input.a, false)))) << (~(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(48650u, 9978u, 34074u)), vec3<u32>(1375u, 38239u, 4294967295u), ~vec3<u32>(81841u, 4294967295u, 32905u)) & vec3<u32>(reverseBits(88432u), 1u, _wgslsmith_div_u32(72073u, 17881u))) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_1(select(vec3<bool>(true, !(u_input.a != arg_0.x), true), vec3<bool>(_wgslsmith_mod_i32(1i, 65486i) == arg_2, true, true), false), !all(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(414f, global1[_wgslsmith_index_u32(2297u, 1u)], -1561f, global1[_wgslsmith_index_u32(arg_1, 1u)])), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(6391u, 1u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_1, 30u)], 1000f), -692f, -344f), vec4<bool>(true, true, true, true))) * vec4<f32>(-1572f, -1217f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23418u, 30u)]), 932f), _wgslsmith_f_op_f32(912f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1, 30u)] + -515f)))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~4294967295u, 30u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(69262u, arg_1) << (arg_1 % 32u), 1u)] + -613f)));
    let var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.a.x, !all(var_0.a), true), select(vec4<bool>(true, !var_0.a.x, var_0.b, !var_0.a.x), !(!vec4<bool>(var_0.b, var_0.a.x, var_0.a.x, false)), select(!vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.b), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))), select(vec4<bool>(!all(vec3<bool>(true, true, false)), true, var_0.b, !var_0.a.x | true), vec4<bool>(!any(vec4<bool>(var_0.a.x, var_0.b, var_0.b, var_0.a.x)), false, (false && var_0.a.x) & true, var_0.a.x), true), vec4<bool>(false, !(-arg_0.x == (0i | u_input.a)), true, true));
    var_0 = Struct_1(select(select(vec3<bool>(any(vec2<bool>(var_0.a.x, var_1.x)), true, true), var_1.xwy, true), vec3<bool>(12494u != (arg_1 ^ 57403u), false || !var_1.x, false), true), var_0.b, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, var_0.d)) + global1[_wgslsmith_index_u32(4294967295u >> (arg_1 % 32u), 1u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-542f - var_0.d)), true)), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(0u, 1u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-270f)) - _wgslsmith_f_op_f32(f32(-1f) * -1322f)), -1397f), _wgslsmith_f_op_f32(-777f + var_0.d));
    let var_2 = Struct_1(var_1.zyx, var_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.c)) + vec4<f32>(var_0.d, global1[_wgslsmith_index_u32(arg_1, 1u)], 1967f, 102f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(arg_1, 1u)], -983f, var_0.d)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) * _wgslsmith_f_op_vec4_f32(min(var_0.c, vec4<f32>(1919f, var_0.d, 377f, 1073f)))))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(countOneBits(reverseBits(vec4<u32>(29228u, 5840u, 1u, 54453u))), vec4<u32>(0u, arg_1, ~48111u, 13938u)), 30u)]);
    let var_3 = var_2;
    return var_1;
}

fn func_1() -> vec2<i32> {
    var var_0 = !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32243u, 1u)])), !select(false, false, false))) == global1[_wgslsmith_index_u32(22164u, 1u)]);
    global0 = array<f32, 30>();
    let var_1 = func_4(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-62969i, 1i, u_input.a), -(~vec3<i32>(u_input.a, -4037i, 0i)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, false), global1[_wgslsmith_index_u32(4294967295u, 1u)] <= global0[_wgslsmith_index_u32(111360u, 30u)])), ~func_2()), 10388u, -u_input.a & u_input.a);
    global1 = array<f32, 1>();
    var_0 = any(!select(vec4<bool>(!var_1.x, var_1.x, var_1.x, var_1.x), func_4(vec3<i32>(u_input.a, u_input.a, 1i), firstLeadingBit(17999u), u_input.a), var_1));
    return firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(2147483647i, u_input.a)), ~(func_3(Struct_1(var_1.ywz, var_1.x, vec4<f32>(-336f, global1[_wgslsmith_index_u32(4294967295u, 1u)], -192f, global1[_wgslsmith_index_u32(52479u, 1u)]), 797f), Struct_1(var_1.xwy, true, vec4<f32>(1290f, global1[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(1u, 30u)], -1152f), global1[_wgslsmith_index_u32(14693u, 1u)]), Struct_1(var_1.wxz, var_1.x, vec4<f32>(global0[_wgslsmith_index_u32(4381u, 30u)], 1032f, global0[_wgslsmith_index_u32(34819u, 30u)], global0[_wgslsmith_index_u32(43998u, 30u)]), global0[_wgslsmith_index_u32(41871u, 30u)])).yx >> (~vec2<u32>(82503u, 63182u) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, -13687i), func_2().x), -(~vec2<i32>(u_input.a, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec3<bool>(true, !(1i == u_input.a), true), vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)), firstTrailingBit(16366u >> (1u % 32u)) == 7011u, vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(min(~1u, 47207u), 30u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1189f + -169f), _wgslsmith_div_f32(-1000f, -1132f), true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-634f + global0[_wgslsmith_index_u32(4294967295u, 30u)])))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(36543u, 30u)]), _wgslsmith_div_f32(1108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 1u)] - 406f)))), global0[_wgslsmith_index_u32(~(1u << (select(~1u, 1u, true) % 32u)), 30u)]);
    global1 = array<f32, 1>();
    let var_1 = vec3<f32>(global1[_wgslsmith_index_u32(44886u, 1u)], var_0.d, -2725f);
    let var_2 = 4294967295u;
    let var_3 = firstTrailingBit(func_1());
    global0 = array<f32, 30>();
    var var_4 = vec4<u32>(_wgslsmith_clamp_u32(4294967295u, ~(~(~var_2)), ~38079u | _wgslsmith_add_u32(var_2, _wgslsmith_mult_u32(var_2, 1u))), ~96205u, reverseBits(~select(var_2, var_2, var_0.a.x)) & ~(~var_2), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.x, 0u << ((var_2 >> (49603u % 32u)) % 32u), ~(var_4.x >> (4294967295u % 32u)), _wgslsmith_dot_vec3_u32(var_4.yzx, vec3<u32>(var_4.x, var_4.x, 23698u))), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.x, 6216u, 31040u, 11066u), max(vec4<u32>(1u, 18347u, 1u, 34057u), vec4<u32>(var_4.x, var_2, var_4.x, 3235u))))), -1i, _wgslsmith_dot_vec2_u32(abs(~(~vec2<u32>(0u, 37841u))), var_4.ww << (~(~vec2<u32>(26305u, var_2)) % vec2<u32>(32u))));
}

