struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(1u, 0u, 20962u, 1u, 1u, 1u, 26285u, 1u, 1u, 43769u, 30166u, 4294967295u, 4294967295u, 68245u, 72553u, 5037u, 1u, 66402u, 42973u, 4092u, 47854u, 1063u, 1u, 1u, 27757u, 21288u, 65391u, 70980u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_3 {
    var var_0 = vec4<bool>(all(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)] > 4294967295u, false)), any(vec2<bool>(false, true)), !all(vec2<bool>(true, true)), !any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)));
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    var var_1 = Struct_2(vec2<bool>(!(!var_0.x), false), select(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(46971u, 28u)], _wgslsmith_mult_u32(10886u, u_input.a)) > u_input.a, var_0.x, !(min(global0[_wgslsmith_index_u32(0u, 28u)], u_input.a) > u_input.a)), Struct_1(~(~u_input.a), arg_1, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(arg_1 + -1604f))), -abs(select(vec3<i32>(arg_0, arg_0, 22705i), vec3<i32>(40238i, 30070i, arg_0), var_0.wxx))), vec3<i32>(arg_0, -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(1i, -28590i)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(0i, 1i))), arg_0 | 2147483647i), -2329f);
    var_1 = Struct_2(vec2<bool>(!(!(var_1.b & true)), true), true, var_1.c, firstLeadingBit(var_1.d), -473f);
    return Struct_3(arg_1, ~_wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.a, 0u, var_1.c.a, 39213u), vec4<u32>(u_input.a, 0u, 39771u, u_input.a)), ~(~vec4<u32>(u_input.a, 1u, 47043u, 49572u)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(var_1.c.a, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a, u_input.a)), vec4<u32>(var_1.c.a, var_1.c.a, 45595u, 0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(248f, 759f), vec2<f32>(arg_1, -861f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.c, var_1.e) - vec2<f32>(942f, var_1.e))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.e, 344f))), vec2<f32>(arg_1, -289f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1465f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1495f, arg_1) + vec2<f32>(1295f, 106f))))), var_0.zxw, -590f);
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3) -> vec3<f32> {
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1161f - arg_2.e))))), arg_2.a);
    var var_1 = arg_2.b;
    let var_2 = arg_2.d.zz;
    return vec3<f32>(_wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) + -123f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(round(-958f)))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3(arg_1.c.a, vec3<bool>(false, false, !all(arg_0)), func_2(arg_1.c.d.x, 1f)));
    var var_1 = ~reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(arg_2.b.wyy, vec3<u32>(global0[_wgslsmith_index_u32(73669u, 28u)], 1u, 22739u)) & ~vec3<u32>(arg_2.b.x, u_input.a, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_1.c.a, arg_1.c.a), ~vec3<u32>(4294967295u, 29959u, u_input.a))));
    var var_2 = 1666f < _wgslsmith_f_op_f32(round(-557f));
    var var_3 = !any(select(select(select(vec4<bool>(arg_0.x, true, false, arg_1.b), vec4<bool>(arg_0.x, false, true, arg_1.b), arg_1.b), !vec4<bool>(false, arg_0.x, true, true), !arg_0.x), select(select(arg_0, arg_0, vec4<bool>(false, arg_1.a.x, arg_2.d.x, arg_1.a.x)), arg_0, arg_0), arg_1.a.x));
    let var_4 = ~(~firstLeadingBit(var_1.x));
    return _wgslsmith_f_op_f32(abs(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 28>();
    let var_0 = true;
    let var_1 = select((reverseBits(vec3<i32>(1i, 1i, 1i)) << ((~vec3<u32>(0u, 989u, 0u) >> (vec3<u32>(3094u, 26379u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)]) % vec3<u32>(32u))) % vec3<u32>(32u))) >> ((~(~vec3<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 28u)])) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<u32>(0u, 0u, 16086u))) % vec3<u32>(32u)), vec3<i32>(~2147483647i, -(~1i), 1i) >> (vec3<u32>(~(~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 6803u) | vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a, global0[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a), abs(vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(76732u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 28u)]))), abs(select(u_input.a, u_input.a, var_0))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, var_0, false), Struct_2(vec2<bool>(false, var_0), var_0, Struct_1(37822u, -295f, 616f, vec3<i32>(0i, 1i, 5997i)), vec3<i32>(-10338i, 1i, 406i), -857f), Struct_3(356f, vec4<u32>(61456u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 16491u, global0[_wgslsmith_index_u32(6831u, 28u)]), vec2<f32>(781f, 330f), vec3<bool>(false, true, var_0), 436f))), _wgslsmith_f_op_f32(-2933f - 916f))) <= _wgslsmith_f_op_f32(f32(-1f) * -828f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1004f))), _wgslsmith_f_op_f32(min(func_2(~var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1743f)).c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(9177u, vec3<bool>(false, false, true), Struct_3(-529f, vec4<u32>(58197u, 4264u, u_input.a, 33335u), vec2<f32>(-678f, -1326f), vec3<bool>(var_0, true, false), 389f))).x + 1000f))))) + _wgslsmith_div_f32(-1333f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(505f + 1402f)))));
    let var_3 = all(!select(!(!vec3<bool>(true, var_0, true)), vec3<bool>(var_0, select(false, var_0, true), false), all(select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(true, var_0, var_0, true), vec4<bool>(true, true, true, var_0)))));
    global0 = array<u32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_1.x, var_1.x) ^ -vec3<i32>(var_1.x, var_1.x, 0i), abs(_wgslsmith_mod_vec3_i32(var_1, var_1))), !select(select(vec3<bool>(var_0, var_0, var_3), vec3<bool>(var_0, true, true), var_3), vec3<bool>(false, false, var_0), true && var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2, var_2))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2, var_2), vec2<f32>(-672f, var_2))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1114f, -464f) * vec2<f32>(139f, var_2))))));
}

