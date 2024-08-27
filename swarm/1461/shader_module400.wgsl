struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14>;

var<private> global1: array<vec2<bool>, 29>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    var var_0 = vec3<f32>(1372f, -1000f, _wgslsmith_f_op_f32(-922f - _wgslsmith_f_op_f32(f32(-1f) * -279f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - 1331f))))), _wgslsmith_f_op_f32(f32(-1f) * -163f)));
    var var_1 = _wgslsmith_f_op_f32(var_0.x * 515f);
    var var_2 = Struct_2(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, -1i, 18258i)), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -24355i, 0i), vec3<i32>(3961i, -1i, 1i)))), Struct_1(arg_0, !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 4294967295u, arg_0.x), 5855u), 29u)], vec4<i32>(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(4104i, -7823i, 11625i, 2607i), vec4<i32>(1i, 13496i, 2147483647i, -2147483647i)), _wgslsmith_clamp_i32(32565i, countOneBits(-2147483647i), 4105i), -2909i)), Struct_1(vec3<u32>(u_input.a, abs(arg_0.x) << (arg_0.x % 32u), 18537u), vec2<bool>(true, true), vec4<i32>(~(-28540i), _wgslsmith_mod_i32(~(-41687i), i32(-1i) * -1i), 11976i, ~17853i << (1u % 32u))), select(vec3<bool>(true, true, true), vec3<bool>(all(select(global1[_wgslsmith_index_u32(arg_0.x, 29u)], vec2<bool>(true, true), true)), true, true), true));
    var var_3 = select(select(vec3<bool>(var_2.c.b.x, all(var_2.d), true), var_2.d, vec3<bool>(true, any(select(vec4<bool>(true, false, true, var_2.d.x), global0[_wgslsmith_index_u32(43160u, 14u)], var_2.d.x)), all(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(41142u, 1u)), 29u)]))), !var_2.d, var_2.d);
    return !var_2.d;
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(590f, 423f, -1291f, -105f) * vec4<f32>(-1074f, 849f, -171f, -239f)) + vec4<f32>(-1521f, -1249f, -1348f, 212f)), vec4<f32>(_wgslsmith_f_op_f32(floor(955f)), -1076f, _wgslsmith_f_op_f32(f32(-1f) * -1208f), -1004f)))));
    var var_1 = Struct_3(vec2<i32>(_wgslsmith_add_i32(abs(abs(37069i)), i32(-1i) * -102786i), -((-2147483647i << (u_input.a % 32u)) << (~28798u % 32u))), Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.a, 33507u, 9192u)), ~vec3<u32>(u_input.a, u_input.a, 4294967295u)), abs(~vec3<u32>(u_input.a, u_input.a, 0u))), global1[_wgslsmith_index_u32(~countOneBits(~34222u), 29u)], select(select(vec4<i32>(50207i, 2147483647i, 2554i, -313i), ~vec4<i32>(28421i, 0i, -9093i, -25574i), true), vec4<i32>(1i, 0i, -29859i, -2147483647i) ^ firstTrailingBit(vec4<i32>(0i, -11885i, 63966i, -21559i)), any(vec4<bool>(true, true, true, false)))));
    var var_2 = var_1.b.a.xx;
    let var_3 = Struct_2(39832i, var_1.b, Struct_1(firstLeadingBit(var_1.b.a), var_1.b.b, vec4<i32>(-22503i, 2147483647i ^ (-11224i >> (var_2.x % 32u)), -2147483647i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_1.a.x, -1i, var_1.a.x, 1826i)), ~var_1.b.c))), !(!(!func_3(vec3<u32>(1u, u_input.a, 29575u)))));
    let var_4 = Struct_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -64056i), vec2<i32>(_wgslsmith_mod_i32(-17526i, _wgslsmith_dot_vec4_i32(var_3.c.c, vec4<i32>(var_1.a.x, -1i, var_3.b.c.x, 1i))), var_1.a.x), ((var_1.b.c.ww ^ vec2<i32>(1i, var_1.a.x)) << (~vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u))) | var_1.b.c.yw), Struct_1(var_3.c.a, select(select(!var_1.b.b, !vec2<bool>(true, var_3.b.b.x), select(var_3.d.yx, global1[_wgslsmith_index_u32(4294967295u, 29u)], true)), vec2<bool>(!var_1.b.b.x, !var_1.b.b.x), all(vec2<bool>(true, true))), vec4<i32>(_wgslsmith_clamp_i32(0i, firstLeadingBit(-64733i), var_3.c.c.x), -30368i, -1265i, firstLeadingBit(-var_3.a))));
    return !(!(!vec2<bool>(select(var_1.b.b.x, var_4.b.b.x, var_3.b.b.x), true)));
}

