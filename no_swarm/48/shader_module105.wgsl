struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(89807u, 90572u, 58366u, 0u);

var<private> global1: array<f32, 29> = array<f32, 29>(-1998f, 463f, -1418f, 570f, 351f, -1093f, -125f, 1177f, -442f, -1036f, 1975f, 186f, -772f, -581f, -1657f, -1217f, 329f, 1163f, -1000f, -1308f, 1056f, -711f, -1476f, -747f, 934f, 828f, 992f, -427f, 433f);

var<private> global2: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(0u, 74213u, 46927u, 1u), vec4<u32>(6364u, 37825u, 0u, 44871u), vec4<u32>(4294967295u, 96161u, 41291u, 28216u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(0u, 63775u, 1u, 1u));

var<private> global3: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = 17516i;
    global2 = array<vec4<u32>, 5>();
    global1 = array<f32, 29>();
    var var_1 = 1087f;
    let var_2 = vec4<i32>(global3.x, 1i, global3.x, 28714i);
    return countOneBits(31611u);
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: vec2<f32>) -> bool {
    var var_0 = arg_0.d.d;
    let var_1 = arg_0;
    var var_2 = vec3<f32>(var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.x * -168f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.d.b))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1285f))))));
    let var_3 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(global3.x, arg_0.d.a, 1i) & ~_wgslsmith_div_vec3_i32(vec3<i32>(699i, var_1.a.b, 30413i), vec3<i32>(var_1.d.c.b, -1i, var_1.a.b)), firstLeadingBit(vec3<i32>(var_1.a.b, ~arg_0.d.c.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, -55799i, arg_0.a.b, global3.x), vec4<i32>(0i, arg_0.d.a, var_1.a.b, global3.x))))), -_wgslsmith_div_vec3_i32(min(vec3<i32>(var_1.a.b, 2147483647i, global3.x) & vec3<i32>(2147483647i, var_1.d.c.b, 13474i), vec3<i32>(arg_0.d.c.b, 18563i, arg_0.d.c.b) << (var_1.b.wxy % vec3<u32>(32u))), vec3<i32>(-1i) * -vec3<i32>(52907i, 0i, arg_0.d.c.b)));
    let var_4 = var_3;
    return 1u > func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(2687f, -515f)), 2753f));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_4) -> i32 {
    global2 = array<vec4<u32>, 5>();
    let var_0 = abs(vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(u_input.a.x | 32410u, 4u)]) << (_wgslsmith_clamp_u32(~u_input.a.x, reverseBits(arg_2.e), 0u) % 32u), arg_2.b.x, abs(~54465u)));
    var var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a.a))), -arg_0.x, ~countOneBits(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 4u)], u_input.a.x)), min(firstTrailingBit(var_0), countOneBits(var_0))), _wgslsmith_clamp_vec4_u32(firstTrailingBit(arg_2.b), global2[_wgslsmith_index_u32(~16822u, 5u)], global2[_wgslsmith_index_u32(~reverseBits(arg_2.e), 5u)]), arg_2.d.d.x, arg_2.d, var_0.x);
    var var_2 = var_1.d.c;
    global1 = array<f32, 29>();
    return var_1.a.b | _wgslsmith_dot_vec2_i32(~abs(-arg_0.yz), arg_0.xy & arg_0.xy);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(-1216f, abs(-_wgslsmith_dot_vec4_i32(-vec4<i32>(global3.x, arg_2.a, arg_2.c.b, arg_2.a), vec4<i32>(global3.x, global3.x, arg_2.a, global3.x) & vec4<i32>(43089i, arg_2.c.b, arg_2.a, 29025i))), arg_2.c.c, vec4<u32>(1u, reverseBits(global0[_wgslsmith_index_u32(u_input.a.x, 4u)]) << (~countOneBits(arg_2.c.d.x) % 32u), 1u, ~u_input.a.x));
    let var_1 = var_0.b;
    var var_2 = ~0i ^ var_1;
    let var_3 = ~vec2<u32>(56655u, ~(~select(u_input.a.x, 0u, true)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(30929u, 4u)], 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 29u)]))), _wgslsmith_div_f32(-1160f, _wgslsmith_f_op_f32(ceil(249f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-322f, -398f)) * global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], 4u)]), 29u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1638f, -1000f, 1787f, -614f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 29u)], -423f, global1[_wgslsmith_index_u32(22721u, 29u)], -301f)))), false)), vec4<bool>(any(vec4<bool>(all(vec3<bool>(false, true, true)), true, false, func_1(Struct_4(Struct_1(862f, -19556i, 1u, vec4<u32>(1u, 1u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 5u)], true, Struct_2(0i, global1[_wgslsmith_index_u32(4294967295u, 29u)], Struct_1(706f, 12406i, 1390u, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(365u, 4u)], 5u)]), vec3<bool>(false, true, false)), u_input.a.x), true, vec2<f32>(global1[_wgslsmith_index_u32(0u, 29u)], 1352f)))), select(true, !all(vec4<bool>(true, true, true, true)), !(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)] < global0[_wgslsmith_index_u32(979u, 4u)])), true, global3.x <= ~2147483647i), Struct_2(_wgslsmith_mult_i32(countOneBits(global3.x << (u_input.a.x % 32u)), func_3(vec3<i32>(2986i, 1i, 2147483647i), 1i, Struct_4(Struct_1(845f, -1i, 4294967295u, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], global0[_wgslsmith_index_u32(29867u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 0u)), vec4<u32>(0u, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), true, Struct_2(0i, 602f, Struct_1(1000f, global3.x, 0u, global2[_wgslsmith_index_u32(12754u, 5u)]), vec3<bool>(false, true, true)), 0u)) ^ global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~10190u, 29u)] * global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 29u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(5852u, 29u)] - -1893f))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-551f, global1[_wgslsmith_index_u32(13799u, 29u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 29u)])), -2147483647i, ~(~u_input.a.x), global2[_wgslsmith_index_u32(7471u ^ u_input.a.x, 5u)]), vec3<bool>(true, true, true)));
    let var_1 = Struct_2(abs(~var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2584f)))), Struct_1(981f, var_0.a, ~(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)], global0[_wgslsmith_index_u32(1u, 4u)])), vec4<u32>(14673u, firstTrailingBit(25333u) | _wgslsmith_mod_u32(1u, var_0.c.c), u_input.a.x, 35364u)), !var_0.d);
    var var_2 = var_0.d.x;
    global2 = array<vec4<u32>, 5>();
    let var_3 = var_1.d.x;
    global2 = array<vec4<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.d.wwy);
}

