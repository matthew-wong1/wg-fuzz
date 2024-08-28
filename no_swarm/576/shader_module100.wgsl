struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(1u, 88631u, 4294967295u, 27134u, 100981u, 0u, 12582u, 73254u, 4294967295u, 21060u, 6043u, 1u, 98569u, 0u, 4294967295u);

var<private> global1: f32;

var<private> global2: Struct_5 = Struct_5(vec2<bool>(true, true), vec3<f32>(1655f, -184f, -1873f), Struct_2(134f, true));

var<private> global3: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(5318i, 2147483647i), vec2<i32>(37268i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(6524i, 0i));

var<private> global4: array<vec3<bool>, 26>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec3<f32> {
    global0 = array<u32, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1185f)), global2.b.x)), _wgslsmith_f_op_f32(round(1f)), global2.c.a));
    let var_1 = !any(select(vec4<bool>(31555u <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 15u)], global2.c.b, global2.a.x == global2.a.x, true), select(vec4<bool>(false, global2.c.b, global2.c.b, global2.c.b), select(vec4<bool>(global2.c.b, true, global2.a.x, false), vec4<bool>(global2.a.x, true, true, false), vec4<bool>(global2.a.x, global2.a.x, false, true)), vec4<bool>(global2.c.b, global2.a.x, false, global2.a.x)), vec4<bool>(true, true, global2.a.x, any(global4[_wgslsmith_index_u32(39157u, 26u)]))));
    global4 = array<vec3<bool>, 26>();
    let var_2 = global2.c;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.zzw - vec3<f32>(-2380f, global2.c.a, 779f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1594f, var_0.x) * _wgslsmith_div_f32(global2.c.a, var_2.a)) - _wgslsmith_f_op_f32(global2.c.a * -1000f)), -746f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - global2.b.x)));
}

fn func_2(arg_0: vec4<f32>) -> vec3<f32> {
    var var_0 = arg_0;
    global1 = global2.b.x;
    return _wgslsmith_f_op_vec3_f32(func_3());
}

fn func_1(arg_0: vec4<bool>) -> Struct_4 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.c.a + _wgslsmith_f_op_f32(abs(-1077f)))))) + global2.c.a);
    global0 = array<u32, 15>();
    let var_0 = 0i;
    let var_1 = -(_wgslsmith_div_vec4_i32(~(vec4<i32>(15448i, var_0, var_0, var_0) << (vec4<u32>(62087u, 1u, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)]) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, -7181i, var_0), vec4<i32>(1i, -2147483647i, -8510i, -2147483647i)), ~vec4<i32>(0i, -27127i, -27090i, 36019i))) << (~_wgslsmith_mult_vec4_u32(u_input.a, select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 3824u, 4294967295u, 1u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)], 15u)], 15u)], 15u)], 0u, u_input.a.x), arg_0)) % vec4<u32>(32u)));
    var var_2 = Struct_5(select(global2.a, vec2<bool>(true, global2.c.b), arg_0.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, -1391f, global2.c.a, global2.c.a))))))), Struct_2(-1724f, arg_0.x));
    return Struct_4(global2.c);
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global3 = array<vec2<i32>, 4>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a.a))))), false);
    global4 = array<vec3<bool>, 26>();
    let var_1 = Struct_4(global2.c);
    var var_2 = all(!(!vec3<bool>(false, func_1(vec4<bool>(global2.a.x, true, var_0.b, true)).a.b, var_0.b)));
    return Struct_2(var_1.a.a, select(9519u > ~(global0[_wgslsmith_index_u32(u_input.a.x, 15u)] ^ 1u), true, var_1.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 15>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1693f * global2.b.x)))));
    global2 = Struct_5(global2.a, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-639f - global2.b.x))), global2.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(849f, var_0)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.c.a, global2.b.x)) * _wgslsmith_div_f32(772f, global2.b.x))))), func_4(func_1(vec4<bool>(global2.a.x, true, true, global2.c.b))));
    let var_1 = u_input.a.xyz;
    var var_2 = global2.b;
    let var_3 = ~min(~firstTrailingBit(38147u) << (firstTrailingBit(1u) % 32u), ~87135u);
    var var_4 = ~(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-45933i, 0i, 2147483647i, 2147483647i), vec4<i32>(51566i, -8609i, -1i, -1i), vec4<bool>(global2.a.x, true, false, true)), vec4<i32>(64962i, 6315i, -9735i, -28009i)), ~(vec4<i32>(1i, 1i, -5944i, 0i) >> (u_input.a % vec4<u32>(32u)))) << (u_input.a % vec4<u32>(32u)));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(select(vec4<bool>(global2.a.x, true, false, false), vec4<bool>(true, global2.a.x, false, global2.a.x), false)).a.a)) + var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(9603i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -312f), -804f, -696f, -277f), vec3<i32>(~min(var_4.x, 0i), var_4.x, abs(var_4.x)), -vec3<i32>(var_4.x & min(var_4.x, -20581i), min(var_4.x, -9387i) ^ var_4.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.x, var_4.x, var_4.x, var_4.x), vec4<i32>(var_4.x, 18338i, var_4.x, var_4.x))));
}

