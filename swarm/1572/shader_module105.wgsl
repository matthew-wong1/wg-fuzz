struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, true, false), vec3<bool>(true, true, true), -1607f, -988f, vec2<bool>(false, false));

var<private> global1: array<Struct_2, 23>;

var<private> global2: array<i32, 24>;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-12679i, vec2<u32>(44871u, 34787u), 81715i, true), Struct_1(-11476i, vec2<u32>(51945u, 25540u), -22i, false), Struct_1(25231i, vec2<u32>(39460u, 0u), -15456i, false), Struct_1(5094i, vec2<u32>(4294967295u, 0u), 51363i, false), Struct_1(-36373i, vec2<u32>(47988u, 0u), -1i, true), Struct_1(-57526i, vec2<u32>(1u, 1u), -16058i, true), Struct_1(i32(-2147483648), vec2<u32>(0u, 14157u), -39474i, true), Struct_1(21758i, vec2<u32>(25926u, 1u), 2147483647i, true), Struct_1(-29654i, vec2<u32>(1u, 0u), -29740i, true), Struct_1(3197i, vec2<u32>(4641u, 61261u), -136i, true), Struct_1(-48753i, vec2<u32>(4294967295u, 19137u), 2147483647i, false), Struct_1(i32(-2147483648), vec2<u32>(1u, 4294967295u), i32(-2147483648), true), Struct_1(2147483647i, vec2<u32>(3966u, 31487u), 2147483647i, true), Struct_1(-38630i, vec2<u32>(0u, 0u), i32(-2147483648), false), Struct_1(-62340i, vec2<u32>(4294967295u, 47396u), -1198i, false), Struct_1(-11288i, vec2<u32>(4478u, 0u), -3148i, true), Struct_1(i32(-2147483648), vec2<u32>(1u, 13414u), 18871i, false), Struct_1(-44670i, vec2<u32>(0u, 12423u), 18843i, true), Struct_1(-9910i, vec2<u32>(1u, 4294967295u), -12874i, false), Struct_1(-46488i, vec2<u32>(16653u, 27888u), -13568i, false), Struct_1(0i, vec2<u32>(60812u, 39345u), 22388i, false), Struct_1(2147483647i, vec2<u32>(4294967295u, 1u), -23555i, false), Struct_1(-14935i, vec2<u32>(0u, 4294967295u), 17925i, false), Struct_1(i32(-2147483648), vec2<u32>(33990u, 4294967295u), -35067i, false), Struct_1(-27747i, vec2<u32>(51214u, 103040u), i32(-2147483648), false), Struct_1(-1i, vec2<u32>(4294967295u, 0u), 1985i, true), Struct_1(i32(-2147483648), vec2<u32>(29884u, 4294967295u), -32509i, false), Struct_1(-61150i, vec2<u32>(64916u, 4294967295u), 1i, false), Struct_1(-1i, vec2<u32>(1u, 4294967295u), -1i, true), Struct_1(23131i, vec2<u32>(0u, 4294967295u), -27461i, true), Struct_1(0i, vec2<u32>(35061u, 24670u), 0i, false), Struct_1(-1i, vec2<u32>(0u, 0u), -34860i, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    global2 = array<i32, 24>();
    var var_0 = Struct_2(select(global0.b, select(select(vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(global0.e.x, false, global0.b.x), all(vec4<bool>(global0.a.x, false, global0.b.x, true))), select(select(vec3<bool>(true, global0.a.x, global0.a.x), vec3<bool>(false, false, true), global0.b.x), !vec3<bool>(true, true, global0.a.x), vec3<bool>(global0.b.x, global0.a.x, false)), all(vec4<bool>(true, global0.a.x, global0.e.x, true))), vec3<bool>(!(global0.e.x | true), true, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)]) < (global2[_wgslsmith_index_u32(1u, 24u)] << (0u % 32u)))), global0.b, _wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(-1443f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(176f + global0.c)))), global0.d, vec2<bool>(global0.b.x, true));
    global2 = array<i32, 24>();
    var var_1 = !vec2<bool>(true, var_0.a.x);
    var var_2 = global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 23u)];
    return vec4<f32>(850f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(822f * var_2.d))) - -412f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1743f * _wgslsmith_f_op_f32(f32(-1f) * -738f)), -1226f)))), var_0.c);
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = array<Struct_2, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()));
    var var_1 = _wgslsmith_dot_vec2_u32(~firstTrailingBit(~vec2<u32>(u_input.a.x, 39173u)) & ~vec2<u32>(62146u, 1u), ~u_input.a);
    let var_2 = firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(0i, global2[_wgslsmith_index_u32(4294967295u, 24u)], -15517i)) ^ _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(21376i, global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(295u, 24u)]), vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], -3001i)), -2147483647i | global2[_wgslsmith_index_u32(39426u, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)] ^ -1i), -(vec3<i32>(-1i, 35806i, global2[_wgslsmith_index_u32(4294967295u, 24u)]) >> (vec3<u32>(u_input.a.x, 85178u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(2147483647i, -1i, global2[_wgslsmith_index_u32(7472u, 24u)])), -((vec3<i32>(29544i, global2[_wgslsmith_index_u32(12695u, 24u)], 29094i) | vec3<i32>(1i, global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(6297u, 24u)])) << (select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(51443u, u_input.a.x, 0u), vec3<bool>(arg_0, false, arg_0)) % vec3<u32>(32u))));
    global2 = array<i32, 24>();
    return global3[_wgslsmith_index_u32(~(~(~u_input.a.x) << (~_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 1946u, 36510u), vec3<u32>(4309u, 70300u, 112848u)), vec3<u32>(u_input.a.x, u_input.a.x, 41669u)) % 32u)), 32u)];
}

