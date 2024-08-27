struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(-1000f, -372f, 1098f), vec3<f32>(-192f, 436f, 583f), vec3<f32>(1000f, 664f, -118f), vec3<f32>(-594f, 1317f, -1000f), vec3<f32>(-859f, 1272f, 1365f), vec3<f32>(1000f, -741f, 727f), vec3<f32>(-665f, 1248f, -776f), vec3<f32>(-905f, -412f, -1000f), vec3<f32>(465f, 489f, 1221f), vec3<f32>(-1492f, -632f, -1042f), vec3<f32>(304f, -1035f, 2651f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32) -> vec2<bool> {
    var var_0 = arg_1;
    global0 = array<vec3<f32>, 11>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, 1000f))) + _wgslsmith_f_op_vec2_f32(arg_1 - vec2<f32>(1846f, 522f))) - _wgslsmith_f_op_vec2_f32(-arg_1))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1530f, 220f)), vec2<f32>(-1211f, var_0.x), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(893f, arg_0.b.x))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-171f, -466f))));
    var var_2 = max(abs(arg_0.a.zwx), vec3<i32>(-9938i, (arg_0.a.x << (~u_input.a.x % 32u)) >> (~u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a.x, -3973i), vec2<i32>(-28344i, arg_0.a.x)), ~vec2<i32>(arg_0.a.x, 2147483647i)), abs(arg_0.a.zw))));
    return vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(676f))))) < -1288f, all(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
}

