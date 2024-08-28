struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, false, true, false, true, true, false, false, true, true, true, true, true, false, true, false, false, true, false, true, false, true, true, false, false, true, true, true, true);

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(1190f), Struct_3(1324f), Struct_3(-1000f), Struct_3(-514f), Struct_3(1109f), Struct_3(109f), Struct_3(-370f), Struct_3(1000f), Struct_3(-1078f), Struct_3(-1065f), Struct_3(1511f), Struct_3(1080f), Struct_3(-126f), Struct_3(964f), Struct_3(-1000f), Struct_3(-1249f), Struct_3(826f), Struct_3(-215f), Struct_3(181f), Struct_3(-202f), Struct_3(443f), Struct_3(-211f), Struct_3(1000f), Struct_3(-1399f), Struct_3(-915f), Struct_3(1700f), Struct_3(1000f), Struct_3(-793f));

var<private> global2: Struct_2 = Struct_2(vec3<u32>(0u, 1u, 56065u), true, Struct_1(vec2<f32>(-815f, 910f), vec2<i32>(-3744i, 0i), vec2<bool>(false, false)), Struct_1(vec2<f32>(-1303f, 646f), vec2<i32>(20422i, -17732i), vec2<bool>(false, true)));

var<private> global3: array<bool, 16>;

