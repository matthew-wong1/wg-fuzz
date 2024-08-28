struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(4294967295u, 4755u, 0u), vec3<u32>(38120u, 6159u, 70633u), vec3<u32>(1u, 6893u, 33698u), vec3<u32>(1248u, 0u, 0u), vec3<u32>(55835u, 64550u, 0u), vec3<u32>(7139u, 18077u, 43200u), vec3<u32>(1u, 56792u, 21752u), vec3<u32>(3493u, 4294967295u, 0u), vec3<u32>(976u, 28485u, 55112u), vec3<u32>(4294967295u, 15308u, 0u), vec3<u32>(20329u, 1u, 4294967295u), vec3<u32>(4294967295u, 72630u, 1u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 41147u, 0u), vec3<u32>(46961u, 35531u, 4294967295u), vec3<u32>(63213u, 48779u, 6083u), vec3<u32>(1u, 73396u, 66036u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 0u, 991u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(5782u, 4834u, 25832u), vec3<u32>(11730u, 1u, 1u), vec3<u32>(62652u, 24582u, 37083u), vec3<u32>(74955u, 55137u, 16138u), vec3<u32>(75726u, 4294967295u, 40441u), vec3<u32>(12855u, 4294967295u, 8143u), vec3<u32>(8056u, 1u, 10577u), vec3<u32>(1u, 48604u, 0u), vec3<u32>(6594u, 27646u, 0u), vec3<u32>(1u, 0u, 38837u), vec3<u32>(4294967295u, 0u, 24572u), vec3<u32>(0u, 1u, 1u));

