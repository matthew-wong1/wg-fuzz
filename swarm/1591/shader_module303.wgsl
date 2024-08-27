struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(1i <= ~global0.x, true, arg_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(140f, 150f, -171f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1803f, 927f, 896f))), select(vec3<bool>(arg_0.c.x, false, false), !vec3<bool>(arg_0.c.x, false, arg_0.b), any(vec2<bool>(false, false)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(819f, 1048f, -1106f))))) + vec3<f32>(_wgslsmith_f_op_f32(-1000f + 879f), -1551f, _wgslsmith_f_op_f32(-641f * -799f)))), arg_0);
    global1 = array<vec4<bool>, 14>();
    let var_1 = Struct_2(Struct_1(true, arg_0.b, select(!(!var_0.a.c), select(select(var_0.a.c, global1[_wgslsmith_index_u32(arg_1.x, 14u)], false), select(arg_0.c, vec4<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.b, arg_0.c.x), vec4<bool>(arg_0.c.x, true, false, arg_0.b)), true), !select(var_0.a.c, global1[_wgslsmith_index_u32(4294967295u, 14u)], false))), _wgslsmith_f_op_vec3_f32(min(var_0.b, vec3<f32>(-1517f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-267f - -1308f)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + var_0.c.x) * -2185f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.c.x)))), var_0.d);
    let var_2 = var_0.d;
    var var_3 = var_1.a;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), var_1.c.x, -458f, -1502f))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: i32) -> u32 {
    var var_0 = (arg_1.x | false) & !arg_1.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3(Struct_1(all(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)) || arg_1.x, true, !arg_1), firstLeadingBit(~(~vec4<u32>(66367u, arg_0.x, 1u, 51260u))) | ~countOneBits(~vec4<u32>(1u, 49049u, 78846u, 1u))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    global1 = array<vec4<bool>, 14>();
    var_0 = false;
    return abs(arg_0.x);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = u_input.a;
    let var_0 = ((vec4<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), select(-2147483647i, global0.x, arg_0.d.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.x), u_input.a), -2147483647i) ^ ~abs(vec4<i32>(global0.x, 207i, -2147483647i, -35563i))) << (firstTrailingBit(max(~vec4<u32>(1u, 58604u, 0u, 1u), vec4<u32>(0u, 21557u, 62454u, 1u))) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~80861u, _wgslsmith_mult_u32(0u, 99259u), 17563u, func_2(vec2<u32>(4098u, 0u), vec4<bool>(arg_0.d.b, arg_0.a.a, arg_0.d.b, arg_0.a.c.x), 0i)) ^ min(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(0u, 1u, 1u, 0u)))) % vec4<u32>(32u));
    let var_1 = ~vec2<u32>(~4294967295u, max(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(36376u, 21081u), ~vec2<u32>(15336u, 4294967295u))));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_clamp_i32(u_input.a.x, ~(~_wgslsmith_add_i32(15553i, min(u_input.a.x, 21188i))), 0i << (var_1.x % 32u));
    return var_2.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(arg_2.d, arg_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.c * arg_2.c))), Struct_1(arg_2.a.c.x | (false || all(vec3<bool>(false, false, arg_1))), true && select(false, false, select(arg_2.a.c.x, arg_1, true)), !select(vec4<bool>(true, arg_2.a.a, arg_2.a.c.x, arg_1), arg_2.d.c, arg_1 & false)));
    let var_1 = var_0;
    var var_2 = Struct_1(any(vec3<bool>(false, var_0.a.c.x, true | any(var_1.d.c))), true, select(select(!arg_2.a.c, global1[_wgslsmith_index_u32(arg_0.x, 14u)], true), var_0.d.c, func_1(arg_2).b));
    let var_3 = arg_2.d;
    var_2 = Struct_1(var_0.c.x < _wgslsmith_f_op_f32(f32(-1f) * -1185f), !(!var_1.d.b), vec4<bool>(reverseBits(-global0.x) <= global0.x, countOneBits(select(arg_0.x, 17778u, var_0.d.b)) > arg_0.x, ~(~32567u) >= arg_0.x, any(select(var_1.a.c.yx, !var_3.c.xw, var_1.a.c.zw))));
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(~vec4<u32>(1u, 1u, 1u, 1u), false, Struct_2(func_1(Struct_2(Struct_1(false, true, global1[_wgslsmith_index_u32(39365u, 14u)]), vec3<f32>(-179f, -1387f, 1000f), vec3<f32>(-381f, 272f, 1115f), Struct_1(true, false, global1[_wgslsmith_index_u32(0u, 14u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(518f, -1543f, -1309f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(390f, 468f, 1101f)))), vec3<f32>(-134f, -290f, -1179f), func_1(Struct_2(Struct_1(true, false, vec4<bool>(true, false, false, true)), vec3<f32>(976f, 397f, -1040f), vec3<f32>(885f, -284f, -1000f), Struct_1(false, false, global1[_wgslsmith_index_u32(18495u, 14u)]))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-401f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1747f)), _wgslsmith_f_op_f32(round(971f))), _wgslsmith_f_op_f32(1410f - _wgslsmith_f_op_f32(select(-1087f, _wgslsmith_f_op_f32(trunc(245f)), true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(false, true, global1[_wgslsmith_index_u32(35956u, 14u)]), vec4<u32>(1u, 23695u, 0u, 32408u))).ywy, vec3<f32>(-1389f, 1000f, -621f), true)) - vec3<f32>(_wgslsmith_f_op_f32(floor(766f)), _wgslsmith_f_op_f32(f32(-1f) * -750f), -529f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1080f), _wgslsmith_f_op_f32(f32(-1f) * -447f), -327f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2352f, -168f, 1428f)))))), Struct_1(true, false, global1[_wgslsmith_index_u32(firstTrailingBit(reverseBits(1u)), 14u)]));
    let var_1 = _wgslsmith_f_op_f32(863f + -706f);
    let var_2 = func_1(Struct_2(Struct_1((false | var_0.a.c.x) && all(vec4<bool>(var_0.a.a, true, var_0.d.b, true)), var_0.c.x == _wgslsmith_f_op_f32(-var_1), vec4<bool>(var_0.d.b, global0.x <= global0.x, var_0.d.b, true)), vec3<f32>(-1000f, -231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1307f + -757f) * _wgslsmith_f_op_f32(sign(var_1)))), var_0.c, var_0.a));
    var var_3 = select(~1i, global0.x, !(!any(var_2.c.wz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(75662u, func_2(abs(vec2<u32>(1u, 4294967295u)), vec4<bool>(true, false, false, var_0.a.a), -8462i)), _wgslsmith_div_vec2_u32(~(~vec2<u32>(5372u, 4294967295u)), countOneBits(countOneBits(vec2<u32>(7376u, 4294967295u))))), countOneBits(~_wgslsmith_sub_i32(u_input.a.x, -42099i)), _wgslsmith_mult_i32(84472i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -7794i), u_input.a), ~27394i)), var_0.c);
}

