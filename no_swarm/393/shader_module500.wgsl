struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_4) -> bool {
    global0 = array<vec3<u32>, 31>();
    let var_0 = arg_2.b.d;
    global0 = array<vec3<u32>, 31>();
    let var_1 = arg_2.a;
    global0 = array<vec3<u32>, 31>();
    return any(!select(arg_2.e, select(select(vec4<bool>(true, true, false, arg_2.b.a.d), arg_2.e, true), vec4<bool>(true, arg_2.e.x, true, true), arg_2.e.x | true), any(vec4<bool>(true, false, arg_2.e.x, arg_2.b.c))));
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<u32>, 31>();
    var var_0 = !(!(!all(vec4<bool>(true, true, false, false)) && true));
    let var_1 = vec3<bool>(!func_3(Struct_1(_wgslsmith_f_op_f32(-653f * 1000f)), vec2<i32>(_wgslsmith_div_i32(1i, -2147483647i), _wgslsmith_sub_i32(0i, -11794i)), Struct_4(Struct_1(-1000f), Struct_3(Struct_2(Struct_1(-667f), u_input.a, Struct_1(-1000f), true), vec4<u32>(u_input.a, u_input.a, 44905u, u_input.a), false, vec4<i32>(-66515i, -17936i, 2147483647i, -21428i), vec2<u32>(4294967295u, 0u)), _wgslsmith_f_op_f32(-1855f - -1000f), _wgslsmith_add_u32(u_input.a, u_input.a), vec4<bool>(true, true, true, true))), false, true);
    let var_2 = Struct_3(Struct_2(Struct_1(1f), _wgslsmith_clamp_u32(~(~u_input.a), ~(~u_input.a), 1u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1012f, -408f))), false), _wgslsmith_mod_vec4_u32(vec4<u32>(3744u ^ u_input.a, select(u_input.a, u_input.a, true), 16515u, u_input.a >> (1u % 32u)), vec4<u32>(124613u, u_input.a, u_input.a, 22409u) & vec4<u32>(u_input.a, 104752u, 4294967295u, u_input.a)) << (~vec4<u32>(u_input.a, u_input.a | 43593u, 98699u, 104825u) % vec4<u32>(32u)), true, _wgslsmith_div_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(1i, -2147483647i, 0i, 58076i)), vec4<i32>(select(-1i, i32(-1i) * -38208i, !var_1.x), -64353i, -_wgslsmith_div_i32(-1i, -44647i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, -18062i)), vec2<i32>(-2147483647i, 2147483647i)))), firstTrailingBit(abs(~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a), vec2<bool>(false, var_1.x)))));
    var_0 = any(var_1);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(var_2.a.c.a))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(reverseBits(u_input.a), 40363u << (1u % 32u)), u_input.a, u_input.a), global0[_wgslsmith_index_u32(66593u, 31u)]), var_2.a.a, !any(select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_2.c, var_1.x, var_2.a.d, true), var_2.a.d), vec4<bool>(var_1.x, false, false, var_2.c), !vec4<bool>(true, var_1.x, false, false))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = select(!vec3<bool>(arg_0.d, arg_0.d, true), vec3<bool>(arg_0.d || true, false, false), true);
    global0 = array<vec3<u32>, 31>();
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, -296f, _wgslsmith_f_op_f32(-var_1.c.a)))));
    global0 = array<vec3<u32>, 31>();
    return func_2();
}

fn func_1(arg_0: vec3<f32>) -> StorageBuffer {
    var var_0 = ~vec4<u32>(2980u, firstTrailingBit(select(_wgslsmith_mod_u32(4294967295u, 4294967295u), ~30411u, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, u_input.a & u_input.a), select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 109825u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 33545u), true)), u_input.a);
    let var_1 = func_4(func_2(), 1u);
    global0 = array<vec3<u32>, 31>();
    let var_2 = func_4(var_1, var_1.b << (~firstTrailingBit(4294967295u) % 32u));
    let var_3 = var_2.a;
    return StorageBuffer(select(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(22967i, -47612i, 1i), ~vec3<i32>(16754i, 8505i, -2147483647i)), countOneBits(vec3<i32>(-1i, -11469i, -25592i))), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(34476i, -2147483647i, -2147483647i, 1i), vec4<i32>(1i, -11289i, 1i, 0i)), vec4<i32>(1i, 781i, -1i, -1i) << (vec4<u32>(var_2.b, var_2.b, 0u, 1u) % vec4<u32>(32u))), firstLeadingBit(-26431i)), select(vec3<bool>(true, true, true), !vec3<bool>(false, var_1.d, true), vec3<bool>(true, true, false))), _wgslsmith_mod_i32(1i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(980f, _wgslsmith_f_op_f32(min(1148f, _wgslsmith_f_op_f32(313f * -1682f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1138f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f - -457f), _wgslsmith_f_op_f32(f32(-1f) * -2162f), _wgslsmith_f_op_f32(f32(-1f) * -452f)))));
}

