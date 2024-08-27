struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-1028f, 1000f, 122f, -488f, 631f, 1000f, -1003f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2144f * arg_0.x), arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -384f), true)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-935f - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(34509u, 7u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 7u)])))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-753f + -1035f), _wgslsmith_div_f32(arg_0.x, 2488f), global0[_wgslsmith_index_u32(u_input.c, 7u)] == arg_0.x)), _wgslsmith_f_op_f32(step(-1027f, -729f)))), vec4<bool>(true, any(vec2<bool>(true, true)), !all(vec4<bool>(true, true, true, true)), true), false);
    let var_2 = -select(-vec3<i32>(-u_input.a, u_input.a >> (u_input.b % 32u), _wgslsmith_mod_i32(10655i, 2147483647i)), select(abs(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 9535i))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -19728i), vec2<i32>(-1i, -2147483647i)), _wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a))), (u_input.c | 4294967295u) < u_input.b), select(select(!var_1.c.wwx, var_1.c.ywx, true), vec3<bool>(var_1.d, var_0.a <= -1545f, all(vec2<bool>(true, var_1.c.x))), select(select(vec3<bool>(false, var_1.c.x, true), vec3<bool>(var_1.d, var_1.d, false), false), select(vec3<bool>(var_1.c.x, var_1.d, var_1.d), vec3<bool>(var_1.d, false, var_1.c.x), var_1.c.yzx), var_1.d)));
    var_0 = var_1.b;
    var_0 = Struct_1(2246f);
    return var_1.d;
}

fn func_2() -> Struct_3 {
    let var_0 = true;
    global0 = array<f32, 7>();
    let var_1 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b) << (u_input.b % 32u), 7u)]), Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~u_input.c, u_input.c, u_input.b), 7u)]), select(vec4<bool>(true && (u_input.b > u_input.c), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(826f, 1181f) - vec2<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 7u)]))), true, true), select(select(!vec4<bool>(var_0, var_0, var_0, false), select(vec4<bool>(var_0, false, var_0, false), vec4<bool>(false, var_0, var_0, var_0), var_0), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(true, false, var_0, var_0), false)), !select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(false, var_0, var_0, var_0)), select(!vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), false)), select(!(!vec4<bool>(var_0, false, var_0, true)), !vec4<bool>(var_0, true, var_0, var_0), any(vec4<bool>(var_0, var_0, var_0, var_0)) && !var_0)), false);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(max(min(4294967295u, ~u_input.b), 1u), 7u)])) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b & _wgslsmith_dot_vec3_u32(vec3<u32>(63035u, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, u_input.c)), 7u)]))));
    var var_3 = Struct_3(u_input.c, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.c, 8867u, 17975u)), vec3<u32>(u_input.b << (u_input.b % 32u), u_input.b, 0u) << (reverseBits(vec3<u32>(u_input.c, u_input.b, 1u) << (vec3<u32>(u_input.b, u_input.c, 34967u) % vec3<u32>(32u))) % vec3<u32>(32u))), ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(7451u, 4294967295u), abs(vec2<u32>(u_input.b, u_input.c)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 7u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-725f + var_2), _wgslsmith_div_f32(1021f, -477f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 257f))), select(select(!var_1.c.xy, select(var_1.c.xw, var_1.c.xz, var_1.c.x), var_1.c.xw), select(select(var_1.c.yz, vec2<bool>(true, var_0), var_1.d), select(var_1.c.xw, vec2<bool>(true, true), var_1.c.wz), !vec2<bool>(var_1.c.x, false)), func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 7u)], -435f), vec2<f32>(-1694f, var_2))))))));
    return Struct_3(abs(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, u_input.c)), var_3.b.xx)), ~(_wgslsmith_clamp_vec3_u32(var_3.b, ~vec3<u32>(4294967295u, u_input.c, 1u), var_3.b) | vec3<u32>(u_input.c, _wgslsmith_clamp_u32(var_3.a, 23466u, u_input.c), ~22989u)), _wgslsmith_sub_u32(~var_3.b.x, var_3.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_3.d, vec2<f32>(global0[_wgslsmith_index_u32(~21255u, 7u)], var_3.d.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> Struct_2 {
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    var var_0 = max(vec4<i32>(abs(max(u_input.a, u_input.a)), u_input.a, u_input.a, u_input.a) << ((~vec4<u32>(0u, 83428u, 12798u, arg_0.c) >> (vec4<u32>(0u, ~1u, ~arg_0.a, select(4294967295u, arg_0.c, arg_2)) % vec4<u32>(32u))) % vec4<u32>(32u)), -(vec4<i32>(-1i) * -(vec4<i32>(33565i, u_input.a, 2147483647i, u_input.a) << (vec4<u32>(1u, 64366u, arg_0.c, arg_0.c) % vec4<u32>(32u)))));
    return Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~4294967295u), (1u ^ arg_0.a) ^ (23535u << (u_input.c % 32u)), ~4294967295u), 7u)]), Struct_1(_wgslsmith_f_op_f32(exp2(arg_0.d.x))), select(select(select(select(vec4<bool>(true, false, false, arg_2), vec4<bool>(arg_2, false, true, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, arg_2, true, true), vec4<bool>(false, false, arg_2, arg_2)), arg_0.c <= 0u), vec4<bool>(false, !arg_2, arg_2, arg_2), false), select(select(vec4<bool>(arg_2, true, true, arg_2), select(vec4<bool>(false, arg_2, false, false), vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(false, arg_2, true, true)), !vec4<bool>(true, false, arg_2, arg_2)), !(!vec4<bool>(arg_2, arg_2, true, true)), !select(vec4<bool>(arg_2, arg_2, true, arg_2), vec4<bool>(false, true, arg_2, arg_2), false)), !(_wgslsmith_div_f32(arg_0.d.x, -2053f) == _wgslsmith_f_op_f32(f32(-1f) * -1738f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1059f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x)))));
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a, -2673f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(413f, _wgslsmith_div_f32(arg_0.a.a, global0[_wgslsmith_index_u32(4294967295u, 7u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) + global0[_wgslsmith_index_u32(~u_input.b, 7u)])), _wgslsmith_f_op_f32(-115f * arg_0.a.a)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(select(~31148u ^ u_input.b, u_input.c, any(!arg_0.c.zxx)), 7u)])));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(sign(var_1.a))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -525f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(304f)), var_1.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(132f + -376f), -203f)), any(vec3<bool>(false, arg_0.d, arg_0.d))))), _wgslsmith_f_op_f32(-arg_0.a.a));
    let var_2 = vec2<bool>(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-410f, -1000f) - vec2<f32>(1290f, global0[_wgslsmith_index_u32(1u, 7u)])) * vec2<f32>(var_1.a, -1564f)) - vec2<f32>(_wgslsmith_f_op_f32(var_1.a * 857f), 740f))), arg_0.c.x);
    let var_3 = _wgslsmith_f_op_f32(-1246f * _wgslsmith_f_op_f32(1720f * var_0.x));
    return ~0i;
}

