struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<i32, 22>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    global1 = array<i32, 22>();
    global1 = array<i32, 22>();
    let var_0 = global0.yyz;
    global0 = vec4<bool>(any(!select(!vec4<bool>(global0.x, global0.x, var_0.x, false), vec4<bool>(true, var_0.x, global0.x, var_0.x), var_0.x)), false, any(!select(global0.zzx, vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, false, global0.x))) == var_0.x, true);
    global1 = array<i32, 22>();
    return firstTrailingBit(firstTrailingBit(-_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, 17362i, global1[_wgslsmith_index_u32(4294967295u, 22u)], -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 1i, 2147483647i, arg_0), vec4<i32>(-48934i, u_input.b.x, 11250i, global1[_wgslsmith_index_u32(u_input.c, 22u)])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: u32) -> bool {
    let var_0 = ~_wgslsmith_add_u32(arg_2, 71891u);
    var var_1 = Struct_1(-_wgslsmith_mod_vec4_i32(-arg_1, vec4<i32>(1i, abs(8581i), ~17184i, arg_1.x)), u_input.e | (~vec3<i32>(arg_1.x, -2147483647i, global1[_wgslsmith_index_u32(1u, 22u)]) | -vec3<i32>(arg_1.x, 0i, -35848i)));
    let var_2 = Struct_1(firstLeadingBit(func_3(-2147483647i)) >> (vec4<u32>(~var_0, 8664u, 4294967295u, ~1u >> (firstLeadingBit(arg_3) % 32u)) % vec4<u32>(32u)), u_input.e);
    let var_3 = var_2;
    global1 = array<i32, 22>();
    return all(global0.ww);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = all(global0.yx);
    let var_1 = -1000f;
    global0 = vec4<bool>(!select(any(global0.xw), global0.x, func_2(!vec3<bool>(arg_1, false, arg_1), vec4<i32>(42073i, global1[_wgslsmith_index_u32(1u, 22u)], -35585i, arg_2.b.x), 1u, u_input.c)), true, arg_0, !(arg_0 | !arg_1));
    let var_2 = 76265u;
    let var_3 = _wgslsmith_div_u32(0u, var_2);
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = arg_2.x;
    var var_1 = Struct_1(abs(-(firstTrailingBit(vec4<i32>(-29107i, arg_0.a.x, -2147483647i, 2147483647i)) & ~vec4<i32>(0i, 0i, 0i, global1[_wgslsmith_index_u32(u_input.a.x, 22u)]))), reverseBits(-arg_0.a.yzy));
    var_0 = _wgslsmith_f_op_f32(arg_2.x + -252f);
    return func_1(true, ~1u <= _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c, u_input.a.x), 71705u), ~(~u_input.a.x)), arg_1, func_1(!(global0.x != (arg_2.x > arg_2.x)), any(select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, true, false, false))), func_1(!global0.x, true || all(vec2<bool>(global0.x, false)), Struct_1(func_3(1i), vec3<i32>(18625i, arg_0.a.x, arg_0.b.x)), vec4<i32>(max(-1i, 33248i), min(-8013i, -1i), 1i, abs(-1i))), arg_0.a).a);
}

