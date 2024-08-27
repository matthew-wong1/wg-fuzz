struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, true, false, true, true, false, true, false, true, false, true, true, false, true, false, true, false, true, false, true, true, true, false, false, true, false, false, true, true);

var<private> global1: u32 = 23146u;

var<private> global2: array<Struct_1, 9>;

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(50167u, 41880u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(67308u, 17332u)), Struct_1(vec2<u32>(89291u, 0u)), Struct_1(vec2<u32>(7670u, 1u)), Struct_1(vec2<u32>(4294967295u, 1694u)), Struct_1(vec2<u32>(1618u, 13041u)), Struct_1(vec2<u32>(94747u, 4294967295u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(34808u, 2508u)), Struct_1(vec2<u32>(53922u, 19321u)), Struct_1(vec2<u32>(47286u, 0u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(45654u, 10371u)), Struct_1(vec2<u32>(25539u, 0u)), Struct_1(vec2<u32>(1u, 16755u)), Struct_1(vec2<u32>(40328u, 0u)), Struct_1(vec2<u32>(27192u, 0u)), Struct_1(vec2<u32>(24260u, 4294967295u)), Struct_1(vec2<u32>(7921u, 1u)), Struct_1(vec2<u32>(16838u, 4294967295u)), Struct_1(vec2<u32>(80203u, 29558u)), Struct_1(vec2<u32>(18695u, 123580u)), Struct_1(vec2<u32>(47575u, 1u)), Struct_1(vec2<u32>(55570u, 0u)), Struct_1(vec2<u32>(3768u, 4294967295u)), Struct_1(vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(1u, 16506u)), Struct_1(vec2<u32>(78781u, 13363u)));

var<private> global4: array<u32, 9>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> u32 {
    return ~_wgslsmith_dot_vec3_u32(~max(vec3<u32>(76597u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(972u, 9u)], 9u)], global4[_wgslsmith_index_u32(66429u, 9u)]), vec3<u32>(34058u, 1u, global4[_wgslsmith_index_u32(7025u, 9u)])), vec3<u32>(_wgslsmith_sub_u32(31466u, ~global4[_wgslsmith_index_u32(1u, 9u)]), 0u, 2615u));
}

fn func_3() -> u32 {
    global0 = array<bool, 29>();
    global1 = ~abs(~func_1());
    var var_0 = Struct_1(_wgslsmith_div_vec2_u32(firstLeadingBit(~vec2<u32>(4294967295u, 58603u)), vec2<u32>(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)] | ~global4[_wgslsmith_index_u32(1u, 9u)], 38588u)));
    global4 = array<u32, 9>();
    var var_1 = global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(~(vec4<u32>(1u, global4[_wgslsmith_index_u32(31135u, 9u)], 8961u, var_0.a.x) >> (vec4<u32>(0u, 4294967295u, 0u, var_0.a.x) % vec4<u32>(32u))), ~vec4<u32>(0u, 20089u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], global4[_wgslsmith_index_u32(29413u, 9u)]))), abs(abs(min(vec4<u32>(89649u, var_0.a.x, global4[_wgslsmith_index_u32(6240u, 9u)], 45311u), vec4<u32>(57249u, var_0.a.x, global4[_wgslsmith_index_u32(0u, 9u)], 20995u)))) << (min(~(~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 4294967295u, 19746u, global4[_wgslsmith_index_u32(var_0.a.x, 9u)])), select(vec4<u32>(global4[_wgslsmith_index_u32(50648u, 9u)], var_0.a.x, 0u, global4[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<u32>(global4[_wgslsmith_index_u32(59399u, 9u)], 4294967295u, 82345u, global4[_wgslsmith_index_u32(var_0.a.x, 9u)]), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(0u, 29u)])) ^ vec4<u32>(15531u, global4[_wgslsmith_index_u32(11535u, 9u)], 73112u, 23878u)) % vec4<u32>(32u))), 9u)], 9u)];
    return ~(51090u ^ ~(func_1() ^ select(26711u, global4[_wgslsmith_index_u32(12906u, 9u)], global0[_wgslsmith_index_u32(39707u, 29u)])));
}