var<private> global4: vec3<i32> = vec3<i32>(-15708i, 10512i, 45596i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> u32 {
    var var_0 = global2.d;
    return arg_1.a.x;
}

fn func_2(arg_0: i32) -> vec2<f32> {
    global1 = array<Struct_3, 28>();
    global3 = array<bool, 16>();
    let var_0 = vec3<u32>(func_3(global2.d.a.x, Struct_2(~global2.a, true, global2.c, global2.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(915f * global2.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_2(global2.a, 60623u == u_input.b.x, global2.d, Struct_1(global2.d.a, global2.c.b, global2.d.c))) | (~(~0u) ^ min(global2.a.x, global2.a.x)), 9973u, _wgslsmith_div_u32(~(abs(u_input.c.x) & (global2.a.x << (global2.a.x % 32u))), u_input.c.x & firstTrailingBit(40235u)));
    let var_1 = _wgslsmith_clamp_i32(~1i, -1i, 1i) | (i32(-1i) * -_wgslsmith_div_i32(~global2.c.b.x, 405i));
    var var_2 = vec3<f32>(-474f, _wgslsmith_f_op_f32(f32(-1f) * -960f), -275f);
    return var_2.yx;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_2(global2.a, true, Struct_1(global2.d.a, abs(_wgslsmith_div_vec2_i32(~global4.zy, select(vec2<i32>(arg_3.b.x, arg_3.b.x), u_input.a.zz, true))), vec2<bool>((arg_2.x || true) | (false && arg_3.c.x), countOneBits(u_input.b.x) == global2.a.x)), global2.c);
    var var_1 = arg_2.wx;
    global3 = array<bool, 16>();
    var var_2 = Struct_2(global2.a, !arg_0, Struct_1(global2.c.a, _wgslsmith_sub_vec2_i32(global2.d.b, global2.c.b), arg_3.c), Struct_1(_wgslsmith_div_vec2_f32(global2.c.a, _wgslsmith_f_op_vec2_f32(step(arg_3.a, _wgslsmith_f_op_vec2_f32(-global2.c.a)))), _wgslsmith_sub_vec2_i32((global4.yz >> (u_input.c.yw % vec2<u32>(32u))) ^ (vec2<i32>(global4.x, global2.d.b.x) >> (vec2<u32>(u_input.b.x, u_input.c.x) % vec2<u32>(32u))), ~select(var_0.c.b, var_0.c.b, true)), vec2<bool>(~arg_1 > global2.d.b.x, true)));
    global4 = vec3<i32>(0i, -_wgslsmith_sub_i32(_wgslsmith_mod_i32(~global2.d.b.x, 0i), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, 9353i, arg_3.b.x, -27606i)), firstTrailingBit(vec4<i32>(arg_1, arg_1, global2.d.b.x, u_input.a.x)))), ~(-((i32(-1i) * -38813i) | _wgslsmith_mod_i32(arg_1, var_2.d.b.x))));
    return min(~vec3<i32>(17214i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 10615i), vec2<i32>(14580i, var_0.d.b.x) >> (vec2<u32>(25983u, var_2.a.x) % vec2<u32>(32u)))), min(-vec3<i32>(59106i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.b.x, -20494i), var_2.c.b), arg_3.b.x), vec3<i32>(~min(-39131i, global2.d.b.x), -var_2.c.b.x, abs(arg_3.b.x ^ arg_3.b.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> bool {
    var var_0 = reverseBits(func_4(_wgslsmith_f_op_f32(select(global2.c.a.x, -464f, u_input.b.x <= u_input.b.x)) < _wgslsmith_f_op_f32(global2.d.a.x - _wgslsmith_f_op_f32(global2.c.a.x + global2.c.a.x)), u_input.a.x, vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, global2.a.x), 16u)] & all(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(0u, 29u)], global2.b)), all(!vec4<bool>(global2.b, global0[_wgslsmith_index_u32(110038u, 29u)], global0[_wgslsmith_index_u32(global2.a.x, 29u)], global0[_wgslsmith_index_u32(global2.a.x, 29u)])), any(!vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(4294967295u, 29u)])), any(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], global3[_wgslsmith_index_u32(global2.a.x, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], global3[_wgslsmith_index_u32(1u, 16u)]), global0[_wgslsmith_index_u32(global2.a.x, 29u)]))), Struct_1(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.d.b.x, global2.d.b.x, global2.c.b.x, arg_1), vec4<i32>(-2543i, 2147483647i, -1903i, global2.d.b.x)))), min(vec2<i32>(-37531i, u_input.a.x), vec2<i32>(1i, u_input.a.x)) | vec2<i32>(global2.d.b.x, u_input.a.x), select(global2.c.c, global2.d.c, true))));
    global0 = array<bool, 29>();
    let var_1 = vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 29u)], 1u > func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f)), Struct_2(~arg_0, !global2.b, Struct_1(global2.d.a, vec2<i32>(arg_1, global4.x), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 29u)])), Struct_1(global2.d.a, vec2<i32>(0i, -13955i), vec2<bool>(global2.b, global0[_wgslsmith_index_u32(105954u, 29u)]))), global2.c.a.x, Struct_2(vec3<u32>(4294967295u, 35980u, arg_0.x), true, global2.d, Struct_1(vec2<f32>(global2.c.a.x, 1522f), global2.d.b, vec2<bool>(global0[_wgslsmith_index_u32(global2.a.x, 29u)], global3[_wgslsmith_index_u32(global2.a.x, 16u)])))), max(arg_1, -firstTrailingBit(global4.x)) < _wgslsmith_mod_i32(-_wgslsmith_mod_i32(var_0.x, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, global4.x, -2147483647i, 15928i) & vec4<i32>(global4.x, var_0.x, 2147483647i, 16086i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, global2.c.b.x, 36726i, -13040i), vec4<i32>(23919i, -32995i, global2.d.b.x, 15314i)))), true);
    global1 = array<Struct_3, 28>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(global2.c.b.x)).x * _wgslsmith_f_op_f32(sign(global2.c.a.x))) - 878f) * 1000f));
    return _wgslsmith_f_op_f32(-global2.d.a.x) < -1492f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    var var_0 = !(!select(select(!vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(global2.a.x, 16u)]), !vec4<bool>(global3[_wgslsmith_index_u32(31223u, 16u)], global2.d.c.x, true, true), global2.a.x <= 28316u), !(!vec4<bool>(global2.d.c.x, global2.c.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true)), select(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(global2.a.x, 29u)], false), !vec4<bool>(false, global2.b, global0[_wgslsmith_index_u32(1u, 29u)], true), !vec4<bool>(global2.c.c.x, false, false, global2.b))));
    global4 = ~(-(~vec3<i32>(~global2.c.b.x, global2.d.b.x & global4.x, _wgslsmith_mult_i32(0i, u_input.a.x))));
    var var_1 = vec3<bool>(false, false, func_1(~(~min(u_input.c.yzz, vec3<u32>(9410u, 0u, global2.a.x))), -1i));
    global1 = array<Struct_3, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~u_input.b);
}

