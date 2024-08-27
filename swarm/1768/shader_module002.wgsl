struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(47014u, 1u, 67179u, 3492u);

var<private> global1: array<Struct_4, 29>;

var<private> global2: array<vec2<f32>, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)), 843f);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-534f, arg_2.a)), _wgslsmith_f_op_f32(-864f * _wgslsmith_f_op_f32(min(-536f, -1000f)))) * var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b.x)) + -1000f), var_0.x)));
    var var_2 = !vec3<bool>(!arg_0.b.x, false, !any(vec3<bool>(false, arg_0.b.x, arg_1.a.x)));
    var var_3 = var_2.x && all(vec4<bool>(true, true, var_2.x, var_2.x));
    var var_4 = 18578i;
    return -u_input.c;
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> f32 {
    let var_0 = Struct_2(func_2(Struct_3(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, arg_1)), select(vec2<bool>(true, arg_1), vec2<bool>(false, true), vec2<bool>(arg_1, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), vec2<bool>(arg_1, false)), !vec2<bool>(arg_1, arg_1))), Struct_3(select(select(vec2<bool>(true, arg_1), vec2<bool>(false, false), arg_1), !vec2<bool>(arg_1, false), false), vec2<bool>(arg_1 && false, true)), arg_0.b), arg_0.b, -(vec2<i32>(select(arg_0.a, u_input.e.x, arg_1), -arg_0.a) >> (abs(~vec2<u32>(global0.x, 0u)) % vec2<u32>(32u))));
    var var_1 = vec3<i32>(~(-20825i), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, u_input.e.x << (_wgslsmith_dot_vec2_u32(u_input.d.yx, u_input.d.zy) % 32u)), i32(-1i) * -1i), -(firstLeadingBit(_wgslsmith_sub_i32(var_0.a, var_0.a)) | (var_0.c.x << (60748u % 32u))));
    var var_2 = vec2<i32>(var_1.x, firstTrailingBit(var_1.x));
    var var_3 = ~select(_wgslsmith_add_vec3_i32(~vec3<i32>(-32914i, -2147483647i, var_0.a), abs(vec3<i32>(-1i, var_1.x, -1i))) << (~vec3<u32>(global0.x, u_input.b, global0.x) % vec3<u32>(32u)), countOneBits(vec3<i32>(arg_0.a, u_input.e.x, firstTrailingBit(u_input.a.x))), vec3<bool>(true, 2147483647i != var_0.c.x, select(false, select(arg_1, arg_1, false), all(vec2<bool>(false, true)))));
    let var_4 = !(!vec4<bool>(all(vec4<bool>(arg_1, arg_1, true, true)), arg_1, !(289f >= arg_0.b.b.x), any(vec2<bool>(arg_1, arg_1))));
    return arg_0.b.a;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    global1 = array<Struct_4, 29>();
    var var_0 = Struct_2(func_2(Struct_3(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), u_input.a.x > 1i)), Struct_3(vec2<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -242f), vec2<f32>(_wgslsmith_f_op_f32(1012f - -1081f), 132f))), Struct_1(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) * _wgslsmith_f_op_vec2_f32(trunc(arg_0)))))), ~vec2<i32>(-3121i, _wgslsmith_add_i32(-u_input.a.x, select(u_input.c, 11066i, false))));
    return Struct_2(u_input.c, Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_add_i32(var_0.a, u_input.e.x), var_0.b, _wgslsmith_clamp_vec2_i32(var_0.c, u_input.e, var_0.c)), true)), _wgslsmith_f_op_vec2_f32(var_0.b.b * arg_0)), vec2<i32>(_wgslsmith_div_i32(-1i, -_wgslsmith_mult_i32(var_0.a, u_input.a.x)), -44467i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2[_wgslsmith_index_u32(4294967295u, 3u)]);
    global1 = array<Struct_4, 29>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.a, -636f) * -263f), 1000f, -1002f));
    let var_2 = select(true, _wgslsmith_div_f32(var_0.b.a, _wgslsmith_f_op_f32(func_3(func_1(global2[_wgslsmith_index_u32(38331u, 3u)]), var_1.x != 382f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.c, Struct_1(var_0.b.b.x, vec2<f32>(1017f, var_0.b.a)), var_0.c), false)), _wgslsmith_f_op_f32(trunc(381f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.b.x, var_0.b.a))), false);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2419f), 1f, var_0.b.b.x, _wgslsmith_f_op_f32(max(var_1.x, 1531f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -293f, var_1.x, var_1.x), vec4<f32>(-920f, 1000f, var_0.b.a, var_1.x), vec4<bool>(true, var_2, var_2, true))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.b.b.x, var_0.b.a, -1082f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 344f, -893f, 787f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1082f, -319f, var_0.b.b.x, -1000f) + vec4<f32>(-378f, var_0.b.a, var_1.x, -1740f)), true)))));
    var var_3 = Struct_2(select(u_input.c, u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(507f + -1736f), _wgslsmith_div_f32(677f, 230f)) == var_1.x), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.c, Struct_1(-628f, var_1.ww), var_0.c), true)))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(floor(var_1.x)))))), var_0.c);
    let var_4 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a + var_0.b.b.x) + 1665f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.yx), firstLeadingBit(1u), ~abs(~vec4<u32>(37987u, 4294967295u, 4294967295u, 19459u)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(0i, var_4.c.x, 2147483647i), vec3<i32>(var_3.c.x, -39778i, -27890i), var_2), -vec3<i32>(u_input.a.x, u_input.e.x, -69910i)) & vec3<i32>(u_input.a.x, var_4.c.x, ~(-1i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_4.c.x, var_0.c.x, 1i) << (global0.yxy % vec3<u32>(32u)), ~vec3<i32>(-2147483647i, -37737i, 8380i)) & -abs(vec3<i32>(1i, var_3.c.x, u_input.c))));
}

