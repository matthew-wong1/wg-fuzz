struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28>;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(i32(-2147483648)), Struct_1(2120i), Struct_1(4220i), Struct_1(-1i), Struct_1(10870i), Struct_1(0i), Struct_1(-41089i), Struct_1(-8370i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(7054i), Struct_1(-14241i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = any(!(!(!arg_1.b)));
    global1 = array<Struct_1, 13>();
    let var_1 = u_input.c.xz;
    let var_2 = arg_1;
    global0 = array<vec2<f32>, 28>();
    return vec2<bool>(true, all(!(!select(vec2<bool>(arg_1.b.x, false), arg_1.b, arg_1.b))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> i32 {
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-295f - arg_1.a.x), -2415f), arg_1.a.x), Struct_2(arg_1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(1267f)), _wgslsmith_f_op_f32(select(arg_3.d.b.x, arg_1.a.x, arg_3.b.x))) + _wgslsmith_f_op_vec3_f32(sign(arg_3.d.a)))), arg_1, Struct_1(u_input.b), select(arg_3.b, func_3(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2, abs(57305u), 1u), 13u)], arg_3), arg_3.b.x));
    var var_1 = _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-223f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.x) * _wgslsmith_f_op_f32(step(-2623f, arg_3.d.b.x)))) - -547f));
    let var_2 = Struct_1(arg_3.c.x);
    var var_3 = reverseBits(~1u);
    let var_4 = vec3<u32>(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, firstLeadingBit(arg_2)), ~1u, (u_input.c.x | u_input.c.x) >> (13540u % 32u))), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.c.wzx, vec3<u32>(arg_2, arg_2, 42845u)), reverseBits(1u), ~4294967295u), u_input.c.x), ~(71278u << (~(arg_2 >> (15788u % 32u)) % 32u)));
    return u_input.b;
}

fn func_1(arg_0: vec2<u32>) -> Struct_4 {
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    let var_0 = false;
    let var_1 = reverseBits(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -48203i), vec2<i32>(-36361i, func_2(-231f, Struct_2(vec3<f32>(-118f, 1589f, 524f), vec3<f32>(106f, 2477f, -1144f)), 65963u, Struct_3(-334f, vec2<bool>(var_0, var_0), u_input.a.yw, Struct_2(vec3<f32>(-2908f, 2258f, -1876f), vec3<f32>(-859f, 424f, -1844f)))))), 2147483647i));
    var var_2 = any(vec2<bool>(var_0, true));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-486f, 786f, !var_0)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -252f), -126f)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1933f, 1412f, -162f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-336f, 321f, 2523f) * vec3<f32>(666f, -260f, -732f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(649f, 2193f, -1007f)))))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1044f, 356f, 1393f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1000f, -661f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-558f, 150f, -1414f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-578f, 739f, 359f) - vec3<f32>(1000f, 1000f, -1274f))))), Struct_1(abs(_wgslsmith_dot_vec3_i32(-u_input.a.wzz, -vec3<i32>(u_input.a.x, 26264i, u_input.a.x)))), select(vec2<bool>(var_0, true), func_3(global1[_wgslsmith_index_u32(1u, 13u)], Struct_3(_wgslsmith_f_op_f32(-112f - -1000f), !vec2<bool>(var_0, true), vec2<i32>(73526i, u_input.b), Struct_2(vec3<f32>(1858f, 336f, 312f), vec3<f32>(805f, 297f, -788f)))), !var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~_wgslsmith_add_vec2_u32(vec2<u32>(firstTrailingBit(u_input.c.x), 16645u), u_input.c.xz));
    var var_1 = func_1(u_input.c.yz);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(var_0.c.b.x * var_0.b.a.x), Struct_2(vec3<f32>(-566f, _wgslsmith_f_op_f32(min(var_0.a, var_1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-778f, 1459f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c.b))), func_1(firstTrailingBit(vec2<u32>(42497u, 0u)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(43755u, u_input.c.x), _wgslsmith_mod_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, 4539u))) % vec2<u32>(32u))).c, func_1(u_input.c.zw).d, select(!var_1.e, func_3(func_1(vec2<u32>(1u, u_input.c.x)).d, Struct_3(_wgslsmith_f_op_f32(step(-871f, -2776f)), vec2<bool>(var_1.e.x, var_0.e.x), u_input.a.xy, func_1(u_input.c.yx).c)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a), vec2<i32>(-14248i, -u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, -1450f, var_0.b.b.x, -175f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(511f, 393f, var_0.c.b.x, 982f) * vec4<f32>(var_0.a, var_1.b.b.x, var_1.b.a.x, 282f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -1108f, var_0.b.b.x))))), var_2.c.b.yz, vec3<u32>(0u, ~u_input.c.x, ~(~u_input.c.x)));
}

