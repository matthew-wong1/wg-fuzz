struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<i32>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-210f)) * _wgslsmith_f_op_f32(454f + 602f)))), arg_3.c, arg_3.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 428f)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_3.b), -706f)), vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(210f, arg_3.c, true)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global0.x, -1000f), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(trunc(arg_3.b)))))));
    let var_2 = Struct_1(min(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(16665u, 73748u), vec2<u32>(arg_2, 0u))), vec2<u32>(~arg_2, arg_2)));
    global0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-813f, _wgslsmith_f_op_f32(f32(-1f) * -408f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, -653f) * vec2<f32>(arg_3.a, var_0.a)))))));
    let var_3 = any(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))) && true;
    return var_2.a.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1002f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-727f, global0.x)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 789f)) * vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * -309f))))));
    var var_1 = 0u;
    var var_2 = vec4<bool>(true, true, true, true);
    global0 = vec2<f32>(global0.x, global0.x);
    return Struct_1(vec2<u32>(func_2(2147483647i, firstLeadingBit(vec4<i32>(-1i, u_input.c, u_input.b, u_input.a) >> (vec4<u32>(arg_0.a.x, 1u, arg_0.a.x, 0u) % vec4<u32>(32u))), 34703u, Struct_3(1184f, _wgslsmith_f_op_f32(max(global0.x, 2305f)), -1313f)), arg_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * global0.x);
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(1u, 14u)], func_1(Struct_1(vec2<u32>(_wgslsmith_mult_u32(1u, 81497u), 4294967295u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1000f) + vec2<f32>(1447f, -383f)) * vec2<f32>(global0.x, 466f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 1371f), vec2<f32>(-1000f, global0.x), vec2<bool>(true, true))))))))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), true), vec2<f32>(global0.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(-490f)))));
    var_0 = _wgslsmith_f_op_f32(-global0.x);
    let var_2 = vec3<bool>(var_1.d.x, false, true);
    var_0 = -480f;
    var var_3 = -171f;
    var var_4 = var_1.d.x;
    let var_5 = _wgslsmith_sub_vec3_i32(~global1[_wgslsmith_index_u32(var_1.b.a.x, 14u)], var_1.a);
    let var_6 = vec4<u32>(63612u >> (_wgslsmith_add_u32(40429u, _wgslsmith_div_u32(func_2(-34526i, vec4<i32>(u_input.b, var_1.a.x, var_5.x, 36637i), var_1.b.a.x, Struct_3(1000f, var_1.c.x, global0.x)), 52644u)) % 32u), 7022u, countOneBits(47197u), 49895u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e);
}

