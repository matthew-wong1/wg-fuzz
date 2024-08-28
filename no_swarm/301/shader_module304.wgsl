struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_1(~(u_input.c >> (_wgslsmith_sub_vec4_u32(~u_input.c, countOneBits(u_input.c)) % vec4<u32>(32u))), _wgslsmith_div_i32(abs(-23305i ^ ~u_input.d.x), -26421i), ~reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 37088u, _wgslsmith_clamp_u32(0u, u_input.a, 1u)), 4u)]), select(select(vec3<bool>(true, all(vec4<bool>(true, false, true, true)), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), true), true), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), true), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    global0 = array<i32, 4>();
    var var_1 = u_input.d.zx;
    var_1 = u_input.d.yw ^ u_input.d.wz;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(arg_0)), arg_0))))) * arg_0);
    return i32(-1i) * -46493i;
}

fn func_4(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = Struct_1(vec4<u32>(abs(abs(u_input.a) >> (~29000u % 32u)), countOneBits(18046u), ~u_input.b, select(u_input.a >> (0u % 32u), u_input.c.x, true) | ~abs(0u)), _wgslsmith_mod_i32(u_input.d.x, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(147f, arg_0)))) & _wgslsmith_sub_i32(arg_1, -arg_1 << (1u % 32u)), func_3(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + -729f), 550f)), arg_0)), vec3<bool>(true, true, any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, true), true))));
    var var_1 = var_0.a.wx;
    global0 = array<i32, 4>();
    let var_2 = Struct_2(vec3<bool>(!var_0.d.x, var_0.d.x, !(true != all(vec4<bool>(false, true, true, true)))), 1i);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.x, ~abs(u_input.c.x), 20308u) | u_input.a, 4u)];
    return !(false | (var_2.a.x && false));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: f32) -> bool {
    global0 = array<i32, 4>();
    let var_0 = arg_0 >> (0u % 32u);
    global0 = array<i32, 4>();
    var var_1 = _wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i);
    global0 = array<i32, 4>();
    return func_4(arg_3, func_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3, arg_3), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_3) + vec2<f32>(796f, arg_3))))))));
}

fn func_1() -> vec3<i32> {
    var var_0 = any(!vec4<bool>(true, func_2(1u, select(u_input.d, vec4<i32>(-1i, 13165i, global0[_wgslsmith_index_u32(23617u, 4u)], -10145i), vec4<bool>(true, true, false, false)), vec3<bool>(false, true, false), -759f), any(vec4<bool>(false, false, true, false)), true));
    let var_1 = select(max(u_input.b, ~u_input.c.x), u_input.b, any(vec4<bool>(true, true, true, all(vec2<bool>(true, false)))) && true);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(-1208f, -506f)))) + 967f), -1000f);
    var var_3 = Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false)))), vec3<bool>(true, true, true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false))) != false), 3276i);
    let var_4 = ~u_input.c.wxx;
    return -(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -29380i, global0[_wgslsmith_index_u32(25820u, 4u)]), u_input.d.wxw, vec3<i32>(u_input.d.x, 50485i, 0i)), vec3<i32>(u_input.d.x, 2147483647i, 26619i), u_input.d.wzw) & -u_input.d.zzw) | countOneBits(-(u_input.d.xxz ^ vec3<i32>(-18541i, -1i, 50251i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -584f), 1f))) + -1672f));
}

