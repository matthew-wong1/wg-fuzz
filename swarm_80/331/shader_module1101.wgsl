struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<f32>(1845f, 676f, -1249f), 1040f, 109964u, vec3<f32>(-705f, 447f, -1309f)), Struct_1(vec3<f32>(-678f, -1000f, 344f), 1523f, 0u, vec3<f32>(1948f, 1000f, 478f)), Struct_1(vec3<f32>(692f, 605f, -561f), -1000f, 62509u, vec3<f32>(-223f, 537f, 770f)), Struct_1(vec3<f32>(731f, 591f, -1111f), -745f, 4294967295u, vec3<f32>(1619f, -528f, -105f)), Struct_1(vec3<f32>(669f, 2163f, -673f), -412f, 57717u, vec3<f32>(-662f, 1000f, -237f)), Struct_1(vec3<f32>(607f, 323f, 192f), 891f, 30800u, vec3<f32>(935f, 1096f, -1681f)), Struct_1(vec3<f32>(-318f, -579f, -234f), -885f, 54260u, vec3<f32>(-2347f, -424f, -629f)), Struct_1(vec3<f32>(1860f, 359f, 748f), 1289f, 34481u, vec3<f32>(-1757f, 327f, -355f)), Struct_1(vec3<f32>(-1590f, -191f, 1000f), -605f, 66324u, vec3<f32>(-2435f, -407f, -357f)), Struct_1(vec3<f32>(-855f, -473f, 153f), 1881f, 0u, vec3<f32>(-2240f, 508f, -791f)));

var<private> global1: array<i32, 30>;

var<private> global2: vec4<i32>;

var<private> global3: Struct_4 = Struct_4(Struct_1(vec3<f32>(-2016f, 452f, -1257f), -563f, 0u, vec3<f32>(-645f, -653f, -114f)));

