struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(false, true, true), 123f, vec4<bool>(false, false, false, false));

var<private> global1: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false));

var<private> global2: array<bool, 26>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -296f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-909f)), global0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-716f))), _wgslsmith_dot_vec3_u32(u_input.c.zyx ^ u_input.c.yzx, vec3<u32>(38942u, u_input.a.x | 51927u, u_input.c.x)) << (3325u % 32u), select(!vec4<bool>(any(global0.c), arg_2, u_input.a.x > u_input.c.x, arg_2), global0.c, arg_2), any(global0.c));
    var var_2 = select(!select(vec3<bool>(arg_2, global0.c.x || global0.a.x, global0.c.x), global0.c.ywz, select(vec3<bool>(var_1.d.x, global0.c.x, false), select(global1[_wgslsmith_index_u32(0u, 27u)], vec3<bool>(false, arg_2, true), false), any(var_1.d.wy))), global1[_wgslsmith_index_u32(var_1.c, 27u)], !(!(false || global2[_wgslsmith_index_u32(select(u_input.c.x, var_1.c, true), 26u)])));
    global1 = array<vec3<bool>, 27>();
    global2 = array<bool, 26>();
    return firstLeadingBit(abs(var_1.c)) & firstTrailingBit(1u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, firstLeadingBit(-1i >> (firstLeadingBit(1u) % 32u))), -(1i << (arg_0 % 32u)));
    let var_1 = Struct_4(global0.a, global0.b, !(!select(!global0.c, select(vec4<bool>(global0.c.x, global0.c.x, global2[_wgslsmith_index_u32(arg_0, 26u)], true), global0.c, global0.c), global0.c)));
    var_0 = _wgslsmith_clamp_i32(~abs(abs(2147483647i)) << (func_3(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, 2019f) * -828f), true) % 32u), 1i, _wgslsmith_add_i32(-((2147483647i >> (u_input.c.x % 32u)) >> (u_input.a.x % 32u)), -1952i));
    global1 = array<vec3<bool>, 27>();
    let var_2 = vec3<f32>(global0.b, global0.b, global0.b);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -794f) + 522f), -922f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x + -1000f))), arg_0, !select(!select(global0.c, global0.c, vec4<bool>(var_1.a.x, true, false, global0.c.x)), var_1.c, select(vec4<bool>(false, global0.c.x, global2[_wgslsmith_index_u32(arg_0, 26u)], true), select(vec4<bool>(false, true, true, true), global0.c, vec4<bool>(false, var_1.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 26u)], true)), select(global0.c, global0.c, global2[_wgslsmith_index_u32(u_input.b, 26u)]))), var_1.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3) -> u32 {
    var var_0 = 241f;
    global0 = Struct_4(arg_2.c.d.wxw, -202f, arg_2.c.d);
    let var_1 = arg_2;
    let var_2 = Struct_4(!global1[_wgslsmith_index_u32(select(1u, _wgslsmith_dot_vec3_u32(u_input.c.wyx, ~u_input.c.xzx), false), 27u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -202f))), !func_2(1u).d);
    var var_3 = 4294967295u;
    return _wgslsmith_dot_vec3_u32(countOneBits(u_input.c.ywx << (u_input.c.zxx % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, ~_wgslsmith_sub_u32(var_1.b.c, arg_0.a), ~arg_2.b.c | select(arg_0.a, arg_2.a.c, var_1.b.d.x)), firstTrailingBit(~abs(vec3<u32>(arg_0.a, arg_0.a, 4294967295u)))));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_mod_u32(u_input.c.x, func_4(Struct_2(84049u, vec3<f32>(-483f, global0.b, -116f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1255f, global0.b, -463f, -319f), vec4<f32>(global0.b, -131f, 358f, -516f)))), Struct_3(Struct_1(vec2<f32>(1222f, 109f), 740f, 0u, vec4<bool>(global2[_wgslsmith_index_u32(14428u, 26u)], true, true, false), global2[_wgslsmith_index_u32(3027u, 26u)]), func_2(u_input.b), Struct_1(vec2<f32>(-1044f, global0.b), 868f, 78520u, vec4<bool>(false, false, false, global0.c.x), false)))), vec3<f32>(global0.b, global0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.b, global0.b)))));
    global2 = array<bool, 26>();
    global2 = array<bool, 26>();
    var_0 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(425u, func_2(var_0.a).c), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a, var_0.a), firstLeadingBit(vec2<u32>(0u, 45703u)))), ~(vec2<u32>(18723u, 0u) << (u_input.a % vec2<u32>(32u))) << (~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(61685u, 1u)) % vec2<u32>(32u))), var_0.b);
    let var_1 = Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(-global0.b)), global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_2(var_0.a).a.x))), ~func_2(var_0.a).c, !func_2(func_3(global0.c.x, var_0.b.x, global0.c.x)).d, all(!global1[_wgslsmith_index_u32(var_0.a >> (var_0.a % 32u), 27u)])), Struct_1(var_0.b.xx, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 4294967295u, 52759u), _wgslsmith_sub_vec3_u32(u_input.c.yyy, u_input.c.xyw)), ~(~u_input.c.xwy)), vec4<bool>(true && (false && global0.a.x), any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], global0.c.x)), any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], false)), all(global1[_wgslsmith_index_u32(func_2(u_input.a.x).c, 27u)])), any(!vec3<bool>(global2[_wgslsmith_index_u32(var_0.a, 26u)], global0.c.x, true)) == true), Struct_1(func_2(u_input.b).a, 656f, u_input.a.x, vec4<bool>(any(global0.c), true, global0.b == _wgslsmith_div_f32(-849f, global0.b), any(vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(1u, 26u)]));
    return Struct_2(~(~29682u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(global0.b * global0.b))) + var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -668f);
    global2 = array<bool, 26>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(-global0.b))), var_0.b));
    var_1 = -1358f;
    var var_3 = !func_2(34034u).d;
    let var_4 = Struct_4(func_2(abs(u_input.a.x)).d.wyx, func_2(_wgslsmith_sub_u32(~(~65828u), _wgslsmith_add_u32(6331u << (u_input.a.x % 32u), countOneBits(4294967295u)))).a.x, global0.c);
    let var_5 = Struct_3(func_2(max(var_0.a, 39413u)), Struct_1(var_2.zz, _wgslsmith_f_op_f32(-var_4.b), var_0.a, var_4.c, all(vec2<bool>(any(global0.c), true))), func_2(0u));
    let x = u_input.a;
    s_output = StorageBuffer(min(max(vec2<i32>(22910i, 33577i), firstLeadingBit(~vec2<i32>(2147483647i, 1i))), -vec2<i32>(1i, 1i)), vec4<i32>(-(~(27928i >> (0u % 32u))), countOneBits(0i) << (u_input.c.x % 32u), -2147483647i << (~(1u << (var_0.a % 32u)) % 32u), (i32(-1i) * -19356i) >> (var_0.a % 32u)), -_wgslsmith_mod_vec3_i32(abs(~vec3<i32>(53659i, -49568i, 51923i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 30936i, 22154i, 1i), vec4<i32>(-20616i, 2147483647i, 2147483647i, -2147483647i)), ~42715i, 16974i)), -61964i, var_0.b.x);
}

