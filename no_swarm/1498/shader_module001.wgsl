struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-324f, -920f, 688f, 245f, -1223f, -111f, 1000f, -1635f, 325f, -376f, -680f, 697f, 600f, 962f, -140f, 568f, -346f, -441f);

var<private> global1: vec2<u32>;

var<private> global2: f32 = 158f;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: i32, arg_3: i32) -> vec4<bool> {
    global1 = ~arg_0.a;
    global2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1, abs(1685u)), 18u)]);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(~global1.x, global1.x), 18u)]) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(32267u, 30038u), global1.x), 18u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(21538u), 18u)]))) - 1346f), global0[_wgslsmith_index_u32(4294967295u, 18u)]);
    var_0 = vec3<f32>(319f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 556f) * _wgslsmith_f_op_f32(var_0.x + 620f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_0.a.x, 18u)])) - _wgslsmith_f_op_f32(floor(-266f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(34622u, 18u)])), 655f)));
    var var_1 = vec2<u32>(61892u, 25235u);
    return !(!(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> bool {
    global2 = _wgslsmith_f_op_f32(select(1722f, global0[_wgslsmith_index_u32(global1.x, 18u)], false));
    global0 = array<f32, 18>();
    let var_0 = 1i;
    var var_1 = Struct_1(~_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_2.yxx, arg_2.zyw)), min(_wgslsmith_dot_vec3_i32(arg_2.zxy, arg_2.wxx), ~(-2147483647i))), _wgslsmith_div_f32(923f, 423f));
    var var_2 = -(firstTrailingBit(arg_2.yzz) & (-select(arg_2.yxw, vec3<i32>(var_1.a, arg_2.x, 0i), arg_3.zyy) | vec3<i32>(var_0, 52259i, -2147483647i)));
    return true;
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = any(vec3<bool>(true, true, select(true, true, func_4(~(-31091i), vec4<bool>(true, true, true, true), _wgslsmith_add_vec4_i32(vec4<i32>(-21630i, 0i, arg_0.x, arg_0.x), vec4<i32>(1i, arg_0.x, arg_0.x, 0i)), func_3(Struct_4(u_input.b.xw), 17404u, -2147483647i, -1i)))));
    let var_1 = _wgslsmith_div_u32(reverseBits(0u), max(abs(_wgslsmith_clamp_u32(4294967295u, 99411u, 32849u)), 11630u));
    let var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(9243i, arg_0.x), reverseBits(countOneBits(arg_0.x))), global0[_wgslsmith_index_u32(46128u, 18u)]);
    global0 = array<f32, 18>();
    global2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(global1.x, global1.x), 18u)];
    return !(!vec2<bool>(var_0, var_0));
}

