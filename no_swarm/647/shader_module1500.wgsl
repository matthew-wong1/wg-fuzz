struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 16> = array<bool, 16>(true, true, false, false, false, false, true, false, false, false, false, true, false, false, false, true);

var<private> global2: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a >> (0u % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(global0.a.x, _wgslsmith_div_f32(1709f, global0.b.x), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-global0.a.x))) * vec4<f32>(1293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 469f) * _wgslsmith_f_op_f32(trunc(1858f))), 639f, global0.d.x))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -2005f, 529f, -1457f), vec4<f32>(var_1.x, -1520f, global0.b.x, global0.b.x)))) - _wgslsmith_f_op_vec4_f32(-global0.d)) + vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.c.b)), -158f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))));
    var_0 = global2.c;
    var_1 = global0.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-442f)), var_1.x));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(firstLeadingBit(u_input.a), global2.c), u_input.a);
    global1 = array<bool, 16>();
    var_3 = _wgslsmith_div_i32(u_input.b.x, ~_wgslsmith_mult_i32(~0i, -global2.c | firstTrailingBit(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-global2.c & -2147483647i, ~14002u, global0.a.x);
}

