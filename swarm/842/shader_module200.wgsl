struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(25373u, vec3<f32>(263f, 513f, 434f), -23243i, true, vec3<f32>(170f, -159f, -979f)), Struct_1(3152u, vec3<f32>(1596f, 548f, -691f), -50191i, true, vec3<f32>(-703f, 352f, -2062f)), Struct_1(10332u, vec3<f32>(-995f, 2504f, 1257f), 0i, true, vec3<f32>(-827f, -476f, 1860f)), Struct_1(46154u, vec3<f32>(112f, -755f, 673f), 106332i, true, vec3<f32>(-773f, 596f, -1000f)), Struct_1(7398u, vec3<f32>(-807f, -225f, -147f), i32(-2147483648), true, vec3<f32>(845f, -578f, 724f)), Struct_1(1u, vec3<f32>(-1283f, -1898f, 237f), 2147483647i, true, vec3<f32>(599f, 477f, -271f)), Struct_1(4294967295u, vec3<f32>(-681f, 1296f, 278f), 17205i, false, vec3<f32>(787f, 1025f, 1579f)), Struct_1(4294967295u, vec3<f32>(835f, 1865f, -1073f), -62846i, false, vec3<f32>(-454f, 814f, 281f)), Struct_1(47684u, vec3<f32>(-215f, -1428f, 428f), 0i, false, vec3<f32>(358f, -1563f, 206f)), Struct_1(43539u, vec3<f32>(248f, -111f, 815f), -257i, false, vec3<f32>(-116f, 333f, -1772f)), Struct_1(4294967295u, vec3<f32>(-421f, -805f, 895f), 1i, false, vec3<f32>(679f, -799f, -235f)), Struct_1(6129u, vec3<f32>(-1314f, -962f, 1086f), 1i, true, vec3<f32>(1178f, 337f, -931f)), Struct_1(643u, vec3<f32>(619f, 1017f, 1874f), 27850i, false, vec3<f32>(-283f, 521f, 1000f)), Struct_1(35251u, vec3<f32>(-1000f, -968f, -495f), 12675i, false, vec3<f32>(696f, -543f, -450f)), Struct_1(44803u, vec3<f32>(2274f, -841f, -3080f), -7526i, true, vec3<f32>(-283f, 457f, -1000f)), Struct_1(4294967295u, vec3<f32>(-678f, -1841f, -712f), -43111i, false, vec3<f32>(-1524f, -1241f, -528f)), Struct_1(124509u, vec3<f32>(2269f, -495f, 1000f), 2147483647i, false, vec3<f32>(-1129f, -1392f, -1087f)), Struct_1(36328u, vec3<f32>(-1947f, 1520f, 1000f), 23517i, true, vec3<f32>(-1334f, -1000f, 1000f)), Struct_1(0u, vec3<f32>(-2165f, 796f, -596f), 10152i, true, vec3<f32>(2571f, -431f, 109f)), Struct_1(4294967295u, vec3<f32>(737f, 871f, 365f), 37361i, false, vec3<f32>(1814f, 802f, 2661f)), Struct_1(59628u, vec3<f32>(-545f, -970f, -409f), 1i, false, vec3<f32>(655f, 1413f, 1000f)), Struct_1(4294967295u, vec3<f32>(1400f, 2011f, 922f), -1i, false, vec3<f32>(-1628f, 1413f, -867f)), Struct_1(45860u, vec3<f32>(2046f, 988f, 794f), 25465i, false, vec3<f32>(241f, 135f, 1540f)), Struct_1(69920u, vec3<f32>(285f, 921f, 1944f), -167i, true, vec3<f32>(751f, -1456f, -107f)), Struct_1(50491u, vec3<f32>(-926f, 680f, 896f), 2147483647i, false, vec3<f32>(-734f, 179f, 219f)), Struct_1(4294967295u, vec3<f32>(-2136f, 1678f, -665f), 1i, false, vec3<f32>(-934f, -835f, 354f)), Struct_1(13003u, vec3<f32>(267f, 263f, 400f), -6366i, true, vec3<f32>(-110f, 380f, -1695f)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.x - -1566f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), arg_1.e.x)), -221f), 487f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, 1010f) * 1000f))));
    var var_1 = u_input.a;
    return true && (19049u < ~arg_1.a);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    var var_0 = !(!(!arg_1.d));
    let var_1 = _wgslsmith_f_op_f32(round(-896f));
    let var_2 = Struct_1(reverseBits(27074u), _wgslsmith_f_op_vec3_f32(-arg_1.e), ~(~(-12126i)), arg_1.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.b, arg_1.b) - arg_1.b)))));
    var var_3 = Struct_2((vec4<u32>(~4294967295u, ~var_2.a, 1u >> (arg_1.a % 32u), ~0u) & _wgslsmith_mult_vec4_u32(vec4<u32>(48732u, var_2.a, 50990u, arg_1.a), ~vec4<u32>(arg_1.a, var_2.a, 26112u, 23842u))) >> (~vec4<u32>(19562u, _wgslsmith_div_u32(29159u, var_2.a), ~74999u, ~arg_1.a) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1190f, var_1, var_1), vec3<f32>(104f, var_1, -1567f))), vec3<f32>(arg_1.b.x, var_1, 102f), select(vec3<bool>(arg_1.d, arg_1.d, arg_1.d), vec3<bool>(true, true, true), var_2.d))), vec3<f32>(var_2.e.x, _wgslsmith_f_op_f32(select(1000f, -283f, var_2.d)), 791f), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -679f, -1076f, var_1) + vec4<f32>(-1850f, var_1, var_1, 109f)), arg_1, Struct_2(vec4<u32>(arg_1.a, arg_1.a, 0u, var_2.a), vec3<f32>(arg_1.b.x, 1978f, 1009f))))), var_2.b)));
    var_0 = !(!func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.b.x, 268f, 523f, var_2.e.x), vec4<f32>(1783f, arg_1.b.x, 3398f, var_2.b.x))), var_2, Struct_2(vec4<u32>(arg_1.a, 0u, 30388u, var_2.a), var_3.b))) && var_2.d;
    return _wgslsmith_add_u32(4294967295u & var_2.a, reverseBits(1u));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = true;
    return Struct_1(~(~(_wgslsmith_add_u32(16751u, 119279u) ^ func_2(arg_1.x, Struct_1(77694u, vec3<f32>(282f, -146f, 744f), arg_1.x, true, vec3<f32>(-340f, arg_0, arg_0)), vec3<i32>(u_input.a, -45702i, -45087i)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -631f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, arg_0, -317f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -826f), arg_0, -890f)))), arg_1.x | ~(-28729i), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, arg_0, arg_0)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(trunc(arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-1604f, min(_wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, -5125i, -2974i), ~vec3<i32>(u_input.a, u_input.a, u_input.a)) & (vec3<i32>(2147483647i, -51895i, 2147483647i) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, -2795i, u_input.a))), vec3<i32>(13518i, -select(-7663i, -23818i, false), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -527i, -794i), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)))));
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_1 = _wgslsmith_f_op_f32(floor(-759f));
    var var_2 = true;
    var var_3 = global0[_wgslsmith_index_u32(1u, 27u)];
    global0 = array<Struct_1, 27>();
    var var_4 = Struct_2(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a, 28751u, var_0.a, var_3.a) << (vec4<u32>(var_0.a, 1u, 31703u, var_0.a) % vec4<u32>(32u)), vec4<u32>(var_3.a, var_3.a, 43294u, 50800u)) ^ vec4<u32>(select(29647u, var_3.a, var_3.d), ~var_3.a, var_0.a, _wgslsmith_add_u32(var_3.a, var_3.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1106f, 948f, var_0.e.x))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-527f, _wgslsmith_f_op_f32(ceil(var_3.e.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.zwx);
}

