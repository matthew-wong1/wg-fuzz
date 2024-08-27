struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(i32(-2147483648), 8171i, -1i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(-3053i, i32(-2147483648), 24454i), vec3<i32>(39045i, -1i, i32(-2147483648)), vec3<i32>(-6339i, i32(-2147483648), -12729i), vec3<i32>(2147483647i, 36945i, -22211i), vec3<i32>(-4206i, 33033i, 0i), vec3<i32>(-1i, -16817i, i32(-2147483648)), vec3<i32>(-15197i, -17140i, -44229i), vec3<i32>(-84603i, -31896i, 4259i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(-1i, -37409i, i32(-2147483648)), vec3<i32>(-18090i, -1i, 26177i), vec3<i32>(-10706i, -557i, -35i), vec3<i32>(-1i, 37790i, -14999i));

var<private> global1: array<f32, 24> = array<f32, 24>(-817f, 910f, 974f, 1509f, 2790f, -1442f, 1756f, -1676f, 1032f, -719f, -703f, -1161f, -1535f, 1295f, -380f, 1000f, 1349f, -2287f, -745f, 527f, -828f, -381f, 1310f, 1000f);

var<private> global2: Struct_1 = Struct_1(33660u, vec2<f32>(1131f, 1000f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = global2.b.x;
    global0 = array<vec3<i32>, 15>();
    let var_1 = ~(~min(min(vec3<u32>(22312u, u_input.c, 4294967295u), abs(vec3<u32>(38268u, u_input.b, 0u))), vec3<u32>(1u, 1u, 1u)));
    global2 = Struct_1(48479u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.e.x, 24u)] * global2.b.x), _wgslsmith_f_op_f32(global2.b.x * -2033f)))))));
    global2 = Struct_1(var_1.x, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1556f - global1[_wgslsmith_index_u32(6619u, 24u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.x, global2.b.x) - 1383f)), 973f));
    return var_1.x;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1175f);
    var var_1 = Struct_1(select(_wgslsmith_mult_u32(func_3(), _wgslsmith_mult_u32(global2.a, max(arg_0, arg_0))), ~_wgslsmith_mult_u32(global2.a, 1u), false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1701f))) + _wgslsmith_f_op_f32(max(global2.b.x, -1585f))), global2.b.x));
    let var_2 = Struct_1(~1u, vec2<f32>(_wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(484f + var_1.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-611f + -159f)))))));
    global0 = array<vec3<i32>, 15>();
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(878f, var_1.b.x), _wgslsmith_f_op_vec2_f32(global2.b * global2.b), !vec2<bool>(arg_1, arg_1)))))));
    return Struct_1(_wgslsmith_sub_u32(firstTrailingBit(countOneBits(func_3())), global2.a), var_3);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_mod_u32(abs(reverseBits(global2.a)) ^ (31029u | _wgslsmith_mod_u32(40565u, global2.a)), ~_wgslsmith_add_u32(min(arg_0.a, arg_1.a), abs(global2.a))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -563f), -2193f, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))))), arg_1.b.x));
    global0 = array<vec3<i32>, 15>();
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -74718i), vec4<i32>(-1i, -56826i, u_input.d.x, u_input.d.x), vec4<i32>(1i, u_input.d.x, u_input.d.x, -2803i)) & (vec4<i32>(u_input.d.x, -2147483647i, 1i, -2147483647i) >> (vec4<u32>(var_0.a, 0u, 89702u, arg_0.a) % vec4<u32>(32u)))), ~(vec4<i32>(2147483647i, 2147483647i, u_input.d.x, 2147483647i) & vec4<i32>(u_input.d.x, 55027i, -11673i, -38146i)) << ((_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.a, 48905u, var_0.a), vec4<u32>(22949u, arg_1.a, arg_0.a, 1u)) << (~vec4<u32>(var_0.a, var_0.a, 4294967295u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), u_input.d.x);
    var var_2 = arg_0;
    var_1 = ~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -var_1.x), u_input.d) >> (countOneBits(u_input.e) % vec2<u32>(32u));
    return _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.a, var_0.a, arg_2.a) >> (vec3<u32>(arg_1.a, var_2.a, arg_0.a) % vec3<u32>(32u)), vec3<u32>(74382u, global2.a, arg_1.a)), vec3<u32>(68363u, 29291u, u_input.c) & vec3<u32>(u_input.c, arg_1.a, arg_0.a)), countOneBits(min(select(~vec3<u32>(arg_0.a, arg_0.a, 1u), vec3<u32>(arg_0.a, arg_2.a, 4294967295u), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), ~firstLeadingBit(vec3<u32>(u_input.c, var_2.a, u_input.e.x)))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global2.a, 24u)]));
    let var_1 = true || !(!all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))));
    global1 = array<f32, 24>();
    var var_2 = ((max(vec3<u32>(4294967295u, global2.a, 0u), vec3<u32>(u_input.c, global2.a, global2.a) | vec3<u32>(global2.a, 4294967295u, 0u)) >> (func_4(func_2(u_input.a, var_1, vec4<i32>(u_input.d.x, u_input.d.x, -66773i, u_input.d.x)), func_2(1u, true, vec4<i32>(0i, u_input.d.x, u_input.d.x, 37249i)), Struct_1(0u, arg_0.xx)) % vec3<u32>(32u))) & ~(~abs(vec3<u32>(0u, 1u, u_input.e.x)))) ^ (vec3<u32>(~(~0u), 1u, 4294967295u) << (vec3<u32>(29006u, _wgslsmith_div_u32(u_input.a, 17734u), 0u) % vec3<u32>(32u)));
    let var_3 = select(select(vec4<bool>(true, false, _wgslsmith_dot_vec2_u32(vec2<u32>(44152u, u_input.e.x), vec2<u32>(u_input.a, var_2.x)) == 0u, _wgslsmith_f_op_f32(196f + arg_0.x) >= 1594f), select(vec4<bool>(var_1, true, arg_0.x != global2.b.x, var_1), !select(vec4<bool>(var_1, true, false, var_1), vec4<bool>(var_1, false, true, var_1), var_1), var_1), vec4<bool>(true, true, true, true)), vec4<bool>(var_1, false, (firstTrailingBit(-21531i) < _wgslsmith_mult_i32(u_input.d.x, -1i)) | false, all(vec2<bool>(var_1, !var_1))), vec4<bool>(!all(!vec4<bool>(var_1, var_1, true, var_1)), true, var_1, !all(select(vec3<bool>(true, false, true), vec3<bool>(true, var_1, true), false))));
    return Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(256f, -1033f)))) * vec2<f32>(152f, arg_0.x)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    global1 = array<f32, 24>();
    global0 = array<vec3<i32>, 15>();
    global0 = array<vec3<i32>, 15>();
    var var_1 = func_5(all(vec3<bool>(true, true, true)), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], global1[_wgslsmith_index_u32(32698u, 24u)], 451f) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], 1756f, global1[_wgslsmith_index_u32(u_input.a, 24u)])))), var_0);
    let var_2 = func_5(!(!all(vec4<bool>(true, true, true, false))), func_2(~var_1.a ^ ~(~4294967295u), all(vec3<bool>(any(vec4<bool>(true, true, false, false)), true, false)), vec4<i32>(40399i, var_0, _wgslsmith_mod_i32(-1i, var_0), -1i)), var_0);
    var var_3 = select(vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))) != (312f != _wgslsmith_f_op_f32(-var_1.b.x)), all(vec3<bool>(true, true, 4294967295u >= var_1.a))), !vec2<bool>(u_input.d.x > 35634i, !(0u > var_1.a)), select(vec2<bool>(true, var_0 >= (i32(-1i) * -1i)), vec2<bool>(true, true), vec2<bool>(true, select(2147483647i, -25390i, true) == _wgslsmith_mult_i32(u_input.d.x, 22378i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~firstTrailingBit(vec4<u32>(4294967295u, var_1.a, var_2.a, 52678u) ^ vec4<u32>(var_1.a, global2.a, var_1.a, var_2.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(1000f - var_2.b.x)), _wgslsmith_f_op_f32(trunc(var_2.b.x)), 191f, _wgslsmith_div_f32(func_5(true, var_2, u_input.d.x).b.x, _wgslsmith_f_op_f32(trunc(-536f))))), vec2<i32>(~var_0, var_0), vec2<u32>(global2.a, var_2.a), firstLeadingBit(var_2.a));
}

