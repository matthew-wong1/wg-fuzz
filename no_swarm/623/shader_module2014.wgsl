struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_3(Struct_2(Struct_1(~(arg_0.a ^ arg_0.a), select(select(arg_0.b, vec3<bool>(arg_0.b.x, arg_0.b.x, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), arg_0.b.x)), vec2<i32>(reverseBits(-54025i), _wgslsmith_sub_i32(u_input.d, -37842i)) | abs(~vec2<i32>(u_input.d, -2147483647i)), u_input.d, _wgslsmith_clamp_u32(1u, 4294967295u << (_wgslsmith_mult_u32(6420u, arg_0.a) % 32u), 56945u), ~_wgslsmith_clamp_i32(0i, -2147483647i, 0i)), ~_wgslsmith_div_u32(u_input.b.x, 1u));
    var_0 = Struct_3(var_0.a, 20702u);
    let var_1 = select(u_input.b.x, ~arg_0.a, arg_0.b.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -739f))) + _wgslsmith_f_op_f32(f32(-1f) * -1171f));
    let var_3 = max(var_0.a.b, _wgslsmith_mult_vec2_i32(max(~vec2<i32>(var_0.a.c, var_0.a.b.x), vec2<i32>(var_0.a.b.x, var_0.a.e) & _wgslsmith_mult_vec2_i32(var_0.a.b, var_0.a.b)), reverseBits(select(abs(var_0.a.b), var_0.a.b, -1i == var_0.a.e))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1692f - -189f), _wgslsmith_f_op_f32(-1441f - -1916f), var_0.a.b.x > 0i))))) - _wgslsmith_f_op_f32(ceil(-2800f)));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-874f + 472f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -663f)), 241f) + vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(0u, vec3<bool>(false, true, false)))), 123f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 359f) - -1087f)))));
    let var_1 = !any(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, false))), vec4<bool>(false, true, all(vec3<bool>(true, false, true)), true)));
    let var_2 = !(!any(select(vec3<bool>(var_1, false, var_1), vec3<bool>(true, true, var_1), var_1)) != true);
    var var_3 = vec4<i32>(-1i, abs(u_input.c), -60019i, 21066i);
    let var_4 = ~(~u_input.b.xx);
    return ~(reverseBits(0i) >> (var_4.x % 32u));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> bool {
    return !(-91282i != func_2());
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = arg_1.a;
    global0 = array<Struct_4, 25>();
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, ~abs(firstLeadingBit(u_input.a)), -2147483647i, -_wgslsmith_clamp_i32(u_input.a, u_input.c & 1i, -31969i)), vec4<i32>(_wgslsmith_add_i32(reverseBits(u_input.d), u_input.c), _wgslsmith_add_i32(33197i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_3.a.b.x), arg_3.a.b))), u_input.c ^ arg_3.a.c, 5866i));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-619f)))), _wgslsmith_f_op_f32(ceil(-895f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-963f, -389f))))), vec2<f32>(2193f, _wgslsmith_f_op_f32(2359f * -1681f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -297f)) * 1521f), _wgslsmith_f_op_f32(-var_2.x)));
    return !select(vec4<bool>(false, !arg_1.b.x, true, arg_3.a.a.b.x & true), select(arg_2, arg_2, arg_2.x), !(!arg_0.x));
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_4) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_2.d.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.b.yy ^ vec2<u32>(arg_2.d.a.d, 66705u), ~vec2<u32>(4294967295u, 4294967295u)), ~34057u)), firstLeadingBit(~4294967295u)), 25u)];
    global0 = array<Struct_4, 25>();
    let var_1 = u_input.b.x;
    var_0 = global0[_wgslsmith_index_u32(var_1, 25u)];
    var var_2 = Struct_2(arg_2.d.a.a, vec2<i32>(-12605i, u_input.c), var_0.c.c, _wgslsmith_mult_u32(abs(_wgslsmith_mod_u32(var_1, var_1)), ~(~var_0.c.a.a)) >> (_wgslsmith_mod_u32(~(~1u), abs(var_1)) % 32u), arg_2.c.e);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -328f)));
    let var_1 = ~select(vec2<u32>(~(~56576u), ~39521u), ~abs(abs(vec2<u32>(u_input.b.x, 1u))), u_input.c >= -25711i);
    var var_2 = Struct_1(4294967295u, vec3<bool>(true, true, true));
    var_2 = func_5(func_4(select(!select(var_2.b.yz, var_2.b.zy, vec2<bool>(false, var_2.b.x)), select(!var_2.b.yx, var_2.b.zz, var_2.b.x), vec2<bool>(var_2.b.x, func_1(vec3<f32>(619f, 1000f, 691f), Struct_1(var_2.a, var_2.b), var_2.b.x))), Struct_1(68882u, select(var_2.b, !var_2.b, !vec3<bool>(var_2.b.x, true, true))), vec4<bool>(true, _wgslsmith_div_u32(var_2.a, 61805u) != reverseBits(var_1.x), true, true), Struct_3(Struct_2(Struct_1(75824u, var_2.b), vec2<i32>(u_input.c, 1i) & vec2<i32>(-10897i, u_input.c), -1i, var_2.a, i32(-1i) * -34931i), firstTrailingBit(var_1.x))), all(var_2.b.xy), global0[_wgslsmith_index_u32(~(~13807u << (~(~var_1.x) % 32u)), 25u)]);
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -859f))), _wgslsmith_f_op_f32(f32(-1f) * -630f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1338f)) * _wgslsmith_f_op_f32(f32(-1f) * -128f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-591f)) - 165f))))));
    global0 = array<Struct_4, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-570f, -1265f)), -1744f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1471f, -1228f) - vec2<f32>(-913f, -163f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-236f, 1218f), vec2<f32>(-1000f, -1000f))), select(var_2.b.zz, vec2<bool>(true, var_2.b.x), false))))), var_2.b.zy)));
}

