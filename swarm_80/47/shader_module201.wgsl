struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec4<u32>(40777u, 0u, 19878u, 4294967295u), vec2<bool>(true, true)), Struct_3(vec4<u32>(0u, 1u, 48305u, 5219u), vec2<bool>(true, true)), Struct_3(vec4<u32>(51075u, 1u, 9737u, 3160u), vec2<bool>(false, false)), Struct_3(vec4<u32>(1u, 13075u, 4294967295u, 1275u), vec2<bool>(true, false)), Struct_3(vec4<u32>(32998u, 6898u, 7026u, 71206u), vec2<bool>(false, false)), Struct_3(vec4<u32>(1u, 1587u, 4294967295u, 0u), vec2<bool>(true, true)), Struct_3(vec4<u32>(33455u, 0u, 4294967295u, 25473u), vec2<bool>(true, true)), Struct_3(vec4<u32>(33568u, 1u, 25738u, 1250u), vec2<bool>(false, true)), Struct_3(vec4<u32>(79792u, 0u, 1u, 54256u), vec2<bool>(true, false)), Struct_3(vec4<u32>(16399u, 0u, 20741u, 4294967295u), vec2<bool>(true, false)), Struct_3(vec4<u32>(1u, 4294967295u, 4294967295u, 25704u), vec2<bool>(true, true)), Struct_3(vec4<u32>(4294967295u, 67558u, 22937u, 4294967295u), vec2<bool>(false, false)), Struct_3(vec4<u32>(1u, 42842u, 65878u, 4294967295u), vec2<bool>(false, true)), Struct_3(vec4<u32>(48720u, 50191u, 13975u, 4294967295u), vec2<bool>(false, false)), Struct_3(vec4<u32>(0u, 24517u, 1u, 4294967295u), vec2<bool>(true, true)), Struct_3(vec4<u32>(28030u, 4294967295u, 107852u, 1u), vec2<bool>(false, false)), Struct_3(vec4<u32>(4294967295u, 82430u, 4026u, 0u), vec2<bool>(true, false)), Struct_3(vec4<u32>(17394u, 4294967295u, 0u, 4294967295u), vec2<bool>(false, false)), Struct_3(vec4<u32>(1u, 1u, 4294967295u, 20374u), vec2<bool>(false, false)), Struct_3(vec4<u32>(57286u, 5824u, 31641u, 44288u), vec2<bool>(false, true)), Struct_3(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec2<bool>(false, true)), Struct_3(vec4<u32>(13963u, 610u, 42126u, 1u), vec2<bool>(false, true)), Struct_3(vec4<u32>(83812u, 23237u, 1u, 40590u), vec2<bool>(false, true)), Struct_3(vec4<u32>(0u, 1u, 0u, 1u), vec2<bool>(true, false)), Struct_3(vec4<u32>(32707u, 28742u, 0u, 17546u), vec2<bool>(false, false)), Struct_3(vec4<u32>(0u, 28047u, 1u, 4294967295u), vec2<bool>(false, false)), Struct_3(vec4<u32>(26776u, 1u, 1105u, 78437u), vec2<bool>(false, false)), Struct_3(vec4<u32>(1u, 1u, 0u, 4294967295u), vec2<bool>(false, true)), Struct_3(vec4<u32>(27004u, 1u, 56491u, 4294967295u), vec2<bool>(true, false)), Struct_3(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec2<bool>(false, false)), Struct_3(vec4<u32>(4294967295u, 46554u, 1u, 86406u), vec2<bool>(true, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = u_input.d;
    global1 = array<Struct_3, 31>();
    var var_1 = -14343i;
    var var_2 = vec4<bool>(arg_1.b.x, !(!any(select(arg_1.b, arg_1.b, false))), !arg_1.b.x, false);
    let var_3 = 511f;
    return arg_3;
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> Struct_3 {
    var var_0 = vec2<bool>(false | ((i32(-1i) * -37596i) >= arg_0.c.b), true);
    var var_1 = global1[_wgslsmith_index_u32(arg_0.d.d, 31u)];
    let var_2 = u_input.b;
    let var_3 = arg_0.d.a.x;
    var_0 = select(select(var_1.b, !var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3)) - _wgslsmith_f_op_f32(arg_0.b * -1000f)) <= var_3), vec2<bool>(var_0.x, all(vec4<bool>(var_0.x, all(vec4<bool>(false, arg_1, arg_1, arg_1)), !arg_0.a.x, true))), true);
    return global1[_wgslsmith_index_u32(u_input.c.x, 31u)];
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_3) -> bool {
    var var_0 = u_input.a.yw << ((countOneBits(~arg_2.a.zy) >> (~u_input.a.yz % vec2<u32>(32u))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(sign(-144f))) + _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(ceil(arg_0))))) < 1852f;
}

