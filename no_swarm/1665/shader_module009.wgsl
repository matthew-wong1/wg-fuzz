struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(vec2<u32>(0u, 6560u), i32(-2147483648)), vec3<u32>(0u, 41400u, 1u), true, 0u, Struct_1(vec2<u32>(0u, 1u), 19108i)), Struct_3(Struct_1(vec2<u32>(72979u, 43348u), 2254i), vec3<u32>(9704u, 63838u, 0u), false, 0u, Struct_1(vec2<u32>(0u, 7162u), i32(-2147483648))), Struct_3(Struct_1(vec2<u32>(4294967295u, 31970u), 4790i), vec3<u32>(1u, 4294967295u, 46096u), false, 3381u, Struct_1(vec2<u32>(4294967295u, 0u), -1i)), Struct_3(Struct_1(vec2<u32>(29019u, 5260u), i32(-2147483648)), vec3<u32>(1u, 4294967295u, 22091u), true, 40033u, Struct_1(vec2<u32>(4294967295u, 13690u), -1i)), Struct_3(Struct_1(vec2<u32>(91780u, 16554u), 2147483647i), vec3<u32>(4316u, 0u, 50317u), true, 1u, Struct_1(vec2<u32>(4294967295u, 25095u), 2147483647i)), Struct_3(Struct_1(vec2<u32>(0u, 0u), 2147483647i), vec3<u32>(50404u, 0u, 1u), false, 1u, Struct_1(vec2<u32>(0u, 28119u), -1i)), Struct_3(Struct_1(vec2<u32>(1u, 74682u), 2147483647i), vec3<u32>(58202u, 1u, 29582u), false, 0u, Struct_1(vec2<u32>(0u, 1u), 54953i)), Struct_3(Struct_1(vec2<u32>(58331u, 44830u), -18823i), vec3<u32>(0u, 31660u, 38529u), false, 0u, Struct_1(vec2<u32>(0u, 4294967295u), 16333i)), Struct_3(Struct_1(vec2<u32>(0u, 100262u), -1i), vec3<u32>(1u, 0u, 24825u), false, 0u, Struct_1(vec2<u32>(0u, 4294967295u), -8205i)));

var<private> global1: array<Struct_2, 21>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: u32, arg_3: vec2<i32>) -> Struct_2 {
    global1 = array<Struct_2, 21>();
    let var_0 = Struct_1(select(abs(~(~u_input.b.xy)), ~(~u_input.b.wy), false), ~(-1i));
    global0 = array<Struct_3, 9>();
    var var_1 = vec4<u32>(_wgslsmith_div_u32(u_input.b.x, ~u_input.b.x), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 78320u, 25341u), u_input.b), _wgslsmith_mod_u32(1u, abs(u_input.b.x)))), _wgslsmith_mult_u32(~abs(0u), arg_2 << (countOneBits(146760u) % 32u)), _wgslsmith_add_u32(arg_2, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(14629u, 45466u, u_input.b.x, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(2915u, 43747u, arg_2, arg_2), u_input.b)), 1u)));
    let var_2 = var_0;
    return global1[_wgslsmith_index_u32(22924u, 21u)];
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = arg_3.e;
    let var_1 = firstLeadingBit(var_0.a);
    var var_2 = reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, reverseBits(arg_3.a.b), -var_0.b, 2147483647i), vec4<i32>((i32(-1i) * -2147483647i) & var_0.b, ~max(arg_3.e.b, 43404i), 43624i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.e.b, arg_3.a.b, 1i), vec3<i32>(arg_3.a.b, -1i, -2147483647i))))));
    var var_3 = ~(~(~arg_2) ^ 53465u);
    var_3 = ~68864u;
    return select(select(select(!(!vec4<bool>(arg_0, false, false, arg_0)), vec4<bool>(any(vec3<bool>(true, true, true)), arg_3.c, true, any(vec4<bool>(arg_3.c, arg_3.c, arg_0, arg_3.c))), !vec4<bool>(false, arg_0, false, arg_0)), vec4<bool>(all(vec2<bool>(true, arg_0)) & true, all(vec3<bool>(true, false, false)), false, arg_3.c), 35477u < ~_wgslsmith_mult_u32(4294967295u, var_1.x)), !vec4<bool>(!any(vec4<bool>(true, false, true, arg_0)), !select(arg_0, arg_0, false), !(var_0.a.x < arg_1.b.x), arg_3.c), select(!select(!vec4<bool>(arg_3.c, arg_3.c, false, false), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0)), vec4<bool>(all(!vec3<bool>(true, false, arg_0)), true, arg_3.c | (arg_2 == arg_2), !(!arg_3.c)), !select(select(vec4<bool>(false, arg_0, arg_3.c, arg_0), vec4<bool>(true, true, arg_0, true), arg_3.c), select(vec4<bool>(true, arg_3.c, true, false), vec4<bool>(arg_0, true, arg_3.c, arg_3.c), arg_3.c), arg_3.c)));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = !(!func_3(any(vec3<bool>(true, true, true)), func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(397f, arg_0))), vec4<bool>(true, true, true, true), 45509u, select(vec2<i32>(1i, -1668i), vec2<i32>(1i, 1i), vec2<bool>(true, false))), max(u_input.b.x, reverseBits(69850u)), global0[_wgslsmith_index_u32(11848u, 9u)]));
    var var_1 = var_0.wyx;
    let var_2 = u_input.b.x;
    var_0 = !vec4<bool>((false && !var_0.x) | (var_1.x && var_0.x), !(_wgslsmith_div_f32(arg_0, 1680f) >= arg_1), true, any(var_1.yx));
    global1 = array<Struct_2, 21>();
    return Struct_1(~(~max(vec2<u32>(4294967295u, var_2), u_input.b.zy) >> (max(_wgslsmith_sub_vec2_u32(u_input.b.wx, u_input.b.yw), ~u_input.b.xz) % vec2<u32>(32u))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i, u_input.a & 1i, ~(-64189i), _wgslsmith_dot_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a)), -(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-22458i, -11444i)))));
    var var_1 = ~(~(~u_input.b.xx));
    global1 = array<Struct_2, 21>();
    var var_2 = var_0;
    var var_3 = Struct_3(func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2442f - _wgslsmith_f_op_f32(min(-626f, 392f))), 1082f)), -531f), u_input.b.ywy, select(true, any(vec2<bool>(all(vec4<bool>(false, false, true, true)), false)), any(vec2<bool>(true, true)) | !(var_2.x < 26053i)), ~1u, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -603f)))), -188f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_0.x, max(0i, u_input.a)) ^ _wgslsmith_add_i32(-24727i, var_0.x), ~(select(u_input.b.zzy, _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 1u, u_input.b.x), u_input.b.yxw), select(vec3<bool>(false, false, true), vec3<bool>(true, true, var_3.c), vec3<bool>(false, var_3.c, var_3.c))) & (_wgslsmith_clamp_vec3_u32(u_input.b.xwx, var_3.b, var_3.b) ^ countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, 41592u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(488f)) * -1203f))), _wgslsmith_mod_u32(firstTrailingBit(28820u), 4015u | u_input.b.x), 36152u);
}

