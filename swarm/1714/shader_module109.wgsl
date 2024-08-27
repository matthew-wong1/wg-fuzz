struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 17>;

var<private> global1: array<vec3<bool>, 5>;

var<private> global2: i32;

var<private> global3: Struct_3;

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> f32 {
    var var_0 = global3.b;
    global0 = array<Struct_3, 17>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1724f);
}

fn func_2() -> Struct_1 {
    global4 = array<Struct_1, 29>();
    global2 = global3.d.a.x;
    let var_0 = global3.d.a.zw;
    global0 = array<Struct_3, 17>();
    let var_1 = vec4<f32>(global3.c, 844f, -1277f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global3.d.d)))));
    return Struct_1(-(~(vec4<i32>(var_0.x, u_input.a, var_0.x, 34794i) >> (vec4<u32>(global3.d.c, global3.d.c, global3.d.c, 4294967295u) % vec4<u32>(32u)))), global3.b.b, ~global3.b.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_1.x, global3.b.d, true)))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(-509f * _wgslsmith_f_op_f32(func_3(vec3<i32>(-2147483647i, -15706i, 2147483647i), select(vec2<u32>(global3.b.c, 5025u), vec2<u32>(19074u, 32974u), global3.d.b.xz), _wgslsmith_f_op_vec3_f32(var_1.xwz - global3.b.e), vec4<f32>(523f, global3.b.d, 1020f, global3.c))))));
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = (select(~vec2<u32>(72965u, 60728u), vec2<u32>(_wgslsmith_clamp_u32(arg_0.c, global3.d.c, 5284u), 4294967295u), true) >> (_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(60055u, 31848u), ~vec2<u32>(global3.d.c, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(global3.b.c, global3.b.c), vec2<u32>(1u, global3.b.c))), max(vec2<u32>(845u, global3.d.c), vec2<u32>(4294967295u, arg_0.c))) % vec2<u32>(32u))) ^ firstTrailingBit(~countOneBits(select(vec2<u32>(1u, arg_0.c), vec2<u32>(25539u, 35099u), vec2<bool>(false, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1359f, global3.d.e.x, -916f, arg_0.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_0.d, global3.b.e.x, 161f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(375f, arg_0.e.x, global3.d.e.x, 295f))))))));
    var var_2 = -2147483647i;
    var_0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global3.d.c, global3.b.c, 3512u, global3.b.c), vec4<u32>(var_0.x, global3.b.c, global3.d.c, 1u)), vec4<u32>(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.b.c, var_0.x, arg_0.c), vec3<u32>(0u, 4294967295u, 40657u)), func_2().c, 1u)), max(func_2().c, 4294967295u) & var_0.x), var_0.x);
    var var_3 = Struct_3(arg_0.a.x, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.c, _wgslsmith_dot_vec4_u32(select(vec4<u32>(global3.b.c, 4294967295u, global3.d.c, 32718u), vec4<u32>(var_0.x, arg_0.c, 1069u, 86091u), global3.d.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(43482u, var_0.x, 23458u, 27866u), vec4<u32>(arg_0.c, 48224u, global3.b.c, 2111u)))) >> (var_0.x % 32u), 29u)], _wgslsmith_f_op_f32(floor(var_1.x)), global3.d);
    return vec2<i32>(0i, _wgslsmith_add_i32(firstTrailingBit(global3.a), -_wgslsmith_mod_i32(1i, i32(-1i) * -44023i)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_mult_vec2_i32(abs(func_4(func_2()) << (~(~vec2<u32>(global3.d.c, 4294967295u)) % vec2<u32>(32u))), reverseBits(vec2<i32>(global3.a, ~24847i)));
    var var_1 = min(vec3<i32>(1i, ~_wgslsmith_div_i32(0i, -arg_0.a.x), ~(-60557i)), global3.d.a.xxy);
    global2 = ~_wgslsmith_dot_vec2_i32(arg_0.a.xw, func_2().a.zy) << ((firstTrailingBit(0u) << (global3.d.c % 32u)) % 32u);
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d.d, -505f, 808f, arg_0.e.x)) - vec4<f32>(arg_0.d, 339f, arg_0.d, -877f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1676f, 1046f, arg_0.d, 1040f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_0.d, arg_0.d, arg_0.d) + vec4<f32>(global3.d.d, global3.b.d, global3.b.d, arg_0.e.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-617f, -1246f, global3.c, -1256f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.x, -904f, global3.c, -746f))))))));
    let var_3 = global3.d.b.x;
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    var var_0 = vec2<u32>(global3.b.c, global3.d.c);
    var var_1 = global0[_wgslsmith_index_u32(global3.d.c, 17u)];
    var_0 = _wgslsmith_mod_vec2_u32(min(vec2<u32>(0u, 4294967295u >> (var_1.b.c % 32u)), select(vec2<u32>(func_1(global4[_wgslsmith_index_u32(global3.b.c, 29u)], global3.d.a.x), _wgslsmith_add_u32(var_1.d.c, var_1.d.c)), _wgslsmith_add_vec2_u32(abs(vec2<u32>(6219u, global3.d.c)), reverseBits(vec2<u32>(4294967295u, 6330u))), global3.b.b.zy)), vec2<u32>(_wgslsmith_mod_u32(var_1.b.c, ~(~1u)), 1u));
    var var_2 = var_1.d;
    var var_3 = func_2();
    global3 = Struct_3(~var_3.a.x, Struct_1(~vec4<i32>(~(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.d.a.x, global3.a), global3.b.a.zw), max(0i, global3.a), -1i ^ u_input.a), var_3.b, ~(~var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -564f)), var_2.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.d, _wgslsmith_f_op_f32(f32(-1f) * -668f), true))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.d, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - func_2().e.x), 1646f)), var_1.c, _wgslsmith_f_op_f32(abs(1961f)), _wgslsmith_f_op_f32(-var_1.d.e.x)));
}

