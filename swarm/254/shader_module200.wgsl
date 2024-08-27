struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(597f, 545f), -253f), Struct_1(vec2<f32>(-477f, -1000f), 1555f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec3<i32>) -> vec3<i32> {
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_0 = ~vec4<u32>(7708u, 59096u, ~u_input.a << (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u), _wgslsmith_add_u32(1u, ~u_input.a)) << (firstLeadingBit(vec4<u32>(~abs(u_input.a), u_input.a, u_input.a, 4294967295u)) % vec4<u32>(32u));
    let var_1 = arg_0;
    global0 = array<Struct_1, 2>();
    return -_wgslsmith_mult_vec3_i32(u_input.c, u_input.b.wyz);
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = ~firstLeadingBit(4294967295u);
    global0 = array<Struct_1, 2>();
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_1))))), 762f, _wgslsmith_f_op_f32(1069f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(781f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1577f)) - 407f)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(299f, var_1) * vec2<f32>(arg_1, 874f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_1, arg_1), vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_mult_vec2_i32(firstTrailingBit(~abs(vec2<i32>(u_input.c.x, arg_0.x))), -countOneBits(select(vec2<i32>(-2147483647i, 28034i), u_input.b.xz, false))));
    return global0[_wgslsmith_index_u32(2199u, 2u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_0.x && all(arg_0);
    return arg_3;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: bool) -> u32 {
    let var_0 = !arg_3;
    let var_1 = true;
    var var_2 = u_input.c;
    var var_3 = vec2<i32>(var_2.x, -28761i);
    let var_4 = func_4(vec3<bool>(var_0, false & arg_3, false), func_3(max(u_input.c, func_2(Struct_2(vec4<f32>(-1841f, arg_1.x, arg_1.x, 663f), Struct_1(vec2<f32>(arg_1.x, arg_1.x), 850f), var_2.zx), max(vec3<i32>(var_3.x, 1i, u_input.d.x), u_input.c), Struct_3(0i), u_input.c)), arg_1.x, 19608u), 19983u, Struct_2(vec4<f32>(arg_1.x, -2192f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.x)) + arg_1.x)), func_3(~u_input.b.yxw | u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b)) + _wgslsmith_f_op_f32(f32(-1f) * -767f)), 4294967295u), vec2<i32>(u_input.b.x, 20252i)));
    return ~(~(~max(~1u, arg_2.x)));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = 44466u;
    global0 = array<Struct_1, 2>();
    var var_1 = ~(~1u);
    let var_2 = ~arg_1.c.x;
    let var_3 = -((_wgslsmith_mod_i32(1i >> (arg_0 % 32u), -arg_1.c.x) | -var_2) | (abs(_wgslsmith_add_i32(arg_1.c.x, -1i)) ^ -1i));
    return Struct_3(~_wgslsmith_dot_vec4_i32(vec4<i32>(-arg_1.c.x, 0i, ~1i, ~(-8717i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -27032i, 1i, arg_1.c.x) ^ vec4<i32>(-1i, 40194i, var_2, -1i), -vec4<i32>(var_2, var_3, -1i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_sub_u32(9703u, _wgslsmith_mod_u32(u_input.a, select(func_1(global0[_wgslsmith_index_u32(73168u, 2u)], vec2<f32>(1575f, 2155f), vec2<u32>(u_input.a, 3944u), false), u_input.a | u_input.a, true))), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, -118f, 1622f, -903f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-593f, 743f, -1027f, -481f) * vec4<f32>(541f, -1077f, -1765f, 1120f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, 311f, 456f, 398f)), vec4<bool>(true, true, true, true)))), Struct_1(vec2<f32>(_wgslsmith_div_f32(-1141f, 253f), _wgslsmith_div_f32(-1437f, 252f)), 1f), ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.b.x), vec2<i32>(u_input.b.x, -33345i), u_input.d))));
    var var_1 = func_5(reverseBits(_wgslsmith_mult_u32(~28904u, ~u_input.a) ^ 65968u), func_4(vec3<bool>(false, true, all(vec3<bool>(true, true, true))), func_3(reverseBits(~u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1327f, -1000f))), u_input.a), 1u, func_4(vec3<bool>(true, true, true), func_4(vec3<bool>(false, false, false), Struct_1(vec2<f32>(837f, 1013f), 417f), u_input.a << (u_input.a % 32u), Struct_2(vec4<f32>(800f, 441f, 290f, -591f), Struct_1(vec2<f32>(684f, 157f), -212f), vec2<i32>(var_0.a, 8490i))).b, u_input.a, Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1031f, -1000f, 139f, -219f))), Struct_1(vec2<f32>(2252f, 1654f), -235f), select(u_input.c.yx, u_input.d, vec2<bool>(true, true))))));
    let var_2 = ~(~56479u) << ((abs(_wgslsmith_clamp_u32(21464u, 0u, 9493u) & 125247u) >> (u_input.a % 32u)) % 32u);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2213f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1454f, 1102f)), _wgslsmith_f_op_f32(round(-919f)), false)), 899f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1546f, 166f)), -1597f, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1469f, -1000f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-730f, 454f), vec2<f32>(564f, -109f), false)))), _wgslsmith_f_op_f32(min(1842f, _wgslsmith_f_op_f32(floor(-1000f))))), ~(-(u_input.c.zx ^ ~u_input.d)));
    var_1 = func_5(var_2, func_4(select(vec3<bool>(1692i == var_1.a, true, true), vec3<bool>(any(vec3<bool>(false, false, true)), false, true), vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(1u, 2u)], ~(~1u), func_4(vec3<bool>(true, true, any(vec3<bool>(true, false, true))), var_3.b, firstTrailingBit(min(var_2, 0u)), func_4(vec3<bool>(false, false, true), Struct_1(vec2<f32>(1478f, var_3.a.x), -435f), ~var_2, Struct_2(vec4<f32>(-612f, -1225f, -1851f, 1519f), var_3.b, u_input.d)))));
    var_3 = func_4(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(u_input.a >> (max(var_2, _wgslsmith_sub_u32(var_2, ~0u)) % 32u), 2u)], _wgslsmith_clamp_u32(var_2, ~firstLeadingBit(~u_input.a), 14696u), func_4(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), func_4(vec3<bool>(all(vec3<bool>(false, true, true)), true, all(vec2<bool>(false, true))), func_4(vec3<bool>(true, true, true), Struct_1(var_3.b.a, var_3.a.x), var_2 << (var_2 % 32u), func_4(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(var_2, 2u)], 4294967295u, Struct_2(var_3.a, Struct_1(var_3.b.a, var_3.b.a.x), vec2<i32>(12440i, 15177i)))).b, 7934u, Struct_2(_wgslsmith_f_op_vec4_f32(max(var_3.a, vec4<f32>(var_3.b.b, var_3.b.a.x, var_3.a.x, 272f))), var_3.b, ~vec2<i32>(u_input.b.x, 54295i))).b, _wgslsmith_div_u32(var_2, 4294967295u), func_4(vec3<bool>(true, true, any(vec4<bool>(true, false, true, false))), func_4(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), func_4(vec3<bool>(true, true, true), Struct_1(var_3.b.a, 573f), 34307u, Struct_2(var_3.a, var_3.b, vec2<i32>(var_0.a, 2509i))).b, ~u_input.a, func_4(vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(var_2, 2u)], var_2, Struct_2(vec4<f32>(-1138f, -440f, var_3.a.x, 340f), var_3.b, vec2<i32>(var_1.a, -2147483647i)))).b, ~_wgslsmith_mult_u32(4294967295u, u_input.a), func_4(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), var_3.b, var_2, Struct_2(vec4<f32>(var_3.b.a.x, -955f, var_3.a.x, 618f), Struct_1(var_3.b.a, 921f), var_3.c)))));
    var var_4 = func_4(!select(vec3<bool>(true, true, any(vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, select(true, false, true), any(vec4<bool>(false, false, true, false)))), func_4(vec3<bool>(all(vec2<bool>(false, false)), true, true), func_3(min(u_input.b.xxx, vec3<i32>(var_1.a, -54868i, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -554f), ~(~var_2)), _wgslsmith_mult_u32(countOneBits(~1u), 35813u << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 0u, 61433u, 61324u), vec4<u32>(18897u, 9341u, u_input.a, u_input.a)) % 32u)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(var_3.b.b * var_3.a.x), _wgslsmith_f_op_f32(f32(-1f) * -231f), var_3.a.x, _wgslsmith_f_op_f32(min(858f, var_3.b.b))), func_4(vec3<bool>(true, true, true), func_4(vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(63570u, 2u)], 0u, Struct_2(var_3.a, Struct_1(var_3.b.a, 844f), vec2<i32>(10268i, u_input.c.x))).b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.a, var_2, u_input.a, u_input.a)), Struct_2(vec4<f32>(var_3.a.x, 1758f, 602f, 1863f), Struct_1(vec2<f32>(var_3.b.b, var_3.b.b), var_3.b.b), u_input.b.yz)).b, vec2<i32>(~var_3.c.x, -var_1.a))).b, _wgslsmith_mult_u32(max(var_2, var_2) ^ u_input.a, ~_wgslsmith_div_u32(_wgslsmith_add_u32(var_2, 60722u), 4294967295u | var_2)), func_4(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), all(vec3<bool>(false, true, true))), global0[_wgslsmith_index_u32(~69163u, 2u)], 11231u, Struct_2(vec4<f32>(-697f, _wgslsmith_f_op_f32(var_3.a.x - var_3.b.a.x), 1504f, var_3.b.b), func_4(vec3<bool>(true, true, true), var_3.b, 26314u, func_4(vec3<bool>(true, false, true), Struct_1(var_3.b.a, var_3.a.x), 4294967295u, Struct_2(var_3.a, Struct_1(vec2<f32>(-848f, var_3.a.x), 546f), var_3.c))).b, var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_2, u_input.a), vec4<u32>(49378u, 9392u, 1u, 28459u), vec4<u32>(u_input.a, var_2, 31019u, 0u)), abs(vec4<u32>(1u, 27307u, 1u, 1u)))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(15834u, 88766u, u_input.a, 4294967295u), vec4<u32>(var_2, var_2, 0u, u_input.a))), ~(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), -_wgslsmith_add_vec2_i32(firstLeadingBit(abs(var_4.c)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(var_4.c, var_3.c), abs(u_input.d), u_input.b.zw)), _wgslsmith_f_op_vec4_f32(-func_4(vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.a.x, var_3.b.a.x)), 1f), _wgslsmith_clamp_u32(51264u, reverseBits(u_input.a), 1u), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_4.a.x, var_3.b.a.x, var_4.a.x, 375f))), func_3(u_input.b.yzw, var_3.b.a.x, 119684u), vec2<i32>(-2147483647i, 34306i))).a));
}

