struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(1i, -1i, 10655i, 15686i, 2147483647i, -1i, i32(-2147483648), i32(-2147483648), 2147483647i, -1i, 2147483647i, -1i, -13538i, 18260i, 22854i, -29592i, -64886i, 2147483647i, -1i, 2147483647i, -365i, 29427i, -56580i, 1i, 0i, 2147483647i);

var<private> global1: i32 = -45462i;

var<private> global2: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(-853f, Struct_2(false), 11355i), Struct_5(-1570f, Struct_2(false), 1i), Struct_5(438f, Struct_2(false), i32(-2147483648)), Struct_5(-157f, Struct_2(false), 671i), Struct_5(1617f, Struct_2(true), i32(-2147483648)), Struct_5(-224f, Struct_2(true), 19903i), Struct_5(1389f, Struct_2(false), -1i), Struct_5(-358f, Struct_2(true), -76563i), Struct_5(-1592f, Struct_2(false), 0i), Struct_5(1155f, Struct_2(false), -24996i), Struct_5(860f, Struct_2(true), -20285i), Struct_5(-144f, Struct_2(false), i32(-2147483648)), Struct_5(244f, Struct_2(false), 0i), Struct_5(-1171f, Struct_2(false), i32(-2147483648)), Struct_5(-1051f, Struct_2(false), 0i), Struct_5(839f, Struct_2(true), 35596i), Struct_5(-169f, Struct_2(false), 30999i), Struct_5(1320f, Struct_2(false), -1i), Struct_5(104f, Struct_2(true), -1i), Struct_5(1906f, Struct_2(false), -39355i), Struct_5(181f, Struct_2(false), 0i), Struct_5(1228f, Struct_2(true), -1i), Struct_5(-2461f, Struct_2(false), 2147483647i));

var<private> global3: array<u32, 8>;

var<private> global4: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-1000f + 256f)))))));
    var var_1 = ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(62117u, 1u, global3[_wgslsmith_index_u32(u_input.c, 8u)], global3[_wgslsmith_index_u32(u_input.a.x, 8u)])), ~(~vec4<u32>(u_input.a.x, 15727u, u_input.c, 69927u)));
    var var_2 = Struct_4(Struct_1(-25527i, _wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(14616u, 8u)], 8u)]) >= countOneBits(1u)), firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-u_input.b.zxx, ~u_input.b.xzx), select(vec3<i32>(-1i, arg_1, u_input.b.x), u_input.b.zyy, vec3<bool>(global4.b.b, false, arg_0)) & ~vec3<i32>(u_input.b.x, 2147483647i, -14231i))));
    let var_3 = ~var_2.b;
    var var_4 = Struct_4(Struct_1(30806i, global4.b.b), max(~countOneBits(~u_input.b.x), 1i));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_3, -1290f, -825f), arg_2) * _wgslsmith_f_op_vec4_f32(round(arg_2)))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_5) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, 1000f, 897f) + _wgslsmith_div_vec3_f32(global4.a, vec3<f32>(global4.a.x, arg_2.a, arg_0.x)))), _wgslsmith_f_op_vec3_f32(global4.a + arg_0.wxz), !(!(!vec3<bool>(global4.b.b, arg_2.b.a, false))))), Struct_1(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(global3[_wgslsmith_index_u32(4901u, 8u)], arg_1.x, 7309u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.x, 8u)], 8u)])), 26u)], _wgslsmith_div_i32(global0[_wgslsmith_index_u32(4724u, 26u)], u_input.b.x) << ((u_input.a.x | 23467u) % 32u), 27099i), true));
    global3 = array<u32, 8>();
    var var_1 = select(~firstTrailingBit(max(vec4<u32>(u_input.c, 1u, arg_1.x, 1u), vec4<u32>(1u, 28485u, 0u, arg_1.x))), ~(~(~vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 54324u))), select(vec4<bool>(arg_2.b.a, true, global4.b.b, false), vec4<bool>(false || var_0.b.b, !arg_2.b.a, global4.b.b, global4.b.b), true)) | ~abs(~abs(vec4<u32>(arg_1.x, 0u, 41358u, 50848u)));
    var var_2 = _wgslsmith_div_vec4_i32(~vec4<i32>(firstLeadingBit(-12506i), u_input.b.x | (739i << (arg_1.x % 32u)), firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b.zwz, vec3<i32>(global4.b.a, 2147483647i, arg_2.c))), u_input.b.x), -vec4<i32>(~(2147483647i << (arg_1.x % 32u)), countOneBits(~global4.b.a), ~(~(-40486i)), min(-52279i, ~(-50811i))));
    var var_3 = arg_0;
    return min(global4.b.a, u_input.b.x);
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 23u)];
    global0 = array<i32, 26>();
    let var_1 = Struct_5(global4.a.x, var_0.b, u_input.b.x);
    var var_2 = Struct_1(abs(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(false, -1i, vec4<f32>(global4.a.x, global4.a.x, var_0.a, 1344f), 694f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(479f, global4.a.x, global4.a.x, global4.a.x))), ~(~vec3<u32>(global3[_wgslsmith_index_u32(u_input.c, 8u)], 4294967295u, u_input.c)), var_1)), true);
    global0 = array<i32, 26>();
    return Struct_1(-global4.b.a, arg_0);
}