fn func_6(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(func_4(func_2(), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 7u)])) + -1019f), 1058f), all(vec2<bool>(true, true))).b, func_4(func_2(), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c & 0u, 7u)], _wgslsmith_f_op_f32(-789f + _wgslsmith_f_op_f32(f32(-1f) * -1770f))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(u_input.b), firstLeadingBit(u_input.b)), 7u)] >= global0[_wgslsmith_index_u32(func_2().a, 7u)]).a, !func_4(Struct_3(~4294967295u, ~vec3<u32>(1u, 1u, u_input.c), 14397u, vec2<f32>(-981f, global0[_wgslsmith_index_u32(u_input.c, 7u)])), vec2<f32>(_wgslsmith_f_op_f32(abs(1309f)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 7u)]))), true).c, false);
    global0 = array<f32, 7>();
    let var_1 = var_0.c.x;
    var var_2 = (func_5(var_0) & _wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(49491i, 62583i, -2147483647i), ~vec3<i32>(1i, -34260i, 68195i)), -48532i)) > func_5(var_0);
    global0 = array<f32, 7>();
    return var_0.b;
}

fn func_7(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    global0 = array<f32, 7>();
    let var_0 = any(vec3<bool>(arg_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a))), false, false));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * global0[_wgslsmith_index_u32(u_input.c, 7u)]));
    var var_2 = Struct_1(-1370f);
    let var_3 = select(select(vec4<bool>(any(func_4(Struct_3(u_input.c, vec3<u32>(34882u, u_input.b, u_input.b), 65150u, vec2<f32>(arg_0, 542f)), vec2<f32>(1139f, 543f), true).c), true, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_1.a))), -2147483647i <= select(u_input.a, 68736i, false)), select(!(!vec4<bool>(false, var_0, false, false)), !vec4<bool>(var_0, var_0, true, var_0), 1i < u_input.a), any(!select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, true, true), vec3<bool>(var_0, true, false)))), vec4<bool>(select(!var_0, true, true), var_0, any(vec3<bool>(var_0, !var_0, true)), true), select(!(!(!vec4<bool>(var_0, var_0, var_0, var_0))), vec4<bool>(true, any(select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, false, var_0))), true, u_input.b != abs(u_input.b)), func_4(func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-756f, 1000f))), !(!var_0)).d));
    return Struct_3(~u_input.b, ~(~(~(~vec3<u32>(1u, u_input.c, u_input.c)))), 44021u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(44681u, 7u)] - arg_1.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.c), 7u)], arg_0)), vec2<bool>(var_0, var_3.x))));
}

fn func_1() -> Struct_3 {
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    return func_7(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c, 3595u), 7u)], func_6(func_5(func_4(func_2(), vec2<f32>(-554f, global0[_wgslsmith_index_u32(14426u, 7u)]), true)), ~1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_7(-455f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.x, global0[_wgslsmith_index_u32(47154u, 7u)]))))));
    var_0 = func_7(_wgslsmith_f_op_f32(-var_0.d.x), Struct_1(1020f));
    var var_1 = func_2();
    var var_2 = _wgslsmith_add_u32(var_0.a, _wgslsmith_clamp_u32(28509u, ~29049u, ~var_0.a));
    var_2 = u_input.c;
    var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), ~var_1.b.xx);
    let x = u_input.a;
    s_output = StorageBuffer(-317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(func_6(-2147483647i, u_input.a).a)) + global0[_wgslsmith_index_u32(83102u, 7u)]) - _wgslsmith_f_op_f32(-func_4(Struct_3(24521u, vec3<u32>(var_0.a, 1u, 67302u), u_input.c, vec2<f32>(var_0.d.x, var_0.d.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, -1458f) - var_0.d), false).b.a)), firstTrailingBit(_wgslsmith_div_i32(~u_input.a, -firstLeadingBit(15373i))), ~max(firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, u_input.c, var_1.c, 0u))), vec4<u32>(~6747u, u_input.c, var_0.a, u_input.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.d, vec2<f32>(_wgslsmith_f_op_f32(-1624f + 738f), func_7(148f, Struct_1(-1629f)).d.x))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(380f - -1001f), _wgslsmith_f_op_f32(ceil(-1503f)))), _wgslsmith_f_op_f32(step(663f, _wgslsmith_f_op_f32(f32(-1f) * -652f))))));
}

