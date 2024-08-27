struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<i32>;

var<private> global2: vec4<f32> = vec4<f32>(2284f, 1252f, -284f, -1168f);

var<private> global3: array<bool, 3> = array<bool, 3>(true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(Struct_1(global2.x, global2.zz, vec3<bool>(any(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 3u)], global3[_wgslsmith_index_u32(global0.x, 3u)], false)) | (global1.x < 0i), true, (global2.x < -404f) && any(vec4<bool>(global3[_wgslsmith_index_u32(global0.x, 3u)], global3[_wgslsmith_index_u32(46109u, 3u)], global3[_wgslsmith_index_u32(8359u, 3u)], false))), ~abs(vec3<u32>(1u, 81447u, 4294967295u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-684f, global2.x))), u_input.d <= 0i)) <= _wgslsmith_f_op_f32(min(546f, 1000f)), Struct_2(global1.x & -8285i, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1250f), vec2<f32>(global2.x, _wgslsmith_f_op_f32(global2.x * 557f)), !select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 3u)], true, global3[_wgslsmith_index_u32(global0.x, 3u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 3u)], global3[_wgslsmith_index_u32(u_input.a, 3u)], global3[_wgslsmith_index_u32(4294967295u, 3u)]), global3[_wgslsmith_index_u32(32718u, 3u)]), reverseBits(vec3<u32>(1194u, 15814u, 7321u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -1327f, global2.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-307f, 554f, -980f, 929f))))));
    let var_1 = u_input.a;
    var_0 = Struct_3(var_0.c.b, global3[_wgslsmith_index_u32(1u, 3u)], Struct_2(var_0.c.a >> (var_0.c.b.d.x % 32u), Struct_1(var_0.a.b.x, var_0.c.b.b, var_0.a.c, reverseBits(var_0.c.b.d)), _wgslsmith_f_op_vec4_f32(var_0.c.c + vec4<f32>(-1271f, _wgslsmith_f_op_f32(select(-1156f, var_0.a.b.x, false)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-global2.x)))));
    var var_2 = countOneBits(vec4<u32>(1u, var_0.a.d.x, ~4294967295u, firstTrailingBit(0u)));
    var_2 = vec4<u32>(global0.x << (15335u % 32u), 1u, 0u, var_0.c.b.d.x);
    return -4058f;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(714f - arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_f_op_f32(max(-1246f, global2.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.c.yww, arg_0.c.xwx)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, arg_0.c.x, 125f))))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(625f + global2.x))), -892f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-491f - 226f))))), _wgslsmith_f_op_vec3_f32(max(arg_0.c.wwz, vec3<f32>(836f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 290f)), _wgslsmith_f_op_f32(global2.x * -1148f)))), !select(arg_0.b.c, !vec3<bool>(false, arg_0.b.c.x, global3[_wgslsmith_index_u32(21283u, 3u)]), select(vec3<bool>(true, arg_0.b.c.x, arg_0.b.c.x), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 3u)], false), !arg_0.b.c))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(global2.yyw));
    global1 = vec2<i32>(1i, 30562i);
    let var_1 = countOneBits(min(vec4<i32>(-19855i & _wgslsmith_mult_i32(27334i, u_input.b.x), -26769i << (global0.x % 32u), 1i, _wgslsmith_div_i32(~33442i, max(arg_0.a, 34491i))), abs(vec4<i32>(u_input.d << (global0.x % 32u), -75512i, _wgslsmith_sub_i32(-1i, u_input.b.x), 53439i >> (1u % 32u)))));
    let var_2 = vec2<bool>(false, any(arg_0.b.c));
    return ~(~(global0.x & reverseBits(1u))) >> (1u % 32u);
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = u_input.b.x;
    var var_1 = 13218i;
    global3 = array<bool, 3>();
    global3 = array<bool, 3>();
    var var_2 = func_4(Struct_2(13727i, Struct_1(_wgslsmith_f_op_f32(-130f - 1464f), _wgslsmith_f_op_vec2_f32(-global2.xz), !vec3<bool>(global3[_wgslsmith_index_u32(55606u, 3u)], false, false), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 12256u, 4294967295u), vec3<u32>(29969u, 81882u, u_input.a), vec3<u32>(0u, global0.x, 65568u))), vec4<f32>(global2.x, -1648f, global2.x, _wgslsmith_f_op_f32(global2.x - -455f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())))) < countOneBits(~_wgslsmith_add_u32(global0.x, u_input.a));
    return 0i;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> bool {
    global1 = vec2<i32>(-func_2(false), arg_0.x);
    let var_0 = ~global0.x > u_input.a;
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-36095i, u_input.b.x), max(vec2<i32>(17551i, countOneBits(select(global1.x, u_input.d, false))), ~(-arg_0.zz)));
    let var_2 = Struct_2(u_input.d, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-507f + 907f))), !(!select(vec3<bool>(var_0, global3[_wgslsmith_index_u32(arg_1, 3u)], true), vec3<bool>(global3[_wgslsmith_index_u32(1u, 3u)], global3[_wgslsmith_index_u32(global0.x, 3u)], var_0), true)), min(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(63543u, global0.x, u_input.a), vec3<u32>(global0.x, 1u, 44099u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, global0.x, global0.x), vec3<u32>(global0.x, u_input.a, global0.x))), abs(min(vec3<u32>(1u, 21300u, arg_1), vec3<u32>(36039u, arg_1, u_input.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -808f, global2.x) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, global2.x, global2.x, global2.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, 1593f, global2.x, 573f))) + _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, -142f, -1872f), vec4<f32>(935f, -1129f, global2.x, 1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -763f, global2.x, 422f)))));
    global0 = vec3<u32>(0u << (arg_1 % 32u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, ~arg_1), _wgslsmith_clamp_u32(~0u, countOneBits(global0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 35187u), vec2<u32>(u_input.a, global0.x))), countOneBits(0u)), 16982u) << (var_2.b.d % vec3<u32>(32u));
    return !var_2.b.c.x | !(!(true | select(var_2.b.c.x, var_2.b.c.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-118f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), 194f)), select(select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 3u)], global3[_wgslsmith_index_u32(48975u, 3u)], global3[_wgslsmith_index_u32(global0.x, 3u)]), vec3<bool>(false, false, true), false), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(0u, 3u)], false), func_1(vec3<i32>(-2147483647i, global1.x, -2147483647i), 5548u)), vec3<bool>(global1.x < global1.x, true, false), !vec3<bool>(true, false, global3[_wgslsmith_index_u32(global0.x, 3u)])), vec3<bool>(false, true, global3[_wgslsmith_index_u32(16022u, 3u)]), select(!select(vec3<bool>(true, global3[_wgslsmith_index_u32(32293u, 3u)], false), vec3<bool>(false, global3[_wgslsmith_index_u32(global0.x, 3u)], false), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(1u, 3u)], global3[_wgslsmith_index_u32(u_input.a, 3u)])), select(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 3u)], global3[_wgslsmith_index_u32(78406u, 3u)], global3[_wgslsmith_index_u32(u_input.a, 3u)]), vec3<bool>(global3[_wgslsmith_index_u32(global0.x, 3u)], false, false), any(vec3<bool>(true, global3[_wgslsmith_index_u32(global0.x, 3u)], false))), false == (false & global3[_wgslsmith_index_u32(u_input.a, 3u)]))), countOneBits(~min(max(vec3<u32>(40365u, global0.x, global0.x), vec3<u32>(u_input.a, 4294967295u, 13124u)), vec3<u32>(36870u, 32251u, 24693u) & vec3<u32>(u_input.a, 46046u, 0u))));
    global0 = var_0.d ^ vec3<u32>(38696u, var_0.d.x, 4294967295u);
    var var_1 = Struct_3(var_0, !var_0.c.x, Struct_2(~(u_input.b.x & _wgslsmith_sub_i32(31002i, global1.x)), Struct_1(-836f, vec2<f32>(649f, global2.x), !(!vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), ~(~vec3<u32>(global0.x, global0.x, 21380u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(947f, -1822f, -901f, global2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -1174f, global2.x, global2.x))))));
    let var_2 = countOneBits(-vec3<i32>(2147483647i, ~(-2599i), firstLeadingBit(firstTrailingBit(global1.x))));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global2.xz, select(!vec3<bool>(var_1.c.b.c.x, var_0.c.x, true), var_0.c, var_0.c.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(89036u, var_0.d.x, 49845u) ^ vec3<u32>(56183u, var_1.c.b.d.x, 73397u), vec3<u32>(77303u, 0u, var_1.a.d.x))), -21774i > (_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, 0i, -13312i, var_2.x)), select(vec4<i32>(u_input.d, -127i, -1i, u_input.d), vec4<i32>(var_1.c.a, u_input.d, global1.x, 31110i), vec4<bool>(var_1.c.b.c.x, true, false, false))) & var_1.c.a), var_1.c);
    global2 = vec4<f32>(-1211f, var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), var_1.a.b.x))), _wgslsmith_f_op_f32(-var_0.b.x));
    global2 = var_3.c.c;
    global0 = vec3<u32>(reverseBits(max(35766u, ~23376u)), ~var_0.d.x, _wgslsmith_mult_u32(79638u, min(79892u, ~(~var_0.d.x))));
    let var_4 = firstLeadingBit(global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -665f)), var_1.c.b.a) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global2.zw, global2.wz))), var_1.c.b.b)), ~(~(~var_3.a.d.x)), vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1299f)))), _wgslsmith_f_op_f32(ceil(var_3.a.b.x))), var_1.c.c);
}

