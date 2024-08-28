struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = ~min(vec3<u32>(2646u, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 21162u, u_input.a))), _wgslsmith_mult_u32(~u_input.a, countOneBits(u_input.a))), ~vec3<u32>(~1u, ~27383u, u_input.a));
    var var_1 = !vec3<bool>(all(select(vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, arg_0)), !vec3<bool>(true, arg_0, false))), _wgslsmith_f_op_f32(round(-1060f)) > _wgslsmith_f_op_f32(trunc(997f)), reverseBits(_wgslsmith_add_u32(4294967295u, var_0.x)) != ~5482u);
    var var_2 = Struct_2(-(~u_input.b), vec3<u32>(1u >> ((_wgslsmith_mod_u32(var_0.x, 0u) >> (u_input.a % 32u)) % 32u), var_0.x, min(_wgslsmith_sub_u32(reverseBits(var_0.x), ~u_input.a), 49331u)), Struct_1(select(~vec3<u32>(var_0.x, 19343u, u_input.a), var_0, arg_0), ~((u_input.a ^ 1u) ^ ~var_0.x)));
    let var_3 = !select(!(!select(vec3<bool>(var_1.x, var_1.x, arg_0), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(arg_0, var_1.x, arg_0))), !select(select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, true, arg_0), var_1.x), vec3<bool>(arg_0, var_1.x, arg_0), false), vec3<bool>(false, any(select(var_1.yz, var_1.xx, var_1.x)), -533f == _wgslsmith_f_op_f32(trunc(767f))));
    var_1 = var_3;
    return ~(~(-select(-20529i, min(u_input.b, var_2.a), true)));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = any(vec4<bool>(true, true, true, true)) | true;
    let var_1 = vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(1000f)));
    var var_2 = vec3<i32>(((u_input.b ^ (i32(-1i) * -1970i)) | 39951i) | func_3(true), _wgslsmith_clamp_i32(_wgslsmith_add_i32(firstLeadingBit(~22919i), -1i), select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -2147483647i, 39701i), ~vec4<i32>(u_input.b, u_input.b, u_input.b, 1i)), u_input.b, !select(true, false, true)), 0i), ~u_input.b);
    let var_3 = firstLeadingBit(vec3<i32>(firstTrailingBit(~2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 2147483647i, var_2.x), vec3<i32>(u_input.b, 1i, u_input.b))), -_wgslsmith_div_i32(u_input.b, 2147483647i), _wgslsmith_sub_i32(1i, ~(var_2.x | u_input.b))));
    var var_4 = Struct_1(vec3<u32>(min(abs(u_input.a), ~64103u) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, 0u), select(vec3<u32>(25440u, u_input.a, 17370u), vec3<u32>(4294967295u, u_input.a, u_input.a), true)) % 32u), ~u_input.a, 4294967295u), u_input.a);
    return u_input.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> bool {
    let var_0 = u_input.a;
    let var_1 = u_input.a;
    var var_2 = -u_input.b;
    let var_3 = Struct_2(_wgslsmith_add_i32(-select(-2147483647i, 2147483647i, any(vec2<bool>(false, arg_0.x))), u_input.b), vec3<u32>(_wgslsmith_div_u32(func_2(_wgslsmith_div_f32(-599f, 492f)), 0u), min(1810u, countOneBits(~67341u)), abs(~(~22590u))), Struct_1(vec3<u32>(~(var_1 >> (4294967295u % 32u)), 38117u, ~var_0), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_0, 7471u), countOneBits(vec2<u32>(u_input.a, 2937u))), vec2<u32>(var_1 | 0u, 39054u))));
    let var_4 = var_3;
    return true;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(vec3<u32>(min(abs(5015u), select(1u, u_input.a, true)), u_input.a, min(arg_0, u_input.a | 83687u)), arg_0), Struct_2(_wgslsmith_mult_i32(arg_3.x, 64209i ^ abs(arg_3.x)), vec3<u32>(~(~41537u), ~abs(96907u), u_input.a ^ 40910u), Struct_1(vec3<u32>(~0u, u_input.a, u_input.a), arg_0)), arg_0);
    return var_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(36808u, vec4<bool>(all(vec4<bool>(u_input.b >= 0i, func_1(vec2<bool>(true, true), u_input.a), true, true)), true, true, false), select(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, true, true), true, false, any(vec3<bool>(true, true, true))), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false))), vec2<i32>(~countOneBits(u_input.b), -1i));
    var var_1 = vec4<i32>(~u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b), 50200i, 8064i);
    var var_2 = ~(~63867u);
    var var_3 = Struct_2(firstTrailingBit(firstLeadingBit(24208i)), max(select(vec3<u32>(var_0.a.x, 52993u, var_0.b), max(var_0.a, var_0.a), vec3<bool>(true, true, true)) & ~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, u_input.a, u_input.a), vec3<u32>(1015u, var_0.b, 4294967295u)), var_0.a), func_4(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a, u_input.a, var_0.b, u_input.a) >> (vec4<u32>(u_input.a, var_0.b, 31725u, 1u) % vec4<u32>(32u))), ~firstTrailingBit(vec4<u32>(u_input.a, var_0.b, 20615u, u_input.a))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), var_1.wy));
    var var_4 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1071f, -586f), _wgslsmith_f_op_f32(select(-1547f, -166f, true)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(922f * -558f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(519f * 340f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), any(vec3<bool>(var_1.x > ~u_input.b, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer((vec3<i32>(-var_3.a, var_1.x | -63598i, -13661i) & vec3<i32>(var_1.x, -u_input.b, 2147483647i)) | abs(var_1.xwz), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-543f))))), -1627f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.a.x, var_4.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a.x, var_4.a.x) + vec2<f32>(958f, var_4.a.x)))))));
}

