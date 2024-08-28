struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: Struct_1 = Struct_1(false, 7404u, vec4<f32>(265f, -1805f, -1286f, 902f), -1i, true);

var<private> global2: bool = false;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global2 = all(!(!select(select(vec2<bool>(true, global1.a), vec2<bool>(true, global1.a), vec2<bool>(true, true)), !vec2<bool>(global1.a, global1.e), global1.e)));
    return ~(_wgslsmith_clamp_u32(9143u, 1u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(47317u, u_input.c.x, global1.b), vec3<u32>(global1.b, u_input.b, global1.b)), countOneBits(vec3<u32>(global1.b, 1538u, global1.b)))) ^ (1u >> (firstTrailingBit(~4294967295u) % 32u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec4<bool>) -> u32 {
    var var_0 = firstLeadingBit(vec4<u32>(global1.b, _wgslsmith_sub_u32(abs(arg_1.b.b), func_3()) << (89411u % 32u), 0u, u_input.c.x));
    let var_1 = arg_1.b;
    var var_2 = global1.c.x;
    global2 = !(!any(select(vec4<bool>(global1.a, var_1.e, arg_1.b.a, false), arg_3, var_1.a)));
    let var_3 = vec2<bool>(true, arg_0.b.a);
    return ~(_wgslsmith_sub_u32(~(~u_input.a), 1u >> ((var_0.x << (arg_0.b.b % 32u)) % 32u)) & ~firstLeadingBit(919u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    global2 = arg_1.a;
    return global0[_wgslsmith_index_u32(abs(max(2356u, global1.b)) | global1.b, 5u)];
}

fn func_1() -> vec3<bool> {
    var var_0 = -2119f;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 1421f, -810f)), global1.c.xwz)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1296f, _wgslsmith_f_op_f32(floor(1318f)), global1.c.x)), global1.c.wwy, select(select(select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(true, global1.a, false), vec3<bool>(global1.a, global1.e, global1.a)), vec3<bool>(false, true, global1.a), vec3<bool>(global1.a, true, global1.a)), vec3<bool>(global1.e, global1.a, false), vec3<bool>(global1.e | true, global1.a, !global1.a)))), select(select(vec3<bool>(true, any(vec3<bool>(global1.a, global1.e, false)), global1.e), vec3<bool>(true, true, false), false), vec3<bool>(!all(vec3<bool>(true, false, false)), ~global1.b > ~u_input.b, select(any(vec2<bool>(false, global1.e)), all(vec3<bool>(global1.e, true, global1.a)), true)), true)));
    var var_2 = func_4(~(~(vec3<u32>(global1.b, u_input.b, 1639u) | vec3<u32>(u_input.b, 0u, u_input.b))) | vec3<u32>(_wgslsmith_mod_u32(30581u, ~0u), abs(4294967295u), _wgslsmith_add_u32(func_2(global0[_wgslsmith_index_u32(0u, 5u)], Struct_2(vec3<bool>(global1.a, global1.a, false), Struct_1(true, 8344u, vec4<f32>(var_1.x, global1.c.x, 401f, global1.c.x), global1.d, global1.e)), global1.d, vec4<bool>(global1.a, global1.a, global1.a, true)), ~20821u)), Struct_1(global1.a, func_3(), global1.c, _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global1.d), vec2<i32>(global1.d, -2147483647i))), reverseBits(vec2<i32>(0i, 42502i))), !any(select(vec3<bool>(true, global1.e, global1.a), vec3<bool>(true, true, global1.a), false))), -1000f);
    var_2 = global0[_wgslsmith_index_u32(~global1.b, 5u)];
    global1 = var_2.b;
    return vec3<bool>(any(var_2.a.zx), false, select(!(!(-1011f >= global1.c.x)), var_1.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + global1.c.x)), var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec3<bool>(true, all(vec4<bool>(false, false, global1.e, true)), global1.a & true), func_1(), select(select(vec3<bool>(global1.e, false, false), vec3<bool>(false, false, global1.a), vec3<bool>(global1.e, true, global1.e)), vec3<bool>(false, global1.e, true), func_4(vec3<u32>(u_input.b, global1.b, 1u), Struct_1(global1.a, 22747u, vec4<f32>(global1.c.x, -527f, global1.c.x, 253f), 1i, false), global1.c.x).a)));
    var_0 = vec3<bool>(false, false, false);
    var var_1 = vec3<u32>(reverseBits(29659u >> (max(~32326u, global1.b) % 32u)), 0u, ~abs(_wgslsmith_add_u32(global1.b, 1u) | ~global1.b));
    var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(~func_3(), var_1.x, func_3()), vec3<u32>(~71981u, _wgslsmith_mult_u32(u_input.b, 0u), 1u));
    global0 = array<Struct_2, 5>();
    let var_2 = max(-((func_4(vec3<u32>(14885u, 4294967295u, u_input.c.x), Struct_1(var_0.x, u_input.c.x, global1.c, 4863i, false), 1131f).b.d | _wgslsmith_sub_i32(-1i, global1.d)) ^ 51957i), _wgslsmith_dot_vec2_i32(select(min(select(vec2<i32>(-2147483647i, -5479i), vec2<i32>(global1.d, global1.d), true), vec2<i32>(-15247i, global1.d) << (u_input.c % vec2<u32>(32u))), ~select(vec2<i32>(22372i, 54373i), vec2<i32>(global1.d, 23087i), var_0.xy), select(!global1.a, var_0.x, true)), abs(vec2<i32>(2147483647i, 2147483647i))));
    let var_3 = !vec4<bool>(~(~u_input.c.x) == 28220u, any(select(!vec4<bool>(var_0.x, var_0.x, false, false), !vec4<bool>(false, true, true, var_0.x), func_4(vec3<u32>(25311u, 1u, 124426u), Struct_1(global1.a, u_input.c.x, vec4<f32>(1422f, global1.c.x, global1.c.x, 1000f), global1.d, true), global1.c.x).b.e)), true, min(15756u | global1.b, var_1.x) >= _wgslsmith_dot_vec2_u32(countOneBits(var_1.yy), ~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_4(vec3<u32>(1u, 61810u, 72437u), func_4(vec3<u32>(var_1.x, var_1.x, 61603u), Struct_1(true, var_1.x, global1.c, var_2, false), global1.c.x).b, global1.c.x).b.d, -_wgslsmith_mod_i32(10713i, 1i)) << (~var_1.yz % vec2<u32>(32u)), _wgslsmith_f_op_f32(1896f - -244f));
}

