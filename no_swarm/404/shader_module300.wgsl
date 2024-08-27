struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>) -> f32 {
    var var_0 = vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.a, arg_0.a), _wgslsmith_div_i32(u_input.c, _wgslsmith_div_i32(arg_0.a.x, 0i)), _wgslsmith_clamp_i32(arg_0.a.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, arg_0.a.x, 2147483647i), vec4<i32>(u_input.c, u_input.d.x, 0i, arg_0.b))), u_input.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(-arg_0.a.x, -1i, reverseBits(arg_0.a.x), 17056i), vec4<i32>(1i, ~0i, arg_0.b, i32(-1i) * -27606i))), ~(-(~arg_0.b)), -(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.a.x, u_input.c), arg_0.a)) >> (~1u % 32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let var_2 = Struct_3(0u, var_0.xy, Struct_1(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) - _wgslsmith_f_op_f32(step(-1000f, var_1.x))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c.a, _wgslsmith_f_op_f32(var_2.c.a * var_2.c.a), true)))));
    var var_3 = _wgslsmith_f_op_f32(trunc(-479f)) <= _wgslsmith_f_op_f32(f32(-1f) * -843f);
    return var_1.x;
}

fn func_3() -> vec3<bool> {
    global0 = array<vec4<u32>, 17>();
    let var_0 = ~abs((_wgslsmith_mult_vec4_i32(vec4<i32>(3461i, -1i, 47933i, 2147483647i), vec4<i32>(u_input.c, u_input.d.x, 0i, 2147483647i)) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.d.x, 31691i), vec4<i32>(u_input.d.x, u_input.c, u_input.c, -1i))) >> (~abs(u_input.a) % vec4<u32>(32u)));
    global0 = array<vec4<u32>, 17>();
    let var_1 = !any(select(vec2<bool>(true, any(vec3<bool>(true, true, false))), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(true, true, false)))));
    global0 = array<vec4<u32>, 17>();
    return !vec3<bool>(!(!var_1), true, all(vec4<bool>(var_1, var_0.x < var_0.x, var_1, true)));
}

fn func_2() -> vec2<u32> {
    let var_0 = any(!func_3()) && !all(vec3<bool>(true, true, true));
    global0 = array<vec4<u32>, 17>();
    global0 = array<vec4<u32>, 17>();
    var var_1 = Struct_3(_wgslsmith_dot_vec3_u32(countOneBits(u_input.a.zyx), u_input.a.wzz << (firstLeadingBit(firstTrailingBit(vec3<u32>(1u, 0u, 4294967295u))) % vec3<u32>(32u))), vec2<i32>(u_input.c, u_input.c), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-195f)), -1403f, _wgslsmith_mult_u32(0u, 43174u) < _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 124416u))))));
    let var_2 = Struct_3(1u, -u_input.d, Struct_1(_wgslsmith_f_op_f32(select(var_1.c.a, _wgslsmith_f_op_f32(-var_1.c.a), true != var_0))));
    return _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_1.a), u_input.b), min(~(u_input.b ^ vec2<u32>(u_input.b.x, 0u)), _wgslsmith_mult_vec2_u32(~u_input.a.zx, vec2<u32>(u_input.a.x, 18409u))), u_input.b) & u_input.a.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_4(-vec3<i32>(26641i, u_input.c, u_input.c), -u_input.c), vec2<u32>(firstTrailingBit(58093u), min(23714u, u_input.a.x)))), 346f)));
    var var_1 = ~(~select(_wgslsmith_mult_vec2_u32(u_input.a.zw, u_input.a.wz), func_2(), false) << (~(u_input.b << (_wgslsmith_div_vec2_u32(u_input.b, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_1 = vec2<u32>(~abs(_wgslsmith_add_u32(var_1.x, 1u)), 33445u) << ((select(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, 0u), u_input.b | vec2<u32>(var_1.x, var_1.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 20740u, var_1.x, u_input.a.x), global0[_wgslsmith_index_u32(0u, 17u)]), ~u_input.b.x), func_3().x) | vec2<u32>(_wgslsmith_mod_u32(0u, 92038u | var_1.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 0u), u_input.a.zxy))) % vec2<u32>(32u));
    var var_2 = !(!func_3().yx);
    let var_3 = _wgslsmith_f_op_f32(round(var_0.x));
    var var_4 = vec4<bool>(func_3().x, false, any(vec4<bool>(_wgslsmith_f_op_f32(ceil(var_0.x)) >= -1533f, any(!vec2<bool>(true, var_2.x)), any(vec4<bool>(true, var_2.x, var_2.x, var_2.x)), var_2.x)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(u_input.a.yyx, ~(~u_input.a.zxw), vec3<u32>(1u, countOneBits(min(1u, 18550u)), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_4(vec3<i32>(33117i, -32544i, -66684i) << (vec3<u32>(78865u, u_input.a.x, var_1.x) % vec3<u32>(32u)), abs(u_input.d.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(var_1.x, u_input.b.x)), vec2<u32>(u_input.a.x, 48274u)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1393f, _wgslsmith_f_op_f32(-var_0.x)) - var_0.x)), ~u_input.c | _wgslsmith_mod_i32(firstTrailingBit(-1i), u_input.d.x), -19629i, 44529u);
}

