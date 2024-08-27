struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<bool>,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(-26602i, 2147483647i, -1i, 33917i, 2147483647i, -4598i, 2186i, 31955i, 2147483647i, i32(-2147483648), i32(-2147483648), 34391i, 37321i, 0i, 0i, -11724i, -1i, -12501i, 1i, 2147483647i, -1i, 9551i, 0i, 12462i, 12658i);

var<private> global1: array<Struct_4, 31>;

var<private> global2: f32;

var<private> global3: array<bool, 9>;

var<private> global4: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> bool {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-638f + 492f));
    global0 = array<i32, 25>();
    var var_0 = !(!vec4<bool>(any(vec3<bool>(true, true, true)) && global4.x, !(u_input.a == 8919u), any(select(vec2<bool>(global3[_wgslsmith_index_u32(6544u, 9u)], true), vec2<bool>(true, arg_1.a.x), arg_1.a.x)), select(false, false, !arg_1.a.x)));
    let var_1 = arg_1;
    let var_2 = var_0.x;
    return u_input.a != _wgslsmith_mult_u32(firstLeadingBit(0u), ~_wgslsmith_add_u32(0u << (u_input.a % 32u), 1u));
}

fn func_2() -> vec3<i32> {
    let var_0 = -1i;
    let var_1 = Struct_2(vec2<bool>(all(vec4<bool>(any(vec4<bool>(global4.x, global4.x, false, global3[_wgslsmith_index_u32(u_input.a, 9u)])), false && global4.x, !global4.x, true)), ~(~u_input.a) == _wgslsmith_dot_vec4_u32(vec4<u32>(23584u, 4294967295u, u_input.a, u_input.a) & vec4<u32>(u_input.a, 34386u, 4294967295u, u_input.a), vec4<u32>(4294967295u, 0u, 0u, 47223u))), global0[_wgslsmith_index_u32(1u, 25u)]);
    let var_2 = Struct_5(Struct_2(vec2<bool>(false, global3[_wgslsmith_index_u32(92398u, 9u)]), var_0 << (~u_input.a % 32u)), -_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, u_input.b, var_0), vec3<i32>(-21759i, var_0, u_input.b)), -vec3<i32>(var_1.b, global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)]) << (~vec3<u32>(1u, 0u, u_input.a) % vec3<u32>(32u))), Struct_1(func_3(-39099i, Struct_2(select(vec2<bool>(global3[_wgslsmith_index_u32(82206u, 9u)], global4.x), global4.xz, false), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.b), vec2<i32>(-1i, 46600i))), ~u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(782f, -302f, -268f, -1082f), vec4<f32>(412f, -333f, 1394f, 948f), true))), vec2<f32>(_wgslsmith_f_op_f32(max(1098f, -666f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-705f, 1382f, var_1.a.x)) * _wgslsmith_div_f32(-603f, -1000f))), vec3<i32>(u_input.b, -var_0, -2147483647i), u_input.a), vec4<u32>(select(countOneBits(1u), u_input.a, !any(var_1.a)), u_input.a, u_input.a, 4294967295u));
    global1 = array<Struct_4, 31>();
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.c.b.x - _wgslsmith_f_op_f32(var_2.c.c.x - 453f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(577f * var_2.c.b.x))))));
    return var_2.b;
}

fn func_1() -> Struct_2 {
    var var_0 = firstLeadingBit(global0[_wgslsmith_index_u32(~46546u, 25u)]) | _wgslsmith_dot_vec3_i32(func_2(), vec3<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), u_input.b, global0[_wgslsmith_index_u32(33102u, 25u)] | global0[_wgslsmith_index_u32(15873u, 25u)]) | select(vec3<i32>(4633i, u_input.b, global0[_wgslsmith_index_u32(u_input.a, 25u)]), countOneBits(vec3<i32>(u_input.b, 0i, 21893i)), !vec3<bool>(true, global4.x, global3[_wgslsmith_index_u32(u_input.a, 9u)])));
    var var_1 = select(global4.x, true, global4.x);
    var_0 = abs(0i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -715f))))));
    global2 = 554f;
    return Struct_2(global4.zx, -15778i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(698f * _wgslsmith_f_op_f32(step(1000f, -355f))) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(610f, _wgslsmith_f_op_f32(f32(-1f) * -116f))))));
    var var_0 = func_1();
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 31u)];
    let var_2 = ~select(~vec4<u32>(u_input.a, ~4294967295u, 0u, ~11887u), vec4<u32>(~17523u, 92118u, abs(u_input.a), var_1.b.a.e), !func_3(-1i & var_1.a, Struct_2(var_1.c.yy, -1i), var_1.a));
    var var_3 = var_2.wzy;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec3<u32>(1u, firstTrailingBit(var_3.x), 1u)), global0[_wgslsmith_index_u32(var_1.b.a.e, 25u)], 1i);
}

