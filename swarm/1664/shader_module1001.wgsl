struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(10727u, 4294967295u, 34952u, 0u);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<i32>(0i, -26858i, 102933i, -1i), vec4<u32>(4294967295u, 4294967295u, 77070u, 4294967295u), 356f, 0u, vec4<f32>(608f, 414f, 779f, -330f)), Struct_1(vec4<i32>(1i, 7018i, 5855i, -68538i), vec4<u32>(37010u, 0u, 11561u, 1u), -1094f, 29895u, vec4<f32>(332f, 1167f, -1150f, -834f)), Struct_1(vec4<i32>(-1i, -57099i, 32113i, 22862i), vec4<u32>(0u, 1u, 1u, 0u), 1340f, 1u, vec4<f32>(144f, -236f, 504f, 1513f)), Struct_1(vec4<i32>(2147483647i, 11730i, 50413i, -62190i), vec4<u32>(1u, 4294967295u, 0u, 0u), -277f, 1u, vec4<f32>(-864f, -812f, 1037f, 375f)), Struct_1(vec4<i32>(-30402i, i32(-2147483648), -11441i, 64122i), vec4<u32>(0u, 28398u, 0u, 48471u), -582f, 41091u, vec4<f32>(381f, 1000f, 1391f, -2162f)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 0i), vec4<u32>(0u, 70138u, 72016u, 4294967295u), 659f, 1u, vec4<f32>(-347f, 422f, -413f, 1319f)), Struct_1(vec4<i32>(i32(-2147483648), -15509i, 22012i, i32(-2147483648)), vec4<u32>(48350u, 13597u, 4294967295u, 4294967295u), -660f, 61418u, vec4<f32>(-518f, -866f, -860f, 2441f)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 6824i, -24481i), vec4<u32>(1u, 1u, 1u, 58642u), -785f, 1u, vec4<f32>(617f, 1000f, -1779f, -172f)), Struct_1(vec4<i32>(48484i, i32(-2147483648), 0i, -9684i), vec4<u32>(50996u, 4294967295u, 4294967295u, 19544u), 1331f, 0u, vec4<f32>(564f, -648f, 264f, 1728f)), Struct_1(vec4<i32>(62180i, i32(-2147483648), 1i, -2851i), vec4<u32>(67596u, 27481u, 1u, 51101u), 196f, 5718u, vec4<f32>(787f, 498f, -129f, -1063f)), Struct_1(vec4<i32>(-35202i, 30624i, 30493i, 3856i), vec4<u32>(40384u, 0u, 0u, 24464u), 463f, 36462u, vec4<f32>(557f, 1667f, -969f, 1572f)), Struct_1(vec4<i32>(-22394i, 1i, i32(-2147483648), -1i), vec4<u32>(0u, 1u, 4294967295u, 64397u), 1000f, 45513u, vec4<f32>(306f, -111f, -2411f, -2666f)), Struct_1(vec4<i32>(-45584i, i32(-2147483648), 19981i, -7476i), vec4<u32>(1u, 4294967295u, 1u, 49772u), -1000f, 34397u, vec4<f32>(-370f, 1358f, -691f, -806f)), Struct_1(vec4<i32>(17950i, -46985i, -13311i, 2147483647i), vec4<u32>(1u, 35983u, 55156u, 31891u), -383f, 37584u, vec4<f32>(1117f, -1307f, -505f, -1000f)), Struct_1(vec4<i32>(-1i, 0i, -22187i, 0i), vec4<u32>(1u, 18482u, 5203u, 25919u), 2518f, 0u, vec4<f32>(-1150f, 830f, -890f, 842f)));

