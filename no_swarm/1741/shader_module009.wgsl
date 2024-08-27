struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -194f);
    global0 = -491f;
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-372f * 145f), _wgslsmith_add_vec2_u32(firstTrailingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 4970u), vec2<u32>(18059u, 8897u))), ~countOneBits(max(vec2<u32>(34218u, 0u), vec2<u32>(17992u, 4294967295u)))));
    let var_1 = vec3<bool>(!(~(~24779u) < max(_wgslsmith_mult_u32(var_0.b.x, 2378u), var_0.b.x >> (var_0.b.x % 32u))), true, any(select(vec3<bool>(all(vec2<bool>(false, false)), -1191f > var_0.a, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))));
    global0 = 1060f;
    return var_0.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> bool {
    global0 = _wgslsmith_f_op_f32(func_3());
    var var_0 = !(!(abs(-51596i) <= u_input.b.x));
    return all(select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), false), all(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec2<bool>(false, false))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = !vec4<bool>(!func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1083f, arg_0.x, arg_2), vec3<f32>(arg_0.x, 1149f, arg_0.x))), 512f), select(arg_1.x, true, arg_1.x), all(arg_1), select(arg_1.x, true, true));
    let var_1 = vec3<i32>(-(i32(-1i) * -(~u_input.a)), abs(-1i), -1i);
    var var_2 = true;
    var var_3 = -338f;
    let var_4 = Struct_3(-1487f, ~_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(22103u, 1u)) | firstTrailingBit(vec2<u32>(1u, 1391u)), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(0u, 9475u))), ~(~vec2<u32>(8796u, 1u))));
    return Struct_1(_wgslsmith_add_i32(min(-2147483647i, abs(u_input.a)) | (-7506i << (~var_4.b.x % 32u)), -_wgslsmith_add_i32(reverseBits(u_input.a), u_input.b.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4) -> Struct_3 {
    global0 = -205f;
    var var_0 = !(any(vec2<bool>(true, false)) || (~0i != max(arg_0.x, arg_1.a.x))) | true;
    global0 = -325f;
    global0 = -171f;
    let var_1 = Struct_2(vec3<f32>(-553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.d))), 807f), Struct_1(u_input.b.x), arg_1.c, vec2<u32>(1u << (_wgslsmith_sub_u32(22503u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 36492u, 4294967295u, 37487u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u))) % 32u), ~1u));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1135f + _wgslsmith_f_op_f32(round(arg_1.d))))), ~(~select(var_1.d, ~vec2<u32>(4294967295u, var_1.d.x), select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2075f)) * _wgslsmith_f_op_f32(abs(-1888f))))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_0 = func_4(max(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 39892i, -2147483647i, u_input.a), abs(vec4<i32>(u_input.a, 2147483647i, 2147483647i, u_input.a))), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -4762i) >> (firstTrailingBit(vec4<u32>(43276u, 4494u, 1u, 38821u)) % vec4<u32>(32u)), vec4<i32>(countOneBits(14264i), u_input.b.x & 0i, -16106i, _wgslsmith_mod_i32(0i, 2147483647i)))), Struct_4(vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 0i), u_input.b), u_input.a, u_input.b.x) ^ ~(~vec4<i32>(-74453i, 0i, 15625i, u_input.a)), _wgslsmith_sub_i32(i32(-1i) * -42979i, 18916i), func_1(vec2<f32>(_wgslsmith_f_op_f32(285f - 204f), -359f), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(sign(1060f)), vec4<i32>(-u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a), select(u_input.b.x, u_input.a, false), 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-367f + _wgslsmith_f_op_f32(-1489f * -604f)))));
    var_0 = func_4(vec4<i32>(~(-7033i), -u_input.b.x, _wgslsmith_mod_i32(~(-37405i), -1i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(31529i, u_input.a), 0i)) ^ -_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.b.x, -62110i, u_input.b.x, 5870i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x)), -vec4<i32>(2147483647i, 10046i, -16851i, u_input.a)), Struct_4(-(~vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 0i) << (_wgslsmith_mult_vec4_u32(vec4<u32>(22884u, 5390u, 4294967295u, var_0.b.x), vec4<u32>(var_0.b.x, 0u, 0u, var_0.b.x)) % vec4<u32>(32u))), 36610i, func_1(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, false)), 186f), vec3<bool>(true, true, true), var_0.a, vec4<i32>(reverseBits(-11909i), u_input.b.x, u_input.a, ~22349i)), 1744f));
    var_0 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f + var_0.a)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), -1137f))))), ~select(~(~vec2<u32>(var_0.b.x, 0u)), vec2<u32>(1u, 7103u) ^ var_0.b, true));
    let var_1 = !vec2<bool>(true, all(vec4<bool>(any(vec3<bool>(true, false, false)), true, all(vec3<bool>(false, false, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, 4294967295u, 1u), vec3<u32>(13105u, 1u, var_0.b.x) << (vec3<u32>(1u, 7968u, 87860u) % vec3<u32>(32u))), ~1u, abs(var_0.b.x | var_0.b.x)));
}

