struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<bool>(false, true, true, true), 45913i, vec4<u32>(1u, 26477u, 0u, 4294967295u)), Struct_1(vec4<bool>(false, false, true, true), -66233i, vec4<u32>(13448u, 20677u, 66952u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, false), -16053i, vec4<u32>(4294967295u, 21971u, 31798u, 34529u)), Struct_1(vec4<bool>(true, false, false, true), -1i, vec4<u32>(55339u, 4294967295u, 12398u, 9266u)), Struct_1(vec4<bool>(false, false, true, false), 13611i, vec4<u32>(18476u, 14331u, 4294967295u, 0u)), Struct_1(vec4<bool>(false, false, true, false), i32(-2147483648), vec4<u32>(3586u, 24063u, 48630u, 0u)), Struct_1(vec4<bool>(false, true, true, true), 0i, vec4<u32>(4294967295u, 0u, 41354u, 1u)), Struct_1(vec4<bool>(true, true, true, true), 6873i, vec4<u32>(60476u, 4294967295u, 6509u, 21608u)), Struct_1(vec4<bool>(false, true, false, true), -49612i, vec4<u32>(0u, 8759u, 22032u, 1u)), Struct_1(vec4<bool>(true, false, true, false), -66256i, vec4<u32>(18294u, 0u, 15570u, 346u)), Struct_1(vec4<bool>(true, false, true, true), 3776i, vec4<u32>(0u, 96285u, 4294967295u, 1u)), Struct_1(vec4<bool>(true, false, false, true), -21977i, vec4<u32>(0u, 100993u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, true), -58222i, vec4<u32>(1u, 37317u, 1079u, 0u)), Struct_1(vec4<bool>(true, false, true, true), 22737i, vec4<u32>(34871u, 10190u, 4294967295u, 32081u)), Struct_1(vec4<bool>(true, true, true, true), -53177i, vec4<u32>(4294967295u, 1u, 4345u, 8937u)), Struct_1(vec4<bool>(false, true, true, false), 2147483647i, vec4<u32>(4294967295u, 27222u, 102292u, 1u)), Struct_1(vec4<bool>(false, true, false, false), -23407i, vec4<u32>(51280u, 0u, 1u, 28724u)), Struct_1(vec4<bool>(true, false, false, false), 2147483647i, vec4<u32>(0u, 76121u, 0u, 4294967295u)), Struct_1(vec4<bool>(true, false, true, true), 5670i, vec4<u32>(104739u, 44544u, 0u, 7993u)), Struct_1(vec4<bool>(false, true, true, false), 1i, vec4<u32>(1u, 3203u, 0u, 1u)), Struct_1(vec4<bool>(false, false, true, true), 1i, vec4<u32>(43847u, 0u, 0u, 1u)), Struct_1(vec4<bool>(false, false, true, true), 0i, vec4<u32>(1u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, true), 1i, vec4<u32>(0u, 123714u, 1u, 4294967295u)), Struct_1(vec4<bool>(false, true, true, false), 2147483647i, vec4<u32>(56177u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, false), 1i, vec4<u32>(11322u, 32965u, 16633u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, true), 49493i, vec4<u32>(0u, 1u, 1u, 0u)));

var<private> global1: array<i32, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3) -> bool {
    let var_0 = countOneBits(abs(1u));
    let var_1 = Struct_5(select(select(!vec3<bool>(arg_0.b, arg_0.b, arg_2.a.x), arg_2.a, !arg_2.a.x), arg_2.a, !(!vec3<bool>(arg_0.a, true, false))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~var_0, ~49319u, reverseBits(var_0)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0, 4294967295u, 10975u), vec3<u32>(var_0, 39028u, var_0))), vec3<u32>(~0u >> (_wgslsmith_sub_u32(u_input.a, 63523u) % 32u), u_input.a, u_input.a)));
    let var_2 = Struct_4(!select(!(!vec4<bool>(arg_2.a.x, false, false, var_1.a.x)), vec4<bool>(all(vec3<bool>(true, var_1.a.x, arg_0.b)), true, var_1.a.x, arg_2.a.x), vec4<bool>(false, arg_0.b, arg_0.b, true)));
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    return false;
}

