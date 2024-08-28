struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_3,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29>;

var<private> global1: Struct_4;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.e.xx)) + _wgslsmith_div_vec2_f32(global1.d.yz, global1.a)))), !vec4<bool>(any(vec2<bool>(global1.b.x, false)), false, !(u_input.b > 30950i), true), Struct_3(Struct_1(false)), global1.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x - -1485f))), _wgslsmith_f_op_f32(select(global1.e.x, _wgslsmith_f_op_f32(-global1.e.x), global1.c.a.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1070f * global1.d.x) - -1012f), global1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1567f) + global1.e.x)));
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.x, 1377f)) - global1.d.zy) * _wgslsmith_f_op_vec2_f32(-global1.d.zy))), select(global1.b, vec4<bool>(any(vec2<bool>(global1.c.a.a, global1.c.a.a)), select(83122u != u_input.a.x, true | global1.c.a.a, any(global1.b)), _wgslsmith_mult_i32(-12727i, u_input.b) >= 1i, false), global1.b.x), Struct_3(global1.c.a), global1.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.e.x, global1.e.x))), 1886f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-822f + global1.a.x))) - global1.e));
    global0 = array<vec3<f32>, 29>();
    let var_0 = global1.c;
    global0 = array<vec3<f32>, 29>();
    return global1.e.x;
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = u_input.b ^ -2147483647i;
    var var_1 = !(!(~u_input.a.x != firstTrailingBit(u_input.a.x))) | (_wgslsmith_f_op_f32(func_2(vec4<i32>(var_0, 1i, -2147483647i >> (1u % 32u), var_0 << (u_input.a.x % 32u)))) > _wgslsmith_f_op_f32(772f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0))));
    global0 = array<vec3<f32>, 29>();
    var var_2 = var_0;
    let var_3 = global1.c.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_2(max(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 18639i, -1i)))), -762f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.x, _wgslsmith_f_op_f32(round(1110f)))), select(select(select(global1.b.zx, vec2<bool>(global1.b.x, false), false), global1.b.wx, !global1.c.a.a), global1.b.xw, vec2<bool>(all(global1.b), false)))), vec4<bool>(!any(global1.b.xwy), !global1.b.x, all(select(!vec2<bool>(true, global1.c.a.a), global1.b.xz, !vec2<bool>(global1.c.a.a, global1.b.x))), global1.c.a.a), global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -1000f, global1.e.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(global1.e))))));
    var_0 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.d.zy))) + _wgslsmith_f_op_vec2_f32(-global1.a)), vec2<f32>(_wgslsmith_f_op_f32(select(1732f, 977f, global1.c.a.a)), _wgslsmith_f_op_f32(max(global1.e.x, _wgslsmith_f_op_f32(-497f + global1.a.x))))), select(!vec4<bool>(any(vec4<bool>(var_0.c.a.a, global1.b.x, true, var_0.c.a.a)), !var_0.b.x, false, all(vec4<bool>(var_0.c.a.a, var_0.b.x, false, global1.c.a.a))), select(vec4<bool>(select(true, global1.c.a.a, var_0.b.x), false, false, global1.c.a.a), !vec4<bool>(false, var_0.b.x, global1.b.x, false), vec4<bool>(25073i <= u_input.b, false && global1.b.x, global1.c.a.a, false)), all(!select(global1.b.zz, global1.b.yz, true))), Struct_3(var_0.c.a), _wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(4294967295u, 29u)])), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.e - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, global1.d.x, 201f, -213f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.e)), select(select(global1.b, vec4<bool>(var_0.b.x, var_0.c.a.a, global1.c.a.a, global1.c.a.a), false), var_0.b, all(vec2<bool>(true, var_0.c.a.a))))))));
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0.d.xz - global1.d.xz))), !(!vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.e.x != 106f)), Struct_3(Struct_1(false)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(441f, 645f, -561f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e) - _wgslsmith_f_op_vec4_f32(trunc(var_0.e)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global1.e)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-997f, global1.e.x, -1342f, global1.a.x) + vec4<f32>(global1.a.x, global1.e.x, -1200f, global1.a.x))), global1.e)));
    let var_1 = Struct_1(true);
    let var_2 = 4294967295u;
    return _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -u_input.b, ~2147483647i), ~min(-vec3<i32>(u_input.b, 1i, -9974i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 1i, -184i), vec3<i32>(u_input.b, u_input.b, -14504i)) ^ vec3<i32>(u_input.b, u_input.b, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(global1.e.zw, vec4<bool>(true, true, !all(global1.b), -182f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.x, 691f)))), global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(step(global1.a.x, -1238f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.e.x)) + _wgslsmith_f_op_f32(global1.a.x * -430f)))), global1.e);
    global0 = array<vec3<f32>, 29>();
    var var_0 = global1.e;
    var var_1 = vec2<u32>(0u, 60801u);
    global0 = array<vec3<f32>, 29>();
    var var_2 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_3()), (var_1.x | var_1.x) | ~1u, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.b, u_input.b, -21534i) ^ vec3<i32>(-12108i, -25229i, u_input.b), vec3<i32>(u_input.b, -2147483647i, -1i) >> (vec3<u32>(4294967295u, 0u, 8834u) % vec3<u32>(32u))), vec3<i32>(2147483647i, -1i, 69815i)), ~18850i), -2147483647i);
}