var<private> global4: array<Struct_3, 11>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = vec4<bool>(any(select(select(!vec3<bool>(arg_0.a, false, false), select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(true, true, true), vec3<bool>(false, false, arg_0.a)), select(vec3<bool>(true, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), false)), select(!vec3<bool>(true, arg_0.a, false), select(vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(false, false, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.a)), select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, true), false)), vec3<bool>(all(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a)), true, true))), arg_0.a, countOneBits(global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.b.x), 30u)]) == 49261i, true | select(arg_0.a, all(select(vec3<bool>(false, false, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, arg_0.a))), !(!arg_0.a)));
    var var_1 = vec4<bool>(false, !any(var_0), !select(arg_0.a, all(var_0.xw) || (57766u != u_input.a.x), 1i == _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(global3.a.c, 30u)], global1[_wgslsmith_index_u32(0u, 30u)])), !all(var_0));
    var_1 = vec4<bool>(any(select(vec2<bool>(all(vec4<bool>(false, arg_0.a, true, false)), false), !select(vec2<bool>(var_0.x, var_1.x), var_0.ww, false), var_1.xz)), var_0.x && all(select(!var_1.yyw, !vec3<bool>(true, true, var_1.x), all(var_0.yy))), !((true && any(vec4<bool>(var_1.x, false, true, false))) && true), !(~55942u > u_input.a.x) | true);
    var_1 = var_0;
    global2 = _wgslsmith_div_vec4_i32(max(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.c.x, -14082i, 13030i, global2.x)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, global2.x, 1i, global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec4<i32>(global2.x, global2.x, global1[_wgslsmith_index_u32(6581u, 30u)], global1[_wgslsmith_index_u32(global3.a.c, 30u)])), vec4<i32>(-24907i, u_input.c.x, global1[_wgslsmith_index_u32(19660u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)]), vec4<bool>(false, true, true, true))), vec4<i32>(reverseBits(_wgslsmith_sub_i32(1i, -32352i)), global2.x, _wgslsmith_sub_i32(-2147483647i, max(u_input.d, global1[_wgslsmith_index_u32(arg_0.b.c, 30u)])), 1i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-25228i, -10420i, global2.x, 32624i), min(vec4<i32>(-2147483647i, -11063i, -1i, global1[_wgslsmith_index_u32(63873u, 30u)]) | vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 790i, u_input.d, -5014i), reverseBits(vec4<i32>(global2.x, 0i, u_input.c.x, -9254i)))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(381f + arg_0.c.d.x), _wgslsmith_f_op_f32(min(-1000f, arg_0.c.b))))))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(!(_wgslsmith_f_op_f32(-arg_1.b.d.x) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1343f)), _wgslsmith_f_op_f32(721f - arg_0.b.a.x), true))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.a.x), arg_1.c.a.x, _wgslsmith_f_op_f32(func_3(Struct_2(arg_0.a, arg_0.b, Struct_1(vec3<f32>(-523f, -886f, 1578f), -602f, arg_1.b.c, arg_1.c.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.c.d.x - -1000f), _wgslsmith_f_op_f32(-global3.a.d.x)))), u_input.b.x, global3.a.d), Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.c.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(373f)))), ~(~arg_1.c.c), _wgslsmith_div_vec3_f32(arg_1.c.a, _wgslsmith_div_vec3_f32(vec3<f32>(1519f, 759f, arg_0.b.b), _wgslsmith_div_vec3_f32(global3.a.a, vec3<f32>(1200f, 541f, arg_1.b.b))))));
    let var_1 = select(!(!(!(!vec2<bool>(false, arg_0.a)))), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, var_0.a), vec2<bool>(arg_1.a, arg_0.a), vec2<bool>(arg_1.a, arg_1.a)), !vec2<bool>(arg_0.a, arg_1.a)), select(!vec2<bool>(false, arg_1.a), vec2<bool>(true, true), true), !(!vec2<bool>(arg_0.a, var_0.a))), select(select(vec2<bool>(true, false), select(vec2<bool>(true, arg_1.a), vec2<bool>(true, false), arg_1.a), vec2<bool>(true, true)), !select(vec2<bool>(false, arg_1.a), vec2<bool>(false, false), arg_1.a), var_0.a), select(true, any(vec2<bool>(false, arg_1.a)), arg_1.a & true) || arg_1.a), true);
    var var_2 = var_0;
    global3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(var_0.c.d)), 1f, countOneBits(~(4294967295u & arg_0.b.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.b), -112f, _wgslsmith_f_op_f32(floor(897f))))));
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.c.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.a.x, 230f, -1135f) * arg_0.b.d)))), _wgslsmith_f_op_f32(-global3.a.d.x), ~(_wgslsmith_div_u32(var_0.c.c, 0u) | min(arg_1.c.c, arg_0.b.c)), var_2.c.d));
    return vec3<u32>(~0u, ~4294967295u, 1u);
}

