struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 27>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec4<bool> {
    global2 = array<Struct_1, 27>();
    global2 = array<Struct_1, 27>();
    global0 = u_input.a;
    var var_0 = Struct_1(1u);
    global0 = ~(-(~(-arg_0.x)));
    return arg_1.a;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    global1 = all(select(arg_1.a.a, arg_2.a, !select(any(arg_1.a.a.xyy), !arg_0.c, all(arg_2.a))));
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(180f, arg_1.b.x, arg_1.b.x) + vec3<f32>(arg_1.b.x, arg_0.a, arg_1.b.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1611f, arg_1.b.x, arg_0.a) - vec3<f32>(arg_1.b.x, 159f, -1719f)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1525f, -580f, arg_0.a))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1317f, -196f, -1072f), vec3<f32>(arg_1.b.x, arg_1.b.x, 1004f)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a, 1601f, -885f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(2322f, 454f, 1316f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, 1652f, arg_0.a)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -256f), 1559f, -515f)), vec3<bool>(true, true, (arg_0.d.a << (1u % 32u)) <= arg_1.c.a)));
    var var_1 = ~(2400u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 43002u, 4294967295u, 22977u), vec4<u32>(arg_1.c.a, u_input.b, 4294967295u, 0u)), _wgslsmith_mult_u32(29448u, arg_0.d.a), firstLeadingBit(61611u), 1u), vec4<u32>(arg_1.c.a, _wgslsmith_mult_u32(arg_0.d.a, arg_0.d.a), arg_0.d.a, u_input.b ^ u_input.b)) % 32u));
    return ~u_input.b;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(973f, -372f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -292f)));
    var var_1 = ~4294967295u;
    var_1 = 1u;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(arg_0.x + -445f), u_input.a, true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(u_input.c, func_3(Struct_4(var_0, 8335i, false, global2[_wgslsmith_index_u32(u_input.b, 27u)]), Struct_3(Struct_2(vec4<bool>(true, false, true, false)), arg_0, global2[_wgslsmith_index_u32(u_input.c, 27u)]), Struct_2(vec4<bool>(false, true, false, true))), false), ~0u), 27u)]);
    var_1 = 6145u;
    return Struct_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, 151437u), var_2.d.a), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, 3998u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_2.d.a, var_2.d.a), vec2<u32>(var_2.d.a, u_input.c)))), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(0u, var_2.d.a), max(firstTrailingBit(28742u), ~44237u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = all(vec2<bool>(true, true)) && any(func_1(-firstLeadingBit(vec4<i32>(u_input.d.x, -48463i, u_input.a, u_input.d.x)), Struct_2(vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true), vec2<bool>(true, true)));
    let var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-308f + _wgslsmith_f_op_f32(f32(-1f) * -716f)), 1f));
    global2 = array<Struct_1, 27>();
    var var_1 = Struct_4(-328f, _wgslsmith_dot_vec3_i32(reverseBits(abs(vec3<i32>(-14602i, 10161i, u_input.a)) >> (vec3<u32>(u_input.c, 4294967295u, var_0.a) % vec3<u32>(32u))), vec3<i32>(firstLeadingBit(firstLeadingBit(u_input.d.x)), 2147483647i, _wgslsmith_dot_vec2_i32(u_input.d.wy ^ vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(9374i, u_input.d.x)))), false, global2[_wgslsmith_index_u32(~(7287u ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(52337u, 64668u), vec2<u32>(32692u, 3309u))), 27u)]);
    global2 = array<Struct_1, 27>();
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, -1372f, -1049f))))))));
    var var_3 = Struct_4(var_1.a, _wgslsmith_mult_i32(max(-50149i, -min(0i, u_input.a)), 25682i), func_1(-_wgslsmith_add_vec4_i32(~u_input.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(-15447i, var_1.b, u_input.a, -25464i), u_input.d, u_input.d)), Struct_2(!vec4<bool>(true, var_1.c, false, var_1.c)), !select(vec3<bool>(true, var_1.c, true), vec3<bool>(var_1.c, true, var_1.c), u_input.b == u_input.b), vec2<bool>(all(func_1(vec4<i32>(var_1.b, 20436i, 2147483647i, var_1.b), Struct_2(vec4<bool>(var_1.c, true, true, var_1.c)), vec3<bool>(true, var_1.c, true), vec2<bool>(var_1.c, false)).zwy), !var_1.c)).x, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_2.yw)))));
    var var_4 = _wgslsmith_div_vec2_u32(~min(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(51420u, var_1.d.a), vec2<u32>(var_0.a, u_input.b), vec2<u32>(u_input.b, 4294967295u))), firstTrailingBit(select(vec2<u32>(var_3.d.a, u_input.c), vec2<u32>(18010u, 1u), true))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(28677u, var_1.d.a), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, 4294967295u), vec2<u32>(35662u, 13643u))) >> (vec2<u32>(0u, var_0.a) % vec2<u32>(32u)));
    var var_5 = vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(-25117i), ~(~var_1.b) | _wgslsmith_mod_i32(abs(var_1.b), var_1.b)), -13878i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(635f)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(max(824f, -392f))))), u_input.a << (0u % 32u));
}

