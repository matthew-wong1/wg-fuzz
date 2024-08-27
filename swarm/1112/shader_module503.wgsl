struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 9>;

var<private> global2: array<u32, 19>;

var<private> global3: Struct_2 = Struct_2(vec4<f32>(-433f, -1727f, 1536f, 468f), true, vec3<f32>(-261f, -1304f, -848f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec2<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(sign(-1318f))), _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1346f)), _wgslsmith_f_op_f32(step(global3.a.x, _wgslsmith_f_op_f32(-global3.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))))));
    let var_1 = global1[_wgslsmith_index_u32(abs(u_input.b.x), 9u)];
    var var_2 = _wgslsmith_f_op_f32(ceil(global3.c.x));
    var var_3 = !select(vec4<bool>(true, true, true, u_input.a == ~global0.b), global0.a, global0.a);
    var var_4 = Struct_1(vec4<bool>(all(!select(global0.a.wzz, var_3.yzw, global3.b)), global3.b, true, false), _wgslsmith_mult_i32(~(-1i), 1i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, global2[_wgslsmith_index_u32(arg_0.x, 19u)], 1u, global2[_wgslsmith_index_u32(3465u, 19u)]), global0.c << (global0.c % vec4<u32>(32u))) % 32u)), vec4<u32>(~u_input.b.x, 21615u, arg_0.x ^ global2[_wgslsmith_index_u32(4294967295u, 19u)], 18202u), var_3.x, vec4<i32>(1i, ~(-28228i), u_input.a, select(79959i, max(-u_input.a, -19590i << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], 19u)] % 32u)), any(!var_3.yxy))));
    return vec2<bool>(true, all(vec2<bool>(select(global0.d, true, true) | all(vec4<bool>(false, true, false, global0.d)), firstLeadingBit(u_input.a) >= (global0.b >> (1u % 32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    var var_0 = -_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b, 1i, global0.e.x, _wgslsmith_div_i32(-u_input.a, arg_0.e.x | 2147483647i)), vec4<i32>(global0.b, -16647i, 1i, ~(-arg_0.e.x)));
    let var_1 = -778f;
    var var_2 = _wgslsmith_f_op_vec2_f32(global3.a.zx * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.a.xy, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(624f, 242f))), arg_0.a.xw)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -933f) * _wgslsmith_f_op_vec2_f32(min(arg_1.a.xx, vec2<f32>(893f, arg_1.a.x))))), vec2<f32>(-1378f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-214f * 1467f) + arg_2.c.x))));
    var var_3 = _wgslsmith_dot_vec3_u32(global0.c.yyy, vec3<u32>(4294967295u, 1u, ~(~global2[_wgslsmith_index_u32(global0.c.x, 19u)])));
    var var_4 = false & arg_3.x;
    return _wgslsmith_f_op_f32(floor(-3670f));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = ~(reverseBits(u_input.b.yy) & ~(arg_2.c.zw & u_input.b.xy)) & ~(abs(vec2<u32>(arg_2.c.x, global0.c.x) >> (vec2<u32>(3053u, 16998u) % vec2<u32>(32u))) | select(u_input.b.yx, u_input.b.yy >> (global0.c.zw % vec2<u32>(32u)), 32522u != global2[_wgslsmith_index_u32(global0.c.x, 19u)]));
    let var_1 = arg_2.e.wx;
    var var_2 = arg_2.c.wz;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.a.x)) - -872f), _wgslsmith_f_op_f32(func_4(Struct_1(arg_2.a, max(arg_2.e.x, global0.e.x), global0.c, any(!vec4<bool>(global3.b, false, false, global0.d)), vec4<i32>(reverseBits(2658i), 0i, var_1.x, 2147483647i)), global1[_wgslsmith_index_u32(global0.c.x, 9u)], Struct_2(_wgslsmith_f_op_vec4_f32(step(global3.a, vec4<f32>(global3.c.x, global3.c.x, 234f, 1328f))), false, vec3<f32>(_wgslsmith_f_op_f32(max(global3.c.x, global3.a.x)), _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(select(global3.c.x, global3.c.x, false)))), vec4<bool>(any(func_3(u_input.b, arg_1)), true, global0.a.x, select(select(global0.a.x, global3.b, global0.a.x), arg_2.c.x <= 0u, !global3.b)))), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-987f + _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(478f + -105f))), _wgslsmith_f_op_f32(step(global3.a.x, global3.a.x)));
    let var_4 = global3.c.x;
    return ~select(max(53521u, ~(~var_2.x)), _wgslsmith_mod_u32(max(1u, 4294967295u), _wgslsmith_add_u32(u_input.b.x, 4294967295u)) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(46637u, u_input.b.x, arg_2.c.x), vec3<u32>(6589u, 1u, 4294967295u)) % 32u), all(vec4<bool>(all(arg_2.a.xy), true, 48962u < global0.c.x, true)));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = global3.a.zwz;
    let var_1 = global0.e.yw;
    var var_2 = select(!vec2<bool>(!arg_3.a.x, 2078f == arg_0.c.x), select(select(!(!arg_3.a.ww), !global0.a.wy, !arg_0.b), vec2<bool>(arg_0.b, all(global0.a.yy)), false), select(global0.a.wx, select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, global0.d), vec2<bool>(true, 960f <= var_0.x)), false));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(global3.a.xxw));
    global3 = Struct_2(global3.a, all(global0.a.yxw), _wgslsmith_f_op_vec3_f32(select(global3.c, _wgslsmith_f_op_vec3_f32(sign(global3.a.wxy)), !select(vec3<bool>(var_2.x, true, true), arg_3.a.xyz, select(vec3<bool>(true, arg_3.a.x, true), vec3<bool>(true, false, true), global0.a.wyz)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-208f)), -628f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_2.x)), var_0.x, 729f)), !all(vec2<bool>(false, arg_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global3.a.yzw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.yxx))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c))));
}

