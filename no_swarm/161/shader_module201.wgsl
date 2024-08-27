struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 20>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    global0 = i32(-1i) * -_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.e.x, u_input.e.x >> (u_input.b % 32u)), u_input.e.x);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(102f - -2065f) * -263f))), -22662i, abs(u_input.c.x));
    let var_1 = false;
    var var_2 = (_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e.x ^ -50899i, -1i), _wgslsmith_mult_vec2_i32(u_input.e.yy, -u_input.e.zx)) ^ u_input.e.xy) << (u_input.a.yx % vec2<u32>(32u));
    var_2 = u_input.e.zx;
    return global1[_wgslsmith_index_u32(1u, 20u)];
}

fn func_3() -> vec4<i32> {
    global0 = -(u_input.e.x ^ 2147483647i);
    let var_0 = -(u_input.e.x << (u_input.d.x % 32u));
    global1 = array<Struct_1, 20>();
    var var_1 = vec4<bool>(true, (var_0 & _wgslsmith_add_i32(~u_input.e.x, 0i)) != -_wgslsmith_mult_i32(-2147483647i, 1i), u_input.c.x > ~(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) >> (abs(1u) % 32u)), true);
    global1 = array<Struct_1, 20>();
    return vec4<i32>(-12966i, u_input.e.x, _wgslsmith_div_i32(var_0, abs(-var_0 | 0i)), u_input.e.x & (abs(-2147483647i) << (_wgslsmith_div_u32(~u_input.d.x, 4294967295u) % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec4<i32> {
    global0 = 0i;
    global1 = array<Struct_1, 20>();
    let var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = func_1();
    return func_3();
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(arg_0.a, i32(-1i) * -1i, arg_0.c);
    global1 = array<Struct_1, 20>();
    global0 = _wgslsmith_mod_i32(-arg_3.b >> (countOneBits(_wgslsmith_clamp_u32(arg_3.c, ~arg_3.c, ~var_0.c)) % 32u), i32(-1i) * -_wgslsmith_add_i32(u_input.e.x, ~(-7616i)));
    let var_1 = 4294967295u <= (~(~(arg_3.c ^ 0u)) >> (arg_3.c % 32u));
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e.x, _wgslsmith_add_i32(reverseBits(arg_3.b), func_2(global1[_wgslsmith_index_u32(1u, 20u)], true).x)), arg_1.wy);
    return ~max(vec3<i32>(_wgslsmith_mult_i32(0i ^ arg_3.b, arg_3.b | -2147483647i), -var_0.b | min(-37i, u_input.e.x), arg_1.x), arg_1.xxy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -reverseBits(_wgslsmith_dot_vec3_i32(func_4(func_1(), func_2(global1[_wgslsmith_index_u32(3803u, 20u)], true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1017f)), Struct_1(1784f, 0i, 7076u)), u_input.e));
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    let var_0 = !(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true), true), vec4<bool>(true, true, true, true), true));
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1364f, 145f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1124f, -481f), vec2<f32>(-319f, 1052f))), vec2<bool>(true, var_0.x))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, 885f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-688f + 921f) - _wgslsmith_f_op_f32(step(-800f, -837f))), -1558f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-1i, -1i), -2382i, -2147483647i, -1i), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.e.x, u_input.e.x, 13887i, u_input.e.x)), -vec4<i32>(u_input.e.x, 1i, 23750i, -2147483647i), vec4<i32>(u_input.e.x, u_input.e.x, 1i, -1i)))), ~(u_input.c.x >> (u_input.c.x % 32u)));
}

