struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(35118u, 70077u, 4294967295u, 4294967295u), vec4<u32>(33677u, 0u, 34975u, 0u), vec4<u32>(0u, 9114u, 10341u, 0u), vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(4294967295u, 109688u, 62013u, 4294967295u), vec4<u32>(15445u, 58531u, 0u, 0u), vec4<u32>(14349u, 3808u, 19200u, 4294967295u), vec4<u32>(4294967295u, 30037u, 29164u, 78731u), vec4<u32>(0u, 0u, 4294967295u, 9527u), vec4<u32>(57232u, 1u, 0u, 1u), vec4<u32>(110606u, 38251u, 0u, 58299u), vec4<u32>(33513u, 60350u, 83394u, 0u), vec4<u32>(0u, 29641u, 1u, 1u), vec4<u32>(7070u, 1u, 1u, 90030u), vec4<u32>(0u, 11909u, 1u, 11276u), vec4<u32>(23737u, 4294967295u, 4294967295u, 30403u), vec4<u32>(0u, 4294967295u, 50727u, 53013u), vec4<u32>(42150u, 4294967295u, 37001u, 30965u), vec4<u32>(19702u, 1u, 0u, 1u));

var<private> global1: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-304f, 1000f), vec2<f32>(-429f, 370f), vec2<f32>(-1510f, -544f), vec2<f32>(535f, 408f), vec2<f32>(-710f, -155f), vec2<f32>(250f, -335f));

var<private> global2: Struct_1;

var<private> global3: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-arg_1);
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(sign(var_0.x))) - global2.d), _wgslsmith_f_op_f32(select(arg_1.x, 576f, true))), arg_0, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c, select(_wgslsmith_div_u32(u_input.c, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(61452u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)), all(vec3<bool>(true, false, true)))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.c), u_input.c & 49803u, u_input.c)), 6u)], Struct_1(arg_2, any(!select(vec2<bool>(false, false), vec2<bool>(global3.a.d.b, true), vec2<bool>(global2.b, global3.a.b.b))), any(select(select(vec3<bool>(false, global3.b.b.c, arg_0.c), vec3<bool>(arg_0.c, false, global3.a.d.b), global2.b), !vec3<bool>(global3.a.d.b, global3.b.d.c, false), true)), var_0.x));
    let var_2 = _wgslsmith_add_i32(arg_0.a, 1i);
    let var_3 = Struct_3(global3.a, global3.a, reverseBits(select(abs(global3.b.d.a), global3.c, true)));
    let var_4 = vec2<bool>(!(!any(vec4<bool>(arg_0.c, global3.a.b.b, var_3.b.d.c, true))), arg_0.b & false);
    return u_input.c;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    global0 = array<vec4<u32>, 19>();
    global3 = Struct_3(global3.a, global3.b, 9041i);
    let var_0 = _wgslsmith_sub_vec3_u32(~vec3<u32>(2402u, abs(u_input.c) ^ reverseBits(u_input.c), func_3(Struct_1(u_input.a, false, global2.b, global3.a.b.d), arg_0, global2.a) ^ u_input.c), vec3<u32>(~firstLeadingBit(~25804u), ~(~1u), ~(~func_3(global3.b.b, vec4<f32>(1000f, -336f, global2.d, global2.d), u_input.b))));
    let var_1 = vec2<u32>(40099u & (~_wgslsmith_div_u32(var_0.x, var_0.x) | 1u), ~u_input.c ^ 0u);
    let var_2 = i32(-1i) * -global2.a;
    return Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3.a.b.d)), global3.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global2.d)))))), Struct_1(-20387i, !any(vec2<bool>(false, false)) != true, true | global3.b.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1204f))))), global3.b.c, global3.b.d);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c, firstTrailingBit(4294967295u)), 19u)];
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1310f, -313f, global3.b.b.d, global3.b.b.d), vec4<f32>(-158f, global3.b.d.d, global3.a.c.x, arg_0.d), vec4<bool>(arg_0.b, arg_0.c, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, global2.d, -867f, global3.a.d.d) * vec4<f32>(global2.d, -738f, arg_0.d, global2.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1178f, -528f, -1546f, -694f) * vec4<f32>(471f, global3.b.d.d, 1000f, arg_0.d))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.b.d, -273f, arg_0.d, global3.a.c.x))));
    let var_2 = var_0.zxz;
    let var_3 = Struct_3(var_1, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.d.d, -1681f, -1343f, 1000f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, 331f, -531f, var_1.c.x), vec4<f32>(1000f, global2.d, global3.b.d.d, global2.d), global2.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_0.d, arg_0.d, -1207f), vec4<f32>(global3.a.c.x, global2.d, var_1.d.d, global3.a.a.x)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.d, -976f, 948f, var_1.c.x)))))), select(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1646i, 51722i, global2.a, 27193i) & vec4<i32>(arg_0.a, arg_1, 55930i, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 5281i, -2147483647i, u_input.a), vec4<i32>(2116i, -15616i, 1i, -4422i))), false) ^ var_1.b.a);
    let var_4 = ~max(~u_input.c >> (var_2.x % 32u), 6998u);
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.d * -747f), _wgslsmith_f_op_f32(-var_1.c.x), global2.d, _wgslsmith_f_op_f32(round(430f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.d.d, arg_0.d, -1642f, 166f)))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!global3.a.b.b, true, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-630f, global2.d)), -340f))) >= global3.a.a.x);
    var var_1 = global1[_wgslsmith_index_u32(~23485u, 6u)];
    let var_2 = countOneBits(~(-6192i)) << (select(firstTrailingBit(~u_input.c) >> (abs(u_input.c) % 32u), ~_wgslsmith_sub_u32(~u_input.c, ~35536u), _wgslsmith_f_op_f32(floor(global3.a.a.x)) < 613f) % 32u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.b.d, global2.d, global3.b.a.x, 1000f) + vec4<f32>(486f, global3.b.b.d, var_1.x, 1064f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.d.d, global2.d, var_1.x, -1170f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, global2.d, 757f)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(1035f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, -1429f))), var_1.x, -284f)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.xz - global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c << (79962u % 32u), u_input.c), 6u)]) * vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) * -254f))), func_1(global3.b.b, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1157f, var_1.x))))), func_1(global3.b.d, 2147483647i));
    var var_5 = -912f;
    let var_6 = func_2(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1016f)), _wgslsmith_div_f32(global2.d, 413f))))), _wgslsmith_f_op_f32(sign(func_1(Struct_1(global3.a.d.a, global2.c, true, -182f), 1i).d)))).d;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(_wgslsmith_mult_i32(var_4.b.a, 50845i) << (0u % 32u), abs(var_4.b.a), ~(~(-1i)))));
}

