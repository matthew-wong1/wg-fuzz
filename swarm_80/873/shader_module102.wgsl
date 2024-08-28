struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(25999u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 104524u, 1u, 9995u), vec4<u32>(645u, 5053u, 26080u, 1u), vec4<u32>(22632u, 44386u, 1u, 1966u), vec4<u32>(4294967295u, 0u, 5530u, 0u), vec4<u32>(8159u, 1u, 40305u, 0u), vec4<u32>(22163u, 0u, 46716u, 0u), vec4<u32>(4621u, 4294967295u, 12357u, 4294967295u), vec4<u32>(4294967295u, 14044u, 174334u, 4294967295u), vec4<u32>(23415u, 7142u, 97u, 4294967295u), vec4<u32>(4294967295u, 11057u, 1u, 56300u), vec4<u32>(3279u, 91064u, 29233u, 0u), vec4<u32>(5857u, 0u, 48410u, 0u), vec4<u32>(3033u, 0u, 51200u, 60121u), vec4<u32>(24992u, 141015u, 8697u, 37436u), vec4<u32>(29879u, 47280u, 1u, 13254u));

var<private> global2: Struct_3 = Struct_3(vec2<u32>(128741u, 4294967295u), -2037f, vec3<bool>(true, true, false), vec3<u32>(0u, 22768u, 24877u), Struct_2(63349u, Struct_1(true, true, vec3<f32>(571f, -271f, -193f), -1112f, 17188u)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = ~(~(_wgslsmith_mult_u32(~global2.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.e.a, 16794u, 1u), u_input.a)) >> (abs(4294967295u) % 32u)));
    global2 = Struct_3(global2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.e.b.c.x)), _wgslsmith_f_op_f32(sign(global2.e.b.c.x))) + _wgslsmith_f_op_f32(-global0.d)))), global2.c, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(u_input.a), _wgslsmith_add_vec3_u32(~vec3<u32>(global0.e, global0.e, 19019u), vec3<u32>(global2.a.x, 1468u, 4294967295u)), abs(_wgslsmith_mult_vec3_u32(global2.d, vec3<u32>(119696u, global2.e.b.e, 1u)))), ~_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, 4294967295u, u_input.a.x)), global2.d)), Struct_2(_wgslsmith_div_u32(u_input.a.x, abs(21889u)) & _wgslsmith_mult_u32(~34669u, ~global2.d.x), global2.e.b));
    let var_1 = vec3<bool>(true, !all(select(select(vec2<bool>(global0.a, false), global2.c.zz, global2.c.xz), vec2<bool>(false, global2.e.b.b), global2.c.zx)), any(!global2.c.yx));
    var var_2 = 10060i;
    let var_3 = vec3<bool>(global0.e > ~44558u, any(vec4<bool>(any(var_1), global2.e.b.a, -1743f <= global2.b, true)) || (all(!vec4<bool>(true, global0.a, global0.b, false)) && any(vec3<bool>(false, global0.a, global2.e.b.a))), !(abs(global0.e) < reverseBits(reverseBits(36928u))));
    return select(abs(u_input.a.x) >> (32740u % 32u), ~countOneBits(4294967295u), var_3.x);
}

