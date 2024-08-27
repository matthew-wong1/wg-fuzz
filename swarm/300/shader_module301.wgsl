struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -183f;

var<private> global1: array<i32, 16> = array<i32, 16>(-5059i, 0i, 2147483647i, 1i, 84515i, 16983i, -49447i, 0i, 23210i, -1i, i32(-2147483648), 1i, -33931i, 0i, 62262i, -88844i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_clamp_u32(~u_input.a, u_input.a, u_input.b)), u_input.a);
    var var_1 = true;
    var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(arg_1, 1000f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(934f, arg_1) + vec2<f32>(-1360f, arg_1))))), vec2<bool>(all(vec4<bool>(false, false, arg_0 > arg_0, false)), true)));
    var var_3 = Struct_3(max(-1i, global1[_wgslsmith_index_u32(10902u | ~u_input.a, 16u)]));
    return -1000f;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.a, 16u)], 656f)) * 387f)), ~(~(~38699u)), select(vec2<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), (-1i == global1[_wgslsmith_index_u32(u_input.a, 16u)]) | true), vec2<bool>(true, true), vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))))), -1i, -global1[_wgslsmith_index_u32(~reverseBits(abs(u_input.a)), 16u)]);
    return Struct_2(Struct_1(1000f, u_input.a, select(select(select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(true, true), false), vec2<bool>(true, true), select(var_0.c, var_0.c, vec2<bool>(false, var_0.c.x))), var_0.c, select(select(vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(var_0.c.x, var_0.c.x), var_0.c.x), vec2<bool>(true, true), var_0.c.x | false)), countOneBits(-44253i), global1[_wgslsmith_index_u32(60613u, 16u)]), Struct_1(var_0.a, _wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(47980u, u_input.a, 1u), vec3<u32>(u_input.b, u_input.b, 4294967295u)), _wgslsmith_add_u32(var_0.b, 53951u))), vec2<bool>(true, true), i32(-1i) * -firstLeadingBit(global1[_wgslsmith_index_u32(var_0.b, 16u)]), _wgslsmith_dot_vec2_i32((vec2<i32>(global1[_wgslsmith_index_u32(2952u, 16u)], var_0.d) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) ^ (vec2<i32>(global1[_wgslsmith_index_u32(var_0.b, 16u)], global1[_wgslsmith_index_u32(var_0.b, 16u)]) ^ vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], 20411i)), ~(~vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(var_0.b, 16u)])))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(arg_3.a, arg_3.a);
    global1 = array<i32, 16>();
    let var_1 = u_input.b;
    let var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1551f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(859f)) * _wgslsmith_f_op_f32(var_2.b.a + arg_0.a)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.a)) + 781f) * arg_0.a), var_0.a.a));
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = func_1(arg_0.b, Struct_3(((i32(-1i) * -2147483647i) >> (~arg_0.a.b % 32u)) & min(_wgslsmith_clamp_i32(-34894i, 21534i, 2147483647i), select(global1[_wgslsmith_index_u32(arg_2.x, 16u)], -42785i, arg_0.a.c.x))), Struct_3(-20756i), func_2()).b;
    let var_1 = ~firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, arg_2.x, arg_2.x), vec3<u32>(arg_1, 14327u, u_input.b)), vec3<u32>(var_0.b, arg_0.a.b, var_0.b) | vec3<u32>(26759u, arg_1, 4294967295u)) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_2.x, arg_1, arg_0.a.b), ~vec3<u32>(arg_2.x, 4294967295u, var_0.b)) % vec3<u32>(32u)));
    let var_2 = firstTrailingBit(func_1(func_2().a, Struct_3(1i), Struct_3(-2147483647i), func_1(Struct_1(_wgslsmith_f_op_f32(ceil(arg_3.x)), 1u, select(vec2<bool>(true, arg_0.b.c.x), arg_0.a.c, vec2<bool>(arg_0.b.c.x, true)), var_0.e, -40117i), Struct_3(i32(-1i) * -4925i), Struct_3(global1[_wgslsmith_index_u32(0u, 16u)]), arg_0)).a.b);
    let var_3 = select(!select(!(!var_0.c), select(arg_0.b.c, select(vec2<bool>(true, var_0.c.x), vec2<bool>(arg_0.a.c.x, arg_0.a.c.x), vec2<bool>(true, var_0.c.x)), arg_0.a.c.x), !var_0.c.x == func_2().a.c.x), var_0.c, !var_0.c.x);
    let var_4 = func_2();
    return firstLeadingBit(63265u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, func_4(func_1(Struct_1(-634f, u_input.b, vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.b, 16u)], 21400i), Struct_3(2147483647i), Struct_3(1i), Struct_2(Struct_1(959f, 20675u, vec2<bool>(true, false), 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 16u)]), Struct_1(153f, u_input.a, vec2<bool>(false, false), global1[_wgslsmith_index_u32(11801u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)]))), u_input.a, ~vec2<u32>(u_input.b, u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, -934f)))), max(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(29637u, 0u), vec2<u32>(u_input.b, 1u)), vec2<u32>(4294967295u, 77274u) << (vec2<u32>(58508u, u_input.a) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(u_input.b, 21161u) & vec2<u32>(47943u, u_input.a)))), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(4294967295u, 33319u)), reverseBits(vec2<u32>(59230u, 9974u) & vec2<u32>(u_input.b, u_input.b)), max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(32035u, 28633u)) >> ((vec2<u32>(4294967295u, u_input.b) | vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))), ~(~(~vec2<u32>(1u, u_input.b)))));
    let var_1 = Struct_3(16128i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(906f, 1078f, 1365f, -534f) + vec4<f32>(1684f, -1591f, 1890f, -1000f))))))));
    var var_3 = var_1;
    var var_4 = firstTrailingBit(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1000f - -653f), vec3<i32>(1i, var_1.a & (i32(-1i) * -59470i), var_3.a), global1[_wgslsmith_index_u32(~1u, 16u)], 28696u, select(abs(~vec3<u32>(u_input.a, var_0.x, 4294967295u)) << (vec3<u32>(_wgslsmith_sub_u32(u_input.a, 4294967295u), ~64582u, _wgslsmith_mult_u32(var_0.x, var_0.x)) % vec3<u32>(32u)), select(select(vec3<u32>(0u, var_0.x, u_input.b), vec3<u32>(1u, 0u, 99460u), vec3<bool>(false, false, true)) ^ select(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(u_input.a, 4294967295u, 4294967295u), false), vec3<u32>(u_input.b, 74529u | u_input.a, u_input.b), vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))));
}

