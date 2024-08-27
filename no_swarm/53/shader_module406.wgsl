struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(-1000f, Struct_3(4294967295u, vec2<i32>(i32(-2147483648), -1i), 1u), 19247u), Struct_4(-308f, Struct_3(0u, vec2<i32>(-1i, -29400i), 4294967295u), 27553u), Struct_4(-149f, Struct_3(1u, vec2<i32>(1i, 0i), 13140u), 6419u), Struct_4(668f, Struct_3(1u, vec2<i32>(-1i, 1i), 44427u), 1u), Struct_4(-276f, Struct_3(4294967295u, vec2<i32>(i32(-2147483648), -56469i), 45776u), 77847u), Struct_4(-2126f, Struct_3(4294967295u, vec2<i32>(5117i, 4570i), 4294967295u), 24802u), Struct_4(1840f, Struct_3(6390u, vec2<i32>(2147483647i, -25849i), 0u), 21068u), Struct_4(-217f, Struct_3(2804u, vec2<i32>(-1i, -13252i), 54492u), 8252u), Struct_4(-1753f, Struct_3(53030u, vec2<i32>(2147483647i, -34916i), 0u), 9860u), Struct_4(-1620f, Struct_3(1u, vec2<i32>(8088i, 2529i), 0u), 1u), Struct_4(-1737f, Struct_3(42480u, vec2<i32>(0i, 35102i), 4294967295u), 0u), Struct_4(1062f, Struct_3(54064u, vec2<i32>(19238i, 0i), 0u), 64172u), Struct_4(153f, Struct_3(4294967295u, vec2<i32>(0i, 0i), 38336u), 26264u), Struct_4(-1150f, Struct_3(7086u, vec2<i32>(0i, -1i), 0u), 2589u), Struct_4(1414f, Struct_3(49119u, vec2<i32>(i32(-2147483648), 1i), 0u), 26981u), Struct_4(1000f, Struct_3(4294967295u, vec2<i32>(-1815i, 0i), 4294967295u), 0u), Struct_4(-710f, Struct_3(1u, vec2<i32>(2147483647i, 1i), 1u), 16489u), Struct_4(-410f, Struct_3(72656u, vec2<i32>(2147483647i, 1i), 4294967295u), 29944u), Struct_4(132f, Struct_3(2514u, vec2<i32>(-13397i, -8012i), 4294967295u), 1u));

var<private> global1: f32;

var<private> global2: array<u32, 2> = array<u32, 2>(1u, 1u);

var<private> global3: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>) -> u32 {
    var var_0 = ~104424u;
    var var_1 = 48758u;
    let var_2 = vec4<bool>(false, global3.x, any(global3.yz), arg_1.x && true);
    var var_3 = vec2<i32>(arg_0.b.x, select(~(1i & ~u_input.c.x), 12624i, false));
    var_0 = 4294967295u;
    return global2[_wgslsmith_index_u32(101008u, 2u)];
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_3(abs(global2[_wgslsmith_index_u32(countOneBits(u_input.a), 2u)]), vec2<i32>(_wgslsmith_sub_i32(1i, i32(-1i) * -u_input.c.x), 19435i), 180u);
    return !select(!(!select(global3.yx, vec2<bool>(true, global3.x), global3.yx)), select(select(select(vec2<bool>(true, global3.x), global3.yy, global3.yx), global3.yx, global3.x), !select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x), global3.x), _wgslsmith_sub_i32(0i, var_0.b.x) == -1i), select(select(select(vec2<bool>(true, global3.x), vec2<bool>(true, global3.x), false), global3.yy, global3.x), vec2<bool>(18759u <= u_input.b.x, true), false));
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = vec4<f32>(872f, -1180f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -201f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1184f)), _wgslsmith_f_op_f32(f32(-1f) * -341f))), _wgslsmith_f_op_f32(step(1947f, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(875f + 156f), _wgslsmith_f_op_f32(sign(745f))), true)))));
    let var_1 = Struct_5(Struct_1(-22329i, func_2(Struct_3(min(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)]), u_input.d.xx, _wgslsmith_sub_u32(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(79474u, 2u)], 2u)])), !(!vec3<bool>(global3.x, global3.x, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), var_0.x, any(global3.zz))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.yy), var_0.ww, all(vec3<bool>(true, global3.x, arg_0)) && (global3.x && arg_0))), func_3()), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-53223i), ~14424i, -10058i), firstTrailingBit(min(vec3<i32>(2147483647i, 0i, u_input.c.x), u_input.d.xyy)), ~vec3<i32>(u_input.d.x, -5666i, u_input.d.x)), u_input.d.zyy));
    return Struct_4(2145f, Struct_3(0u, ~var_1.b.zy, 0u), _wgslsmith_clamp_u32(~(~var_1.a.b), ~(~(~0u)), firstTrailingBit(~4294967295u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4) -> f32 {
    var var_0 = func_1(all(vec4<bool>(all(global3.zz), arg_0.x, !(!global3.x), true))).b;
    global3 = arg_0.xxx;
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_f_op_f32(max(-531f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-918f + -1778f)))))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f), arg_1.a) * -120f)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a - arg_1.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-2164f, _wgslsmith_f_op_f32(1346f + _wgslsmith_f_op_f32(abs(-1066f))), _wgslsmith_f_op_f32(step(-629f, _wgslsmith_f_op_f32(func_4(!(!vec4<bool>(true, global3.x, false, true)), func_1(!global3.x))))));
    global0 = array<Struct_4, 19>();
    var var_1 = u_input.b;
    let var_2 = 8192u;
    let var_3 = abs(-u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(i32(-1i) * -u_input.c.x, var_3, ~(~0i), u_input.c.x)));
}

