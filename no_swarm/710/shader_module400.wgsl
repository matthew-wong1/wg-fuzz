struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: i32 = 0i;

var<private> global2: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(32944i, i32(-2147483648), -29824i, -18225i), vec4<i32>(59593i, 5268i, -20170i, 1i), vec4<i32>(-29399i, i32(-2147483648), i32(-2147483648), -33402i), vec4<i32>(16324i, 0i, -39i, 21200i), vec4<i32>(-16762i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(-31395i, i32(-2147483648), 91861i, 0i), vec4<i32>(1i, -1i, 8071i, 0i), vec4<i32>(-11053i, -18578i, 2147483647i, 40276i), vec4<i32>(13299i, -85906i, -40107i, 0i), vec4<i32>(1i, 0i, 0i, 36860i), vec4<i32>(3972i, -37187i, 1i, -23335i), vec4<i32>(1i, -5132i, 1i, i32(-2147483648)), vec4<i32>(1i, 1i, -1i, 60178i), vec4<i32>(-45701i, -1i, 341i, -23783i), vec4<i32>(-1i, -1i, -20093i, -11128i), vec4<i32>(-21721i, -1i, -4810i, i32(-2147483648)), vec4<i32>(-1i, -1i, 18440i, 2147483647i), vec4<i32>(2147483647i, 1i, 47179i, 0i), vec4<i32>(-11394i, -13640i, 55993i, -23670i), vec4<i32>(40307i, 1i, 4774i, 7758i), vec4<i32>(81528i, -1i, i32(-2147483648), -1i), vec4<i32>(4097i, -1i, -9991i, 0i), vec4<i32>(-1i, 31960i, i32(-2147483648), 2147483647i));

var<private> global3: array<Struct_3, 17>;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_3(global4.b);
    global2 = array<vec4<i32>, 23>();
    global4 = Struct_2(u_input.b | 0u, arg_1);
    return select(vec3<bool>(true, true, true), select(vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), false, arg_1 == -842f), vec3<bool>(false, true, all(vec4<bool>(false, false, false, true))), false), select(false, false, -1i > _wgslsmith_sub_i32(-arg_0.x, firstLeadingBit(-8448i))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(vec3<bool>(select(u_input.b > _wgslsmith_add_u32(47857u, global4.a), false, 38128i < (u_input.a ^ u_input.a)), true, !any(vec2<bool>(false, true))), all(!(!func_3(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), global4.b))));
    var_0 = Struct_1(!(!var_0.a), !(!(firstTrailingBit(18153i) != -26503i)));
    let var_1 = ((~_wgslsmith_clamp_vec3_u32(vec3<u32>(global4.a, 0u, 54786u), vec3<u32>(u_input.b, 4294967295u, global4.a), vec3<u32>(4294967295u, 8232u, global4.a)) >> (countOneBits(abs(vec3<u32>(10121u, 52177u, 4294967295u))) % vec3<u32>(32u))) | vec3<u32>(~max(u_input.b, u_input.b), 4294967295u, u_input.b)) | (~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global4.a, global4.a) ^ vec3<u32>(1977u, 4294967295u, global4.a), _wgslsmith_div_vec3_u32(vec3<u32>(global4.a, 0u, 4294967295u), vec3<u32>(1u, 1u, global4.a))) << (vec3<u32>(~u_input.b, 1u, 8960u) % vec3<u32>(32u)));
    var var_2 = u_input.a;
    global2 = array<vec4<i32>, 23>();
    return global3[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(4294967295u), global4.a), 17u)];
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = Struct_2(u_input.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.b))))));
    let var_2 = arg_3;
    global3 = array<Struct_3, 17>();
    global0 = array<f32, 6>();
    return Struct_2(~min(global4.a, max(var_1.a, 4294967295u)), 1124f);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = u_input.b;
    var var_1 = true;
    var var_2 = global4.b;
    let var_3 = 974f;
    global4 = func_4(func_2(), u_input.a, ~2147483647i, Struct_3(-1064f));
    return func_4(Struct_3(var_3), min(u_input.a, min(u_input.a, abs(-8284i))) & 0i, ~14347i, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(_wgslsmith_mod_u32(_wgslsmith_div_u32(global4.a & ~global4.a, global4.a), 0u), global3[_wgslsmith_index_u32(1u, 17u)]);
    var var_0 = func_2();
    global0 = array<f32, 6>();
    global4 = func_1(select(~0u, _wgslsmith_sub_u32(firstLeadingBit(u_input.b), firstTrailingBit(global4.a)) & ((global4.a | u_input.b) ^ global4.a), true & (firstTrailingBit(54706i) <= ~0i)), Struct_3(_wgslsmith_f_op_f32(max(var_0.a, global4.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-func_4(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 1u), 17u)], ~u_input.a, -u_input.a, func_2()).b), 1414f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1039f * _wgslsmith_f_op_f32(max(651f, 1049f)))), global4.b), select(vec2<u32>(u_input.b, _wgslsmith_mult_u32(0u, global4.a)), countOneBits(~vec2<u32>(global4.a, 1u)), true) ^ (select(vec2<u32>(4294967295u, global4.a) | vec2<u32>(16772u, global4.a), select(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 0u), false), u_input.b == u_input.b) & vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 14207u), vec3<u32>(u_input.b, 1u, u_input.b)))), 22826i);
}

