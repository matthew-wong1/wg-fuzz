struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec2<f32>, 8>;

var<private> global2: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> f32 {
    global2 = array<vec3<bool>, 11>();
    global1 = array<vec2<f32>, 8>();
    global1 = array<vec2<f32>, 8>();
    let var_0 = vec4<bool>(true, !(29832i < arg_1.a.x), any(global2[_wgslsmith_index_u32(~global0.x, 11u)]), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false)) && true);
    return arg_0;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>) -> vec3<u32> {
    var var_0 = !select(!(!vec3<bool>(false, false, arg_1.x)), vec3<bool>(false, arg_1.x, 0u == global0.x), any(vec2<bool>(true, arg_1.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-457f, 1910f), vec2<f32>(-312f, -348f)))), vec4<bool>(true, true, true, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(474f, -261f), _wgslsmith_div_f32(1342f, -210f)) * _wgslsmith_f_op_f32(-322f - -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -303f), -2147483647i);
    let var_2 = Struct_4(Struct_3(select(var_0.xz, !(!vec2<bool>(var_0.x, false)), arg_1.xx), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)), !select(var_1.b, var_1.b, arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2403f)), _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x))), ~(-40710i >> (global0.x % 32u)))), Struct_3(select(var_0.zy, select(var_1.b.yx, var_0.yz, arg_1.x), any(!vec4<bool>(var_1.b.x, true, true, true))), Struct_2(_wgslsmith_f_op_vec2_f32(max(global1[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(574f, -686f) * vec2<f32>(var_1.c, 620f)))), !var_1.b, _wgslsmith_f_op_f32(var_1.c + 1383f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-438f + var_1.a.x))), arg_0.x)));
    global1 = array<vec2<f32>, 8>();
    var_0 = vec3<bool>(all(var_1.b), var_2.a.b.a.x >= var_2.a.b.a.x, true);
    return vec3<u32>(abs(1u), 32614u ^ ~u_input.d.x, u_input.b);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = -50495i;
    global1 = array<vec2<f32>, 8>();
    var var_1 = Struct_1(u_input.c.yy);
    let var_2 = _wgslsmith_sub_i32(arg_0.b.b.e, u_input.a);
    global1 = array<vec2<f32>, 8>();
    return select(!vec4<bool>(all(!vec2<bool>(false, arg_3.a.a.x)), arg_3.b.b.b.x, arg_3.a.b.b.x, true), !(!vec4<bool>(true, !arg_1.b.x, all(vec4<bool>(false, false, arg_0.b.a.x, true)), any(vec3<bool>(true, arg_0.a.a.x, arg_0.a.b.b.x)))), true);
}

