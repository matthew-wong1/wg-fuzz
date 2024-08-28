struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<u32, 8>;

var<private> global2: Struct_2 = Struct_2(false, vec2<bool>(true, true), -17895i, vec2<f32>(-2856f, -294f));

var<private> global3: vec4<u32>;

var<private> global4: Struct_5;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> i32 {
    var var_0 = global3.x;
    global1 = array<u32, 8>();
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2853f - 377f) * _wgslsmith_f_op_f32(max(arg_0.b.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(349f)))))) - _wgslsmith_f_op_f32(-arg_0.b.d.x));
    var var_3 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.b.c, 0i), 57393i));
    return arg_1.x;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_1(-global4.e.x);
    let var_1 = -2147483647i;
    global2 = Struct_2(true || all(vec2<bool>(false, global2.b.x)), !(!select(vec2<bool>(global2.b.x, false), global2.b, global2.b.x)), 42934i, global4.c);
    var var_2 = Struct_3(~vec2<i32>(1i, func_3(Struct_3(global4.e, Struct_2(true, global2.b, var_0.a, global4.c), vec3<u32>(4294967295u, global4.d.x, 0u)), max(u_input.d.xzx, u_input.d.xyw))), Struct_2(global2.b.x, select(global2.b, global2.b, global2.a), -22618i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global4.c.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global4.c.x, global4.c.x), global2.d)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d)))), abs(vec3<u32>(select(global3.x, _wgslsmith_mod_u32(10743u, u_input.b), global2.b.x), ~global3.x, 22392u)));
    global1 = array<u32, 8>();
    return var_2.c;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> vec3<u32> {
    return ~_wgslsmith_add_vec3_u32(global3.www | func_2(), abs(reverseBits(_wgslsmith_clamp_vec3_u32(global4.b.zww, global3.zww, vec3<u32>(global3.x, 18797u, global1[_wgslsmith_index_u32(10223u, 8u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(floor(-597f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x))), true) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(47827u, u_input.b, 35813u), ~vec3<u32>(1u, global4.b.x, global3.x)), func_2());
    var var_1 = Struct_2(_wgslsmith_clamp_i32(~1i, u_input.d.x, ~2147483647i) > -35561i, global2.b, global2.c, _wgslsmith_f_op_vec2_f32(-global2.d));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -197f)));
    let var_3 = ~0u;
    let var_4 = 1546f;
    global3 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 5262u, ~var_3 | global4.b.x, ~((u_input.c & global1[_wgslsmith_index_u32(global3.x, 8u)]) << (28059u % 32u))), global4.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1011f + _wgslsmith_f_op_f32(step(-899f, _wgslsmith_f_op_f32(-var_4)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f) + 3151f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1840f, _wgslsmith_f_op_f32(round(231f)))), 495f, _wgslsmith_f_op_f32(step(1044f, var_1.d.x))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-658f, -559f, -424f)), vec3<f32>(var_2, 807f, -918f))))));
}

