struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: vec4<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>) -> f32 {
    global1 = select(vec4<bool>(all(vec3<bool>(global0.x, true, u_input.e.x == 31300i)), false, global1.x, all(!(!vec4<bool>(false, global0.x, global0.x, global1.x)))), !(!select(vec4<bool>(false, global1.x, global1.x, false), !vec4<bool>(global0.x, global1.x, true, true), arg_0.c.x <= 0u)), !(!vec4<bool>(true, !global1.x, !global0.x, !global1.x)));
    global0 = !(!global1.wwx);
    global0 = select(!select(select(global1.wzy, global1.xzy, true), select(vec3<bool>(global0.x, global1.x, true), global1.xyy, false & global0.x), select(vec3<bool>(false, false, global0.x), !global1.zzz, vec3<bool>(global0.x, true, true))), vec3<bool>(select(!global1.x, any(vec4<bool>(global0.x, false, false, global1.x)), false), any(!global1.yyz) == true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, global1.x, true, true), !vec4<bool>(global0.x, global0.x, global1.x, global0.x)))), select(!(!(!global1.zzz)), vec3<bool>(any(vec3<bool>(false, global1.x, true)) & true, (u_input.e.x >> (31206u % 32u)) >= -6249i, global0.x), vec3<bool>(any(vec4<bool>(false, false, global0.x, false)) & false, false, arg_0.c.x == (1u >> (1u % 32u)))));
    global1 = vec4<bool>(false, global1.x, true, all(!global1.xx));
    var var_0 = Struct_1(-vec3<i32>(-2147483647i, -arg_0.b >> (26837u % 32u), u_input.d), true, global1.xww);
    return arg_1.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<bool>, arg_3: u32) -> bool {
    global0 = global1.wxz;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -638f), -704f, _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(10830i), u_input.b.x, u_input.a.wyw, vec3<f32>(-2077f, -1000f, 295f), 1215f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2179f, -466f, 783f)))), -682f))));
    var var_1 = _wgslsmith_mod_u32(~(~107908u), arg_3);
    let var_2 = u_input.e.yzy;
    var_1 = arg_3;
    return 4294967295u <= ~_wgslsmith_mult_u32(arg_3, abs(_wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x)));
}

fn func_1() -> bool {
    let var_0 = vec2<i32>(~46928i, -25417i | _wgslsmith_clamp_i32(u_input.e.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(62163u, u_input.a.x, u_input.a.x), u_input.a.xww) % 32u), -1i << (1u % 32u), u_input.b.x));
    global0 = !(!vec3<bool>(global0.x, global1.x, global0.x));
    var var_1 = select(vec4<bool>(global0.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(972f * -1043f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f - -1231f) - _wgslsmith_f_op_f32(select(-1000f, -1000f, false))), !global1.x), !(!vec4<bool>(all(global1.ww), func_2(vec4<bool>(false, true, global1.x, false), u_input.b.x, vec3<bool>(true, true, global1.x), 119034u), select(false, global1.x, global0.x), global0.x)), select(!(!select(vec4<bool>(global1.x, global0.x, global1.x, global1.x), vec4<bool>(global1.x, global0.x, false, global1.x), global0.x)), vec4<bool>(!any(vec3<bool>(false, global0.x, true)), !(!global1.x), all(select(vec3<bool>(false, global1.x, global1.x), global1.zwx, global1.www)), false), vec4<bool>(select(false, false, global1.x), !any(global1.wy), !(global1.x || false), !func_2(vec4<bool>(false, true, global1.x, global1.x), var_0.x, vec3<bool>(global1.x, false, false), 1u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(393f, _wgslsmith_div_f32(2197f, -1121f), true)), -1628f))));
    var var_3 = Struct_3(var_0.x);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(!vec4<bool>(true, 39705u <= u_input.a.x, true, all(vec4<bool>(global1.x, global0.x, global0.x, false))), select(!(!vec4<bool>(global0.x, global0.x, false, true)), !vec4<bool>(global1.x, false, false, false), global1.x), true));
    var var_1 = vec2<bool>(!func_1(), any(!vec4<bool>(var_0, any(vec4<bool>(global1.x, var_0, true, global1.x)), !var_0, !global1.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2005f, -1000f, -124f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, -144f, 1150f))), vec3<f32>(_wgslsmith_f_op_f32(-229f - -775f), _wgslsmith_div_f32(193f, -730f), _wgslsmith_f_op_f32(-600f - 1153f)))));
    global1 = select(vec4<bool>(!var_0, true, !var_1.x && (true || !global0.x), ~(-14817i) <= -_wgslsmith_div_i32(u_input.d, -1i)), select(!(!(!vec4<bool>(global1.x, true, global0.x, true))), vec4<bool>(true, false, select(var_0, global0.x, var_1.x), !(true | var_1.x)), select(select(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(global1.x, true, var_1.x, global1.x), false), !vec4<bool>(global1.x, var_1.x, true, global1.x), !var_0), select(vec4<bool>(global0.x, false, true, var_1.x), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0, global1.x, true, global1.x), true), select(vec4<bool>(var_0, var_0, true, var_1.x), vec4<bool>(var_1.x, var_1.x, global1.x, false), var_1.x)), true)), true);
    let var_3 = var_2.x;
    var var_4 = abs(93599u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(min(vec4<i32>(u_input.d, u_input.c, u_input.b.x, u_input.e.x), u_input.e), -vec4<i32>(19696i, 0i, -7997i, -2147483647i), select(vec4<bool>(var_1.x, global0.x, global1.x, false), vec4<bool>(true, false, var_1.x, true), vec4<bool>(false, true, true, false)))) >> (~select(u_input.a & vec4<u32>(19022u, 1u, u_input.a.x, 4294967295u), vec4<u32>(66954u, 36610u, u_input.a.x, u_input.a.x) >> (u_input.a % vec4<u32>(32u)), !global0.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_2, var_2, global1.wxz))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-885f, var_3, var_2.x) + vec3<f32>(var_3, -779f, var_3))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-508f, var_3, var_2.x), vec3<f32>(-1000f, var_2.x, -458f))))))), u_input.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1034f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * var_3), _wgslsmith_f_op_f32(-var_2.x))))))), abs(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 25666u), u_input.a.x, 0u)));
}

