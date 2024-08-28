struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = u_input.d.x >= abs(countOneBits(1u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1298f, _wgslsmith_f_op_f32(round(280f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(289f, 1f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1100f))), _wgslsmith_f_op_f32(2017f - _wgslsmith_f_op_f32(floor(1092f))), !(arg_0 | arg_0)))));
    let var_2 = Struct_1(arg_1.x, select(select(vec2<bool>(true, true), !vec2<bool>(false, arg_0), !(arg_0 | arg_0)), vec2<bool>(any(vec3<bool>(arg_0, false, true)), arg_0), vec2<bool>(true, true)), 770f, vec3<i32>(u_input.b.x, -11130i, -41117i));
    global0 = array<vec2<f32>, 24>();
    let var_3 = 9725u;
    return !select(select(!(!vec3<bool>(var_2.b.x, arg_0, var_2.b.x)), !select(vec3<bool>(false, false, var_2.b.x), vec3<bool>(arg_0, arg_0, arg_0), arg_0), !(!vec3<bool>(false, arg_0, false))), select(!select(vec3<bool>(var_2.b.x, true, arg_0), vec3<bool>(true, arg_0, var_2.b.x), true), select(vec3<bool>(false, true, var_2.b.x), !vec3<bool>(var_2.b.x, true, var_2.b.x), -470f > var_2.c), !select(vec3<bool>(arg_0, true, var_2.b.x), vec3<bool>(true, false, true), vec3<bool>(var_2.b.x, arg_0, var_2.b.x))), all(!vec3<bool>(var_2.b.x, true, true)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<bool> {
    global0 = array<vec2<f32>, 24>();
    let var_0 = select(vec4<bool>(any(func_3(false, vec2<i32>(-57751i, u_input.a) >> (u_input.d % vec2<u32>(32u)))), arg_0.b.x, all(!vec2<bool>(arg_0.b.x, true)), arg_0.b.x), !vec4<bool>(all(select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(true, arg_0.b.x, true), vec3<bool>(arg_0.b.x, true, arg_0.b.x))), arg_0.b.x, any(!vec3<bool>(false, arg_0.b.x, arg_0.b.x)), !arg_0.b.x), false);
    var var_1 = _wgslsmith_f_op_f32(trunc(781f));
    return select(vec2<bool>(false, arg_0.b.x), arg_0.b, vec2<bool>(true, all(vec3<bool>(any(var_0.zwy), true, !arg_0.b.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    var var_1 = -503f;
    let var_2 = Struct_1(u_input.b.x, select(vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, true, true))), !func_2(Struct_1(u_input.c, vec2<bool>(true, false), -360f, u_input.b.xyw), global0[_wgslsmith_index_u32(u_input.e.x, 24u)]), false), func_2(Struct_1(-2147483647i, vec2<bool>(true, true), -156f, countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(u_input.d.x, 24u)])), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.e.x, 24u)] + global0[_wgslsmith_index_u32(38434u, 24u)])))), 708f, u_input.b.www);
    let var_3 = _wgslsmith_add_vec3_i32(var_2.d, -max(vec3<i32>(-39516i, 2147483647i, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.d.x, -1i, 0i), u_input.b.xyy))) & _wgslsmith_div_vec3_i32(((u_input.b.zwz ^ vec3<i32>(-2147483647i, -11504i, u_input.a)) & u_input.b.zwz) | -(vec3<i32>(4371i, var_2.a, u_input.a) ^ u_input.b.yyz), max(u_input.b.xyw, u_input.b.xwy));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 24>();
    let var_0 = 27886i;
    var var_1 = u_input.b.xwx;
    let var_2 = vec4<i32>(_wgslsmith_div_i32(var_0, -1i), var_0 << (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.e.x) << (vec3<u32>(33189u, 0u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.e.x, u_input.d.x, u_input.d.x)) % 32u), _wgslsmith_mult_i32(~(-62233i), -6187i << (min(~u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(47977u, 52374u))) % 32u)), _wgslsmith_sub_i32(var_0, _wgslsmith_add_i32(var_1.x, u_input.a) ^ 1i) ^ -var_0);
    var var_3 = countOneBits(4294967295u);
    var var_4 = func_1();
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, vec2<i32>(var_1.x, ~u_input.b.x | firstTrailingBit(var_1.x)), -2147483647i);
}

