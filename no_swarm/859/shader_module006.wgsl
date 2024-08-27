struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_mult_i32(countOneBits(-2147483647i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(select(u_input.a, 45020i, false), u_input.b), u_input.c), u_input.c.x));
    var_0 = (_wgslsmith_clamp_i32(u_input.c.x, ~(-47099i), _wgslsmith_sub_i32(32545i, _wgslsmith_mult_i32(u_input.a, -1i))) & 1i) | _wgslsmith_clamp_i32(_wgslsmith_add_i32(~(-u_input.b), max(u_input.b, _wgslsmith_div_i32(5110i, u_input.b))), ~2147483647i, max(abs(countOneBits(-2147483647i)), ~u_input.b & _wgslsmith_div_i32(u_input.c.x, u_input.b)));
    var var_1 = -129f;
    var_0 = abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a, u_input.b), vec3<i32>(0i, u_input.c.x, u_input.b), vec3<i32>(5492i, -5723i, u_input.b)), vec3<i32>(-45921i, u_input.c.x, u_input.a)), ~vec3<i32>(u_input.b, 22370i, -2147483647i) & vec3<i32>(u_input.c.x, 0i, u_input.b)), vec3<i32>(30805i, u_input.a, -firstLeadingBit(8724i))));
    var_0 = min(25314i, ~u_input.a);
    return _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(628u, arg_0.x), ~arg_0.yx, !vec2<bool>(true, global0[_wgslsmith_index_u32(40179u, 10u)])), ~abs(vec2<u32>(4294967295u, 23488u)))), _wgslsmith_add_vec2_u32(abs(vec2<u32>(4294967295u, 0u) ^ ~arg_0.yz), vec2<u32>(~83833u, arg_0.x)));
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = Struct_4(arg_0, Struct_3(func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(28936u, 94u, arg_0)) ^ max(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(4294967295u, 53432u, 44737u))), arg_0 & firstTrailingBit(arg_0), ~(-vec3<i32>(u_input.b, u_input.c.x, -2147483647i) ^ min(vec3<i32>(5028i, u_input.b, -57330i), vec3<i32>(-16582i, u_input.b, u_input.c.x))), Struct_2(1i)));
    var var_1 = select(!select(!vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.b.a, 10u)], true), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b.a, 10u)], true), vec3<bool>(false, false, true), true), vec3<bool>(true != global0[_wgslsmith_index_u32(arg_0, 10u)], global0[_wgslsmith_index_u32(~43372u, 10u)], false)), vec3<bool>(!any(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 10u)], true)) | select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0, 4012u), vec3<u32>(77622u, arg_0, arg_0)), 10u)], global0[_wgslsmith_index_u32(var_0.a, 10u)], true), true, false), select(select(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 10u)], global0[_wgslsmith_index_u32(var_0.b.a, 10u)], global0[_wgslsmith_index_u32(22475u, 10u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b.a, 10u)], true), select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 10u)], true, global0[_wgslsmith_index_u32(36117u, 10u)]), !vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 10u)], global0[_wgslsmith_index_u32(31357u, 10u)], false), vec3<bool>(true, true, true))), select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u << (1u % 32u), 10u)], any(vec3<bool>(true, false, false))), !(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 10u)], false, global0[_wgslsmith_index_u32(4294967295u, 10u)])), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0 >> (1u % 32u), ~var_0.b.b), 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(~(~var_0.a), 10u)], !global0[_wgslsmith_index_u32(46909u, 10u)], global0[_wgslsmith_index_u32(~1u | func_3(vec3<u32>(arg_0, var_0.a, var_0.b.a)), 10u)])));
    var var_2 = max(vec2<u32>(~var_0.a, abs(~_wgslsmith_sub_u32(0u, arg_0))), ~select(vec2<u32>(1u, countOneBits(arg_0)), ~select(vec2<u32>(arg_0, 43405u), vec2<u32>(arg_0, arg_0), var_1.zy), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0, 10u)] | global0[_wgslsmith_index_u32(0u, 10u)])));
    var var_3 = Struct_2(_wgslsmith_mod_i32(-3484i, -1i));
    let var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(699f + -409f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -915f) + _wgslsmith_f_op_f32(round(-639f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(511f, -489f)))))))));
    return !(!select(vec4<bool>(global0[_wgslsmith_index_u32(min(var_2.x, 67612u), 10u)], true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 59932u), 10u)], !var_1.x), vec4<bool>(false, any(vec3<bool>(var_1.x, true, var_1.x)), true, any(vec3<bool>(false, true, true))), vec4<bool>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(reverseBits(4294967295u), 10u)], global0[_wgslsmith_index_u32(~arg_0, 10u)])));
}

