struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: vec3<i32> = vec3<i32>(-1i, -84517i, 23703i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> f32 {
    let var_0 = u_input.e;
    let var_1 = Struct_1(all(vec2<bool>(all(vec2<bool>(false, true)), !any(vec2<bool>(true, false)))), vec4<bool>(global1.x <= 20781i, false, all(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))), true), -1000f);
    global0 = array<u32, 15>();
    let var_2 = !(var_0.x <= _wgslsmith_mult_i32(u_input.a.x & global1.x, 1i));
    global0 = array<u32, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.c + -640f), var_1.c, var_2)))));
}

fn func_1() -> Struct_1 {
    global1 = u_input.e;
    var var_0 = u_input.b.yx;
    let var_1 = 17827i;
    let var_2 = 82923i;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1375f, -261f, 1541f), vec4<f32>(-250f, 463f, 1736f, 368f)), vec4<f32>(-757f, 325f, 2251f, -1053f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(106f, -784f, 565f, -341f), vec4<f32>(-1378f, 556f, -376f, 912f))))) - vec4<f32>(139f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-866f))), 1363f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f + -169f), 722f, true)))) + vec4<f32>(_wgslsmith_f_op_f32(-2702f * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(417f, -156f), 1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1543f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -383f), _wgslsmith_f_op_f32(-324f + -1062f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(462f)), _wgslsmith_f_op_f32(-125f - -1000f)))), -1098f));
    return Struct_1(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)), vec4<bool>(select(false, false, any(vec2<bool>(true, true))), true, false, !all(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1934f * _wgslsmith_f_op_f32(f32(-1f) * -1024f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_3.x))))))));
}

fn func_3() -> i32 {
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    global1 = firstLeadingBit(~(~(-u_input.e) ^ u_input.e));
    let var_0 = select(~(~u_input.b.x), ~4294967295u, all(vec2<bool>(true, true)));
    global0 = array<u32, 15>();
    return global1.x & _wgslsmith_add_i32(-15707i, 52148i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 15>();
    let var_0 = func_1();
    global1 = ~vec3<i32>(~func_3(), ~u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, -125f, ~vec3<i32>(~_wgslsmith_mod_i32(-1i, u_input.e.x), 11323i, u_input.a.x));
}