fn func_2() -> vec2<bool> {
    global0 = array<vec3<f32>, 11>();
    global0 = array<vec3<f32>, 11>();
    let var_0 = -(~(-abs(-2147483647i)));
    var var_1 = -358f;
    var var_2 = select(select(select(vec2<bool>(false, any(vec4<bool>(true, false, false, false))), vec2<bool>(true, true), func_3(Struct_1(vec4<i32>(var_0, 9237i, 2147483647i, 1i), vec4<f32>(1722f, 1180f, 780f, -506f)), _wgslsmith_div_vec2_f32(vec2<f32>(227f, 1342f), vec2<f32>(-117f, -439f)), _wgslsmith_f_op_f32(586f - -1384f))), func_3(Struct_1(vec4<i32>(0i, var_0, var_0, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1419f, -1798f, 1798f, -104f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-123f, -1188f) * vec2<f32>(477f, 1126f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) * _wgslsmith_f_op_f32(188f - -367f))), any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))))), vec2<bool>(true, true), func_3(Struct_1(vec4<i32>(var_0, -var_0, var_0 | var_0, firstLeadingBit(var_0)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2035f, -960f, -204f, -1613f)))), vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(abs(-1000f))));
    return !vec2<bool>(select(true, !(var_0 > 18741i), 22038u > _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), var_2.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = false;
    let var_1 = func_2();
    let var_2 = Struct_4(Struct_3(~19604i, -1000f), Struct_1(select((vec4<i32>(arg_3.x, 1i, -6946i, 57350i) ^ vec4<i32>(arg_2, arg_3.x, -47218i, arg_3.x)) >> (select(vec4<u32>(0u, u_input.a.x, 27820u, 18393u), vec4<u32>(0u, 1u, 574u, 47683u), arg_1.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_2, arg_2, arg_3.x, arg_3.x), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -4986i, -9989i, arg_3.x), vec4<i32>(15901i, 48941i, arg_3.x, 1i)), ~vec4<i32>(arg_2, arg_3.x, arg_2, arg_3.x)), vec4<bool>(false & var_1.x, func_2().x, u_input.a.x >= u_input.a.x, var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(298f + -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1708f), -343f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - 991f))))), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2, 1i, arg_2, -13856i), vec4<i32>(2147483647i, arg_2, 0i, arg_3.x)) >> ((vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) << (~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 36047u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(438f, 698f, 955f, -379f), vec4<f32>(1000f, 369f, -179f, 632f)))))))), _wgslsmith_sub_vec4_i32(~vec4<i32>(-37629i, arg_3.x, arg_3.x, -13634i), -_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, -30039i, 465i, arg_3.x), vec4<i32>(0i, -10076i, -3196i, 0i))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) >> (~vec4<u32>(u_input.a.x, 0u, 6938u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) >> (min(vec4<u32>(u_input.a.x, 29425u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_1);
    let var_3 = ~vec2<u32>(~29304u, 1u);
    var var_4 = ~4294967295u;
    return var_2.c;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>) -> f32 {
    global0 = array<vec3<f32>, 11>();
    let var_0 = false;
    global0 = array<vec3<f32>, 11>();
    global0 = array<vec3<f32>, 11>();
    var var_1 = Struct_2(1447f, firstTrailingBit(~vec4<u32>(25847u, u_input.a.x, 46430u, 25741u)) & firstTrailingBit(select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 8469u, 1u, 0u), true) & _wgslsmith_clamp_vec4_u32(vec4<u32>(109337u, u_input.a.x, 24292u, u_input.a.x), vec4<u32>(u_input.a.x, 41358u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 13672u, u_input.a.x, u_input.a.x))), _wgslsmith_sub_u32(1u | abs(u_input.a.x), u_input.a.x), true);
    return arg_0.b.b.x;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_add_vec4_i32(abs(abs(vec4<i32>(0i, 0i, -64216i, 1i))), reverseBits((vec4<i32>(32764i, -5743i, 26579i, -2147483647i) << (vec4<u32>(u_input.a.x, 22149u, 26183u, arg_2.c) % vec4<u32>(32u))) << (select(vec4<u32>(u_input.a.x, 105483u, u_input.a.x, 0u), arg_2.b, vec4<bool>(false, arg_1, false, true)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(963f, 418f, 1000f, arg_2.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.a, 111f, 1000f, -942f), vec4<f32>(-376f, 994f, arg_0, arg_0)))))));
    let var_1 = _wgslsmith_f_op_f32(floor(831f));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    global0 = array<vec3<f32>, 11>();
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a.x, -min(abs(-30602i), _wgslsmith_div_i32(5869i, var_0.a.x)), 1i), -vec3<i32>(var_0.a.x, ~var_0.a.x, _wgslsmith_add_i32(3980i, 74867i) << (~arg_2.c % 32u)));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(Struct_3(2147483647i, var_1), Struct_1(vec4<i32>(-20140i, var_3.x, 49022i, 17218i), var_0.b), Struct_1(vec4<i32>(var_3.x, -2147483647i, var_0.a.x, var_0.a.x), var_0.b), var_0.a, vec3<bool>(false, arg_2.d, arg_1)), _wgslsmith_sub_vec2_i32(var_0.a.xz, var_3.zy))) - _wgslsmith_f_op_f32(f32(-1f) * -351f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.a, -1193f))) - -1325f)), ~(~arg_2.b.yzx >> (~vec3<u32>(50525u, 4294967295u, arg_2.b.x) % vec3<u32>(32u))), max(firstTrailingBit(select(vec4<u32>(arg_2.c, arg_2.c, 36921u, u_input.a.x), arg_2.b, !vec4<bool>(arg_2.d, false, arg_1, false))), vec4<u32>(1u, 20888u, 29664u, ~arg_2.c)), (40701i & _wgslsmith_mod_i32(var_0.a.x, 39720i)) >> (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 11>();
    let var_0 = 89u;
    let var_1 = u_input.a.x;
    global0 = array<vec3<f32>, 11>();
    var var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(115422u, 34049u), vec2<u32>(var_0, u_input.a.x)), firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a))), u_input.a);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_4(Struct_3(-2147483647i, 183f), Struct_1(vec4<i32>(5659i, -23482i, 0i, -72506i), vec4<f32>(1000f, -1934f, -1002f, 802f)), func_1(vec2<bool>(true, true), vec3<bool>(true, true, true), -2147483647i, vec3<i32>(0i, -11769i, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-18618i, 13319i, -21623i, -1i), vec4<i32>(1i, 61990i, 1162i, -24813i), vec4<i32>(1i, -29128i, -62548i, -1i)), vec3<bool>(true, true, true)), min(vec2<i32>(-1i, -48612i), ~vec2<i32>(-2147483647i, 6600i))))), false, Struct_2(_wgslsmith_f_op_f32(func_4(Struct_4(Struct_3(2434i, -159f), Struct_1(vec4<i32>(0i, -8606i, -2147483647i, -23687i), vec4<f32>(865f, -315f, -828f, -412f)), func_1(vec2<bool>(true, true), vec3<bool>(true, true, true), -1i, vec3<i32>(1i, -59298i, 0i)), vec4<i32>(0i, -1i, 0i, 0i) << (vec4<u32>(1u, var_2.x, var_0, 86454u) % vec4<u32>(32u)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(50099i, -2147483647i), vec2<i32>(8271i, 0i)))), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(var_1, 4294967295u, 45876u, 1u)), select(vec4<u32>(var_1, var_1, var_1, var_2.x), vec4<u32>(0u, 1u, 22141u, 1u), func_2().x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u ^ var_0, 6658u, u_input.a.x), vec4<u32>(~var_1, select(73755u, 25503u, true), select(var_1, 10584u, true), ~1u)), true));
}

