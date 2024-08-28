struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
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

var<private> global0: vec4<u32> = vec4<u32>(72031u, 85118u, 1u, 4294967295u);

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, -13068i, 32389i), vec4<bool>(true, false, false, false), 146f), 91767u, 31222i, vec2<bool>(false, true), Struct_1(vec4<i32>(3175i, 32886i, -1i, 19387i), vec4<bool>(true, true, false, true), -405f)), Struct_2(Struct_1(vec4<i32>(1i, -9945i, i32(-2147483648), -10360i), vec4<bool>(false, false, false, false), 1000f), 4294967295u, -87037i, vec2<bool>(true, false), Struct_1(vec4<i32>(i32(-2147483648), -39254i, -70841i, 0i), vec4<bool>(false, true, false, false), 742f)), Struct_2(Struct_1(vec4<i32>(-7747i, -1i, 14055i, 27936i), vec4<bool>(false, true, false, false), 338f), 4294967295u, 266i, vec2<bool>(false, true), Struct_1(vec4<i32>(1i, 0i, 2147483647i, 1i), vec4<bool>(false, false, false, false), -1000f)), Struct_2(Struct_1(vec4<i32>(1i, 0i, 1i, -4033i), vec4<bool>(false, true, false, false), -1044f), 25481u, 8515i, vec2<bool>(false, true), Struct_1(vec4<i32>(-1i, -27961i, 0i, i32(-2147483648)), vec4<bool>(false, false, false, true), 376f)), Struct_2(Struct_1(vec4<i32>(28203i, 2147483647i, i32(-2147483648), 2147483647i), vec4<bool>(false, false, false, true), -427f), 4294967295u, -23837i, vec2<bool>(false, false), Struct_1(vec4<i32>(1i, 34483i, 47473i, -41462i), vec4<bool>(false, true, true, true), -1655f)), Struct_2(Struct_1(vec4<i32>(1i, 0i, i32(-2147483648), 13715i), vec4<bool>(true, true, true, true), -556f), 38819u, -19960i, vec2<bool>(true, false), Struct_1(vec4<i32>(-1i, 10365i, i32(-2147483648), 2147483647i), vec4<bool>(true, false, true, false), 805f)), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -2841i, -44886i), vec4<bool>(false, true, true, false), -184f), 35448u, -1i, vec2<bool>(true, true), Struct_1(vec4<i32>(1i, 696i, 25527i, i32(-2147483648)), vec4<bool>(false, true, true, true), -1357f)), Struct_2(Struct_1(vec4<i32>(-1i, i32(-2147483648), -39917i, -1i), vec4<bool>(true, true, true, true), 1000f), 73924u, 2147483647i, vec2<bool>(true, true), Struct_1(vec4<i32>(i32(-2147483648), 0i, -1i, 1i), vec4<bool>(false, true, false, true), -193f)), Struct_2(Struct_1(vec4<i32>(-1i, 0i, -14341i, 4200i), vec4<bool>(false, false, false, false), -1340f), 72535u, 38223i, vec2<bool>(false, true), Struct_1(vec4<i32>(-1i, 2147483647i, -5910i, 2147483647i), vec4<bool>(false, false, true, true), 1000f)), Struct_2(Struct_1(vec4<i32>(-205i, 1i, -1i, -12724i), vec4<bool>(true, true, false, true), -176f), 0u, -40707i, vec2<bool>(false, true), Struct_1(vec4<i32>(-7912i, -30752i, 0i, -25779i), vec4<bool>(false, true, true, false), -933f)), Struct_2(Struct_1(vec4<i32>(-9502i, -1i, 1i, 20153i), vec4<bool>(true, true, true, true), -468f), 1u, -1i, vec2<bool>(false, true), Struct_1(vec4<i32>(13514i, 2147483647i, 25953i, -8324i), vec4<bool>(true, false, false, true), -382f)), Struct_2(Struct_1(vec4<i32>(-3513i, 16330i, -17294i, 2147483647i), vec4<bool>(true, false, true, true), -1610f), 62306u, 2147483647i, vec2<bool>(true, false), Struct_1(vec4<i32>(1i, 1i, -38406i, 6173i), vec4<bool>(true, false, false, false), 1524f)));

var<private> global2: array<Struct_1, 28>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global4: array<i32, 23>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = select(select(arg_1.e.b, select(!arg_1.a.b, !arg_1.e.b, true), arg_1.a.b), select(select(vec4<bool>(arg_1.e.b.x & arg_1.e.b.x, arg_1.e.b.x, !arg_1.e.b.x, arg_1.e.b.x), arg_1.e.b, arg_1.a.b.x), select(vec4<bool>(arg_1.d.x, arg_1.e.b.x && arg_1.d.x, true, true), arg_1.a.b, arg_1.a.b.x & !arg_1.d.x), true), vec4<bool>(any(!vec4<bool>(arg_1.a.b.x, arg_1.a.b.x, false, false)), !arg_1.e.b.x, false, !(!any(vec3<bool>(false, arg_1.a.b.x, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-180f, arg_1.a.c, arg_1.e.c, arg_1.a.c))), vec4<f32>(-623f, -1425f, arg_1.e.c, 276f))) - vec4<f32>(arg_1.e.c, arg_1.a.c, arg_1.e.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(578f - arg_1.a.c))))));
    let var_2 = arg_1.a.b.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e.c, 400f, -754f, 1023f) + vec4<f32>(689f, -2241f, arg_1.a.c, -185f))))))));
    let var_4 = true;
    return var_0.zyz;
}

