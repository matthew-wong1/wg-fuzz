struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: f32,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, false, true, false, true, true, false, false, false, false, false, true, false, false, false);

var<private> global1: array<vec3<bool>, 3>;

var<private> global2: array<f32, 3> = array<f32, 3>(-623f, 213f, -437f);

var<private> global3: array<u32, 14> = array<u32, 14>(4294967295u, 4294967295u, 1u, 52010u, 4294967295u, 35780u, 4294967295u, 35610u, 1u, 5468u, 1u, 1u, 64188u, 12352u);

var<private> global4: array<Struct_4, 20>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    global2 = array<f32, 3>();
    var var_0 = arg_2;
    let var_1 = vec3<bool>(true, any(arg_0), arg_0.x);
    global2 = array<f32, 3>();
    global4 = array<Struct_4, 20>();
    return _wgslsmith_div_u32(~u_input.b.x, 4294967295u);
}

fn func_2() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)] ^ _wgslsmith_add_u32(func_3(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(29042u, 15u)]), vec2<bool>(true, true), true), u_input.c >> (vec4<u32>(u_input.b.x, u_input.b.x, 39793u, 15419u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 3u)])), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(142f, -481f, -601f), vec3<f32>(global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 3u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 3u)])), vec2<i32>(u_input.d, u_input.d) << (u_input.b % vec2<u32>(32u)))), 20536u), 15u)];
    global3 = array<u32, 14>();
    global3 = array<u32, 14>();
    global0 = array<bool, 15>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-223f, -629f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1057f, -101f) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 3u)])))), global2[_wgslsmith_index_u32(~u_input.b.x, 3u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b.x, 1u), 3u)] + global2[_wgslsmith_index_u32(~82683u << (global3[_wgslsmith_index_u32(u_input.b.x, 14u)] % 32u), 3u)])));
    return global3[_wgslsmith_index_u32(~28642u, 14u)];
}

