struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -7896i;

var<private> global1: Struct_1 = Struct_1(false, vec2<bool>(true, true), -1702i);

var<private> global2: u32 = 0u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~54805u, ~(~u_input.b)), u_input.b, _wgslsmith_mod_u32(~(58440u & u_input.b), ~u_input.b), u_input.b), firstTrailingBit(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 19795u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 26869u, u_input.b), vec4<u32>(1u, 11557u, 1546u, 1u)), vec4<u32>(8442u, 0u, 0u, 29850u) ^ vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b))));
    var var_1 = _wgslsmith_dot_vec4_i32(u_input.d ^ firstLeadingBit(select(u_input.c, vec4<i32>(-1i, 20300i, arg_0.a.c, u_input.d.x), vec4<bool>(arg_1.a, arg_1.a, arg_0.a.b.x, global1.a))), -select(vec4<i32>(arg_1.c, 14531i, arg_1.c, arg_0.a.c), vec4<i32>(2147483647i, -25395i, arg_1.c, 10119i), arg_2)) ^ _wgslsmith_mod_i32(~(i32(-1i) * -arg_1.c), 1i);
    global2 = var_0.x;
    var var_2 = global1.b;
    global1 = arg_0.a;
    return abs(u_input.d.zx);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec2<bool>) -> u32 {
    return 62631u;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> bool {
    global1 = Struct_1(select(func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 228f, -203f, -642f))), func_3(Struct_2(Struct_1(false, arg_3.a.b, -6932i)), arg_1.a, true), arg_1.a.b) <= ~min(u_input.b, 1u), false, true), select(global1.b, vec2<bool>(true, false), false || (32461i > abs(arg_1.a.c))), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(~u_input.c.ww, vec2<i32>(u_input.a, arg_1.a.c)), vec2<i32>(-1i >> (abs(u_input.b) % 32u), 1i)));
    let var_0 = all(vec4<bool>(true, !(u_input.b <= 1u), !(!(!global1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f), -1000f) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-948f - 1411f)))));
    global0 = ~firstTrailingBit(max(arg_3.a.c, firstTrailingBit(arg_1.a.c)));
    let var_1 = abs(92573u);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-980f + -143f)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1007f - 1054f) * _wgslsmith_f_op_f32(abs(-965f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-171f, 1533f)), _wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(trunc(-327f))), (all(vec4<bool>(arg_3.a.b.x, arg_3.a.a, arg_1.a.b.x, true)) & true) && (arg_2 <= 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1071f, 159f, -839f) * vec3<f32>(1000f, -1533f, 331f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1572f, -559f, 1921f) - vec3<f32>(130f, 1464f, 1001f))))))));
    return false;
}

fn func_1() -> u32 {
    let var_0 = select(vec2<bool>(global1.a == true, func_2(firstTrailingBit(~u_input.e), Struct_2(Struct_1(true, global1.b, global1.c)), ~124043u, Struct_2(Struct_1(true, vec2<bool>(true, true), global1.c)))), !vec2<bool>(!global1.a, any(vec2<bool>(true, global1.a))), global1.b.x);
    global1 = Struct_1(false, select(select(!select(vec2<bool>(false, var_0.x), var_0, true), vec2<bool>(true, var_0.x), var_0.x), select(!(!global1.b), vec2<bool>(all(vec4<bool>(true, false, false, false)), 15905i != u_input.c.x), !(var_0.x && global1.a)), firstLeadingBit(_wgslsmith_mod_i32(global1.c, 57981i)) < 1i), -56087i);
    global0 = ~abs(u_input.a);
    global2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(max(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 21673u)), vec2<u32>(u_input.b, 4294967295u)), ~(firstTrailingBit(vec2<u32>(u_input.b, 0u)) >> (reverseBits(vec2<u32>(u_input.b, 21798u)) % vec2<u32>(32u)))) & abs(u_input.b);
    var var_1 = func_3(Struct_2(Struct_1(all(var_0), select(select(var_0, vec2<bool>(false, true), false), vec2<bool>(global1.b.x, global1.a), !global1.b), global1.c)), Struct_1(true, select(select(vec2<bool>(false, true), !var_0, !var_0.x), !select(vec2<bool>(var_0.x, global1.a), vec2<bool>(global1.b.x, var_0.x), true), select(false, false, false) || !var_0.x), abs(u_input.a)), global1.a).x;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(35553u, 38910u, u_input.b, 8890u), vec4<u32>(u_input.b, u_input.b, 53147u, 0u)) & 13672u, u_input.b, ~12560u) & _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 24457u), ~(~vec3<u32>(u_input.b, u_input.b, 30866u))), countOneBits(vec3<u32>(min(1u, u_input.b), firstTrailingBit(0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(57948u, 1u), vec2<u32>(27182u, 22958u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~_wgslsmith_mult_u32(u_input.b, 24498u);
    global2 = ~(_wgslsmith_add_u32(abs(countOneBits(0u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.b, 4294967295u), select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 4294967295u, 74490u), global1.b.x))) ^ func_1());
    let var_0 = -firstTrailingBit(33079i);
    var var_1 = _wgslsmith_div_u32(~59262u, 1u);
    var var_2 = Struct_1(global1.a, vec2<bool>(all(select(vec4<bool>(false, global1.b.x, global1.a, global1.b.x), vec4<bool>(global1.b.x, global1.a, global1.a, false), global1.a || true)), false), abs(~(~_wgslsmith_clamp_i32(-9642i, u_input.a, -1i))));
    var_1 = ~(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b & 0u, u_input.b), 4294967295u, abs(~118471u)));
    global1 = Struct_1(global1.a, select(select(!select(var_2.b, vec2<bool>(var_2.a, var_2.a), true), select(vec2<bool>(true, true), select(var_2.b, vec2<bool>(global1.b.x, global1.a), true), select(global1.b, vec2<bool>(false, global1.b.x), var_2.b)), select(vec2<bool>(var_2.a, var_2.b.x), !var_2.b, !vec2<bool>(true, global1.a))), var_2.b, true), u_input.a);
    global2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.b, max(_wgslsmith_add_u32(1u, 1u), u_input.b)) ^ vec2<u32>(abs(33013u), 0u));
}