var<private> global2: Struct_1 = Struct_1(vec4<i32>(11284i, -19967i, -1513i, -34391i), vec4<u32>(1u, 0u, 4294967295u, 1u), 480f, 8188u, vec4<f32>(266f, -1106f, 673f, 215f));

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 5635u, 1662u, 0u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    global3 = firstTrailingBit(vec4<u32>(67932u, ~(global2.d & 63157u), firstTrailingBit(_wgslsmith_clamp_u32(1u, 1u, reverseBits(global3.x))), global0.x >> (~global2.d % 32u)));
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 5548i, -2147483647i), min(-global2.a.wxz, firstTrailingBit(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(25114i, arg_0.a.x, -3653i)), ~global2.a.zzy))));
    global2 = Struct_1(global2.a ^ (vec4<i32>(~u_input.a, global2.a.x >> (global2.d % 32u), ~0i, _wgslsmith_add_i32(-1i, u_input.a)) << ((arg_0.b >> (~vec4<u32>(global0.x, global2.d, 0u, arg_0.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))), select(firstLeadingBit(vec4<u32>(1u, global3.x, 76841u, _wgslsmith_sub_u32(23238u, 1u))), ~max(_wgslsmith_sub_vec4_u32(arg_0.b, global2.b), vec4<u32>(32962u, arg_0.d, global2.b.x, 0u)), select(select(select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, false, arg_1.x)), !vec4<bool>(true, false, arg_1.x, arg_1.x), arg_1.x), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), arg_1.x), u_input.a != 0i), select(vec4<bool>(arg_1.x, false, false, false), !vec4<bool>(arg_1.x, arg_1.x, true, true), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))), arg_0.c, max(firstLeadingBit(1u), abs(~global3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.c, -1162f), global2.e.x, _wgslsmith_f_op_f32(-1184f + 980f), _wgslsmith_f_op_f32(trunc(1996f))) * _wgslsmith_f_op_vec4_f32(round(arg_0.e))) * global2.e));
    var_1 = ~vec3<i32>(abs(1i | _wgslsmith_dot_vec2_i32(global2.a.wy, vec2<i32>(-2147483647i, -1i))), _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(global2.a.x, 8406i), _wgslsmith_dot_vec3_i32(vec3<i32>(20342i, 35942i, 85055i), global2.a.ywx))), 1i);
    return -39153i;
}