fn func_1(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = ~(~firstTrailingBit(_wgslsmith_sub_u32(~84554u, 1u)));
    global0 = array<bool, 10>();
    let var_1 = !func_2(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0, 4294967295u), firstLeadingBit(var_0), ~var_0) | abs(countOneBits(0u)));
    var var_2 = ~(firstTrailingBit(var_0) ^ (countOneBits(~var_0) ^ _wgslsmith_clamp_u32(var_0, firstTrailingBit(38903u), ~4294967295u)));
    let var_3 = Struct_4(var_0, Struct_3(reverseBits((93582u >> (var_0 % 32u)) & max(var_0, 1u)), _wgslsmith_sub_u32(var_0, var_0), -(~vec3<i32>(-20823i, u_input.a, 0i) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(0u, var_0, 32546u), vec3<u32>(var_0, var_0, var_0)) % vec3<u32>(32u))), Struct_2(u_input.b)));
    return vec4<u32>(firstTrailingBit(1u), var_0, select(0u, var_0 | ~_wgslsmith_mult_u32(1u, 17135u), true), var_3.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_5 {
    var var_0 = vec4<bool>(!any(select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 10u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 10u)]), vec2<bool>(false, true))) | false, true, all(!vec2<bool>(any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_2.b, 10u)], global0[_wgslsmith_index_u32(19221u, 10u)])), false)), any(vec4<bool>(true, 4294967295u > abs(arg_1.x), false, true)));
    global0 = array<bool, 10>();
    var_0 = func_2(~(~arg_3.x));
    let var_1 = arg_2;
    let var_2 = func_2(func_3(max(firstLeadingBit(vec3<u32>(22983u, arg_2.b, var_1.a)), arg_1.yzw)));
    return Struct_5(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(-27362i, var_1.d.a, -2147483647i, -37908i)), vec4<i32>(_wgslsmith_add_i32(~u_input.c.x, arg_2.d.a), firstTrailingBit(~(-2147483647i)), _wgslsmith_mult_i32(min(u_input.c.x, u_input.c.x), -2147483647i), arg_2.c.x)), arg_0.a, Struct_4(0u, Struct_3(_wgslsmith_sub_u32(arg_2.a << (0u % 32u), ~0u), ~arg_1.x << (arg_2.a % 32u), _wgslsmith_clamp_vec3_i32(~arg_2.c, arg_2.c << (vec3<u32>(1u, 24412u, 0u) % vec3<u32>(32u)), arg_2.c), arg_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f - _wgslsmith_f_op_f32(175f - -1366f)) + 438f)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 29565u, 1u) ^ func_1(select(vec3<bool>(global0[_wgslsmith_index_u32(24271u, 10u)], true, global0[_wgslsmith_index_u32(32267u, 10u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 10u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]))), reverseBits(~select(vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(4167u, 0u, 3329u, 1u), global0[_wgslsmith_index_u32(0u, 10u)]))), Struct_3(~firstLeadingBit(30413u), ~(~(~79843u)), ~firstLeadingBit(vec3<i32>(-48123i, 61762i, 4108i)), Struct_2(u_input.b)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), select(_wgslsmith_add_vec2_u32(vec2<u32>(3970u, 1u), vec2<u32>(41863u, 39994u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(10803u, 0u)), true && global0[_wgslsmith_index_u32(119033u, 10u)]))));
    let var_1 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-_wgslsmith_add_i32(-16088i, -35654i), countOneBits(_wgslsmith_sub_i32(u_input.a, 2147483647i)), -2147483647i)), min(countOneBits(var_0.a.xwz), var_0.c.b.c));
    let var_2 = func_4(Struct_1(-1000f), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(var_0.c.a, 4294967295u)), var_0.c.a), ~(~max(vec4<u32>(var_0.c.b.b, var_0.c.a, 1u, 77447u), vec4<u32>(0u, var_0.c.b.a, 24765u, 1426u))), firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.b.a, 12636u, var_0.c.b.b, var_0.c.a), vec4<u32>(var_0.c.a, 38219u, 58643u, 89775u), vec4<u32>(var_0.c.a, 0u, var_0.c.a, var_0.c.a)))), Struct_3(var_0.c.a, 1u, func_4(Struct_1(var_0.b), ~abs(vec4<u32>(var_0.c.b.b, 4294967295u, 56772u, 69525u)), func_4(Struct_1(var_0.b), vec4<u32>(101765u, 2637u, var_0.c.b.b, var_0.c.b.b) | vec4<u32>(var_0.c.b.b, 4294967295u, var_0.c.a, 4294967295u), func_4(Struct_1(var_0.b), vec4<u32>(var_0.c.a, 0u, var_0.c.b.b, var_0.c.b.b), Struct_3(1u, var_0.c.b.b, vec3<i32>(var_1, -2147483647i, u_input.a), var_0.c.b.d), vec2<u32>(0u, 1u)).c.b, vec2<u32>(33485u, 0u)).c.b, ~abs(vec2<u32>(4294967295u, 1u))).c.b.c, Struct_2(func_4(Struct_1(613f), vec4<u32>(35984u, var_0.c.a, var_0.c.a, 0u), Struct_3(90597u, 1876u, var_0.a.xwy, Struct_2(u_input.c.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(16184u, var_0.c.b.b), vec2<u32>(59972u, 26797u), vec2<u32>(var_0.c.a, var_0.c.a))).c.b.c.x)), vec2<u32>(0u, 0u) >> (vec2<u32>(select(83466u, 1u, false), var_0.c.a) % vec2<u32>(32u))).c.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(max(min(firstLeadingBit(firstLeadingBit(var_0.c.b.c)), vec3<i32>(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 33611i, var_2.a), vec3<i32>(var_1, var_2.a, var_2.a)), min(var_1, var_0.c.b.d.a))), _wgslsmith_sub_vec3_i32(vec3<i32>(6288i, 9289i, var_0.c.b.c.x & var_1), (vec3<i32>(0i, u_input.a, var_1) >> (vec3<u32>(var_0.c.a, 4294967295u, 17451u) % vec3<u32>(32u))) & -var_0.a.yyz)), ~(~vec3<u32>(var_0.c.b.b, 4294967295u << (var_0.c.a % 32u), var_0.c.b.b)), countOneBits(u_input.c), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, -1955f, -686f, -531f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, var_0.b, 2926f, 1000f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<f32>(-563f, var_0.b, var_0.b, var_0.b))), global0[_wgslsmith_index_u32(abs(51303u), 10u)])))))));
}