fn func_2() -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1076f))) * _wgslsmith_f_op_f32(f32(-1f) * -914f)) * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 362f, _wgslsmith_div_f32(266f, -1771f));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-871f, -1256f, -485f) - vec3<f32>(1000f, var_0.x, -485f)) + vec3<f32>(117f, var_0.x, -695f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, var_0.x, var_0.x)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(312f, 103f, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(355f, -1668f, var_0.x), vec3<f32>(-1037f, -520f, 141f), vec3<bool>(false, true, true)))), !func_3(vec4<i32>(-2147483647i, -1i, global4[_wgslsmith_index_u32(global0.x, 23u)], -1i), global1[_wgslsmith_index_u32(18986u, 12u)])))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-208f - var_0.x));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-900f, -840f)), 921f, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1625f, 254f, var_1.x)))));
    var var_3 = u_input.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -673f)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1094f))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> f32 {
    let var_0 = select(arg_2.x, (global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(u_input.b.x), _wgslsmith_clamp_u32(1u, 1u, 93174u), 66540u | global0.x), 23u)] ^ reverseBits(10712i)) <= _wgslsmith_dot_vec3_i32(-select(vec3<i32>(global4[_wgslsmith_index_u32(global3.x, 23u)], 46516i, global4[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec3<i32>(2147483647i, global4[_wgslsmith_index_u32(global3.x, 23u)], global4[_wgslsmith_index_u32(23776u, 23u)]), vec3<bool>(arg_3.x, true, true)), ~min(vec3<i32>(2147483647i, 1i, global4[_wgslsmith_index_u32(50556u, 23u)]), vec3<i32>(global4[_wgslsmith_index_u32(84224u, 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)], 2147483647i))), false);
    global1 = array<Struct_2, 12>();
    global2 = array<Struct_1, 28>();
    let var_1 = global2[_wgslsmith_index_u32(reverseBits(4294967295u), 28u)];
    global1 = array<Struct_2, 12>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f) - -2094f);
}

fn func_1() -> u32 {
    global2 = array<Struct_1, 28>();
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, 696u), 28u)], 1u, max(~firstLeadingBit(global4[_wgslsmith_index_u32(1u, 23u)] >> (4294967295u % 32u)), -1i), vec2<bool>(true, true), Struct_1(_wgslsmith_mult_vec4_i32(-min(vec4<i32>(global4[_wgslsmith_index_u32(global3.x, 23u)], 1i, global4[_wgslsmith_index_u32(global0.x, 23u)], 21938i), vec4<i32>(global4[_wgslsmith_index_u32(23499u, 23u)], -5150i, 1i, 2810i)), vec4<i32>(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(0u, 23u)], -26846i), global4[_wgslsmith_index_u32(u_input.b.x, 23u)] ^ 2147483647i, -50770i, select(global4[_wgslsmith_index_u32(global3.x, 23u)], global4[_wgslsmith_index_u32(44551u, 23u)], true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(func_4(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1694f, -1143f, 1344f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1110f, 214f, 244f), vec3<f32>(-1716f, 698f, 339f), false)))), vec4<bool>(all(vec2<bool>(true, true)), false, true, func_2()), vec4<bool>(true, true, true, true)))));
    let var_1 = vec3<u32>(global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, var_0.b, var_0.b), vec4<u32>(1u, u_input.b.x, u_input.b.x, global3.x))), ~u_input.b) & ~(~(~22069u)), select(~(~(~4294967295u)), _wgslsmith_mod_u32(0u & ~global0.x, ~(~var_0.b)), all(var_0.e.b)));
    global0 = ~u_input.b;
    global2 = array<Struct_1, 28>();
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -420f;
    var var_1 = ~0u;
    let var_2 = func_1();
    var var_3 = _wgslsmith_mod_u32(reverseBits(0u), 4294967295u);
    global2 = array<Struct_1, 28>();
    global0 = u_input.b;
    global1 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, global4[_wgslsmith_index_u32(global0.x, 23u)]), ~global4[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(1i, -10909i, global4[_wgslsmith_index_u32(global3.x, 23u)]), select(vec3<i32>(1i, global4[_wgslsmith_index_u32(var_2, 23u)], global4[_wgslsmith_index_u32(global3.x, 23u)]), vec3<i32>(global4[_wgslsmith_index_u32(global3.x, 23u)], -1i, -2147483647i), vec3<bool>(false, false, true))), _wgslsmith_clamp_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(27867u, 23u)], global4[_wgslsmith_index_u32(var_2, 23u)], 48944i), vec3<i32>(0i, global4[_wgslsmith_index_u32(u_input.a.x, 23u)], global4[_wgslsmith_index_u32(global0.x, 23u)]), vec3<i32>(-2147483647i, global4[_wgslsmith_index_u32(34613u, 23u)], global4[_wgslsmith_index_u32(4294967295u, 23u)])) | select(vec3<i32>(1i, 1i, global4[_wgslsmith_index_u32(global3.x, 23u)]), vec3<i32>(global4[_wgslsmith_index_u32(global0.x, 23u)], 16674i, global4[_wgslsmith_index_u32(6356u, 23u)]), vec3<bool>(true, false, true)))));
}

