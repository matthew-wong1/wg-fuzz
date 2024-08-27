struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_4, 13>;

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true));

var<private> global3: vec2<bool>;

var<private> global4: Struct_5 = Struct_5(vec4<f32>(-156f, -303f, 1214f, -741f), Struct_2(-1i, Struct_1(vec3<bool>(false, true, true), false, vec4<f32>(1000f, -637f, 927f, 721f), true), 2147483647i, Struct_1(vec3<bool>(false, false, true), false, vec4<f32>(-915f, -1410f, 418f, -219f), true), Struct_1(vec3<bool>(true, false, false), false, vec4<f32>(1000f, 1450f, -2165f, 1182f), true)), false, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: bool) -> vec4<bool> {
    global0 = true;
    var var_0 = select(global4.b.e.a, select(!vec3<bool>(any(vec2<bool>(global3.x, global4.d)), true, any(global2[_wgslsmith_index_u32(71790u, 11u)])), vec3<bool>(!(false && global3.x), all(vec4<bool>(arg_3, false, global3.x, false)), all(!global4.b.d.a)), vec3<bool>(_wgslsmith_mult_i32(-14163i, -12899i) != (global4.b.a & -2147483647i), select(!global3.x, true, arg_3 != global4.c), false)), select(vec3<bool>(true, any(select(global4.b.e.a.xz, vec2<bool>(false, true), global4.b.e.a.yz)), u_input.a >= reverseBits(u_input.a)), vec3<bool>(any(global4.b.d.a.yx), _wgslsmith_f_op_f32(min(global4.b.b.c.x, -826f)) != _wgslsmith_f_op_f32(select(arg_0, -246f, global3.x)), global4.b.d.a.x), arg_3));
    let var_1 = vec4<u32>(u_input.a, ~(u_input.a ^ u_input.a) >> (1u % 32u), _wgslsmith_add_u32(~arg_2, firstTrailingBit(0u)), 47306u);
    let var_2 = var_1.zwx;
    global2 = array<vec4<bool>, 11>();
    return select(global2[_wgslsmith_index_u32(var_2.x, 11u)], vec4<bool>(true, global4.d, global3.x, true), arg_3);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_1)))));
    let var_1 = func_3(arg_1, 1i, arg_2.x, global4.b.e.d);
    var var_2 = Struct_3(countOneBits(max(0u, _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(arg_2.x, 4294967295u, arg_0.x)))), -1i, global4.b.b.c, _wgslsmith_dot_vec3_i32(vec3<i32>(min(-2147483647i, -2147483647i >> (arg_2.x % 32u)), _wgslsmith_add_i32(_wgslsmith_add_i32(global4.b.c, global4.b.a), global4.b.a), 21481i), select(-(~vec3<i32>(-1i, global4.b.c, global4.b.c)), select(vec3<i32>(global4.b.c, global4.b.a, -1i), vec3<i32>(global4.b.c, 1i, -1i), select(var_1.yxw, global4.b.d.a, global4.b.d.a)), select(global4.b.e.a, !vec3<bool>(global3.x, global4.d, true), !var_1.xxz))), true & !(global4.a.x >= arg_1));
    var var_3 = arg_0.wx;
    let var_4 = var_0;
    return global4.b;
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -610f, global4.a.x, -1630f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.b.b.c) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(236f, global4.b.d.c.x, global4.b.b.c.x, global4.b.e.c.x))))) - _wgslsmith_f_op_vec4_f32(global4.b.d.c * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 391f, -988f, -1056f))))), func_2(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 1u, u_input.a, 1u), abs(vec4<u32>(35146u, 0u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))), -212f, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(912u, u_input.a), ~vec2<u32>(u_input.a, 4294967295u)), ~(vec2<u32>(4294967295u, u_input.a) >> (vec2<u32>(33622u, u_input.a) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u) & vec2<u32>(u_input.a, u_input.a), max(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 1u)), ~vec2<u32>(u_input.a, 13474u)))), !(!(!func_2(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), -2291f, vec2<u32>(123u, u_input.a)).e.a.x)), true);
    var var_1 = global4.b.e.a.yx;
    let var_2 = global4.b.e.a.x;
    global0 = (!all(func_3(144f, -2147483647i, u_input.a, var_0.c)) && (abs(0u) > ~u_input.a)) & false;
    var var_3 = _wgslsmith_f_op_f32(-func_2(vec4<u32>(u_input.a, 1u << (u_input.a % 32u), firstTrailingBit(u_input.a), ~0u) >> (vec4<u32>(u_input.a, 0u, _wgslsmith_add_u32(u_input.a, 0u), 1u) % vec4<u32>(32u)), 1f, abs(abs(~vec2<u32>(0u, 1u)))).d.c.x);
    return Struct_5(var_0.a, func_2(~firstLeadingBit(vec4<u32>(4294967295u, 40902u, 1u, u_input.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(-1983f))))), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(1u, 1u)), reverseBits(~vec2<u32>(u_input.a, u_input.a)))), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.b.d;
    global4 = func_1();
    let var_1 = vec2<u32>(~7002u, _wgslsmith_sub_u32(u_input.a, _wgslsmith_mult_u32(_wgslsmith_add_u32(50763u ^ u_input.a, ~u_input.a), _wgslsmith_mod_u32(abs(4294967295u), u_input.a))));
    var_0 = global4.b.d;
    var_0 = Struct_1(vec3<bool>(true, (~global4.b.c << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, 0u), vec4<u32>(49410u, var_1.x, var_1.x, var_1.x)) % 32u)) != -6592i, global4.b.e.a.x), func_2(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 1u, var_1.x, var_1.x), vec4<u32>(15717u, u_input.a, 741u, var_1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, var_1.x, 0u), vec4<u32>(1u, var_1.x, var_1.x, u_input.a))), u_input.a, 3676u), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.b.c.x) * func_1().b.d.c.x)), ~vec2<u32>(_wgslsmith_div_u32(1u, u_input.a), 0u)).e.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-160f, _wgslsmith_f_op_f32(var_0.c.x * 975f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, -835f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-713f)))), _wgslsmith_f_op_f32(465f * global4.a.x), _wgslsmith_f_op_f32(673f * global4.a.x)), !global4.d);
    global3 = select(vec2<bool>(global3.x, var_0.b), select(global4.b.b.a.xz, vec2<bool>(true, global3.x), !any(!vec2<bool>(var_0.b, true))), vec2<bool>(true, true));
    var var_2 = u_input.a;
    let var_3 = abs((vec3<i32>(global4.b.c, global4.b.a, -41092i) << (~(vec3<u32>(1u, u_input.a, u_input.a) >> (vec3<u32>(41351u, u_input.a, 31249u) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(global4.b.c, global4.b.a, global4.b.c), vec3<i32>(2147483647i, global4.b.c, -8882i)), ~vec3<i32>(2147483647i, 2072i, -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~global4.b.c);
}

