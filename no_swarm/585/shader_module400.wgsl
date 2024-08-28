struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 1u), false, vec3<f32>(-756f, -612f, 897f), vec2<f32>(2321f, -1000f), vec4<bool>(true, false, true, false));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<f32, 25> = array<f32, 25>(-407f, 1020f, 2139f, 857f, -194f, -1219f, 1000f, -1740f, -661f, 645f, 855f, -303f, 378f, 343f, 1451f, 833f, -146f, 777f, 277f, 770f, -1234f, -185f, 1000f, -746f, -196f);

var<private> global3: array<bool, 27>;

var<private> global4: u32 = 55936u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = vec3<f32>(-172f, _wgslsmith_f_op_f32(round(-269f)), _wgslsmith_f_op_f32(max(global0.c.x, global0.c.x)));
    let var_1 = Struct_1(global0.a, any(arg_0.e.yzw), _wgslsmith_f_op_vec3_f32(round(arg_0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-594f, _wgslsmith_f_op_f32(exp2(arg_0.d.x))) + _wgslsmith_div_vec2_f32(arg_1.c.yz, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(1u, 25u)], 1044f) * vec2<f32>(var_0.x, -558f))))), select(!(!select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 27u)], true, arg_1.e.x), vec4<bool>(arg_0.e.x, true, global1.x, true), arg_0.e)), select(select(arg_0.e, !global0.e, true), !(!arg_1.e), select(select(arg_1.e, vec4<bool>(true, arg_0.b, global3[_wgslsmith_index_u32(4294967295u, 27u)], global1.x), arg_1.e), select(arg_1.e, vec4<bool>(true, arg_0.b, global3[_wgslsmith_index_u32(22450u, 27u)], false), vec4<bool>(global3[_wgslsmith_index_u32(8330u, 27u)], arg_1.b, arg_1.b, true)), select(global3[_wgslsmith_index_u32(0u, 27u)], false, arg_1.b))), false));
    var var_2 = max(firstLeadingBit(abs(~u_input.b ^ (4294967295u | arg_1.a.x))), arg_0.a.x);
    var var_3 = vec2<i32>(countOneBits(-50071i), _wgslsmith_sub_i32(countOneBits(arg_2), u_input.c));
    global0 = Struct_1(arg_0.a, var_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(abs(arg_1.a.x ^ var_1.a.x), 25u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), -295f)), var_0.xy, select(arg_0.e, select(vec4<bool>(arg_1.b, !arg_1.b, global1.x, true), !(!arg_1.e), select(!vec4<bool>(false, global3[_wgslsmith_index_u32(arg_0.a.x, 27u)], false, true), vec4<bool>(false, false, true, global0.e.x), 420f >= var_0.x)), global0.e));
    return global0.a.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global4 = u_input.b;
    global0 = Struct_1(vec2<u32>(firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(146715u, 9642u, u_input.a.x), u_input.a.wxx))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.xx) & 1u, func_3(Struct_1(vec2<u32>(global0.a.x, 18429u), global0.b, vec3<f32>(global2[_wgslsmith_index_u32(50963u, 25u)], global0.c.x, global0.c.x), global0.d, vec4<bool>(false, global1.x, true, global3[_wgslsmith_index_u32(35763u, 27u)])), Struct_1(global0.a, true, global0.c, global0.c.zx, global0.e), -u_input.c))), any(!(!global0.e.zx)), vec3<f32>(-364f, -870f, -120f), global0.c.xz, vec4<bool>(global1.x, global3[_wgslsmith_index_u32(~1313u, 27u)], (u_input.c > firstTrailingBit(u_input.c)) || any(vec3<bool>(true, global0.b, false)), !global0.b));
    var var_0 = Struct_1(~_wgslsmith_mult_vec2_u32(abs(reverseBits(vec2<u32>(u_input.d, 15765u))), _wgslsmith_sub_vec2_u32(max(global0.a, vec2<u32>(4294967295u, 4294967295u)), global0.a)), true, vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), 432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * global0.d.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c.x, global0.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, global2[_wgslsmith_index_u32(71969u, 25u)]) * global0.c.xz), select(vec2<bool>(true, false), vec2<bool>(true, global1.x), global0.e.zx))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.c.x) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1008f, global0.c.x)))), vec2<bool>(all(vec4<bool>(global0.e.x, global3[_wgslsmith_index_u32(15052u, 27u)], global1.x, false)), !arg_0))) * global0.c.zz), global0.e);
    global1 = !vec2<bool>(true, any(select(select(vec3<bool>(true, global0.b, false), global0.e.xwz, vec3<bool>(var_0.e.x, arg_0, true)), select(global0.e.wwx, global0.e.wzy, global0.e.wyz), global0.e.xzw)));
    var var_1 = vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(var_0.a.x, ~28671u), ~30663u | global0.a.x);
    return Struct_1(~(~reverseBits(max(var_1.zy, global0.a))), arg_0, _wgslsmith_f_op_vec3_f32(var_0.c + global0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1442f, global2[_wgslsmith_index_u32(global0.a.x, 25u)]), vec2<f32>(543f, global0.d.x)))), vec2<f32>(global2[_wgslsmith_index_u32(global0.a.x, 25u)], global0.c.x))) + _wgslsmith_f_op_vec2_f32(var_0.c.yx * vec2<f32>(global0.c.x, _wgslsmith_div_f32(global0.c.x, var_0.d.x)))), global0.e);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = true;
    return func_2(true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_div_f32(global0.c.x, -191f);
    global4 = 44294u;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-func_2(arg_0.e.x).d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1168f, _wgslsmith_f_op_f32(f32(-1f) * -1422f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 + -391f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f)))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1638f, 529f, -1230f, 964f) + vec4<f32>(var_1, 1749f, -498f, global2[_wgslsmith_index_u32(67813u, 25u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.c.x, -240f, arg_0.c.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.d.x, -1000f, arg_1.c.x, arg_0.d.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(248f, -1253f, 1768f, arg_1.d.x), vec4<f32>(arg_0.c.x, 2045f, -475f, global2[_wgslsmith_index_u32(76150u, 25u)]))))) - vec4<f32>(-1390f, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 25u)]), _wgslsmith_f_op_f32(ceil(global0.c.x))))));
    return 315f;
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<f32>(-856f, _wgslsmith_f_op_f32(-global0.c.x), 1570f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1193f - _wgslsmith_f_op_f32(select(752f, global2[_wgslsmith_index_u32(u_input.d, 25u)], global0.e.x))), _wgslsmith_f_op_f32(sign(-804f)))) + _wgslsmith_f_op_f32(func_5(func_4(func_2(global1.x), _wgslsmith_f_op_f32(-global0.d.x), u_input.c), Struct_1(u_input.a.wy ^ vec2<u32>(1u, 4294967295u), true, vec3<f32>(-1534f, global2[_wgslsmith_index_u32(0u, 25u)], -1289f), _wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(u_input.d, 25u)]), global0.d), func_2(global3[_wgslsmith_index_u32(4294967295u, 27u)]).e)))));
    var var_1 = all(func_2(!(1i != (1i << (u_input.b % 32u)))).e.wzx);
    var var_2 = func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 18438u), vec3<u32>(reverseBits(1u), ~0u, global0.a.x)), 27u)]);
    global3 = array<bool, 27>();
    var var_3 = func_2(false);
    return func_4(Struct_1(~countOneBits(global0.a), true, vec3<f32>(var_3.c.x, _wgslsmith_f_op_f32(-330f + _wgslsmith_f_op_f32(var_0.x - global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(100f + var_3.d.x) + 1f)), _wgslsmith_f_op_vec2_f32(-var_3.d), global0.e), -1884f, u_input.c | (_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, u_input.c), vec2<i32>(u_input.c, u_input.c)) ^ (-1i >> (1u % 32u))));
}

fn func_6(arg_0: Struct_1) -> f32 {
    global3 = array<bool, 27>();
    let var_0 = _wgslsmith_div_u32(0u, global0.a.x);
    let var_1 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 25u)] - _wgslsmith_f_op_f32(-arg_0.c.x));
    let var_2 = vec2<bool>(arg_0.b, true);
    var var_3 = global3[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_add_u32(~global0.a.x << (1u % 32u), 4294967295u)), 27u)];
    return _wgslsmith_div_f32(-383f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-789f * -254f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_6(func_1()));
    global4 = firstTrailingBit(~min(~u_input.d, ~global0.a.x));
    let var_1 = u_input.a;
    var var_2 = func_2(false).c.x;
    var var_3 = func_2(true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wxw | max(u_input.a.zzx ^ _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 23715u, 0u), var_1.xyw), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, 0u), vec3<u32>(global0.a.x, var_3.a.x, 4294967295u))), vec2<i32>(-countOneBits(select(-55794i, -2147483647i, false)), select(-1i, -10305i, !(!global3[_wgslsmith_index_u32(var_3.a.x, 27u)]))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.c)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1417f, global2[_wgslsmith_index_u32(var_3.a.x, 25u)], global0.d.x))))), var_3.c)));
}

