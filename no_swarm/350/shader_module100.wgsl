struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10>;

var<private> global1: bool = true;

var<private> global2: array<i32, 28>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

var<private> global4: array<bool, 17>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(506f))))));
    var var_2 = vec3<bool>(all(vec3<bool>(_wgslsmith_f_op_f32(2657f + var_0) >= -1279f, global4[_wgslsmith_index_u32(5318u >> (select(u_input.a.x, 100217u, global3.x) % 32u), 17u)], select(select(true, global3.x, global4[_wgslsmith_index_u32(50652u, 17u)]), true, false))), false, !all(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 17u)], false, global3.x), select(vec3<bool>(global4[_wgslsmith_index_u32(58095u, 17u)], true, false), vec3<bool>(global3.x, true, global3.x), false), global4[_wgslsmith_index_u32(arg_1, 17u)] || global3.x)));
    let var_3 = Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], 2147483647i, 11887i, ~(2072i ^ global2[_wgslsmith_index_u32(u_input.c, 28u)])), min(min(-vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, global2[_wgslsmith_index_u32(0u, 28u)]), vec4<i32>(global2[_wgslsmith_index_u32(127358u, 28u)], -2147483647i, -6246i, 0i), vec4<i32>(-77063i, u_input.b, -41148i, u_input.b))), vec4<i32>(i32(-1i) * -10298i, -1i, reverseBits(global2[_wgslsmith_index_u32(u_input.c, 28u)]), min(u_input.b, -1i)))), _wgslsmith_f_op_f32(select(898f, _wgslsmith_f_op_f32(-355f * _wgslsmith_f_op_f32(f32(-1f) * -291f)), true)), reverseBits(~max(u_input.c, 1u)), Struct_1(select((global2[_wgslsmith_index_u32(arg_1, 28u)] & u_input.b) ^ 31295i, _wgslsmith_mod_i32(~u_input.b, -2147483647i), any(select(vec4<bool>(true, var_2.x, var_2.x, global3.x), vec4<bool>(global3.x, var_2.x, var_2.x, true), true)))));
    var var_4 = Struct_4(var_3.c & 4294967295u, select(select(vec4<bool>(true, global3.x, true, true), vec4<bool>(!global3.x, true, global2[_wgslsmith_index_u32(var_3.c, 28u)] > -2147483647i, true || global3.x), select(select(vec4<bool>(true, global3.x, global3.x, true), vec4<bool>(global4[_wgslsmith_index_u32(var_3.c, 17u)], var_2.x, true, var_2.x), vec4<bool>(false, true, global4[_wgslsmith_index_u32(24878u, 17u)], false)), !vec4<bool>(false, false, false, var_2.x), arg_1 < 4294967295u)), select(!select(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 17u)], global3.x, true, global3.x), vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 17u)], global4[_wgslsmith_index_u32(0u, 17u)], false), vec4<bool>(false, true, global4[_wgslsmith_index_u32(u_input.c, 17u)], global4[_wgslsmith_index_u32(var_3.c, 17u)])), vec4<bool>(!var_2.x, false, global4[_wgslsmith_index_u32(arg_1, 17u)], var_3.c <= 4294967295u), vec4<bool>(true, true, true, true || global4[_wgslsmith_index_u32(1u, 17u)])), select(vec4<bool>(u_input.b > 0i, !global4[_wgslsmith_index_u32(arg_1, 17u)], !global3.x, true), select(select(vec4<bool>(false, global4[_wgslsmith_index_u32(arg_1, 17u)], false, var_2.x), vec4<bool>(true, var_2.x, false, global4[_wgslsmith_index_u32(var_3.c, 17u)]), var_2.x), !vec4<bool>(var_2.x, false, global4[_wgslsmith_index_u32(4294967295u, 17u)], global4[_wgslsmith_index_u32(var_3.c, 17u)]), all(vec4<bool>(true, true, false, false))), select(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 17u)], true, false), vec4<bool>(global4[_wgslsmith_index_u32(var_3.c, 17u)], global4[_wgslsmith_index_u32(4294967295u, 17u)], true, global4[_wgslsmith_index_u32(81326u, 17u)]), vec4<bool>(var_2.x, true, var_2.x, false)))), Struct_2(vec4<i32>(-2147483647i, ~var_3.a.x << (76413u % 32u), -13804i, _wgslsmith_div_i32(2147483647i >> (arg_1 % 32u), max(u_input.b, -1i))), abs(~(-17728i))));
    return ~var_4.a;
}

