struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, false, false, true, false, true, true, false);

var<private> global1: array<bool, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(firstTrailingBit(14271i) >> (arg_0.a.c.x % 32u), _wgslsmith_mult_i32(0i & _wgslsmith_div_i32(u_input.a, -2147483647i), u_input.a)), -1i, u_input.a);
    var var_1 = Struct_3(arg_0.a);
    let var_2 = abs(vec3<u32>(var_1.a.c.x, firstLeadingBit(~_wgslsmith_div_u32(u_input.b, var_1.a.b.x)), 1475u));
    global0 = array<bool, 8>();
    let var_3 = !(!(!vec3<bool>(true, false, var_1.a.a.x < arg_0.a.a.x)));
    return firstLeadingBit(1u);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: u32) -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-502f, 1086f) - vec2<f32>(-210f, 333f)), vec2<f32>(-578f, -259f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-851f, -949f))), _wgslsmith_div_vec2_f32(vec2<f32>(1514f, -2922f), vec2<f32>(-770f, 270f)))), ~u_input.e, u_input.d, !select(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_2, 26u)], false, global1[_wgslsmith_index_u32(arg_2, 26u)]), vec4<bool>(false, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 26u)], global1[_wgslsmith_index_u32(arg_0, 26u)], global0[_wgslsmith_index_u32(46136u, 8u)], false))));
    var var_1 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(30026u, var_0.a.c.x, _wgslsmith_clamp_u32(var_0.a.c.x, 73135u, var_0.a.c.x)), vec3<u32>(var_0.a.b.x, 0u, ~arg_0)));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(var_0.a.a, var_0.a.a, global1[_wgslsmith_index_u32(1u, 26u)])))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(abs(var_0.a.b), select(vec4<u32>(0u, 3886u, 57643u, var_1.x), var_0.a.b, var_0.a.d)), vec4<u32>(_wgslsmith_clamp_u32(var_0.a.b.x, arg_2, var_0.a.b.x), 1u, var_1.x, ~var_0.a.b.x)), vec3<u32>(var_0.a.c.x, max(arg_0, ~arg_0), max(arg_2, ~50143u)), select(var_0.a.d, var_0.a.d, !(!var_0.a.d))));
    global0 = array<bool, 8>();
    let var_3 = var_2.a.d.ww;
    return var_2.a.c;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_0 = firstTrailingBit(abs(vec2<u32>(func_2(Struct_3(Struct_1(vec2<f32>(129f, 371f), u_input.e, u_input.e.zxw, vec4<bool>(false, true, arg_0.x, arg_0.x)))), ~34367u))) ^ ~firstLeadingBit(~vec2<u32>(1u, 86704u));
    global0 = array<bool, 8>();
    var var_1 = firstLeadingBit(min(~_wgslsmith_add_vec2_i32(min(vec2<i32>(-2787i, 5603i), vec2<i32>(32118i, u_input.a)), vec2<i32>(u_input.a, -2147483647i) ^ vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-(u_input.a | u_input.a), u_input.a)));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-724f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f - -302f) - 1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-958f, 2126f)), _wgslsmith_f_op_f32(-1572f - 465f)))), select(max(vec4<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.b, 53829u, u_input.e.x, 23604u)), 43748u, select(var_0.x, 10258u, global0[_wgslsmith_index_u32(var_0.x, 8u)])), u_input.e), ~u_input.e, false), func_3((u_input.d.x >> (var_0.x % 32u)) | _wgslsmith_dot_vec2_u32(abs(u_input.c), _wgslsmith_sub_vec2_u32(var_0, vec2<u32>(72618u, var_0.x))), u_input.a >> (_wgslsmith_add_u32(var_0.x | 892u, ~13316u) % 32u), _wgslsmith_div_u32(u_input.d.x, _wgslsmith_div_u32(u_input.c.x, var_0.x))), vec4<bool>(global0[_wgslsmith_index_u32(0u, 8u)], all(arg_0.zx), true, global0[_wgslsmith_index_u32(u_input.e.x, 8u)]));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1547f, !(true || global1[_wgslsmith_index_u32(16856u, 26u)])))));
    let var_1 = arg_1.a.x;
    var var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1286f, 2048f, arg_2, arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0, -558f, arg_2))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_f_op_f32(exp2(arg_0)), -111f, -295f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(436f, var_0), _wgslsmith_f_op_f32(min(407f, -499f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - var_0) + _wgslsmith_f_op_f32(f32(-1f) * -806f)))), Struct_2(_wgslsmith_sub_i32(-abs(-1i), u_input.a), arg_1, min(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 7703i), vec3<i32>(-11238i, -20545i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i)), -vec3<i32>(u_input.a, -1i, u_input.a)) << (arg_1.c % vec3<u32>(32u)), u_input.d.x << (u_input.b % 32u)), Struct_1(arg_1.a, u_input.e, ~u_input.d, select(vec4<bool>(arg_1.b.x < u_input.d.x, true, !arg_1.d.x, global1[_wgslsmith_index_u32(1132u, 26u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global1[_wgslsmith_index_u32(23582u, 26u)], false, arg_1.d.x), func_1(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.e.x, 8u)])).d, !vec4<bool>(false, arg_1.d.x, true, true)), false)));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(u_input.a, -u_input.a)), ~(~(~u_input.a)));
    var_2 = Struct_4(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(1f + 212f), func_1(!(!arg_1.d.ywy)).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - -1243f)), Struct_2(var_2.c.c.x, arg_1, _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(select(var_2.c.c, var_2.c.c, true), vec3<i32>(var_3, -3592i, 8245i) & var_2.c.c), var_2.c.c), ~(~select(0u, 12661u, true))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1.a)))), vec4<u32>(0u, 1u, u_input.c.x, var_2.c.d & max(1u, 4294967295u)), ~u_input.d, !var_2.c.b.d));
    return firstTrailingBit(var_3) | var_3;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global1 = array<bool, 26>();
    var var_0 = arg_1.a;
    let var_1 = arg_1;
    let var_2 = vec4<i32>(-reverseBits(_wgslsmith_div_i32(arg_0, 29670i)), u_input.a, 10410i, countOneBits(-11747i)) | abs(select(vec4<i32>(-1i, u_input.a, 21906i, arg_0), abs(vec4<i32>(u_input.a, -5957i, -1i, 19265i)), vec4<bool>(arg_1.a.d.x, false, arg_3.d.x, true)) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(4466i, u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, -1303i, arg_0, u_input.a)), -2147483647i, 21108i, _wgslsmith_div_i32(-43176i, arg_0)));
    let var_3 = Struct_2(var_2.x, func_1(arg_2.d.xyw), var_2.yzz, func_1(func_1(arg_1.a.d.wzw).d.zzx).c.x);
    return var_3.b.d.wy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = func_5(max(_wgslsmith_mult_i32(func_4(_wgslsmith_f_op_f32(ceil(1448f)), func_1(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -687f)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, u_input.a, 1i), vec3<i32>(u_input.a, var_0, u_input.a)), -35211i)), 2147483647i), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1919f) + vec2<f32>(-665f, -1037f))), max(vec4<u32>(22494u, 53188u, u_input.d.x, u_input.e.x), ~vec4<u32>(u_input.e.x, u_input.c.x, 1u, u_input.d.x)), u_input.d, vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 26u)] | global1[_wgslsmith_index_u32(21951u, 26u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 34637u), 26u)], any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 8u)], true, true)), global0[_wgslsmith_index_u32(reverseBits(u_input.e.x), 8u)]))), func_1(select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 8u)], true), vec3<bool>(global0[_wgslsmith_index_u32(47548u, 8u)], false, global1[_wgslsmith_index_u32(u_input.d.x, 26u)]), any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 8u)], false, global0[_wgslsmith_index_u32(1u, 8u)]))), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(78570u, 26u)], global1[_wgslsmith_index_u32(u_input.d.x, 26u)]), vec3<bool>(global1[_wgslsmith_index_u32(45089u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], false)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, _wgslsmith_mult_u32(0u, u_input.d.x)), 26u)])), func_1(!vec3<bool>(global0[_wgslsmith_index_u32(11740u, 8u)], u_input.c.x < u_input.d.x, true)));
    var var_2 = firstTrailingBit(~(~_wgslsmith_add_vec2_u32(u_input.d.xx, vec2<u32>(u_input.e.x, 1u)) << (vec2<u32>(countOneBits(37957u), 30092u) % vec2<u32>(32u))));
    let var_3 = var_1;
    var var_4 = -reverseBits(((vec4<i32>(-1i, u_input.a, -9406i, var_0) >> (u_input.e % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(u_input.e, vec4<u32>(0u, 57165u, u_input.b, 0u), u_input.e) % vec4<u32>(32u))) >> (vec4<u32>(~16022u, 68035u, 28466u, ~8467u) % vec4<u32>(32u)));
    let var_5 = ~u_input.d.x;
    var var_6 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(40367i, 1i), ~(-var_4.xy | countOneBits(var_4.wx)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, _wgslsmith_sub_i32(var_0, u_input.a), func_1(!vec3<bool>(global1[_wgslsmith_index_u32(~2791u, 26u)], true, var_1.x)).b, u_input.e);
}