fn func_1(arg_0: vec2<f32>) -> vec2<f32> {
    var var_0 = select(_wgslsmith_add_vec3_u32(select(~vec3<u32>(u_input.a.x, 27199u, 48934u), func_2(Struct_2(false, Struct_1(global3.a.d, global3.a.a.x, 21937u, global3.a.d), global3.a), Struct_2(true, global3.a, global0[_wgslsmith_index_u32(global3.a.c, 10u)])), true), _wgslsmith_clamp_vec3_u32(vec3<u32>(35268u, u_input.a.x, global3.a.c), vec3<u32>(5500u, global3.a.c, 4294967295u), firstLeadingBit(u_input.a))) ^ u_input.b, u_input.b, !any(vec2<bool>(true, true)) && false);
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>((~global3.a.c ^ u_input.a.x) | ~0u, var_0.x, 1u), func_2(Struct_2(false, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.d.x, global3.a.b, -1124f)), arg_0.x, select(0u, var_0.x, true), _wgslsmith_f_op_vec3_f32(-global3.a.a)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global3.a.d)), -241f, ~17643u, vec3<f32>(arg_0.x, 622f, -1609f))), Struct_2(all(vec2<bool>(true, true)), global3.a, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.b, 356f, arg_0.x)), global3.a.a.x, _wgslsmith_clamp_u32(global3.a.c, 4294967295u, var_0.x), vec3<f32>(global3.a.b, global3.a.a.x, arg_0.x)))));
    let var_1 = _wgslsmith_div_u32(~_wgslsmith_clamp_u32(~global3.a.c, ~1u, u_input.b.x) | 4294967295u, abs(~var_0.x & global3.a.c));
    global4 = array<Struct_3, 11>();
    let var_2 = var_0.x;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -281f)), 1000f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(436f, global3.a.a.x), global3.a.d.zz)) - _wgslsmith_f_op_vec2_f32(-arg_0)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-global3.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.d.x) * global3.a.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 30>();
    let var_0 = 0u;
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global3.a.d.zz, global3.a.a.yy) + _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.a.xz)))));
    global2 = abs(vec4<i32>(-global1[_wgslsmith_index_u32(firstLeadingBit(45953u), 30u)], 24659i, ~(-u_input.c.x), -2147483647i)) << (vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), vec3<u32>(global3.a.c, var_0, 30765u), _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(4294967295u, 1u, 0u))), ~u_input.a), global3.a.c, 25465u, 85589u) % vec4<u32>(32u));
    var var_3 = global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(min(24795u, global3.a.c), global3.a.c) << ((global3.a.c ^ _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, 40341u, var_0))) % 32u), 41541u), 11u)];
    let var_4 = Struct_2(all(vec2<bool>(!(!var_1), true)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.a.a.x + -1000f), -161f, var_1)), global3.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -732f))), var_2.x, 78595u, _wgslsmith_f_op_vec3_f32(step(global3.a.a, global3.a.d))), global0[_wgslsmith_index_u32(func_2(Struct_2(true, Struct_1(global3.a.d, global3.a.b, 1u >> (var_0 % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.d.x, 148f, global3.a.b))), global0[_wgslsmith_index_u32(firstTrailingBit(var_0) | func_2(Struct_2(true, Struct_1(vec3<f32>(var_2.x, global3.a.b, 1839f), -1157f, global3.a.c, vec3<f32>(1652f, var_2.x, global3.a.b)), Struct_1(global3.a.a, global3.a.a.x, 95254u, global3.a.a)), Struct_2(var_1, Struct_1(vec3<f32>(global3.a.b, var_2.x, -876f), 2713f, global3.a.c, vec3<f32>(1315f, var_2.x, var_2.x)), Struct_1(global3.a.a, -779f, 47614u, global3.a.d))).x, 10u)]), Struct_2(_wgslsmith_mult_i32(global2.x, 1i) < ~74652i, global0[_wgslsmith_index_u32(var_0, 10u)], Struct_1(_wgslsmith_f_op_vec3_f32(select(global3.a.a, vec3<f32>(var_2.x, -431f, var_2.x), var_1)), _wgslsmith_f_op_f32(exp2(var_2.x)), ~global3.a.c, vec3<f32>(395f, global3.a.d.x, global3.a.b)))).x, 10u)]);
    global2 = abs(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d >> (0u % 32u), -1i, var_3.a ^ 2147483647i, 13984i & global1[_wgslsmith_index_u32(88835u, 30u)]), abs(vec4<i32>(-1i, 63244i, -1i, global1[_wgslsmith_index_u32(global3.a.c, 30u)]) >> (vec4<u32>(26266u, 51144u, var_4.c.c, var_0) % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(global3.a.a.zy, _wgslsmith_div_vec2_f32(vec2<f32>(-351f, -870f), var_4.b.a.xx))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.c.b, var_2.x)))) + var_2), 1f, 2147483647i, abs(vec4<u32>(1u & var_4.b.c, firstLeadingBit(global3.a.c), _wgslsmith_mult_u32(12470u, u_input.a.x), ~var_0) ^ ~(~vec4<u32>(80491u, 0u, 1u, 16241u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(global3.a.a.zz)).x), var_2.x, 677f));
}

