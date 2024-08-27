struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(false, vec4<u32>(12747u, 5529u, 1u, 41473u)), Struct_1(false, vec4<u32>(4294967295u, 1u, 1u, 22671u)), Struct_1(true, vec4<u32>(30195u, 1u, 4294967295u, 0u)), Struct_1(false, vec4<u32>(0u, 39543u, 0u, 14415u)), Struct_1(true, vec4<u32>(62890u, 1u, 66328u, 11632u)), Struct_1(false, vec4<u32>(0u, 46295u, 37807u, 11094u)), Struct_1(true, vec4<u32>(23179u, 4294967295u, 16588u, 0u)), Struct_1(true, vec4<u32>(4294967295u, 0u, 1u, 0u)), Struct_1(true, vec4<u32>(72963u, 0u, 40078u, 1763u)), Struct_1(true, vec4<u32>(17550u, 643u, 20103u, 4294967295u)), Struct_1(false, vec4<u32>(0u, 0u, 69206u, 0u)), Struct_1(false, vec4<u32>(110824u, 57221u, 286u, 0u)), Struct_1(true, vec4<u32>(4294967295u, 72586u, 36708u, 4294967295u)), Struct_1(true, vec4<u32>(7041u, 0u, 0u, 1610u)));

var<private> global3: Struct_1 = Struct_1(true, vec4<u32>(25336u, 77735u, 55912u, 32948u));

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = global3.b.zzx;
    var var_1 = firstLeadingBit(vec4<u32>(abs(reverseBits(46064u) & (16688u >> (var_0.x % 32u))), 4294967295u, 1u, abs(~(~16960u))));
    var var_2 = global3.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -773f)));
    var var_4 = _wgslsmith_f_op_f32(sign(1749f));
    return _wgslsmith_div_u32(~var_1.x, ~28190u);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_1;
    var var_1 = select(select(!(!select(vec3<bool>(global3.a, true, var_0.a), vec3<bool>(var_0.a, false, global3.a), true)), !select(!vec3<bool>(true, arg_1.a, true), vec3<bool>(arg_1.a, var_0.a, var_0.a), var_0.a), !all(select(vec3<bool>(var_0.a, false, global3.a), vec3<bool>(global3.a, false, var_0.a), vec3<bool>(arg_1.a, arg_1.a, global3.a)))), select(!vec3<bool>(u_input.a.x > -60132i, arg_1.a, true), vec3<bool>(all(vec3<bool>(global3.a, true, true)), true, any(vec3<bool>(false, global3.a, var_0.a))), vec3<bool>(true, !all(vec2<bool>(arg_1.a, arg_1.a)), true && select(arg_1.a, false, true))), select(!select(select(vec3<bool>(var_0.a, arg_1.a, global3.a), vec3<bool>(false, arg_1.a, var_0.a), vec3<bool>(arg_1.a, global3.a, false)), !vec3<bool>(false, true, global3.a), vec3<bool>(true, false, var_0.a)), vec3<bool>(!any(vec4<bool>(var_0.a, true, global3.a, global3.a)), !var_0.a, true), !global3.a));
    var_1 = select(!vec3<bool>(false, any(var_1.zy), select(true, !global3.a, arg_1.b.x <= arg_0)), vec3<bool>(countOneBits(reverseBits(u_input.a.x)) >= 1i, var_1.x, var_0.a), false);
    let var_2 = arg_2;
    global2 = array<Struct_1, 14>();
    return _wgslsmith_mod_i32(u_input.a.x, u_input.a.x);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(207f * _wgslsmith_f_op_f32(-1105f + -1000f)), _wgslsmith_f_op_f32(step(-782f, -1000f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1925f + -397f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -196f) + -1613f)))));
    let var_1 = func_3(global3.b.x, global2[_wgslsmith_index_u32(abs(select(global3.b.x, _wgslsmith_sub_u32(1u, func_2(vec2<f32>(1453f, 572f), vec3<f32>(var_0, var_0, var_0))), true)), 14u)], _wgslsmith_f_op_f32(-var_0), ~firstLeadingBit(vec3<u32>(299u | global3.b.x, ~global3.b.x, select(7539u, 27853u, false))));
    var var_2 = Struct_1(!any(vec4<bool>(var_1 <= -25839i, true, any(vec3<bool>(true, global3.a, global3.a)), global3.a)), select(~global3.b, ~(~(~global3.b)), !(true != !global3.a)));
    global4 = array<Struct_1, 3>();
    var_2 = global4[_wgslsmith_index_u32(26565u, 3u)];
    return Struct_1(!var_2.a, vec4<u32>(select(73452u, ~(var_2.b.x >> (global3.b.x % 32u)), global3.a), global3.b.x, global3.b.x, 21355u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0;
    let var_2 = func_1();
    global4 = array<Struct_1, 3>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(253f, 470f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(638f, 165f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2708f, -134f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-388f, 1504f)))))), vec2<bool>(true, !var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3, var_3) * _wgslsmith_f_op_vec2_f32(-var_3))))), countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(8551i, -1i, 2147483647i, 2147483647i), -vec4<i32>(u_input.a.x, 1i, u_input.a.x, -1i))) ^ _wgslsmith_clamp_i32(select(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), -2147483647i, var_1.a), ~min(1552i, -8470i), u_input.a.x), global3.b.x, vec2<u32>(_wgslsmith_mult_u32(~firstTrailingBit(var_1.b.x), 23037u), ~(_wgslsmith_mod_u32(3097u, var_2.b.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, global3.b.x, global3.b.x, 1u), var_2.b))));
}

