struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(65037u, -1i, vec3<f32>(1000f, 443f, -1000f), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<bool>(false, true, false));

var<private> global1: vec3<u32>;

var<private> global2: vec2<i32>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32, arg_3: vec2<i32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = ~0u;
    return 4294967295u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> u32 {
    global3 = select(select(arg_0, arg_1.c.e.yy, arg_1.c.e.xy), vec2<bool>(true, global3.x), vec2<bool>(true, !all(arg_0)));
    var var_0 = Struct_2(-(global2.x | global2.x) >= -u_input.e.x, _wgslsmith_sub_vec3_u32(global0.d, vec3<u32>(func_3(arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.c.x, global0.c.x, global0.c.x) * arg_1.c.c), _wgslsmith_f_op_f32(f32(-1f) * -934f), u_input.e.zz << (global1.xz % vec2<u32>(32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(14346u, global1.x) | vec2<u32>(33995u, 9732u), u_input.c), global1.x)), arg_1.c);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1979f * _wgslsmith_f_op_f32(arg_1.c.c.x + -2465f)) * -878f))));
    var var_2 = Struct_2(global3.x, vec3<u32>(global1.x, u_input.b, 0u), Struct_1(reverseBits(global0.d.x), _wgslsmith_div_i32((-1149i ^ global0.b) & arg_1.c.b, _wgslsmith_clamp_i32(-global0.b, i32(-1i) * -60115i, var_0.c.b & -22587i)), _wgslsmith_f_op_vec3_f32(-arg_1.c.c), firstLeadingBit(~vec3<u32>(u_input.b, 0u, 22014u)), vec3<bool>(true, true, arg_1.a)));
    global3 = global0.e.xy;
    return global0.d.x;
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(vec2<bool>(true | (_wgslsmith_sub_i32(u_input.d, u_input.e.x) > 0i), true), Struct_2(global3.x, global0.d, Struct_1(~global0.a, abs(abs(global2.x)), vec3<f32>(-664f, _wgslsmith_f_op_f32(sign(-1781f)), _wgslsmith_f_op_f32(-1286f + global0.c.x)), (global0.d << (vec3<u32>(global0.d.x, u_input.b, u_input.c.x) % vec3<u32>(32u))) >> (global0.d % vec3<u32>(32u)), vec3<bool>(all(global0.e.yx), global3.x && global0.e.x, false))));
    global0 = Struct_1(~51031u, select(_wgslsmith_sub_i32(-2147483647i & global2.x, -1i), -u_input.a.x, global3.x), vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), -210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, 1000f) * -1000f))), ~global0.d, !(!(!vec3<bool>(false, true, global0.e.x))));
    var var_1 = Struct_2(global0.e.x, vec3<u32>(~4294967295u, 3594u, ~1u), Struct_1(global0.a, _wgslsmith_dot_vec3_i32(firstTrailingBit(~u_input.e), u_input.e), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-559f, global0.c.x, _wgslsmith_f_op_f32(256f - -527f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c) + vec3<f32>(-1539f, 718f, global0.c.x)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~u_input.c.x, _wgslsmith_add_u32(global0.a, 0u)), vec3<u32>(_wgslsmith_mod_u32(global1.x, global0.a), func_2(global0.e.xz, Struct_2(global0.e.x, vec3<u32>(4294967295u, global1.x, u_input.c.x), Struct_1(global0.d.x, u_input.e.x, global0.c, vec3<u32>(global1.x, global0.d.x, 1u), global0.e))), _wgslsmith_mult_u32(47853u, u_input.c.x)), ~(~global0.d)), select(select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(true, true, true), u_input.c.x <= u_input.b), global0.e, false)));
    global2 = abs(~_wgslsmith_div_vec2_i32(u_input.a.xz, u_input.a.wy));
    global1 = _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(1u), _wgslsmith_clamp_u32(u_input.c.x, 28232u, 1684u) ^ 16188u, max(~4294967295u, 0u)), global0.d) >> (~(~countOneBits(_wgslsmith_sub_vec3_u32(global0.d, vec3<u32>(global0.d.x, global1.x, 15938u)))) % vec3<u32>(32u));
    return Struct_2(1f != global0.c.x, _wgslsmith_mult_vec3_u32(~max(vec3<u32>(global1.x, u_input.c.x, global1.x), vec3<u32>(0u, 110229u, global1.x)), ~global0.d) << (global0.d % vec3<u32>(32u)), Struct_1(global0.a | 22402u, _wgslsmith_mod_i32(global2.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(global2.x, -1i), -39372i << (var_1.c.a % 32u))), _wgslsmith_div_vec3_f32(global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c))), min(select(global0.d, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global0.d.x, 1u), global0.d), any(vec4<bool>(false, var_1.a, var_1.a, true))), ~global0.d), var_1.c.e));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_vec2_i32(u_input.a.xz, vec2<i32>(-_wgslsmith_sub_i32(global0.b, global2.x), -34274i) & _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xz, vec2<i32>(-25174i, -43218i)), -vec2<i32>(global0.b, global0.b)));
    global2 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.x, u_input.e.x, _wgslsmith_add_i32(u_input.e.x, -2147483647i)), u_input.a), reverseBits(-u_input.a.x));
    let var_0 = func_1();
    let var_1 = func_1();
    global1 = var_1.c.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(~var_1.b.xx, global0.d.zz)) << (abs(_wgslsmith_sub_u32(1u & global0.a, ~global0.a)) % 32u), var_0.b.x, ~u_input.c.x);
}

