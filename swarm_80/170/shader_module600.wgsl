struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(1i, true, vec4<f32>(-1130f, -210f, -1985f, 1194f), vec4<bool>(false, false, false, false)), Struct_1(1i, false, vec4<f32>(624f, 466f, -2907f, -279f), vec4<bool>(true, true, false, false)), Struct_1(1i, false, vec4<f32>(697f, 1092f, 1518f, -1016f), vec4<bool>(false, false, true, true)), Struct_1(0i, false, vec4<f32>(435f, -444f, -891f, 798f), vec4<bool>(true, false, true, false)), Struct_1(-1i, false, vec4<f32>(-349f, 229f, -1466f, 968f), vec4<bool>(false, false, true, false)), Struct_1(-56080i, false, vec4<f32>(1999f, -342f, 369f, 1000f), vec4<bool>(true, true, true, false)), Struct_1(37749i, true, vec4<f32>(1335f, -402f, -398f, -1492f), vec4<bool>(true, false, true, false)), Struct_1(-21624i, true, vec4<f32>(-1000f, 1347f, 113f, -1185f), vec4<bool>(false, false, false, true)), Struct_1(27622i, true, vec4<f32>(-1023f, 516f, 104f, 895f), vec4<bool>(true, true, false, true)), Struct_1(22701i, true, vec4<f32>(-747f, 225f, -1000f, -1836f), vec4<bool>(false, true, false, false)), Struct_1(i32(-2147483648), false, vec4<f32>(446f, -271f, -1078f, 1438f), vec4<bool>(false, true, false, true)));

var<private> global2: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(4294967295u, 48505u, 0u), vec3<u32>(76612u, 1u, 30858u), vec3<u32>(70912u, 4294967295u, 60668u), vec3<u32>(38704u, 1u, 4294967295u), vec3<u32>(15345u, 92636u, 15933u), vec3<u32>(46856u, 4294967295u, 28953u), vec3<u32>(46849u, 4294967295u, 19127u), vec3<u32>(3913u, 4294967295u, 20877u), vec3<u32>(2524u, 56106u, 18588u), vec3<u32>(4294967295u, 17827u, 150u), vec3<u32>(4294967295u, 1u, 29744u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 0u, 20549u), vec3<u32>(24889u, 545u, 14390u), vec3<u32>(21436u, 1u, 12474u), vec3<u32>(19876u, 1u, 4294967295u), vec3<u32>(1u, 1u, 1u), vec3<u32>(6088u, 5013u, 1u), vec3<u32>(37065u, 1u, 0u), vec3<u32>(0u, 35791u, 16844u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(49823u, 4294967295u, 44027u), vec3<u32>(7235u, 24022u, 30524u), vec3<u32>(4294967295u, 1u, 38489u), vec3<u32>(0u, 78048u, 0u), vec3<u32>(37865u, 4294967295u, 15108u), vec3<u32>(1u, 1u, 8337u), vec3<u32>(19707u, 59162u, 30432u), vec3<u32>(66908u, 0u, 1u), vec3<u32>(0u, 38221u, 77447u));

var<private> global3: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(39783u, 64921u, 13648u), vec3<u32>(4294967295u, 0u, 31258u), vec3<u32>(170205u, 0u, 67821u), vec3<u32>(1u, 4294967295u, 62640u), vec3<u32>(35833u, 94421u, 0u), vec3<u32>(58871u, 67089u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(1u, 61500u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(0u, 56123u, 46892u), vec3<u32>(1u, 4294967295u, 91189u), vec3<u32>(36939u, 4294967295u, 4294967295u), vec3<u32>(1u, 20182u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 24599u, 4294967295u), vec3<u32>(4294967295u, 40973u, 62459u), vec3<u32>(28992u, 1u, 69211u), vec3<u32>(20617u, 4294967295u, 26170u), vec3<u32>(25933u, 1u, 91218u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(3505u, 0u, 22185u), vec3<u32>(8512u, 4294967295u, 67647u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 1u, 108577u), vec3<u32>(76019u, 34167u, 4439u), vec3<u32>(4294967295u, 85783u, 0u), vec3<u32>(21916u, 4294967295u, 24648u), vec3<u32>(1u, 0u, 54911u));

var<private> global4: vec3<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = vec3<f32>(-702f, _wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-208f))) - _wgslsmith_f_op_f32(667f + _wgslsmith_f_op_f32(sign(1079f)))) * _wgslsmith_f_op_f32(1554f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1009f)))));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(abs(1i), 1i)), vec2<i32>(1i, countOneBits(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 10371i, -2147483647i, 33204i), vec4<i32>(-2147483647i, -19772i, 11286i, -41432i))))));
    let var_2 = firstLeadingBit(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 17491u, 1667u), ~global3[_wgslsmith_index_u32(u_input.d.x, 28u)]), u_input.a));
    global2 = array<vec3<u32>, 31>();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), _wgslsmith_f_op_f32(1874f - -838f), -215f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(-416f, 1000f)), var_0.x, _wgslsmith_f_op_f32(round(var_0.x))))));
    return global0.x;
}

