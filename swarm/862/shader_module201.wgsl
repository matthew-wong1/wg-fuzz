struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(292f, 565f, 874f, 759f), 34479u, vec4<bool>(true, true, false, false), vec4<u32>(70728u, 1u, 431u, 0u));

var<private> global1: f32;

var<private> global2: array<u32, 23> = array<u32, 23>(50247u, 19877u, 69855u, 30679u, 68176u, 4294967295u, 24445u, 0u, 1u, 1u, 3321u, 9329u, 29411u, 15754u, 1u, 35145u, 15635u, 1u, 4294967295u, 8493u, 0u, 66u, 1u);

var<private> global3: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec4<f32>(-1000f, -592f, 158f, -871f)), Struct_4(vec4<f32>(1003f, -890f, 1000f, -488f)), Struct_4(vec4<f32>(1000f, 424f, 1059f, -1000f)), Struct_4(vec4<f32>(2091f, -366f, 1000f, -1536f)), Struct_4(vec4<f32>(660f, 420f, -418f, -813f)), Struct_4(vec4<f32>(-375f, 684f, 955f, 856f)), Struct_4(vec4<f32>(668f, 781f, -749f, -1083f)), Struct_4(vec4<f32>(1000f, 1004f, -1014f, -1294f)), Struct_4(vec4<f32>(938f, 640f, -406f, -806f)), Struct_4(vec4<f32>(1000f, -752f, -356f, -1000f)), Struct_4(vec4<f32>(287f, -1324f, -1498f, 289f)), Struct_4(vec4<f32>(1572f, -477f, -396f, -1000f)), Struct_4(vec4<f32>(870f, 258f, 2229f, 790f)), Struct_4(vec4<f32>(-1290f, -1070f, -2138f, 2538f)), Struct_4(vec4<f32>(-427f, 1000f, 124f, 1488f)), Struct_4(vec4<f32>(135f, -978f, -1662f, -558f)), Struct_4(vec4<f32>(-769f, 1678f, 1037f, -671f)), Struct_4(vec4<f32>(-2205f, -314f, -306f, 1337f)));

