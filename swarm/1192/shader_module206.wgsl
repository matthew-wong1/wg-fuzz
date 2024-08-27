struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    global0 = ~(-3602i);
    var var_0 = vec3<bool>(any(select(select(!vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, false, arg_0.x, true), false), select(select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, true), false), select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, true, true, false), true), arg_0.x), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)))), true, !(arg_0.x && !(true & arg_0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_3.a.x, arg_1.x, arg_3.a.x) * arg_3.a))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, 381f, 276f, arg_3.a.x))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.xzy)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.xwx))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(var_1.yww, vec3<f32>(-348f, arg_3.a.x, arg_3.a.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -203f), var_1.x, _wgslsmith_f_op_f32(sign(arg_1.x))))))));
    var var_3 = Struct_1(vec4<f32>(var_1.x, var_1.x, arg_1.x, _wgslsmith_f_op_f32(-1000f + -108f)), arg_2.x);
    return var_3.b;
}

fn func_2() -> Struct_5 {
    global0 = 0i;
    let var_0 = Struct_3(countOneBits(u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(707f, -447f, 1849f, -1545f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-974f - 631f)) - -1000f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(914f)) - _wgslsmith_f_op_f32(f32(-1f) * -1413f))))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(false, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true))), all(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), all(vec4<bool>(false, true, true, false))))), Struct_2(Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(320f - -1268f), -524f, _wgslsmith_f_op_f32(min(1249f, -939f))), ~(~u_input.a))));
    return Struct_5(2060f, Struct_4(_wgslsmith_mult_u32(func_3(!vec3<bool>(var_0.d.x, true, var_0.d.x), _wgslsmith_f_op_vec4_f32(exp2(var_0.e.a.a)), abs(u_input.b.zz), Struct_1(vec4<f32>(541f, 738f, var_0.e.a.a.x, -1188f), 4294967295u)), 51962u), select(select(select(vec4<bool>(true, var_0.d.x, false, true), vec4<bool>(true, false, var_0.d.x, var_0.d.x), vec4<bool>(true, true, var_0.d.x, true)), vec4<bool>(false, var_0.d.x, true, true), !vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true)), select(vec4<bool>(var_0.d.x, var_0.d.x, true, false), !vec4<bool>(true, var_0.d.x, true, var_0.d.x), vec4<bool>(var_0.d.x, false, false, var_0.d.x)), vec4<bool>(var_0.d.x, false, var_0.d.x, true)), select(true, true, any(select(vec3<bool>(var_0.d.x, false, var_0.d.x), vec3<bool>(false, var_0.d.x, var_0.d.x), vec3<bool>(false, false, false)))), firstLeadingBit(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, var_0.a, var_0.a), vec3<i32>(25810i, u_input.c, var_0.a), vec3<i32>(var_0.a, var_0.a, u_input.c)))));
}

fn func_1(arg_0: vec4<bool>) -> vec2<i32> {
    let var_0 = func_2();
    return select(var_0.b.d.zx, vec2<i32>(u_input.c, ~1i), arg_0.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(true, true, true, true));
    let var_1 = -1i;
    var var_2 = Struct_3(0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-523f * 1515f), _wgslsmith_f_op_f32(545f - 1312f), -1393f, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-981f, _wgslsmith_f_op_f32(-412f - 2269f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1342f, -181f)))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1075f, -1000f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-872f, -789f))), vec2<bool>(true, false)))))), vec2<bool>(_wgslsmith_f_op_f32(step(463f, -343f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f) - _wgslsmith_f_op_f32(f32(-1f) * -882f)), true), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(547f, 597f, -1044f, -1285f))), func_3(vec3<bool>(false, false, true), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(103f, -1023f, -123f, -574f))), vec2<u32>(u_input.a, u_input.a), Struct_1(vec4<f32>(-1729f, 323f, -268f, -1442f), u_input.b.x)))));
    var var_3 = var_2.e;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-826f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, -993f), 1112f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(261f * 315f) - _wgslsmith_f_op_f32(abs(var_3.a.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(max(914f, _wgslsmith_f_op_f32(f32(-1f) * -1940f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-873f))), -2166f), var_2.d.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.yxy)), var_2.b.xxx)));
    var var_5 = Struct_3(_wgslsmith_mult_i32(~(31084i ^ (var_2.a >> (var_2.e.a.b % 32u))), _wgslsmith_mult_i32(29819i, var_1)), var_2.b, var_2.c, vec2<bool>(all(var_2.d), true), var_2.e);
    let var_6 = _wgslsmith_div_i32(func_2().b.d.x, _wgslsmith_mod_i32(var_2.a, abs(~(var_1 | u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xy, 12371i, vec3<i32>(~_wgslsmith_dot_vec2_i32(var_0 & vec2<i32>(-1i, var_1), var_0), 0i, var_6), _wgslsmith_f_op_f32(f32(-1f) * -449f));
}

