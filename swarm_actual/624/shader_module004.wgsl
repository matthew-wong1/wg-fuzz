struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: array<u32, 11> = array<u32, 11>(1u, 0u, 4294967295u, 1u, 1u, 0u, 1u, 4294967295u, 81841u, 13130u, 5226u);

var<private> global2: array<f32, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    global1 = array<u32, 11>();
    return global2[_wgslsmith_index_u32(min(max(_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(10229u, 11u)] >> (arg_0.x % 32u)) << (3512u % 32u), 11u)]), abs(u_input.e)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, global1[_wgslsmith_index_u32(113980u, 11u)], 1u), ~43503u, 182u, _wgslsmith_sub_u32(arg_0.x, 25236u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.d, arg_0.x), vec4<u32>(u_input.a.x, u_input.e, 899u, 1u))), ~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, arg_1.b.x, 32759u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.e, arg_1.b.x, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 0u, 1u)))), 11u)]), 20u)];
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_mod_i32(reverseBits(_wgslsmith_div_i32(firstTrailingBit(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26989u, 11u)], 11u)], 11u)], 11u)], 15u)]), -1i) ^ global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 15u)]), u_input.c);
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x ^ ~(~u_input.e & 41488u), 15u)];
    global0 = array<i32, 15>();
    global1 = array<u32, 11>();
    var var_2 = Struct_2(false);
    return Struct_4(true, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-793f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 20u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 20u)], 1176f))))), ~select(u_input.a << (u_input.a % vec3<u32>(32u)), abs(vec3<u32>(global1[_wgslsmith_index_u32(61750u, 11u)], u_input.e, u_input.a.x)), !vec3<bool>(true, var_2.a, false))), Struct_2(select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25205u, 11u)] >> (global1[_wgslsmith_index_u32(4294967295u, 11u)] % 32u), 15u)], reverseBits(u_input.b.x), true) > (~global0[_wgslsmith_index_u32(30737u, 15u)] >> (global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 85406u), 11u)] % 32u))), _wgslsmith_f_op_f32(func_3(~vec2<u32>(1u, 1u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(909f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 20u)]) + vec2<f32>(global2[_wgslsmith_index_u32(1u, 20u)], 572f))), u_input.a))), Struct_2(any(vec2<bool>(var_2.a, var_2.a))));
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    global1 = array<u32, 11>();
    return Struct_4(all(!select(vec3<bool>(arg_0.c.a, true, arg_0.e.a), vec3<bool>(false, arg_0.e.a, arg_0.e.a), vec3<bool>(true, false, arg_0.c.a))) & false, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 20u)], arg_0.b.a.x), vec2<f32>(-577f, -2197f), true)))))), select(u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.e), vec3<u32>(global1[_wgslsmith_index_u32(u_input.e, 11u)], 21063u, 17959u)), true)), func_2().c, _wgslsmith_div_f32(1162f, 812f), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d * -1288f) - 1035f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.x) * _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(57733u, 20u)])))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<bool>) -> Struct_5 {
    global2 = array<f32, 20>();
    global1 = array<u32, 11>();
    var var_0 = func_4(func_2());
    global2 = array<f32, 20>();
    let var_1 = func_2();
    return Struct_5(var_0.d, 0u, func_4(Struct_4(false || all(vec3<bool>(true, true, var_0.e.a)), func_2().b, Struct_2(all(vec3<bool>(true, false, true))), var_0.d, func_2().c)).b, Struct_3(1u, var_1.b, abs(-u_input.c & -4913i), Struct_1(_wgslsmith_f_op_vec2_f32(var_0.b.a - var_1.b.a), ~u_input.a)));
}

fn func_5(arg_0: Struct_5) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = abs(func_1(all(vec4<bool>(func_2().e.a, all(vec3<bool>(true, var_0.e.a, true)), false, true)), ~4294967295u, select(vec4<bool>(true, !var_0.c.a, true, var_0.b.b.x != arg_0.c.b.x), select(!vec4<bool>(var_0.c.a, true, true, var_0.e.a), !vec4<bool>(var_0.e.a, var_0.e.a, var_0.a, var_0.c.a), select(vec4<bool>(var_0.a, var_0.a, false, var_0.e.a), vec4<bool>(false, false, false, false), vec4<bool>(false, var_0.a, false, var_0.c.a))), select(select(vec4<bool>(var_0.a, false, var_0.e.a, true), vec4<bool>(var_0.c.a, var_0.e.a, var_0.a, var_0.e.a), var_0.c.a), !vec4<bool>(var_0.c.a, var_0.e.a, true, var_0.c.a), all(vec4<bool>(var_0.e.a, var_0.a, var_0.a, true))))).b);
    var var_2 = Struct_4((global0[_wgslsmith_index_u32(74512u, 15u)] ^ -(~arg_0.d.c)) > (i32(-1i) * -2147483647i), var_0.b, func_4(func_2()).e, -1000f, var_0.c);
    let var_3 = ~(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(33893u, 11u)], 0u), vec2<u32>(0u, global1[_wgslsmith_index_u32(arg_0.c.b.x, 11u)])), vec2<u32>(4294967295u, 32217u)));
    var_1 = var_0.b.b.x;
    return Struct_2(func_2().c.a);
}

fn func_6(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_4) -> Struct_4 {
    var var_0 = ~(-20398i);
    global2 = array<f32, 20>();
    let var_1 = func_1(select(true, func_2().e.a, true) & true, abs(countOneBits(~abs(u_input.a.x))), vec4<bool>(true, all(vec3<bool>(true, false, !arg_1)), all(!(!vec2<bool>(false, arg_2.c.a))), !(global2[_wgslsmith_index_u32(u_input.d, 20u)] != 497f) && arg_2.c.a));
    var var_2 = ~u_input.c;
    var var_3 = !select(vec2<bool>(arg_2.b.a.x != func_2().b.a.x, !(!arg_1)), select(select(!vec2<bool>(arg_1, true), !vec2<bool>(arg_1, false), vec2<bool>(arg_2.e.a, false)), select(select(vec2<bool>(true, false), vec2<bool>(arg_1, true), vec2<bool>(false, arg_1)), select(vec2<bool>(arg_1, true), vec2<bool>(true, true), vec2<bool>(false, false)), false), vec2<bool>(true, true)), all(!(!vec4<bool>(true, arg_2.c.a, false, arg_1))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(any(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true)));
    var var_1 = false;
    var var_2 = func_6(select(reverseBits(max(_wgslsmith_mult_vec3_i32(u_input.b.xyw, vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(58280u, 11u)], 15u)], global0[_wgslsmith_index_u32(29449u, 15u)])), u_input.b.zww)), firstLeadingBit(abs(vec3<i32>(u_input.c, 14761i, 66917i))) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, 0i), firstLeadingBit(u_input.b.xxz)), var_0.a), false, Struct_4(var_0.a, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.d, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)])))), u_input.a), func_5(func_1(true, ~13327u, vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -527f) - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.e, 20u)] - 400f)) - 940f), Struct_2(true || !var_0.a)));
    var var_3 = var_2.d;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~min(19430u, 1u), 20u)]))));
    let var_5 = global2[_wgslsmith_index_u32(~4294967295u, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(11220u, vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_2.d)), global2[_wgslsmith_index_u32(1u, 20u)]), vec3<i32>(_wgslsmith_sub_i32(u_input.c, 1i >> (~var_2.b.b.x % 32u)), min(-17324i, firstTrailingBit(abs(72197i))), u_input.b.x), u_input.c, global2[_wgslsmith_index_u32(~60110u, 20u)]);
}

