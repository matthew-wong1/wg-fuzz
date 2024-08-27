struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 725f;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(true, vec4<bool>(true, true, true, true), vec3<f32>(1164f, -1278f, 331f), 89266i, false);

var<private> global3: Struct_3;

var<private> global4: u32 = 2361u;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)) - arg_0.a.a) * -468f));
    global4 = _wgslsmith_clamp_u32(0u, select(43065u, 68424u, true), 4361u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * -1499f))));
    var var_3 = max(4294967295u, arg_1.x);
    return false;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: i32) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_div_f32(1153f, global3.b.c.x));
    let var_1 = firstTrailingBit(max(_wgslsmith_sub_vec3_i32(vec3<i32>(-8839i, arg_2, 21636i), vec3<i32>(1i, 2147483647i, 0i)) << (vec3<u32>(global3.d.x, 4294967295u, 158u) % vec3<u32>(32u)), countOneBits(vec3<i32>(global3.b.d, u_input.a.x, 0i))) ^ vec3<i32>(-(i32(-1i) * -1i), ~(-2147483647i) | _wgslsmith_dot_vec4_i32(vec4<i32>(7232i, global2.d, 0i, 0i), vec4<i32>(global3.b.d, arg_2, arg_2, 2147483647i)), 5860i));
    global1 = Struct_1(all(!vec2<bool>(func_3(Struct_3(global3.a, global3.c, Struct_1(false, vec4<bool>(global3.e, false, true, global2.b.x), global3.b.c, 2147483647i, false), vec3<u32>(41358u, 4294967295u, 49179u), true), vec4<u32>(4294967295u, 18560u, global3.d.x, global3.d.x), false), false)), global1.b, vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(round(global2.c.x)), _wgslsmith_f_op_f32(-global2.c.x)), abs(~countOneBits(_wgslsmith_div_i32(var_1.x, -14598i))), global2.b.x);
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1304f, _wgslsmith_f_op_f32(-global1.c.x), global2.e)), 592f))), Struct_1(!(!global2.b.x), global2.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(min(1740f, global3.b.c.x)))), global2.d, false), Struct_1(true, !vec4<bool>(global2.c.x <= -1317f, !global1.a, global1.a, true), global1.c, global3.b.d << (~_wgslsmith_clamp_u32(global3.d.x, 1u, global3.d.x) % 32u), global3.b.e), vec3<u32>(global3.d.x, reverseBits(~global3.d.x ^ 0u), 64178u), !func_3(Struct_3(global3.a, Struct_1(global3.e, global2.b, vec3<f32>(global1.c.x, -663f, global3.a.a), arg_2, false), Struct_1(true, vec4<bool>(arg_1, false, arg_1, arg_1), vec3<f32>(635f, -681f, global3.a.a), 26238i, false), vec3<u32>(global3.d.x, global3.d.x, 4294967295u), global1.a), max(vec4<u32>(global3.d.x, global3.d.x, 1u, global3.d.x), vec4<u32>(0u, 24430u, 74529u, global3.d.x)), global1.e) || !global1.a);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    let var_0 = vec3<f32>(369f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1007f * global1.c.x), _wgslsmith_f_op_f32(min(global2.c.x, 501f)))) * _wgslsmith_f_op_f32(ceil(arg_2.c.x))), _wgslsmith_f_op_f32(-global2.c.x))), arg_1.a);
    global4 = 23821u;
    var var_1 = var_0.x;
    global0 = _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1623f * 1089f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-909f, -721f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, 1611f) - 2455f)))));
    var var_2 = u_input.a.x | global1.d;
    return func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, -1416f)))))), !arg_0, -45465i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(!global1.e, Struct_2(_wgslsmith_f_op_f32(step(-1443f, -1000f))), Struct_1(all(!global2.b.yyz), global2.b, global3.b.c, global2.d, true != !global1.e), ~_wgslsmith_add_u32((global3.d.x | global3.d.x) >> (global3.d.x % 32u), global3.d.x));
    global4 = 9939u;
    global0 = _wgslsmith_f_op_f32(-global2.c.x);
    global2 = global3.b;
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c.x - 1000f), -174f), _wgslsmith_f_op_f32(global3.a.a - -1007f), 1509f));
    var var_1 = ~_wgslsmith_div_vec4_i32(-vec4<i32>(min(0i, -6915i), -global2.d, u_input.a.x, -global1.d), vec4<i32>(_wgslsmith_mult_i32(1i, global3.c.d), 1i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(0i, global2.d)), ~(-2147483647i)) >> (~(~vec4<u32>(global3.d.x, 1u, 82939u, 0u)) % vec4<u32>(32u)));
    var var_2 = false;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(181f * global3.c.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 1000f) - var_0.x))), global3.b.c, -_wgslsmith_div_i32(-26012i, -1i));
}

