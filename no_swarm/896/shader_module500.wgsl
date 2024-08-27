struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: array<Struct_5, 16> = array<Struct_5, 16>(Struct_5(vec4<f32>(1267f, 235f, 1037f, 1615f)), Struct_5(vec4<f32>(-424f, -861f, 1554f, -999f)), Struct_5(vec4<f32>(102f, 191f, -256f, -1311f)), Struct_5(vec4<f32>(-494f, -734f, 803f, 1000f)), Struct_5(vec4<f32>(927f, -1000f, 1279f, -120f)), Struct_5(vec4<f32>(602f, 1148f, 725f, -1061f)), Struct_5(vec4<f32>(1000f, 1486f, 479f, 1446f)), Struct_5(vec4<f32>(-1000f, -858f, 110f, 582f)), Struct_5(vec4<f32>(-1467f, -743f, 1730f, -1000f)), Struct_5(vec4<f32>(694f, 111f, 1263f, -468f)), Struct_5(vec4<f32>(1166f, -914f, 443f, 735f)), Struct_5(vec4<f32>(-924f, -1717f, 613f, 546f)), Struct_5(vec4<f32>(1157f, 1042f, 424f, -512f)), Struct_5(vec4<f32>(-102f, -1053f, -503f, 1000f)), Struct_5(vec4<f32>(1000f, 1828f, 305f, -1008f)), Struct_5(vec4<f32>(-1000f, -1626f, -538f, 262f)));

var<private> global2: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(23452u, 1u));

var<private> global3: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    var var_0 = -73991i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1283f, global3.b.a), vec2<f32>(2584f, global3.b.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.a, -1000f)) * vec2<f32>(global3.b.a, 1615f))))));
    global0 = array<Struct_2, 11>();
    global1 = array<Struct_5, 16>();
    var_0 = -u_input.c.x;
    return Struct_1(-1000f);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -vec2<i32>(4735i, -_wgslsmith_add_i32(arg_0.x, _wgslsmith_mult_i32(arg_0.x, -13692i)));
    let var_1 = global1[_wgslsmith_index_u32(~0u, 16u)];
    global1 = array<Struct_5, 16>();
    var var_2 = global3.a.x || true;
    global0 = array<Struct_2, 11>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * global3.b.a)), 924f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> i32 {
    var var_0 = true;
    global3 = Struct_4(vec2<bool>(global3.a.x, !global3.a.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1181f * -1050f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1604f) * _wgslsmith_f_op_f32(f32(-1f) * -972f)))));
    let var_1 = Struct_3(Struct_2(!global3.a), func_2(reverseBits(u_input.c), func_1()), global3.b, vec4<i32>(-abs(-6737i), _wgslsmith_mod_i32(arg_0 ^ arg_2, -2147483647i), _wgslsmith_div_i32(7463i, i32(-1i) * -21021i), min(-63702i, -25168i)), func_2(max(vec2<i32>(21642i, u_input.c.x), -vec2<i32>(0i, u_input.c.x)), Struct_1(arg_1.a)));
    var_0 = !(!global3.a.x);
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.a, var_1.c.a)), var_1.e.a, 1322f, _wgslsmith_f_op_f32(trunc(-1793f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(438f, var_1.b.a, arg_1.a, -380f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a, -1000f, -930f, global3.b.a), vec4<f32>(-251f, 2206f, var_1.e.a, var_1.b.a))), var_1.a.a.x)))));
    return _wgslsmith_clamp_i32(arg_3, 1i, ~u_input.a.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_4 {
    var var_0 = global3.a.x;
    var var_1 = _wgslsmith_f_op_f32(floor(global3.b.a));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u ^ max(select(1u, u_input.b, !any(global3.a)), u_input.b), 11u)];
    let var_3 = global2[_wgslsmith_index_u32(select(min(0u, ~reverseBits(54512u)), u_input.b, all(vec4<bool>(var_2.a.x && var_2.a.x, false, false, u_input.b >= 4294967295u))) & (abs(_wgslsmith_mod_u32(u_input.b, 76146u) & 0u) >> (reverseBits(firstLeadingBit(u_input.b << (6777u % 32u))) % 32u)), 1u)];
    var var_4 = Struct_4(!var_2.a, func_2(vec2<i32>(40857i, countOneBits(firstTrailingBit(-36551i))), func_1()));
    return Struct_4(var_2.a, func_1());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    global3 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1257f, -828f, global3.b.a), vec3<f32>(global3.b.a, -727f, global3.b.a), false)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1649f, 1192f, -607f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(255f, global3.b.a, global3.b.a), vec3<f32>(global3.b.a, 1466f, -1000f), select(vec3<bool>(false, true, global3.a.x), vec3<bool>(false, global3.a.x, true), false))))), func_1(), func_3(2147483647i, func_2(-u_input.c >> (global2[_wgslsmith_index_u32(~1u, 1u)] % vec2<u32>(32u)), func_1()), abs(i32(-1i) * -20669i), -_wgslsmith_div_i32(-var_0, firstTrailingBit(41600i))));
    global0 = array<Struct_2, 11>();
    var var_1 = global2[_wgslsmith_index_u32(u_input.b, 1u)];
    global0 = array<Struct_2, 11>();
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x, var_1.x), 11u)], Struct_1(func_1().a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(995f + -1141f) - _wgslsmith_f_op_f32(-global3.b.a)) + 893f)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(reverseBits(-11954i), i32(-1i) * -49924i, _wgslsmith_mod_i32(var_0, 16704i), func_3(-1i, Struct_1(-456f), -2147483647i, 5724i)), ~vec4<i32>(-2147483647i, -50319i, u_input.c.x, 35028i)), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, var_0, var_0), vec4<i32>(u_input.c.x, 0i, 7014i, var_0))), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, u_input.c.x, 27168i)), firstTrailingBit(vec4<i32>(var_0, -34118i, -2147483647i, -1i))))), func_2(~vec2<i32>(-u_input.c.x, _wgslsmith_clamp_i32(u_input.a.x, 1i, var_0)), global3.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(~((var_1.x | u_input.b) & select(var_1.x, 55369u, global3.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(508f, var_2.c.a, -1413f, global3.b.a)) + vec4<f32>(-1022f, global3.b.a, -713f, -376f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.a, -415f, global3.b.a, global3.b.a)) + vec4<f32>(global3.b.a, -1624f, global3.b.a, 410f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.a, var_2.e.a, 230f, var_2.c.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global3.b.a, -354f, var_2.c.a))), vec4<f32>(global3.b.a, var_2.e.a, func_4(vec3<f32>(-1001f, 374f, var_2.b.a), Struct_1(global3.b.a), u_input.c.x).b.a, _wgslsmith_f_op_f32(exp2(global3.b.a)))))), ~(~min(global2[_wgslsmith_index_u32(var_1.x, 1u)], vec2<u32>(var_1.x, 4294967295u))), vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.a), var_2.b.a), 1386u);
}

