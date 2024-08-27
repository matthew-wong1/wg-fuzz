struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-208f, 623f, -2017f)), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(551f, -1274f, -345f)), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(-218f, -1674f, 1151f)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-1619f, 698f, 302f)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-794f, -1440f, -1956f)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(1915f, 177f, -622f)), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(1691f, -1006f, 141f)), Struct_1(vec4<bool>(true, true, false, true), vec3<f32>(-2199f, 414f, -2578f)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(277f, 1000f, -862f)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-1000f, 1000f, 1171f)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(1126f, 1205f, -599f)), Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(-264f, -1087f, -464f)), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(1087f, 309f, -220f)), Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(-1055f, -340f, -162f)), Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(1133f, -1000f, 1460f)), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-1596f, 1000f, -1463f)), Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(-151f, 1258f, 1263f)), Struct_1(vec4<bool>(false, false, false, false), vec3<f32>(-1180f, -1000f, 1115f)));

var<private> global1: array<Struct_3, 30>;

var<private> global2: Struct_4;

var<private> global3: array<u32, 3> = array<u32, 3>(11841u, 19704u, 0u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = global2.c.zz;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(329f, 1147f, -555f, -1000f), vec4<f32>(-516f, -153f, -1867f, -476f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(830f, 150f, 154f, -942f))))), select(vec4<bool>(false, true, false, global2.a.x), vec4<bool>(true, global2.a.x, false, global2.a.x), !vec4<bool>(false, true, global2.a.x, global2.a.x)))) * vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1569f, 1472f, -1161f, -471f), vec4<f32>(208f, -757f, 761f, 1465f), vec4<bool>(global2.a.x, false, false, false))) - vec4<f32>(352f, -699f, 231f, 678f))))));
    var_0 = vec2<u32>(min(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global2.b, global2.c) & select(vec3<u32>(var_0.x, var_0.x, global3[_wgslsmith_index_u32(global2.c.x, 3u)]), global2.c, vec3<bool>(true, true, global2.a.x)), vec3<u32>(global2.b.x, 40911u, ~global2.c.x)), _wgslsmith_mod_u32(countOneBits(7488u), ~global3[_wgslsmith_index_u32(92750u, 3u)]) >> (~_wgslsmith_sub_u32(20610u, var_0.x) % 32u)), global2.b.x);
    global0 = array<Struct_1, 18>();
    var var_2 = var_1.yyz;
    return _wgslsmith_div_i32(u_input.a, -38158i >> ((abs(~1u) & ~firstTrailingBit(global3[_wgslsmith_index_u32(var_0.x, 3u)])) % 32u));
}

fn func_2() -> vec3<u32> {
    var var_0 = vec3<i32>(_wgslsmith_sub_i32(func_3(), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_div_i32(2175i, 2147483647i), 5043i), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.a, 27349i))))), _wgslsmith_div_i32(u_input.b, _wgslsmith_mult_i32(~u_input.c, 22352i)), u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(270f * 581f), _wgslsmith_f_op_f32(f32(-1f) * -1359f), _wgslsmith_f_op_f32(-450f + 690f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, -195f, -516f))), global2.a.x && true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1061f, -985f, 1454f) - vec3<f32>(498f, 1807f, -139f)) - vec3<f32>(-414f, -716f, 1374f)) * vec3<f32>(1f, 1f, 1f)))));
    var var_2 = global0[_wgslsmith_index_u32(69278u, 18u)];
    var var_3 = Struct_1(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(floor(var_2.b.x)), _wgslsmith_f_op_f32(ceil(2046f)), _wgslsmith_f_op_f32(-var_2.b.x)));
    var var_4 = ~(~(~(~global2.c.x)));
    return ~vec3<u32>(~countOneBits(~30826u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(min(4294967295u, 4294967295u), global3[_wgslsmith_index_u32(global2.b.x, 3u)], global2.c.x), 3u)], 3u)], _wgslsmith_mult_u32(global2.b.x, 41493u));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<bool>) -> i32 {
    var var_0 = firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~59317u, ~global3[_wgslsmith_index_u32(1u, 3u)] << (42458u % 32u)), 3u)]);
    global2 = arg_0;
    var var_1 = Struct_1(!select(arg_1.b.a, !select(arg_1.b.a, arg_1.b.a, arg_1.b.a), arg_2.x), vec3<f32>(arg_1.b.b.x, 100f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2347f), -823f))));
    var var_2 = vec2<u32>(abs(0u ^ _wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 0u, 1u), arg_1.a), global2.b)), ~29031u);
    global2 = Struct_4(arg_1.b.a.yy, ~min(vec3<u32>(1u, 90802u, ~var_2.x), global2.c), vec3<u32>(global2.c.x, 1u, 17886u));
    return abs(~_wgslsmith_mod_i32(-arg_1.d, min(reverseBits(0i), select(1i, 2147483647i, arg_0.a.x))));
}

fn func_1() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(reverseBits(4294967295u), 18u)];
    global1 = array<Struct_3, 30>();
    return func_4(Struct_4(global2.a, _wgslsmith_mod_vec3_u32(vec3<u32>(66324u, 68186u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(39257u, global2.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24668u, 3u)], 3u)]), vec3<u32>(0u, 4294967295u, 0u))) >> (global2.b % vec3<u32>(32u)), func_2()), Struct_2(~(~global2.c | vec3<u32>(global2.c.x, global2.c.x, global3[_wgslsmith_index_u32(global2.b.x, 3u)])), global0[_wgslsmith_index_u32(global2.b.x, 18u)], vec3<u32>(44259u, _wgslsmith_dot_vec3_u32(reverseBits(global2.b), vec3<u32>(global3[_wgslsmith_index_u32(global2.c.x, 3u)], global3[_wgslsmith_index_u32(1u, 3u)], 4294967295u)), ~func_2().x), _wgslsmith_sub_i32((-40965i & u_input.c) | u_input.a, func_3())), !(!(!vec2<bool>(var_0.a.x, var_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(true, any(!select(global2.a, global2.a, true)), true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-245f * -1187f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1121f + -716f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1525f, -1067f), _wgslsmith_div_vec3_f32(vec3<f32>(-673f, 452f, 812f), vec3<f32>(-1838f, -1432f, -669f))))));
    let var_1 = ~(-(~(-vec2<i32>(2147483647i, 1i))));
    global0 = array<Struct_1, 18>();
    let var_2 = ~reverseBits(vec2<u32>(global2.c.x, global2.c.x));
    var var_3 = var_0.b.xz;
    var var_4 = -2513f;
    global3 = array<u32, 3>();
    var var_5 = ~abs(global2.b.x);
    var_5 = ~(~(~reverseBits(global2.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(43884u, vec3<i32>(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(1i, -2147483647i, -1i, u_input.b)), ~(~vec4<i32>(2147483647i, u_input.c, var_1.x, var_1.x))), -11646i, i32(-1i) * -func_1()), -1925f, ~vec2<i32>(-_wgslsmith_mod_i32(-1i, u_input.c), -15652i), global2.b);
}