fn func_1(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = Struct_3(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), select(func_2(vec3<i32>(1i, 1i, 1i)), func_2(-vec3<i32>(-26546i, 36681i, -28685i)), select(vec2<bool>(false, true), vec2<bool>(true, true), false))), false, Struct_2(Struct_1(-21154i, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))), 23682i), Struct_1(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1i, -2824i, -1i)), ~vec3<i32>(12127i, 51152i, 2147483647i)), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))), select(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.wx, vec2<u32>(28411u, 4294967295u), vec2<u32>(0u, 0u)) >> (vec2<u32>(26943u, 4294967295u) % vec2<u32>(32u)), ~firstTrailingBit(vec2<u32>(global1.x, global1.x))), ~u_input.a, true));
    var var_1 = select(!(!vec3<bool>(!var_0.b, var_0.a.x, all(var_0.a))), func_3(Struct_4(vec2<u32>(var_0.e.x >> (u_input.b.x % 32u), abs(var_0.e.x))), ~(~u_input.b.x), countOneBits(var_0.c.a.a), var_0.d.a).xxx, var_0.b);
    let var_2 = min(firstTrailingBit(~_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-1i, var_0.d.a, var_0.c.b, var_0.c.a.a), vec4<i32>(var_0.d.a, 36758i, 1i, var_0.c.a.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.a.a, var_0.d.a, var_0.c.a.a, -2147483647i), vec4<i32>(var_0.d.a, -1i, 2147483647i, -50359i)), vec4<i32>(var_0.d.a, 0i, 1i, -2147483647i))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(max(1i, 10375i), var_0.c.a.a, firstLeadingBit(-85947i), -1i >> (0u % 32u)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, 8944i, -29291i, 2147483647i)), vec4<i32>(-18070i, var_0.d.a, var_0.c.a.a, 23019i))), firstTrailingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_0.c.a.a, var_0.d.a, var_0.c.b, var_0.c.a.a), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.b, var_0.d.a, var_0.d.a, 25694i), vec4<i32>(var_0.c.b, -2147483647i, 0i, var_0.c.a.a))))));
    var var_3 = countOneBits(_wgslsmith_div_u32(global1.x, 0u));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.c.a.b * _wgslsmith_f_op_f32(f32(-1f) * -239f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(select(var_0.d.b, arg_0.x, var_0.b)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.a.b), _wgslsmith_f_op_f32(-arg_0.x), true))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.xxx))));
    return select(select(vec2<bool>(true, false), var_1.yx, true), vec2<bool>(true, false), any(vec3<bool>(all(vec3<bool>(var_0.b, false, true)) || (var_0.c.b >= -44498i), false, false)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_1) -> vec2<u32> {
    global1 = vec2<u32>(1u, abs(_wgslsmith_mod_u32(17256u, arg_1.e.x)));
    global0 = array<f32, 18>();
    var var_0 = _wgslsmith_add_vec3_i32(abs(firstLeadingBit(vec3<i32>(arg_1.d.a, -3631i, 22460i) ^ vec3<i32>(2147483647i, arg_1.c.a.a, arg_2.a))), ~(~vec3<i32>(2147483647i, 35071i, arg_2.a))) | (vec3<i32>(select(-1916i, 36727i, false) << (~arg_1.e.x % 32u), ~arg_2.a & (i32(-1i) * -35725i), arg_2.a) & countOneBits(vec3<i32>(-1i) * -vec3<i32>(arg_2.a, arg_1.c.b, -25229i)));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_2.b) - _wgslsmith_div_vec2_f32(vec2<f32>(-535f, var_1.c.a.b), vec2<f32>(arg_2.b, -906f)))))));
    return vec2<u32>(abs(4294967295u), ~132579u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_vec2_u32(u_input.b.xx ^ func_5(_wgslsmith_add_vec3_u32(u_input.b.zxy, ~vec3<u32>(global1.x, 1u, 48673u)), Struct_3(func_1(vec4<f32>(-1367f, 546f, -1000f, -619f)), true, Struct_2(Struct_1(0i, global0[_wgslsmith_index_u32(4294967295u, 18u)]), 0i), Struct_1(-35025i, 1018f), vec2<u32>(122997u, 19411u)), Struct_1(i32(-1i) * -59103i, global0[_wgslsmith_index_u32(0u, 18u)])), u_input.b.zy);
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-190f, 2184f, -831f, global0[_wgslsmith_index_u32(global1.x, 18u)]) - vec4<f32>(-2082f, -628f, global0[_wgslsmith_index_u32(1474u, 18u)], -333f)))))));
    var var_1 = Struct_4(~vec2<u32>(u_input.b.x, u_input.a.x) & select(min(vec2<u32>(global1.x, u_input.b.x), abs(u_input.a)), firstLeadingBit(u_input.a), var_0));
    let var_2 = abs(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(1i), ~23193i), vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -38170i), 23798i)), -max(_wgslsmith_mod_i32(-10415i, -60095i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, -387i, 18124i), vec4<i32>(3895i, -7343i, 31094i, -1i)))));
    let var_3 = Struct_2(Struct_1(firstTrailingBit(-(~0i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-396f)), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(41666u, 18u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 18u)])))), max(8996i, var_2 >> (_wgslsmith_div_u32(firstLeadingBit(u_input.b.x), u_input.a.x | var_1.a.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-620f, global0[_wgslsmith_index_u32(69026u, 18u)]))), _wgslsmith_f_op_f32(f32(-1f) * -527f), var_3.a.b))), firstTrailingBit(select(~(~vec3<i32>(28560i, var_2, -2147483647i)), -vec3<i32>(var_2, 24861i, -2723i) << (firstTrailingBit(u_input.b.ywz) % vec3<u32>(32u)), func_3(Struct_4(vec2<u32>(1u, global1.x)), ~1u, 16204i, 67289i).ywz)), vec4<u32>(countOneBits(18415u) ^ (~global1.x >> (abs(global1.x) % 32u)), 1u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b.x, 29696u), var_1.a, !var_0.x), _wgslsmith_mult_vec2_u32(~vec2<u32>(33926u, u_input.a.x), u_input.a)), _wgslsmith_sub_u32(global1.x << (~66485u % 32u), ~func_5(u_input.b.wzy, Struct_3(var_0, var_0.x, Struct_2(var_3.a, var_3.a.a), var_3.a, var_1.a), Struct_1(var_3.b, var_3.a.b)).x)));
}