fn func_1() -> i32 {
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1180f, 1121f, _wgslsmith_f_op_f32(step(962f, 1756f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec4<f32>(_wgslsmith_div_f32(-1000f, -1624f), _wgslsmith_f_op_f32(select(867f, 220f, false)), _wgslsmith_f_op_f32(max(-177f, 349f)), _wgslsmith_f_op_f32(-1223f - 819f)))), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -9608i), min(vec2<i32>(31553i, u_input.d), vec2<i32>(1i, -45285i)))), 57261u, 1u);
    var var_2 = Struct_1(var_1.a, 60268i, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_1.d, 82015u, 81701u) & u_input.a, ~u_input.a, vec4<u32>(var_1.d, u_input.a.x, 3892u, var_1.d)), ~u_input.a >> (vec4<u32>(11470u, 2968u, var_1.d, var_1.d) % vec4<u32>(32u))), u_input.a.x), _wgslsmith_clamp_u32(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(32537u, 0u, 4294967295u), vec3<u32>(1u, var_1.c, var_1.d))), 80596u, abs(var_1.c)));
    global0 = !func_4(var_1.a.x, u_input.d, func_3(Struct_2(vec3<bool>(true, true, true), 216f, Struct_1(var_2.a, -2147483647i, 54445u, u_input.b), func_2(-732f, global1[_wgslsmith_index_u32(var_2.c, 31u)], vec2<u32>(var_2.d, var_1.c), Struct_1(vec4<f32>(761f, var_1.a.x, var_2.a.x, -1519f), -9301i, var_2.c, var_2.d)), countOneBits(-4107i)), false));
    let var_3 = var_2.b;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(u_input.d), firstLeadingBit(u_input.d)), -func_1()), 1i << (~max(0u, func_3(Struct_2(vec3<bool>(true, false, false), -1062f, Struct_1(vec4<f32>(346f, -636f, 1000f, 1121f), u_input.d, 71176u, 25431u), Struct_1(vec4<f32>(451f, -494f, 465f, 1000f), 43065i, u_input.b, u_input.c.x), u_input.d), true).a.x) % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(func_2(_wgslsmith_f_op_f32(select(886f, 1216f, true)), Struct_3(u_input.a, vec2<bool>(true, false)), countOneBits(u_input.a.zx), Struct_1(vec4<f32>(-932f, 1263f, 2811f, -452f), u_input.d, 1u, u_input.c.x)).a, func_2(_wgslsmith_f_op_f32(step(-597f, 477f)), global1[_wgslsmith_index_u32(~11766u, 31u)], vec2<u32>(14115u, 6550u), Struct_1(vec4<f32>(-774f, 1000f, 1352f, -973f), u_input.d, 1u, u_input.b)).a), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-938f - 1546f), _wgslsmith_div_f32(1423f, 1000f), _wgslsmith_div_f32(-321f, 782f), _wgslsmith_f_op_f32(abs(345f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(442f, -397f, 743f, -475f))))))), u_input.d, u_input.b, u_input.a.x);
    let var_2 = !vec4<bool>(true, !func_4(-478f, var_0.x, func_3(Struct_2(vec3<bool>(true, true, false), var_1.a.x, Struct_1(vec4<f32>(var_1.a.x, -1228f, var_1.a.x, -1086f), var_0.x, 0u, var_1.c), Struct_1(var_1.a, var_0.x, 4294967295u, 49302u), u_input.d), false)), 32519i > _wgslsmith_add_i32(_wgslsmith_mod_i32(0i, -1i), _wgslsmith_add_i32(u_input.d, var_0.x)), !all(func_3(Struct_2(vec3<bool>(true, true, true), -833f, var_1, Struct_1(var_1.a, var_0.x, u_input.b, 0u), 1i), false).b));
    let var_3 = Struct_2(var_2.zzy, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-224f - -699f)))), var_1, var_1, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(u_input.c, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_1.c, 88262u), min(u_input.c, vec3<u32>(15896u, 62086u, 32326u)) >> (~u_input.a.wyz % vec3<u32>(32u)))), var_0.x, ~(vec3<i32>(31693i, -u_input.d, -902i) & vec3<i32>(0i, ~(-17660i), countOneBits(-3432i))), min(u_input.d, func_1()));
}

