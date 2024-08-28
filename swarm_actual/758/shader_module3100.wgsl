struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(1u, 10222u, 41471u, 0u, 4294967295u, 4294967295u, 1u, 900u, 48841u, 35703u, 1u);

var<private> global1: Struct_3 = Struct_3(vec2<u32>(24381u, 0u), Struct_1(vec3<f32>(-1120f, -493f, 1504f), vec4<f32>(-448f, -497f, 1075f, -543f)), false, vec4<i32>(-6015i, 2140i, -33566i, 0i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = 2147483647i;
    var var_1 = global1.c;
    global0 = array<u32, 11>();
    let var_2 = 1u << (1u % 32u);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-global1.b.a), vec4<f32>(-2306f, 1000f, -3401f, _wgslsmith_f_op_f32(round(global1.b.b.x))));
    return _wgslsmith_sub_i32(-746i, ~_wgslsmith_clamp_i32(global1.d.x, _wgslsmith_dot_vec2_i32(global1.d.yx, vec2<i32>(var_0, var_0)), _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(2147483647i, -2147483647i))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> bool {
    var var_0 = ~func_3();
    let var_1 = Struct_3(reverseBits(~(~vec2<u32>(31279u, global1.a.x))) ^ ~global1.a, global1.b, !all(vec2<bool>(true, true)) && (~u_input.b.x <= firstLeadingBit(1u >> (1u % 32u))), vec4<i32>(_wgslsmith_div_i32(-46885i, -2147483647i), _wgslsmith_mod_i32(global1.d.x, func_3()), -u_input.a, u_input.a));
    let var_2 = global1.b.b.yxz;
    var_0 = -u_input.d.x;
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.b.x, _wgslsmith_f_op_f32(global1.b.a.x - -177f), global1.b.a.x) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-570f, 1118f, global1.b.a.x) - vec3<f32>(global1.b.a.x, global1.b.b.x, global1.b.b.x))))), global1.b.a), vec4<f32>(global1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1713f, -1387f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(379f, global1.b.a.x) * _wgslsmith_f_op_f32(-756f - 1000f)))), global1.b.b.x));
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    let var_1 = arg_1;
    global1 = Struct_3(select(vec2<u32>(firstLeadingBit(_wgslsmith_add_u32(20911u, 95623u)), u_input.b.x), ~(~u_input.b.yy), select(arg_3, vec2<bool>(select(false, false, true), func_2(Struct_2(true), vec3<u32>(0u, global1.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(95783u, 11u)], 11u)]))), select(arg_3, vec2<bool>(false, arg_3.x), vec2<bool>(false, false)))), global1.b, !(abs(var_1.x) <= abs(u_input.d.x)), select(firstLeadingBit(vec4<i32>(firstLeadingBit(-38628i), -69455i, i32(-1i) * -44442i, ~u_input.c)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 39886i, u_input.d.x, -2147483647i), global1.d)) ^ -_wgslsmith_sub_vec4_i32(global1.d, vec4<i32>(0i, -25506i, -2056i, 66709i)), global1.c));
    return 4294967295u & _wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.b.x, ~u_input.e ^ ~38970u), _wgslsmith_dot_vec4_u32(vec4<u32>(34835u, 27129u, u_input.e, 11117u), vec4<u32>(arg_2, 0u, global1.a.x, global1.a.x) >> (vec4<u32>(8401u, 14861u, 8960u, 4286u) % vec4<u32>(32u))) | min(arg_2, select(1u, arg_2, arg_3.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = Struct_2(any(select(!select(vec4<bool>(false, global1.c, false, true), vec4<bool>(true, true, false, arg_3.a), vec4<bool>(global1.c, global1.c, global1.c, global1.c)), vec4<bool>(true, global1.c, true, arg_0.a.x < 1000f), vec4<bool>(arg_3.a, arg_3.a, false, all(vec2<bool>(true, global1.c))))));
    var var_1 = vec4<bool>(arg_0.b.x > arg_2.x, any(vec2<bool>(true, true)), var_0.a && any(!(!vec3<bool>(arg_3.a, var_0.a, global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) >= _wgslsmith_f_op_f32(-arg_2.x));
    var var_2 = global1.b.b;
    var var_3 = ~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(63310u, 54045u, global0[_wgslsmith_index_u32(global1.a.x, 11u)], u_input.e)) & vec4<u32>(u_input.b.x, 1u | arg_1.x, u_input.e & u_input.b.x, _wgslsmith_div_u32(global1.a.x, arg_1.x)), _wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(30737u, 1u, 0u, global1.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 3024u, 68330u, 0u), vec4<u32>(100418u, global1.a.x, 4294967295u, 15051u))));
    let var_4 = Struct_3(select(~vec2<u32>(global1.a.x, ~1u), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~var_3.yy, arg_1.yz), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21911u, 11u)], 11u)], global1.a.x) | vec2<u32>(0u, 42505u)), !var_1.wy), global1.b, !arg_3.a, vec4<i32>(-1i) * -(max(global1.d, vec4<i32>(u_input.d.x, -2147483647i, 0i, u_input.d.x)) << (vec4<u32>(u_input.b.x, var_3.x, 38421u, 1u) % vec4<u32>(32u))));
    return vec2<u32>(func_1(Struct_2(var_0.a), vec4<i32>(abs(u_input.a << (0u % 32u)), _wgslsmith_mult_i32(10041i, u_input.a) ^ var_4.d.x, 0i, func_3()), countOneBits(var_4.a.x), var_1.zw), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.a.x;
    global1 = Struct_3(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1232f, global1.b.a.x, -687f)), global1.b.b), vec3<u32>(func_1(Struct_2(false), vec4<i32>(1i, u_input.d.x, 14889i, u_input.a), 43021u, vec2<bool>(global1.c, global1.c)) | ~global0[_wgslsmith_index_u32(19918u, 11u)], ~(~global0[_wgslsmith_index_u32(1u, 11u)]), 4294967295u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1732f, -2124f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b.a.xx) * _wgslsmith_f_op_vec2_f32(-global1.b.a.zz)), any(vec2<bool>(global1.c, global1.c)))), Struct_2(!(!global1.c))), Struct_1(global1.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.b.b, vec4<f32>(global1.b.b.x, -338f, -493f, -1486f), select(false, true, global1.c))) + _wgslsmith_f_op_vec4_f32(-global1.b.b))), !global1.c, select(global1.d, _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_div_i32(-1i, 3474i), max(u_input.a, u_input.d.x), min(59531i, 1i)), global1.d), select(vec4<bool>(global1.c, !global1.c, true, !global1.c), !(!vec4<bool>(true, false, global1.c, global1.c)), select(vec4<bool>(global1.c, global1.c, global1.c, global1.c), vec4<bool>(false, false, true, false), select(global1.c, true, global1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer((global1.d.x << (global0[_wgslsmith_index_u32(0u, 11u)] % 32u)) << (~(~global0[_wgslsmith_index_u32(firstLeadingBit(global1.a.x), 11u)]) % 32u), -(~1i));
}

