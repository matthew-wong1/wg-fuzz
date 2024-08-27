struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648));

var<private> global1: vec3<f32> = vec3<f32>(-1000f, 320f, -335f);

var<private> global2: i32 = -1i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_1(global0.a);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 2017f) - arg_0.x), 804f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(434f * 1324f))) * arg_0.x));
    global2 = u_input.a;
    var var_1 = min(~(~(~vec3<i32>(var_0.a, u_input.c, global0.a)) >> (max(vec3<u32>(70342u, u_input.b.x, 1667u) | vec3<u32>(1u, 30725u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 3154u)) % vec3<u32>(32u))), vec3<i32>(-global0.a, firstTrailingBit(_wgslsmith_clamp_i32(u_input.a, var_0.a, ~29910i)), _wgslsmith_sub_i32(-var_0.a, -17440i)));
    global2 = _wgslsmith_div_i32(1i, reverseBits(var_1.x));
    return _wgslsmith_mult_i32(29086i, -var_1.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = !select(vec2<bool>(_wgslsmith_f_op_f32(-2595f - 1000f) > global1.x, true), select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), all(vec2<bool>(true, true))));
    var var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = arg_1;
    let var_4 = var_3;
    return 10677u;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1287f * global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, 1201f))), _wgslsmith_f_op_f32(-616f - _wgslsmith_f_op_f32(step(global1.x, global1.x))))) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 2620u, u_input.b.x, 9922u) | ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), abs(~vec4<u32>(u_input.b.x, u_input.b.x, 17901u, 53116u))) | _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, 53484u), ~func_3(Struct_1(-2147483647i), Struct_1(global0.a)), 8726u)) % 32u);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-175f, global1.x, global1.x) - vec3<f32>(global1.x, global1.x, -412f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))), vec3<f32>(global1.x, -329f, -1217f))));
    return Struct_1(global0.a >> (16778u % 32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    global0 = Struct_1(-1i);
    var var_0 = Struct_1(-15103i);
    global0 = arg_1;
    var var_1 = global1.yx;
    var_1 = _wgslsmith_f_op_vec2_f32(floor(global1.yy));
    return !(!any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(~(abs(vec4<u32>(u_input.b.x, 26626u, u_input.b.x, u_input.b.x)) & vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), ~(~vec4<u32>(18046u, 4294967295u, 4294967295u, u_input.b.x) << (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 54524u) % vec4<u32>(32u))), -1i <= _wgslsmith_dot_vec4_i32(vec4<i32>(-12344i, 21205i, 34037i, 7373i) >> (vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(global0.a, u_input.c, -1i, global0.a)))), func_1());
    let var_1 = ~(-min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.c), vec2<i32>(-2147483647i, 0i) & vec2<i32>(24435i, global0.a)), _wgslsmith_add_i32(-u_input.a, firstLeadingBit(2147483647i))));
    var var_2 = !((global0.a != _wgslsmith_mult_i32(u_input.c, -10587i)) & false) && (any(vec4<bool>(true, true, true, true)) == ((_wgslsmith_f_op_f32(global1.x + global1.x) < _wgslsmith_f_op_f32(round(354f))) & true));
    let var_3 = 4294967295u;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-283f * _wgslsmith_f_op_f32(-323f * global1.x))), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -322f)));
    var var_4 = vec2<u32>(var_3, _wgslsmith_mod_u32(u_input.b.x, 4294967295u));
    var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~32991u, ~var_3, ~u_input.b.x, var_4.x), ~(~vec4<u32>(var_3, var_3, 1u, var_4.x))) << (_wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_mult_u32(31530u, 89144u) | (var_3 | 89146u), firstTrailingBit(_wgslsmith_sub_u32(u_input.b.x, 21953u))) % 32u), ~79265u);
    let var_5 = ~vec2<i32>(-17871i, 1i) >> (vec2<u32>(87366u & _wgslsmith_add_u32(var_4.x, u_input.b.x), ~_wgslsmith_add_u32(var_3, 20043u) & u_input.b.x) % vec2<u32>(32u));
    var_0 = !all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(var_1, i32(-1i) * -4188i)), vec2<i32>(u_input.c, _wgslsmith_div_i32(_wgslsmith_add_i32(-global0.a, -var_1), _wgslsmith_sub_i32(-37652i, 1i))), abs(1u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(59903u, var_3, u_input.b.x)), ~u_input.b, var_1 > var_1), ~vec3<u32>(1u, var_4.x, 44723u)), 0u), var_3);
}

