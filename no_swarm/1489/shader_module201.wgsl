struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_3) -> bool {
    global0 = array<Struct_1, 8>();
    let var_0 = arg_3.a;
    var var_1 = arg_0.x;
    let var_2 = Struct_3(471f);
    let var_3 = !(!(!vec4<bool>(true, all(vec2<bool>(true, false)), any(vec4<bool>(false, true, false, true)), true)));
    return !(!(arg_3.a == -438f));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = vec3<bool>(func_3(abs(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(-arg_2), 1u, arg_1), false, true);
    let var_1 = countOneBits(4294967295u);
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    var var_2 = vec4<u32>(_wgslsmith_mult_u32(var_1, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, var_1, var_1), vec4<u32>(var_1, var_1, var_1, 63333u)))), abs(~reverseBits(13672u)), abs(var_1), 9244u);
    return select(select(select(var_0, vec3<bool>(any(var_0.zz), var_0.x == false, var_0.x), all(vec2<bool>(var_0.x, true))), select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), var_0, all(vec4<bool>(false, true, var_0.x, false))), !(!vec3<bool>(var_0.x, false, var_0.x)), var_0), false & !func_3(vec3<u32>(1u, 4294967295u, 3484u), arg_2, 0u, Struct_3(427f))), select(vec3<bool>(false, var_0.x, any(!var_0.yz)), !vec3<bool>(arg_2.x <= arg_2.x, false, false), select(var_0, !vec3<bool>(true, true, var_0.x), true)), select(select(vec3<bool>(false, u_input.b <= u_input.b, false), var_0, !var_0.x), var_0, false));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = arg_0.b;
    global0 = array<Struct_1, 8>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -294f);
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~arg_0.c.yy, vec2<u32>(arg_0.c.x, arg_0.c.x) << (arg_0.c.xy % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_add_u32(0u, 84131u), arg_0.c.x)) >> (arg_0.c.x % 32u);
    var_2 = _wgslsmith_mult_u32(arg_0.c.x, arg_0.c.x);
    return !select(select(vec3<bool>(true, true, arg_0.b & true), vec3<bool>(false, arg_0.b, false), !func_2(-55777i, Struct_3(1867f), vec2<f32>(-1000f, 780f))), vec3<bool>(!any(vec2<bool>(false, false)), all(select(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b))), false), vec3<bool>(all(vec4<bool>(false, true, true, arg_0.b)), arg_0.b, arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(Struct_2(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b, 7219i), -vec2<i32>(-18552i, -1i)), true, ~(~vec3<u32>(4294967295u, 4294967295u, 0u))));
    var_0 = func_1(Struct_2(abs(vec2<i32>(-1i) * -vec2<i32>(2147483647i, -28928i)), func_1(Struct_2(vec2<i32>(2147483647i, u_input.a), var_0.x, vec3<u32>(4294967295u, 41715u, 72533u))).x & true, select(vec3<u32>(1u, ~2255u, abs(104937u)), vec3<u32>(1u, 1u, 1u), true)));
    global0 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1877f)), 1f, all(!vec4<bool>(false, false, var_0.x, var_0.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, 1495f)))));
    var var_2 = Struct_2(firstTrailingBit(~reverseBits(vec2<i32>(u_input.a, -51206i))) | countOneBits(max(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 101389i), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-1i, 50985i))), var_0.x, vec3<u32>(max(firstTrailingBit(21515u), 1u), ~97139u, ~1u) & ~(~vec3<u32>(1u, 1u, 1u)));
    var var_3 = !func_1(Struct_2(var_2.a, var_0.x, var_2.c));
    global0 = array<Struct_1, 8>();
    var_2 = Struct_2(firstLeadingBit(reverseBits(vec2<i32>(u_input.b << (var_2.c.x % 32u), u_input.a))), false, ~(~(~_wgslsmith_mod_vec3_u32(var_2.c, vec3<u32>(0u, var_2.c.x, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, var_1, _wgslsmith_f_op_f32(-var_1))), firstLeadingBit(~select(vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(40595u, var_2.c.x, 0u, var_2.c.x), vec4<u32>(var_2.c.x, 1u, 0u, 4294967295u)), func_3(var_2.c, vec2<f32>(-612f, var_1), 0u, Struct_3(612f)))));
}

