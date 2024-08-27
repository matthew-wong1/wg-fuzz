struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 2>;

var<private> global3: Struct_2 = Struct_2(vec4<bool>(true, false, false, true), -1815f, true, Struct_1(vec4<i32>(-1i, i32(-2147483648), -1i, -48511i), -1i, 187f, vec4<i32>(-40945i, 0i, 0i, i32(-2147483648)), vec4<f32>(578f, -436f, -1579f, -1111f)));

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<f32>) -> f32 {
    let var_0 = Struct_1(abs(global3.d.a), arg_1.a.d.x, 720f, ~arg_1.a.d, vec4<f32>(-701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1084f + -806f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2094f))), global3.d.c));
    let var_1 = true;
    let var_2 = vec3<bool>(select(!(global3.c == (u_input.b.x == u_input.b.x)), !all(global3.a.xz), u_input.a.x <= arg_0.x), true, true);
    var var_3 = vec2<bool>(true, var_1);
    let var_4 = Struct_4(-reverseBits(vec2<i32>(_wgslsmith_mod_i32(-32438i, global3.d.a.x), _wgslsmith_dot_vec2_i32(arg_1.a.d.zz, u_input.c.zz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(arg_1.a.e.wy)), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.c)), -1000f), !(!var_2.xx)))), arg_2.yz, var_0.c < _wgslsmith_f_op_f32(1000f * 302f));
    return 1f;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = Struct_2(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_3(global3.d.d, arg_0, global3.d.e)))))), global3.a.x, Struct_1(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(arg_0.a.d, vec4<i32>(arg_0.a.d.x, arg_0.a.d.x, 1i, arg_2)), reverseBits(abs(-68101i | arg_0.a.b)), global3.b, -_wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], -45677i, 0i, arg_0.a.d.x) | global3.d.d, -vec4<i32>(arg_0.a.d.x, arg_2, 1i, arg_0.a.d.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_f_op_f32(func_3(global3.d.d, arg_0, vec4<f32>(-546f, global1.x, global1.x, global3.d.e.x))), arg_0.a.e.x, global3.b), global3.d.e))));
    var var_1 = abs(select(vec2<i32>(var_0.d.d.x ^ global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(56428u, 39515u), 2u)], abs(1i)), ~arg_0.a.d.ww, var_0.a.yy));
    var var_2 = 0u;
    let var_3 = Struct_4(arg_0.a.a.zz, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(global3.d.e.zy)), global1.yz)), global1.wy, any(global3.a.xwx));
    global1 = global3.d.e;
    return select(u_input.b.x, _wgslsmith_mult_u32(arg_1 & ~arg_1, 3257u), global4.x);
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    global4 = vec2<bool>(36487u >= _wgslsmith_mult_u32(firstLeadingBit(func_2(global0[_wgslsmith_index_u32(4294967295u, 25u)], 76742u, 8450i)), ~(u_input.b.x ^ u_input.b.x)), global4.x);
    global3 = Struct_2(!vec4<bool>(any(!vec3<bool>(global3.a.x, global4.x, global3.c)), true | global4.x, true, !(!global4.x)), -396f, true & global3.a.x, global3.d);
    var var_0 = 1642f;
    global2 = array<i32, 2>();
    var var_1 = Struct_1(arg_0.d, ~2147483647i, global3.b, vec4<i32>(13544i << (_wgslsmith_add_u32(min(0u, u_input.b.x), _wgslsmith_div_u32(u_input.b.x, u_input.b.x)) % 32u), _wgslsmith_dot_vec2_i32((vec2<i32>(global3.d.b, global2[_wgslsmith_index_u32(u_input.b.x, 2u)]) & vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 2u)])) & u_input.a.yx, vec2<i32>(-47854i, ~83635i)), _wgslsmith_add_i32(firstTrailingBit(-94056i), reverseBits(global2[_wgslsmith_index_u32(u_input.b.x, 2u)])), -2147483647i), global3.d.e);
    return StorageBuffer(_wgslsmith_add_vec2_i32(u_input.a.zy, var_1.d.yz), firstLeadingBit(select(vec4<u32>(0u, u_input.b.x, ~35744u, ~u_input.b.x), vec4<u32>(0u, u_input.b.x, ~1u, 39408u), global4.x)), ~u_input.b.x << ((u_input.b.x << (~u_input.b.x % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.yxz + _wgslsmith_f_op_vec3_f32(vec3<f32>(-845f, 498f, 1000f) - global1.zzy))));
    let var_1 = _wgslsmith_mod_vec3_i32(u_input.a, abs(u_input.c) ^ countOneBits(global3.d.d.zyx));
    var var_2 = !(!global3.a.zy);
    let var_3 = false;
    var_2 = select(!select(!global3.a.xw, select(global3.a.xy, select(global3.a.xx, global3.a.wy, false), var_3), true), global3.a.xx, global3.a.xy);
    var var_4 = vec3<bool>(!any(global3.a.zzx), !((64808u | u_input.b.x) <= ~u_input.b.x) & (-global3.d.a.x > reverseBits(0i)), all(vec3<bool>(!global3.a.x, global4.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 18020u), vec3<u32>(79079u, 0u, 0u)) > min(6310u, 0u))));
    let x = u_input.a;
    s_output = func_1(global3.d);
}

