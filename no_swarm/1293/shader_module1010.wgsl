struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-11418i, -21527i);

var<private> global1: array<i32, 13> = array<i32, 13>(0i, 0i, -18806i, 1i, 1i, 2147483647i, 51960i, 0i, 50383i, i32(-2147483648), i32(-2147483648), 2147483647i, 2147483647i);

var<private> global2: u32 = 57599u;

var<private> global3: f32 = -1000f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0, arg_0, -824f) + vec4<f32>(473f, 1075f, -968f, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 2267f) - vec4<f32>(arg_0, -1448f, arg_0, 985f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, _wgslsmith_f_op_f32(round(765f)), _wgslsmith_f_op_f32(f32(-1f) * -514f), arg_0))));
    global2 = 4294967295u;
    return ~(_wgslsmith_sub_u32(~(~2540u), reverseBits(57197u) ^ firstTrailingBit(14352u)) >> (~1u % 32u));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_1.d.zzx;
    var var_1 = arg_1;
    let var_2 = 1u;
    global1 = array<i32, 13>();
    global2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_2, func_3(629f) & _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_2, 9037u, 6619u), countOneBits(vec4<u32>(var_2, var_2, arg_0, 20863u)))), 0u);
    return abs(45659u);
}

fn func_1() -> i32 {
    var var_0 = all(select(vec3<bool>(any(vec4<bool>(false, false, false, true)), any(vec4<bool>(false, false, false, true)) || true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true))), vec3<bool>(true, any(vec3<bool>(true, true, true)), false), true));
    global1 = array<i32, 13>();
    global2 = ~(~1u);
    var_0 = select(all(!select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, false))), true, false);
    var var_1 = firstLeadingBit(-u_input.a.x);
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(func_2(0u, Struct_1(false, 31865i, 654f, vec4<i32>(global0.x, global0.x, -2147483647i, global1[_wgslsmith_index_u32(1u, 13u)])), vec2<f32>(-1051f, -1077f), vec4<f32>(-830f, -451f, -364f, 1163f)), 13u)], countOneBits(global1[_wgslsmith_index_u32(4294967295u, 13u)]), u_input.a.x), 9542i), u_input.a.x | global1[_wgslsmith_index_u32(53695u, 13u)]), _wgslsmith_clamp_i32(global0.x, firstTrailingBit(i32(-1i) * -23798i), reverseBits(1i)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> StorageBuffer {
    let var_0 = vec3<bool>(!arg_0, arg_1.a, true || arg_0);
    var var_1 = var_0;
    let var_2 = arg_1;
    var var_3 = vec4<bool>(false, var_0.x & true, true, any(select(vec3<bool>(any(vec4<bool>(true, arg_0, var_2.a, arg_1.a)), arg_1.a, any(vec4<bool>(arg_1.a, var_0.x, var_1.x, true))), var_0, true)));
    var var_4 = -2147483647i;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_1.c, -1004f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_f_op_f32(-1000f + arg_1.c))))), var_2.d, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(10714i, ~global1[_wgslsmith_index_u32(34111u, 13u)]), ~_wgslsmith_mult_i32(-401i, arg_1.d.x)), _wgslsmith_mod_i32(arg_1.d.x, ~var_2.b << (~1324u % 32u))), _wgslsmith_f_op_f32(arg_2.x * arg_1.c), reverseBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(1u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 13>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1261f))), -859f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -1524f)))) + vec3<f32>(_wgslsmith_div_f32(-339f, 317f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1212f, 381f)) + _wgslsmith_f_op_f32(1000f * 496f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2182f)) * _wgslsmith_f_op_f32(-1083f + -828f)))));
    var var_1 = Struct_1(false, global0.x, _wgslsmith_f_op_f32(sign(1639f)), ~vec4<i32>(-80240i, 1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -61832i, 0i), u_input.a), -(~global0.x), u_input.a.x));
    let var_2 = vec2<i32>(-20256i, global1[_wgslsmith_index_u32(~17619u, 13u)]);
    let var_3 = 19031u;
    global0 = var_1.d.zx;
    let var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-var_1.c)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) * vec3<f32>(var_1.c, var_0.x, var_1.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.c, var_1.c)))) + var_0)), var_0));
    let x = u_input.a;
    s_output = func_4(!var_1.a, Struct_1(firstTrailingBit(firstTrailingBit(92402u)) > ~(4294967295u << (var_3 % 32u)), u_input.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4.x - var_1.c), _wgslsmith_f_op_f32(ceil(1526f)))), 890f)), vec4<i32>(i32(-1i) * -var_2.x, func_1(), 2147483647i, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(1u, 13u)] << (var_3 % 32u), global0.x << (var_3 % 32u), -2147483647i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-322f + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4.x, -1151f)))) * vec2<f32>(1373f, var_4.x)));
}

