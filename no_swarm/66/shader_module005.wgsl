struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, -1000f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = vec4<bool>(!any(vec2<bool>(true, true)) | arg_1.a, (arg_1.a != global0.a) && !(select(global0.a, global0.a, global0.a) | arg_1.a), any(vec2<bool>(any(vec2<bool>(true, true)), true)), true);
    var var_1 = reverseBits(4294u);
    global0 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.b, global0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, -977f) - vec2<f32>(arg_1.b, arg_1.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, global0.b)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(415f + -1161f), _wgslsmith_div_f32(-524f, _wgslsmith_f_op_f32(f32(-1f) * -852f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, arg_1.b) * vec2<f32>(1027f, 1318f)), vec2<f32>(global0.b, arg_1.b), var_0.xz)) * vec2<f32>(1000f, _wgslsmith_f_op_f32(trunc(-1188f)))))));
    var_1 = ~u_input.b.x;
    return _wgslsmith_mod_u32(13616u, _wgslsmith_add_u32(reverseBits(~(~u_input.b.x)), _wgslsmith_dot_vec2_u32(~reverseBits(u_input.b.ww), ~(~vec2<u32>(u_input.b.x, u_input.b.x)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<f32>) -> bool {
    let var_0 = Struct_1((!(!arg_0.x) & (all(arg_0.yyw) & (153f >= arg_2.x))) & !(!arg_0.x), arg_2.x);
    var var_1 = true;
    var var_2 = var_0;
    var_1 = !any(select(vec3<bool>(all(vec4<bool>(global0.a, var_0.a, false, arg_0.x)), false, true), vec3<bool>(all(arg_0), var_0.a, true), vec3<bool>(arg_0.x, !var_2.a, u_input.b.x >= arg_1)));
    let var_3 = !any(select(arg_0.wyx, select(vec3<bool>(var_2.a, var_2.a, arg_0.x), !arg_0.zww, vec3<bool>(global0.a, false, var_0.a)), arg_0.x));
    return any(vec2<bool>(any(vec3<bool>(true, u_input.a.x < u_input.a.x, false)), !global0.a));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-787f, _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_1.b)), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(f32(-1f) * -1954f)));
    var var_1 = Struct_1(func_4(!vec4<bool>(arg_1.a && arg_1.a, global0.a, false, global0.a), _wgslsmith_div_u32(u_input.b.x, func_3(~23179i, Struct_1(true, 210f))), _wgslsmith_div_vec2_f32(vec2<f32>(-412f, _wgslsmith_f_op_f32(ceil(global0.b))), vec2<f32>(-863f, _wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -441f));
    let var_2 = vec4<bool>(true, var_1.a, any(vec3<bool>(true, ~(-3537i) > -u_input.a.x, true)), false);
    return -abs(min(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_0.x, -1i, u_input.a.x, u_input.a.x), select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -42900i), vec4<i32>(-21970i, 7149i, arg_0.x, 1i), var_2)), countOneBits(countOneBits(vec4<i32>(9520i, 0i, u_input.a.x, -2147483647i)))));
}

fn func_1() -> bool {
    let var_0 = max(~(vec4<i32>(-43495i, _wgslsmith_div_i32(-51171i, 80218i), u_input.a.x, -u_input.a.x) | ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -6206i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 15899i, u_input.a.x), vec4<i32>(-2090i, u_input.a.x, -48135i, u_input.a.x))), -(abs(vec4<i32>(-1271i, 1i, 48078i, -1i) | vec4<i32>(26021i, u_input.a.x, -2147483647i, u_input.a.x)) & func_2(-vec3<i32>(31530i, 0i, 7029i), Struct_1(false, global0.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1098f, global0.b, 278f)))));
    global0 = Struct_1(any(!select(!vec3<bool>(false, global0.a, global0.a), vec3<bool>(global0.a, true, false), 0u < u_input.b.x)), global0.b);
    let var_1 = ~(~vec4<u32>(~_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.b.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b.xyy, vec3<u32>(23339u, u_input.b.x, 3158u)), 4294967295u, min(u_input.b.x, 1u)), ~abs(40122u), u_input.b.x));
    let var_2 = global0.a && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(f32(-1f) * -814f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * global0.b), _wgslsmith_f_op_f32(sign(global0.b)))) == -931f);
    global0 = Struct_1(global0.a, global0.b);
    return !global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x >> (63388u % 32u);
    let var_1 = Struct_1(func_1(), _wgslsmith_f_op_f32(-global0.b));
    let var_2 = global0.a;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-678f - _wgslsmith_f_op_f32(min(999f, var_1.b))) != var_1.b, _wgslsmith_f_op_f32(-665f - var_1.b));
    var var_4 = var_1;
    var var_5 = var_1;
    let var_6 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, ~(30956u << (0u % 32u)), u_input.b.x) << (u_input.b.yww % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(u_input.b.zzw, vec3<u32>(_wgslsmith_div_u32(0u, 1783u), reverseBits(u_input.b.x), ~u_input.b.x), ~u_input.b.zwy));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~min(u_input.b.x, u_input.b.x) >> (12621u % 32u), var_6, ~select(_wgslsmith_clamp_u32(0u, var_6, u_input.b.x), 27183u, true), u_input.b.x), func_2(select(vec3<i32>(1i >> (u_input.b.x % 32u), abs(u_input.a.x), ~(-31418i)), ~(~vec3<i32>(0i, -1i, 2289i)), !select(vec3<bool>(var_3.a, global0.a, var_4.a), vec3<bool>(var_1.a, var_4.a, global0.a), var_4.a)), Struct_1(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_5.b, -1000f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(128f, global0.b, var_1.b))), vec3<f32>(1363f, var_5.b, -126f), select(var_1.a, true, true)))))).x, 61884i, _wgslsmith_f_op_f32(-var_4.b), ~(_wgslsmith_clamp_vec2_i32(min(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(18987i, u_input.a.x), ~u_input.a) >> (u_input.b.zx % vec2<u32>(32u))));
}

