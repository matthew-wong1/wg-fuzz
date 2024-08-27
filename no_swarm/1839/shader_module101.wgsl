struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false));

var<private> global2: array<bool, 15>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_2(!vec2<bool>(!arg_0 & any(vec2<bool>(false, arg_0)), true));
    global0 = array<vec3<u32>, 14>();
    var var_1 = -(~(~(~u_input.b.x)));
    var var_2 = Struct_2(!vec2<bool>(true && all(vec3<bool>(false, true, true)), ~u_input.b.x >= -u_input.b.x));
    global2 = array<bool, 15>();
    return ~21864u;
}

fn func_1() -> f32 {
    global2 = array<bool, 15>();
    global0 = array<vec3<u32>, 14>();
    var var_0 = func_2(global2[_wgslsmith_index_u32(~(~select(74737u, 32461u, global2[_wgslsmith_index_u32(1u, 15u)])), 15u)]) <= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 19747u, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(28846u, 14u)], vec3<u32>(63033u, 1u, 86694u)), select(4566u, 0u, true)) & select(vec4<u32>(1u, 4294967295u, 1137u, 13867u), vec4<u32>(30489u, 0u, 0u, 62592u), vec4<bool>(true, global2[_wgslsmith_index_u32(37438u, 15u)], false, true)), vec4<u32>(47758u, ~_wgslsmith_add_u32(1u, 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(47356u, 1u), vec2<u32>(80464u, 20908u)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 69316u), vec2<u32>(16201u, 0u))), firstTrailingBit(_wgslsmith_mult_u32(1u, 11140u))));
    global0 = array<vec3<u32>, 14>();
    let var_1 = true;
    return _wgslsmith_f_op_f32(-1458f * _wgslsmith_div_f32(-966f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-467f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    var var_0 = !select(vec2<bool>(false, true), vec2<bool>(false, any(vec3<bool>(true, false, arg_0.b))), vec2<bool>(true, true));
    let var_1 = 1u;
    let var_2 = vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 31483u), vec2<u32>(var_1, 0u)), _wgslsmith_clamp_u32(var_1, 90611u, var_1)), var_1, func_2(!any(global1[_wgslsmith_index_u32(var_1, 9u)])), var_1) >> (~vec4<u32>(1u, 0u, var_1, _wgslsmith_mod_u32(_wgslsmith_mod_u32(49866u, 16637u), ~var_1)) % vec4<u32>(32u));
    let var_3 = -2147483647i;
    var_0 = vec2<bool>(true, arg_1.b);
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_2.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(var_2), var_2 >> (vec4<u32>(var_1, 79959u, var_2.x, var_2.x) % vec4<u32>(32u))) ^ 4294967295u), abs((_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(51359u, 14u)], vec3<u32>(var_1, 36890u, var_2.x)) & ~var_1) << ((var_1 ^ _wgslsmith_div_u32(1u, var_2.x)) % 32u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = min(max(-(vec3<i32>(u_input.b.x, 12057i, -9716i) << (firstTrailingBit(global0[_wgslsmith_index_u32(29122u, 14u)]) % vec3<u32>(32u))), arg_2), ~(countOneBits(u_input.b.xyx) ^ vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.c), _wgslsmith_mod_i32(-23633i, -10730i), 1i)));
    global0 = array<vec3<u32>, 14>();
    var var_1 = Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(countOneBits(~(~0u)), 15u)], !arg_1.b));
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(34851i, select(_wgslsmith_mod_i32(-1i, -13114i << (arg_0.x % 32u)), -u_input.b.x, var_1.a.x), -_wgslsmith_add_i32(8525i | u_input.b.x, firstTrailingBit(arg_2.x))), ~u_input.b.xyx);
    var var_2 = global2[_wgslsmith_index_u32(arg_3.x, 15u)] != false;
    return 11361i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(219f, -280f)))) <= _wgslsmith_f_op_f32(func_1()), true);
    var var_1 = func_4(vec2<u32>(0u, ~(~79728u)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -366f)) * vec2<f32>(_wgslsmith_f_op_f32(1052f + 191f), _wgslsmith_f_op_f32(floor(1024f)))), any(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 15u)] | false, global2[_wgslsmith_index_u32(~0u, 15u)], all(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 15u)], false))))), vec3<i32>(4574i, u_input.b.x, u_input.b.x >> ((~35236u | _wgslsmith_dot_vec4_u32(vec4<u32>(28513u, 870u, 4985u, 4294967295u), vec4<u32>(0u, 0u, 28748u, 50486u))) % 32u)), min(firstLeadingBit(global0[_wgslsmith_index_u32(func_3(Struct_1(vec2<f32>(-1000f, 1083f), false), Struct_1(vec2<f32>(-397f, 883f), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-679f, -1025f, 924f, -1202f))), 14u)]), abs(global0[_wgslsmith_index_u32(4294967295u, 14u)])));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-506f, _wgslsmith_f_op_f32(round(1000f)), !global2[_wgslsmith_index_u32(10358u, 15u)]))) - 1f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(356f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -539f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-943f, 886f))))));
    var var_3 = u_input.a;
    let var_4 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec2<u32>(firstLeadingBit(51783u), _wgslsmith_mult_u32(16791u, 69038u)), ~(~vec2<u32>(1u, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1652f, -539f, -117f, 1000f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(900f, 2021f, -269f, -541f))))))), u_input.b.x, u_input.b.yxw, -562f);
}

