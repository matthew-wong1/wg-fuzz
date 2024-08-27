struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<bool>(false, false), true, Struct_1(30123i)), Struct_2(vec2<bool>(false, false), false, Struct_1(2147483647i)), Struct_2(vec2<bool>(false, true), true, Struct_1(2147483647i)), Struct_2(vec2<bool>(true, false), false, Struct_1(14214i)), Struct_2(vec2<bool>(true, true), true, Struct_1(0i)), Struct_2(vec2<bool>(false, false), true, Struct_1(2482i)), Struct_2(vec2<bool>(true, true), false, Struct_1(1i)), Struct_2(vec2<bool>(false, true), false, Struct_1(1i)), Struct_2(vec2<bool>(false, false), true, Struct_1(-29783i)), Struct_2(vec2<bool>(false, true), false, Struct_1(0i)), Struct_2(vec2<bool>(false, false), true, Struct_1(-23946i)), Struct_2(vec2<bool>(false, true), true, Struct_1(5365i)), Struct_2(vec2<bool>(true, false), true, Struct_1(9904i)), Struct_2(vec2<bool>(true, true), false, Struct_1(10595i)), Struct_2(vec2<bool>(true, true), true, Struct_1(i32(-2147483648))), Struct_2(vec2<bool>(true, true), false, Struct_1(-6186i)), Struct_2(vec2<bool>(true, true), false, Struct_1(i32(-2147483648))), Struct_2(vec2<bool>(false, false), true, Struct_1(2147483647i)), Struct_2(vec2<bool>(false, false), true, Struct_1(2147483647i)), Struct_2(vec2<bool>(false, false), false, Struct_1(-39031i)), Struct_2(vec2<bool>(false, false), true, Struct_1(5451i)), Struct_2(vec2<bool>(true, true), false, Struct_1(12724i)), Struct_2(vec2<bool>(true, true), true, Struct_1(1i)), Struct_2(vec2<bool>(true, false), true, Struct_1(37659i)), Struct_2(vec2<bool>(false, true), false, Struct_1(43151i)), Struct_2(vec2<bool>(false, false), true, Struct_1(-2695i)), Struct_2(vec2<bool>(false, false), true, Struct_1(16247i)), Struct_2(vec2<bool>(false, true), true, Struct_1(75467i)), Struct_2(vec2<bool>(true, true), false, Struct_1(-5993i)));

var<private> global1: Struct_1;

var<private> global2: i32 = -38922i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2021f, _wgslsmith_div_f32(904f, 1000f), _wgslsmith_f_op_f32(sign(-611f)), -1091f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(216f, -528f, 1005f, 885f), vec4<f32>(-1867f, 840f, 918f, 100f), false)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1581f, -363f, 254f, -1090f))))))));
    return ~(-select(u_input.b, u_input.b, select(true, true, true)));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    let var_0 = firstLeadingBit(~u_input.a.x);
    let var_1 = 0u;
    let var_2 = !(!(!select(select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x), select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(true, false, true, true), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), arg_0.x)));
    var var_3 = Struct_2(!var_2.wz, true, Struct_1(-30265i));
    var var_4 = !select(vec3<bool>(false, false, false), select(vec3<bool>(var_3.b && var_3.b, arg_0.x, any(var_3.a)), !select(vec3<bool>(true, true, true), vec3<bool>(var_3.a.x, arg_0.x, var_2.x), true), !(!vec3<bool>(arg_0.x, true, var_2.x))), var_3.a.x);
    return i32(-1i) * -43022i;
}

fn func_1() -> vec4<i32> {
    let var_0 = select(select(!vec4<bool>(any(vec4<bool>(false, true, false, false)), true, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), global1.a == global1.a)), vec4<bool>(true, !(!any(vec4<bool>(false, true, false, true))), !(any(vec2<bool>(true, false)) & true), true), 52179u <= ~(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)));
    global2 = _wgslsmith_mult_i32(func_2(), select(~func_3(var_0.zw) >> (~min(u_input.a.x, u_input.a.x) % 32u), u_input.b, false));
    var var_1 = Struct_1(-(~(-global1.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-898f, -1343f, _wgslsmith_f_op_f32(-156f - -902f), _wgslsmith_f_op_f32(floor(1404f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1679f, 703f, 310f, 1000f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(987f, 349f, -1000f, -1000f)), vec4<f32>(524f, -889f, -367f, 339f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1219f)), _wgslsmith_div_f32(-302f, 470f), -561f, _wgslsmith_f_op_f32(f32(-1f) * -2659f)) * vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_3 = global0[_wgslsmith_index_u32(max(~_wgslsmith_mod_u32(select(abs(u_input.a.x), select(u_input.a.x, u_input.a.x, true), var_0.x), u_input.a.x), u_input.a.x | ~(~u_input.a.x ^ (u_input.a.x ^ 0u))), 29u)];
    return firstTrailingBit(abs(vec4<i32>(3872i, u_input.b ^ -33065i, -(~var_3.c.a), func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f + -316f) * _wgslsmith_f_op_f32(floor(-1111f)));
    global0 = array<Struct_2, 29>();
    let var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(47249u, 29u)];
    global0 = array<Struct_2, 29>();
    var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0), var_2.a)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(160f, -870f), vec2<f32>(var_0, var_0)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, 221f, 1372f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1346f)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0, -548f, 854f), vec3<f32>(var_0, var_0, var_0)))))), -func_1());
}

