struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<u32> {
    global0 = array<vec3<i32>, 28>();
    var var_0 = (select(16305u, arg_0.x, false) >> (countOneBits(u_input.a) % 32u)) <= 1u;
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    var_0 = true;
    return abs(arg_0);
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = min(func_3(abs(~arg_0.b)), ~_wgslsmith_div_vec3_u32(arg_0.b, max(vec3<u32>(66944u, 27643u, u_input.a), arg_0.b)) ^ vec3<u32>(arg_0.b.x, firstTrailingBit(1u) << (arg_0.b.x % 32u), arg_0.b.x | 13789u));
    global0 = array<vec3<i32>, 28>();
    let var_1 = arg_0.a;
    global0 = array<vec3<i32>, 28>();
    var var_2 = arg_0;
    return arg_0;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<f32>) -> i32 {
    let var_0 = reverseBits(vec3<i32>(-9977i, _wgslsmith_sub_i32(abs(i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(~0u, 28u)], vec3<i32>(7495i, 5677i, 20448i) >> (vec3<u32>(arg_1.b.x, u_input.a, 39273u) % vec3<u32>(32u)))), -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_1.c.x), vec2<i32>(0i, -9420i)), 0i)));
    var var_1 = any(select(select(select(vec4<bool>(true, false, arg_1.a, false), select(vec4<bool>(arg_1.a, true, false, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true), vec4<bool>(arg_1.a, false, false, arg_1.a)), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true)), select(vec4<bool>(arg_1.a, true, arg_1.a, true), vec4<bool>(false, false, true, arg_1.a), all(vec3<bool>(arg_1.a, false, true))), select(select(vec4<bool>(true, arg_1.a, arg_1.a, false), vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(false, true, true, arg_1.a)), select(vec4<bool>(arg_1.a, true, false, arg_1.a), vec4<bool>(true, true, arg_1.a, false), arg_1.a), true)), select(vec4<bool>(true, false, true, any(vec2<bool>(false, arg_1.a))), vec4<bool>(true, arg_1.a, arg_1.a, u_input.a == 4294967295u), !select(vec4<bool>(false, arg_1.a, arg_1.a, true), vec4<bool>(arg_1.a, arg_1.a, true, arg_1.a), true)), select(!(!vec4<bool>(arg_1.a, false, true, false)), vec4<bool>(!arg_1.a, arg_1.a, any(vec2<bool>(arg_1.a, arg_1.a)), !arg_1.a), !arg_1.a)));
    var var_2 = func_2(func_2(Struct_3(true, _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(44227u, 1u, arg_1.b.x), vec3<u32>(0u, u_input.a, arg_1.b.x), arg_1.b), vec3<u32>(0u, u_input.a, arg_1.b.x)), -vec3<i32>(2147483647i, -28088i, var_0.x))));
    var var_3 = max(~_wgslsmith_mod_i32(var_0.x, -_wgslsmith_dot_vec3_i32(var_2.c, global0[_wgslsmith_index_u32(113199u, 28u)])), max(-21507i, select(var_2.c.x, 2147483647i, true)));
    let var_4 = _wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(countOneBits(u_input.a) << (~4294967295u % 32u), 1u), u_input.a, _wgslsmith_sub_u32(~var_2.b.x, ~4294967295u)));
    return _wgslsmith_mod_i32(firstTrailingBit(-reverseBits(_wgslsmith_mult_i32(0i, var_0.x))), 1i);
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = vec3<i32>(35004i, max(_wgslsmith_clamp_i32(-67081i, arg_0.c.x, 59569i), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-927f, 704f, -1370f), vec3<f32>(-214f, 971f, 521f)), func_2(arg_0), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(631f, -586f, 452f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(487f, -1000f, 852f)))))), arg_0.c.x);
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    global0 = array<vec3<i32>, 28>();
    return ~(~select(79660u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, arg_1, 1u), ~vec4<u32>(u_input.a, arg_0.b.x, arg_1, arg_0.b.x)), arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 28>();
    let var_0 = _wgslsmith_f_op_f32(round(-1000f));
    global0 = array<vec3<i32>, 28>();
    let var_1 = 29654u;
    var var_2 = true;
    var var_3 = _wgslsmith_add_i32(max(~_wgslsmith_clamp_i32(1i, -1i, -12987i) << ((~var_1 ^ func_1(Struct_3(true, vec3<u32>(42630u, u_input.a, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 28u)]), 1u)) % 32u), -33900i), firstLeadingBit(_wgslsmith_mod_i32(~(~17864i), -(7302i >> (var_1 % 32u)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) - _wgslsmith_f_op_f32(var_0 * var_0)), _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(step(-838f, _wgslsmith_div_f32(-846f, _wgslsmith_div_f32(-759f, -1379f))))));
    let var_5 = func_2(Struct_3((var_1 >= func_3(vec3<u32>(18249u, 17419u, u_input.a)).x) && (u_input.a == u_input.a), ~(vec3<u32>(91888u, 17628u, 4294967295u) << (vec3<u32>(19786u, u_input.a, u_input.a) % vec3<u32>(32u))), -_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, -8915i, -14666i), max(global0[_wgslsmith_index_u32(var_1, 28u)], vec3<i32>(-2147483647i, 1i, -1i)))));
    var var_6 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(259f))), _wgslsmith_f_op_f32(1005f - _wgslsmith_f_op_f32(max(var_4.x, _wgslsmith_f_op_f32(floor(var_4.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(min(var_0, var_4.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-253f, var_0)))))), vec3<i32>(_wgslsmith_add_i32((var_5.c.x << (var_1 % 32u)) >> (_wgslsmith_add_u32(7804u, var_5.b.x) % 32u), ~abs(var_5.c.x)), firstTrailingBit(firstLeadingBit(1i)), min(_wgslsmith_sub_i32(var_5.c.x, var_5.c.x), var_5.c.x)));
}

