struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(2147483647i, -1813i, -1i, 2147483647i, -71648i, -1i, -64250i, -1i, 2147483647i);

var<private> global1: Struct_1 = Struct_1(1i, vec4<u32>(16121u, 34629u, 1u, 1u), vec3<f32>(840f, 482f, 1213f), 0u, vec4<bool>(true, true, false, true));

var<private> global2: array<bool, 11>;

var<private> global3: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(false, i32(-2147483648), 4807u, vec4<f32>(-418f, 1138f, 1304f, 1000f), Struct_1(1i, vec4<u32>(48735u, 52208u, 0u, 55856u), vec3<f32>(-881f, -1000f, -1000f), 0u, vec4<bool>(false, true, true, false))), Struct_2(false, 2147483647i, 26877u, vec4<f32>(-1026f, 995f, 1255f, -362f), Struct_1(0i, vec4<u32>(25898u, 0u, 132143u, 882u), vec3<f32>(-1000f, 623f, 606f), 9542u, vec4<bool>(false, false, false, false))), Struct_2(true, 19236i, 27831u, vec4<f32>(615f, -1240f, 903f, 1179f), Struct_1(0i, vec4<u32>(0u, 6594u, 16291u, 36508u), vec3<f32>(1609f, -298f, -198f), 23569u, vec4<bool>(true, true, true, true))), Struct_2(true, -24799i, 0u, vec4<f32>(-1728f, -447f, 120f, 1124f), Struct_1(-14652i, vec4<u32>(4294967295u, 19832u, 3116u, 49474u), vec3<f32>(-1000f, -460f, 766f), 4294967295u, vec4<bool>(true, true, true, false))), Struct_2(true, i32(-2147483648), 4294967295u, vec4<f32>(256f, 634f, 844f, 342f), Struct_1(0i, vec4<u32>(4294967295u, 0u, 1u, 14106u), vec3<f32>(965f, -2151f, 2113f), 75u, vec4<bool>(false, false, true, false))), Struct_2(false, 1494i, 0u, vec4<f32>(-1501f, -1158f, -199f, 1075f), Struct_1(-1i, vec4<u32>(19413u, 4294967295u, 4294967295u, 1u), vec3<f32>(354f, 1010f, -1715f), 4294967295u, vec4<bool>(false, false, false, false))), Struct_2(true, -59712i, 14163u, vec4<f32>(1089f, 227f, -923f, 2508f), Struct_1(-1i, vec4<u32>(0u, 1u, 27800u, 46008u), vec3<f32>(-488f, -1642f, -991f), 586u, vec4<bool>(true, false, true, true))), Struct_2(true, 32932i, 4984u, vec4<f32>(667f, 1146f, -2324f, -164f), Struct_1(23821i, vec4<u32>(24432u, 1u, 1u, 4294967295u), vec3<f32>(540f, -1000f, -2006f), 53983u, vec4<bool>(false, false, true, false))), Struct_2(false, -24078i, 49352u, vec4<f32>(-2083f, -132f, 185f, -1344f), Struct_1(9864i, vec4<u32>(34817u, 127780u, 16492u, 78946u), vec3<f32>(-1208f, -744f, -740f), 10067u, vec4<bool>(true, false, true, true))), Struct_2(false, 1i, 28974u, vec4<f32>(1000f, 1085f, -361f, -203f), Struct_1(-2644i, vec4<u32>(1u, 1u, 29250u, 0u), vec3<f32>(-1865f, 1000f, 1060f), 0u, vec4<bool>(false, true, true, false))), Struct_2(true, 2147483647i, 4294967295u, vec4<f32>(-199f, -341f, 291f, 147f), Struct_1(-1i, vec4<u32>(0u, 17496u, 4294967295u, 4294967295u), vec3<f32>(316f, -2142f, -1000f), 1u, vec4<bool>(false, false, true, false))), Struct_2(true, -15292i, 6344u, vec4<f32>(-1118f, -633f, 1000f, -1195f), Struct_1(-33943i, vec4<u32>(0u, 1u, 138969u, 4294967295u), vec3<f32>(-646f, 709f, -535f), 1u, vec4<bool>(true, true, true, true))), Struct_2(true, -1i, 0u, vec4<f32>(221f, -110f, 1544f, 490f), Struct_1(-20423i, vec4<u32>(4294967295u, 0u, 95701u, 0u), vec3<f32>(1298f, 450f, -1000f), 1u, vec4<bool>(true, false, true, true))), Struct_2(true, -1i, 1u, vec4<f32>(1861f, -1235f, 1000f, 511f), Struct_1(-16544i, vec4<u32>(47138u, 99537u, 1u, 4294967295u), vec3<f32>(1028f, -567f, 789f), 0u, vec4<bool>(true, true, true, false))), Struct_2(false, 0i, 1u, vec4<f32>(1000f, -752f, 175f, 618f), Struct_1(-1i, vec4<u32>(23878u, 0u, 39939u, 0u), vec3<f32>(956f, -761f, -1900f), 59286u, vec4<bool>(true, true, true, true))));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    global0 = array<i32, 9>();
    return global1.e;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(arg_1.b.x, 15u)];
    let var_1 = _wgslsmith_f_op_f32(max(-1106f, -1756f));
    let var_2 = abs(_wgslsmith_mult_vec4_u32(arg_0, arg_1.b));
    let var_3 = arg_1;
    var var_4 = Struct_2(global2[_wgslsmith_index_u32(4294967295u, 11u)], ~(~arg_1.a), ~(~(~_wgslsmith_div_u32(21935u, 22017u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_div_f32(-768f, arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1)), global1.c.x, _wgslsmith_f_op_f32(trunc(var_0.d.x))), arg_1);
    return 2147483647i;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = 1f;
    let var_2 = global1.e;
    global0 = array<i32, 9>();
    var var_3 = func_4(~global1.b, Struct_1(global1.a, global1.b, vec3<f32>(_wgslsmith_div_f32(-1455f, _wgslsmith_f_op_f32(max(296f, 1283f))), _wgslsmith_f_op_f32(-global1.c.x), 1f), 46871u, select(select(select(global1.e, global1.e, false), global1.e, true), func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.c.x, 2131f, -1000f, 404f)))), global1.e)));
    return Struct_1(_wgslsmith_div_i32(15460i, u_input.b), global1.b, global1.c, countOneBits(4294967295u), vec4<bool>(false, true, !(1f <= global1.c.x), all(vec3<bool>(var_0, true, arg_0.x))));
}