fn func_1() -> vec2<bool> {
    let var_0 = func_2(any(vec3<bool>(select(!global0.a.x, global0.a.x, all(vec2<bool>(global0.e.x, global0.e.x))), any(select(vec4<bool>(false, global0.b.x, true, global0.a.x), vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x), vec4<bool>(true, global0.e.x, false, true))), global0.e.x)));
    let var_1 = func_2(!global0.a.x);
    var var_2 = Struct_2(vec3<bool>(!select(true, 1100f > global0.d, func_2(false).d), var_0.d, true), select(!vec3<bool>(any(vec4<bool>(true, false, var_0.d, global0.e.x)), func_2(false).d, select(true, false, global0.b.x)), global0.a, select(select(global0.a, select(vec3<bool>(var_0.d, false, true), global0.b, global0.a), vec3<bool>(var_1.d, false, false)), vec3<bool>(all(vec3<bool>(true, true, true)), false, true), select(global0.a, select(vec3<bool>(false, false, false), vec3<bool>(global0.b.x, true, var_0.d), var_1.d), select(vec3<bool>(var_0.d, false, false), global0.a, global0.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_3()).x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1185f, -1311f)))))), _wgslsmith_f_op_f32(-global0.c))), !select(global0.b.xz, !vec2<bool>(global0.b.x, false), select(select(vec2<bool>(var_1.d, false), vec2<bool>(var_0.d, var_0.d), true), select(vec2<bool>(var_0.d, true), vec2<bool>(false, false), vec2<bool>(global0.a.x, global0.a.x)), true)));
    let var_3 = !(!vec4<bool>(any(vec4<bool>(var_0.d, var_0.d, false, false)), !var_1.d && true, any(vec3<bool>(global0.a.x, false, true)), false));
    var var_4 = var_2.d;
    return vec2<bool>(any(vec3<bool>(all(!var_3), true, any(vec3<bool>(true, var_1.d, var_1.d)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)), global0.c)))));
    let var_1 = Struct_2(select(vec3<bool>(all(vec4<bool>(global0.a.x, global0.e.x, global0.a.x, global0.a.x)), false, true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1059f)) - _wgslsmith_f_op_f32(-1345f * -1932f)) > -833f), vec3<bool>(any(!global0.e) || !(var_0 < var_0), select(true, !global0.a.x, !global0.a.x | all(vec2<bool>(global0.a.x, global0.a.x))), any(!vec4<bool>(global0.a.x, false, global0.b.x, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1388f * global0.d))), _wgslsmith_f_op_f32(step(-242f, var_0)), select(vec2<bool>(true, all(global0.b.yz)), select(select(select(global0.a.yx, global0.e, true), !vec2<bool>(false, global0.e.x), func_1()), !vec2<bool>(global0.a.x, false), false), false));
    var var_2 = var_1.e;
    let var_3 = Struct_1(-global2[_wgslsmith_index_u32(countOneBits(firstTrailingBit(1u)), 24u)], u_input.a, max(abs(global2[_wgslsmith_index_u32(u_input.a.x, 24u)] & global2[_wgslsmith_index_u32(u_input.a.x, 24u)]) >> (~u_input.a.x % 32u), select(17269i, 11390i, true) | global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(80196u, u_input.a.x, 4294967295u) & vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(0u, 16720u, 54543u)), 24u)]), !all(select(var_1.b, select(var_1.b, var_1.b, var_2.x), vec3<bool>(false, false, global0.a.x))));
    global3 = array<Struct_1, 32>();
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-1269f, ~(~var_4.b.x));
}