fn func_1() -> Struct_3 {
    var var_0 = global3[_wgslsmith_index_u32(4294967295u, 14u)];
    var var_1 = select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(~u_input.b.x, 14u)], _wgslsmith_add_u32(global3[_wgslsmith_index_u32(u_input.b.x >> (_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], 1u) % 32u), 14u)], 0u)), 3u)], vec3<bool>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], true), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstLeadingBit(reverseBits(reverseBits(1u))), 14u)], 14u)], 15u)]);
    let var_2 = -u_input.c.xxw;
    var_0 = ~(~global3[_wgslsmith_index_u32(func_2() >> (0u % 32u), 14u)]);
    var_0 = 1u;
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(707u, 3u)], global2[_wgslsmith_index_u32(2792u, 3u)], -1080f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 422f, -882f, global2[_wgslsmith_index_u32(5230u, 3u)]) + vec4<f32>(-1798f, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 1287f, global2[_wgslsmith_index_u32(0u, 3u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 727f, -510f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-366f * global2[_wgslsmith_index_u32(112773u, 3u)]) + -2498f) != global2[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(u_input.b.x, 20152u, global3[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_sub_u32(7353u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21451u, 14u)], 14u)])), 3u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(406f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 3u)], -1027f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, -1052f, global2[_wgslsmith_index_u32(43326u, 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 3u)]))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], -1175f, -1108f, global2[_wgslsmith_index_u32(u_input.b.x, 3u)])) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(0u, 3u)], 641f, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 662f), vec4<f32>(-403f, global2[_wgslsmith_index_u32(4294967295u, 3u)], 865f, -1000f)))))), select(vec3<bool>(select(true, global0[_wgslsmith_index_u32(u_input.b.x, 15u)] | global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], 15u)], global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.b.x, 14u)], 15u)]), any(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)])), (232f >= global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 3u)]) && (global3[_wgslsmith_index_u32(1u, 14u)] >= u_input.b.x)), vec3<bool>(all(select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)], true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 15u)]), var_1.x)), var_1.x, !all(vec4<bool>(var_1.x, false, var_1.x, var_1.x))), any(!(!vec2<bool>(var_1.x, var_1.x)))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: vec2<i32>) -> vec3<f32> {
    let var_0 = func_1().c.x;
    var var_1 = vec3<i32>(u_input.c.x, -50376i, arg_3.x);
    let var_2 = countOneBits(abs(arg_2));
    global4 = array<Struct_4, 20>();
    var var_3 = select(!select(vec4<bool>(var_0, 4294967295u <= var_2.x, false, true), !(!vec4<bool>(true, var_0, false, false)), vec4<bool>(func_1().c.x, var_0, true, true & global0[_wgslsmith_index_u32(arg_2.x, 15u)])), vec4<bool>(any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(var_0, false, true, true), var_0), !vec4<bool>(var_0, false, true, false), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_0.b.a.x, 15u)], var_0))), global0[_wgslsmith_index_u32(func_3(select(vec2<bool>(true, var_0), !vec2<bool>(arg_0.b.e.a.b, true), false & global0[_wgslsmith_index_u32(arg_0.b.a.x, 15u)]), min(u_input.c, -vec4<i32>(var_1.x, u_input.a, var_1.x, arg_0.e.b.x)), 1226f, Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], -201f, 2063f))), vec2<i32>(var_1.x, 42277i))), 15u)], var_0, select(select(var_0, global0[_wgslsmith_index_u32(12705u, 15u)], false) | !var_0, false, true)), any(func_1().c) && (1630f >= _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(0u, 3u)], -1224f))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.a.a.wyx)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(~0u, 3u)], _wgslsmith_f_op_f32(max(arg_0.a.b.x, arg_0.e.a.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 3u)]))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_3 {
    global1 = array<vec3<bool>, 3>();
    global3 = array<u32, 14>();
    return Struct_3(func_1().a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * -1173f))), _wgslsmith_f_op_f32(sign(-121f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1656f) + func_1().b.x), _wgslsmith_f_op_f32(step(388f, 721f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 3u)])), _wgslsmith_div_f32(arg_0.x, global2[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 116f)), func_1().a.a.x)), func_1().c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 3>();
    let var_0 = reverseBits(u_input.c);
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(func_4(Struct_5(func_1(), global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b.x, 0u), 20u)], -353f, vec3<f32>(global2[_wgslsmith_index_u32(0u | global3[_wgslsmith_index_u32(56100u, 14u)], 3u)], _wgslsmith_f_op_f32(f32(-1f) * -1584f), global2[_wgslsmith_index_u32(80700u, 3u)]), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(4818u, 3u)], global2[_wgslsmith_index_u32(10665u, 3u)]), vec3<f32>(-392f, 1374f, global2[_wgslsmith_index_u32(u_input.b.x, 3u)]))), max(var_0.wz, vec2<i32>(u_input.c.x, -2147483647i)))), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 14u)], 0u, global3[_wgslsmith_index_u32(u_input.b.x, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]), vec4<u32>(u_input.b.x, 61546u, 0u, 4294967295u)) & vec4<u32>(50041u, global3[_wgslsmith_index_u32(4294967295u, 14u)], 1u, u_input.b.x)), ~(-(var_0.wz | u_input.c.wy)))), vec4<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(66875u, u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34549u, 14u)], 14u)]), max(vec3<u32>(u_input.b.x, 0u, 1u), vec3<u32>(u_input.b.x, 25040u, 0u))), ~(4294967295u >> (~4294967295u % 32u)), ~_wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(67469u, 14u)]) | 18221u, ~u_input.b.x), vec2<u32>(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(4294967295u), ~u_input.b.x), 14u)], 4294967295u >> (global3[_wgslsmith_index_u32(29470u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54285u, 14u)], 14u)], 14u)] % 32u)), u_input.b.x));
    global3 = array<u32, 14>();
    var var_2 = _wgslsmith_f_op_vec4_f32(func_1().a.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(72510u, 14u)], 14u)], 14u)], 3u)], var_1.b.x, var_1.a.a.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 3u)])))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_1.a.a.wwx - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(func_1().b.wyx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1386f, var_2.x))))));
    global3 = array<u32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_add_u32(u_input.b.x, reverseBits(abs(100984u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b.zw, var_2.zy)), vec2<f32>(-177f, _wgslsmith_f_op_f32(-var_1.b.x)), func_5(var_2.wwx, ~vec4<u32>(44232u, 1u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)]), u_input.b).c.zy)))), var_3.x, _wgslsmith_dot_vec4_i32(max(-abs(u_input.c), u_input.c), vec4<i32>(_wgslsmith_div_i32(-4616i, u_input.a) & _wgslsmith_add_i32(-1i, -1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 0i, -41815i), abs(var_0.xwy)), _wgslsmith_div_i32(max(1i, u_input.d), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_0.x, 1i, u_input.c.x, -1971i))), var_0.x)));
}

