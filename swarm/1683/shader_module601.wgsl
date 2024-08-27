struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<u32>,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2114i, -1i);

var<private> global1: array<Struct_5, 26>;

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_2(vec3<f32>(-490f, -632f, 1031f)), 66194i, 726f), Struct_3(Struct_2(vec3<f32>(-757f, 1511f, -1271f)), -25802i, 490f), Struct_3(Struct_2(vec3<f32>(-111f, -463f, 147f)), -2696i, -1000f), Struct_3(Struct_2(vec3<f32>(-111f, 1764f, 489f)), 1825i, -480f), Struct_3(Struct_2(vec3<f32>(-788f, 125f, -2040f)), -29082i, 1135f), Struct_3(Struct_2(vec3<f32>(-1011f, 618f, 1467f)), -1i, 1219f), Struct_3(Struct_2(vec3<f32>(551f, 352f, -750f)), -28179i, -144f), Struct_3(Struct_2(vec3<f32>(-917f, 246f, -1043f)), -19116i, -352f), Struct_3(Struct_2(vec3<f32>(-519f, 1351f, -266f)), -1432i, -1089f), Struct_3(Struct_2(vec3<f32>(838f, 305f, -235f)), -51131i, 1613f), Struct_3(Struct_2(vec3<f32>(561f, -152f, 143f)), -1i, 441f), Struct_3(Struct_2(vec3<f32>(-1186f, 1000f, 1334f)), -1i, -1146f), Struct_3(Struct_2(vec3<f32>(1263f, 351f, -1555f)), 2147483647i, -2193f), Struct_3(Struct_2(vec3<f32>(1000f, -336f, -1795f)), 0i, 1289f), Struct_3(Struct_2(vec3<f32>(1475f, 1990f, -899f)), -1i, -1246f), Struct_3(Struct_2(vec3<f32>(-429f, -134f, -1528f)), 31735i, -476f), Struct_3(Struct_2(vec3<f32>(157f, 168f, 459f)), i32(-2147483648), -794f), Struct_3(Struct_2(vec3<f32>(-779f, -775f, -963f)), 48858i, 136f), Struct_3(Struct_2(vec3<f32>(1784f, -569f, -332f)), -64715i, -729f), Struct_3(Struct_2(vec3<f32>(-676f, 951f, -491f)), 0i, 376f), Struct_3(Struct_2(vec3<f32>(1256f, 452f, -1000f)), -23593i, -1722f), Struct_3(Struct_2(vec3<f32>(-148f, 519f, -2117f)), -13658i, -398f), Struct_3(Struct_2(vec3<f32>(369f, -564f, -1045f)), 11620i, -1083f), Struct_3(Struct_2(vec3<f32>(-1401f, -513f, -1000f)), 25449i, -189f));

var<private> global3: array<vec4<u32>, 2>;

var<private> global4: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(1000f), Struct_1(-1057f), Struct_1(-606f), Struct_1(-331f), Struct_1(-460f), Struct_1(-636f), Struct_1(-529f), Struct_1(354f), Struct_1(558f), Struct_1(-1000f), Struct_1(-1000f), Struct_1(1000f), Struct_1(420f), Struct_1(-1326f), Struct_1(-1000f), Struct_1(-2177f), Struct_1(1889f), Struct_1(365f), Struct_1(621f), Struct_1(-256f), Struct_1(911f), Struct_1(-1474f), Struct_1(1240f), Struct_1(1297f), Struct_1(1852f), Struct_1(842f), Struct_1(-1029f), Struct_1(137f));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = !(!vec2<bool>(true, any(vec2<bool>(true, true))));
    var var_1 = all(vec2<bool>(!(!var_0.x), false));
    let var_2 = Struct_5(global3[_wgslsmith_index_u32(~u_input.a.x, 2u)]);
    let var_3 = select(select(select(select(vec3<bool>(true, true, false), select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), false), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, var_0.x))), vec3<bool>(var_0.x, true, var_0.x & var_0.x), vec3<bool>(select(true, var_0.x, var_0.x), true, var_0.x)), vec3<bool>(!(!var_0.x), any(vec2<bool>(true, var_0.x)) && true, true), true), vec3<bool>(var_0.x, true, true), false);
    var var_4 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, max(1u, u_input.a.x)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.a.x, u_input.a.x), var_2.a.xw), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 28315u), vec2<u32>(1u, var_2.a.x)), ~var_2.a.xy)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~var_2.a.x, u_input.a.x), vec2<u32>(min(11498u, u_input.a.x), ~u_input.a.x), ~(var_2.a.zy << (var_2.a.yz % vec2<u32>(32u)))));
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, 1i), _wgslsmith_mult_i32(11334i, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, 26231i, global0.x), vec4<i32>(global0.x, global0.x, global0.x, global0.x))));
}

