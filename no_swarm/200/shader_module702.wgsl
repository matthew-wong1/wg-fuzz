struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<f32>) -> i32 {
    let var_0 = arg_0.x;
    let var_1 = ~_wgslsmith_add_u32(max(min(~u_input.c.x, ~1u), firstTrailingBit(~arg_2.x)), arg_2.x);
    return -arg_1.b << (_wgslsmith_clamp_u32(select(~4294967295u & global0.x, u_input.b.x, true), global0.x, var_1) % 32u);
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = !any(select(vec2<bool>(true, true), vec2<bool>(arg_0.x < 0i, global0.x == global0.x), select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    global0 = vec4<u32>(_wgslsmith_mod_u32(~global0.x, _wgslsmith_sub_u32(global0.x, global0.x)), ~(~(~4294967295u)), ~(~global0.x), 1u);
    global0 = _wgslsmith_div_vec4_u32(countOneBits(~u_input.c), _wgslsmith_div_vec4_u32(u_input.b >> ((u_input.b ^ vec4<u32>(global0.x, 4294967295u, global0.x, u_input.a)) % vec4<u32>(32u)), abs(_wgslsmith_mod_vec4_u32(firstLeadingBit(u_input.c), vec4<u32>(u_input.a, 4294967295u, u_input.a, global0.x)))));
    var_0 = !all(vec4<bool>(any(vec4<bool>(false, false, false, true)) && true, select(0i, 0i, true) >= arg_0.x, true, false));
    let var_1 = vec4<i32>(firstTrailingBit(reverseBits(func_3(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), Struct_2(vec3<u32>(4294967295u, global0.x, global0.x), 87911i, vec2<i32>(-2147483647i, -6175i), Struct_1(1000f, vec2<u32>(4294967295u, 0u), vec3<f32>(1000f, -2986f, -695f), false)), ~u_input.b.yy, vec3<f32>(955f, 1000f, 240f)))), -2147483647i, -26173i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.x, -41874i, arg_0.x)) ^ ~abs(vec3<i32>(arg_0.x, -22680i, -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, countOneBits(-1i), min(arg_0.x, 33745i)), -(~vec3<i32>(arg_0.x, -25499i, arg_0.x)))));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u ^ min(u_input.a, 16765u), firstTrailingBit(9483u)), _wgslsmith_add_vec2_u32(abs(~vec2<u32>(u_input.b.x, global0.x)), vec2<u32>(global0.x, u_input.a) >> (vec2<u32>(global0.x, u_input.b.x) % vec2<u32>(32u)))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, global0.x), abs(vec2<u32>(u_input.c.x, 1u) >> (vec2<u32>(global0.x, 1u) % vec2<u32>(32u))), global0.zw));
}

fn func_1() -> u32 {
    global0 = countOneBits(~select(vec4<u32>(global0.x, 0u, 10935u, global0.x), ~u_input.b, vec4<bool>(true, true, true, true))) ^ u_input.c;
    let var_0 = _wgslsmith_clamp_i32(reverseBits(~(-2147483647i)), -(i32(-1i) * -(~(-2147483647i))), 1i);
    let var_1 = -var_0;
    let var_2 = abs(vec4<u32>(u_input.a >> (abs(~4294967295u) % 32u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(37427u, 23036u), vec2<u32>(1u, 4294967295u))), max(~u_input.c.x, _wgslsmith_dot_vec3_u32(global0.ywy, global0.zyw)) ^ 0u, func_2(vec2<i32>(var_1, var_0))));
    let var_3 = Struct_2(~(_wgslsmith_clamp_vec3_u32(var_2.ywx | global0.xyz, ~vec3<u32>(var_2.x, 0u, 4294967295u), ~vec3<u32>(4439u, 62924u, u_input.c.x)) & u_input.c.ywx), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_1, 24550i, countOneBits(_wgslsmith_mult_i32(var_0, 2147483647i))), vec4<i32>(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0, var_1), vec3<i32>(2147483647i, var_1, -37488i)), var_0 | var_0), select(68551i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1), vec2<i32>(var_1, var_1)), true), -func_3(vec3<bool>(true, false, false), Struct_2(u_input.b.xwy, 1i, vec2<i32>(32180i, var_0), Struct_1(973f, u_input.b.yy, vec3<f32>(815f, -462f, -1134f), false)), var_2.xz, vec3<f32>(-501f, 755f, -488f)))), reverseBits(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(var_1, var_1)), select(vec2<i32>(3181i, -2147483647i), vec2<i32>(var_1, -1i), vec2<bool>(true, true)) >> (global0.wy % vec2<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-232f + 1345f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(376f)) - -588f)), vec2<u32>(_wgslsmith_sub_u32(abs(1u), global0.x >> (16170u % 32u)), global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-268f, -774f, -608f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-319f, -980f, 1824f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(360f, -426f, 2365f) * vec3<f32>(-1109f, -974f, -547f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1535f, -660f, 167f)))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec2<bool>(true, true))))));
    return 92022u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(735f - 473f);
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.c, u_input.b), max(~(max(vec4<u32>(1u, 1u, u_input.b.x, 0u), u_input.c) | (u_input.c >> (u_input.b % vec4<u32>(32u)))), vec4<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.c.x, firstTrailingBit(1u)), ~func_1(), _wgslsmith_mult_u32(min(72252u, u_input.c.x), global0.x))));
    var var_1 = 4294967295u;
    var_1 = 65740u << (u_input.b.x % 32u);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -329f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1491f)) * _wgslsmith_f_op_f32(1000f + -1309f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, -1127f);
}

