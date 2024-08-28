struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(2147483647i, 15630i, -1i), vec3<i32>(2147483647i, 1i, -7734i), vec3<i32>(0i, 64976i, i32(-2147483648)), vec3<i32>(1i, -4873i, -5798i), vec3<i32>(0i, -18786i, -10338i), vec3<i32>(1i, -28821i, 7296i), vec3<i32>(17077i, 1i, 5577i), vec3<i32>(1i, i32(-2147483648), -20975i), vec3<i32>(0i, 0i, 0i), vec3<i32>(i32(-2147483648), -1i, 71499i), vec3<i32>(20866i, 3833i, -4875i), vec3<i32>(0i, 8336i, 8400i), vec3<i32>(4557i, 61614i, 1i), vec3<i32>(56869i, 0i, 0i));

var<private> global1: vec2<f32>;

var<private> global2: bool;

var<private> global3: array<Struct_2, 20>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = Struct_1(reverseBits(reverseBits(1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.c.zz + vec2<f32>(419f, arg_0.d.b.x)) - vec2<f32>(-1083f, global1.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2351f, arg_0.d.c.x) + arg_0.d.b)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 1213f)), -217f)), _wgslsmith_div_vec3_f32(arg_0.d.c, arg_0.d.c), select(vec3<bool>(arg_0.d.d.x != (-273f > global1.x), true, true), select(!select(arg_0.d.d, vec3<bool>(false, false, false), arg_0.d.d), select(select(vec3<bool>(true, arg_0.d.d.x, arg_0.d.d.x), arg_0.d.d, arg_0.d.d), arg_0.d.d, arg_0.d.d), select(arg_0.d.d, select(arg_0.d.d, vec3<bool>(false, arg_0.d.d.x, arg_0.d.d.x), true), arg_0.d.d.x)), !(!arg_0.d.d)));
    global2 = arg_0.d.d.x;
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_div_f32(global1.x, arg_0.d.c.x)), _wgslsmith_f_op_f32(select(global1.x, var_0.b.x, any(vec3<bool>(true, false, false))))))));
    return _wgslsmith_f_op_vec2_f32(round(arg_0.d.c.xx));
}