fn func_2() -> i32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~global0.x, global0.x), u_input.b), 8u)], select(vec4<bool>(false, true, true, true), !func_4(Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], vec4<bool>(true, true, true, true), -327f, -223f, 1i)), Struct_3(vec2<bool>(false, true), Struct_2(vec2<f32>(-671f, -176f), vec4<bool>(true, true, false, true), 1357f, 422f, u_input.c.x))), Struct_2(vec2<f32>(-999f, -1000f), vec4<bool>(true, false, true, true), -1334f, -204f, u_input.c.x), func_3(u_input.c.yxy, global2[_wgslsmith_index_u32(u_input.d.x, 11u)]), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(global1[_wgslsmith_index_u32(15675u, 8u)], vec4<bool>(true, false, true, true), -595f, -833f, u_input.c.x)), Struct_3(vec2<bool>(false, true), Struct_2(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], vec4<bool>(false, false, false, true), -351f, -1524f, 2147483647i)))), func_4(Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 8u)], vec4<bool>(true, false, true, true), 1041f, 407f, u_input.a)), Struct_3(vec2<bool>(false, true), Struct_2(vec2<f32>(-1790f, -649f), vec4<bool>(false, false, true, true), -413f, -1052f, 2147483647i))), Struct_2(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(global0.x, 8u)]), func_4(Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], vec4<bool>(false, false, true, false), 1000f, 1000f, 1i)), Struct_3(vec2<bool>(true, false), Struct_2(vec2<f32>(1656f, 185f), vec4<bool>(true, true, false, true), 1071f, -447f, 1i))), Struct_2(vec2<f32>(-1000f, -442f), vec4<bool>(true, true, false, true), -119f, -992f, u_input.a), vec3<u32>(1u, 4294967295u, 40951u), Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(vec2<f32>(-1000f, 961f), vec4<bool>(true, true, true, true), -764f, -1000f, 59100i)), Struct_3(vec2<bool>(true, true), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 8u)], vec4<bool>(true, true, true, false), 1000f, 111f, 56076i)))), _wgslsmith_f_op_f32(-257f - -1128f), _wgslsmith_f_op_f32(select(-1000f, 1342f, true)), _wgslsmith_mult_i32(u_input.c.x, -14917i)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, global0.x, 0u), vec4<u32>(global0.x, 21099u, u_input.d.x, global0.x)), ~global0.x, ~0u), Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(vec2<f32>(625f, 1672f), vec4<bool>(true, false, false, false), -448f, 384f, -2147483647i)), Struct_3(vec2<bool>(true, true), Struct_2(vec2<f32>(-302f, 347f), vec4<bool>(false, true, false, false), -542f, -465f, -2147483647i))))), 215f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-185f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-576f * -1000f), _wgslsmith_f_op_f32(645f - -760f))))), -_wgslsmith_mult_i32(1i, u_input.c.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d, var_0.c, var_0.c), vec3<f32>(var_0.d, -417f, var_0.c)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)))), select(var_0.b.x, true, func_4(Struct_4(Struct_3(vec2<bool>(var_0.b.x, var_0.b.x), Struct_2(global1[_wgslsmith_index_u32(global0.x, 8u)], var_0.b, 398f, var_0.a.x, 2147483647i)), Struct_3(vec2<bool>(var_0.b.x, var_0.b.x), Struct_2(var_0.a, var_0.b, var_0.d, 689f, var_0.e))), Struct_2(vec2<f32>(1151f, -1000f), vec4<bool>(true, true, var_0.b.x, true), -299f, -1835f, -1i), u_input.d, Struct_4(Struct_3(var_0.b.xy, Struct_2(var_0.a, var_0.b, var_0.c, 303f, var_0.e)), Struct_3(vec2<bool>(var_0.b.x, var_0.b.x), var_0))).x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, var_0.d, -937f), vec3<f32>(var_0.c, 916f, 1159f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, -869f, var_0.d)))))));
    return _wgslsmith_mult_i32(_wgslsmith_mod_i32(~var_0.e << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 40980u) << (u_input.d.xz % vec2<u32>(32u)), u_input.d.zz >> (vec2<u32>(69593u, u_input.d.x) % vec2<u32>(32u))) % 32u), var_0.e | ~u_input.c.x), _wgslsmith_div_i32(1i >> (max(u_input.b, _wgslsmith_div_u32(global0.x, 55650u)) % 32u), ~var_0.e));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    global2 = array<vec3<bool>, 11>();
    var var_0 = _wgslsmith_clamp_vec4_i32(~u_input.c, _wgslsmith_div_vec4_i32(select(vec4<i32>(arg_3.e, -42193i, ~(-44298i), -62334i), abs(u_input.c), func_4(Struct_4(arg_0, Struct_3(vec2<bool>(arg_0.a.x, arg_3.b.x), arg_3)), Struct_2(vec2<f32>(arg_3.c, arg_3.d), arg_3.b, arg_0.b.a.x, arg_3.a.x, arg_1.x), max(vec3<u32>(20707u, 5696u, 1u), vec3<u32>(u_input.d.x, u_input.d.x, 1u)), Struct_4(arg_0, arg_0)).x), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(1i, arg_2), 0i << (global0.x % 32u)), 1i, -13694i, arg_0.b.e)), vec4<i32>(arg_3.e, arg_3.e, _wgslsmith_clamp_i32(~(~arg_3.e), _wgslsmith_mult_i32(arg_1.x, -27030i) | -2147483647i, firstTrailingBit(arg_1.x) | ~arg_1.x), func_2() & (~arg_1.x | 15607i)));
    var_0 = ~(-vec4<i32>(arg_3.e >> (0u % 32u), arg_3.e, ~(-2147483647i), var_0.x) << (vec4<u32>(~0u, ~_wgslsmith_clamp_u32(u_input.b, 15817u, 63337u), ~_wgslsmith_mult_u32(0u, global0.x), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0.x, 74172u, 18667u), vec4<u32>(global0.x, 23576u, u_input.b, u_input.b)), firstTrailingBit(0u), arg_3.b.x)) % vec4<u32>(32u)));
    let var_1 = global0.x;
    global0 = max(~vec2<u32>(min(firstTrailingBit(global0.x), abs(u_input.d.x)), u_input.d.x), vec2<u32>(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(1u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(29293u, global0.x), vec2<u32>(1u, global0.x))), ~abs(vec2<u32>(global0.x, 0u)))));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_i32(-2147483647i, 1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(308f * 706f), _wgslsmith_f_op_f32(min(881f, -1559f)), _wgslsmith_f_op_f32(func_1(-409f, Struct_1(u_input.c.xz), global0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(621f - 105f), _wgslsmith_f_op_f32(560f * _wgslsmith_f_op_f32(abs(-421f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(454f))))), u_input.c, func_5(Struct_3(vec2<bool>(true, any(vec3<bool>(false, true, false))), Struct_2(vec2<f32>(-1578f, -1388f), vec4<bool>(false, false, false, false), -921f, -2435f, func_2())), vec3<i32>(-abs(u_input.a), ~_wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(-2147483647i, -1i)), ~35576i), -func_2(), Struct_2(vec2<f32>(_wgslsmith_div_f32(-2309f, 1000f), -525f), vec4<bool>(true, false, true, func_4(Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(global1[_wgslsmith_index_u32(32610u, 8u)], vec4<bool>(true, true, false, true), 570f, -1249f, u_input.c.x)), Struct_3(vec2<bool>(true, true), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 8u)], vec4<bool>(false, false, true, true), -1551f, -698f, -38279i))), Struct_2(global1[_wgslsmith_index_u32(14098u, 8u)], vec4<bool>(false, true, true, false), 1271f, 1110f, -1i), vec3<u32>(u_input.b, global0.x, global0.x), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(vec2<f32>(-1000f, -1268f), vec4<bool>(true, false, false, false), 462f, 191f, u_input.c.x)), Struct_3(vec2<bool>(false, true), Struct_2(global1[_wgslsmith_index_u32(76723u, 8u)], vec4<bool>(false, true, true, true), 495f, 224f, u_input.a)))).x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(2639f, 518f)), _wgslsmith_f_op_f32(1293f + 936f))), _wgslsmith_f_op_f32(step(1f, 1f)), _wgslsmith_dot_vec4_i32(-u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.a)))), func_5(Struct_3(vec2<bool>(true, true), Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-152f, -1904f), vec2<f32>(-2324f, -1181f), false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), 1f, _wgslsmith_f_op_f32(-402f + 201f), _wgslsmith_mod_i32(2147483647i, -1i))), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.c.xww, ~u_input.c.ywz), firstLeadingBit(-31117i), select(u_input.c.x, firstLeadingBit(0i), true)), 1i, Struct_2(global1[_wgslsmith_index_u32(1u, 8u)], vec4<bool>(true, true, true, true), 124f, _wgslsmith_f_op_f32(f32(-1f) * -177f), u_input.c.x)));
}

