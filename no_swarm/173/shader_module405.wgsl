struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(46772i, i32(-2147483648), -4903i, -1i);

var<private> global1: Struct_1 = Struct_1(false, vec4<u32>(54335u, 0u, 49394u, 133965u));

var<private> global2: array<i32, 15> = array<i32, 15>(-1i, 27368i, -1i, 15596i, 0i, -8020i, 20896i, 31748i, 0i, -37103i, i32(-2147483648), -5564i, i32(-2147483648), -48301i, 1i);

var<private> global3: f32;

var<private> global4: array<vec4<i32>, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> vec3<u32> {
    global4 = array<vec4<i32>, 2>();
    global1 = Struct_1(false, global1.b);
    let var_0 = Struct_1(true, vec4<u32>(u_input.a.x, countOneBits(1u), _wgslsmith_mult_u32(~global1.b.x | 27233u, arg_1.x), ~_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, global1.b.x)) | ~firstTrailingBit(0u)));
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(~max(_wgslsmith_sub_u32(arg_1.x, 34340u), firstLeadingBit(global1.b.x)), arg_1.x), _wgslsmith_mod_u32(global1.b.x, abs(4894u)) ^ 0u);
    return vec3<u32>(_wgslsmith_dot_vec3_u32(global1.b.yyx, global1.b.zwx), min(countOneBits(u_input.a.x), 4294967295u), global1.b.x);
}

fn func_2() -> vec2<bool> {
    let var_0 = func_3(global4[_wgslsmith_index_u32(11910u & global1.b.x, 2u)], _wgslsmith_add_vec2_u32(~(~global1.b.yw), abs(select(vec2<u32>(global1.b.x, global1.b.x), u_input.a.yx, vec2<bool>(false, global1.a)))) & (global1.b.wx << (vec2<u32>(~u_input.a.x, 9791u << (u_input.a.x % 32u)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-769f, 677f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(208f, 988f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1834f, 509f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1069f, 231f), 1f) * vec2<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-982f + 1000f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(738f, -587f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-836f, 409f)))))));
    let var_2 = Struct_1(global1.a, global1.b);
    var var_3 = var_2;
    global1 = Struct_1(false, ~abs(vec4<u32>(_wgslsmith_sub_u32(1u, 0u), _wgslsmith_div_u32(var_0.x, 1u), ~global1.b.x, ~global1.b.x)));
    return select(vec2<bool>(-_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], -27133i) != global0.x, !(false && var_2.a) || var_3.a), select(!select(vec2<bool>(global1.a, true), vec2<bool>(false, var_3.a), true), vec2<bool>((var_1.x <= var_1.x) || !var_2.a, var_3.a), select(!select(vec2<bool>(false, global1.a), vec2<bool>(false, global1.a), vec2<bool>(true, false)), vec2<bool>(true, true), !all(vec3<bool>(global1.a, var_3.a, true)))), select(vec2<bool>(true, true), !vec2<bool>(!var_2.a, var_3.a), ((-42953i << (var_2.b.x % 32u)) > -u_input.b.x) || ((global2[_wgslsmith_index_u32(1u, 15u)] >> (0u % 32u)) <= firstLeadingBit(global0.x))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    global2 = array<i32, 15>();
    global4 = array<vec4<i32>, 2>();
    global2 = array<i32, 15>();
    var var_0 = any(!select(!select(vec2<bool>(arg_2, true), vec2<bool>(true, false), vec2<bool>(true, global1.a)), select(select(vec2<bool>(global1.a, true), vec2<bool>(true, true), vec2<bool>(global1.a, false)), func_2(), !arg_2), !all(vec4<bool>(false, true, false, false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, arg_1.x), arg_1.zz), _wgslsmith_f_op_vec2_f32(floor(arg_1.zx)))))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(218f)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) - arg_1.xy)));
    return arg_1.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32) -> StorageBuffer {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f * _wgslsmith_f_op_f32(max(1124f, -1695f)))), 1357f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1669f, -1199f)))));
    global4 = array<vec4<i32>, 2>();
    global0 = global4[_wgslsmith_index_u32(~29204u, 2u)];
    let var_0 = arg_1;
    global0 = vec4<i32>(global0.x & countOneBits(~_wgslsmith_div_i32(-8828i, arg_2)), _wgslsmith_dot_vec3_i32(u_input.b.wyw, ~(~vec3<i32>(-2147483647i, -26613i, -15751i))), min(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4637u, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), 15u)], arg_2), abs(-76201i));
    return StorageBuffer(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(1860f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-835f))))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2062f, 464f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1004f, 2148f) * vec2<f32>(-705f, -792f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(785f, -229f), vec2<f32>(1098f, 406f), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-656f, -1000f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(879f, 189f), vec2<f32>(109f, 1000f), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-162f, -1749f)), !all(vec4<bool>(true, arg_0.x, arg_1.a, global1.a)))))), 10078u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-825f)))))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1321f, _wgslsmith_div_f32(-317f, 1341f)) - _wgslsmith_f_op_f32(round(-646f))))));
    var var_1 = 62981u >> (~firstTrailingBit(global1.b.x) % 32u);
    global4 = array<vec4<i32>, 2>();
    global4 = array<vec4<i32>, 2>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -2161f));
    global4 = array<vec4<i32>, 2>();
    let var_3 = Struct_1(!any(select(vec4<bool>(false, true, global1.a, false), vec4<bool>(global1.a, global1.a, global1.a, global1.a), vec4<bool>(false, global1.a, global1.a, true))), _wgslsmith_mod_vec4_u32(~global1.b, min(global1.b & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 72584u, 56423u), global1.b), ~vec4<u32>(74293u, global1.b.x, global1.b.x, u_input.a.x))));
    let x = u_input.a;
    s_output = func_4(vec4<bool>(var_3.a, var_3.a, var_2.x == _wgslsmith_f_op_f32(func_1(vec2<u32>(4294967295u, 72332u), vec3<f32>(1383f, -306f, var_2.x), global1.a, Struct_1(false, global1.b))), global1.a), var_3, -4162i);
}

