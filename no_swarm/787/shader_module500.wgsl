struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-450f, 734f, 971f, 1560f), vec4<f32>(803f, -370f, 1053f, -330f), vec4<f32>(-1018f, 209f, 823f, -210f), vec4<f32>(566f, 1092f, -969f, 1095f), vec4<f32>(894f, -1403f, -756f, -737f), vec4<f32>(626f, 1123f, 231f, -1520f), vec4<f32>(-1231f, 592f, 688f, 307f));

var<private> global1: u32 = 4294967295u;

var<private> global2: bool;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<u32>(42642u, 0u), vec3<i32>(-1i, i32(-2147483648), -27323i), vec3<f32>(441f, 1532f, 473f), vec2<bool>(false, false)), Struct_1(vec2<i32>(2147483647i, 21237i), vec2<u32>(4294967295u, 48214u), vec3<i32>(33407i, -1i, -1i), vec3<f32>(506f, -795f, -144f), vec2<bool>(true, true)), Struct_1(vec2<i32>(34705i, -40423i), vec2<u32>(1263u, 0u), vec3<i32>(-10035i, 1i, 2147483647i), vec3<f32>(1000f, 122f, -1154f), vec2<bool>(false, true)), Struct_1(vec2<i32>(-3451i, 25399i), vec2<u32>(4294967295u, 0u), vec3<i32>(-1i, -1i, -35012i), vec3<f32>(831f, 561f, 1107f), vec2<bool>(true, true)), Struct_1(vec2<i32>(2147483647i, 0i), vec2<u32>(56237u, 1u), vec3<i32>(10391i, 2147483647i, 2147483647i), vec3<f32>(1000f, 372f, -393f), vec2<bool>(true, true)), Struct_1(vec2<i32>(2147483647i, 7253i), vec2<u32>(31394u, 4294967295u), vec3<i32>(-55677i, 44412i, -12634i), vec3<f32>(-1279f, 443f, -483f), vec2<bool>(false, true)));

var<private> global4: array<u32, 4>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> u32 {
    global1 = 0u;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1699f))), true)));
    global2 = false;
    return arg_1;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>) -> vec2<i32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstTrailingBit(countOneBits(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(742u, 4u)], 4u)])), func_3(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-403f, arg_0.x))), ~(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2712u, 4u)], 4u)], 18982u) & (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 4u)], 4u)] >> (0u % 32u))))), 6u)];
    global2 = arg_0.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -470f));
    var var_1 = Struct_1(vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(1i, u_input.a.x)), var_0.b, vec3<i32>(abs(i32(-1i) * -19063i), ~(-2147483647i), ~(arg_1.x >> (_wgslsmith_clamp_u32(var_0.b.x, 10049u, 4294967295u) % 32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-2019f, _wgslsmith_f_op_f32(min(1402f, 426f)))), arg_0.x, _wgslsmith_f_op_f32(-var_0.d.x))), vec2<bool>(!all(!vec2<bool>(var_0.e.x, true)), all(vec2<bool>(false, 568f >= arg_0.x))));
    global4 = array<u32, 4>();
    global0 = array<vec4<f32>, 7>();
    return -_wgslsmith_mult_vec2_i32(vec2<i32>(abs(abs(var_0.a.x)), var_0.a.x), select(var_1.a, -(vec2<i32>(1i, -60535i) | var_1.a), !any(vec3<bool>(true, var_0.e.x, true))));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(15298i, ~0i), _wgslsmith_mult_vec2_i32(func_2(vec2<f32>(-1476f, -380f), u_input.a.ww), abs(vec2<i32>(1i, u_input.a.x)))), -vec2<i32>(-31827i, u_input.a.x) | (vec2<i32>(-1i) * -u_input.a.xx)), _wgslsmith_mult_vec2_u32(~vec2<u32>(countOneBits(global4[_wgslsmith_index_u32(8809u, 4u)]), ~global4[_wgslsmith_index_u32(0u, 4u)]), vec2<u32>(19840u, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(17858u, countOneBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(39406u, 4u)], 4u)], 4u)], 4u)], 4u)])), 4u)])), _wgslsmith_mult_vec3_i32(vec3<i32>(-9735i, -59582i, ~(-u_input.a.x)), reverseBits(u_input.a.zyw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1270f, -870f, 952f)))))), select(vec2<bool>(true, select(all(vec2<bool>(true, false)), any(vec3<bool>(true, false, false)), true)), !vec2<bool>(all(vec3<bool>(true, false, true)), true), vec2<bool>(true, true)));
    let var_1 = firstLeadingBit(~(~(var_0.b.x ^ var_0.b.x) >> (((global4[_wgslsmith_index_u32(var_0.b.x, 4u)] | 76769u) >> (~0u % 32u)) % 32u)));
    let var_2 = all(select(var_0.e, vec2<bool>(!var_0.e.x, any(var_0.e)), !var_0.e.x));
    let var_3 = Struct_2(func_2(var_0.d.xy, _wgslsmith_sub_vec2_i32(u_input.a.xz, (var_0.c.zz ^ var_0.c.zy) & ~vec2<i32>(u_input.a.x, 10709i))).x);
    let var_4 = Struct_1(countOneBits(vec2<i32>(min(var_0.a.x, max(u_input.a.x, var_3.a)), -8396i)), ~(~var_0.b), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(1i, reverseBits(var_0.a.x)), var_3.a ^ var_3.a, func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, 1232f)), firstLeadingBit(vec2<i32>(u_input.a.x, var_3.a))).x), u_input.a.ywz), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(step(-1213f, _wgslsmith_f_op_f32(var_0.d.x - 400f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1745f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-467f))), 1827f), select(select(!vec3<bool>(var_2, var_0.e.x, var_0.e.x), vec3<bool>(true, var_2, true), var_2 & var_2), !(!vec3<bool>(false, var_2, true)), vec3<bool>(true, false, var_0.e.x)))), var_0.e);
    return StorageBuffer(global0[_wgslsmith_index_u32(var_4.b.x, 7u)], var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~select(1u, _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(25494u, global4[_wgslsmith_index_u32(64407u, 4u)], global4[_wgslsmith_index_u32(83810u, 4u)])), false));
    global4 = array<u32, 4>();
    global0 = array<vec4<f32>, 7>();
    let var_1 = select(false, false, select(all(vec4<bool>(true, true, true, true)), true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), any(vec3<bool>(true, true, false))))));
    global3 = array<Struct_1, 6>();
    let var_2 = vec4<f32>(-1993f, 273f, _wgslsmith_f_op_f32(336f + _wgslsmith_f_op_f32(ceil(-1749f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1f)), 475f)), 288f)));
    global3 = array<Struct_1, 6>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_2.yyz + var_2.zyz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-329f, var_2.x, 231f))) - _wgslsmith_f_op_vec3_f32(abs(var_2.ywx)))))));
    let x = u_input.a;
    s_output = func_1();
}

