struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

var<private> global1: array<f32, 31> = array<f32, 31>(1333f, -558f, 527f, 1111f, 148f, 1672f, 303f, 1348f, -943f, 440f, -665f, 425f, -262f, 1000f, -311f, 2124f, 1456f, -765f, 1218f, -1040f, -2000f, -1916f, 922f, 1000f, 309f, 845f, 298f, 1278f, -309f, -1050f, 1697f);

var<private> global2: array<u32, 30> = array<u32, 30>(31220u, 0u, 21336u, 15873u, 111683u, 1u, 7954u, 4294967295u, 0u, 1u, 9375u, 43503u, 18824u, 36754u, 0u, 38845u, 11469u, 26920u, 4294967295u, 4294967295u, 4294967295u, 16889u, 4664u, 40971u, 1u, 1u, 30744u, 4294967295u, 1u, 9237u);

var<private> global3: array<vec2<u32>, 17>;

var<private> global4: array<vec3<u32>, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: vec4<u32>) -> bool {
    global2 = array<u32, 30>();
    var var_0 = arg_1;
    let var_1 = select(var_0.c.a.zy, arg_1.c.a.yx, arg_1.c.a.xx);
    var_0 = arg_1;
    let var_2 = -(vec3<i32>(_wgslsmith_add_i32(26523i, u_input.a.x) & abs(4343i), -min(-42034i, u_input.a.x), abs(-var_0.d.a)) ^ (vec3<i32>(arg_1.d.a, _wgslsmith_sub_i32(-10928i, arg_1.d.a), -2147483647i) ^ vec3<i32>(1i, _wgslsmith_mult_i32(var_0.d.a, -15774i), _wgslsmith_add_i32(-19366i, u_input.a.x))));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(vec2<u32>(48102u, 16822u) >> (arg_3.zy % vec2<u32>(32u))), abs(u_input.c.yy)), max(~arg_3.zy, _wgslsmith_div_vec2_u32(vec2<u32>(arg_3.x, 45543u), ~vec2<u32>(4294967295u, 1u)))) < min(~arg_3.x, ~(~_wgslsmith_sub_u32(4294967295u, arg_0)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> u32 {
    let var_0 = vec4<bool>(all(!vec4<bool>(func_3(127318u, Struct_5(arg_0, arg_0, Struct_1(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(4294967295u, 28u)]), arg_1, vec4<u32>(u_input.b, global2[_wgslsmith_index_u32(4294967295u, 30u)], 136973u, 44326u)), true, any(vec2<bool>(true, true)), true)), any(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)))), true, -u_input.a.x <= _wgslsmith_mod_i32(~_wgslsmith_mult_i32(2147483647i, u_input.a.x), u_input.a.x));
    var var_1 = true;
    global3 = array<vec2<u32>, 17>();
    var var_2 = Struct_4(vec2<i32>(-2147483647i, -(i32(-1i) * -41102i) >> (select(4294967295u, max(global2[_wgslsmith_index_u32(u_input.b, 30u)], 4964u), var_0.x) % 32u)));
    var var_3 = Struct_1(vec3<bool>(var_0.x, true == !(!var_0.x), !var_0.x));
    return _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(u_input.d, 17u)], u_input.c.xz)), 30u)], select(_wgslsmith_clamp_u32(8648u, u_input.b, u_input.d), ~u_input.b, all(vec4<bool>(var_0.x, false, var_0.x, var_3.a.x)))), 30u)], u_input.b);
}

fn func_1() -> vec2<u32> {
    var var_0 = u_input.a.x;
    let var_1 = ~(~_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(4527u, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]), 53008u));
    global4 = array<vec3<u32>, 14>();
    var_0 = -1i;
    let var_2 = vec3<f32>(global1[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(~var_1, ~global2[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(4294967295u, 31u)], vec2<f32>(252f, global1[_wgslsmith_index_u32(u_input.c.x, 31u)])), 30u)]), global2[_wgslsmith_index_u32(22283u, 30u)]), 31u)], _wgslsmith_f_op_f32(493f - 1309f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -704f), global1[_wgslsmith_index_u32(func_2(-253f, vec2<f32>(-1734f, -1117f)), 31u)]))))));
    return u_input.c.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~func_1()));
    let var_1 = global0[_wgslsmith_index_u32(u_input.c.x << (1u % 32u), 28u)];
    var_0 = _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, global2[_wgslsmith_index_u32(4294967295u, 30u)])), vec2<u32>(~1u, 4294967295u));
    global4 = array<vec3<u32>, 14>();
    let var_2 = Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, all(vec2<bool>(true, false)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)), vec3<bool>(true, var_1.a >= u_input.a.x, false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 575f < global1[_wgslsmith_index_u32(var_0.x, 31u)])));
    global1 = array<f32, 31>();
    var var_3 = global0[_wgslsmith_index_u32(u_input.c.x, 28u)];
    var_0 = vec2<u32>(0u, u_input.d << (~(~43396u) % 32u));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)], -512f, 768f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(460f, -166f, global1[_wgslsmith_index_u32(u_input.c.x, 31u)], 1464f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 31u)], -1533f, global1[_wgslsmith_index_u32(1u, 31u)], -852f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-126f, 1090f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 30u)], 31u)], 601f) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(50426u, 31u)], global1[_wgslsmith_index_u32(27024u, 31u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 31u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-680f, 1000f, 464f, global1[_wgslsmith_index_u32(69413u, 31u)]), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], 184f, global1[_wgslsmith_index_u32(u_input.d, 31u)], 176f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1263f, global1[_wgslsmith_index_u32(1u, 31u)], true))) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.d, 31u)])), 201f, _wgslsmith_f_op_f32(f32(-1f) * -621f), global1[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(78525u, u_input.d), 31u)] - 1102f), vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d, 31u)], global1[_wgslsmith_index_u32(var_0.x, 31u)]), 113f)), 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.yw, vec4<u32>(_wgslsmith_mod_u32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<f32>(443f, 347f)), ~var_0.x), countOneBits(abs(0u)) | global2[_wgslsmith_index_u32(~17229u, 30u)], 1u, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -736f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * global1[_wgslsmith_index_u32(1u, 31u)]))), vec2<u32>(var_0.x, 44480u));
}

