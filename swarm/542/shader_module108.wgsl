struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10>;

var<private> global1: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true));

var<private> global2: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(1u, 27346u, 23211u, 4294967295u), vec4<u32>(31636u, 4294967295u, 37103u, 4632u), vec4<u32>(1u, 47099u, 66755u, 4294967295u), vec4<u32>(4294967295u, 35382u, 113394u, 4294967295u), vec4<u32>(37253u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 7491u, 4294967295u), vec4<u32>(97508u, 34771u, 79630u, 0u), vec4<u32>(4294967295u, 7714u, 67382u, 4294967295u), vec4<u32>(1u, 54378u, 0u, 4294967295u));

var<private> global3: f32 = 1860f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> vec2<bool> {
    var var_0 = 2147483647i;
    let var_1 = abs(~_wgslsmith_sub_u32(u_input.c.x, ~arg_0.x));
    global3 = -253f;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(647f, 1254f), _wgslsmith_f_op_f32(f32(-1f) * -949f), all(vec2<bool>(true, false)))) + -1512f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(555f, 1239f)) * -674f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-832f))))));
    return select(vec2<bool>(false, any(!vec2<bool>(arg_1, arg_1)) && all(global1[_wgslsmith_index_u32(4294967295u, 28u)])), !select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), select(select(vec2<bool>(true, arg_1), vec2<bool>(false, false), vec2<bool>(true, arg_1)), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), vec2<bool>(arg_1, false)), vec2<bool>(arg_1, arg_1))), any(select(select(vec3<bool>(arg_1, true, true), !vec3<bool>(arg_1, false, arg_1), !arg_1), vec3<bool>(true, arg_1, arg_1), select(!vec3<bool>(false, false, arg_1), !vec3<bool>(true, arg_1, arg_1), !vec3<bool>(arg_1, false, true)))));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    global2 = array<vec4<u32>, 9>();
    global3 = 1000f;
    var var_0 = u_input.a.ywz;
    let var_1 = Struct_1(any(func_3(vec2<u32>(arg_0, arg_0) << (~vec2<u32>(u_input.c.x, arg_0) % vec2<u32>(32u)), true)));
    var var_2 = Struct_4(Struct_1((abs(arg_0) ^ 33055u) == 4294967295u));
    return var_2.a;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global2 = array<vec4<u32>, 9>();
    return func_2(4294967295u, ~(-1i));
}

fn func_4(arg_0: Struct_1) -> f32 {
    global1 = array<vec4<bool>, 28>();
    var var_0 = -_wgslsmith_clamp_vec4_i32(select(-u_input.a, reverseBits(vec4<i32>(u_input.b.x, 2147483647i, u_input.a.x, u_input.b.x)), global1[_wgslsmith_index_u32(~u_input.c.x, 28u)]), vec4<i32>(u_input.a.x ^ 40144i, u_input.a.x, u_input.a.x, -1i), _wgslsmith_div_vec4_i32(select(vec4<i32>(-2779i, -11146i, u_input.a.x, u_input.b.x), u_input.a, arg_0.a), vec4<i32>(u_input.a.x, -74798i, 0i, u_input.b.x))) ^ min(vec4<i32>(u_input.a.x, u_input.a.x, -firstLeadingBit(27582i), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mod_i32(56311i, -23709i))), ~max(u_input.a, u_input.a) ^ firstTrailingBit(-u_input.a));
    let var_1 = -1000f;
    let var_2 = Struct_4(func_2(~1u, -(0i << ((35391u | u_input.c.x) % 32u))));
    var var_3 = Struct_3(u_input.a.x, Struct_2(~u_input.c.xx, min(~46130i, abs(var_0.x)) >> (~_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, u_input.c.x)) % 32u), func_1(_wgslsmith_add_vec3_i32(-var_0.yyx, _wgslsmith_clamp_vec3_i32(u_input.a.yzy, vec3<i32>(var_0.x, 1i, -5502i), var_0.xyx)))), func_2(~1u, firstLeadingBit(~max(u_input.b.x, 32460i))), Struct_2(min(~vec2<u32>(u_input.c.x, u_input.c.x), ~u_input.c.yy), ~(~_wgslsmith_dot_vec3_i32(u_input.a.yyz, u_input.a.xyz)), Struct_1(!var_2.a.a | any(vec2<bool>(true, var_2.a.a)))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, true);
    let var_1 = 547f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(vec3<i32>(i32(-1i) * -14428i, -21404i, u_input.a.x)))));
    global0 = array<vec2<f32>, 10>();
    var var_3 = Struct_4(Struct_1(false));
    global2 = array<vec4<u32>, 9>();
    let var_4 = !(!vec3<bool>(all(!var_0), select(false, select(false, false, false), var_0.x), u_input.a.x != 1i));
    let var_5 = u_input.c.xy;
    var var_6 = Struct_3(13213i, Struct_2(var_5, max((i32(-1i) * -1i) >> (u_input.c.x % 32u), 0i), Struct_1(select(var_4.x, var_3.a.a, u_input.b.x != 2147483647i))), var_3.a, Struct_2(_wgslsmith_clamp_vec2_u32(u_input.c.xz, firstTrailingBit(vec2<u32>(25281u, 0u)), vec2<u32>(u_input.c.x, 1u) & vec2<u32>(var_5.x, 1u)), ~select(32229i, -42751i, -2147483647i == u_input.a.x), func_1(vec3<i32>(0i | u_input.b.x, 4164i, ~79128i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, 78460u);
}

