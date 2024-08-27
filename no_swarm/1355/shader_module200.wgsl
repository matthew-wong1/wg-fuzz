struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<i32>) -> vec4<f32> {
    var var_0 = countOneBits(abs(-((u_input.b | vec4<i32>(2147483647i, arg_2.x, -47848i, 2147483647i)) << (_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(39261u, 0u, 2727u, arg_1.x)) % vec4<u32>(32u)))));
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    var_0 = u_input.b;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_1.x, abs(19986u)), 7u)];
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(255f, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + var_1.c)) * _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool) -> Struct_5 {
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1238f, 980f, -1000f, -980f) - vec4<f32>(-825f, -692f, -187f, -1132f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-545f, 2549f, 772f, 106f) * vec4<f32>(754f, -379f, -139f, 289f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(arg_2, arg_2), u_input.e, vec2<i32>(u_input.a.x, 0i))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(628f, -926f, -979f, -1271f) * vec4<f32>(1096f, -400f, -2561f, -682f))) - vec4<f32>(_wgslsmith_f_op_f32(-1186f - -538f), _wgslsmith_f_op_f32(abs(-716f)), _wgslsmith_f_op_f32(1000f - -2691f), _wgslsmith_f_op_f32(ceil(-2318f)))))));
    let var_1 = select(vec2<i32>(2147483647i << (countOneBits(u_input.d.x) % 32u), _wgslsmith_div_i32(14146i << (u_input.c.x % 32u), _wgslsmith_mod_i32(~u_input.a.x, -u_input.a.x))), _wgslsmith_mod_vec2_i32(-u_input.b.zy, u_input.a.xy), arg_0);
    var var_2 = vec3<u32>(u_input.d.x, u_input.d.x, u_input.c.x);
    return Struct_5(any(vec2<bool>(arg_0, firstLeadingBit(-2147483647i) == _wgslsmith_mod_i32(0i, u_input.a.x))));
}

fn func_1() -> u32 {
    var var_0 = func_2(!(_wgslsmith_f_op_f32(floor(-693f)) != _wgslsmith_f_op_f32(f32(-1f) * -986f)) & any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)), true, true);
    let var_1 = all(vec4<bool>(var_0.a, var_0.a, true, any(select(!vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(false, var_0.a, var_0.a), select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, var_0.a, var_0.a), true)))));
    global0 = array<Struct_2, 7>();
    global0 = array<Struct_2, 7>();
    var_0 = func_2(var_0.a, var_1, !(true & var_0.a));
    return u_input.e.x & (_wgslsmith_sub_u32(u_input.e.x, 1u) ^ 72323u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> vec3<bool> {
    var var_0 = func_2(func_2(true, true, select(all(vec4<bool>(true, false, false, false)), any(vec4<bool>(true, true, false, true)), false)).a, any(select(vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(true, true), vec2<bool>(true, true))), !all(vec2<bool>(u_input.a.x <= u_input.a.x, true)));
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.a, -315f), -425f, !(false | var_0.a)))));
    let var_2 = !(1i < _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, i32(-1i) * -7644i), u_input.b.x));
    var var_3 = -73522i;
    let var_4 = _wgslsmith_f_op_vec4_f32(func_3(select(!select(vec2<bool>(false, var_0.a), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(var_2, false))), !(!vec2<bool>(var_2, var_2)), var_0.a), select(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), ~u_input.d.x, reverseBits(18917u), func_1()), arg_0), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.d.x, u_input.d.x, ~1u, 4294967295u), vec4<u32>(select(78187u, u_input.d.x, false), ~78151u, firstLeadingBit(arg_0.x), 0u >> (0u % 32u))), var_0.a), reverseBits(_wgslsmith_mod_vec2_i32(-u_input.b.yz, u_input.b.zz))));
    return !(!vec3<bool>(any(vec4<bool>(false, false, true, false)) & var_0.a, false, var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, u_input.c.x)), ~vec2<u32>(0u, 40358u)), vec2<u32>(u_input.d.x >> (1u % 32u), _wgslsmith_clamp_u32(4294967295u, u_input.e.x, u_input.e.x))) << (u_input.d % vec2<u32>(32u)));
    let var_1 = func_4(vec4<u32>(_wgslsmith_div_u32(1u, (var_0.x | u_input.e.x) ^ ~14305u), u_input.c.x >> (select(~4294967295u, ~0u, true) % 32u), abs(func_1()), firstLeadingBit(67263u)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-639f))))));
    var_0 = ~u_input.d;
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1588f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -789f))), -1071f) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(593f, -929f, -352f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(814f, 1117f, -1044f) + vec3<f32>(-963f, -809f, 419f)))))));
    var var_3 = !select(func_4(vec4<u32>(3283u, u_input.e.x, var_0.x, _wgslsmith_div_u32(27839u, 66868u)), Struct_4(1452f)).x, var_1.x, var_1.x & false);
    var var_4 = Struct_3(select(var_1.yy, !vec2<bool>(false, select(false, true, false)), !(!(!var_1.yx))), -u_input.a.x, select(select(vec4<bool>(false, any(var_1.yx), any(var_1.xy), true), vec4<bool>(true, var_1.x, false, true), vec4<bool>(all(vec3<bool>(var_1.x, true, true)), u_input.d.x > var_0.x, all(var_1), all(vec4<bool>(var_1.x, false, var_1.x, true)))), !(!select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(false, false, false, var_1.x), vec4<bool>(false, var_1.x, true, true))), !(any(var_1.zx) || var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_2, var_2))) + vec3<f32>(-1341f, _wgslsmith_f_op_f32(abs(var_2.x)), var_2.x))), vec4<u32>(var_0.x, select(var_0.x, _wgslsmith_div_u32(1u, var_0.x), var_1.x), (~var_0.x << (firstLeadingBit(4294967295u) % 32u)) << (_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 0u, var_0.x, var_0.x)), vec4<u32>(var_0.x, 4294967295u, u_input.e.x, u_input.e.x)) % 32u), var_0.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-u_input.a, -u_input.b.xzw), vec3<i32>(-_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b) | u_input.a.x, ~u_input.b.x)), vec3<i32>(-1i, var_4.b, var_4.b));
}

