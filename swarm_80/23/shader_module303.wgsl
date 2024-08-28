struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_4,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-61995i, 0i, -46831i), vec3<i32>(66274i, -59826i, 23218i), vec3<i32>(0i, 1i, 1i), vec3<i32>(1i, 1i, 1i), vec3<i32>(0i, -30610i, -61713i), vec3<i32>(15799i, 0i, -9484i), vec3<i32>(-39597i, 43438i, -1629i), vec3<i32>(-1i, -90591i, -43757i), vec3<i32>(-1i, -1i, 1i), vec3<i32>(i32(-2147483648), 49307i, 1i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(-46726i, i32(-2147483648), 1i), vec3<i32>(0i, -3089i, 14869i), vec3<i32>(5788i, 0i, 12827i), vec3<i32>(0i, 37094i, 42964i));

var<private> global1: Struct_4 = Struct_4(4294967295u);

var<private> global2: array<bool, 13> = array<bool, 13>(false, false, false, false, false, true, true, false, true, true, false, true, true);

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-764f, 772f, -1000f, 961f), -1i, 31792u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: i32, arg_3: u32) -> vec4<f32> {
    global2 = array<bool, 13>();
    let var_0 = arg_0.a.d;
    var var_1 = Struct_3(Struct_2(arg_0.e, u_input.d, ~_wgslsmith_sub_u32(~1u, 52398u), vec2<u32>(arg_0.e.c, 39142u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1578f, _wgslsmith_f_op_f32(-225f * 874f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-577f, _wgslsmith_f_op_f32(-482f + arg_0.e.a.x))), global3.a.x), _wgslsmith_f_op_vec2_f32(-arg_0.b.xz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.a.x, -1000f)))) + arg_0.d), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(-917f, -1219f)), 1146f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.a.x + global3.a.x))), select(reverseBits(arg_0.e.b) ^ _wgslsmith_clamp_i32(u_input.c.x, global3.b, u_input.c.x), _wgslsmith_add_i32(-1838i, 1i), any(select(vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 13u)], true), true))), 1u, global3.d));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a)), -(~(max(var_1.a.a.b, -1i) << (143844u % 32u))), ~countOneBits(_wgslsmith_add_u32(_wgslsmith_div_u32(var_1.e.d, global3.d), abs(global1.a))), arg_3);
    let var_3 = -20468i & arg_2;
    return _wgslsmith_f_op_vec4_f32(global3.a * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + global3.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, var_2.a.x) - global3.a.x), _wgslsmith_f_op_f32(step(-1141f, _wgslsmith_f_op_f32(min(global3.a.x, 258f))))), var_1.e.a.x, _wgslsmith_f_op_f32(round(496f))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global0 = array<vec3<i32>, 15>();
    var var_0 = Struct_4(global3.c);
    return Struct_3(Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(-131f)), _wgslsmith_f_op_f32(-global3.a.x), -924f, 1876f), 0i, _wgslsmith_sub_u32(u_input.d.x, 1u) ^ ~72909u, var_0.a), u_input.d, _wgslsmith_dot_vec3_u32(~u_input.d, u_input.d) >> (abs(59167u) % 32u), vec2<u32>(0u, 45446u)), global3.a.zyy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(468f, global3.a.x)), _wgslsmith_f_op_vec2_f32(-global3.a.wy))), -510f, Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(Struct_1(vec4<f32>(-910f, global3.a.x, global3.a.x, 1248f), -38276i, 0u, u_input.d.x), u_input.d, global3.d, vec2<u32>(4294967295u, 35202u)), _wgslsmith_div_vec3_f32(vec3<f32>(1577f, -231f, global3.a.x), global3.a.zyx), _wgslsmith_f_op_vec2_f32(global3.a.zz * vec2<f32>(-944f, -1575f)), 247f, Struct_1(global3.a, -1i, var_0.a, 1u)), u_input.b, u_input.a, global3.c)), _wgslsmith_dot_vec4_i32(max(min(vec4<i32>(u_input.a, global3.b, -1i, global3.b), vec4<i32>(29096i, global3.b, global3.b, global3.b)), vec4<i32>(u_input.c.x, u_input.a, u_input.b.x, u_input.c.x) & vec4<i32>(global3.b, -23992i, u_input.c.x, -1i)), countOneBits(select(vec4<i32>(-3173i, 57434i, -1i, 0i), vec4<i32>(u_input.a, 1i, global3.b, u_input.a), vec4<bool>(arg_0, global2[_wgslsmith_index_u32(u_input.d.x, 13u)], arg_0, global2[_wgslsmith_index_u32(var_0.a, 13u)])))), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_0.a), select(u_input.d.zy, u_input.d.xy, vec2<bool>(global2[_wgslsmith_index_u32(var_0.a, 13u)], false)) << (vec2<u32>(var_0.a, global3.d) % vec2<u32>(32u))), global1.a));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> i32 {
    global2 = array<bool, 13>();
    var var_0 = func_2(global2[_wgslsmith_index_u32(arg_2, 13u)]);
    var var_1 = any(vec2<bool>(!all(vec4<bool>(false, true, global2[_wgslsmith_index_u32(1927u, 13u)], global2[_wgslsmith_index_u32(arg_3.d, 13u)])), all(vec2<bool>(true, true))));
    global0 = array<vec3<i32>, 15>();
    var_0 = Struct_3(Struct_2(func_2(_wgslsmith_div_f32(var_0.e.a.x, 2556f) == _wgslsmith_f_op_f32(-var_0.c.x)).e, _wgslsmith_mult_vec3_u32(firstLeadingBit(~vec3<u32>(global1.a, 1u, 1u)), ~vec3<u32>(arg_1, 27564u, 11871u)), arg_0, vec2<u32>(abs(~19139u), ~_wgslsmith_div_u32(arg_2, 52738u))), global3.a.xzz, arg_3.a.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1074f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2103f - global3.a.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-356f - 147f)) - _wgslsmith_f_op_f32(sign(arg_3.a.x)))), func_2(!all(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], false))).a.a);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(~4294967295u);
    global0 = array<vec3<i32>, 15>();
    let var_0 = vec3<bool>(!(_wgslsmith_sub_i32(2814i >> (u_input.d.x % 32u), func_1(global1.a, global3.c, global1.a, Struct_1(vec4<f32>(-238f, global3.a.x, 2009f, 509f), u_input.b.x, u_input.d.x, 31634u))) <= global3.b), true, _wgslsmith_mod_u32(7662u, u_input.d.x) > ~4480u);
    let var_1 = func_2(all(select(!select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), global2[_wgslsmith_index_u32(global3.c, 13u)]), vec4<bool>(any(vec4<bool>(true, global2[_wgslsmith_index_u32(global3.c, 13u)], var_0.x, var_0.x)), all(var_0.xx), all(vec2<bool>(var_0.x, global2[_wgslsmith_index_u32(56560u, 13u)])), true), !select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(18143u, 13u)], false), vec4<bool>(true, true, false, var_0.x), global2[_wgslsmith_index_u32(global1.a, 13u)]))));
    global1 = Struct_4(~(~_wgslsmith_clamp_u32(~global3.d, u_input.d.x, 0u)));
    let var_2 = Struct_5(func_2(abs(50547i) < min(u_input.a, -6210i)).a.a.a.wx, Struct_4(6736u), Struct_4(global3.c), ~vec4<i32>(global3.b, global3.b, _wgslsmith_clamp_i32(u_input.b.x, ~var_1.a.a.b, 1i), _wgslsmith_add_i32(~1i, u_input.a)), 53242i);
    var var_3 = Struct_4((1u >> (var_2.c.a % 32u)) | ~var_2.b.a);
    global2 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.x), _wgslsmith_mult_i32(func_2(all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(19393u, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)], true), vec4<bool>(true, true, true, true), true))).a.a.b, -firstTrailingBit(_wgslsmith_div_i32(-1i, var_1.a.a.b))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(-12824i, var_1.a.a.b)) & _wgslsmith_mult_vec2_i32(u_input.c, var_2.d.yw), -(u_input.b.zz ^ var_2.d.zy)), _wgslsmith_add_vec2_i32(select(var_2.d.zy, var_2.d.xz, vec2<bool>(var_0.x, false)) >> (var_1.a.b.yz % vec2<u32>(32u)), select(var_2.d.zw, u_input.c, false))));
}

