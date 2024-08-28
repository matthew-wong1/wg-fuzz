struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(4294967295u, 32464u, 78262u, 1u, 57624u, 66578u, 4294967295u, 1u, 1u, 1u, 4294967295u, 43409u, 1u, 34550u, 16800u, 4294967295u, 1u, 116283u, 24433u, 1u, 16254u, 4294967295u, 41311u, 26765u, 0u);

var<private> global1: f32 = 247f;

var<private> global2: Struct_4 = Struct_4(Struct_2(Struct_1(vec3<bool>(false, false, false), vec3<f32>(-467f, -128f, -1259f)), true, 526f), 4294967295u, 1i, 19451i, -1213f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = arg_0;
    let var_1 = u_input.a.x;
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(-1i, -1i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(97i, 2147483647i, 1i, 33105i), vec4<i32>(2147483647i, arg_0.c, var_0.d, global2.d)), vec4<i32>(-29480i, -arg_0.d, _wgslsmith_mod_i32(-13067i, 48613i), max(arg_0.c, arg_0.c))), ~_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(42418i, arg_0.d, -17862i, 38473i)), vec4<i32>(global2.d, var_0.c, -1i, -34115i))), countOneBits(arg_0.d), firstLeadingBit(abs(var_0.d)));
    let var_3 = select(select(!vec4<bool>(!arg_0.a.b, global2.a.a.a.x, false, var_0.a.b), select(!select(vec4<bool>(arg_0.a.a.a.x, true, global2.a.a.a.x, false), vec4<bool>(global2.a.b, global2.a.a.a.x, true, global2.a.a.a.x), arg_0.a.a.a.x), select(select(vec4<bool>(arg_0.a.a.a.x, false, false, arg_0.a.b), vec4<bool>(true, var_0.a.b, false, false), var_0.a.a.a.x), !vec4<bool>(var_0.a.a.a.x, arg_0.a.b, false, global2.a.a.a.x), arg_0.a.b), false), !(!select(vec4<bool>(global2.a.b, true, global2.a.b, false), vec4<bool>(false, global2.a.b, var_0.a.b, arg_0.a.a.a.x), vec4<bool>(arg_0.a.a.a.x, false, true, arg_0.a.a.a.x)))), vec4<bool>(arg_0.a.a.a.x, !global2.a.a.a.x, arg_0.a.b, arg_0.a.a.a.x || !all(var_0.a.a.a.yx)), vec4<bool>(arg_0.a.a.a.x, arg_0.a.a.a.x && global2.a.b, !(!global2.a.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e + global2.e) - 959f) == _wgslsmith_f_op_f32(max(-1989f, _wgslsmith_f_op_f32(trunc(arg_0.e))))));
    global0 = array<u32, 25>();
    return all(!vec3<bool>(true && any(vec4<bool>(false, true, var_0.a.b, false)), true, _wgslsmith_add_i32(1i, global2.d) >= _wgslsmith_sub_i32(arg_0.c, -1i)));
}

