struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(false, true, true, true, true, false, true, false, false, true, true);

var<private> global1: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(1u, 0u), vec2<u32>(24821u, 4294967295u), vec2<u32>(0u, 17690u), vec2<u32>(16871u, 4294967295u), vec2<u32>(15237u, 23844u), vec2<u32>(6456u, 1u), vec2<u32>(0u, 17575u), vec2<u32>(1u, 62379u), vec2<u32>(87433u, 65513u), vec2<u32>(8341u, 1u), vec2<u32>(41912u, 0u));

var<private> global2: array<vec3<i32>, 24>;

var<private> global3: array<Struct_4, 5>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> bool {
    global2 = array<vec3<i32>, 24>();
    let var_0 = ~_wgslsmith_mod_vec3_u32(~(~(vec3<u32>(17620u, 52005u, 1u) | vec3<u32>(0u, u_input.c, u_input.c))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(12890u, u_input.b, u_input.c) & vec3<u32>(u_input.c, 15401u, u_input.b), ~vec3<u32>(1u, 4294967295u, u_input.c), ~vec3<u32>(8011u, u_input.c, 0u)));
    global1 = array<vec2<u32>, 11>();
    var var_1 = global3[_wgslsmith_index_u32(~var_0.x, 5u)];
    var var_2 = Struct_4(!(var_0.x == min(21281u, var_0.x)) & !(!(!arg_0.x)), 1u, false || all(!(!arg_0)), Struct_1(vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(-192f)), var_1.d.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-204f, var_1.d.a.x)))), _wgslsmith_f_op_f32(step(544f, _wgslsmith_f_op_f32(var_1.d.a.x - var_1.d.c))), select(false, any(arg_0), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.a.x * var_1.d.c))), vec3<u32>(~71464u, var_0.x, 4294967295u), max(vec2<i32>(1i, _wgslsmith_sub_i32(-30184i, -1i)), -_wgslsmith_sub_vec2_i32(var_1.d.e, vec2<i32>(1i, -49455i)))));
    return arg_0.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_4) -> u32 {
    let var_0 = arg_1.d.a.zx;
    var var_1 = vec3<bool>(!arg_1.a, !(0i < firstTrailingBit(arg_3.d.e.x << (arg_1.d.d.x % 32u))), !func_3(!vec4<bool>(arg_3.a, true, arg_1.a, arg_1.a)));
    var var_2 = !(!vec3<bool>(!global0[_wgslsmith_index_u32(arg_1.b, 11u)], _wgslsmith_f_op_f32(arg_1.d.c + 457f) != _wgslsmith_f_op_f32(-arg_2.x), true));
    var_1 = vec3<bool>(true, true, !arg_3.c);
    var var_3 = Struct_3(~arg_3.d.d << (vec3<u32>(0u, 0u, _wgslsmith_div_u32(arg_3.d.d.x, ~u_input.b)) % vec3<u32>(32u)), select(!var_1.zy, !(!vec2<bool>(var_1.x, arg_3.a)), select(select(!vec2<bool>(true, arg_3.a), !var_1.xx, var_2.zx), vec2<bool>(var_2.x, select(arg_3.a, global0[_wgslsmith_index_u32(4294967295u, 11u)], false)), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.d.d.yz, global1[_wgslsmith_index_u32(u_input.c, 11u)]), 11u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_2.x, -1231f), vec3<f32>(arg_3.d.a.x, arg_2.x, -155f), vec3<bool>(true, arg_1.c, true))))) - arg_3.d.a), Struct_1(arg_3.d.a, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x * var_0.x)))), -1246f, vec3<u32>(arg_3.d.d.x, 4294967295u, ~(~0u)), max(vec2<i32>(8565i, _wgslsmith_div_i32(2147483647i, 32336i)), arg_3.d.e)), ~(~_wgslsmith_clamp_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.b, 0u), 11u)], min(global1[_wgslsmith_index_u32(0u, 11u)], arg_3.d.d.zy), vec2<u32>(u_input.b, arg_3.d.d.x))));
    return ~abs(4294967295u);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = ~(~countOneBits(vec4<i32>(-2147483647i, arg_0.x ^ u_input.a.x, _wgslsmith_clamp_i32(arg_2.x, -36803i, -24310i), select(0i, 2147483647i, global0[_wgslsmith_index_u32(u_input.b, 11u)]))));
    return _wgslsmith_sub_u32(~1u, ~u_input.c);
}

