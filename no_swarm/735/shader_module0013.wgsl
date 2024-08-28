struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_2(arg_3.a, firstLeadingBit(arg_3.b) & ~_wgslsmith_mult_i32(select(arg_3.b, 0i, arg_1.c), abs(-11285i)), true);
    var var_1 = arg_1.b & ~arg_1.b;
    var_1 = 23139i;
    let var_2 = !(!(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-376f + arg_2.x))) <= _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, 1154f), var_0.a)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-arg_2), vec2<f32>(_wgslsmith_f_op_f32(min(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(842f))))), _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + arg_0)))))), Struct_3(arg_2.x, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(arg_3.a + arg_0))), select(~(~vec4<u32>(4359u, 17063u, u_input.b, u_input.a.x)), (vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.b) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<u32>(4294967295u, 50812u, 1u, u_input.a.x)), vec4<bool>(var_2, true | var_0.c, 1i <= var_0.b, true)), select(-global0[_wgslsmith_index_u32(98302u, 23u)] << ((vec2<u32>(4294967295u, u_input.b) << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 23u)], _wgslsmith_sub_vec2_i32(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), !vec2<bool>(true, var_0.c))));
    return var_3.c.c.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> bool {
    var var_0 = !(!vec4<bool>(any(vec2<bool>(true, arg_0.x)) & arg_0.x, true, true, true));
    global0 = array<vec2<i32>, 23>();
    var var_1 = u_input.c;
    var_0 = select(vec4<bool>(!var_0.x, all(var_0.xw), true, var_0.x), !select(!select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, true, var_0.x, false), arg_0.x), select(vec4<bool>(var_0.x, arg_0.x, var_0.x, true), vec4<bool>(false, true, true, var_0.x), arg_1.x < arg_1.x), false), !(!(!select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(false, true, true, arg_0.x), vec4<bool>(arg_0.x, var_0.x, true, true)))));
    global0 = array<vec2<i32>, 23>();
    return !(_wgslsmith_mult_u32(1u, reverseBits(u_input.b)) > func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(537f * 782f) - -286f), Struct_2(_wgslsmith_f_op_f32(397f - -775f), _wgslsmith_div_i32(u_input.c, u_input.c), any(vec3<bool>(false, false, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-521f, 286f, 273f), vec3<f32>(1000f, 137f, -219f)))), Struct_2(_wgslsmith_f_op_f32(max(-1503f, 185f)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(u_input.c, -12220i)), var_0.x || true)));
}

fn func_1() -> Struct_1 {
    let var_0 = 59595u;
    var var_1 = select(firstTrailingBit(abs(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.c, 2147483647i, u_input.c), vec3<i32>(u_input.c, u_input.c, 18918i) << (vec3<u32>(var_0, u_input.b, var_0) % vec3<u32>(32u)), vec3<i32>(u_input.c, 2147483647i, u_input.c)))), select(abs(vec3<i32>(u_input.c, u_input.c, 22549i)), vec3<i32>(countOneBits(-46382i), 0i, u_input.c), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true))) << (vec3<u32>(0u, u_input.b, firstTrailingBit(1u >> (1u % 32u))) % vec3<u32>(32u)), func_2(vec3<bool>(true, true, true), select(~u_input.a, _wgslsmith_mod_vec2_u32(u_input.a, u_input.a), vec2<bool>(true, true))));
    var_1 = ~reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_1.x, 2147483647i), abs(-19910i), _wgslsmith_dot_vec2_i32(var_1.yx, vec2<i32>(-1i, var_1.x))), vec3<i32>(_wgslsmith_mod_i32(u_input.c, -36251i), select(2457i, -2147483647i, true), -2147483647i)));
    global0 = array<vec2<i32>, 23>();
    let var_2 = ~(~vec2<u32>(19114u, u_input.b));
    return Struct_1(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 23>();
    let var_0 = func_1();
    global0 = array<vec2<i32>, 23>();
    var var_1 = 37710u;
    var var_2 = Struct_5(-73652i, false | !(u_input.c < (var_0.a | u_input.c)), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -905f, -639f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1676f, -1265f, 325f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1336f, 365f), vec2<f32>(-210f, -1000f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1148f, -490f), vec2<f32>(280f, 2193f), true))))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(689f * 637f), -1439f), -1000f, _wgslsmith_sub_vec4_u32(vec4<u32>(31180u, 1u, u_input.b, u_input.b) >> (vec4<u32>(u_input.a.x, 25589u, u_input.a.x, u_input.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 93419u, 45570u, 4294967295u), vec4<u32>(1u, 48799u, u_input.b, 46596u))), vec2<i32>(u_input.c, 30845i) ^ vec2<i32>(-22267i, 1110i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(184f))));
    let var_3 = ~u_input.b;
    var var_4 = ~u_input.a.x;
    let var_5 = -_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(max(u_input.c, 2147483647i), 6711i, select(18337i, -51950i, var_2.b)), vec3<i32>(-var_2.a, var_2.c.c.d.x ^ var_0.a, u_input.c), -(vec3<i32>(var_0.a, var_0.a, var_0.a) << (var_2.c.c.c.xwz % vec3<u32>(32u)))), -vec3<i32>(~var_0.a, firstTrailingBit(-11772i), var_0.a));
    var var_6 = _wgslsmith_div_vec2_i32(var_5.yy & var_2.c.c.d, var_2.c.c.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, -1210f, var_2.c.c.a)));
}