fn func_3() -> vec3<f32> {
    global0 = array<vec3<i32>, 14>();
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, 1000f)))))))))));
    let var_0 = Struct_1(~u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, global1.x, true))) + global1.x), 170f), vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_vec2_f32(func_1(global3[_wgslsmith_index_u32(u_input.c, 20u)])).x)))), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), 4294967295u > u_input.c), vec3<bool>(!(-2039f <= global1.x), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), true)));
    global2 = u_input.c >= _wgslsmith_dot_vec4_u32((select(vec4<u32>(u_input.c, u_input.c, u_input.c, 30470u), vec4<u32>(u_input.c, u_input.c, 1u, u_input.a.x), true) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(26013u, 1u, 29701u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a.x)) % vec4<u32>(32u))) & abs(max(vec4<u32>(u_input.a.x, u_input.c, 4294967295u, u_input.c), vec4<u32>(0u, 0u, u_input.c, 23938u))), (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 41308u, 9688u, u_input.c), vec4<u32>(24999u, 1u, 0u, u_input.c)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(45663u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.a.x, u_input.c, 13147u), vec4<u32>(u_input.a.x, 14840u, 4294967295u, 0u))) << (~firstLeadingBit(vec4<u32>(62155u, 21610u, 75360u, 34875u)) % vec4<u32>(32u)));
    let var_1 = Struct_2(global1.x, var_0.a, _wgslsmith_mod_u32(~_wgslsmith_div_u32(~u_input.a.x, select(u_input.a.x, u_input.c, true)), ~18478u), Struct_1(-u_input.b.x, _wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(trunc(-118f)), _wgslsmith_f_op_vec2_f32(func_1(global3[_wgslsmith_index_u32(1u, 20u)])).x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c), _wgslsmith_f_op_vec3_f32(-var_0.c))), vec3<bool>(all(select(vec2<bool>(var_0.d.x, false), var_0.d.xx, vec2<bool>(var_0.d.x, true))), all(vec3<bool>(var_0.d.x, var_0.d.x, false)) == select(false, var_0.d.x, false), var_0.d.x)), abs(vec2<i32>(~0i >> (_wgslsmith_div_u32(4294967295u, u_input.a.x) % 32u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b.x, var_0.a), ~8315i))));
    return _wgslsmith_f_op_vec3_f32(floor(var_0.c));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_2(global1.x, arg_1.x, ~_wgslsmith_add_u32(1u, ~1u), Struct_1(arg_0.a, vec2<f32>(470f, arg_0.b.x), _wgslsmith_f_op_vec3_f32(func_3()), !arg_0.d), vec2<i32>(-1i) * -(~u_input.b));
    global1 = vec2<f32>(var_0.d.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + global1.x)) - _wgslsmith_f_op_vec3_f32(func_3()).x))));
    var var_1 = var_0.d;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b.x, var_0.a)) * _wgslsmith_f_op_f32(arg_0.c.x + -1142f))) * _wgslsmith_f_op_f32(-1764f * -342f)), ~2147483647i & var_0.b, 70844u, arg_0, arg_1.xz);
    let var_3 = ~0u;
    return -_wgslsmith_dot_vec2_i32(~(vec2<i32>(-1i, -21629i) | var_0.e), max(max(arg_1.yy, vec2<i32>(29998i, -5208i)), u_input.b)) & -1i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a.x, 44585u, ~u_input.c), 20u)];
    var var_1 = select(~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 0u, 27827u), vec4<u32>(6744u, 1u, var_0.c, var_0.c)) ^ ~vec4<u32>(arg_1.c, arg_1.c, 18221u, u_input.a.x)), vec4<u32>(reverseBits(17405u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 4294967295u, 1u)), ~vec3<u32>(1u, arg_1.c, 0u)), _wgslsmith_mult_u32(u_input.a.x, ~arg_1.c), 40727u) | (~firstTrailingBit(vec4<u32>(var_0.c, arg_1.c, var_0.c, 4294967295u)) | vec4<u32>(0u, 0u, reverseBits(68702u), firstLeadingBit(var_0.c))), arg_0.d.x);
    var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_3()).x)), max(i32(-1i) * -_wgslsmith_mult_i32(1i, u_input.b.x), ~_wgslsmith_mod_i32(-arg_1.b, var_0.e.x)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_mult_u32(var_0.c, 4294967295u), ~9926u, ~16249u), abs(vec4<u32>(u_input.c, u_input.c, arg_1.c, 1u)))), arg_1.d, arg_1.e);
    global1 = _wgslsmith_f_op_vec2_f32(-arg_1.d.b);
    var var_2 = -_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 28529i, -2147483647i), global0[_wgslsmith_index_u32(30338u, 14u)]), global0[_wgslsmith_index_u32(~var_0.c & ~u_input.a.x, 14u)]), firstTrailingBit(global0[_wgslsmith_index_u32(~31436u, 14u)]) | _wgslsmith_mod_vec3_i32(vec3<i32>(-23552i, arg_0.a, -7186i), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.b, 9670i, 2147483647i), vec3<i32>(21503i, 23212i, u_input.b.x), vec3<i32>(u_input.b.x, 2147483647i, arg_1.d.a))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-280f)), _wgslsmith_f_op_f32(floor(var_0.a)))) - global1.x), -2816i, countOneBits(~(~var_0.c)), var_0.d, _wgslsmith_mult_vec2_i32(abs(vec2<i32>(arg_1.b, var_2.x)), abs(-vec2<i32>(50336i, 45203i)) >> (~(vec2<u32>(u_input.a.x, arg_1.c) >> (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec2<f32> {
    global2 = arg_0.d.d.x;
    let var_0 = min(_wgslsmith_mult_i32(2147483647i, arg_0.b), arg_1.b);
    global2 = !arg_1.d.d.x;
    var var_1 = func_4(func_4(Struct_1(~(~2147483647i), func_4(func_4(Struct_1(29022i, arg_1.d.c.xy, vec3<f32>(arg_0.a, arg_2, 278f), arg_1.d.d), Struct_2(global1.x, arg_1.b, arg_0.c, Struct_1(6484i, vec2<f32>(arg_2, 1137f), arg_0.d.c, vec3<bool>(true, true, arg_1.d.d.x)), vec2<i32>(arg_0.b, arg_1.d.a)), false).d, Struct_2(1419f, -25330i, 36605u, arg_1.d, vec2<i32>(-1i, 3352i)), 266f > global1.x).d.b, vec3<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(step(633f, -604f)), _wgslsmith_f_op_f32(-arg_0.a)), select(!vec3<bool>(arg_0.d.d.x, arg_0.d.d.x, arg_0.d.d.x), !vec3<bool>(true, arg_1.d.d.x, arg_0.d.d.x), arg_0.d.d)), func_4(arg_1.d, Struct_2(_wgslsmith_f_op_f32(-arg_0.a), -1i, 97537u, Struct_1(14193i, arg_0.d.b, vec3<f32>(-1000f, arg_0.d.b.x, arg_0.a), arg_1.d.d), countOneBits(arg_0.e)), true), !(!(arg_1.d.a > -3965i))).d, global3[_wgslsmith_index_u32(21549u, 20u)], !(select(0u, arg_0.c, func_4(Struct_1(var_0, vec2<f32>(-222f, arg_2), arg_1.d.c, arg_1.d.d), global3[_wgslsmith_index_u32(u_input.c, 20u)], arg_0.d.d.x).d.d.x) < ~1u)).d.d;
    var var_2 = _wgslsmith_div_f32(global1.x, global1.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(393f)) - _wgslsmith_f_op_f32(-arg_0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a))));
    return _wgslsmith_f_op_vec3_f32(func_3()).yy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1772f) + vec2<f32>(global1.x, global1.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -673f) - vec2<f32>(global1.x, -431f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(global1.x, u_input.b.x, u_input.c, Struct_1(u_input.b.x, vec2<f32>(global1.x, global1.x), vec3<f32>(global1.x, 627f, global1.x), vec3<bool>(true, false, true)), u_input.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1216f, global1.x) * vec2<f32>(global1.x, -1270f))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, global1.x)))))));
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-468f, global1.x))))), _wgslsmith_f_op_vec2_f32(func_5(func_4(Struct_1(func_2(Struct_1(-33048i, vec2<f32>(global1.x, global1.x), vec3<f32>(global1.x, global1.x, -1481f), vec3<bool>(false, false, true)), global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec2<f32>(global1.x, 259f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1144f, -225f, global1.x)), vec3<bool>(true, true, true)), Struct_2(_wgslsmith_div_f32(-1000f, global1.x), u_input.b.x, 0u << (u_input.c % 32u), Struct_1(u_input.b.x, vec2<f32>(-690f, global1.x), vec3<f32>(global1.x, global1.x, 1000f), vec3<bool>(true, false, true)), select(vec2<i32>(1i, -565i), vec2<i32>(1i, -17166i), false)), true), Struct_2(_wgslsmith_f_op_f32(-138f * _wgslsmith_f_op_f32(select(global1.x, 538f, true))), func_4(Struct_1(0i, vec2<f32>(global1.x, global1.x), vec3<f32>(-641f, global1.x, global1.x), vec3<bool>(false, true, true)), Struct_2(1784f, -64710i, 1u, Struct_1(u_input.b.x, vec2<f32>(-1712f, 3105f), vec3<f32>(1303f, global1.x, 530f), vec3<bool>(false, false, true)), u_input.b), false).e.x << (~1u % 32u), _wgslsmith_clamp_u32(28827u, u_input.c, firstTrailingBit(u_input.a.x)), Struct_1(_wgslsmith_add_i32(38068i, 32075i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -102f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 626f)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), _wgslsmith_add_vec2_i32(~vec2<i32>(-42956i, u_input.b.x), u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * global1.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)))))));
    global3 = array<Struct_2, 20>();
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x), 20u)];
    var var_1 = Struct_1(-106850i, vec2<f32>(var_0.a, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-654f)) * global1.x), _wgslsmith_f_op_f32(-323f * _wgslsmith_f_op_f32(-global1.x))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(165f * 2499f), _wgslsmith_f_op_f32(max(global1.x, global1.x)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d.b.x)) - _wgslsmith_f_op_f32(abs(var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.c.x, -126f))))), vec3<bool>(!all(select(var_0.d.d, var_0.d.d, var_0.d.d)), true, all(var_0.d.d)));
    var var_2 = _wgslsmith_f_op_f32(-773f * _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x - 267f)));
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(Struct_1(var_1.a, var_1.b, vec3<f32>(global1.x, var_0.d.b.x, 1027f), var_0.d.d), global3[_wgslsmith_index_u32(u_input.a.x, 20u)], var_0.d.d.x).a))))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.b, u_input.b.x, abs(reverseBits(abs(vec4<i32>(var_0.d.a, -14286i, u_input.b.x, 1i)))));
}

