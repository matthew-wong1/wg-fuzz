struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(103448u, 29138u), vec2<u32>(30365u, 82057u), vec2<u32>(80079u, 65483u), vec2<u32>(24867u, 6173u), vec2<u32>(0u, 58466u), vec2<u32>(28410u, 4294967295u), vec2<u32>(1u, 53791u), vec2<u32>(1u, 63683u), vec2<u32>(24722u, 10355u), vec2<u32>(37674u, 4294967295u), vec2<u32>(31870u, 4294967295u), vec2<u32>(3635u, 0u), vec2<u32>(13007u, 0u), vec2<u32>(28276u, 23234u));

var<private> global1: Struct_1 = Struct_1(false, vec3<u32>(0u, 1u, 84343u), 535f, vec4<u32>(106996u, 32293u, 11255u, 37621u), vec3<u32>(77080u, 25603u, 65312u));

var<private> global2: array<vec3<i32>, 6>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = Struct_1(all(vec2<bool>(all(vec2<bool>(true, true)), true)) & all(vec3<bool>(false, global1.c < global1.c, all(vec4<bool>(true, true, false, false)))), vec3<u32>(34357u, arg_2, _wgslsmith_clamp_u32(0u, 38481u, u_input.d.x)), global1.c, vec4<u32>(32887u, ~firstLeadingBit(arg_0), 0u, ~1u) & _wgslsmith_add_vec4_u32(global1.d, ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, arg_2, arg_2), global1.d)), vec3<u32>(abs(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, global1.b.x)))), min(arg_0, _wgslsmith_sub_u32(arg_2, 0u) & _wgslsmith_mod_u32(0u, arg_0)), _wgslsmith_add_u32(_wgslsmith_sub_u32(abs(arg_0), ~0u), 4294967295u)));
    let var_1 = Struct_2(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0 >> (arg_2 % 32u), arg_2, _wgslsmith_sub_u32(arg_0, 4294967295u)), var_0.d.ywy), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-126f + -1857f) + _wgslsmith_div_f32(865f, var_0.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, var_0.c, global1.a))), _wgslsmith_f_op_f32(sign(var_0.c)), firstLeadingBit(u_input.b.x) < u_input.b.x)), -433f));
    global1 = Struct_1(var_0.a | true, var_1.a, _wgslsmith_f_op_f32(-var_1.b.x), vec4<u32>(46433u, _wgslsmith_sub_u32(4294967295u, max(arg_2, _wgslsmith_add_u32(var_1.a.x, 21321u))), ~(~1u), 29170u), ~vec3<u32>(~4294967295u, 58175u, 5917u));
    global0 = array<vec2<u32>, 16>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -904f);
    return _wgslsmith_f_op_f32(1071f - var_1.b.x);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(firstLeadingBit(46496u), global1.b.x)), u_input.b.x <= (countOneBits(u_input.b.x) ^ -u_input.b.x), arg_0.x)));
    var var_1 = ~(firstTrailingBit(firstTrailingBit(2147483647i)) ^ ~_wgslsmith_mult_i32(abs(u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1218i, -11339i, -40047i), vec4<i32>(26468i, 1761i, u_input.b.x, -1i))));
    var var_2 = Struct_2(vec3<u32>(global1.b.x, u_input.a.x, 4294967295u), vec3<f32>(-453f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1143f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(23671u, global1.a, 4294967295u)), _wgslsmith_f_op_f32(-401f + global1.c))), -320f)));
    global1 = Struct_1(false, _wgslsmith_mult_vec3_u32(arg_0.xyx, vec3<u32>(0u << (global1.b.x % 32u), ~63745u, 1u)) & _wgslsmith_add_vec3_u32(u_input.a, ~vec3<u32>(global1.e.x, 0u, global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(global1.c - 846f))), _wgslsmith_add_vec4_u32(~countOneBits(global1.d), ~global1.d), _wgslsmith_div_vec3_u32(var_2.a, ~(~(~u_input.d))));
    var var_3 = abs(u_input.a);
    return global1.a;
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = vec2<bool>(true, true);
    var_0 = vec2<bool>(!all(vec3<bool>(arg_0.b.x != -1023f, func_2(vec4<u32>(0u, arg_0.a.x, global1.d.x, arg_0.a.x)), global1.a)), _wgslsmith_mult_i32(u_input.b.x, min(~u_input.b.x, u_input.b.x)) <= ~2147483647i);
    var var_1 = Struct_1(select(2147483647i, u_input.b.x, any(vec4<bool>(global1.a, var_0.x, global1.a, var_0.x))) <= (u_input.b.x | 1i), ~arg_0.a, 687f, global1.d, vec3<u32>(max(17222u, u_input.c & arg_0.a.x) >> (41733u % 32u), global1.e.x, arg_0.a.x));
    var var_2 = _wgslsmith_div_vec3_i32(u_input.b.ywz, vec3<i32>(i32(-1i) * -21901i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, 2147483647i, u_input.b.x) ^ vec4<i32>(0i, u_input.b.x, -23499i, u_input.b.x), u_input.b))) ^ vec3<i32>(max(u_input.b.x, 0i), u_input.b.x, _wgslsmith_clamp_i32(~21769i << (~4294967295u % 32u), abs(u_input.b.x), _wgslsmith_mult_i32(u_input.b.x ^ u_input.b.x, -84038i)));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.x, -1240f, 570f, -633f), vec4<f32>(arg_0.b.x, 492f, var_1.c, global1.c))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.c, 457f, arg_0.b.x, 424f), vec4<f32>(arg_0.b.x, arg_0.b.x, -697f, -260f))))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.c, global1.c)) * _wgslsmith_f_op_f32(func_3(4294967295u, var_0.x, global1.b.x))), global1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-643f * 448f), arg_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, global1.c, var_1.c, var_1.c) + vec4<f32>(global1.c, global1.c, global1.c, arg_0.b.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, var_1.c, var_1.c, 547f) + vec4<f32>(-533f, var_1.c, 852f, arg_0.b.x)))), !vec4<bool>(global1.a, all(vec2<bool>(true, true)), false, func_2(var_1.d)))));
    return _wgslsmith_add_u32(2493u, ~(~33789u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(125053u, ~func_1(Struct_2(global1.d.zzz, vec3<f32>(global1.c, 3360f, 1517f))), u_input.d.x), ~reverseBits(vec3<u32>(global1.e.x, global1.d.x, u_input.d.x))), _wgslsmith_sub_u32(global1.d.x, _wgslsmith_mult_u32(u_input.d.x, ~8160u)) << (~(~_wgslsmith_mult_u32(global1.d.x, 1u)) % 32u), global1.e.x, 6269u);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -725f) - 1012f), 496f, _wgslsmith_f_op_f32(f32(-1f) * -924f)))));
    let var_2 = Struct_2(_wgslsmith_clamp_vec3_u32(firstTrailingBit(~var_0.yww >> (select(u_input.a, vec3<u32>(global1.b.x, global1.b.x, var_0.x), false) % vec3<u32>(32u))), max(global1.b, u_input.d), global1.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-731f, global1.c, global1.c) + vec3<f32>(var_1.x, -281f, var_1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, -1449f, 1134f))))));
    var var_3 = var_2.b;
    var_3 = _wgslsmith_f_op_vec3_f32(var_2.b + vec3<f32>(global1.c, -1406f, _wgslsmith_f_op_f32(max(262f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(var_2.a.x, global1.a, 6780u))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.x, var_2.b.x, _wgslsmith_f_op_f32(-574f - -1000f), -567f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1059f, global1.c, 130f))), select(!vec4<bool>(false, false, false, global1.a), !select(vec4<bool>(false, true, true, false), vec4<bool>(global1.a, global1.a, false, false), vec4<bool>(global1.a, global1.a, global1.a, global1.a)), true | (u_input.b.x >= 38531i)))), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(i32(-1i) * -1i, 1i >> (_wgslsmith_div_u32(var_0.x, 4294967295u) % 32u), -2147483647i, -2147483647i)), 0i);
}

