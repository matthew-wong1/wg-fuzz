struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(46162i, i32(-2147483648)), vec2<i32>(1i, 43669i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), -690i), vec2<i32>(2147483647i, 1i), vec2<i32>(18995i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(48105i, -1i), vec2<i32>(24336i, -22538i), vec2<i32>(-5861i, 1i), vec2<i32>(42281i, -8211i), vec2<i32>(-29738i, -22085i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 17382i), vec2<i32>(-8125i, 1i), vec2<i32>(-11564i, 42161i), vec2<i32>(2147483647i, -16383i), vec2<i32>(0i, -13385i), vec2<i32>(41148i, 5796i), vec2<i32>(1i, 2147483647i), vec2<i32>(-14949i, -15802i), vec2<i32>(-16055i, -30067i), vec2<i32>(-21596i, -1i), vec2<i32>(-15041i, 0i), vec2<i32>(55683i, -6066i), vec2<i32>(-32775i, 2147483647i), vec2<i32>(25696i, -1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(238f, -1000f)) * -570f))), _wgslsmith_f_op_f32(-797f + -2262f));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec2<f32> {
    global0 = select(vec4<bool>(global0.x, -217f <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(104f, -156f))), true, true), !select(vec4<bool>(arg_1 < 26300i, global0.x, true, -33174i > u_input.a), !vec4<bool>(global0.x, true, global0.x, global0.x), global0.x), !(true | any(global0.yz)));
    let var_0 = _wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~41951u, 14299u), min(1u, 36863u)), 28u)], firstLeadingBit(abs((vec2<i32>(2147483647i, -1i) << (vec2<u32>(u_input.b, 18772u) % vec2<u32>(32u))) >> (reverseBits(vec2<u32>(0u, 66793u)) % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_i32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1969u, u_input.b, 0u), vec4<u32>(1u, 59289u, 4294967295u, 0u)) << ((4294967295u ^ u_input.b) % 32u), 28u)], select(firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 10522u), 28u)]), global1[_wgslsmith_index_u32(12787u, 28u)], global0.yz), -(u_input.c.yx | global1[_wgslsmith_index_u32(select(27865u, u_input.b, false), 28u)])));
    var var_1 = arg_1;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-697f)) * arg_0);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(780f, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-959f, -226f))))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(1713f, 441f))))))), !(!global0.xy)));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))), 44428i));
    global1 = array<vec2<i32>, 28>();
    global0 = vec4<bool>(false & (any(global0.zxw) | true), true, true, true);
    global0 = !select(!(!vec4<bool>(true, global0.x, false, global0.x)), select(select(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(true, true, true, global0.x)), !vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x)), !vec4<bool>(true, global0.x, global0.x, false), true), global0.x);
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 699f, _wgslsmith_f_op_f32(min(-878f, _wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-910f, 551f, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1493f, -639f, var_0.x, -960f))))))), vec2<f32>(-689f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f))))), Struct_4(!(!vec4<bool>(global0.x, false, global0.x, global0.x))));
    return var_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!select(vec4<bool>(any(vec2<bool>(true, true)), global0.x | true, !global0.x, true), select(func_1(), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, false, global0.x, false), false), true), !all(vec4<bool>(false, false, true, global0.x))));
    global1 = array<vec2<i32>, 28>();
    var var_0 = global0.xxw;
    global0 = select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -128f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(-567f, 2147483647i)).x)), !(!var_0.x), true, any(vec3<bool>(true, -26472i <= u_input.c.x, any(vec4<bool>(global0.x, true, false, false))))), !vec4<bool>(true, !(global0.x || var_0.x), var_0.x, true), !(!vec4<bool>(u_input.c.x != -1i, all(vec2<bool>(var_0.x, global0.x)), true, u_input.b <= 4294967295u)));
    global0 = vec4<bool>(false, var_0.x, !(!global0.x), false);
    global1 = array<vec2<i32>, 28>();
    var_0 = global0.wxy;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1709f * _wgslsmith_f_op_f32(trunc(1570f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-654f, _wgslsmith_f_op_f32(max(1051f, 301f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), 1275f), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(-1260f, abs(-u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1541f, _wgslsmith_f_op_f32(f32(-1f) * -541f))), var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~max(-2147483647i, -11895i), u_input.a, u_input.a, u_input.a), -vec4<i32>(u_input.a, u_input.c.x, u_input.d, 38221i) >> (max(~vec4<u32>(4294967295u, 0u, 1u, u_input.b), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))));
}

