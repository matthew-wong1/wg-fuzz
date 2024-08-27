struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: i32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-962f), Struct_1(-426f), Struct_1(773f), Struct_1(-2223f), Struct_1(915f), Struct_1(482f), Struct_1(238f), Struct_1(1402f), Struct_1(252f));

var<private> global1: array<bool, 22> = array<bool, 22>(true, true, true, true, false, true, true, false, false, false, true, false, false, true, true, true, false, true, true, true, false, false);

var<private> global2: Struct_3 = Struct_3(vec4<u32>(0u, 45761u, 0u, 25629u), -1i, vec3<bool>(true, true, true), vec3<i32>(i32(-2147483648), -1i, -75493i));

var<private> global3: array<Struct_3, 21>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> Struct_1 {
    global1 = array<bool, 22>();
    let var_0 = global2.c.xz;
    var var_1 = !select(vec4<bool>(true || global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(9142u, global2.a.x), 22u)], any(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(0u, 22u)])), false, true), !vec4<bool>(global2.c.x, true, false, global1[_wgslsmith_index_u32(global2.a.x, 22u)] || global2.c.x), !global1[_wgslsmith_index_u32(reverseBits(29101u), 22u)]);
    global0 = array<Struct_1, 9>();
    let var_2 = global3[_wgslsmith_index_u32(global2.a.x, 21u)];
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-642f, -1939f, var_0.x)))))))));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> i32 {
    global0 = array<Struct_1, 9>();
    let var_0 = ~(~(~9051u));
    global2 = arg_1;
    global1 = array<bool, 22>();
    return 59866i;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    global2 = Struct_3(_wgslsmith_clamp_vec4_u32(abs(abs(vec4<u32>(13369u, global2.a.x, 4294967295u, arg_3.a.x) ^ vec4<u32>(33611u, 35320u, 29541u, 39575u))), ~global2.a, global2.a), arg_3.b, vec3<bool>(!arg_3.c.x, global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(1u, abs(global2.a.x))), 22u)], true), arg_3.d);
    global2 = arg_3;
    let var_0 = Struct_3(vec4<u32>(reverseBits(~global2.a.x), ~(~arg_3.a.x), 4294967295u, _wgslsmith_dot_vec4_u32(~min(arg_3.a, vec4<u32>(arg_3.a.x, 4294967295u, global2.a.x, arg_3.a.x)), ~vec4<u32>(arg_3.a.x, arg_3.a.x, 1u, 16811u))), global2.d.x, vec3<bool>(true, -_wgslsmith_mult_i32(global2.b, 13608i) < _wgslsmith_div_i32(20169i, 0i << (arg_3.a.x % 32u)), any(select(vec2<bool>(arg_2.a, arg_0.b), select(vec2<bool>(true, arg_0.b), vec2<bool>(false, true), arg_2.b), global2.c.yz))), vec3<i32>(arg_0.d, func_2(_wgslsmith_mod_i32(1i, min(-2147483647i, 2147483647i)), Struct_3(global2.a, -1i, select(vec3<bool>(arg_3.c.x, true, arg_2.b), vec3<bool>(false, true, arg_3.c.x), vec3<bool>(false, false, arg_2.a)), firstLeadingBit(global2.d))), 1i));
    global0 = array<Struct_1, 9>();
    let var_1 = 14926i;
    return arg_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec3_u32(global2.a.zxz, global2.a.wyz);
    let var_1 = arg_1;
    var var_2 = u_input.e;
    var var_3 = _wgslsmith_sub_vec2_i32(-_wgslsmith_mult_vec2_i32(arg_0.e, abs(reverseBits(global2.d.yy))), select(countOneBits(vec2<i32>(2801i >> (var_0.x % 32u), ~27655i)), ~max(arg_0.e, vec2<i32>(global2.b, global2.d.x)), false));
    let var_4 = func_3(Struct_2(true, false, func_3(arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.a * 1000f), _wgslsmith_div_f32(428f, 962f)), arg_3, global3[_wgslsmith_index_u32(0u, 21u)]), u_input.d, abs(arg_0.e)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-550f, arg_0.c.a) * _wgslsmith_f_op_f32(-arg_3.c.a))))), Struct_2(arg_3.b, arg_3.b, global0[_wgslsmith_index_u32(83140u, 9u)], max(reverseBits(2147483647i), 76565i), vec2<i32>(firstTrailingBit(86298i), u_input.a)), Struct_3(global2.a >> (global2.a % vec4<u32>(32u)), -446i, vec3<bool>(-326f != arg_3.c.a, true, global2.c.x), global2.d));
    return Struct_2(!all(arg_2), any(select(!select(vec4<bool>(false, true, arg_0.b, arg_2.x), vec4<bool>(false, true, false, arg_3.a), true), vec4<bool>(any(vec2<bool>(true, global1[_wgslsmith_index_u32(var_1, 22u)])), var_0.x < var_1, global1[_wgslsmith_index_u32(arg_1, 22u)], all(vec4<bool>(false, false, true, arg_0.b))), any(select(vec2<bool>(false, global2.c.x), vec2<bool>(false, arg_3.a), false)))), func_1(), _wgslsmith_add_i32(0i, arg_3.d), select(reverseBits(abs(vec2<i32>(arg_3.e.x, arg_3.e.x) << (global2.a.ww % vec2<u32>(32u)))), _wgslsmith_mod_vec2_i32(~min(vec2<i32>(19505i, 13733i), vec2<i32>(1i, arg_0.d)), global2.d.yy), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(!global1[_wgslsmith_index_u32(~1u, 22u)], false, func_3(Struct_2(true, false | global2.c.x, func_1(), func_2(global2.b, global3[_wgslsmith_index_u32(global2.a.x, 21u)]), _wgslsmith_add_vec2_i32(global2.d.xy, global2.d.zy)), -1533f, Struct_2(false, global2.a.x <= global2.a.x, func_1(), ~(-2147483647i), firstTrailingBit(global2.d.zy)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(31126u, _wgslsmith_add_u32(11623u, global2.a.x)), 21u)]), u_input.b, -(global2.d.xz << (vec2<u32>(global2.a.x, 1u) % vec2<u32>(32u)))), (global2.a.x | abs(global2.a.x)) << (73863u % 32u), select(vec2<bool>(true, global2.c.x), vec2<bool>(true, true), !all(global2.c.xy)), Struct_2(any(vec3<bool>(false, global2.c.x, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(698f + -984f), -649f, all(vec3<bool>(false, global2.c.x, global1[_wgslsmith_index_u32(4294967295u, 22u)])))) == -1018f, global0[_wgslsmith_index_u32(global2.a.x & _wgslsmith_dot_vec4_u32(~global2.a, vec4<u32>(1u, global2.a.x, global2.a.x, global2.a.x) ^ global2.a), 9u)], i32(-1i) * -1i, global2.d.yy ^ global2.d.zz));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-952f, _wgslsmith_f_op_f32(var_0.c.a + var_0.c.a)));
    var var_2 = !(all(global2.c.yx) == true);
    let var_3 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    let var_4 = func_1();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    let var_5 = 0u;
    global3 = array<Struct_3, 21>();
    var var_6 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(select(global2.d.xx, vec2<i32>(u_input.e, 6529i), vec2<bool>(global2.c.x, false))), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.d, u_input.d), var_0.e, select(vec2<i32>(-2147483647i, var_0.d), global2.d.zz, vec2<bool>(global1[_wgslsmith_index_u32(var_5, 22u)], false)))), vec2<i32>(-global2.d.x, ~_wgslsmith_add_i32(global2.b, global2.b)), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(global2.d.yy & vec2<i32>(min(~(-1i), _wgslsmith_mult_i32(u_input.e, var_0.e.x)), var_0.e.x >> (var_5 % 32u)), ~vec3<u32>(_wgslsmith_mult_u32(global2.a.x, 18247u) & ~0u, ~121183u, ~_wgslsmith_mod_u32(var_5, var_5)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.c, 0i, 30299i, var_6.x), vec4<i32>(19839i, 0i, -2147483647i, var_0.d)), vec4<i32>(-2147483647i, var_0.e.x, var_0.d, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -40851i, 38730i, -1i) | vec4<i32>(-47109i, -60295i, var_0.e.x, u_input.a), vec4<i32>(var_6.x, var_0.e.x, var_0.e.x, global2.d.x))) << (select(_wgslsmith_div_vec4_u32(global2.a, global2.a), global2.a, !vec4<bool>(true, global2.c.x, true, false)) % vec4<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.a.x, 49454u, _wgslsmith_mod_u32(global2.a.x, 10464u)) >> (abs(global2.a.wxy) % vec3<u32>(32u)), reverseBits(abs(global2.a.wxz))));
}