fn func_2() -> Struct_5 {
    let var_0 = false;
    return Struct_5(_wgslsmith_div_vec4_u32(reverseBits(~(~global1[_wgslsmith_index_u32(global2.e.b.e, 16u)])), ~vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(4294967295u, 4294967295u), select(0u, 4294967295u, false), global0.e)), ~vec4<i32>(~(-6030i), 7155i, _wgslsmith_sub_i32(85178i, 15906i), -49931i) << (firstLeadingBit(~vec4<u32>(0u, global0.e, 1u, 14063u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), func_3() << (firstLeadingBit(23609u) % 32u));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: Struct_3) -> Struct_4 {
    return Struct_4(max(func_2().a.x << (~1u % 32u), 4294967295u));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, -639f, 770f, global2.b) - vec4<f32>(global0.c.x, -477f, -1496f, global0.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.d, 131f, global2.e.b.d, global0.c.x), vec4<f32>(global2.e.b.c.x, global0.c.x, -292f, global2.b))) * vec4<f32>(-171f, global2.e.b.d, -1100f, 1147f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, global2.b, 290f, global2.e.b.c.x)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yy - var_0.yw));
    global0 = Struct_1(false, false, vec3<f32>(-1550f, _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 692f) + _wgslsmith_f_op_f32(global2.e.b.d * var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, global0.c.x), 875f)))), func_2().c, global0.e);
    global0 = Struct_1(any(!(!global2.c.xz)), !arg_1, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global2.e.b.c)), global2.e.b.c), global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -503f)), ~(81161u & ~arg_2.a));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(global0.c.xz));
    return select(false, true, true);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool) -> vec2<bool> {
    global0 = Struct_1(!func_5(true, global0.a, func_4(_wgslsmith_f_op_vec2_f32(floor(global0.c.yz)), func_2(), Struct_3(vec2<u32>(50734u, 63652u), 512f, global2.c, vec3<u32>(u_input.a.x, arg_1.a, global0.e), Struct_2(arg_0.a, Struct_1(false, global2.c.x, vec3<f32>(-415f, global0.d, global2.b), global2.b, 20758u))))), global2.e.b.b, vec3<f32>(2585f, _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.b, -305f)) + -1685f)), -852f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1621f, 204f, false)), _wgslsmith_f_op_f32(global2.b + global0.d))))))), arg_1.a);
    var var_0 = -select(_wgslsmith_div_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(64196i, -2147483647i), vec2<i32>(-3351i, 1i), vec2<i32>(1i, -24487i)), vec2<i32>(1i, 1i)), vec2<i32>(_wgslsmith_clamp_i32(2147483647i, -2774i, 53050i >> (arg_1.a % 32u)), max(i32(-1i) * -8649i, -1i)), select(!(!vec2<bool>(true, arg_2)), select(vec2<bool>(true, true), select(global2.c.xy, global2.c.xy, vec2<bool>(arg_2, arg_2)), vec2<bool>(false, false)), true | global0.a));
    var var_1 = abs(_wgslsmith_mod_i32(firstTrailingBit(~(-1i)) >> (_wgslsmith_div_u32(~1u, select(4294967295u, 80339u, false)) % 32u), var_0.x));
    let var_2 = 53330i;
    var var_3 = Struct_3(firstTrailingBit(~global2.d.zx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f + global2.e.b.d))) - _wgslsmith_f_op_f32(max(933f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), global0.c.x)))), global2.c, u_input.a, Struct_2(55618u, global2.e.b));
    return !select(global2.c.yz, var_3.c.zz, vec2<bool>(arg_2, var_3.e.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(!all(vec4<bool>(global0.b, global0.b, false, false)) & true, select(false, any(!vec4<bool>(global2.e.b.b, true, true, true)), false)), select(!global2.c.xz, vec2<bool>(!global2.e.b.a, true), func_1(Struct_4(global0.e), Struct_4(1u), !global0.a)), true);
    global1 = array<vec4<u32>, 16>();
    global2 = Struct_3(max(select(u_input.a.xz, u_input.a.zz, !func_1(Struct_4(global2.a.x), Struct_4(global0.e), global0.b)), vec2<u32>(u_input.a.x, 451u)), global0.c.x, !global2.c, u_input.a, Struct_2(22915u, Struct_1(!select(true, var_0.x, true), ~(-2147483647i) == _wgslsmith_dot_vec2_i32(vec2<i32>(-43221i, -6499i), vec2<i32>(-1i, -51258i)), global2.e.b.c, 1f, _wgslsmith_mult_u32(func_4(global2.e.b.c.xx, Struct_5(vec4<u32>(1u, 1u, 85997u, global2.e.b.e), vec4<i32>(0i, -45946i, 2147483647i, 0i), -365f, u_input.a.x), Struct_3(vec2<u32>(1u, u_input.a.x), global2.b, vec3<bool>(true, false, var_0.x), u_input.a, Struct_2(global0.e, Struct_1(var_0.x, false, global0.c, global0.d, 1u)))).a, global0.e))));
    let var_1 = true;
    var var_2 = global2.e;
    let var_3 = global0.e;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(0u, 1u, 1u, 1u) ^ func_2().a), vec2<u32>(global0.e, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), -252f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c.x * 1286f), _wgslsmith_f_op_f32(-var_2.b.d))))));
}

