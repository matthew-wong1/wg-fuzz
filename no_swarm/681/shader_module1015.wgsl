struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<i32>(4833i, 8258i, -1i, 0i), 157f, false), Struct_2(vec4<i32>(30709i, -9666i, 1823i, -15367i), 123f, false), Struct_2(vec4<i32>(i32(-2147483648), 0i, -23974i, 1i), -1000f, false), Struct_2(vec4<i32>(-32312i, -62123i, 0i, -40533i), -388f, false), Struct_2(vec4<i32>(-1538i, 0i, 37850i, 1i), -701f, false), Struct_2(vec4<i32>(72838i, 1i, -7197i, -1i), -304f, false), Struct_2(vec4<i32>(-1i, 52565i, 1i, 13485i), 752f, true), Struct_2(vec4<i32>(0i, -7874i, 13600i, 65838i), -1077f, false), Struct_2(vec4<i32>(0i, 0i, i32(-2147483648), -15871i), -1495f, true), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), 8859i, 2147483647i), -1000f, true), Struct_2(vec4<i32>(i32(-2147483648), 0i, -24907i, -24354i), 244f, false), Struct_2(vec4<i32>(-9085i, 28373i, 1i, -30149i), 951f, false), Struct_2(vec4<i32>(i32(-2147483648), 21044i, 30947i, 1i), 951f, true), Struct_2(vec4<i32>(2147483647i, 21151i, 3236i, 1i), -307f, true), Struct_2(vec4<i32>(-20696i, 36052i, -1i, 2147483647i), -219f, false), Struct_2(vec4<i32>(70305i, 32673i, 2147483647i, -6518i), 1940f, true), Struct_2(vec4<i32>(i32(-2147483648), 15135i, 55927i, 1i), 676f, true), Struct_2(vec4<i32>(1i, 23289i, 0i, 1i), 1918f, true));

var<private> global1: array<f32, 20>;

var<private> global2: array<vec3<u32>, 16>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_sub_u32(abs(~abs(_wgslsmith_clamp_u32(4294967295u, 20761u, 1u))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13714u, 4294967295u, 4294967295u), ~vec4<u32>(0u, 57804u, 4294967295u, 1u))));
    var var_1 = arg_1.x | -13214i;
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1208f * arg_0) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 20u)])))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1198f - _wgslsmith_f_op_f32(-arg_0))), (false & any(vec4<bool>(true, true, true, true))) | true, true);
    return -867f;
}

fn func_3() -> i32 {
    var var_0 = false;
    global1 = array<f32, 20>();
    let var_1 = abs(vec3<u32>(14171u, max(~7818u >> (_wgslsmith_mod_u32(1u, 1u) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(79058u, 32534u, 1u), global2[_wgslsmith_index_u32(42719u, 16u)]), vec3<u32>(8297u, 80896u, 0u))), abs(~68406u) & ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8639u, 4294967295u, 90162u), vec4<u32>(79692u, 78979u, 1u, 62638u))));
    var var_2 = global0[_wgslsmith_index_u32(var_1.x, 18u)];
    var var_3 = ~_wgslsmith_mult_vec3_i32(var_2.a.yyw, countOneBits(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, -2147483647i, var_2.a.x)), vec3<i32>(-2108i, -12147i, -18211i) | vec3<i32>(-9007i, u_input.a, u_input.a))));
    return var_3.x;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> bool {
    let var_0 = firstTrailingBit(_wgslsmith_sub_i32(select(u_input.a, min(-1i, u_input.a), true) & func_3(), _wgslsmith_add_i32(-57568i, -firstTrailingBit(u_input.a))));
    let var_1 = Struct_1(9989i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1044f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1825f * 521f) + global1[_wgslsmith_index_u32(29861u, 20u)]))));
    var var_3 = Struct_5(vec3<u32>(arg_1.x, arg_1.x, firstTrailingBit(arg_1.x >> ((arg_1.x ^ 132610u) % 32u))), Struct_3(global0[_wgslsmith_index_u32(arg_1.x, 18u)], _wgslsmith_div_i32(2147483647i, reverseBits(~2147483647i)), true, !arg_0), arg_0, vec4<i32>(var_0, ~min(firstLeadingBit(var_1.a), var_1.a), func_3(), abs(func_3())));
    var var_4 = _wgslsmith_f_op_f32(var_3.b.a.b - _wgslsmith_f_op_f32(step(-353f, 1306f)));
    return false == !var_3.c;
}