fn func_1(arg_0: bool) -> vec2<f32> {
    let var_0 = Struct_3(vec3<u32>(u_input.b, func_4(u_input.a, vec4<u32>(u_input.b, ~13064u, reverseBits(4294967295u), func_2(Struct_2(5311i, -1i), global3[_wgslsmith_index_u32(71148u, 5u)], vec3<f32>(203f, 697f, 996f), global3[_wgslsmith_index_u32(51090u, 5u)])), max(_wgslsmith_sub_vec3_i32(global2[_wgslsmith_index_u32(u_input.c, 24u)], global2[_wgslsmith_index_u32(u_input.c, 24u)]), -global2[_wgslsmith_index_u32(1u, 24u)])), u_input.b), vec2<bool>(any(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 11u)], true, false), vec3<bool>(true, arg_0, true), false)), arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(146f, _wgslsmith_f_op_f32(floor(-2616f)), -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(187f, 324f, -2533f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1057f, 1389f, -511f), vec3<f32>(-632f, 766f, 162f)))))), Struct_1(vec3<f32>(1503f, 947f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1999f, -1000f)))), _wgslsmith_f_op_f32(ceil(1578f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(2276f, -1000f)))), -1000f)), vec3<u32>(u_input.b, 4294967295u, 4294967295u), reverseBits(firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x)) << ((global1[_wgslsmith_index_u32(u_input.c, 11u)] | vec2<u32>(u_input.b, 51954u)) % vec2<u32>(32u)))), ~vec2<u32>(u_input.c, u_input.c) | ~_wgslsmith_mult_vec2_u32(max(global1[_wgslsmith_index_u32(4294967295u, 11u)], vec2<u32>(4294967295u, 4294967295u)), global1[_wgslsmith_index_u32(countOneBits(73514u), 11u)]));
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(7941u, ~(1242u | u_input.b)), _wgslsmith_add_u32(var_0.a.x, _wgslsmith_add_u32(var_0.a.x, abs(4294967295u))), func_4(~(~u_input.a), vec4<u32>(_wgslsmith_sub_u32(var_0.a.x, var_0.e.x), 0u, u_input.b, var_0.a.x), vec3<i32>(0i, -var_0.d.e.x, u_input.a.x)), func_4(_wgslsmith_mult_vec2_i32(select(var_0.d.e, vec2<i32>(var_0.d.e.x, u_input.a.x), var_0.b), var_0.d.e & vec2<i32>(var_0.d.e.x, 0i)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.d.d.x, 6779u, 8862u), vec4<u32>(1u, 4294967295u, 54706u, u_input.b)), -global2[_wgslsmith_index_u32(var_0.d.d.x, 24u)] >> (var_0.a % vec3<u32>(32u)))), _wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(48315u, u_input.b, u_input.c, 40758u)), vec4<u32>(0u, 0u, ~var_0.d.d.x, abs(var_0.e.x)), abs(~vec4<u32>(u_input.c, var_0.e.x, 4294967295u, 44026u))) ^ ~vec4<u32>(var_0.e.x ^ var_0.e.x, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, u_input.b, 4214u), vec3<u32>(59026u, u_input.c, u_input.c)), 4294967295u));
    global3 = array<Struct_4, 5>();
    global1 = array<vec2<u32>, 11>();
    let var_2 = Struct_4(false, 9120u, arg_0, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a.x * 2254f) * var_0.c.x), _wgslsmith_f_op_f32(max(-1684f, var_0.c.x)), var_0.d.b), -1000f, 535f, var_1.zzw, _wgslsmith_div_vec2_i32(vec2<i32>(-41917i, 0i) | u_input.a, _wgslsmith_div_vec2_i32(vec2<i32>(927i, -1i), firstLeadingBit(vec2<i32>(-2147483647i, -35743i))))));
    return vec2<f32>(_wgslsmith_f_op_f32(281f + 169f), var_2.d.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-855f, 847f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-449f, 884f) - vec2<f32>(-1038f, -1074f))) * _wgslsmith_f_op_vec2_f32(func_1(true)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1583f, -627f)), -620f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-453f, -1067f) + vec2<f32>(-1350f, -1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * -952f), _wgslsmith_f_op_f32(sign(-150f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1303f, 2121f)))))));
    let var_1 = ~(~u_input.b);
    global1 = array<vec2<u32>, 11>();
    global1 = array<vec2<u32>, 11>();
    var var_2 = -2354f;
    let x = u_input.a;
    s_output = StorageBuffer(-1269f, _wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(~min(var_1 ^ var_1, u_input.c), 11u)])).x, vec3<i32>(_wgslsmith_add_i32(0i, 1i), u_input.a.x, ~15116i));
}

