struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(9765i, -15815i, -1i, 2147483647i), vec4<i32>(0i, 2147483647i, 6477i, -1i), vec4<i32>(-8520i, -1i, -35095i, 0i), vec4<i32>(0i, i32(-2147483648), -10207i, i32(-2147483648)), vec4<i32>(0i, -26599i, -30672i, 1i), vec4<i32>(-5506i, 16573i, 1i, 1i), vec4<i32>(-24466i, -1i, -9148i, 26740i), vec4<i32>(38379i, 2147483647i, 2147483647i, 15462i), vec4<i32>(37702i, i32(-2147483648), -29218i, 2147483647i), vec4<i32>(0i, 2147483647i, 34103i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -58212i, -27375i, -21358i), vec4<i32>(2147483647i, -33296i, -1i, -1i), vec4<i32>(27137i, 0i, -33792i, 1i), vec4<i32>(-1i, 49045i, 0i, -1i), vec4<i32>(i32(-2147483648), -1i, -34803i, i32(-2147483648)), vec4<i32>(-2202i, 1i, -40326i, -5034i), vec4<i32>(24894i, -44139i, 1i, 42460i), vec4<i32>(i32(-2147483648), 69945i, 5606i, 7943i), vec4<i32>(2147483647i, -49672i, -1i, -59627i), vec4<i32>(-1i, 54069i, 2147483647i, 0i));

var<private> global2: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.c.x);
    let var_1 = ~_wgslsmith_add_i32(u_input.a.x, arg_2);
    global2 = Struct_2(vec2<f32>(-1014f, _wgslsmith_f_op_f32(step(293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * arg_1.c.x)))), global2.b);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.b.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1436f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(544f)) - _wgslsmith_f_op_f32(-106f + _wgslsmith_f_op_f32(-952f + arg_0.c.x))));
    return ~abs(~(~vec2<u32>(arg_0.b, arg_1.b) ^ min(vec2<u32>(36526u, arg_1.b), vec2<u32>(69u, global2.b.b))));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = max(vec2<i32>(reverseBits(u_input.a.x), u_input.b), ~(firstTrailingBit(u_input.a.yy) >> (~min(vec2<u32>(global2.b.b, 4294967295u), vec2<u32>(27634u, 1u)) % vec2<u32>(32u))));
    var var_1 = !any(vec3<bool>(global2.b.d.x & (global2.b.b < global2.b.b), u_input.a.x == _wgslsmith_dot_vec4_i32(vec4<i32>(-11060i, u_input.b, -2147483647i, var_0.x), u_input.a), !global2.b.a));
    var var_2 = _wgslsmith_add_u32(global2.b.b, _wgslsmith_dot_vec2_u32(~(~countOneBits(vec2<u32>(4294967295u, global2.b.b))), func_3(Struct_1(false, global2.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, 189f)), vec4<bool>(global2.b.e.x, global2.b.e.x, global2.b.a, global2.b.d.x), !global2.b.d.zx), global2.b, _wgslsmith_mod_i32(_wgslsmith_div_i32(33242i, u_input.a.x), var_0.x))));
    var_1 = true;
    global1 = array<vec4<i32>, 20>();
    return !select(global2.b.d.wz, select(vec2<bool>(false, true), !global2.b.e, true), select(select(!vec2<bool>(true, global2.b.a), select(vec2<bool>(global2.b.e.x, false), global2.b.d.xz, vec2<bool>(true, global2.b.e.x)), !vec2<bool>(global2.b.d.x, global2.b.d.x)), !global2.b.d.wx, false));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(global2.a + vec2<f32>(1f, 1f));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.c.x, -216f)), var_0, vec2<bool>(true, arg_2.x)))), Struct_1(global2.b.d.x, ~firstLeadingBit(global2.b.b), vec2<f32>(global2.b.c.x, var_0.x), select(!vec4<bool>(global2.b.a, arg_2.x, arg_1.x, true), arg_2, vec4<bool>(false, true, any(vec3<bool>(arg_2.x, false, true)), arg_1.x)), select(arg_1.zy, vec2<bool>(true, true), func_2(_wgslsmith_f_op_f32(global2.b.c.x - var_0.x)))));
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(760f, var_0.x), _wgslsmith_f_op_f32(max(376f, 612f)), true && global2.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2183f, -1407f, false)) + _wgslsmith_div_f32(2739f, var_0.x)))), Struct_1(true, min(~_wgslsmith_mult_u32(global2.b.b, 71546u), ~(~30469u)), vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x * global2.a.x)))), arg_1, vec2<bool>(-6717i == _wgslsmith_dot_vec2_i32(u_input.a.zw, vec2<i32>(u_input.b, -31371i)), !(arg_2.x || global2.b.a))));
    let var_2 = global2.b;
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-151f, global2.b.c.x)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global2.a), _wgslsmith_f_op_vec2_f32(-var_1.a))) + var_1.a)), Struct_1(func_3(global2.b, var_1.b, -u_input.b).x <= var_1.b.b, 1u, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-514f, global2.b.c.x)), _wgslsmith_f_op_f32(step(-985f, 495f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.c, var_1.a, var_2.e.x)), var_1.a)), !vec4<bool>(!var_1.b.d.x, arg_1.x, u_input.c.x < -7869i, true), var_1.b.e));
    return Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-718f, 602f), var_2.c) * var_2.c))), Struct_1(true || any(vec4<bool>(var_1.b.a, false, true, false)), var_2.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.x, 994f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(109f, 936f)) * _wgslsmith_f_op_f32(max(-631f, var_1.a.x)))), var_2.d, arg_2.yx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~4294967295u, global2.b.d, !(!select(!vec4<bool>(true, global2.b.a, global2.b.e.x, global2.b.e.x), select(global2.b.d, vec4<bool>(global2.b.d.x, global2.b.e.x, true, global2.b.d.x), true), false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1185f, global2.b.c.x, 1555f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b.c.x), _wgslsmith_f_op_f32(-514f * var_0.a.x)))));
    let var_2 = func_1(41055u, global2.b.d, vec4<bool>(any(vec2<bool>(var_0.b.a, true)), func_1(~(~var_0.b.b), var_0.b.d, vec4<bool>(!var_0.b.d.x, !global2.b.e.x, false, all(global2.b.d))).b.e.x, all(vec3<bool>(any(var_0.b.d), global2.b.d.x, false)), true)).b;
    let var_3 = var_0.b.b;
    let var_4 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_1(global2.b.b, vec4<bool>(var_0.b.d.x, false, var_0.b.e.x, var_4.e.x), vec4<bool>(false, false, var_4.a, false)).b.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.x, -1069f))))));
}