fn func_4(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: u32, arg_3: vec3<i32>) -> StorageBuffer {
    global1 = array<f32, 20>();
    global0 = array<Struct_2, 18>();
    var var_0 = any(!vec3<bool>(_wgslsmith_f_op_f32(-arg_0.b.a.b) > -1000f, false, func_3() >= _wgslsmith_div_i32(2147483647i, arg_0.b.a.a.x)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a.b + -1127f) * _wgslsmith_f_op_f32(745f * arg_0.b.a.b))), arg_0.b.a.b, global1[_wgslsmith_index_u32(countOneBits(arg_0.a.x), 20u)]);
    var_0 = !all(!(!select(vec2<bool>(arg_1.x, false), vec2<bool>(false, arg_0.c), arg_1)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_0.b.a.b, arg_0.b.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 438f, var_1.x)))))), _wgslsmith_div_i32(abs(arg_3.x), firstLeadingBit(select(_wgslsmith_clamp_i32(u_input.a, 1i, arg_3.x), firstTrailingBit(arg_3.x), all(vec3<bool>(arg_1.x, arg_0.c, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) | min(vec2<i32>(u_input.a, u_input.a), -vec2<i32>(-1i, u_input.a)), select(vec2<i32>(1i, 1i), ~(~vec2<i32>(49228i, 1i)), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1720f, global1[_wgslsmith_index_u32(26225u, 20u)], global1[_wgslsmith_index_u32(27112u, 20u)])), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(68627u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], -2560f, global1[_wgslsmith_index_u32(4294967295u, 20u)]))))))));
    let var_2 = firstTrailingBit(1i) >> (1u % 32u);
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -904f), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-301f * var_1.x) + _wgslsmith_f_op_f32(func_1(1505f, vec3<i32>(11236i, -1i, var_2)))) - _wgslsmith_f_op_f32(round(-626f))) - 1738f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(1041f + var_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(38429u, 20u)])) * _wgslsmith_f_op_f32(floor(var_1.x)))))));
    let var_3 = 46542u;
    let var_4 = _wgslsmith_f_op_vec3_f32(var_1.zwz + _wgslsmith_f_op_vec3_f32(-var_1.xzw));
    var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 903f));
    let x = u_input.a;
    s_output = func_4(Struct_5(max(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 6388u, var_3), global2[_wgslsmith_index_u32(var_3, 16u)]), global2[_wgslsmith_index_u32(27830u, 16u)]), ~(global2[_wgslsmith_index_u32(var_3, 16u)] | global2[_wgslsmith_index_u32(var_3, 16u)])), Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3, min(1u, 0u)), 18u)], -2147483647i, true, !all(vec2<bool>(false, false))), (~var_2 >= (var_0.a >> (var_3 % 32u))) != !func_2(true, vec4<u32>(0u, var_3, var_3, var_3)), -vec4<i32>(var_2, u_input.a & -16287i, 20312i, -2147483647i)), vec2<bool>(any(vec4<bool>(all(vec2<bool>(true, true)), true, true, true)), !(!(-447f > var_4.x))), 9406u, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a, -1i), vec3<i32>(var_0.a, var_0.a, var_2) ^ vec3<i32>(var_2, 1i, u_input.a), vec3<i32>(var_0.a, var_0.a, 0i) & vec3<i32>(62652i, -1i, 1i)) >> (vec3<u32>(39344u, var_3, abs(var_3)) % vec3<u32>(32u)), max(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -6187i, var_0.a), vec3<i32>(-11165i, 1i, u_input.a)), abs(~vec3<i32>(2147483647i, var_0.a, var_0.a)))));
}