fn func_2() -> Struct_5 {
    global1 = !global3.x | global3.x;
    let var_0 = Struct_3(firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, countOneBits(-1i), ~(-2147483647i)) << (~select(vec4<u32>(u_input.c, u_input.a.x, 0u, 45507u), vec4<u32>(1u, 45171u, 60238u, 0u), true) % vec4<u32>(32u))), 1000f, 0u, Struct_1(_wgslsmith_add_i32(-reverseBits(57671i), _wgslsmith_mod_i32(2147483647i, 1i))));
    global1 = !(var_0.b < var_0.b) | (!global4[_wgslsmith_index_u32(~u_input.a.x << (func_3(1144f, var_0.c) % 32u), 17u)] && false);
    let var_1 = _wgslsmith_mult_vec4_u32(abs(~global0[_wgslsmith_index_u32(var_0.c, 10u)]), ~(_wgslsmith_sub_vec4_u32(select(global0[_wgslsmith_index_u32(1u, 10u)], u_input.d, vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 17u)], global4[_wgslsmith_index_u32(var_0.c, 17u)], global4[_wgslsmith_index_u32(u_input.c, 17u)])), u_input.d) << (~global0[_wgslsmith_index_u32(~26521u, 10u)] % vec4<u32>(32u))));
    var var_2 = -u_input.b >= 2147483647i;
    return Struct_5(0u, _wgslsmith_div_i32(_wgslsmith_add_i32(countOneBits(var_0.a.x), 1i) << (select(4294967295u, _wgslsmith_clamp_u32(u_input.a.x, u_input.d.x, 1u), !global3.x) % 32u), 1i));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = global3.x;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(615f, -545f, 900f) * vec3<f32>(-572f, -2315f, 1017f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-468f, 870f, -1091f) * vec3<f32>(615f, -682f, 1227f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-159f, 756f, 769f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, 148f, 2195f))))));
    let var_3 = func_2();
    global1 = select(all(!select(select(vec3<bool>(false, false, false), vec3<bool>(var_1, false, true), true), select(vec3<bool>(var_1, global3.x, false), vec3<bool>(var_1, true, false), true), var_1)), false, !all(vec3<bool>(all(vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.d.x, 17u)])), !var_1, global2[_wgslsmith_index_u32(26948u, 28u)] == u_input.b)));
    return max(_wgslsmith_clamp_u32(4294967295u & ~arg_0.x, 0u, 0u), var_3.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_3 {
    global4 = array<bool, 17>();
    global4 = array<bool, 17>();
    var var_0 = ~(~firstLeadingBit(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), arg_2.yz))));
    var var_1 = vec2<f32>(-126f, _wgslsmith_f_op_f32(-arg_3.b));
    var var_2 = arg_3;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    var var_0 = -575f;
    let var_1 = func_4(Struct_1(-8478i), Struct_4(~u_input.d.x, vec4<bool>(any(global3.zy), global3.x, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, u_input.a.x), 17u)] & !global4[_wgslsmith_index_u32(u_input.d.x, 17u)], global4[_wgslsmith_index_u32(func_1(vec4<u32>(u_input.a.x, 63124u, 0u, u_input.a.x)), 17u)]), Struct_2(~(-vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(0u, 28u)], 0i, -21839i)), reverseBits(global2[_wgslsmith_index_u32(u_input.a.x, 28u)] & u_input.b))), vec3<u32>(~select(u_input.c, u_input.a.x, global3.x), 1u, 1u), Struct_3(min(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -10452i, global2[_wgslsmith_index_u32(u_input.c, 28u)], u_input.b), select(vec4<i32>(2147483647i, u_input.b, 0i, u_input.b), vec4<i32>(-1i, -22060i, u_input.b, u_input.b), vec4<bool>(false, global3.x, true, false))), min(min(vec4<i32>(-2147483647i, u_input.b, -13019i, 0i), vec4<i32>(u_input.b, u_input.b, u_input.b, global2[_wgslsmith_index_u32(1u, 28u)])), -vec4<i32>(1i, global2[_wgslsmith_index_u32(4294967295u, 28u)], u_input.b, 0i))), -1000f, ~u_input.d.x, Struct_1(~(-u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~select(u_input.a.wwz, vec3<u32>(var_1.c, var_1.c, u_input.c), global4[_wgslsmith_index_u32(u_input.a.x, 17u)]))));
}

