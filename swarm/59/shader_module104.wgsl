struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 23>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    global0 = arg_2;
    let var_0 = vec3<f32>(-253f, -784f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-674f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1079f) + _wgslsmith_f_op_f32(trunc(-612f))))))));
    global0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(max(var_0.x, -1400f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.x)), -937f, true))))));
    return vec4<i32>(arg_2.a.x, 2147483647i, reverseBits(-39181i), _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.x, arg_2.a.x), max(_wgslsmith_sub_i32(-1i ^ global0.a.x, min(global0.a.x, 1i)), _wgslsmith_clamp_i32(-arg_1.a.x, firstLeadingBit(-11331i), 0i))));
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(func_3(global0.a.xx, Struct_1(~global0.a, global0.b), Struct_1(global0.a, global0.b)), vec4<bool>(global0.b.x, true, true, true));
    global1 = array<Struct_2, 23>();
    let var_0 = ~u_input.a;
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(~vec4<i32>(max(2147483647i, 54585i), global0.a.x >> (4294967295u % 32u), global0.a.x, min(global0.a.x, 1i)), global0.a >> ((select(vec4<u32>(var_0, 1u, var_0, var_0), vec4<u32>(var_0, 1u, 10096u, var_0), global0.b) | (vec4<u32>(var_0, 10069u, var_0, var_0) ^ vec4<u32>(79628u, 34096u, u_input.a, var_0))) % vec4<u32>(32u)), vec4<i32>(firstLeadingBit(-9408i), 7656i, 2147483647i, _wgslsmith_sub_i32(global0.a.x, global0.a.x))), !global0.b);
    global0 = Struct_1(_wgslsmith_mod_vec4_i32(~select(global0.a, _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, var_1.a.x, var_1.a.x), vec4<i32>(global0.a.x, 2147483647i, 8643i, var_1.a.x)), var_1.b.x), global0.a), !vec4<bool>(all(!var_1.b), global0.b.x, false, false));
    return Struct_1(var_1.a, vec4<bool>(all(vec2<bool>(false & global0.b.x, true)), true, true, any(vec3<bool>(any(var_1.b.wzz), !var_1.b.x, var_1.b.x))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> vec4<i32> {
    var var_0 = any(select(global0.b.zxw, vec3<bool>(global0.b.x, all(!vec4<bool>(global0.b.x, global0.b.x, true, true)), false), select(global0.b.x, true, true)));
    let var_1 = _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(reverseBits(u_input.a), u_input.a));
    global0 = func_2();
    var_0 = all(select(!(!(!global0.b)), global0.b, !vec4<bool>(true, global0.b.x, global0.b.x & true, global0.b.x)));
    var_0 = true;
    return global0.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-1000f - -932f);
    global1 = array<Struct_2, 23>();
    global1 = array<Struct_2, 23>();
    var var_1 = -314f;
    let var_2 = _wgslsmith_mult_i32(arg_0.x, arg_0.x);
    return Struct_1(vec4<i32>(abs(countOneBits(~global0.a.x)), arg_0.x, var_2, ~59455i), vec4<bool>(arg_1.x, !select(func_2().b.x, all(arg_1), arg_1.x && true), !(var_0 != var_0) | !(!global0.b.x), !(!select(false, arg_1.x, true))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<f32>) -> StorageBuffer {
    global0 = func_4(~global0.a, select(select(!vec2<bool>(global0.b.x, global0.b.x), arg_0.a.b.yx, global0.b.zz), arg_1.zz, true), u_input.a);
    let var_0 = arg_0.a;
    global1 = array<Struct_2, 23>();
    global1 = array<Struct_2, 23>();
    return StorageBuffer(12276i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 27613u;
    global1 = array<Struct_2, 23>();
    var_0 = 67444u;
    global1 = array<Struct_2, 23>();
    var var_1 = global0.b.wwy;
    let var_2 = u_input.a;
    global0 = Struct_1(-global0.a, !(!global0.b));
    let x = u_input.a;
    s_output = func_5(Struct_2(func_4(select(max(global0.a, vec4<i32>(global0.a.x, -1i, 2147483647i, global0.a.x)), func_1(-2147483647i, vec3<f32>(934f, 177f, -1229f)), select(global0.b, global0.b, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), var_1.x), 95827u)), vec4<bool>(false, var_1.x && (true && (global0.a.x < -2147483647i)), global0.b.x, !all(global0.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-859f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-539f - -678f)))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-131f, 294f)))));
}

