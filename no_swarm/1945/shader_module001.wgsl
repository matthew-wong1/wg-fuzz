struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<bool>;

var<private> global2: f32 = -903f;

var<private> global3: Struct_1;

var<private> global4: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<f32> {
    let var_0 = ~_wgslsmith_mod_u32(0u, _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_clamp_u32(u_input.b.x, arg_1.x, 67251u)), _wgslsmith_div_u32(u_input.b.x, arg_0.b.x)));
    let var_1 = vec4<f32>(-544f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1497f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f))) - 2271f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1239f * _wgslsmith_f_op_f32(sign(arg_0.d.x)))))));
    let var_2 = arg_0;
    global1 = vec2<bool>(true, true);
    let var_3 = var_2;
    return vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.x)), var_3.a);
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global3.d.x), vec3<u32>(2799u << (u_input.b.x % 32u), ~(~u_input.b.x | 21957u), reverseBits(~global3.b.x)), _wgslsmith_f_op_f32(-595f - _wgslsmith_f_op_f32(step(global3.d.x, global3.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global3.d.x, global3.b, 1190f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, global3.a, global3.d.x)), global1.x), _wgslsmith_div_vec3_u32(global3.b << (vec3<u32>(45708u, u_input.b.x, 4294967295u) % vec3<u32>(32u)), vec3<u32>(global3.b.x, global3.b.x, global3.b.x))))), !all(!vec4<bool>(true, global3.e, global1.x, global1.x)));
    var var_1 = var_0;
    var var_2 = u_input.b.xxy;
    global0 = u_input.d | u_input.c.x;
    global0 = min(u_input.d, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c.x, ~(i32(-1i) * -40294i), -2147483647i), u_input.c.x));
    return vec3<u32>(global3.b.x, max(~_wgslsmith_clamp_u32(~26074u, _wgslsmith_mult_u32(var_1.b.x, 1u), 4294967295u), reverseBits(97065u)), 32405u);
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = Struct_1(1091f, _wgslsmith_clamp_vec3_u32(global3.b, _wgslsmith_sub_vec3_u32(func_2(), select(~u_input.b.wyy, reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, global3.b.x)), true)), ~func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.a), global3.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1521f, 3074f, -768f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(537f, global3.a, 1000f)))))), false);
    var var_1 = firstTrailingBit(var_0.b.x);
    let var_2 = vec3<u32>(global3.b.x & _wgslsmith_add_u32(global3.b.x, 3021u), _wgslsmith_mod_u32(~27200u, select(1u, u_input.b.x, !global3.e)) << (select(73639u, var_0.b.x, false) % 32u), 13305u);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.x, var_0.a, var_0.d.x, global3.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.d.x, 1792f, global3.d.x, var_0.c), vec4<f32>(420f, -1617f, 358f, 1063f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-325f, 324f, var_0.c, var_0.c), vec4<f32>(var_0.c, 2262f, var_0.d.x, 1908f), false)))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-279f, global3.d.x, -236f, 809f)))) * vec4<f32>(-903f, 1f, _wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_f_op_f32(-global3.d.x))))));
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-2965f, var_0.a))));
    return all(!vec4<bool>(true, (1u != var_0.b.x) & (u_input.d != u_input.d), true, true || (global3.a != global3.c)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0;
    global1 = select(!global4[_wgslsmith_index_u32(~global3.b.x, 27u)], vec2<bool>(var_0.e, ~_wgslsmith_dot_vec3_i32(arg_2.zxx, vec3<i32>(2147483647i, arg_3.x, 2147483647i)) < 27131i), true);
    let var_1 = ~(~(~_wgslsmith_mod_vec2_i32(max(u_input.c.zx, vec2<i32>(-2147483647i, u_input.c.x)), vec2<i32>(-1i, 55048i))));
    let var_2 = Struct_1(arg_0.a, ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, 4294967295u, arg_1.b.x) | vec3<u32>(arg_0.b.x, var_0.b.x, var_0.b.x), arg_0.b) & ~global3.b, var_0.d.x, _wgslsmith_f_op_vec3_f32(-arg_0.d), -660f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(var_0.c, arg_1.d.x), global3.b.x < arg_0.b.x)), global3.a));
    var var_3 = Struct_1(arg_1.a, _wgslsmith_sub_vec3_u32(select(vec3<u32>(1u, 1u, arg_1.b.x) << (arg_1.b % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 13500u, 45980u), global3.b) << ((arg_1.b << (vec3<u32>(84226u, arg_1.b.x, 42440u) % vec3<u32>(32u))) % vec3<u32>(32u)), false), arg_1.b), -1173f, vec3<f32>(723f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -438f) + _wgslsmith_f_op_f32(select(177f, -297f, global1.x))), _wgslsmith_div_f32(var_2.d.x, var_2.a))), _wgslsmith_f_op_f32(exp2(arg_1.a))), arg_0.e);
    return var_2;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x + _wgslsmith_f_op_f32(arg_1.c * _wgslsmith_f_op_f32(arg_1.c * global3.a)))), vec3<u32>(min(87291u, 1u), min(select(0u, 8876u, all(vec4<bool>(true, true, false, arg_1.e))), global3.b.x ^ u_input.b.x), 82490u), -430f, vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3.a)), _wgslsmith_f_op_vec3_f32(func_3(arg_1, vec3<u32>(global3.b.x, 4294967295u, u_input.b.x))).x) - -201f), -1638f), global3.e);
    var var_1 = func_4(arg_1, Struct_1(arg_1.a, var_0.b, 1000f, vec3<f32>(-274f, global3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d.x)) + -439f)), global1.x), min(min(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.d, u_input.c.x), vec4<i32>(2147483647i, u_input.d, u_input.d, 31492i) << (u_input.b % vec4<u32>(32u))), abs(vec4<i32>(1i, u_input.d, 2147483647i, 2147483647i))), vec4<i32>(_wgslsmith_mod_i32(u_input.d, u_input.d), ~u_input.c.x, 0i, u_input.d ^ 0i) | vec4<i32>(_wgslsmith_div_i32(u_input.d, -22006i), -21824i, u_input.d, u_input.c.x)), vec4<i32>(_wgslsmith_clamp_i32(-25021i, _wgslsmith_clamp_i32(-1i, 1i, -2147483647i), _wgslsmith_mult_i32(~(-33140i), _wgslsmith_div_i32(u_input.c.x, u_input.c.x))), _wgslsmith_sub_i32(31751i & u_input.c.x, abs(-u_input.d)), min(2147483647i, u_input.c.x), u_input.d));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + global3.c));
    global2 = -1596f;
    var var_3 = true;
    return Struct_1(_wgslsmith_f_op_f32(round(arg_1.c)), vec3<u32>(u_input.b.x, 66734u, 77860u ^ ~global3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a - var_2)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c)) * -273f)), arg_1.d, global3.e & arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(select(!(global3.b.x < u_input.b.x), global3.e, all(global4[_wgslsmith_index_u32(0u, 27u)])) != false, true, !any(!(!vec4<bool>(global3.e, true, false, false))), false);
    var var_1 = _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a & vec2<u32>(u_input.a.x, 54687u)), reverseBits(global3.b.yx));
    let var_2 = _wgslsmith_f_op_f32(366f * _wgslsmith_f_op_f32(-1135f + global3.c));
    let var_3 = func_5(~u_input.b.x >= 77179u, func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.d.x, -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1919f)), u_input.b.yww, _wgslsmith_div_f32(_wgslsmith_f_op_f32(949f + global3.a), 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, global3.a, var_2))), false), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.a, var_2, global3.e)) * _wgslsmith_f_op_f32(-var_2)), vec3<u32>(global3.b.x, 1u, u_input.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_div_f32(242f, var_2), func_1(false))), global3.d, all(vec2<bool>(true, false))), vec4<i32>(~(u_input.c.x << (73445u % 32u)), 9704i << (firstTrailingBit(u_input.b.x) % 32u), min(select(u_input.d, u_input.d, var_0.x), -56662i), firstLeadingBit(-1i)), countOneBits(vec4<i32>(0i, _wgslsmith_div_i32(u_input.d, u_input.c.x), u_input.c.x ^ 1i, -4747i))));
    let var_4 = _wgslsmith_div_vec3_f32(global3.d, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(sign(var_3.d.x)), global3.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_3.a, 2178f), -280f, _wgslsmith_f_op_f32(f32(-1f) * -754f)) - vec3<f32>(global3.d.x, _wgslsmith_f_op_f32(select(-1775f, 365f, true)), -694f)), ((global3.b.x ^ 0u) <= func_2().x) && true)));
    let var_5 = ~4294967295u;
    global1 = var_0.zx;
    let x = u_input.a;
    s_output = StorageBuffer(var_5, -(~max(1i, -46221i)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_4.x + _wgslsmith_f_op_f32(-var_2)), var_2, _wgslsmith_f_op_f32(ceil(1253f))))), global3.d, ~_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d, -11732i), i32(-1i) * -u_input.c.x));
}

