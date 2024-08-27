struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_3,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<i32>, 8>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3.d;
    let var_1 = arg_1;
    return ~arg_3.c;
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = true;
    let var_1 = global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.b.e, 1u, 4294967295u, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(arg_1, u_input.b, 4294967295u, arg_1))), _wgslsmith_clamp_vec4_u32(arg_0.a, abs(vec4<u32>(arg_1, 0u, arg_0.a.x, 1u)), u_input.d << (global0.a % vec4<u32>(32u))))), 8u)];
    var var_2 = Struct_4(global0.a.x, -1147f, arg_0, vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2, arg_2))) == arg_0.b.a.x, (-737f > _wgslsmith_f_op_f32(-906f + global0.b.a.x)) != (true || var_0), true), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-451f, _wgslsmith_f_op_f32(select(arg_2, 290f, var_0)), -254f, arg_0.b.a.x)), Struct_1(4294967295u), 1u, Struct_1(4294967295u), ~4294967295u));
    var var_3 = global0.b;
    let var_4 = max(-(min(-u_input.a, i32(-1i) * -3640i) & ~min(21493i, var_1.x)), _wgslsmith_sub_i32(23530i, i32(-1i) * -max(0i, 2147483647i)));
    return ~(~global0.a.xww);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_3 {
    global0 = Struct_3(global0.a, global0.b);
    let var_0 = _wgslsmith_f_op_f32(-global0.b.a.x);
    global1 = array<vec2<i32>, 8>();
    let var_1 = false;
    let var_2 = ~select(~(~vec3<u32>(arg_1.a, 112424u, 0u) | func_3(Struct_3(global0.a, global0.b), arg_1.a, var_0, global1[_wgslsmith_index_u32(23481u, 8u)])), ~((global0.a.yww ^ vec3<u32>(0u, u_input.c, arg_1.a)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a, 1u, global0.b.e), u_input.d.wxx, u_input.d.zww)), (var_1 & arg_0.x) != select(!var_1, true, all(vec2<bool>(true, false))));
    return Struct_3(~vec4<u32>(select(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.x, 0u), vec3<u32>(arg_1.a, 1u, 20007u)), true), u_input.d.x, arg_1.a, 8311u), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1579f, -524f, global0.b.a.x, -805f), _wgslsmith_f_op_vec4_f32(min(global0.b.a, global0.b.a))) + vec4<f32>(global0.b.a.x, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-113f * global0.b.a.x), global0.b.a.x))) + _wgslsmith_f_op_vec4_f32(trunc(global0.b.a)));
    global0 = Struct_3(~(~(~global0.a)) & (((global0.a >> (vec4<u32>(global0.b.d.a, 22884u, 88786u, u_input.b) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, global0.b.d.a, global0.a.x, global0.b.e) % vec4<u32>(32u))) & vec4<u32>(15848u, _wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(20857u, u_input.c, global0.b.b.a, 21827u)), ~global0.a.x, _wgslsmith_sub_u32(u_input.c, 4294967295u))), global0.b);
    var_0 = _wgslsmith_f_op_vec4_f32(-global0.b.a);
    let var_1 = _wgslsmith_add_u32(firstTrailingBit(~func_1(u_input.d.wzw, global1[_wgslsmith_index_u32(4294967295u, 8u)], vec3<bool>(true, true, true), Struct_2(vec4<f32>(global0.b.a.x, global0.b.a.x, global0.b.a.x, -184f), Struct_1(1u), global0.b.e, global0.b.d, 0u))), 2244u) >> (global0.a.x % 32u);
    global0 = func_2(vec2<bool>(any(vec4<bool>(true, false, false, false)) | false, true & !select(false, false, false)), Struct_1(~_wgslsmith_div_u32(0u, var_1)));
    var var_2 = 1i;
    let var_3 = func_2(select(vec2<bool>(false, false), vec2<bool>(all(vec2<bool>(true, true)), true && (global0.b.c > 76071u)), true), global0.b.b).b;
    let x = u_input.a;
    s_output = StorageBuffer(740f, _wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.a, _wgslsmith_sub_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a)), ~u_input.a | u_input.a), ~vec3<i32>(u_input.a, i32(-1i) * -66069i, 0i)), vec3<u32>(5012u | _wgslsmith_div_u32(_wgslsmith_sub_u32(12118u, var_3.b.a), select(var_1, var_3.b.a, false)), 1u, ~var_3.c), 1i);
}