fn func_2(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = max(max(-u_input.c.x ^ u_input.c.x, 39202i), -48774i);
    var var_1 = ~max(arg_0.b.d.a.x, max(_wgslsmith_div_u32(~0u, arg_0.b.d.a.x), _wgslsmith_add_u32(~1u, func_3())));
    var_1 = ~min(arg_0.b.d.a.x << (arg_0.b.d.a.x % 32u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.b.d.a.x, 32826u, global4[_wgslsmith_index_u32(1u, 9u)]), vec4<u32>(global4[_wgslsmith_index_u32(arg_0.b.d.a.x, 9u)], 1u, 4294967295u, arg_0.b.d.a.x)), 28126u), arg_0.b.d.a.x));
    var var_2 = -1000f;
    global0 = array<bool, 29>();
    return vec3<bool>(all(select(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.b.d.a.x, 29u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 29u)], false), global0[_wgslsmith_index_u32(4294967295u, 29u)]), !select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.b.d.a.x, 9u)], 9u)], 9u)], 29u)], true), true), vec2<bool>(true, false))), true, all(select(!(!vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(0u, 29u)])), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(42597u, 29u)], false), select(arg_0.a.x > -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 29u)] & false, any(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.b.d.a.x, 29u)]))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    global1 = max(53342u, ~(~(~global4[_wgslsmith_index_u32(select(arg_2.d.a.x, arg_2.d.a.x, arg_0.x), 9u)])));
    var var_0 = ~reverseBits(~vec3<u32>(arg_1.b.d.a.x, 0u ^ arg_1.b.d.a.x, min(0u, arg_2.d.a.x)));
    global2 = array<Struct_1, 9>();
    var var_1 = arg_0.x;
    let var_2 = arg_1;
    return arg_1.b;
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    global1 = ~arg_2.d.a.x;
    let var_0 = true;
    global3 = array<Struct_1, 30>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(arg_2.c * vec2<f32>(arg_0.x, arg_0.x)), global3[_wgslsmith_index_u32(abs(countOneBits(arg_2.d.a.x) ^ _wgslsmith_add_u32(arg_1, 1u)), 30u)]);
    var var_2 = Struct_3(vec2<f32>(arg_2.c.x, arg_2.c.x), func_4(!func_2(Struct_4(vec3<i32>(-1i, 2147483647i, 16370i), Struct_2(-1662f, -923f, arg_0.yy, Struct_1(var_1.b.a)))), Struct_4(~_wgslsmith_sub_vec3_i32(vec3<i32>(-18340i, -1i, u_input.b), vec3<i32>(u_input.a, u_input.b, 1i)), func_4(!vec3<bool>(global0[_wgslsmith_index_u32(40778u, 29u)], true, true), Struct_4(vec3<i32>(-30339i, 0i, 1i), arg_2), func_4(vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 29u)]), Struct_4(vec3<i32>(-2147483647i, 22213i, u_input.c.x), arg_2), Struct_2(var_1.a.x, 107f, arg_2.c, var_1.b), vec3<i32>(u_input.c.x, -1i, u_input.c.x)), countOneBits(vec3<i32>(73183i, u_input.a, -1i)))), Struct_2(_wgslsmith_f_op_f32(-281f + _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1254f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1129f, arg_2.c.x) - vec2<f32>(-373f, var_1.a.x)) * _wgslsmith_f_op_vec2_f32(-arg_0.xz)), var_1.b), vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_div_i32(-14146i, 17589i)), _wgslsmith_clamp_i32(firstLeadingBit(u_input.b), 0i, 5709i), u_input.a)).d);
    return arg_2;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_2 {
    global3 = array<Struct_1, 30>();
    global4 = array<u32, 9>();
    let var_0 = 25852i;
    let var_1 = !arg_2.xy;
    global4 = array<u32, 9>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0[_wgslsmith_index_u32(func_1(), 29u)];
    var var_1 = global2[_wgslsmith_index_u32(abs(firstTrailingBit(21349u)), 9u)];
    global2 = array<Struct_1, 9>();
    var var_2 = func_6(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)), -1092f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-572f, 1000f), vec2<f32>(240f, -1799f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(130f, -1576f)))), Struct_1(~(vec2<u32>(1u, 1u) >> (vec2<u32>(5949u, global4[_wgslsmith_index_u32(var_1.a.x, 9u)]) % vec2<u32>(32u))))), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1127f, -168f, -781f)), ((global4[_wgslsmith_index_u32(1u, 9u)] | global4[_wgslsmith_index_u32(var_1.a.x, 9u)]) >> (countOneBits(0u) % 32u)) << ((1u | ~global4[_wgslsmith_index_u32(9022u, 9u)]) % 32u), func_4(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(var_1.a.x, 29u)]), func_2(Struct_4(vec3<i32>(u_input.a, -55265i, u_input.a), Struct_2(-716f, -678f, vec2<f32>(-1388f, -1563f), global2[_wgslsmith_index_u32(var_1.a.x, 9u)]))), vec3<bool>(true, true, true)), Struct_4(vec3<i32>(2147483647i, -25904i, -2147483647i), Struct_2(-2272f, -970f, vec2<f32>(1000f, 2083f), global2[_wgslsmith_index_u32(var_1.a.x, 9u)])), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1110f), -208f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-622f, 1107f)), global3[_wgslsmith_index_u32(0u, 30u)]), abs(vec3<i32>(u_input.a, u_input.a, u_input.b) ^ vec3<i32>(-31748i, -2147483647i, 33958i)))), vec3<bool>(max(45843u, _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(var_1.a.x, 9u)], global4[_wgslsmith_index_u32(4294967295u, 9u)], global4[_wgslsmith_index_u32(var_1.a.x, 9u)]), vec3<u32>(164726u, 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(49631u, 9u)], 9u)]))) >= global4[_wgslsmith_index_u32(_wgslsmith_add_u32(71852u | var_1.a.x, _wgslsmith_sub_u32(12676u, global4[_wgslsmith_index_u32(4294967295u, 9u)])), 9u)], !(firstTrailingBit(var_1.a.x) < ~47687u), !(firstLeadingBit(5494i) == ~u_input.c.x)));
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_i32(-(~2147483647i), _wgslsmith_add_i32(u_input.b, ~u_input.c.x)), -u_input.a), ~min(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(-44955i, 36816i, var_3, -2147483647i), vec4<i32>(42083i, 2147483647i, -26883i, u_input.a)), ~vec4<i32>(var_3, -1i, 0i, u_input.a), vec4<i32>(-2147483647i, var_3, 36701i, var_3)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), 27888i, -1i << (global4[_wgslsmith_index_u32(1u, 9u)] % 32u), u_input.a | -1i)), 602f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-var_2.a)));
}

