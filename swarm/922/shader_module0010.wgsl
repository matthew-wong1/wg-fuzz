struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1648f, false, vec4<bool>(true, true, true, false), false, vec2<u32>(10024u, 15598u));

var<private> global1: array<f32, 30>;

var<private> global2: array<i32, 8> = array<i32, 8>(26202i, -1i, 0i, 0i, 21156i, -2626i, -50167i, 2147483647i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = arg_1;
    let var_0 = arg_0;
    global0 = var_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-824f - arg_1.a))))) + -324f), all(vec4<bool>(!global0.d, !arg_1.b, !(global0.e.x > u_input.a.x), all(vec3<bool>(false, false, false)))), select(!vec4<bool>(var_0.d && global0.b, var_0.b, arg_0.d, var_0.c.x), global0.c, select(arg_0.c, !vec4<bool>(global0.d, false, false, arg_1.c.x), var_0.c)), true, ~(~vec2<u32>(firstTrailingBit(32128u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.e.x, global0.e.x, arg_0.e.x, var_0.e.x), vec4<u32>(arg_0.e.x, arg_1.e.x, 44816u, u_input.a.x)))));
    global2 = array<i32, 8>();
    return global2[_wgslsmith_index_u32(1u, 8u)];
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~0u, 30u)])))), false, !(!(!global0.c)), (global0.c.x && true) | true, _wgslsmith_add_vec2_u32(global0.e, vec2<u32>(global0.e.x, global0.e.x)));
    return Struct_1(global1[_wgslsmith_index_u32(~max(_wgslsmith_mult_u32(max(4294967295u, 14215u), ~u_input.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), u_input.a.xx), ~16137u)), 30u)], !var_0.c.x, vec4<bool>(all(!(!vec2<bool>(global0.c.x, var_0.c.x))), any(select(var_0.c.zzz, !vec3<bool>(var_0.c.x, false, var_0.b), global0.c.ywz)), func_3(Struct_1(510f, true, vec4<bool>(global0.d, global0.d, var_0.b, true), false, var_0.e), Struct_1(global1[_wgslsmith_index_u32(global0.e.x, 30u)], false, var_0.c, global0.c.x, u_input.a.xz)) < abs(~u_input.d.x), var_0.e.x >= 29963u), any(global0.c.wy), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(10940u, global0.e.x)), reverseBits(vec2<u32>(var_0.e.x, 9009u)), firstLeadingBit(global0.e)), ~vec2<u32>(29910u, 3856u)), vec2<u32>(24431u | var_0.e.x, u_input.b)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(0i, -2147483647i, _wgslsmith_mod_i32(u_input.d.x, ~1i)) << (vec3<u32>(~_wgslsmith_sub_u32(~6440u, 1u), _wgslsmith_dot_vec4_u32((vec4<u32>(17294u, 1871u, 120816u, u_input.a.x) >> (u_input.a % vec4<u32>(32u))) << (~u_input.a % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_0.e.x, arg_0.e.x, arg_1.e.x), u_input.a), vec4<u32>(541u, u_input.b, 1u, 4294967295u), ~vec4<u32>(arg_0.e.x, arg_0.e.x, 0u, arg_1.e.x))), _wgslsmith_add_u32(6761u, firstLeadingBit(u_input.a.x) << (22996u % 32u))) % vec3<u32>(32u));
    global1 = array<f32, 30>();
    var var_1 = !select(global0.c.yw, select(arg_0.c.wx, select(vec2<bool>(true, true), !arg_1.c.yy, func_2().c.yz), true), true);
    global1 = array<f32, 30>();
    var var_2 = Struct_1(global0.a, true, vec4<bool>(global0.d, false, true & (!arg_1.d || !arg_1.c.x), true | arg_0.b), true, u_input.a.zy);
    return func_2();
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec4<bool> {
    var var_0 = func_4(func_2(), Struct_1(1000f, true, global0.c, true, vec2<u32>(1u, 23435u << (u_input.b % 32u))));
    var var_1 = global0.a;
    let var_2 = func_2();
    let var_3 = var_0.e.x;
    global0 = func_2();
    return func_4(var_2, Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~1u, 30u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(1u, 30u)])) > var_2.a, select(!(!global0.c), var_2.c, !arg_0.x), !select(true, true, !var_0.b), ~_wgslsmith_sub_vec2_u32(global0.e, vec2<u32>(9094u, u_input.b)) ^ _wgslsmith_mod_vec2_u32(select(var_2.e, vec2<u32>(var_2.e.x, 86935u), true), global0.e << (u_input.a.xx % vec2<u32>(32u))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(444f, global0.b, select(vec4<bool>(!all(vec2<bool>(global0.c.x, false)), any(global0.c.xx), true != (713f < global1[_wgslsmith_index_u32(u_input.b, 30u)]), all(vec3<bool>(global0.d, global0.c.x, false))), !(!vec4<bool>(global0.b, global0.d, global0.d, false)), !func_1(!global0.c.yz, ~vec3<i32>(1i, 13153i, u_input.c.x))), any(func_1(vec2<bool>(any(vec3<bool>(true, true, false)), true), ~countOneBits(vec3<i32>(-4095i, global2[_wgslsmith_index_u32(3314u, 8u)], 58713i))).xz), ~(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(global0.e, u_input.a.xz), _wgslsmith_sub_vec2_u32(vec2<u32>(global0.e.x, 1u), global0.e)) << (vec2<u32>(_wgslsmith_mult_u32(u_input.b, global0.e.x), global0.e.x) % vec2<u32>(32u))));
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(step(-584f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 30u)])))), !(u_input.b != ~87864u), vec4<bool>(true, func_1(func_1(vec2<bool>(true, false), u_input.d).xy, reverseBits(vec3<i32>(-2147483647i, -20485i, 2147483647i))).x, global0.b, any(vec2<bool>(global0.c.x, global0.d))), all(global0.c), vec2<u32>(_wgslsmith_add_u32(~global0.e.x, u_input.a.x), 2613u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -931f), func_1(!global0.c.wy, select(vec3<i32>(u_input.d.x, global2[_wgslsmith_index_u32(1u, 8u)], -19407i), vec3<i32>(global2[_wgslsmith_index_u32(19314u, 8u)], 66264i, u_input.c.x), select(global0.c.yzz, vec3<bool>(global0.b, global0.c.x, false), vec3<bool>(true, true, true)))).x, !global0.c, true, ~firstLeadingBit(vec2<u32>(0u, u_input.a.x) | vec2<u32>(u_input.b, 19640u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(var_0.e.x, 30u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 30u)]))) - vec2<f32>(var_0.a, _wgslsmith_f_op_f32(round(1426f)))), vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global0.a)))), var_0.a))));
    global2 = array<i32, 8>();
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~abs(u_input.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, var_1.x)), ~vec3<u32>(~(~u_input.a.x), ~firstTrailingBit(var_2.e.x), _wgslsmith_mod_u32(min(var_0.e.x, 4294967295u), u_input.a.x ^ 69213u)), vec3<i32>(u_input.c.x, 24170i, countOneBits(u_input.c.x)));
}