fn func_2() -> Struct_5 {
    let var_0 = ~0i;
    var var_1 = Struct_2(!(!func_3(Struct_2(false, false, -341f, vec2<i32>(1i, -1i)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(603f, 1252f, -408f), vec3<f32>(-1033f, -987f, 907f), true)), Struct_3(vec3<bool>(false, true, false), 13212i))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(205f, _wgslsmith_div_f32(-1441f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false))), select(-_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<i32>(var_0, var_0)), select(vec2<i32>(15524i, var_0), vec2<i32>(var_0, global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<bool>(true, false))), vec2<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 1u)], 2147483647i), -min(-19965i, 2230i)), false));
    let var_2 = var_0;
    let var_3 = ~_wgslsmith_div_vec4_u32(reverseBits(select(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 48205u, 5095u), select(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.b, false, false, var_1.a), vec4<bool>(true, var_1.a, var_1.a, var_1.a)))), vec4<u32>(countOneBits(0u), 39036u, u_input.a ^ u_input.a, 41179u ^ u_input.a) << ((_wgslsmith_clamp_vec4_u32(vec4<u32>(54500u, 0u, u_input.a, 1531u), vec4<u32>(u_input.a, u_input.a, 1u, 105802u), vec4<u32>(2521u, 33860u, 4294967295u, u_input.a)) | vec4<u32>(u_input.a, u_input.a, 17967u, 4294967295u)) % vec4<u32>(32u)));
    let var_4 = true;
    return Struct_5(vec3<bool>(true, true, _wgslsmith_f_op_f32(sign(758f)) == 415f), select(var_3.ywz, firstLeadingBit(_wgslsmith_div_vec3_u32(var_3.zwy, vec3<u32>(var_3.x, u_input.a, var_3.x))), vec3<bool>(var_4, true, var_4)));
}

fn func_1(arg_0: i32) -> u32 {
    global1 = array<i32, 1>();
    let var_0 = func_2();
    var var_1 = func_2().b;
    var var_2 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(~((var_1.x << (0u % 32u)) & ~var_0.b.x), ~var_1.x)), 26u)];
    let var_3 = var_0;
    return 4294967295u;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    var var_0 = !arg_1.x;
    let var_1 = max(18619i, -1i) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~55885u, min(arg_2.c.x, u_input.a), u_input.a), vec3<u32>(_wgslsmith_mod_u32(32223u, u_input.a), _wgslsmith_div_u32(4294967295u, u_input.a), arg_2.c.x)), ~0u) % 32u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f + _wgslsmith_f_op_f32(select(-592f, -584f, arg_1.x)))))));
    let var_3 = Struct_4(select(select(vec4<bool>(arg_3.a.x, false, u_input.a <= 1u, false), vec4<bool>(false, arg_3.a.x, !arg_3.a.x, !arg_3.a.x), vec4<bool>(arg_1.x, arg_3.a.x, arg_1.x && arg_1.x, arg_0.x > 54112i)), vec4<bool>(true, arg_3.a.x, arg_2.a.x, true), vec4<bool>(func_2().a.x && (var_2 != var_2), all(vec4<bool>(true, false, arg_1.x, arg_3.a.x)) || (u_input.a >= u_input.a), true, true)));
    let var_4 = Struct_2(false, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-249f)))), ~(-vec2<i32>(-arg_0.x, countOneBits(var_1))));
    return ~firstLeadingBit(32620u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~vec4<i32>(abs(-9217i), global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(global1[_wgslsmith_index_u32(43536u, 1u)]), u_input.a), 1u)], -firstLeadingBit(2147483647i)), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), Struct_1(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true)), vec4<bool>(true, true, true, true), true), -(global1[_wgslsmith_index_u32(u_input.a, 1u)] | ~global1[_wgslsmith_index_u32(503u, 1u)]), vec4<u32>(~(~1u), 1u, 69239u, 10557u)), Struct_4(!vec4<bool>(any(vec4<bool>(false, false, true, false)), true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f)));
    let var_2 = ~(~vec3<i32>(min(1i | global1[_wgslsmith_index_u32(u_input.a, 1u)], -global1[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 22175u, 4294967295u)), 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)] & -1i), _wgslsmith_sub_i32(_wgslsmith_add_i32(-43549i, 55094i), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)]))));
    global0 = array<Struct_1, 26>();
    var var_3 = Struct_2(true, !func_3(Struct_2(true, true, _wgslsmith_f_op_f32(687f - 963f), var_2.zy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1700f, -1111f, -924f)), Struct_3(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), 1i)), -466f, vec2<i32>(-var_2.x, firstTrailingBit(global1[_wgslsmith_index_u32(~u_input.a, 1u)])) ^ (vec2<i32>(global1[_wgslsmith_index_u32(7209u, 1u)], global1[_wgslsmith_index_u32(u_input.a, 1u)] ^ 2147483647i) | var_2.yx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1480f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c + var_3.c) * var_3.c) + _wgslsmith_f_op_f32(floor(-366f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-868f)))))));
}