fn func_1() -> f32 {
    var var_0 = global0.a.wxx;
    var var_1 = func_5(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, func_2(max(95668u, u_input.b.x), 0u, Struct_1(global0.a, -61894i, global0.c, global3.b, vec4<i32>(-8475i, 1i, u_input.a, u_input.a))), reverseBits(63764u)), ~global0.c), 9u)], _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], ~global0.c.x), ~4294967295u >> (abs(0u) % 32u)), u_input.b.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(global3.c.x - global3.c.x), _wgslsmith_div_f32(global3.a.x, 655f)), global3.a.wz)), global3.a.xz)), Struct_1(global0.a, ~(global0.b << (~8479u % 32u)), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.c.x, 0u, 1u, 6651u), ~vec4<u32>(global2[_wgslsmith_index_u32(global0.c.x, 19u)], global2[_wgslsmith_index_u32(23264u, 19u)], u_input.b.x, u_input.b.x), vec4<u32>(0u, 1u, global0.c.x, global2[_wgslsmith_index_u32(global0.c.x, 19u)])), global0.d | true, select(global0.e, -vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(select(true, global0.d, global3.b), all(vec4<bool>(false, var_0.x, true, true)), global0.a.x, any(vec4<bool>(true, global3.b, true, false))))));
    global2 = array<u32, 19>();
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(var_1.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.a, var_1.a, true)) * vec4<f32>(728f, _wgslsmith_f_op_f32(-global3.c.x), func_5(Struct_2(vec4<f32>(global3.a.x, global3.c.x, -606f, -1022f), global0.a.x, vec3<f32>(1725f, global3.a.x, 422f)), 0u, var_1.a.yx, Struct_1(vec4<bool>(global0.a.x, true, true, var_0.x), global0.e.x, vec4<u32>(u_input.b.x, 0u, 1u, 0u), var_0.x, vec4<i32>(-1i, u_input.a, -1i, 0i))).a.x, _wgslsmith_f_op_f32(sign(global3.a.x)))), vec4<f32>(-316f, global3.c.x, 974f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - 1012f))), global3.a.x <= 380f)), !vec4<bool>(!global3.b & !var_0.x, var_1.b, !(!global3.b), true)));
    global2 = array<u32, 19>();
    return 393f;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> vec4<f32> {
    global0 = Struct_1(select(select(select(vec4<bool>(arg_0.b, true, true, true), select(vec4<bool>(global0.a.x, false, arg_0.b, true), global0.a, global3.b), !global0.a), global0.a, global0.a), vec4<bool>(global0.a.x, true, all(select(vec2<bool>(false, global3.b), vec2<bool>(false, global3.b), global0.a.xy)), !global0.d || (arg_0.b || false)), true), abs(u_input.a), ~global0.c, u_input.b.x < global0.c.x, -global0.e);
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 9u)];
    var var_1 = false;
    var_0 = func_5(arg_0, _wgslsmith_div_u32(global0.c.x, 55329u & _wgslsmith_div_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(0u, 19u)], 6203u), global2[_wgslsmith_index_u32(1u << (global2[_wgslsmith_index_u32(0u, 19u)] % 32u), 19u)])), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-756f - -1953f), -367f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1563f, -947f), var_0.c.xy, false))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1646f, 422f), vec2<f32>(arg_2, -1000f))))))), Struct_1(vec4<bool>((var_0.b && true) | var_0.b, true, global3.b, arg_0.b), u_input.a, min(_wgslsmith_mult_vec4_u32(vec4<u32>(74675u, 26735u, 4294967295u, 46512u), global0.c), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.c.x), vec2<u32>(99337u, 59193u)), min(global0.c.x, global2[_wgslsmith_index_u32(87382u, 19u)]), min(4294967295u, 1u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.c.x, 19u)], 19u)]), 19u)])), !var_0.b, reverseBits(global0.e)));
    let var_2 = firstLeadingBit(abs(~vec3<i32>(global0.e.x, _wgslsmith_mult_i32(global0.e.x, 2147483647i), global0.b | -2147483647i)));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global3.a), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global3.a))))) - _wgslsmith_f_op_vec4_f32(func_6(global1[_wgslsmith_index_u32(~1u, 9u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -774f), _wgslsmith_f_op_f32(sign(-2173f))))), !(!(_wgslsmith_f_op_f32(min(global3.c.x, -101f)) < global3.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2030f, global3.c.x, _wgslsmith_f_op_f32(-global3.c.x)) - vec3<f32>(global3.c.x, -688f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f * -576f)))));
    var var_1 = vec4<bool>(global0.c.x == _wgslsmith_mult_u32(reverseBits(global2[_wgslsmith_index_u32(global0.c.x, 19u)]) & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(27507u), 19u)], 19u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32600u, 19u)], 19u)]), select(all(vec2<bool>(!global3.b, global0.a.x)), global0.a.x, global3.b & (_wgslsmith_f_op_f32(-var_0.a.x) == -197f)), false, select(true, true, all(vec3<bool>(u_input.b.x == global2[_wgslsmith_index_u32(u_input.b.x, 19u)], true, global3.b | true))));
    let var_2 = u_input.a;
    var var_3 = var_0;
    var var_4 = _wgslsmith_f_op_vec3_f32(step(var_0.c, global3.c));
    var var_5 = -(global0.e.wz << (~(~(vec2<u32>(global2[_wgslsmith_index_u32(71214u, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)]) << (vec2<u32>(0u, 47586u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-56511i, var_2, var_5.x), select(vec3<i32>(12661i, var_5.x, u_input.a), global0.e.zwy, false) >> (~u_input.b % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(global0.e.yxz ^ global0.e.xyx, global0.e.www ^ reverseBits(global0.e.yyy))), 1627f, ~global0.c.wwy, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-16493i, global0.b), var_5.x ^ -6540i));
}

