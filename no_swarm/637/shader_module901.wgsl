struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: Struct_2 = Struct_2(vec3<u32>(0u, 0u, 4294967295u), 648f, Struct_1(vec3<bool>(false, true, true)), vec4<u32>(0u, 70611u, 0u, 9531u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0.x;
    return Struct_1(select(!vec3<bool>(all(vec3<bool>(global2.x, true, true)), arg_1.x >= arg_0.x, u_input.b == 0i), vec3<bool>(true && (global3.c.a.x && false), false, global3.c.a.x || any(vec3<bool>(false, true, true))), !global1.a));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = global3.b;
    var var_1 = vec3<bool>(!(true | (u_input.a <= (u_input.a & 39029u))), false, global2.x & !(_wgslsmith_div_f32(global3.b, -665f) < global3.b));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(max(u_input.a | 21540u, u_input.a), 0u), reverseBits(~(~global3.a.yz))), _wgslsmith_mod_u32(countOneBits(5142u) | ~u_input.a, 1152u), _wgslsmith_sub_u32(global3.d.x, 37181u));
    var var_3 = func_2(global3.d, min(vec2<u32>(abs(var_2.x) >> (1u % 32u), u_input.a), vec2<u32>(_wgslsmith_add_u32(u_input.a | 19025u, global3.a.x), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, global3.a.x), _wgslsmith_dot_vec4_u32(global3.d, global3.d)))), func_2(vec4<u32>(20887u, abs(var_2.x), ~global3.d.x, ~firstLeadingBit(global3.d.x)), var_2.zy, arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-478f, 1042f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(246f, global3.b) + vec2<f32>(-1197f, global3.b))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3.b * global3.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b + global3.b), 1009f))));
    var_1 = select(global3.c.a, func_2(~min(reverseBits(global3.d), _wgslsmith_sub_vec4_u32(global3.d, vec4<u32>(global3.d.x, u_input.a, u_input.a, var_2.x))), var_2.yy, Struct_1(global3.c.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.b), global3.b))).a, arg_1.a);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b))), 1890f)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(global3.c.a.x, global2.x), func_2(vec4<u32>(u_input.a, _wgslsmith_clamp_u32(0u, 1u, 98862u), 47u, u_input.a), vec2<u32>(~u_input.a, select(4294967295u, global3.d.x, true)), global3.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.b, global3.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global3.b) * vec2<f32>(-1611f, global3.b)))), -693f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.b)) + _wgslsmith_f_op_f32(global3.b + 891f)))) + global3.b);
    global1 = global3.c;
    var var_1 = _wgslsmith_mod_u32(select(140587u << (countOneBits(_wgslsmith_div_u32(48810u, global3.a.x)) % 32u), max(global3.a.x, u_input.a), select(!(-1530f != global3.b), false, false)), abs((_wgslsmith_clamp_u32(global3.a.x, u_input.a, global3.a.x) ^ ~u_input.a) >> (4294967295u % 32u)));
    let var_2 = global1.a;
    var var_3 = select(select(global3.c.a, global3.c.a, select(func_2(~global3.d, ~vec2<u32>(global3.a.x, u_input.a), func_2(vec4<u32>(u_input.a, u_input.a, global3.a.x, 4294967295u), vec2<u32>(12382u, 1u), Struct_1(vec3<bool>(var_2.x, var_2.x, false)), vec2<f32>(var_0, var_0)), vec2<f32>(var_0, var_0)).a, vec3<bool>(var_2.x, true, true), var_2.x)), !select(func_2(vec4<u32>(global3.d.x, 4294967295u, u_input.a, u_input.a) << (global3.d % vec4<u32>(32u)), abs(global3.d.wx), Struct_1(global3.c.a), vec2<f32>(203f, -142f)).a, select(func_2(vec4<u32>(46063u, 12487u, global3.d.x, u_input.a), global3.a.yx, global3.c, vec2<f32>(-840f, 2181f)).a, !global3.c.a, var_2.x), true), (firstTrailingBit(arg_0) >= ~(-10211i)) & !(!var_2.x | all(vec2<bool>(true, false))));
    return global3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(~52395i);
    let var_0 = u_input.b;
    global1 = global3.c;
    var var_1 = _wgslsmith_add_u32(countOneBits(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, global3.a.x), ~42124u)), 1u) ^ 84353u;
    let var_2 = 17637u;
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(max(_wgslsmith_mult_vec4_u32(global3.d, global3.d), vec4<u32>(var_2, var_2, 58988u, global3.d.x))), abs(max(vec4<u32>(1u, var_2, 4294967295u, 13577u), min(vec4<u32>(17006u, 4294967295u, 57760u, var_2), vec4<u32>(0u, 1u, 1u, 41150u))))), u_input.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 476f)) + vec2<f32>(global3.b, global3.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1298f, 501f)), _wgslsmith_f_op_f32(trunc(899f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, -1088f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-528f, global3.b, global3.b, 837f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, 248f, global3.b, global3.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.b, -446f, global3.b, 546f), vec4<f32>(622f, global3.b, 792f, global3.b))) * vec4<f32>(2381f, -309f, -1009f, global3.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1837f, global3.b, 149f, global3.b), vec4<f32>(global3.b, 533f, -498f, -140f), vec4<bool>(false, global3.c.a.x, true, false))))))));
}

