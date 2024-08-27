struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(false, false, true, false), Struct_1(-27811i, 0i), Struct_1(3108i, 2814i));

var<private> global2: array<i32, 15> = array<i32, 15>(20813i, 2147483647i, -3582i, -1i, -1i, -1i, -15361i, 0i, -11598i, -26382i, -19196i, 2147483647i, 16887i, 2147483647i, 54997i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    global2 = array<i32, 15>();
    global1 = global0[_wgslsmith_index_u32(u_input.a, 1u)];
    let var_0 = 1u;
    let var_1 = vec3<u32>(~u_input.a, abs(~(abs(var_0) << (4294967295u % 32u))), var_0 << (10603u % 32u));
    var var_2 = vec4<bool>(global1.a.x, !(!(!(true & global1.a.x))), true, !(!global1.a.x));
    return Struct_2(vec4<bool>(true, true, true, true), arg_3, arg_1);
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    global1 = Struct_2(vec4<bool>(global1.a.x, false, false, arg_0.a.x && ((true & arg_0.a.x) && true)), Struct_1(global2[_wgslsmith_index_u32(abs(35422u), 15u)], 1i), func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(435f, -1416f, 1458f), vec3<f32>(583f, -1102f, -478f))), vec3<f32>(-465f, -328f, _wgslsmith_f_op_f32(-874f + -243f)))), Struct_1(i32(-1i) * -21658i, 2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-806f, 1927f) * vec2<f32>(-1043f, 1000f)) - vec2<f32>(1f, 1f)), Struct_1(arg_0.b.a, global2[_wgslsmith_index_u32(reverseBits(u_input.d >> (4294967295u % 32u)), 15u)])).b);
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-258f)) + _wgslsmith_f_op_f32(max(-1122f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 652f))))), _wgslsmith_f_op_f32(-1280f * 609f), true));
    var var_1 = _wgslsmith_mod_vec4_u32(~(~(~(~vec4<u32>(u_input.c, u_input.a, u_input.c, 27982u)))), abs(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(16640u, u_input.d, u_input.d, 0u)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(17503u, u_input.a, 4294967295u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.d, 0u, u_input.a), vec4<u32>(u_input.d, u_input.c, 81732u, u_input.a))))));
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1603f, 546f, 493f), vec3<f32>(-1607f, -517f, -1321f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2305f, 642f, 877f)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-299f, 188f, -527f), vec3<f32>(-2515f, 388f, 444f))))))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(721f, -2083f, -1626f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-594f, -1000f, -2451f), vec3<f32>(1927f, -1303f, -582f), true)))), Struct_1(reverseBits(min(21228i, u_input.b.x)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(47771i, global1.c.b, u_input.b.x, global2[_wgslsmith_index_u32(var_1.x, 15u)]), vec4<i32>(u_input.b.x, arg_0.c.a, -1i, arg_0.b.b), arg_0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c.a, u_input.b.x, 1i, arg_0.b.a), vec4<i32>(u_input.b.x, arg_0.c.b, 0i, u_input.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-665f))), -213f), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-576f, 154f, 1000f), vec3<f32>(244f, -244f, -363f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1005f, -121f, 1000f)))), Struct_1(_wgslsmith_mult_i32(global1.b.b, 1i), 1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-349f, -120f)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(592f, 386f, 359f)), func_2(vec3<f32>(1240f, 1373f, -1199f), Struct_1(-30706i, 1i), vec2<f32>(260f, 1136f), Struct_1(global1.c.b, global1.b.b)).c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1000f) + vec2<f32>(596f, 626f)), global1.c).c).c).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1615f, 1117f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(235f, -967f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -242f) + vec2<f32>(-1000f, 654f)))))), Struct_1(firstTrailingBit(1i), 0i)).c;
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(198f, 278f, -214f, -1850f) - vec4<f32>(-2059f, -1772f, 168f, -845f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-197f, 290f, 1967f, -100f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-853f, -356f, -855f, 1577f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1297f, 174f, 716f, 484f))))) + vec4<f32>(_wgslsmith_f_op_f32(abs(846f)), -1741f, _wgslsmith_f_op_f32(-707f * 361f), _wgslsmith_f_op_f32(1000f * 1049f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(424f - 108f) - 516f), -442f, -289f, 1f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-410f, -368f, 342f, -154f) + vec4<f32>(960f, -1531f, -184f, -655f))))))));
    return ~_wgslsmith_mult_vec2_u32(~vec2<u32>(70669u, abs(15351u)), ~_wgslsmith_div_vec2_u32(abs(var_1.xz), firstTrailingBit(var_1.zx)));
}

fn func_1() -> bool {
    global1 = Struct_2(!vec4<bool>(global1.a.x, global1.a.x, true, u_input.a != _wgslsmith_mod_u32(u_input.c, 35481u)), Struct_1(-(~global2[_wgslsmith_index_u32(25905u, 15u)]), (global2[_wgslsmith_index_u32(1u, 15u)] & 1i) ^ _wgslsmith_mod_i32(global1.b.a, 0i | global2[_wgslsmith_index_u32(u_input.d, 15u)])), Struct_1(u_input.b.x, global1.c.b << (u_input.a % 32u)));
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(35917u, ~4294967295u), func_3(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1014f, -646f, -614f) * vec3<f32>(-647f, -153f, 2383f)), global1.b, vec2<f32>(1495f, -835f), Struct_1(u_input.b.x, u_input.b.x))) ^ _wgslsmith_sub_vec2_u32(~max(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.d, 32810u)), ~vec2<u32>(u_input.c, u_input.c)));
    let var_1 = vec4<u32>(0u, countOneBits(65532u), _wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec2_u32(~(vec2<u32>(33841u, 1u) | vec2<u32>(1u, u_input.a)), abs(vec2<u32>(u_input.a, 61007u) << (vec2<u32>(u_input.a, 77555u) % vec2<u32>(32u))))), _wgslsmith_div_u32(u_input.d ^ ~firstLeadingBit(0u), 0u));
    var var_2 = !global1.a.x;
    let var_3 = _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(firstTrailingBit(7683u) & countOneBits(78970u), ~(~var_1.x)), ~((max(var_1.x, 25259u) | 4294967295u) | u_input.a), func_3(Struct_2(func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-376f, -439f, -301f))), global1.b, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-196f, -767f))), func_2(vec3<f32>(472f, -715f, -469f), global1.b, vec2<f32>(-2521f, -1606f), Struct_1(-18936i, 1395i)).b).a, global1.c, Struct_1(2147483647i ^ global1.c.a, 0i | global1.b.a))).x);
    return any(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(global1.a, vec4<bool>(global1.b.b >= global1.c.b, func_1(), func_1() & func_2(vec3<f32>(1600f, 800f, -673f), Struct_1(u_input.b.x, 0i), vec2<f32>(619f, 1919f), Struct_1(global2[_wgslsmith_index_u32(28152u, 15u)], u_input.b.x)).a.x, countOneBits(u_input.a) < 4294967295u), true), global1.b, global1.b);
    let var_1 = global1.b;
    let var_2 = ~u_input.a ^ max(u_input.d, _wgslsmith_clamp_u32(1u, ~(~1u), countOneBits(firstTrailingBit(u_input.a))));
    global0 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~2147483647i, -(~(-2147483647i)) ^ func_2(vec3<f32>(1404f, -1105f, -609f), global1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-488f, -1000f)), global1.c).c.b));
}