fn func_2() -> Struct_2 {
    let var_0 = 30949i;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(513f, _wgslsmith_div_f32(-433f, _wgslsmith_f_op_f32(abs(118f))), _wgslsmith_f_op_f32(max(-558f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1390f * -404f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -683f, 623f, var_1.x)))), vec4<f32>(_wgslsmith_div_f32(var_1.x, -747f), -579f, _wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(1599f - 222f)), vec4<bool>(true, true, func_3(), all(vec2<bool>(false, true)))))));
    global4 = vec3<bool>(586f > _wgslsmith_f_op_f32(-143f + _wgslsmith_f_op_f32(var_3.x - _wgslsmith_div_f32(var_3.x, var_1.x))), false, global4.x);
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-154f)) * -440f)), 236f), Struct_1(firstLeadingBit(var_0), _wgslsmith_clamp_i32(var_0, var_0, ~(-14844i)) != _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 1i), reverseBits(vec3<i32>(var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-482f, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(round(var_1.x)), -558f)), select(!select(vec4<bool>(global4.x, true, global0.x, false), vec4<bool>(global4.x, global0.x, global4.x, true), vec4<bool>(global4.x, true, global0.x, true)), select(select(vec4<bool>(global0.x, true, global4.x, global4.x), vec4<bool>(global4.x, true, false, global0.x), global4.x), vec4<bool>(global4.x, global4.x, global0.x, global0.x), false), ~4294967295u >= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, 27229u, 4294967295u), u_input.d))));
}

fn func_1() -> bool {
    global1 = array<Struct_1, 11>();
    var var_0 = func_2();
    let var_1 = ~vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(16493u, min(59247u, u_input.c), u_input.c), ~(~u_input.d.ywy)));
    var var_2 = global1[_wgslsmith_index_u32(u_input.d.x, 11u)];
    var var_3 = vec2<i32>(var_0.b.a, var_0.b.a);
    return !(!var_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(!global0.x, !global0.x, global0.x, !all(global4.xy)), vec4<bool>(!global0.x, false, global4.x, true), vec4<bool>(true, global0.x, any(vec2<bool>(global4.x, func_1())), true));
    global2 = array<vec3<u32>, 31>();
    var var_1 = ~vec4<i32>(-1i, 1i, 4141i, ~(-28798i));
    var var_2 = !var_0.x;
    var var_3 = u_input.c;
    var var_4 = 51645i;
    var var_5 = vec4<i32>(var_1.x, 54981i, var_1.x, 0i ^ _wgslsmith_sub_i32(-2147483647i & var_1.x, _wgslsmith_div_i32(-59563i, var_1.x))) & vec4<i32>(var_1.x, -24529i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 1716i, 1i), select(var_1.zwx, vec3<i32>(var_1.x, var_1.x, 2147483647i), false)) << (reverseBits(u_input.d.x) % 32u), 47708i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(reverseBits(select(-23347i, var_1.x, global0.x)), -5119i, -1i, var_1.x) & _wgslsmith_mod_vec4_i32(reverseBits(~vec4<i32>(1i, var_1.x, 5606i, 24738i)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_5.x, var_1.x, var_5.x, -2147483647i), vec4<i32>(0i, 28234i, var_1.x, var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -351f))), _wgslsmith_f_op_f32(ceil(-371f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-192f, 129f)))) + -773f), func_2().b.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1053f)), _wgslsmith_f_op_f32(-228f - 659f))), _wgslsmith_mult_vec2_i32(var_5.xx, reverseBits(-vec2<i32>(-1i, 22759i))));
}

