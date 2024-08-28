struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: i32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-1611f, -620f, 630f, -593f, -603f, 894f, 405f, 743f, 776f, 564f, 1000f, 104f, 645f, 686f, 467f, -1020f, 125f, 1894f, 1571f, -494f, 1140f, -2823f, -1633f, 351f, -465f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    let var_0 = ~vec2<i32>(1i, 1i);
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    let var_1 = Struct_1(select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))) && false), -_wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_0.x, -30485i, var_0.x)), max(vec3<i32>(var_0.x, 7284i, -1163i), vec3<i32>(2147483647i, var_0.x, var_0.x)) ^ ~vec3<i32>(-8658i, -65226i, -1i)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, ~1u), vec2<u32>(~u_input.a.x, arg_0 & 94411u)), all(vec3<bool>(any(vec4<bool>(false, false, false, false)) | true, select(any(vec4<bool>(false, true, true, true)), true, false), !any(vec3<bool>(true, true, true)))));
    global0 = array<f32, 25>();
    return _wgslsmith_f_op_f32(min(-1397f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(4294967295u, 0u), 1u >> (u_input.b.x % 32u)), 25u)])) * 1033f)));
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    global0 = array<f32, 25>();
    var var_0 = Struct_3(Struct_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, true), true), abs(vec3<i32>(1i, 1i, 1i)), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b), u_input.b, ~u_input.b), true), -1171f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(0u, vec2<f32>(arg_0.x, -1000f))) - _wgslsmith_div_f32(arg_0.x, arg_0.x))), min(vec3<u32>(min(~u_input.a.x, u_input.b.x), firstTrailingBit(min(u_input.a.x, 31990u)), firstTrailingBit(u_input.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 19960u)), 0u), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 32932u), vec3<u32>(72322u, 24739u, u_input.a.x), vec3<u32>(u_input.c, 63560u, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 1u, 30965u), vec3<u32>(7836u, 14581u, 15411u), vec3<u32>(44498u, u_input.a.x, u_input.c))))), Struct_2(Struct_1(vec2<bool>(true, select(false, false, false)), select(vec3<i32>(0i, 8708i, 2147483647i), vec3<i32>(-45329i, 2147483647i, 2147483647i), true), vec2<u32>(1u, 1u), !(global0[_wgslsmith_index_u32(76189u, 25u)] != global0[_wgslsmith_index_u32(u_input.c, 25u)])), true), _wgslsmith_mod_i32(select(0i, -(~0i), all(vec3<bool>(true, true, true))), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, -11087i >> (1u % 32u)), max(select(vec2<i32>(-22366i, -8318i), vec2<i32>(2147483647i, -1i), vec2<bool>(true, false)), select(vec2<i32>(-1i, 20314i), vec2<i32>(43876i, 0i), true)))), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(1i, abs(81538i))), -abs(vec2<i32>(1i, 3888i))));
    let var_1 = Struct_3(Struct_2(Struct_1(vec2<bool>(var_0.a.a.d, var_0.c.b), select(var_0.c.a.b, countOneBits(vec3<i32>(var_0.c.a.b.x, var_0.c.a.b.x, 40542i)), select(vec3<bool>(var_0.a.b, false, true), vec3<bool>(var_0.c.b, true, var_0.a.b), vec3<bool>(var_0.c.b, var_0.c.b, true))), vec2<u32>(~u_input.a.x, 1u), true), false), reverseBits(countOneBits(var_0.b)), var_0.a, var_0.d, _wgslsmith_mult_vec2_i32(select(var_0.c.a.b.xz, ~vec2<i32>(-29168i, var_0.e.x), false), ~(~select(vec2<i32>(-21964i, var_0.d), vec2<i32>(21518i, var_0.c.a.b.x), vec2<bool>(var_0.c.a.d, true)))));
    global0 = array<f32, 25>();
    let var_2 = Struct_1(select(vec2<bool>(false, var_0.a.a.a.x), !(!var_1.c.a.a), vec2<bool>(false, true)), var_0.c.a.b, var_0.c.a.c, (673f != _wgslsmith_f_op_f32(abs(arg_0.x))) || false);
    return var_0.a.a.a;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> f32 {
    global0 = array<f32, 25>();
    var var_0 = arg_3;
    let var_1 = false;
    let var_2 = Struct_1(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.b.x, 25u)])), _wgslsmith_f_op_f32(f32(-1f) * -614f)) * vec2<f32>(595f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0.c.x, 25u)]))))), vec3<i32>(2147483647i, firstTrailingBit(~1i & ~var_0.b.x), _wgslsmith_mod_i32(var_0.b.x, var_0.b.x)), ~var_0.c, any(select(!vec3<bool>(arg_3.d, var_1, var_0.a.x), select(select(vec3<bool>(arg_1.x, false, var_1), vec3<bool>(var_0.d, arg_3.d, true), true), vec3<bool>(true, false, var_1), vec3<bool>(arg_3.a.x, false, true)), vec3<bool>(var_1, var_0.a.x && var_1, true))));
    var var_3 = Struct_5(Struct_4(select(vec3<bool>(false, true, true), select(!vec3<bool>(var_2.a.x, true, arg_1.x), vec3<bool>(var_0.d, var_2.a.x, false), true), vec3<bool>(any(vec3<bool>(arg_3.a.x, false, false)), var_2.a.x, any(arg_3.a))), all(vec2<bool>(true, any(vec4<bool>(var_1, true, var_1, var_2.d)))), countOneBits(vec4<i32>(-1i) * -vec4<i32>(arg_0, -1i, arg_0, 7441i))), Struct_3(Struct_2(arg_3, true), vec3<u32>(~(~var_2.c.x), var_0.c.x, reverseBits(u_input.a.x)), Struct_2(arg_3, var_0.a.x), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_0.b, var_0.b), -2147483647i) & -2147483647i, _wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(var_2.b.xx, var_0.b.zy, arg_3.b.xx), var_0.b.xx)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_2.c.x, 25u)], -302f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 25>();
    var var_0 = vec3<bool>(true, any(vec4<bool>(true, false, any(vec2<bool>(true, false)), true)) != any(vec3<bool>(select(false, true, false), true, true)), false);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(~0u, 25u)], 779f, _wgslsmith_f_op_f32(func_1(-6870i, vec2<bool>(var_0.x, true), -66244i, Struct_1(vec2<bool>(var_0.x, false), vec3<i32>(-2147483647i, 7121i, 30346i), u_input.b, true)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 1134f, -311f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], 154f, global0[_wgslsmith_index_u32(2340u, 25u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 25u)], -2303f, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 25u)], 140f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1387f, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], -2412f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(532f, -223f, global0[_wgslsmith_index_u32(1u, 25u)])))))));
    let var_2 = Struct_3(Struct_2(Struct_1(func_2(var_1.yx), -vec3<i32>(1i, 1i, 1i), vec2<u32>(~30898u, u_input.c), any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), true))), true), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)) >> (((vec3<u32>(u_input.a.x, u_input.a.x, u_input.c) | vec3<u32>(0u, 19693u, u_input.a.x)) << ((vec3<u32>(u_input.b.x, 0u, u_input.b.x) >> (vec3<u32>(124735u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_2(Struct_1(var_0.yy, _wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, 2147483647i, 16894i), firstTrailingBit(vec3<i32>(81900i, 2147483647i, -1i))), min(vec2<u32>(1u, 1u), vec2<u32>(27036u, u_input.a.x)), false), !all(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), true))), ~_wgslsmith_add_i32(-34491i, max(_wgslsmith_div_i32(0i, 47731i), -2147483647i)), vec2<i32>(1i, 46951i));
    var_0 = select(select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(true, true, true), !(!vec3<bool>(false, true, var_0.x))), select(vec3<bool>(all(vec4<bool>(true, var_0.x, var_2.a.b, false)), var_2.a.b || var_0.x, !var_2.c.b), !(!vec3<bool>(var_0.x, false, var_2.a.b)), var_2.c.a.b.x > -17113i), vec3<bool>(false, all(!vec4<bool>(true, false, var_2.c.b, false)), true)), select(select(select(vec3<bool>(var_0.x, true, var_2.a.a.d), !vec3<bool>(var_2.a.b, true, true), vec3<bool>(var_2.c.b, false, var_0.x)), !(!vec3<bool>(false, var_0.x, var_0.x)), var_2.c.a.a.x), !vec3<bool>(true, select(true, true, true), true), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(var_2.c.b, false, false), vec3<bool>(true, var_2.a.a.a.x, var_0.x), vec3<bool>(var_2.c.a.a.x, var_0.x, var_0.x))), !(!vec3<bool>(true, var_2.a.a.d, var_0.x)), all(vec3<bool>(false, true, false)))), !(!(!select(vec3<bool>(true, var_2.a.a.d, var_0.x), vec3<bool>(var_2.a.a.a.x, var_0.x, true), var_2.a.b))));
    var var_3 = u_input.c;
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(41288u, 25u)] * -1290f)), ~max(reverseBits(vec4<u32>(var_2.a.a.c.x, u_input.c, var_2.b.x, 6990u)), firstTrailingBit(vec4<u32>(var_2.b.x, var_2.b.x, 18156u, u_input.a.x))) & ~vec4<u32>(111813u, 118184u ^ var_2.b.x, select(23361u, 0u, false), max(u_input.b.x, u_input.b.x)), global0[_wgslsmith_index_u32(reverseBits(~select(~1u, ~var_2.a.a.c.x, !var_0.x)), 25u)], var_2.c.a.c.x);
}

