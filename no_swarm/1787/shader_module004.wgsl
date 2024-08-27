struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: u32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: bool;

var<private> global2: Struct_2;

var<private> global3: array<i32, 19>;

var<private> global4: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: u32) -> u32 {
    let var_0 = Struct_4(Struct_2(global2.a), vec2<u32>(u_input.e.x, countOneBits(_wgslsmith_mod_u32(u_input.e.x & 0u, 4294967295u | arg_3))), Struct_2(global2.a), 28510u, select(vec2<bool>(global4.x, !any(vec4<bool>(global4.x, global4.x, true, true))), !(!vec2<bool>(false, global4.x)), select(select(vec2<bool>(true, global4.x), !vec2<bool>(global4.x, global4.x), any(vec2<bool>(global4.x, global4.x))), select(vec2<bool>(false, true), !vec2<bool>(global4.x, false), vec2<bool>(true, global4.x)), any(vec3<bool>(global4.x, global4.x, global4.x)))));
    global0 = array<f32, 25>();
    let var_1 = Struct_3(Struct_1(var_0.a.a.a, vec4<f32>(1f, 1f, 1f, 1f), countOneBits(u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1512f, global0[_wgslsmith_index_u32(1u, 25u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1503f))));
    let var_2 = _wgslsmith_mult_u32(9755u, abs(u_input.e.x));
    var var_3 = ~vec2<i32>(1i, _wgslsmith_dot_vec4_i32(global2.a.c, var_0.c.a.c));
    return _wgslsmith_clamp_u32(var_0.c.a.a, var_1.a.a, u_input.e.x);
}

fn func_2() -> u32 {
    let var_0 = select(firstTrailingBit(global2.a.c), u_input.c, true);
    global3 = array<i32, 19>();
    let var_1 = Struct_3(global2.a);
    global4 = vec2<bool>(!global4.x, select(_wgslsmith_div_u32(func_3(112f, vec2<i32>(global2.a.c.x, 1i), var_1.a.b, global2.a.a), u_input.e.x) > ((34514u >> (var_1.a.a % 32u)) << (~u_input.e.x % 32u)), all(vec2<bool>(false, !global4.x)), global4.x));
    let var_2 = u_input.e;
    return func_3(218f, ~_wgslsmith_clamp_vec2_i32(var_0.wy, global2.a.c.yx, var_1.a.c.yz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1246f - global0[_wgslsmith_index_u32(31458u, 25u)]), -2791f, -1046f, _wgslsmith_f_op_f32(-1335f - 493f))))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_1.a.a, 4294967295u, 0u, 4294967295u) << (vec4<u32>(8778u, 1u, var_2.x, var_1.a.a) % vec4<u32>(32u))), ~(~vec4<u32>(var_2.x, var_2.x, global2.a.a, var_2.x))), 2220u));
}

fn func_1() -> Struct_5 {
    global1 = global0[_wgslsmith_index_u32(4294967295u ^ global2.a.a, 25u)] >= _wgslsmith_div_f32(356f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 25u)] * -1578f)) - -2041f));
    var var_0 = u_input.d.xx;
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(14532u, 2851u, 32397u), vec3<u32>(u_input.e.x, 0u, 0u))), vec3<u32>(u_input.e.x, ~(~u_input.e.x), _wgslsmith_mult_u32(func_2(), reverseBits(29305u)))) & (abs(_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(15925u, 4294967295u, global2.a.a), vec3<u32>(global2.a.a, u_input.e.x, 99074u)))) & 4294967295u), 19u)];
    let var_2 = -26477i << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.a.a, 0u, 0u, 37416u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 97767u, 7348u, 19828u), vec4<u32>(global2.a.a, 76655u, 0u, 1u)), min(vec4<u32>(u_input.e.x, 7213u, global2.a.a, u_input.e.x), vec4<u32>(51620u, 0u, u_input.e.x, 4294967295u))), abs(vec4<u32>(3147u, global2.a.a, global2.a.a, u_input.e.x)) & vec4<u32>(0u, u_input.e.x, 21577u, 87998u)), firstTrailingBit(22200u)) % 32u);
    global1 = true;
    return Struct_5(Struct_2(Struct_1(global2.a.a, global2.a.b, global2.a.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1339f, global0[_wgslsmith_index_u32(global2.a.a, 25u)])), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], -1699f)), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23727u, 25u)]))))), global4.x, global2.a.a >= _wgslsmith_div_u32(global2.a.a, ~42490u), Struct_4(Struct_2(Struct_1(~4294967295u, _wgslsmith_div_vec4_f32(vec4<f32>(-1338f, -1091f, -319f, global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), global2.a.b), _wgslsmith_sub_vec4_i32(u_input.b, global2.a.c), vec2<f32>(-131f, global2.a.e), 1000f)), vec2<u32>(abs(58707u), 4294967295u), Struct_2(Struct_1(global2.a.a << (17937u % 32u), global2.a.b, -vec4<i32>(7015i, 1i, var_2, -4324i), _wgslsmith_f_op_vec2_f32(global2.a.b.xw * global2.a.d), global0[_wgslsmith_index_u32(~41480u, 25u)])), 1u, select(vec2<bool>(all(vec3<bool>(false, global4.x, false)), true), !select(vec2<bool>(true, global4.x), vec2<bool>(false, false), vec2<bool>(global4.x, global4.x)), select(select(vec2<bool>(global4.x, false), vec2<bool>(false, global4.x), vec2<bool>(true, false)), vec2<bool>(true, true), true))), 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec3<u32>(4294967295u, global2.a.a >> (9321u % 32u), _wgslsmith_add_u32(_wgslsmith_mult_u32(24748u, 43915u), global2.a.a >> (var_0.d.b.x % 32u)));
    let var_2 = func_1().b || !all(!var_0.d.e);
    var var_3 = global2.a;
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-583f)) - _wgslsmith_f_op_f32(select(319f, global0[_wgslsmith_index_u32(var_3.a, 25u)], false)))))))));
    global3 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(5536u, ~(-select(vec3<i32>(9404i, 0i, var_3.c.x), vec3<i32>(13966i, 24525i, -40062i) >> (vec3<u32>(var_0.a.a.a, 1u, var_0.d.c.a.a) % vec3<u32>(32u)), global4.x)));
}

