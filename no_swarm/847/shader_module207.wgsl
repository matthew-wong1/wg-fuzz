struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -16454i;

var<private> global1: array<vec4<i32>, 4>;

var<private> global2: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(38929u, 47510u, 13295u), vec3<u32>(4294967295u, 44904u, 174977u));

var<private> global3: array<Struct_1, 6>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_1(abs(vec2<u32>(32318u, abs(7347u) >> (u_input.a.x % 32u))), !select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), arg_0 < 796f), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, true)) || true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    let var_1 = var_0.b.x;
    var var_2 = Struct_1(abs(~_wgslsmith_mod_vec2_u32(u_input.a.xz, vec2<u32>(200u, u_input.a.x))) ^ countOneBits(reverseBits(firstLeadingBit(var_0.a))), var_0.b, -1000f);
    let var_3 = vec2<f32>(arg_0, arg_0);
    global2 = array<vec3<u32>, 3>();
    return var_0.c;
}

fn func_2(arg_0: u32) -> i32 {
    global0 = 1i;
    let var_0 = Struct_1(u_input.a.zy, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(307f, _wgslsmith_f_op_f32(func_3(1000f)))) * -849f));
    let var_1 = var_0;
    global0 = -22060i;
    var var_2 = var_1;
    return _wgslsmith_clamp_i32(_wgslsmith_div_i32(~_wgslsmith_add_i32(select(0i, 59336i, false), -39970i), i32(-1i) * -5323i), abs(-3933i), _wgslsmith_add_i32(18686i, 22845i));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    global3 = array<Struct_1, 6>();
    global0 = abs(_wgslsmith_clamp_i32(func_2(~1u), -27443i, _wgslsmith_mult_i32(arg_2.x, firstLeadingBit(1i))));
    global3 = array<Struct_1, 6>();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.a.x, abs(arg_0 << (~min(arg_0, 4294967295u) % 32u))), 6u)];
    let var_1 = Struct_1(vec2<u32>(arg_1.a.x >> (1u % 32u), ~u_input.a.x), !var_0.b, _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 6>();
    var var_0 = 155f;
    let var_1 = Struct_1(vec2<u32>(firstLeadingBit(u_input.a.x), ~u_input.a.x), vec3<bool>(true, (18823u >> (~u_input.a.x % 32u)) >= _wgslsmith_dot_vec2_u32(vec2<u32>(50966u, u_input.a.x), u_input.a.xz), all(vec2<bool>(any(vec4<bool>(false, false, false, true)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -982f)))));
    global1 = array<vec4<i32>, 4>();
    var var_2 = any(vec3<bool>(true, !(var_1.c >= -1682f), !(!var_1.b.x && var_1.b.x)));
    var var_3 = func_1(~((abs(var_1.a.x) >> (0u % 32u)) << (u_input.a.x % 32u)), var_1, select(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(2147483647i, -50678i)), ~vec2<i32>(3433i, 0i)), ~select(vec2<i32>(-2147483647i, -33065i), vec2<i32>(0i, 2147483647i), false)), vec2<i32>(2147483647i, ~(-2147483647i)), var_1.b.x), ~0u);
    var_0 = 263f;
    var_3 = Struct_1(~(~vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 53234u), _wgslsmith_clamp_u32(54271u, u_input.a.x, var_3.a.x))), vec3<bool>(true, !(!(var_1.b.x && true)), !func_1(40057u, var_1, vec2<i32>(54356i, 42541i), ~79973u).b.x), _wgslsmith_f_op_f32(step(-101f, var_1.c)));
    var var_4 = ~vec4<u32>(var_1.a.x, var_3.a.x, max(var_3.a.x, u_input.a.x), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x);
}