fn func_2() -> u32 {
    var var_0 = 2147483647i;
    global2 = Struct_1(vec4<i32>(29673i, ~_wgslsmith_add_i32(func_3(Struct_1(global2.a, global2.b, 190f, 1u, vec4<f32>(1853f, global2.c, -175f, global2.c)), vec2<bool>(false, true)), global2.a.x), abs(u_input.a), -(-global2.a.x << (~global3.x % 32u))), global2.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1494f))))), _wgslsmith_div_u32(global0.x & 4396u, 3863u) & _wgslsmith_add_u32(~(~global0.x), 1887u), vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(-1931f, _wgslsmith_div_f32(188f, global2.e.x)))), global2.e.x, _wgslsmith_div_f32(1870f, -135f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global2.c)), -488f))))));
    let var_1 = firstTrailingBit(~vec4<u32>(_wgslsmith_mod_u32(global2.b.x, global0.x), ~4294967295u, global0.x, ~global0.x)) ^ min(vec4<u32>(global3.x, ~6320u, global3.x, global3.x >> (global2.b.x % 32u)) | vec4<u32>(global0.x << (global0.x % 32u), 40456u, global2.d, global2.b.x), abs(select(max(vec4<u32>(global2.d, global2.b.x, global0.x, global0.x), global2.b), ~global2.b, true)));
    var var_2 = u_input.a;
    var var_3 = global1[_wgslsmith_index_u32(~global0.x, 15u)];
    return var_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> i32 {
    global2 = Struct_1(arg_0.a, arg_3.b >> (arg_0.b % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.e.x - -525f))))), select(~0u, 4294967295u, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, 818f, global2.c, arg_3.e.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e.x, arg_1.c, 443f, arg_1.e.x) * arg_0.e) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.e) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(525f, -817f, arg_1.c, 231f))))));
    global1 = array<Struct_1, 15>();
    var var_0 = Struct_1(reverseBits(arg_3.a), vec4<u32>(~(1u << (_wgslsmith_mod_u32(global3.x, 49012u) % 32u)), 80665u, 4294967295u, 4294967295u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.c - -410f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1511f)))))), func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-939f, arg_0.c, true)) - -1993f), arg_1.e.x, global2.e.x, _wgslsmith_f_op_f32(trunc(-1000f)))));
    global3 = arg_0.b;
    let var_1 = global2.e.wwz;
    return i32(-1i) * -(~(~(-10646i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(~global2.a, ~vec4<i32>(_wgslsmith_add_i32(global2.a.x, 2147483647i), u_input.a, _wgslsmith_clamp_i32(20364i, 2147483647i, u_input.a), 18055i)), ~_wgslsmith_add_vec4_u32(~arg_1.b, max(global2.b, arg_1.b) << (~global2.b % vec4<u32>(32u))), 990f, ~arg_0.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global2.e)) * _wgslsmith_f_op_vec4_f32(trunc(global2.e))))))));
    let var_1 = !all(vec2<bool>(all(!arg_2), arg_1.e.x >= _wgslsmith_f_op_f32(min(arg_0.e.x, -184f))));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(min(global2.a.yzx, vec3<i32>(34626i << (global0.x % 32u), arg_1.a.x, -arg_0.a.x)), ~(-vec3<i32>(arg_0.a.x, 13722i, 0i))), countOneBits(_wgslsmith_sub_vec3_i32(select(~arg_0.a.zyw, global2.a.xzz, !arg_2.x), arg_1.a.xwx)));
    global0 = firstTrailingBit(arg_1.b);
    global3 = var_0.b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~68360u, 15u)];
    var var_1 = ~global2.d != ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~global3.xyy, vec3<u32>(13494u, global3.x, var_0.b.x)), var_0.b.xxw);
    let var_2 = func_4(Struct_1(vec4<i32>(firstTrailingBit(1i), func_1(Struct_1(var_0.a, vec4<u32>(global0.x, global2.b.x, 0u, global0.x), global2.c, 4294967295u, vec4<f32>(1000f, var_0.c, var_0.e.x, var_0.c)), global1[_wgslsmith_index_u32(global0.x, 15u)], reverseBits(vec2<u32>(0u, 36026u)), Struct_1(global2.a, vec4<u32>(4294967295u, var_0.d, 4294967295u, 15473u), -271f, 70664u, var_0.e)), global2.a.x, -34685i), firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_0.b, vec4<u32>(global0.x, global0.x, 13315u, global0.x)), _wgslsmith_add_vec4_u32(global2.b, global2.b))), var_0.e.x, ~global0.x << (102867u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.e))), Struct_1(abs(reverseBits(vec4<i32>(global2.a.x, 24663i, 1i, 13041i))) & -vec4<i32>(global2.a.x, 10888i, var_0.a.x, 0i), ~(~countOneBits(vec4<u32>(7895u, 1u, global3.x, 4294967295u))), var_0.c, var_0.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 1171f, 1853f, var_0.e.x)))) + vec4<f32>(global2.c, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(select(global2.e.x, 1176f, true)), -1312f))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, all(vec2<bool>(true, false)), all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true)), vec4<bool>(true, 234f <= _wgslsmith_f_op_f32(var_0.c + global2.c), true, any(vec2<bool>(true, true))), true), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), select(true, true, false)));
    let var_3 = true;
    let var_4 = Struct_1(var_0.a, ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(103789u, global2.d, 1318u, var_2.b.x)), func_4(func_4(global1[_wgslsmith_index_u32(40850u, 15u)], var_2, vec4<bool>(true, false, true, var_3), vec2<bool>(true, var_3)), func_4(var_2, Struct_1(vec4<i32>(0i, var_0.a.x, 54043i, 0i), var_0.b, 391f, global2.b.x, var_2.e), vec4<bool>(var_3, false, var_3, true), vec2<bool>(true, var_3)), vec4<bool>(false, false, true, var_3), !vec2<bool>(false, var_3)).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1577f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.e.x), 1f))))), global2.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1442f, -1000f, -215f, var_2.c) + _wgslsmith_div_vec4_f32(var_0.e, vec4<f32>(var_0.e.x, 902f, 1059f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1484f, global2.c, 373f))))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.e.wx, _wgslsmith_f_op_f32(sign(var_0.c)), var_0.b.x, func_4(func_4(var_2, Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.a.x, var_2.a.x, u_input.a, u_input.a), vec4<i32>(u_input.a, -71348i, -41485i, global2.a.x)), vec4<u32>(1u, 4294967295u, 1u, var_2.b.x), _wgslsmith_f_op_f32(abs(global2.e.x)), ~var_0.b.x, vec4<f32>(653f, global2.e.x, var_2.c, var_0.c)), select(!vec4<bool>(false, var_3, var_3, var_3), !vec4<bool>(false, false, var_3, var_3), false), vec2<bool>(var_3, var_3)), func_4(func_4(var_2, var_4, vec4<bool>(false, false, var_3, true), vec2<bool>(false, false)), Struct_1(-vec4<i32>(u_input.a, 7843i, 1i, var_4.a.x), global2.b ^ vec4<u32>(global0.x, 8411u, 1u, 0u), 1f, 56852u, _wgslsmith_div_vec4_f32(global2.e, var_4.e)), vec4<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(var_3, true, var_3, true)), !var_3, any(vec4<bool>(var_3, false, true, var_3))), select(select(vec2<bool>(true, true), vec2<bool>(var_3, var_3), var_3), select(vec2<bool>(false, false), vec2<bool>(var_3, var_3), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true))), !select(!vec4<bool>(var_3, var_3, false, true), select(vec4<bool>(false, var_3, false, var_3), vec4<bool>(var_3, var_3, true, true), vec4<bool>(false, var_3, false, true)), !var_3), vec2<bool>(true, true)).a.x);
}