fn func_1() -> bool {
    let var_0 = Struct_2(abs(-7861i), Struct_1(abs(vec3<u32>(34698u, 35655u, select(4294967295u, 0u, false))), select(!global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 29u)], func_2(), !func_2()), vec4<i32>(countOneBits(max(-68158i, -1i)), ~reverseBits(38894i), (i32(-1i) * -8074i) << (u_input.a % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(22809i, 1i, 64308i), firstTrailingBit(vec3<i32>(2147483647i, -1i, 34858i))))), Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), firstLeadingBit(vec3<u32>(4294967295u, u_input.a, u_input.a))) | ~(~vec3<u32>(1u, u_input.a, 33484u)), select(global1[_wgslsmith_index_u32(71195u, 29u)], vec2<bool>(true, true), select(false, true, all(vec2<bool>(true, false)))), vec4<i32>(countOneBits(i32(-1i) * -25663i), abs(select(0i, 33093i, true)), 1i, _wgslsmith_mult_i32(max(16727i, 32177i), _wgslsmith_dot_vec2_i32(vec2<i32>(29795i, -2147483647i), vec2<i32>(0i, -1i))))), select(!vec3<bool>(true, true, any(global0[_wgslsmith_index_u32(u_input.a, 14u)])), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -1i <= ~_wgslsmith_clamp_i32(16475i, 0i, -37842i)));
    var var_1 = -_wgslsmith_clamp_i32(~1i, _wgslsmith_sub_i32(var_0.a, countOneBits(var_0.c.c.x)), _wgslsmith_dot_vec4_i32(var_0.b.c, _wgslsmith_div_vec4_i32(var_0.b.c, var_0.c.c))) & 7130i;
    global1 = array<vec2<bool>, 29>();
    var var_2 = select(!(!func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 18710u, var_0.c.a.x), var_0.b.a, vec3<u32>(1u, 42626u, 51441u))).xx), func_3(~(~vec3<u32>(var_0.b.a.x, u_input.a, u_input.a))).yz, vec2<bool>(true, true));
    let var_3 = -(~(~(vec3<i32>(1i, -28424i, var_0.a) << (vec3<u32>(var_0.b.a.x, 1u, var_0.b.a.x) % vec3<u32>(32u))) | vec3<i32>(var_0.b.c.x, _wgslsmith_div_i32(21608i, var_0.a), 1i)));
    return !func_2().x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 14>();
    let var_0 = vec2<i32>(-1i, _wgslsmith_sub_i32(79233i, 1i));
    var var_1 = vec3<bool>(true, true, any(vec2<bool>(true, true)) || (var_0.x >= _wgslsmith_div_i32(~27616i, select(var_0.x, -12077i, true))));
    let var_2 = Struct_1(~(~vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_add_u32(81587u, u_input.a), u_input.a)), select(!vec2<bool>(var_1.x, true), var_1.zx, vec2<bool>(true, var_1.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(var_0.x, -35502i, 2147483647i, var_0.x), abs(vec4<i32>(var_0.x, var_0.x, 28093i, var_0.x))) ^ -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0.x, 12409i, var_0.x), vec4<i32>(var_0.x, 41764i, 2147483647i, 0i)), vec4<i32>(var_0.x, 26662i, _wgslsmith_div_i32(52820i, reverseBits(-52031i)), var_0.x)));
    var_1 = !vec3<bool>(any(select(!vec2<bool>(true, var_1.x), select(var_2.b, var_2.b, false), var_2.b.x)), func_1(), var_2.a.x < 4294967295u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-204f)) * -200f);
    let var_4 = var_2.b.x;
    var var_5 = ~1i;
    global1 = array<vec2<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_3, -981f))))))), 115f, var_2.a.x, 387f);
}

