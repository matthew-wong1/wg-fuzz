struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(-51373i, 37817i, 1i, 42089i, 47117i, -1i, -1i, -29681i, -39146i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 829f) - arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + -437f))));
    global0 = array<i32, 9>();
    var var_1 = arg_0;
    let var_2 = Struct_3(reverseBits(_wgslsmith_dot_vec3_u32(var_1.b.ywy, _wgslsmith_div_vec3_u32(u_input.b.xyz, vec3<u32>(u_input.b.x, var_1.a, 29131u)) | abs(var_1.b.yzx))), select(!vec3<bool>(false, select(true, false, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))));
    var var_3 = var_0.x;
    return vec3<u32>(~_wgslsmith_mult_u32(3041u, ~(~arg_0.a)), ~var_2.a, arg_0.a);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global0 = array<i32, 9>();
    let var_0 = Struct_3(1u, vec3<bool>(true, true, true));
    global0 = array<i32, 9>();
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], 0i, 1i, 2147483647i) | vec4<i32>(u_input.a, arg_0.x, arg_0.x, 1i)), ~vec4<i32>(u_input.a, 1i, -42545i, _wgslsmith_add_i32(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 9u)]))), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(firstTrailingBit(-1i), global0[_wgslsmith_index_u32(~1u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)] << (1u % 32u), arg_0.x)), vec4<i32>(arg_0.x, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_0.a, 9u)], 9915i), u_input.a, arg_0.x) >> (u_input.b % vec4<u32>(32u))));
    let var_2 = Struct_1(_wgslsmith_mod_u32(~(~(~32993u)), ~(~(~49807u))), select(countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(5319u, var_0.a, var_0.a, 4294967295u), u_input.b)), u_input.b, all(!(!vec4<bool>(var_0.b.x, true, false, var_0.b.x)))));
    return Struct_2(true, max(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.wz, vec2<u32>(var_0.a, var_2.b.x)), _wgslsmith_mult_u32(var_0.a, var_2.a), ~var_0.a), func_3(var_2, _wgslsmith_f_op_f32(-897f + 119f))), _wgslsmith_mod_u32(1u, min(firstTrailingBit(113194u), reverseBits(42689u)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_0.b), vec2<u32>(arg_0.b, 0u));
    let var_1 = arg_0.b;
    global0 = array<i32, 9>();
    let var_2 = Struct_3(39605u, !(!vec3<bool>(arg_0.a & arg_0.a, false, true)));
    let var_3 = vec2<u32>(arg_0.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(~56091u, var_1, var_2.a, _wgslsmith_sub_u32(arg_0.b, 4294967295u)), vec4<u32>(_wgslsmith_mult_u32(16947u, 81605u), 9540u, ~arg_0.b, u_input.b.x)));
    return select(select(select(select(!vec3<bool>(arg_0.a, false, var_2.b.x), !var_2.b, var_2.b.x), !vec3<bool>(false, true, var_2.b.x), !(311f == arg_1)), select(select(vec3<bool>(var_2.b.x, false, true), !var_2.b, var_2.b), vec3<bool>(false, true, true), !var_2.b), vec3<bool>(true, arg_0.a, var_2.b.x)), !var_2.b, !all(vec3<bool>(any(vec2<bool>(true, var_2.b.x)), true, var_2.b.x)));
}

fn func_1() -> f32 {
    let var_0 = Struct_3(u_input.b.x, func_4(func_2(-min(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 9u)], -1i), vec3<i32>(-54501i, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1074f)) - _wgslsmith_f_op_f32(257f * -1053f)))));
    let var_1 = func_2(reverseBits(vec3<i32>(48860i, max(-global0[_wgslsmith_index_u32(0u, 9u)], reverseBits(global0[_wgslsmith_index_u32(33969u, 9u)])), i32(-1i) * -14818i)));
    global0 = array<i32, 9>();
    return 787f;
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = func_2(firstTrailingBit(countOneBits(~(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(arg_1, 9u)], 2147483647i) ^ vec3<i32>(10553i, global0[_wgslsmith_index_u32(1u, 9u)], u_input.a)))));
    let var_1 = vec4<i32>(-_wgslsmith_dot_vec3_i32(abs(countOneBits(vec3<i32>(11996i, global0[_wgslsmith_index_u32(25714u, 9u)], 33931i))), select(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(38638u, 9u)], -2147483647i, 0i), vec3<i32>(1i, 0i, 2147483647i)), vec3<i32>(-2147483647i, 1i, global0[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(var_0.a, var_0.a, arg_3.a))), _wgslsmith_dot_vec3_i32(reverseBits(min(max(vec3<i32>(u_input.a, -1i, global0[_wgslsmith_index_u32(arg_1, 9u)]), vec3<i32>(-18792i, -2147483647i, u_input.a)), max(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(15578u, 9u)], 2147483647i), vec3<i32>(1i, u_input.a, u_input.a)))), vec3<i32>(-1i, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_2.b.x, 9u)], 3934i), ~vec2<i32>(32950i, 34838i)))), min(19229i, u_input.a << (var_0.b % 32u)), i32(-1i) * -2147483647i);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(603f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -921f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), 780f, !(global0[_wgslsmith_index_u32(4294967295u, 9u)] == u_input.a)))), -2401f, arg_0, -808f);
    var var_3 = arg_2;
    let var_4 = var_3.b.wyw;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0, var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), vec3<i32>(_wgslsmith_mod_i32(~0i, u_input.a) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x) ^ var_1.zw, countOneBits(var_1.yx)), abs(_wgslsmith_mod_i32(~var_1.x, _wgslsmith_mult_i32(0i, 0i))), -_wgslsmith_clamp_i32(-44473i, _wgslsmith_dot_vec4_i32(var_1, vec4<i32>(1i, global0[_wgslsmith_index_u32(76967u, 9u)], global0[_wgslsmith_index_u32(arg_1, 9u)], var_1.x)), u_input.a ^ global0[_wgslsmith_index_u32(u_input.b.x, 9u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-var_2.x)) + -2137f), vec3<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0, var_2.x))))), -692f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(751f * arg_0), -2163f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    let var_0 = ~(-min(~global0[_wgslsmith_index_u32(80427u, 9u)], abs(31481i))) >> (27149u % 32u);
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    let var_1 = ~(u_input.b.x ^ (1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, 14879u, 0u, u_input.b.x)) % 32u))) > min(0u, 4294967295u);
    var var_2 = 40819u;
    global0 = array<i32, 9>();
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -596f))), 408f)))), 4294967295u, Struct_1(_wgslsmith_mult_u32(11600u, 7180u), u_input.b), func_2(reverseBits(countOneBits(vec3<i32>(var_0, -2147483647i, 49449i) << (vec3<u32>(u_input.b.x, u_input.b.x, 37741u) % vec3<u32>(32u))))));
}

