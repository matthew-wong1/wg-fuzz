struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(15107u), Struct_1(93986u), Struct_1(0u), Struct_1(21335u), Struct_1(6789u), Struct_1(0u), Struct_1(50874u), Struct_1(19220u), Struct_1(4294967295u), Struct_1(1u), Struct_1(24788u), Struct_1(4294967295u), Struct_1(72505u), Struct_1(4294967295u), Struct_1(46573u), Struct_1(1u), Struct_1(27273u), Struct_1(0u), Struct_1(39924u), Struct_1(15943u), Struct_1(90985u), Struct_1(39026u), Struct_1(23600u), Struct_1(0u), Struct_1(4294967295u), Struct_1(37202u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> f32 {
    global0 = vec3<i32>(-16966i, _wgslsmith_mult_i32(1i, arg_1), arg_1);
    let var_0 = Struct_1(_wgslsmith_sub_u32(min(_wgslsmith_add_u32(14734u, u_input.d.x), arg_0.x), 35333u));
    let var_1 = ~arg_0.x;
    global0 = countOneBits(u_input.b.zzx);
    let var_2 = Struct_1(~_wgslsmith_div_u32(~reverseBits(u_input.a.x), 1u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(772f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1072f * _wgslsmith_f_op_f32(select(777f, 1000f, false))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(600f)), _wgslsmith_f_op_f32(ceil(-313f)), global0.x < 4244i)))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(~abs(_wgslsmith_sub_vec3_u32(u_input.a.wzw, vec3<u32>(u_input.c.x, 4294967295u, u_input.d.x))), 190i)), arg_0);
    let var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 26u)];
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(1174f)), _wgslsmith_f_op_f32(ceil(-677f)));
    var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 - vec2<f32>(-1754f, -850f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(732f, arg_0)))))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(trunc(-2321f)))));
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(reverseBits(u_input.a ^ u_input.a), vec4<u32>(~u_input.a.x & 83537u, u_input.a.x, 1u, ~var_1.a >> (19027u % 32u))));
    return 26260u;
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    global0 = min(vec3<i32>(1i >> (func_2(_wgslsmith_f_op_f32(trunc(978f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-987f, 475f))) % 32u), -22061i, -2147483647i), -vec3<i32>(global0.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(global0.x, 58452i), ~0i, -u_input.b.x), _wgslsmith_mult_i32(1i, u_input.b.x)));
    global0 = vec3<i32>(abs(-2147483647i), ~_wgslsmith_sub_i32(-1i | ~u_input.b.x, u_input.b.x), ~1i);
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1131f) - -519f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-466f - -670f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(319f)), -552f), true))));
    let var_2 = vec2<bool>(true, !any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true))));
    return !var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(962f - -1000f) - _wgslsmith_f_op_f32(1000f * 973f)))));
    let var_1 = func_1(global1[_wgslsmith_index_u32(~u_input.d.x, 26u)]);
    var var_2 = vec2<bool>(all(select(vec4<bool>(var_1.x == true, false, true, all(vec4<bool>(true, var_1.x, false, var_1.x))), vec4<bool>(false, var_1.x, true, any(vec4<bool>(true, var_1.x, var_1.x, true))), true)), !func_1(Struct_1(u_input.a.x)).x);
    global0 = abs(select(~u_input.b.wwz, -min(select(u_input.b.ywy, vec3<i32>(u_input.b.x, global0.x, global0.x), vec3<bool>(var_1.x, true, var_1.x)), ~u_input.b.zxy), true));
    var var_3 = 8989i;
    var_2 = vec2<bool>(true, var_2.x);
    var var_4 = Struct_1(~_wgslsmith_mult_u32(abs(_wgslsmith_mod_u32(32490u, 4294967295u)), ~(~1u)));
    let var_5 = select(vec4<bool>(false, var_1.x, true, var_2.x), !(!select(select(vec4<bool>(true, var_2.x, false, var_1.x), vec4<bool>(false, false, false, false), false), vec4<bool>(var_1.x, true, var_2.x, true), var_2.x)), select(!(!vec4<bool>(true, var_1.x, var_1.x, true)), !(!vec4<bool>(false, var_2.x, true, false)), vec4<bool>(true, any(vec2<bool>(var_2.x, false)), var_1.x, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1869f - _wgslsmith_f_op_f32(select(-655f, 1321f, false))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-533f)), _wgslsmith_div_f32(1000f, -333f), true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-126f + _wgslsmith_f_op_f32(floor(1000f)))))), u_input.b.x, 455f);
}

