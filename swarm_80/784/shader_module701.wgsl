struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 30> = array<bool, 30>(false, false, true, false, false, true, true, true, false, true, true, true, false, false, true, true, true, false, true, false, false, false, true, false, true, true, true, false, true, true);

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, vec2<f32>(490f, -406f), -400f), Struct_1(false, vec2<f32>(1183f, 1000f), 353f), Struct_1(false, vec2<f32>(-298f, 1140f), 1174f), Struct_1(true, vec2<f32>(1898f, 1000f), -1303f), Struct_1(true, vec2<f32>(-113f, 1265f), -778f), Struct_1(true, vec2<f32>(532f, -543f), 1329f), Struct_1(false, vec2<f32>(-1237f, -1956f), 1506f), Struct_1(false, vec2<f32>(-1711f, -2034f), -437f), Struct_1(false, vec2<f32>(1000f, -1451f), 1948f));

var<private> global3: vec4<i32>;

var<private> global4: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<i32> {
    global4 = u_input.b.x;
    global1 = array<bool, 30>();
    var var_0 = Struct_3(Struct_2(u_input.d.x, Struct_1(true, _wgslsmith_f_op_vec2_f32(-arg_1.b), -1000f), global2[_wgslsmith_index_u32(arg_0.x, 9u)]), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.c, arg_1.b.x, arg_1.c), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1138f, arg_1.b.x, arg_1.c) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, arg_1.c, 1257f) - vec3<f32>(arg_1.c, arg_1.c, arg_1.c))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, 1000f, arg_1.b.x)))))))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b.x))), _wgslsmith_f_op_f32(-185f + _wgslsmith_f_op_f32(arg_1.b.x * -1000f))))), ~vec2<i32>(u_input.b.x, ~u_input.b.x), Struct_2(~(_wgslsmith_mult_u32(arg_0.x, 0u) >> (~1u % 32u)), Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.b, vec2<f32>(-2735f, arg_1.b.x), vec2<bool>(true, false))) - vec2<f32>(arg_1.c, 494f)), arg_1.b.x), Struct_1(!arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(940f))), 2048f)));
    var_0 = Struct_3(Struct_2(0u << ((_wgslsmith_sub_u32(var_0.e.a, 61162u) ^ firstLeadingBit(15309u)) % 32u), global2[_wgslsmith_index_u32(4294967295u, 9u)], var_0.e.c), vec3<f32>(-175f, var_0.b.x, _wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(-287f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(-arg_1.b.x)))), _wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, var_0.d.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, u_input.b.x), global3.xy | u_input.b.zw), -global3.zx << (~u_input.c.xz % vec2<u32>(32u)))), var_0.a);
    global1 = array<bool, 30>();
    return u_input.b;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> f32 {
    global1 = array<bool, 30>();
    global3 = vec4<i32>(-global0.x, global0.x >> (35748u % 32u), _wgslsmith_clamp_i32(firstTrailingBit(-1i) >> (u_input.c.x % 32u), _wgslsmith_sub_i32(2147483647i, -arg_1), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global0.x, global0.x)), select(vec2<i32>(2147483647i, u_input.b.x), global3.zy, true))), _wgslsmith_add_i32(-33929i, _wgslsmith_div_i32(global0.x, global3.x) ^ _wgslsmith_mult_i32(global3.x, -1i))) | vec4<i32>(1i, -2147483647i, -36440i, -1i);
    global3 = ~(-select(-u_input.b, func_3(vec4<u32>(50180u, u_input.c.x, 1u, u_input.c.x), Struct_1(false, arg_0.b, arg_0.c)) << ((vec4<u32>(u_input.a.x, u_input.a.x, 38253u, u_input.d.x) & vec4<u32>(u_input.d.x, 0u, 31550u, u_input.d.x)) % vec4<u32>(32u)), vec4<bool>(false, arg_2, true, arg_2)));
    let var_0 = u_input.b.x;
    let var_1 = -1684f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_1)), -1179f))))));
}

fn func_1() -> Struct_1 {
    global3 = u_input.b;
    global1 = array<bool, 30>();
    return Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -864f) + _wgslsmith_f_op_f32(func_2(Struct_1(true, vec2<f32>(-308f, 364f), 296f), u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 30u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-652f)) - _wgslsmith_f_op_f32(abs(-1162f))))), _wgslsmith_f_op_f32(func_2(Struct_1(any(!vec2<bool>(global1[_wgslsmith_index_u32(17658u, 30u)], true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-357f, 1031f), vec2<f32>(-299f, 785f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(790f))))), u_input.b.x, all(!vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 30u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(abs(1u), func_1(), Struct_1(all(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], true), !vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 30u)]), true)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-341f, -483f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, (~vec4<u32>(2923u, 12108u, var_0.a, 0u) | _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, u_input.a.x, var_0.a, 67890u), ~vec4<u32>(14813u, 35884u, var_0.a, 7493u))) & vec4<u32>(var_0.a, max(var_0.a, _wgslsmith_div_u32(var_0.a, var_0.a)), 1u, 35049u), -169f, vec4<u32>(_wgslsmith_sub_u32(~var_0.a, ~min(20397u, var_0.a)), 82979u, 0u, _wgslsmith_mod_u32(1u, 1u)));
}