fn func_5(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, 7131i, 1i), vec3<i32>(u_input.b.x, -42351i, -2147483647i)) & vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -22536i, global4.b.a), u_input.b.yzw) & select(vec3<i32>(global0[_wgslsmith_index_u32(3645u, 26u)], arg_0.b, u_input.b.x), u_input.b.wzw, vec3<bool>(false, arg_0.a.b, false))), ~func_2(global4.b.b).a), arg_0.a.b);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.a.x), 23u)];
    let var_2 = Struct_4(func_2(arg_0.a.b), reverseBits(1i));
    let var_3 = Struct_1(_wgslsmith_add_i32(abs(~39113i), u_input.b.x), var_1.b.a);
    let var_4 = true;
    return vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(165f, _wgslsmith_f_op_f32(761f + -1830f)))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -284f))), all(select(vec2<bool>(all(vec4<bool>(true, var_0.b, false, false)), all(vec4<bool>(false, true, true, var_4))), !(!vec2<bool>(var_0.b, true)), false)), true, true);
}

fn func_1() -> Struct_4 {
    let var_0 = func_5(Struct_4(func_2(any(!vec4<bool>(true, global4.b.b, false, true))), global4.b.a));
    global2 = array<Struct_5, 23>();
    let var_1 = ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.b.x, -25027i), global0[_wgslsmith_index_u32(~0u, 26u)], 1i), ~min(vec3<i32>(global4.b.a, 8499i, u_input.b.x), u_input.b.zzx)));
    let var_2 = Struct_2(var_0.x);
    global2 = array<Struct_5, 23>();
    return Struct_4(global4.b, global4.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -40439i;
    var var_0 = Struct_1(firstLeadingBit(~(2147483647i & u_input.b.x)) >> ((27335u >> (((u_input.c << (u_input.c % 32u)) << (firstLeadingBit(1u) % 32u)) % 32u)) % 32u), global4.b.b);
    var var_1 = func_1();
    var var_2 = vec3<bool>(any(!vec3<bool>(false, false | global4.b.b, 20227i == var_1.a.a)), !var_1.a.b, !func_5(func_1()).x);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, global4.a.x), global4.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(593f - 1607f) + _wgslsmith_f_op_f32(round(global4.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) * -1776f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1217f - global4.a.x) * _wgslsmith_div_f32(global4.a.x, 2347f))))));
    global2 = array<Struct_5, 23>();
    let var_4 = 32983u;
    let x = u_input.a;
    s_output = StorageBuffer(global4.a.x);
}