fn func_5(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = select(_wgslsmith_mod_i32(arg_0.a.x, arg_0.b.x) >> (17575u % 32u), ~((1i & -arg_0.a.x) | 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f + 100f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-903f)) - _wgslsmith_f_op_f32(select(-231f, -302f, false)))) >= _wgslsmith_f_op_f32(-1551f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2371f + 1027f))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_add_u32(firstLeadingBit(~(~u_input.a.x)) ^ u_input.c, u_input.c);
    var_1 = func_4(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 2147483647i << (~u_input.c % 32u), var_1.b.x | _wgslsmith_mult_i32(arg_0.b.x, -32247i), select(2147483647i & var_1.b.x, i32(-1i) * -6925i, true)), arg_0.b), Struct_1(var_1.a, abs(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.b.yz, u_input.b), ~var_1.b.x, -1i))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f)), 1f, -790f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(291f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1523f, 1140f, -745f, -378f)))));
    var_2 = _wgslsmith_sub_u32(~(~1u), _wgslsmith_clamp_u32(select(u_input.a.x, u_input.a.x, global0.x), u_input.c, _wgslsmith_mult_u32(u_input.a.x << (select(u_input.c, u_input.c, global0.x) % 32u), ~u_input.c << (reverseBits(u_input.c) % 32u))));
    return vec4<i32>(_wgslsmith_sub_i32(-26695i, arg_0.a.x), func_4(arg_0, func_1(-154f > _wgslsmith_f_op_f32(trunc(1389f)), true || all(vec4<bool>(global0.x, true, global0.x, global0.x)), func_1(select(true, true, global0.x), !global0.x, arg_0, var_1.a), arg_0.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(sign(474f)), _wgslsmith_f_op_f32(f32(-1f) * -1550f), -1273f, 1829f)))).a.x, ~func_3(global1[_wgslsmith_index_u32(u_input.a.x, 22u)] << (u_input.a.x % 32u)).x ^ global1[_wgslsmith_index_u32(1u, 22u)], ~var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(func_4(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 16471i, 1i, global1[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec4<i32>(global1[_wgslsmith_index_u32(45u, 22u)], global1[_wgslsmith_index_u32(u_input.c, 22u)], 0i, 2147483647i)), u_input.e), func_1(any(global0.wxz), false, Struct_1(vec4<i32>(u_input.e.x, global1[_wgslsmith_index_u32(0u, 22u)], 0i, 0i), u_input.e), ~vec4<i32>(2147483647i, 2147483647i, -1i, u_input.e.x)), vec4<f32>(-1677f, 1124f, _wgslsmith_f_op_f32(f32(-1f) * -599f), 232f))), _wgslsmith_mod_vec3_i32(~(-vec3<i32>(-5597i, 1083i, u_input.b.x)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.c, 22u)], global1[_wgslsmith_index_u32(22526u, 22u)]), vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 3540i)), _wgslsmith_sub_vec3_i32(u_input.e, vec3<i32>(u_input.b.x, u_input.d, global1[_wgslsmith_index_u32(41686u, 22u)]))), func_1(u_input.a.x > 4294967295u, any(vec4<bool>(global0.x, global0.x, false, global0.x)), func_1(true, global0.x, Struct_1(vec4<i32>(-2147483647i, 0i, 1i, -8180i), u_input.e), vec4<i32>(u_input.e.x, u_input.b.x, 35025i, 16147i)), func_5(Struct_1(vec4<i32>(-65713i, global1[_wgslsmith_index_u32(47371u, 22u)], u_input.b.x, 0i), u_input.e))).b)));
    var var_1 = Struct_1(firstTrailingBit(-func_5(Struct_1(var_0.a, vec3<i32>(var_0.b.x, 2147483647i, u_input.e.x)))), abs(-u_input.e));
    let var_2 = reverseBits(vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.c, 1u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 34033u, 23367u), vec3<u32>(u_input.a.x, 4294967295u, u_input.c)))));
    let var_3 = Struct_1(~(-vec4<i32>(_wgslsmith_mult_i32(var_1.a.x, var_0.b.x), 2147483647i ^ global1[_wgslsmith_index_u32(1u, 22u)], var_1.a.x, -16995i)), var_1.a.xxx);
    let var_4 = -1350f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_2.x, 24064u, 0u), vec4<u32>(u_input.c, u_input.c, u_input.a.x, 1u), vec4<u32>(u_input.c, var_2.x, 19660u, 4724u)), vec4<u32>(64314u, u_input.c, u_input.a.x, 1u) ^ vec4<u32>(var_2.x, 52508u, 4294967295u, u_input.a.x))), 1u, -234f, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_4)), 815f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(ceil(626f))), var_4))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4, -652f, false))), _wgslsmith_f_op_f32(var_4 * _wgslsmith_f_op_f32(f32(-1f) * -261f)), 529f))));
}