fn func_2(arg_0: f32) -> Struct_4 {
    var var_0 = ~u_input.a;
    global2 = array<Struct_3, 24>();
    var var_1 = vec3<bool>(true, true, true);
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(-22945i, _wgslsmith_mult_i32(global0.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -56180i, global0.x, 1i), vec4<i32>(0i, global0.x, -1i, global0.x))))), 0i, ~_wgslsmith_sub_i32(-min(2147483647i, global0.x), global0.x), -func_3());
    let var_3 = any(vec2<bool>(((var_1.x && false) & any(vec4<bool>(var_1.x, false, var_1.x, var_1.x))) | !(4294967295u != u_input.a.x), !(_wgslsmith_mult_i32(var_2.x, global0.x) >= 2455i)));
    return Struct_4(710f, global2[_wgslsmith_index_u32(~var_0.x ^ max(u_input.a.x, ~(~u_input.a.x)), 24u)], vec2<u32>(u_input.a.x, u_input.a.x << (abs(min(var_0.x, u_input.a.x)) % 32u)), 30084u, Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-247f, 329f, 160f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 329f) * vec3<f32>(-1939f, arg_0, -161f)))), max(global0.x, -28973i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, 701f, true))))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec3<i32>) -> u32 {
    global1 = array<Struct_5, 26>();
    global4 = array<Struct_1, 28>();
    let var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1172f)))), _wgslsmith_f_op_f32(arg_1.e.a.a.x * _wgslsmith_div_f32(-327f, 1f))));
    let var_1 = arg_1.b.c;
    let var_2 = 72779i & ~(select(arg_1.e.b, -var_0.e.b, false) << (_wgslsmith_add_u32(~arg_1.d, u_input.a.x) % 32u));
    return 1u;
}

fn func_1() -> u32 {
    let var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !(!vec3<bool>(true, true, any(vec2<bool>(true, false)))), true);
    global1 = array<Struct_5, 26>();
    global0 = -vec2<i32>(19171i, global0.x);
    let var_1 = -1000f;
    let var_2 = var_0.x;
    return func_4(false, func_2(var_1), firstLeadingBit(-vec3<i32>(13131i, 5180i << (u_input.a.x % 32u), _wgslsmith_sub_i32(-2147483647i, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global4 = array<Struct_1, 28>();
    var var_1 = global0.x;
    var_0 = vec3<u32>(var_0.x & _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 0u, u_input.a.x)), firstTrailingBit(u_input.a)), u_input.a.x, ~0u) << (firstLeadingBit(~select(vec3<u32>(u_input.a.x, var_0.x, 33493u) << (u_input.a % vec3<u32>(32u)), abs(vec3<u32>(1u, 17786u, 21848u)), vec3<bool>(true, true, true))) % vec3<u32>(32u));
    var var_2 = func_1();
    global0 = vec2<i32>(_wgslsmith_mult_i32(max(global0.x, max(_wgslsmith_mod_i32(global0.x, -2147483647i), 14319i)), 2147483647i), global0.x << (~(~_wgslsmith_sub_u32(46459u, 0u)) % 32u));
    var var_3 = _wgslsmith_dot_vec2_i32(-firstTrailingBit(-vec2<i32>(global0.x, global0.x)), min(firstTrailingBit(vec2<i32>(-44213i, global0.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 32721i), vec2<i32>(global0.x, global0.x)), _wgslsmith_sub_i32(1i, 1i)))) & select(_wgslsmith_sub_i32(9059i, ~0i), global0.x, false);
    global2 = array<Struct_3, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(sign(-1491f)), 911f), ~var_0.zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1572f + -1569f), -253f)))), ~u_input.a, vec4<i32>(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(-41055i, -2147483647i, 0i, global0.x), vec4<i32>(global0.x, 0i, -1i, global0.x), vec4<bool>(false, false, false, true)), vec4<i32>(-30583i, global0.x, -16056i, global0.x) ^ vec4<i32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_mult_i32(~25297i, -1i), _wgslsmith_div_i32(global0.x, _wgslsmith_mod_i32(-global0.x, -2147483647i)), _wgslsmith_mod_i32(8722i >> (select(u_input.a.x, 16420u, false) % 32u), -34527i)));
}

