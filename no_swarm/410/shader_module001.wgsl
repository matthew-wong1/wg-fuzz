struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 10>;

var<private> global2: vec4<u32> = vec4<u32>(43623u, 0u, 4294967295u, 10139u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> u32 {
    global1 = array<Struct_2, 10>();
    var var_0 = select(1i, -53212i ^ (countOneBits(8173i ^ u_input.e) >> (~4968u % 32u)), true);
    var_0 = u_input.d.x;
    let var_1 = Struct_1(vec2<u32>(u_input.c.x, 110754u));
    var var_2 = arg_0.x;
    return 17945u;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> vec4<u32> {
    global2 = abs(~firstLeadingBit(~vec4<u32>(4294967295u, global0.x, 96701u, 1u)));
    global2 = vec4<u32>(0u, 3785u, _wgslsmith_mult_u32(49008u, global0.x) ^ ~global0.x, ~func_3(arg_1, !(arg_1.x <= arg_1.x)));
    let var_0 = Struct_1(~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(82598u, 0u), u_input.a.zz))));
    global0 = _wgslsmith_sub_vec4_u32(abs(select(vec4<u32>(u_input.c.x, ~0u, 1u | global2.x, 44913u), ~(~vec4<u32>(4294967295u, 40699u, 49440u, 100731u)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false)))), firstTrailingBit(u_input.c));
    var var_1 = !(!any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))) && (750f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(295f, arg_1.x) * _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)))));
    return u_input.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_sub_vec3_u32(u_input.a, u_input.c.wzx);
    var var_1 = ~(u_input.e ^ -32417i);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(round(arg_2)), arg_1, _wgslsmith_f_op_f32(sign(-538f))) * vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 - arg_1), 1f, 1923f)))));
    var var_3 = arg_3.a.a.a.x | 10030u;
    global0 = abs(func_2(u_input.d.x, var_2.zx) >> (u_input.c % vec4<u32>(32u)));
    return _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(abs(func_2(-38135i, vec2<f32>(-972f, arg_2)).x), ~_wgslsmith_dot_vec3_u32(u_input.c.xwx, var_0)), global0.x), ~(~firstLeadingBit(~5862u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    global2 = abs(~_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(func_1(vec4<bool>(true, false, true, false), -1441f, -768f, Struct_3(Struct_2(Struct_1(global2.zw), Struct_1(vec2<u32>(global0.x, 4294967295u))))), _wgslsmith_div_u32(u_input.a.x, 4294967295u), 74757u, global0.x)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-988f, 1074f) * -1053f))) + _wgslsmith_f_op_f32(min(-1643f, -199f))));
    var var_1 = -(~(i32(-1i) * -38859i)) & u_input.b.x;
    var var_2 = Struct_2(Struct_1(vec2<u32>(~6138u, u_input.a.x)), Struct_1(global0.zw));
    let var_3 = u_input.b.x;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1087f * _wgslsmith_f_op_f32(f32(-1f) * -733f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-440f))));
    var_2 = global1[_wgslsmith_index_u32(u_input.c.x, 10u)];
    let var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(global2.x, select(global2.x, u_input.a.x, all(vec3<bool>(true, true, true)))), -828f, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.zx, vec2<i32>(abs(var_5), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3, 0i, 9746i, -1i), u_input.b)), vec2<i32>(-2147483647i, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, u_input.e), -vec2<i32>(u_input.d.x, -11530i)) << (func_2(u_input.e >> (33426u % 32u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(453f, 1006f)))).yz % vec2<u32>(32u)), ~(vec2<i32>(-7457i, u_input.e) >> (_wgslsmith_add_vec2_u32(global2.yx, global0.yz) % vec2<u32>(32u)))));
}