fn func_1() -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(global1.b.x, 9u)];
    let var_1 = func_2(global1.e.wxx);
    var_0 = _wgslsmith_mult_i32(abs(-63237i), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(5347i, -27403i)));
    global2 = array<bool, 11>();
    let var_2 = _wgslsmith_div_i32(-11537i, global0[_wgslsmith_index_u32(11264u, 9u)]);
    return var_1.e.xw;
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = vec4<f32>(938f, _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(243f + global1.c.x) - _wgslsmith_f_op_f32(-global1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1.c.x))))) * global1.c.x));
    let var_1 = !(!(all(global1.e.wx) != !arg_0.x));
    let var_2 = global1.c.x;
    var var_3 = Struct_1(-12461i ^ global1.a, global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global1.c, vec3<f32>(1f, _wgslsmith_f_op_f32(step(-1071f, var_0.x)), _wgslsmith_f_op_f32(select(global1.c.x, 480f, arg_2.x)))))), _wgslsmith_add_u32(global1.d, abs(global1.d)), select(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1362f, var_0.x, var_0.x, global1.c.x))))), global1.e, false));
    let var_4 = _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(4294967295u, 9u)], -29114i);
    return Struct_1(-global1.a, global1.b << (vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.d.x, 122195u)), vec2<u32>(global1.d, var_3.d)), var_3.b.x, abs(~1u), _wgslsmith_mult_u32(21407u, 0u)) % vec4<u32>(32u)), var_3.c, 70825u, var_3.e);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = arg_1;
    global1 = Struct_1(countOneBits(1i), ~reverseBits(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(68640u, u_input.d.x, 0u), max(arg_2.b.x, 6205u), _wgslsmith_div_u32(global1.b.x, global1.d))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.c)))), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.c, ~23803u), _wgslsmith_clamp_u32(0u, 1u, 50243u)), vec4<bool>(func_5(vec2<bool>(false, true), arg_0.a, arg_1.e.e.zw).e.x && false, false, !(_wgslsmith_f_op_f32(-arg_2.c.x) == _wgslsmith_f_op_f32(-833f - -977f)), func_1().x));
    var var_1 = arg_3.e.e.x == any(!(!(!arg_2.e)));
    global2 = array<bool, 11>();
    var var_2 = !(!vec3<bool>(global1.e.x, true, true));
    return -655f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_6(func_5(select(select(global1.e.zx, vec2<bool>(global2[_wgslsmith_index_u32(2160u, 11u)], true), global1.e.x), vec2<bool>(global1.e.x, true), true), u_input.b, func_1()), global3[_wgslsmith_index_u32(u_input.d.x, 15u)], func_5(!(!global1.e.zw), -(i32(-1i) * -2147483647i), !global1.e.wy), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, 4294967295u), u_input.d.xx), min(vec2<u32>(4294967295u, global1.d), vec2<u32>(global1.b.x, global1.b.x)))), 15u)])), func_2(select(global1.e.yzz, vec3<bool>(global1.e.x | global1.e.x, any(global1.e.xyw), true), func_2(vec3<bool>(true, true, true)).e.zyw)).c.x);
    var var_1 = Struct_2(!global1.e.x, ~1i, global1.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -528f, 1000f, 490f))), vec4<f32>(144f, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(min(global1.c.x, var_0.x)))))), Struct_1(u_input.a.x, vec4<u32>(8420u, u_input.d.x, ~_wgslsmith_sub_u32(47734u, 36985u), ~(u_input.d.x >> (u_input.d.x % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.c.x, 1405f, global1.c.x), global1.c)))), ~(global1.b.x ^ ~1u), vec4<bool>(select(!global1.e.x, true, !global1.e.x), !(global1.e.x || global2[_wgslsmith_index_u32(109981u, 11u)]), !(true || global1.e.x), !all(vec2<bool>(global1.e.x, global2[_wgslsmith_index_u32(29958u, 11u)])))));
    let var_2 = i32(-1i) * -1i;
    var var_3 = Struct_2(!(!func_2(func_3(var_1.d).zwy).e.x), i32(-1i) * -42041i, 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1190f, global1.c.x, 1u <= global1.d)), global1.c.x, _wgslsmith_f_op_f32(var_1.e.c.x + _wgslsmith_f_op_f32(-var_0.x)), 1442f)), var_1.e);
    global0 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, vec3<u32>(min(var_3.e.b.x, ~global1.b.x), var_3.c, u_input.d.x), firstLeadingBit(15089u), vec2<i32>(1i, var_1.b));
}

