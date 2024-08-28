struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 21>;

var<private> global2: array<Struct_2, 13>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    global2 = array<Struct_2, 13>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-633f, _wgslsmith_f_op_f32(f32(-1f) * -852f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1249f, _wgslsmith_f_op_f32(min(-2226f, 109f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1144f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(135f)))))));
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], false);
    global0 = true;
    var var_2 = global2[_wgslsmith_index_u32(~(~max(_wgslsmith_add_u32(countOneBits(u_input.b.x), ~1u), ~(~u_input.b.x))), 13u)];
    return u_input.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = ~_wgslsmith_add_u32(arg_1, u_input.b.x);
    let var_1 = _wgslsmith_add_u32(var_0, func_3());
    global1 = array<bool, 21>();
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1443f))) - -737f)), -1763f));
    var var_3 = var_0;
    return var_1;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<bool, 21>();
    global0 = arg_0.b;
    var var_0 = max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u >> (u_input.d.x % 32u), ~(~u_input.b.x), _wgslsmith_mod_u32(~u_input.b.x, 1u), reverseBits(u_input.d.x)), ~(vec4<u32>(4949u, 0u, 4294967295u, 10051u) & ~vec4<u32>(4294967295u, u_input.b.x, 57878u, u_input.b.x))), u_input.b);
    let var_1 = 1u;
    var var_2 = global2[_wgslsmith_index_u32(~var_1 & (select(_wgslsmith_mod_u32(~var_1, firstLeadingBit(u_input.b.x)), abs(var_0.x >> (23091u % 32u)), global1[_wgslsmith_index_u32(func_2(Struct_2(arg_0), var_1), 21u)] | true) & ~_wgslsmith_add_u32(0u, var_0.x)), 13u)];
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = func_1(func_1(arg_0));
    let var_1 = u_input.c;
    let var_2 = arg_1.a.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1163f, _wgslsmith_f_op_f32(ceil(-914f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(728f, -135f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-284f, -1908f) - vec2<f32>(-513f, 462f)), vec2<bool>(true, arg_2.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-407f, 123f) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -411f), -587f)), true)));
    var var_4 = arg_1.a.b;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = true && (true && any(select(!vec3<bool>(global1[_wgslsmith_index_u32(28929u, 21u)], arg_2.b, arg_2.a), vec3<bool>(false, arg_2.a, arg_1.a), select(vec3<bool>(arg_2.b, true, false), vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a), global1[_wgslsmith_index_u32(4294967295u, 21u)]))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-570f + 374f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1279f)))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1861f + _wgslsmith_f_op_f32(f32(-1f) * -191f))));
    let var_0 = true;
    var var_1 = func_4(func_1(Struct_1(false, false)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 13u)], select(!select(!vec4<bool>(arg_1.b, false, arg_2.b, false), select(vec4<bool>(arg_2.a, false, false, arg_1.a), vec4<bool>(arg_0.a.a, false, var_0, global1[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(arg_2.a, arg_1.a, var_0, false)), vec4<bool>(true, false, false, arg_1.b)), vec4<bool>(true, all(select(vec2<bool>(true, var_0), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], true), vec2<bool>(false, false))), true, !arg_2.a), true));
    var var_2 = -1i;
    return Struct_1(!(-401f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1527f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-779f)) - 1f) + -103f) == _wgslsmith_f_op_f32(312f - _wgslsmith_f_op_f32(-728f + _wgslsmith_f_op_f32(787f + 251f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 13>();
    global2 = array<Struct_2, 13>();
    var var_0 = func_5(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], func_4(func_1(Struct_1(false, global1[_wgslsmith_index_u32(u_input.b.x, 21u)] && global1[_wgslsmith_index_u32(74017u, 21u)])), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, u_input.b.x), 13u)], !(!select(vec4<bool>(global1[_wgslsmith_index_u32(144643u, 21u)], true, global1[_wgslsmith_index_u32(u_input.d.x, 21u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(948u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], true), vec4<bool>(global1[_wgslsmith_index_u32(38754u, 21u)], global1[_wgslsmith_index_u32(u_input.d.x, 21u)], true, global1[_wgslsmith_index_u32(0u, 21u)])))), Struct_1(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], _wgslsmith_f_op_f32(-950f + 1000f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-890f, 361f, false)))));
    global2 = array<Struct_2, 13>();
    var var_1 = 30804i;
    let var_2 = _wgslsmith_div_u32(~(_wgslsmith_clamp_u32(24844u, u_input.d.x, 0u << (u_input.b.x % 32u)) | ~reverseBits(u_input.d.x)), u_input.d.x);
    var var_3 = _wgslsmith_mult_u32(~var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, _wgslsmith_mult_u32(~var_2, 0u & var_2), 13803u, ~1u), u_input.b));
    global1 = array<bool, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, firstTrailingBit(reverseBits(7091u))), _wgslsmith_f_op_f32(abs(-539f)), _wgslsmith_mod_u32(var_2, ~u_input.b.x << (var_2 % 32u)));
}

