struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec2<bool>(false, true), -16883i), vec2<bool>(false, false)), Struct_2(Struct_1(vec2<bool>(true, true), 8154i), vec2<bool>(true, false)), Struct_2(Struct_1(vec2<bool>(false, false), -45989i), vec2<bool>(false, true)));

var<private> global2: array<vec3<bool>, 26>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_clamp_i32(abs(u_input.a ^ reverseBits(reverseBits(-2147483647i))), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_add_i32(u_input.b ^ u_input.c.x, u_input.e)), vec2<i32>(-max(arg_0.b, u_input.a), _wgslsmith_add_i32(u_input.e, u_input.a) << (_wgslsmith_clamp_u32(u_input.d, u_input.d, 53113u) % 32u))));
    global1 = array<Struct_2, 3>();
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1301f * -250f) - 2035f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-665f)), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -965f))), arg_1);
    let var_2 = vec3<u32>(countOneBits(~(1u << (u_input.d % 32u)) >> (46878u % 32u)), _wgslsmith_sub_u32(min(1u, _wgslsmith_clamp_u32(u_input.d, u_input.d, 39003u)) ^ abs(~u_input.d), reverseBits(u_input.d)), 109356u);
    let var_3 = Struct_3(Struct_1(select(arg_0.a, vec2<bool>(true, false), (var_2.x > 21284u) && (u_input.a >= -35525i)), firstLeadingBit(~u_input.c.x)));
    return ~22681u;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -703f);
    global2 = array<vec3<bool>, 26>();
    global1 = array<Struct_2, 3>();
    let var_1 = ~func_3(Struct_1(vec2<bool>(arg_2.a.b <= 0i, true), u_input.e), -388f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(1001f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -769f)));
    return select(select(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.d, 14106u), var_1 >> (1u % 32u)), _wgslsmith_div_u32(u_input.d, 1u)), 26u)], global2[_wgslsmith_index_u32(~0u, 26u)], false), select(vec3<bool>(arg_1.a.a.x, arg_2.a.a.x & (false | arg_1.a.a.x), (1u & var_1) > reverseBits(var_1)), !global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]), global2[_wgslsmith_index_u32(u_input.d, 26u)]);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = false;
    global0 = -(abs(arg_1.b) << (~(~arg_0.x) % 32u));
    var var_1 = select(func_2(_wgslsmith_f_op_f32(-1000f - -1778f), Struct_3(arg_1), Struct_3(Struct_1(!arg_1.a, ~(-36003i)))), !(!select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(80005u, 50999u), 26u)], !global2[_wgslsmith_index_u32(u_input.d, 26u)], arg_1.a.x)), !select(vec3<bool>(true, any(vec3<bool>(false, var_0, arg_1.a.x)), true), !func_2(1153f, Struct_3(arg_1), Struct_3(arg_1)), vec3<bool>(true, true, func_2(-1000f, Struct_3(Struct_1(arg_1.a, 54572i)), Struct_3(Struct_1(vec2<bool>(false, false), 31202i))).x)));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -308f) - _wgslsmith_f_op_f32(-814f - -109f)), 135f))));
    var var_3 = u_input.d;
    return Struct_2(Struct_1(!(!(!arg_1.a)), arg_1.b), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<u32>(u_input.d, 3004u, u_input.d), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), u_input.b));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f) - _wgslsmith_f_op_f32(630f - -699f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-690f)) + -1912f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f) + -291f))))));
    let var_2 = !(!select(vec4<bool>(var_0.a.a.x, true, var_0.b.x, var_0.a.b != u_input.b), !select(vec4<bool>(var_0.b.x, false, var_0.b.x, true), vec4<bool>(var_0.b.x, var_0.a.a.x, var_0.b.x, var_0.a.a.x), var_0.a.a.x), select(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.a.a.x), select(vec4<bool>(var_0.a.a.x, true, false, false), vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.a.a.x), vec4<bool>(false, var_0.b.x, false, var_0.b.x)), !vec4<bool>(var_0.a.a.x, var_0.b.x, true, false))));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1459f, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-960f, var_1.x, 330f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 667f, -817f)))))))));
    let var_4 = global1[_wgslsmith_index_u32(4088u, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_3.x)))), var_1.x, var_3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_3.x, var_3.x, 472f)))))), 0u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1188f), 535f, 1792f))), -u_input.b, u_input.d);
}

