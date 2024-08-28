struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9>;

var<private> global1: array<i32, 18>;

var<private> global2: array<Struct_3, 13>;

var<private> global3: array<f32, 17> = array<f32, 17>(810f, 1056f, -150f, 382f, 1000f, 1079f, 1000f, -1179f, -1000f, -751f, 1411f, -196f, 160f, -1263f, -1139f, -431f, 601f);

var<private> global4: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = -1i;
    var var_1 = _wgslsmith_clamp_i32(1i, global1[_wgslsmith_index_u32(30447u, 18u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.b, u_input.a), 18u)]);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -1059f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.a, 17u)]));
    global3 = array<f32, 17>();
    global1 = array<i32, 18>();
    return reverseBits(-((vec2<i32>(global1[_wgslsmith_index_u32(105147u, 18u)], 0i) << (vec2<u32>(arg_0.c.a, 1u) % vec2<u32>(32u))) ^ countOneBits(vec2<i32>(arg_0.d, arg_0.d)))) & vec2<i32>(26307i, 1i << (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, arg_0.c.a), vec3<u32>(arg_0.a, 21135u, 0u))) % 32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    global2 = array<Struct_3, 13>();
    var var_0 = vec4<bool>(all(!vec2<bool>(any(vec2<bool>(true, true)), true)), reverseBits(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], -1i) | _wgslsmith_dot_vec2_i32(arg_0, arg_0)) >= -83761i, true, arg_0.x < -1i);
    global4 = 4294967295u;
    global1 = array<i32, 18>();
    global1 = array<i32, 18>();
    return 11011u;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    global4 = _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a ^ u_input.a, u_input.a), func_4(_wgslsmith_clamp_vec2_i32(-func_3(Struct_2(55144u, global3[_wgslsmith_index_u32(68679u, 17u)], Struct_1(u_input.a, vec3<f32>(global3[_wgslsmith_index_u32(47607u, 17u)], -453f, global3[_wgslsmith_index_u32(32110u, 17u)])), 1i), Struct_4(vec2<bool>(arg_0.x, arg_0.x), 1u, 1623f)), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], min(global1[_wgslsmith_index_u32(u_input.a, 18u)], -6227i)), max(firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)])), vec2<i32>(global1[_wgslsmith_index_u32(69519u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)]) & vec2<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a, 18u)]))), firstTrailingBit(global1[_wgslsmith_index_u32(66855u, 18u)])));
    let var_0 = !(!select(select(vec4<bool>(false, arg_0.x, arg_0.x, true), !vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), false), !(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), !select(vec4<bool>(false, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, false, true))));
    let var_1 = vec2<u32>(countOneBits(20639u), ~58653u);
    global1 = array<i32, 18>();
    global3 = array<f32, 17>();
    return any(arg_0);
}

fn func_1() -> Struct_2 {
    var var_0 = !select(vec2<bool>(true, true & (global3[_wgslsmith_index_u32(0u, 17u)] >= -276f)), vec2<bool>(true, true), true | any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))));
    let var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(6160u, u_input.a, 4294967295u) >> (abs(firstLeadingBit(vec3<u32>(39570u, 51848u, u_input.a))) % vec3<u32>(32u)), (reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a)) ^ (vec3<u32>(6642u, u_input.a, u_input.a) >> (vec3<u32>(0u, u_input.a, 0u) % vec3<u32>(32u)))) & ~(~vec3<u32>(4294967295u, 1u, u_input.a))), select(~(~vec3<u32>(u_input.a, 0u, u_input.a) ^ ~vec3<u32>(u_input.a, 1u, u_input.a)), vec3<u32>(4294967295u, u_input.a, ~u_input.a), select(vec3<bool>(1166f <= global3[_wgslsmith_index_u32(u_input.a, 17u)], func_2(vec3<bool>(true, var_0.x, var_0.x)), false), select(vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(true, var_0.x, true), any(vec2<bool>(true, true))), var_0.x)));
    global3 = array<f32, 17>();
    var var_2 = global0[_wgslsmith_index_u32(select(u_input.a, abs(u_input.a), !(!any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(var_0.x, var_0.x))))), 9u)];
    var var_3 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, global3[_wgslsmith_index_u32(var_1.x, 17u)], 1025f)) * vec3<f32>(635f, -845f, global3[_wgslsmith_index_u32(54877u, 17u)])))));
    return Struct_2(4294967295u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(var_1.x, 17u)])) + -587f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(59032u, 17u)] * _wgslsmith_f_op_f32(var_2.c * var_3.b.x)), var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x - var_2.c) * -238f)))), Struct_1(select(4294967295u, _wgslsmith_sub_u32(69603u, firstLeadingBit(var_2.b)), 2147483647i >= firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 18u)])), var_3.b), global1[_wgslsmith_index_u32(u_input.a, 18u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(any(vec2<bool>(true, true)) && true, true), vec2<bool>(true, true), !(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)]) == _wgslsmith_div_i32(-2147483647i, 10882i)) || true);
    let var_1 = var_0.x;
    let var_2 = func_1();
    let var_3 = Struct_3(func_4(_wgslsmith_add_vec2_i32(~vec2<i32>(-1i, -2147483647i), firstLeadingBit(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)]) << (vec2<u32>(114844u, 10501u) % vec2<u32>(32u)))), _wgslsmith_div_i32(var_2.d, ~(-20073i)) | abs(i32(-1i) * -1i)), vec3<bool>(any(select(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true)), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), global1[_wgslsmith_index_u32(1u, 18u)] < var_2.d)), func_2(!(!vec3<bool>(var_0.x, false, true))), !(!var_0.x)), vec3<i32>(func_1().d, 10490i, ~_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, var_2.d), vec2<i32>(-2147483647i, var_2.d))));
    let var_4 = vec3<i32>(countOneBits(global1[_wgslsmith_index_u32(var_3.a & max(0u, ~1u), 18u)]), -2147483647i, -func_3(Struct_2(~43674u, _wgslsmith_f_op_f32(select(933f, var_2.b, var_0.x)), var_2.c, var_2.d), Struct_4(vec2<bool>(true, true), u_input.a & 0u, 1737f)).x);
    let var_5 = 1u;
    let var_6 = var_2.a;
    var_0 = vec2<bool>(false, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec2_i32(firstLeadingBit(var_3.c.xx), var_4.xy ^ var_3.c.yx), ~var_3.c.xx, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, -500f, false)))), func_1().c.b.x));
}