fn func_2() -> bool {
    global1 = _wgslsmith_div_f32(-965f, global2.a.c);
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a.b.x + global2.a.c))))));
    global0 = array<u32, 25>();
    let var_1 = select(vec3<u32>(u_input.a.x, select(countOneBits(_wgslsmith_dot_vec2_u32(u_input.a.wy, u_input.a.yx)), firstLeadingBit(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8632u, 25u)], 25u)])), true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, ~1u, 26166u), 25u)]), vec3<u32>(reverseBits(18486u), global0[_wgslsmith_index_u32(~min(4294967295u, 4294967295u), 25u)], ~4294967295u) >> (~(~vec3<u32>(3468u, 88033u, 3787u) | _wgslsmith_div_vec3_u32(vec3<u32>(24229u, 4294967295u, global0[_wgslsmith_index_u32(20330u, 25u)]), u_input.a.xzx)) % vec3<u32>(32u)), !(!vec3<bool>(true, !global2.a.b, global2.a.b)));
    let var_2 = select(select(!vec4<bool>(false, !global2.a.b, select(global2.a.a.a.x, false, true), true), vec4<bool>(global2.a.a.a.x & global2.a.a.a.x, global2.a.b, true, !global2.a.b && true), select(!vec4<bool>(global2.a.a.a.x, true, false, global2.a.b), vec4<bool>(global2.a.b & true, global2.a.b && global2.a.a.a.x, global2.c == global2.d, false), vec4<bool>(global2.a.b, true, !global2.a.b, global2.a.b))), !vec4<bool>(!func_3(Struct_4(global2.a, var_1.x, 1i, 9912i, -700f)), false, _wgslsmith_f_op_f32(ceil(-1000f)) < _wgslsmith_f_op_f32(-global2.a.c), true), !(!vec4<bool>(5149u != global2.b, false, select(global2.a.a.a.x, global2.a.b, true), func_3(Struct_4(global2.a, var_1.x, 23559i, -2147483647i, 285f)))));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = !select(select(vec4<bool>(any(vec2<bool>(arg_0, arg_0)), !arg_0, true, true), arg_1, false), !(!select(vec4<bool>(true, arg_0, arg_0, true), arg_1, arg_1)), vec4<bool>(arg_1.x & true, false, any(arg_1.wxz), _wgslsmith_f_op_f32(-global2.a.c) <= 150f));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-641f, -1350f, 411f, arg_2.b.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(523f, 1035f, 810f, arg_2.b.x), vec4<f32>(arg_2.b.x, 317f, -1794f, -1376f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-927f, -1682f, arg_2.b.x, -2079f) + vec4<f32>(790f, -2336f, -289f, -202f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e, -107f, 1262f, -234f) - vec4<f32>(arg_2.b.x, arg_2.b.x, global2.a.c, global2.a.c))), !select(vec4<bool>(global2.a.b, global2.a.b, true, true), vec4<bool>(true, arg_1.x, global2.a.a.a.x, arg_0), vec4<bool>(false, arg_2.a.x, false, true))))));
    var var_2 = ~(-_wgslsmith_div_vec2_i32(vec2<i32>(global2.c, -9753i) >> (~vec2<u32>(46515u, 7335u) % vec2<u32>(32u)), vec2<i32>(1687i, global2.d)));
    let var_3 = -2147483647i;
    return Struct_4(global2.a, max(~abs(global2.b), u_input.a.x) | 24938u, max(countOneBits(~var_2.x), 21331i), 2147483647i, -456f);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = ~(~reverseBits(-vec2<i32>(arg_0.x, global2.d)));
    var var_1 = global2.a;
    let var_2 = var_0.x;
    let var_3 = Struct_1(select(select(vec3<bool>(true, 1119f != arg_2.a.b.x, all(global2.a.a.a.xy)), !vec3<bool>(true, var_1.a.a.x, true), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b, 25u)], 25u)] <= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(19524u, 25u)], global0[_wgslsmith_index_u32(94775u, 25u)]), vec3<u32>(1u, 11350u, global2.b))), var_1.a.a, arg_2.a.a.x), arg_2.a.b);
    global2 = func_4(true, select(vec4<bool>(!all(arg_2.a.a.yz), func_2(), any(vec3<bool>(global2.a.b, true, global2.a.b)), any(vec3<bool>(global2.a.b, var_1.b, true))), vec4<bool>(any(!vec4<bool>(true, false, arg_2.b, arg_2.a.a.x)), -2147483647i < arg_0.x, true, func_3(Struct_4(arg_2, 14564u, 1i, arg_1.x, -1479f))), false), Struct_1(vec3<bool>(_wgslsmith_mult_i32(var_2, 16391i) > reverseBits(-2147483647i), any(select(arg_2.a.a, var_3.a, vec3<bool>(false, var_1.a.a.x, false))), false && func_2()), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1734f, arg_2.c, 1033f), _wgslsmith_div_vec3_f32(global2.a.a.b, vec3<f32>(arg_3, arg_2.c, 795f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -1979f, arg_3) * var_3.b)))));
    return func_4(all(arg_2.a.a), vec4<bool>(global2.a.b, true, false, ~(~global2.b) >= ~_wgslsmith_mod_u32(4294967295u, 31167u)), func_4(false, vec4<bool>(global2.a.a.a.x, var_3.a.x, !(!var_3.a.x), var_1.b), func_4(all(select(arg_2.a.a, arg_2.a.a, arg_2.a.a.x)), vec4<bool>(all(vec3<bool>(false, true, false)), any(global2.a.a.a), global2.a.b, all(vec4<bool>(true, global2.a.b, arg_2.a.a.x, true))), func_4(global2.a.b, !vec4<bool>(global2.a.b, var_3.a.x, true, true), arg_2.a).a.a).a.a).a.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.e)));
    global2 = Struct_4(func_1(_wgslsmith_div_vec2_i32(~(vec2<i32>(global2.c, global2.c) ^ vec2<i32>(global2.c, 2147483647i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.d, global2.c, global2.d, -1i), vec4<i32>(global2.d, -1i, -26955i, global2.d)), ~global2.c)), select(vec4<i32>(~13423i, -2147483647i, ~global2.c, 30710i), max(vec4<i32>(global2.d, global2.d, -1i, global2.d), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.d, -1i, 35025i, global2.c), vec4<i32>(global2.c, -1i, global2.c, global2.c))), !(!vec4<bool>(true, global2.a.a.a.x, false, true))), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e - _wgslsmith_f_op_f32(-global2.e)))), _wgslsmith_div_u32(4294967295u, u_input.a.x), i32(-1i) * -34156i, min(-66713i, -1i), _wgslsmith_f_op_f32(-251f + -1000f));
    global0 = array<u32, 25>();
    var var_0 = func_4((_wgslsmith_f_op_f32(-global2.a.c) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1010f)))) != false, select(select(select(vec4<bool>(true, global2.a.a.a.x, global2.a.b, global2.a.a.a.x), !vec4<bool>(false, false, false, global2.a.b), !vec4<bool>(true, true, global2.a.b, global2.a.b)), !(!vec4<bool>(global2.a.a.a.x, false, global2.a.b, global2.a.a.a.x)), func_1(vec2<i32>(global2.c, 1i) & vec2<i32>(global2.c, 46164i), firstTrailingBit(vec4<i32>(-6909i, global2.c, global2.c, global2.d)), global2.a, func_4(false, vec4<bool>(global2.a.b, false, global2.a.b, false), global2.a.a).a.c).a.a.x), select(select(select(vec4<bool>(true, false, true, global2.a.a.a.x), vec4<bool>(global2.a.b, false, true, global2.a.b), global2.a.a.a.x), !vec4<bool>(global2.a.a.a.x, global2.a.b, global2.a.b, global2.a.b), global2.a.b), !select(vec4<bool>(false, false, global2.a.a.a.x, global2.a.a.a.x), vec4<bool>(global2.a.a.a.x, global2.a.b, global2.a.a.a.x, true), false), vec4<bool>(any(global2.a.a.a.yy), global2.a.b, true, !global2.a.b)), global2.a.a.a.x & all(vec4<bool>(false, global2.a.a.a.x, global2.a.a.a.x, true))), Struct_1(global2.a.a.a, vec3<f32>(671f, 821f, global2.a.c)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1561f, var_0.e, global2.e, var_0.a.a.b.x) - vec4<f32>(-160f, 111f, 518f, global2.a.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(215f, global2.a.c, global2.e, 1177f) * vec4<f32>(683f, -385f, global2.e, var_0.a.c))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(477f, -1559f, var_0.a.a.b.x, -142f) - vec4<f32>(global2.a.c, 117f, -1456f, var_0.e)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.c, 573f, var_0.a.a.b.x, 1411f) * vec4<f32>(var_0.e, var_0.a.c, -1000f, 609f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-484f, var_0.e, -2148f, 990f) - vec4<f32>(1835f, var_0.e, var_0.e, 333f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-658f, global2.a.c, global2.a.a.b.x, global2.a.a.b.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1211f), 135f, 1437f, _wgslsmith_f_op_f32(-global2.a.a.b.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.c, 1892f, var_0.e, -510f))), vec4<f32>(var_0.e, global2.e, -323f, global2.e)))));
    global1 = var_0.e;
    var var_2 = Struct_1(func_1(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(global2.d, -1i, global2.c), vec3<i32>(40892i, -2147483647i, global2.d)), var_0.d), vec4<i32>(global2.d, countOneBits(global2.c), _wgslsmith_add_i32(global2.d & -2147483647i, var_0.d), global2.c), global2.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(179f - func_1(vec2<i32>(var_0.d, var_0.d), vec4<i32>(global2.c, 20964i, 0i, 0i), Struct_2(Struct_1(var_0.a.a.a, vec3<f32>(617f, global2.a.c, var_0.a.a.b.x)), var_0.a.b, 1000f), var_1.x).c), var_0.a.a.b.x, select(false, func_1(vec2<i32>(var_0.d, -50793i), vec4<i32>(var_0.d, -2147483647i, global2.d, 1i), Struct_2(global2.a.a, false, var_0.a.a.b.x), var_1.x).b, true)))).a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.a.c)), 555f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.e + -522f), var_1.x)))));
    global0 = array<u32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(36952u, ~(-1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(379f, global2.a.c, 1085f, var_2.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2012f, var_0.e, global2.e, global2.a.c) * vec4<f32>(-263f, 1064f, 1000f, 1104f)))));
}

