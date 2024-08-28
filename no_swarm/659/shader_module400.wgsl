struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = vec4<f32>(-1017f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_div_f32(1154f, -1081f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f)))), arg_0.x, _wgslsmith_f_op_f32(step(745f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x + -489f), arg_0.x))))));
    var var_1 = Struct_1(all(select(!(!arg_1.yy), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), global0.x)));
    var var_2 = firstLeadingBit(arg_2);
    var var_3 = vec2<bool>((~(~1u) | arg_2) <= u_input.d.x, global0.x);
    let var_4 = Struct_1((global0.x | (-125f == _wgslsmith_f_op_f32(-var_0.x))) | var_3.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-126f))) * arg_0.x)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>) -> i32 {
    let var_0 = Struct_1(true & (_wgslsmith_f_op_f32(-arg_0.x) == _wgslsmith_f_op_f32(func_3(arg_0.wxz, !vec3<bool>(true, global0.x, global0.x), u_input.d.x, Struct_1(global0.x)))));
    var var_1 = ~1u;
    return ~u_input.b.x;
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = countOneBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, 12645i, -7489i, u_input.c.x) ^ u_input.b), ~vec4<i32>(u_input.c.x, -23042i, 45345i, u_input.a.x)), _wgslsmith_div_i32(i32(-1i) * -u_input.c.x, _wgslsmith_div_i32(select(u_input.a.x, -35119i, true), _wgslsmith_div_i32(-29765i, u_input.c.x)))));
    let var_1 = u_input.c;
    global0 = select(!select(vec3<bool>(!global0.x, any(vec2<bool>(global0.x, arg_1)), true), vec3<bool>(!global0.x, global0.x, any(vec4<bool>(true, arg_1, true, global0.x))), false), select(!select(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(global0.x, true, arg_1), vec3<bool>(arg_1, global0.x, global0.x)), select(vec3<bool>(true, true, true), vec3<bool>(global0.x, true, false), false), global0.x), vec3<bool>(func_2(vec4<f32>(-922f, -376f, -413f, -261f), vec3<f32>(-2006f, -566f, -104f)) < 2147483647i, select(any(vec3<bool>(global0.x, arg_1, global0.x)), any(vec2<bool>(arg_1, global0.x)), true), all(global0.zz)), !select(vec3<bool>(false, true, arg_1), vec3<bool>(global0.x, false, true), !vec3<bool>(true, arg_1, arg_1))), true);
    global0 = vec3<bool>(true, -1i == -func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-870f, 1096f, 1101f, -268f) + vec4<f32>(-298f, 206f, -592f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(747f, -1000f, -693f), vec3<f32>(402f, 688f, 1188f), vec3<bool>(false, global0.x, true)))), false | global0.x);
    let var_2 = Struct_1(!(!(!all(vec4<bool>(false, arg_1, true, true)))));
    return -min(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-22262i, -4111i, var_1.x), _wgslsmith_div_i32(max(4371i, u_input.a.x), u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(func_1(~(~u_input.d.x), !(-28515i == u_input.c.x) | global0.x), reverseBits(func_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(606f)), 343f, _wgslsmith_f_op_f32(844f + 791f), _wgslsmith_f_op_f32(f32(-1f) * -2349f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-169f, 1932f, 827f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1927f, 1152f, -192f)))))));
    global0 = !(!vec3<bool>(!(!global0.x), true, global0.x));
    var var_1 = Struct_1(global0.x);
    var_1 = Struct_1(any(!select(!vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(false, true, var_1.a, false), var_0.x < 1i)));
    var_1 = Struct_1(true & global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(325f, 116f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-179f, 533f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-207f)))));
}

