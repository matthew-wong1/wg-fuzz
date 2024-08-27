struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<bool>;

var<private> global2: i32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global1 = select(!vec2<bool>(true & any(vec2<bool>(false, false)), false && all(vec3<bool>(true, true, true))), !select(select(!vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), select(vec2<bool>(true, false), vec2<bool>(global1.x, global1.x), global1.x)), !vec2<bool>(false, global1.x), vec2<bool>(global1.x, false)), true);
    var var_0 = Struct_3(true, Struct_2(u_input.d.zz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-752f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f) + -957f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f) * -1193f)));
    let var_1 = var_0.b;
    let var_2 = -1i;
    let var_3 = ~u_input.d.zz;
    return -229f;
}

fn func_2() -> Struct_2 {
    var var_0 = -(~u_input.e.xx);
    var_0 = vec2<i32>(~u_input.e.x, 1i << (u_input.d.x % 32u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1203f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1277f))))));
    var var_2 = Struct_1(3930i, firstLeadingBit(~u_input.e.x & 1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1341f + 1000f))));
    var var_3 = u_input.d.x;
    return Struct_2(~u_input.d.zy, -720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = countOneBits(~_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, 25716u, 4294967295u)), u_input.d));
    var var_2 = vec3<i32>(~(~countOneBits(u_input.e.x)), _wgslsmith_div_i32(-(~_wgslsmith_dot_vec2_i32(arg_2.yy, vec2<i32>(60029i, arg_0.b))), _wgslsmith_div_i32(arg_0.a, ~5759i)), arg_2.x);
    var_2 = u_input.e;
    let var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 17124u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a.x, 1u, var_1.x, 35776u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 33947u, 1u, 0u), vec4<u32>(1u, 0u, var_0.a.x, var_1.x)) % vec4<u32>(32u)), ~select(vec4<u32>(arg_1.a.x, 4294967295u, u_input.b, 4294967295u), vec4<u32>(arg_1.a.x, u_input.d.x, var_0.a.x, var_1.x), vec4<bool>(global1.x, true, true, false)))), firstLeadingBit(vec3<u32>(~0u, ~var_0.a.x, var_0.a.x | var_0.a.x) & u_input.d));
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = ~(~vec4<u32>(arg_3.b.a.x, arg_3.b.a.x, ~arg_0.b.a.x, arg_3.b.a.x)) >> (vec4<u32>(_wgslsmith_add_u32(arg_0.b.a.x, arg_3.b.a.x), u_input.d.x, _wgslsmith_mod_u32(~1u, ~arg_3.b.a.x) ^ _wgslsmith_div_u32(~arg_3.b.a.x, firstLeadingBit(29799u)), _wgslsmith_add_u32(arg_3.b.a.x, arg_0.b.a.x)) % vec4<u32>(32u));
    var var_1 = Struct_3(arg_3.a, func_1(Struct_1(_wgslsmith_div_i32(-2147483647i, 1i), _wgslsmith_mod_i32(firstTrailingBit(34256i), -2147483647i), _wgslsmith_div_f32(716f, -1683f)), func_2(), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.e.x, -28556i, 1i, -2147483647i), firstTrailingBit(arg_2)) & -vec4<i32>(arg_2.x, 66605i, arg_2.x, arg_2.x)));
    let var_2 = !select(select(!(!vec2<bool>(arg_0.a, var_1.a)), select(vec2<bool>(var_1.a, arg_0.a), !vec2<bool>(arg_3.a, false), !vec2<bool>(arg_3.a, false)), select(vec2<bool>(false, true), !vec2<bool>(global1.x, arg_0.a), true)), !vec2<bool>(true, 0i != arg_2.x), vec2<bool>(true, true));
    let var_3 = func_2().a.x;
    var var_4 = _wgslsmith_sub_u32(18055u, var_3);
    return func_1(Struct_1(~countOneBits(i32(-1i) * -1i), 7385i, arg_1.x), Struct_2(select(arg_0.b.a, ~max(vec2<u32>(0u, 7024u), var_0.wx), var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1059f))), -2158f), vec4<i32>(1i, 11244i, -1i, -_wgslsmith_div_i32(-67531i, -1i) >> (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec2<bool>(any(vec4<bool>(true, false, false, global1.x)), 4294967295u != u_input.c);
    let var_0 = func_4(Struct_3(!(_wgslsmith_mod_i32(u_input.e.x, 0i) < 0i), func_1(Struct_1(_wgslsmith_div_i32(u_input.e.x, u_input.e.x), min(u_input.e.x, -1i), _wgslsmith_div_f32(1248f, 1556f)), Struct_2(_wgslsmith_add_vec2_u32(u_input.d.xy, u_input.d.zx), _wgslsmith_f_op_f32(-841f + -436f), _wgslsmith_f_op_f32(round(483f))), vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, _wgslsmith_dot_vec2_i32(u_input.e.xy, vec2<i32>(u_input.e.x, 0i))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1972f, 348f) - vec2<f32>(-594f, -1004f)))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1228f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-441f)) * -329f))), max(vec4<i32>(u_input.e.x, _wgslsmith_div_i32(u_input.e.x, 1i) << (_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, u_input.d.x, 0u)) % 32u), u_input.e.x, -1i), max(vec4<i32>(min(-12656i, u_input.e.x), _wgslsmith_sub_i32(u_input.e.x, u_input.e.x), 20240i, 2147483647i), ~countOneBits(vec4<i32>(u_input.e.x, 26427i, u_input.e.x, u_input.e.x)))), Struct_3(u_input.b != (u_input.b ^ u_input.a), Struct_2(abs(vec2<u32>(4294967295u, u_input.a)) & vec2<u32>(4294967295u, 16414u), func_1(Struct_1(-4553i, 1i, 1000f), func_2(), ~vec4<i32>(10467i, u_input.e.x, u_input.e.x, u_input.e.x)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-618f + 2617f)))));
    global2 = -2147483647i;
    let var_1 = abs(-abs(vec3<i32>(-2950i, _wgslsmith_dot_vec2_i32(vec2<i32>(41860i, u_input.e.x), u_input.e.xz), _wgslsmith_clamp_i32(u_input.e.x, u_input.e.x, -1i))));
    global1 = vec2<bool>(true, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b)), func_4(Struct_3(global1.x, Struct_2(var_0.a, var_0.c, var_0.c)), vec2<f32>(-1000f, var_0.c), vec4<i32>(-2147483647i, 0i, -28084i, var_1.x), Struct_3(global1.x, var_0)).c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.b)), 1000f, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, global1.x, false), true)))), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))), 128f), -(vec4<i32>(u_input.e.x | var_1.x, 40293i, ~u_input.e.x, ~(-29567i)) | vec4<i32>(-2147483647i, 9880i, var_1.x, var_1.x)));
}

