struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-109f, 647f, 573f, -284f), vec4<f32>(-1501f, -896f, -959f, 1059f), vec4<f32>(632f, 1129f, -1091f, -635f), vec4<f32>(742f, 377f, -376f, 1512f), vec4<f32>(-446f, -1518f, 391f, -342f), vec4<f32>(671f, -1709f, 539f, 1000f), vec4<f32>(-1255f, -504f, -405f, 375f));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: array<bool, 10>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: array<i32, 7> = array<i32, 7>(i32(-2147483648), 2147483647i, -3832i, 2147483647i, 2147483647i, 2147483647i, 1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 23186u;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1121f), -1000f, arg_2.d.x);
    let var_2 = true;
    var var_3 = global3[_wgslsmith_index_u32(31107u, 17u)];
    global1 = !arg_2.c;
    return arg_2;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    return arg_0.b;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(arg_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f), 299f));
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(floor(var_0));
    var var_3 = func_2(firstLeadingBit(u_input.b.zx), abs(_wgslsmith_add_vec4_u32(abs(vec4<u32>(49784u, 1u, 0u, 102766u)), ~vec4<u32>(1u, u_input.b.x, 68262u, 1u))), func_2(~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yy)), vec4<u32>(7810u, u_input.b.x, u_input.b.x, reverseBits(u_input.b.x)), Struct_1(-arg_1.a, ~(~vec4<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 7u)], 64483i, -13067i, -8664i)), vec4<bool>(all(arg_1.c.wy), arg_1.d.x >= var_0, global2[_wgslsmith_index_u32(max(u_input.b.x, 4294967295u), 10u)], global2[_wgslsmith_index_u32(~u_input.b.x, 10u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-896f, 818f, 1348f) - vec3<f32>(-1000f, -1763f, -440f)) - arg_1.d)))).c.wyy;
    global3 = array<Struct_1, 17>();
    return Struct_1(vec3<i32>(-(arg_0.x & 21766i), -60056i, arg_1.b.x), vec4<i32>(-2147483647i, var_1, 30404i, _wgslsmith_mult_i32(~1i, u_input.e.x)), !vec4<bool>((u_input.b.x << (u_input.b.x % 32u)) != 1226u, all(select(arg_1.c, vec4<bool>(true, false, arg_1.c.x, false), arg_1.c.x)), global2[_wgslsmith_index_u32(~(~u_input.b.x), 10u)], (arg_1.c.x | true) | true), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 - arg_1.d.x))))), -510f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x))));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: u32) -> Struct_1 {
    var var_0 = func_4(u_input.a, Struct_1(-(~_wgslsmith_div_vec3_i32(vec3<i32>(-20378i, u_input.c.x, -2147483647i), u_input.e)), func_3(Struct_1(abs(u_input.c), vec4<i32>(u_input.c.x, 1i, 0i, arg_1), select(vec4<bool>(global2[_wgslsmith_index_u32(14386u, 10u)], global1.x, false, true), vec4<bool>(true, true, true, false), global2[_wgslsmith_index_u32(22861u, 10u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-883f, -431f, -290f) + vec3<f32>(426f, 519f, -599f))), global3[_wgslsmith_index_u32(arg_2 | ~arg_2, 17u)], func_2(vec2<u32>(0u, 0u), ~vec4<u32>(66441u, 55239u, arg_0.x, 0u), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 17u)])), vec4<bool>(true, !all(vec2<bool>(global2[_wgslsmith_index_u32(arg_2, 10u)], global1.x)), 54685u > firstLeadingBit(arg_0.x), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1882f, -733f, -301f))))));
    var var_1 = Struct_1(~func_4(var_0.b.yz, func_2(vec2<u32>(arg_0.x, arg_2), vec4<u32>(1611u, 42715u, 1u, u_input.b.x), func_4(vec2<i32>(7126i, arg_1), Struct_1(u_input.e, var_0.b, var_0.c, vec3<f32>(843f, var_0.d.x, -1389f))))).a, firstLeadingBit(vec4<i32>(global4[_wgslsmith_index_u32(19771u, 7u)], _wgslsmith_dot_vec3_i32(u_input.c & var_0.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(-12874i, global4[_wgslsmith_index_u32(82564u, 7u)], -2147483647i), u_input.c, u_input.e)), ~global4[_wgslsmith_index_u32(8075u, 7u)], -2147483647i)), var_0.c, vec3<f32>(_wgslsmith_f_op_f32(func_4(u_input.c.xz, global3[_wgslsmith_index_u32(~arg_2, 17u)]).d.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.d.x))))), 378f, 1000f));
    var var_2 = global3[_wgslsmith_index_u32(~firstLeadingBit(arg_0.x), 17u)];
    var_1 = Struct_1(vec3<i32>(~(-var_2.b.x >> (4294967295u % 32u)), -1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(~0u, 7u)], abs(global4[_wgslsmith_index_u32(arg_0.x, 7u)])), -1i, countOneBits(~u_input.c.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, 31765i, 29672i, 0i), u_input.d), var_1.c, vec3<f32>(-1000f, 164f, 1129f));
    let var_3 = Struct_1(vec3<i32>(firstLeadingBit(var_2.a.x) >> (59037u % 32u), -4320i, -(~var_1.b.x)), vec4<i32>(_wgslsmith_div_i32(35780i, 1i), _wgslsmith_add_i32(abs(~(-2147483647i)), func_3(global3[_wgslsmith_index_u32(91021u, 17u)], func_2(vec2<u32>(8386u, 45108u), vec4<u32>(arg_0.x, 59089u, 872u, 4294967295u), global3[_wgslsmith_index_u32(u_input.b.x, 17u)]), global3[_wgslsmith_index_u32(0u, 17u)]).x), -2147483647i, 35800i), select(func_4(vec2<i32>(global4[_wgslsmith_index_u32(arg_2, 7u)] ^ u_input.e.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(43840u, u_input.b.x, u_input.b.x), vec3<u32>(14982u, arg_2, arg_2)), 7u)]), Struct_1(var_1.a, ~var_2.b, !vec4<bool>(true, var_0.c.x, true, false), _wgslsmith_f_op_vec3_f32(var_1.d * vec3<f32>(-843f, var_1.d.x, var_2.d.x)))).c, select(!vec4<bool>(true, false, var_0.c.x, var_1.c.x), var_2.c, any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.d.x))) >= var_0.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.d)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(any(global1.xyy), global1.x && all(global1.zz), !any(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(u_input.b.x, 10u)])), any(!select(vec2<bool>(true, true), !vec2<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.b.x, 10u)]), vec2<bool>(false, global1.x))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -555f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)));
    global4 = array<i32, 7>();
    var var_1 = func_1(u_input.b.yx, max(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(u_input.b.x, 7u)], i32(-1i) * -1i), ~(-u_input.a.x)) << ((u_input.b.x ^ _wgslsmith_clamp_u32(~4294967295u, 27717u, max(0u, 1u))) % 32u), min(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 0u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), 49883u) | abs(u_input.b.x), 32416u));
    let var_2 = Struct_1(u_input.e, ~_wgslsmith_mod_vec4_i32(u_input.d, _wgslsmith_mod_vec4_i32(func_2(vec2<u32>(u_input.b.x, 697u), vec4<u32>(23743u, 3189u, 37118u, u_input.b.x), global3[_wgslsmith_index_u32(u_input.b.x, 17u)]).b, ~u_input.d)), vec4<bool>(!(any(var_1.c) == true), true == (-u_input.d.x < ~(-1i)), true, !(var_1.d.x < var_0.x)), var_1.d);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1067f, var_1.d.x, var_1.d.x) - global0[_wgslsmith_index_u32(u_input.b.x, 7u)]), global0[_wgslsmith_index_u32(u_input.b.x, 7u)])))));
    let var_4 = var_1.a;
    global3 = array<Struct_1, 17>();
    global1 = func_2(select(~max(~u_input.b.xz, u_input.b.xx), reverseBits(vec2<u32>(4294967295u, _wgslsmith_add_u32(4812u, 6581u))), !vec2<bool>(false, var_2.c.x)), _wgslsmith_div_vec4_u32(countOneBits(~vec4<u32>(4294967295u, u_input.b.x, 418u, u_input.b.x)) >> (vec4<u32>(~52348u, ~u_input.b.x, _wgslsmith_div_u32(0u, 1039u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(~1u, u_input.b.x), 1u << (~u_input.b.x % 32u), reverseBits(~u_input.b.x), _wgslsmith_div_u32(~1u, u_input.b.x))), func_2(u_input.b.xy, max(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(2044u, 21702u), u_input.b.xz), 67509u | u_input.b.x, ~0u), ~max(vec4<u32>(4294967295u, 21098u, u_input.b.x, 10390u), vec4<u32>(4294967295u, u_input.b.x, 77291u, u_input.b.x))), func_1(vec2<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 49441u, 1u))), ~_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(4294967295u, 7u)], -54530i), u_input.b.x & (0u >> (u_input.b.x % 32u))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1192f, _wgslsmith_f_op_f32(var_0.x * var_1.d.x), -912f, _wgslsmith_f_op_f32(927f - var_0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 7u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.d.x, var_0.x)) + var_0.x), var_3.x)), u_input.b.x, u_input.b.x);
}

