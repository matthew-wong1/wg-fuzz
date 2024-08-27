struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 24>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, false, false)));

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec3<u32> {
    global3 = array<Struct_1, 15>();
    let var_0 = arg_1.a;
    let var_1 = Struct_1(arg_0.a);
    var var_2 = Struct_1(var_0);
    global1 = array<bool, 24>();
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_3, 44984u, select(arg_3, 39346u, true)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_3, 1u, arg_3), vec3<u32>(u_input.a, 4294967295u, 13180u)), reverseBits(vec3<u32>(35233u, 52654u, 1u) & vec3<u32>(arg_2, u_input.b, 4294967295u)), any(vec4<bool>(true, true, true, true)))), ~(min(vec3<u32>(477u, u_input.a, arg_3), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, arg_3, 1u), vec3<u32>(arg_2, 4294967295u, 4294967295u))) >> (~(vec3<u32>(4542u, u_input.b, u_input.b) >> (vec3<u32>(48533u, 24185u, 27509u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(27495u, 48865u, 0u)) >> (vec3<u32>(~arg_3, ~4826u, 34769u) % vec3<u32>(32u)), vec3<u32>(~arg_2, 1u, ~(arg_3 | 0u))));
}

fn func_2() -> vec3<f32> {
    var var_0 = 1000f;
    var var_1 = global3[_wgslsmith_index_u32(~1u, 15u)];
    var var_2 = _wgslsmith_mult_i32(-20813i, countOneBits(-1i));
    global1 = array<bool, 24>();
    global0 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(u_input.b, 23270u, global0.x)) & vec3<u32>(0u, global0.x, global0.x | u_input.a)) | reverseBits(func_3(global2[_wgslsmith_index_u32(~u_input.b, 25u)], Struct_1(var_1.a), _wgslsmith_add_u32(_wgslsmith_mod_u32(17197u, u_input.a), global0.x ^ 4294967295u), 79593u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-456f)), 1000f, -318f) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) - 1053f), 241f, 1000f)));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    let var_0 = 1f;
    global3 = array<Struct_1, 15>();
    var var_1 = vec4<i32>(arg_0.x & 2147483647i, ~arg_0.x, 39427i, select(_wgslsmith_add_i32(2147483647i, arg_0.x) & ~(-2147483647i), i32(-1i) * -2147483647i, global1[_wgslsmith_index_u32(~(~1u), 24u)])) | _wgslsmith_clamp_vec4_i32(arg_0, vec4<i32>(_wgslsmith_add_i32(arg_0.x, arg_0.x), _wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, arg_0.x, arg_0.x), arg_0.zzz, vec3<bool>(false, global1[_wgslsmith_index_u32(12645u, 24u)], global1[_wgslsmith_index_u32(u_input.a, 24u)])), arg_0.xzw), max(arg_0.x, _wgslsmith_sub_i32(10114i, arg_0.x)), i32(-1i) * -2147483647i), arg_0 ^ arg_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(min(2247f, _wgslsmith_f_op_f32(ceil(var_0))))))));
    var var_3 = select(!vec3<bool>(true, !global1[_wgslsmith_index_u32(~u_input.b, 24u)], !all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 24u)], false))), select(vec3<bool>(all(!vec4<bool>(global1[_wgslsmith_index_u32(44777u, 24u)], false, global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(91404u, 24u)])), false, !(-1396f > var_0)), vec3<bool>(true, any(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 24u)], false)), global1[_wgslsmith_index_u32(~global0.x | _wgslsmith_add_u32(global0.x, 0u), 24u)]), !vec3<bool>(false, !global1[_wgslsmith_index_u32(global0.x, 24u)], true)), vec3<bool>(!(!select(global1[_wgslsmith_index_u32(0u, 24u)], true, false)), !(true && global1[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 24u)]), !global1[_wgslsmith_index_u32(66960u, 24u)]));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(809f, -731f) + _wgslsmith_f_op_f32(func_1(vec4<i32>(-57023i, 0i, 12741i, 2147483647i)))))) + -350f);
    global2 = array<Struct_1, 25>();
    global0 = min(vec3<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b, u_input.a, u_input.a)), ~abs(vec3<u32>(58608u, u_input.b, 27904u))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, 4294967295u, global0.x, u_input.b)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, 4294967295u), vec4<u32>(u_input.b, u_input.b, global0.x, 0u)))), u_input.b), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, u_input.a), vec3<u32>(10143u, global0.x, 1u)) | reverseBits(countOneBits(vec3<u32>(28378u, u_input.a, global0.x)))));
    let var_1 = i32(-1i) * -select(firstTrailingBit(~1i), ~1i, false);
    let var_2 = abs(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(42106u, 8076u, global0.x, global0.x), select(vec4<u32>(170448u, 0u, u_input.b, u_input.a), vec4<u32>(1u, u_input.b, 4294967295u, 4294967295u), true))));
    global2 = array<Struct_1, 25>();
    var var_3 = global2[_wgslsmith_index_u32(0u, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-427f + _wgslsmith_div_f32(1000f, var_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) - -572f))), -945f, firstTrailingBit(firstLeadingBit(~vec3<i32>(42384i, var_1, -1i))));
}

