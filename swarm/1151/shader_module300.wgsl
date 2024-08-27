struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    global0 = Struct_1(arg_3.a.b.a, vec4<i32>(~arg_0.c.a.c, -arg_0.c.a.c, ~(-2147483647i << (global0.a.x % 32u)), -1i << (_wgslsmith_clamp_u32(firstLeadingBit(arg_2.b.a.x), ~global0.a.x, 1u) % 32u)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-653f, -341f, arg_0.a.x, arg_0.a.x) * vec4<f32>(arg_0.a.x, 552f, arg_0.a.x, arg_0.a.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<f32>(arg_0.a.x, -1669f, arg_0.a.x, arg_0.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.x, -359f, arg_0.a.x, arg_0.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.a.x, -1605f, _wgslsmith_f_op_f32(-arg_0.a.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, arg_0.a.x, 994f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, var_0.x, var_0.x, -1207f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -863f, -1238f)), !vec4<bool>(arg_2.a, false, arg_3.a.a, arg_2.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1667f, var_0.x, arg_0.a.x, -702f))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), arg_0.a.x, 1000f, _wgslsmith_f_op_f32(-arg_0.a.x)))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(886f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2240f - 543f) + _wgslsmith_f_op_f32(sign(-1970f)))), var_0.x, arg_0.a.x), all(vec2<bool>(arg_1, true))));
    let var_1 = _wgslsmith_add_i32(~0i, countOneBits(-2147483647i));
    var var_2 = Struct_3(Struct_2(arg_3.a.a, Struct_1(u_input.b, firstTrailingBit(-vec4<i32>(2147483647i, arg_0.c.a.c, var_1, -25524i))), _wgslsmith_div_i32(-22158i, ~global0.b.x << (_wgslsmith_sub_u32(global0.a.x, arg_3.a.b.a.x) % 32u))));
    return ~0u;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(true, Struct_1(_wgslsmith_clamp_vec4_u32(abs(countOneBits(u_input.b)), ~global0.a >> (vec4<u32>(global0.a.x, 54275u, 51067u, arg_1.x) % vec4<u32>(32u)), vec4<u32>(88346u, 4294967295u & u_input.a.x, u_input.b.x, arg_1.x ^ global0.a.x)), global0.b >> (vec4<u32>(global0.a.x, 1u, global0.a.x, _wgslsmith_mod_u32(u_input.a.x, 81786u)) % vec4<u32>(32u))), global0.b.x);
    var var_1 = false;
    return Struct_1(max(~(~vec4<u32>(global0.a.x, 1u, 78076u, 4294967295u)), var_0.b.a) << (vec4<u32>(33626u, ~_wgslsmith_mult_u32(var_0.b.a.x, arg_0), countOneBits(arg_0), func_3(Struct_4(vec3<f32>(560f, -578f, -893f), u_input.a.x, Struct_3(Struct_2(false, var_0.b, -32962i))), !var_0.a, var_0, Struct_3(Struct_2(var_0.a, var_0.b, var_0.c)))) % vec4<u32>(32u)), var_0.b.b ^ vec4<i32>(~_wgslsmith_clamp_i32(-2147483647i, -2147483647i, global0.b.x), ~var_0.c >> (57023u % 32u), max(_wgslsmith_add_i32(2147483647i, var_0.c), _wgslsmith_mod_i32(global0.b.x, -2147483647i)), countOneBits(abs(var_0.c))));
}

fn func_1() -> Struct_3 {
    global0 = func_2(firstLeadingBit(u_input.a.x), ~global0.a.zxx);
    global0 = func_2(0u, global0.a.wxz);
    let var_0 = vec2<bool>((global0.b.x >= ~34804i) & true, !(!(select(global0.b.x, global0.b.x, true) > global0.b.x)));
    let var_1 = vec3<bool>(var_0.x, var_0.x, true);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1232f * -612f), 1883f, -1000f), vec3<f32>(_wgslsmith_div_f32(484f, -349f), _wgslsmith_f_op_f32(1029f + 379f), _wgslsmith_f_op_f32(717f * 254f)), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -2244f, -447f), vec3<f32>(-898f, -383f, -128f), var_1))))), ~(~global0.a.x), Struct_3(Struct_2(false, func_2(~u_input.a.x, u_input.b.zxy ^ u_input.a), max(global0.b.x >> (u_input.b.x % 32u), global0.b.x >> (1u % 32u)))));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(375f, 803f), -636f, -590f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-525f, -1670f, 182f)))))), 36205u, func_1());
    let var_1 = false;
    global0 = Struct_1(u_input.b, global0.b);
    var var_2 = !(!select(select(vec3<bool>(false, true, var_1), vec3<bool>(var_0.c.a.a, true, var_0.c.a.a), select(vec3<bool>(true, var_0.c.a.a, var_0.c.a.a), vec3<bool>(var_1, true, false), true)), vec3<bool>(true, select(var_0.c.a.a, var_1, true), var_0.c.a.a), var_0.c.a.a));
    var var_3 = vec3<bool>(false, var_0.c.a.b.b.x == ~(~1i >> (global0.a.x % 32u)), true);
    var var_4 = abs(global0.b.wwy);
    let var_5 = Struct_1(global0.a, _wgslsmith_add_vec4_i32(abs(countOneBits(vec4<i32>(27286i, -2147483647i, global0.b.x, var_0.c.a.c)) >> (abs(u_input.b) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(-global0.b, -vec4<i32>(var_0.c.a.b.b.x, -2147483647i, global0.b.x, -34691i), ~vec4<i32>(-1i, -2147483647i, var_0.c.a.c, 55289i)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(global0.b.x, var_0.c.a.c)), global0.b.yx), vec2<i32>(-2147483647i, 10253i))), _wgslsmith_f_op_f32(-var_0.a.x));
}