var<private> global4: array<i32, 12> = array<i32, 12>(-1i, -38830i, -16858i, i32(-2147483648), 3633i, -1i, 19741i, 1i, 2147483647i, 1i, 1i, 1622i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5) -> f32 {
    let var_0 = 1i;
    global3 = array<Struct_4, 18>();
    global2 = array<u32, 23>();
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.x), 161f)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1246f)))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), arg_0.c.a.x, _wgslsmith_f_op_f32(abs(585f)), arg_0.c.a.x) - global0.a), firstTrailingBit(28135u), select(!global0.c, !global0.c, all(!vec2<bool>(global0.c.x, global0.c.x))), global0.d));
    return _wgslsmith_f_op_f32(-776f + -1000f);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: f32) -> vec4<u32> {
    let var_0 = Struct_2(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 17496u, global2[_wgslsmith_index_u32(~arg_0.x, 23u)]), 1u), _wgslsmith_add_u32(65026u, ~global0.d.x)), 23u)], 12u)], Struct_1(vec4<f32>(-483f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1437f * global0.a.x)), -1097f, _wgslsmith_div_f32(1640f, 210f)), _wgslsmith_div_u32(firstTrailingBit(0u), ~(~global0.d.x)), !select(select(global0.c, global0.c, false), select(global0.c, global0.c, global0.c), global0.c.x), vec4<u32>(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(46457u, 23u)], 0u >> (global2[_wgslsmith_index_u32(global0.d.x, 23u)] % 32u)), 1u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(arg_0.x | global0.d.x, 23u)], _wgslsmith_sub_u32(4294967295u, 75262u)), ~global0.b << (~14329u % 32u))), Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1.a))), vec4<f32>(-580f, global0.a.x, -587f, _wgslsmith_f_op_f32(step(global0.a.x, -1095f))))), 0u, global0.c, countOneBits(max(global0.d, abs(vec4<u32>(4294967295u, arg_0.x, 48765u, 38859u))))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(1612f, -634f, global0.a.x, global0.a.x))))), ~(abs(78913u) << (global2[_wgslsmith_index_u32(global0.d.x, 23u)] % 32u)), !(!select(global0.c, vec4<bool>(true, global0.c.x, false, global0.c.x), true)), vec4<u32>(~global0.d.x, 1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(42520u, global2[_wgslsmith_index_u32(0u, 23u)], 0u), vec3<u32>(52651u, global2[_wgslsmith_index_u32(73785u, 23u)], 40997u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, global0.d.x, 44220u), global0.d))), Struct_1(arg_1.a, global2[_wgslsmith_index_u32(26851u, 23u)], global0.c, global0.d));
    var var_1 = var_0;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-437f, global0.a.x, 517f, arg_1.a.x), var_1.e.a) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-646f, arg_1.a.x, 1000f, 1674f), vec4<f32>(-181f, arg_2, 346f, arg_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(695f, arg_2, arg_2, arg_2)) * _wgslsmith_div_vec4_f32(var_1.b.a, arg_1.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1491f, global0.a.x, var_0.e.a.x, arg_1.a.x))), true | (abs(1u) != global2[_wgslsmith_index_u32(43909u, 23u)]))), max(~(~(~arg_0.x)), _wgslsmith_add_u32(~global0.d.x, global2[_wgslsmith_index_u32(countOneBits(max(var_1.e.b, 18934u)), 23u)])), !(!(!vec4<bool>(false, false, global0.c.x, var_0.d.c.x))), vec4<u32>(abs(1u), arg_0.x, ~_wgslsmith_clamp_u32(var_0.b.d.x, 7709u, var_0.b.b) << (42647u % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(~11794u, arg_0.x), 4294967295u)));
    var_1 = var_0;
    var var_2 = Struct_5(_wgslsmith_dot_vec4_u32(min(var_0.c.d << (global0.d % vec4<u32>(32u)), var_1.e.d), _wgslsmith_mult_vec4_u32(vec4<u32>(~48910u, var_1.b.d.x, 61524u, _wgslsmith_div_u32(global0.b, 0u)), vec4<u32>(~41954u, 0u, 36119u, abs(4294967295u)))), var_1.e.c.xx, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(global0.d.xz, var_0.c.d.xx), ~vec2<u32>(77911u, 67947u)), 18u)]);
    return vec4<u32>(abs((arg_0.x >> (1u % 32u)) << (global2[_wgslsmith_index_u32(~var_0.c.d.x, 23u)] % 32u)) << (global0.b % 32u), global2[_wgslsmith_index_u32(select(var_2.a, firstTrailingBit(_wgslsmith_dot_vec4_u32(var_1.c.d, _wgslsmith_mult_vec4_u32(global0.d, var_0.e.d))), false), 23u)], reverseBits(1u), ~var_2.a);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    var var_0 = global0.c.zx;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1286f, arg_1.x, -1040f, -489f) + global0.a))), vec4<f32>(arg_1.x, arg_1.x, global0.a.x, 1f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global0.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(425f, global0.a.x, global0.a.x, global0.a.x)))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(0u, 23u)]) >> (~37219u % 32u), 0u), _wgslsmith_div_u32(~98152u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.d, global0.d), 23u)] & _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, 28725u), global0.d.xx))), global0.c, func_4(global0.d.ww | firstTrailingBit(~global0.d.xy), Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(-697f, global0.a.x, arg_1.x, arg_1.x), _wgslsmith_f_op_vec4_f32(-global0.a))), _wgslsmith_f_op_f32(func_3(Struct_5(41460u << (1u % 32u), vec2<bool>(true, var_0.x), global3[_wgslsmith_index_u32(0u, 18u)])))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1214f, -1000f, global0.a.x)))), ~global0.d.x, vec4<bool>(var_0.x, select(!all(vec4<bool>(false, true, true, true)), global0.c.x, !global0.c.x), true, var_0.x), global0.d);
    var var_1 = vec3<bool>(false, all(select(!vec3<bool>(var_0.x, global0.c.x, true), global0.c.zzz, !(global0.a.x < 399f))), false);
    let var_2 = !global0.c.x;
    return ~1u;
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    global0 = Struct_1(arg_0.c.a, reverseBits(abs(func_2(u_input.b, _wgslsmith_f_op_vec2_f32(-global0.a.xx)))), vec4<bool>(!all(vec4<bool>(true, arg_0.b.x, global0.c.x, global0.c.x)), !all(!vec3<bool>(global0.c.x, false, global0.c.x)), arg_0.b.x, !any(!vec4<bool>(true, arg_0.b.x, false, true))), global0.d);
    var var_0 = abs(-vec3<i32>(0i, 1i, 9511i ^ u_input.a.x)) << (min(~(~firstTrailingBit(global0.d.xzw)), max(max(vec3<u32>(45878u, 0u, arg_0.a), vec3<u32>(global0.d.x, global0.b, 1u)), ~(vec3<u32>(31862u, arg_0.a, global0.d.x) & global0.d.zzx))) % vec3<u32>(32u));
    global2 = array<u32, 23>();
    var var_1 = arg_0.c.a.zxy;
    global2 = array<u32, 23>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(arg_0.c.a, _wgslsmith_f_op_vec4_f32(global0.a - global0.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c.a * vec4<f32>(var_1.x, global0.a.x, 857f, global0.a.x)), vec4<f32>(arg_0.c.a.x, arg_0.c.a.x, 365f, var_1.x)), arg_0.b.x)))), arg_0.a, global0.c, global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_5(~countOneBits(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(69917u, 23u)], 1u, global0.d.x)), global0.c.zw, Struct_4(vec4<f32>(1000f, global0.a.x, -957f, _wgslsmith_f_op_f32(-global0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.xx);
}

