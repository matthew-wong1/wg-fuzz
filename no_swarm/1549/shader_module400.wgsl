struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(35747u, 0u, 54985u);

var<private> global1: Struct_1 = Struct_1(vec3<i32>(2147483647i, 15875i, -57537i), true, vec4<u32>(1u, 4294967295u, 0u, 4294967295u), 0u, -1493f);

var<private> global2: f32 = 1000f;

var<private> global3: array<vec3<f32>, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_add_u32(global0.x, ~60566u);
    var var_1 = Struct_1(global1.a, !(!all(select(vec3<bool>(false, true, global1.b), vec3<bool>(global1.b, false, global1.b), global1.b))), global1.c, 37696u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-362f, _wgslsmith_f_op_f32(round(207f)))) + -743f));
    let var_2 = Struct_1(reverseBits(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, global1.a.x, u_input.a), vec3<i32>(~22220i, global1.a.x, _wgslsmith_div_i32(21395i, 2147483647i)))), var_1.b, ~select(select(global1.c, global1.c, !vec4<bool>(var_1.b, global1.b, global1.b, var_1.b)), ~reverseBits(vec4<u32>(var_0, 0u, 4294967295u, 1u)), false), _wgslsmith_mult_u32(abs(max(4294967295u, firstLeadingBit(var_1.d))), ~(~reverseBits(4294967295u))), var_1.e);
    var_1 = Struct_1(-(~firstTrailingBit(var_2.a)), any(vec4<bool>(var_2.b & true, var_2.e <= _wgslsmith_f_op_f32(f32(-1f) * -778f), global1.b, true)), vec4<u32>(~var_0, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 108973u), global1.c.zxz), vec3<u32>(23859u, var_2.d, var_0) << (global1.c.yxy % vec3<u32>(32u))), 1u), ~var_0, global1.d), 1u >> ((7692u & (max(global1.d, 22918u) | var_0)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e)));
    let var_3 = Struct_1(max(-vec3<i32>(2147483647i, var_1.a.x, abs(var_2.a.x)), global1.a), any(vec3<bool>(1i > countOneBits(var_1.a.x), global0.x > firstLeadingBit(2519u), true)), vec4<u32>(_wgslsmith_add_u32(min(4294967295u, 58809u), global0.x) ^ 85499u, global1.d & var_2.c.x, 21331u, ~min(_wgslsmith_mult_u32(var_2.d, global1.c.x), _wgslsmith_mod_u32(18471u, global0.x))), var_0, var_2.e);
    return true;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = all(select(vec3<bool>(true, false, all(vec3<bool>(true, false, false))), vec3<bool>(false, global1.e >= -337f, -776f > _wgslsmith_f_op_f32(ceil(global1.e))), select(select(!vec3<bool>(global1.b, false, false), select(vec3<bool>(false, true, global1.b), vec3<bool>(global1.b, false, false), global1.b), !global1.b), select(vec3<bool>(global1.b, global1.b, true), select(vec3<bool>(true, global1.b, global1.b), vec3<bool>(global1.b, false, false), vec3<bool>(global1.b, false, global1.b)), func_3()), global1.b)));
    let var_1 = Struct_1(max(abs(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(global1.a, global1.a), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, global1.a.x, u_input.a), global1.a))), abs(vec3<i32>(-6704i, 79883i, 698i)) & global1.a), arg_0.x <= min(~_wgslsmith_sub_u32(global0.x, global0.x), arg_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(60997u, _wgslsmith_dot_vec2_u32(global0.zx, global0.zx)), 23783u, global1.c.x, arg_0.x), _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, arg_0.x), global1.c), ~global1.c)), countOneBits(4294967295u), _wgslsmith_f_op_f32(global1.e + global1.e));
    global3 = array<vec3<f32>, 30>();
    let var_2 = select(vec2<bool>(var_0, all(vec3<bool>(true, -2147483647i > u_input.b, var_0))), !vec2<bool>(any(!vec2<bool>(true, var_1.b)), var_1.b), var_1.e >= _wgslsmith_f_op_f32(abs(789f)));
    global2 = 413f;
    return Struct_1(var_1.a, true, _wgslsmith_clamp_vec4_u32(~select(reverseBits(var_1.c), global1.c ^ global1.c, vec4<bool>(true, var_2.x, false, var_0)), var_1.c, vec4<u32>(4294967295u, 29882u, 28540u, _wgslsmith_sub_u32(arg_0.x ^ 0u, abs(global1.c.x)))), ~max(countOneBits(_wgslsmith_mult_u32(arg_0.x, arg_0.x)), countOneBits(arg_0.x)), 1998f);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global1 = arg_1;
    global2 = -1481f;
    var var_0 = Struct_1(firstLeadingBit(~(~vec3<i32>(arg_2, 8691i, u_input.b))), global1.b, ~(~abs(vec4<u32>(0u, 4294967295u, global0.x, 31361u))), ~_wgslsmith_div_u32(~8377u, 1593u), arg_1.e);
    let var_1 = !select(!select(!vec2<bool>(global1.b, var_0.b), vec2<bool>(arg_0, arg_1.b), vec2<bool>(arg_0, false)), !vec2<bool>(true, !global1.b), true);
    let var_2 = func_2(firstTrailingBit(var_0.c.zyz));
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = ~select(~vec4<u32>(global0.x, global1.d, _wgslsmith_clamp_u32(1u, 1u, global0.x), global1.c.x), abs(vec4<u32>(arg_0.c.x, global1.c.x, global0.x << (global1.d % 32u), abs(39718u))), _wgslsmith_f_op_f32(f32(-1f) * -2595f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e * -304f)));
    var var_1 = _wgslsmith_div_i32(arg_0.a.x, 29510i);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e, global1.e))))));
    var var_3 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(arg_0.a, vec3<i32>(global1.a.x, u_input.a, -25584i)), vec3<i32>(0i, u_input.b, ~(arg_0.a.x >> (global0.x % 32u))), func_1(func_3(), Struct_1(vec3<i32>(1i, 35232i, u_input.a) & global1.a, 4321u >= var_0.x, ~global1.c, 1u, -297f), arg_0.a.x).a), true || global1.b, firstLeadingBit(vec4<u32>(var_0.x, ~arg_0.d, arg_0.c.x, ~_wgslsmith_sub_u32(4294967295u, 42760u))), reverseBits(58628u), _wgslsmith_div_f32(-597f, arg_0.e));
    var var_4 = global3[_wgslsmith_index_u32(arg_0.c.x, 30u)];
    return _wgslsmith_f_op_f32(var_3.e + _wgslsmith_f_op_f32(abs(var_3.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 69720u;
    global3 = array<vec3<f32>, 30>();
    global0 = ~global1.c.xyz;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1011f, -848f) * vec2<f32>(-1303f, global1.e)), vec2<f32>(105f, global1.e))) * vec2<f32>(521f, global1.e))));
    global0 = global1.c.yyy & (_wgslsmith_div_vec3_u32(~firstTrailingBit(vec3<u32>(global1.d, 59537u, global0.x)), vec3<u32>(52709u, var_0, global0.x) & _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, var_0, global1.c.x), vec3<u32>(global0.x, 4294967295u, 15071u))) << (vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 36999u, global0.x, global1.c.x), global1.c), 1u, 0u) % vec3<u32>(32u)));
    global0 = global1.c.yyz;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(func_1(true, Struct_1(global1.a, global1.b, vec4<u32>(4294967295u, global0.x, var_0, 0u), 1u, var_1.x), global1.a.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-308f + -1000f))) - 2792f), _wgslsmith_f_op_f32(global1.e + 446f));
    var var_3 = func_2(global1.c.xxz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(func_2(_wgslsmith_div_vec3_u32(~global1.c.zwy, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global1.c.x, 19732u), vec3<u32>(var_3.c.x, 0u, global1.d)))).a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(var_3.a, vec3<i32>(-2147483647i, -36595i, global1.a.x)), _wgslsmith_mod_vec3_i32(var_3.a, vec3<i32>(2147483647i, u_input.b, u_input.a))), 1i), -(~19642i), 41444i), global1.c.yzz, global1.a.xx);
}