var<private> global1: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: bool, arg_3: u32) -> vec4<bool> {
    var var_0 = 4294967295u;
    return select(!select(select(vec4<bool>(false, false, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(arg_2, arg_2, true, arg_2)), !vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(true, false, arg_2, false)), vec4<bool>(any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, arg_2, false), arg_2), vec4<bool>(arg_2, arg_2, false, true), any(vec3<bool>(false, true, true)))), (all(vec4<bool>(arg_2, arg_2, true, arg_2)) & any(vec3<bool>(false, false, arg_2))) == arg_2, !arg_2, arg_2), !arg_2);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec4<f32>) -> f32 {
    global0 = array<vec3<u32>, 32>();
    let var_0 = true || (arg_1.x | true);
    let var_1 = Struct_2(_wgslsmith_mult_i32(15334i, arg_2.a.a), ~_wgslsmith_mult_vec3_u32(~arg_2.a.b, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.b.x, 4294967295u), 32u)]));
    global0 = array<vec3<u32>, 32>();
    let var_2 = Struct_1(9529i, _wgslsmith_sub_u32(108376u << (arg_0.b.x % 32u), ~max(4294967295u, var_1.b.x) << (var_1.b.x % 32u)), ~firstTrailingBit(~arg_2.a.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(max(arg_3.x, 2161f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(185f - -433f)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<i32>) -> u32 {
    let var_0 = true;
    var var_1 = Struct_2(-1i, global0[_wgslsmith_index_u32(~firstTrailingBit(arg_2.a.b.x) << (~arg_2.a.b.x % 32u), 32u)]);
    var var_2 = vec2<bool>(var_0, any(vec4<bool>(any(vec4<bool>(var_0, true, var_0, false)), !(!var_0), any(vec3<bool>(var_0, false, var_0)) == true, !var_0)));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(func_4(arg_2.a, func_3(vec2<f32>(-747f, 1000f), vec4<u32>(arg_1.b, 1u, arg_1.c, 0u), false, var_1.b.x), Struct_4(Struct_2(-11203i, vec3<u32>(var_1.b.x, 49323u, arg_2.a.b.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1482f, 171f, 1000f, -413f), vec4<f32>(1292f, 552f, 804f, -129f), vec4<bool>(var_0, var_0, true, true)))))))));
    let var_4 = Struct_1(-57282i, _wgslsmith_clamp_u32(var_1.b.x, arg_1.b, 28927u), _wgslsmith_dot_vec2_u32(arg_2.a.b.yx | reverseBits(vec2<u32>(arg_1.c, 1u)), countOneBits(firstLeadingBit(vec2<u32>(1u, var_1.b.x) | vec2<u32>(38845u, arg_2.a.b.x)))));
    return 1u;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(12479u, arg_2.x) << (~func_2(vec2<i32>(1i, -2147483647i), Struct_1(649i, 4294967295u, arg_1.a.b.x), Struct_4(Struct_2(-2147483647i, vec3<u32>(1u, arg_2.x, 1u))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -25427i), vec2<i32>(1i, -1i))) % 32u), ~arg_2.x << (~1u % 32u)), 32u)];
    let var_1 = Struct_5(_wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, arg_2.x), vec4<u32>(arg_1.a.b.x, var_0.x, arg_2.x, 1u)), ~(vec4<u32>(1u, 0u, var_0.x, 21906u) << (vec4<u32>(1u, 1u, var_0.x, var_0.x) % vec4<u32>(32u))), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), ~vec4<u32>(~1u, reverseBits(var_0.x), arg_1.a.b.x, _wgslsmith_div_u32(5131u, arg_2.x))), _wgslsmith_f_op_f32(277f + -1239f));
    global1 = firstLeadingBit(max(arg_1.a.b.x, 1u));
    return vec2<bool>(arg_0.x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(any(select(func_1(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_4(Struct_2(0i, vec3<u32>(0u, 1u, 3736u))), global0[_wgslsmith_index_u32(1u, 32u)], vec4<i32>(u_input.b, 2135i, u_input.b, -1i)), vec2<bool>(true, true), vec2<bool>(func_3(vec2<f32>(-1033f, -1000f), vec4<u32>(73088u, 7056u, 40282u, 4294967295u), true, 37153u).x, true))), vec4<i32>(u_input.a.x << (~_wgslsmith_add_u32(15332u, 64854u) % 32u), (select(u_input.b, -2147483647i, true) << ((10903u >> (1u % 32u)) % 32u)) ^ -1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(37290i, u_input.a.x)), 1i), _wgslsmith_clamp_i32(~u_input.a.x, u_input.a.x & 9257i, 1i) << (_wgslsmith_mult_u32(1u, ~4294967295u) % 32u)), vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(751f, -938f))), max(firstLeadingBit(vec4<u32>(79937u, 0u, 48233u, 13602u)), abs(vec4<u32>(1u, 0u, 1u, 0u))), true, _wgslsmith_sub_u32(~1u, ~4294967295u)).x, abs(u_input.b) < _wgslsmith_sub_i32(_wgslsmith_div_i32(88566i, -2147483647i), u_input.b), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), all(vec4<bool>(true, select(false, false, true), all(vec3<bool>(false, false, true)), select(false, true, false)))), !(!func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(355f, 452f)), vec4<u32>(4294967295u, 63879u, 9256u, 4294967295u), true, 1u).zwz), Struct_2(u_input.b << (1u % 32u), ~(global0[_wgslsmith_index_u32(~4294967295u, 32u)] >> (countOneBits(vec3<u32>(1u, 66954u, 0u)) % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_sub_u32(~func_2(~(vec2<i32>(22194i, -29399i) | vec2<i32>(46003i, u_input.a.x)), Struct_1(0i, 4294967295u, 75096u), Struct_4(Struct_2(32703i, vec3<u32>(35923u, 24586u, 97178u))), vec2<i32>(-27757i, -2147483647i) << (vec2<u32>(var_0.e.b.x, 72035u) % vec2<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.e.b.x ^ 4294967295u, max(var_0.e.b.x, 21789u), ~104898u), _wgslsmith_mult_u32(~0u, max(var_0.e.b.x, 0u))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.e.b.x, var_0.e.b.x, var_0.e.b.x, var_0.e.b.x)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 11786u, 4294967295u, var_0.e.b.x), vec4<u32>(0u, var_0.e.b.x, var_0.e.b.x, 28968u))))));
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-792f)), _wgslsmith_f_op_f32(sign(-441f)), -116f) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 579f, -691f)))))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(trunc(var_3));
    var var_5 = true;
    let var_6 = -2039f;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_2.e.a & _wgslsmith_dot_vec4_i32(var_2.b, vec4<i32>(var_2.e.a, 0i, 35843i, u_input.a.x))), var_2.e.b.xz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4.xz * vec2<f32>(3327f, var_3.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.xy))), u_input.a.x, var_6);
}

