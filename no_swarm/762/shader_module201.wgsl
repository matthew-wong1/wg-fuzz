struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 29133u;

var<private> global1: vec4<bool>;

var<private> global2: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = u_input.b.zx;
    global0 = ~u_input.a.x;
    var var_1 = vec4<i32>(-_wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(-13383i, 69953i)), u_input.b.x, -50284i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstTrailingBit(1i), global2.x), 0i));
    let var_2 = Struct_1(~(-(-22512i << (_wgslsmith_div_u32(0u, u_input.a.x) % 32u))), 28312i);
    let var_3 = global1.zy;
    return -49614i;
}

fn func_4(arg_0: Struct_1) -> i32 {
    global0 = ~firstLeadingBit(~(~(0u >> (1u % 32u))));
    global0 = select(~94846u, _wgslsmith_mult_u32(~52842u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, u_input.a.x), countOneBits(_wgslsmith_mult_u32(4294967295u, u_input.a.x)))), !global1.x);
    let var_0 = arg_0;
    var var_1 = Struct_1(i32(-1i) * -(var_0.b << (~4294967295u % 32u)), _wgslsmith_dot_vec4_i32(abs(u_input.b), ~(~vec4<i32>(0i, 9827i, u_input.b.x, arg_0.a))));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, ~(~var_0.a), -countOneBits(-2147483647i)), countOneBits(vec3<i32>(-1i, var_0.a, 33575i)) >> (vec3<u32>(1u, 1u, u_input.c | u_input.c) % vec3<u32>(32u))), select(var_0.a >> (_wgslsmith_dot_vec3_u32(u_input.a.ywy, vec3<u32>(4294967295u, u_input.a.x, 1u)) % 32u), 0i, global1.x) ^ _wgslsmith_dot_vec4_i32(~(~u_input.b), ~vec4<i32>(0i, global2.x, arg_0.b, var_1.a)));
    return ~_wgslsmith_dot_vec3_i32(-vec3<i32>(~1i, _wgslsmith_mod_i32(1i, -67049i), 61586i), vec3<i32>(reverseBits(_wgslsmith_sub_i32(0i, var_1.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, arg_0.a, 10378i), vec3<i32>(var_2.b, arg_0.b, arg_0.b) | u_input.b.wxz), ~_wgslsmith_mult_i32(-2147483647i, 0i)));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_clamp_i32(~1i, global2.x, -16894i), -1i);
    var var_2 = Struct_1(_wgslsmith_clamp_i32(global2.x << ((u_input.a.x ^ ~u_input.a.x) % 32u), select(~firstTrailingBit(var_1.a), _wgslsmith_add_i32(abs(u_input.b.x), 27732i), false), max(_wgslsmith_sub_i32(global2.x, var_1.a | u_input.b.x), -reverseBits(-6504i))), var_1.a);
    let var_3 = vec4<i32>(func_4(Struct_1(-func_3(Struct_1(0i, 1238i), 0i), (arg_0 ^ global2.x) >> (45074u % 32u))), u_input.b.x, -19479i, global2.x | ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_1.b), vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(var_1.b, var_2.a)));
    global1 = vec4<bool>(global1.x, global1.x, ((_wgslsmith_clamp_u32(u_input.c, u_input.c, 4294967295u) > _wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(42318u, 30012u))) | true) && all(!select(vec2<bool>(global1.x, true), global1.wy, global1.xy)), global1.x);
    return 17370u;
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: bool) -> u32 {
    global0 = ~abs(u_input.a.x) | 0u;
    let var_0 = !global1.yy;
    let var_1 = abs(~(-u_input.b.x));
    var var_2 = u_input.b.x << (83084u % 32u);
    var var_3 = func_2(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(max(-u_input.b.yw, vec2<i32>(global2.x, 0i)), ~(u_input.b.wz << (vec2<u32>(arg_0, u_input.a.x) % vec2<u32>(32u)))), 2147483647i));
    return abs(_wgslsmith_dot_vec4_u32(u_input.a ^ (u_input.a | min(u_input.a, u_input.a)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, arg_0, arg_0, arg_0), u_input.a), select(vec4<u32>(u_input.a.x, 44815u, 30867u, arg_0), vec4<u32>(arg_0, 9765u, 8077u, 55173u), arg_2)) << (~(~u_input.a) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), ~(~u_input.a.x), u_input.c);
    var var_1 = vec3<u32>(func_1(abs(var_0.x & countOneBits(u_input.c)), vec3<f32>(-736f, _wgslsmith_f_op_f32(f32(-1f) * -1356f), -1000f), true), 1u, firstTrailingBit(abs(~65234u)));
    global2 = vec3<i32>(abs(~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b.xww, u_input.b.xxz), 65149i)), reverseBits(1i), ~global2.x & u_input.b.x);
    global0 = ~(~_wgslsmith_div_u32(var_1.x, var_0.x));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~countOneBits(var_1.x), _wgslsmith_dot_vec3_u32(~(vec3<u32>(var_1.x, var_0.x, 1465u) ^ vec3<u32>(40886u, 53195u, var_0.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, u_input.c, 1u), vec3<u32>(var_0.x, 29783u, 6016u)), vec3<u32>(u_input.a.x, u_input.a.x, var_1.x) >> (var_0 % vec3<u32>(32u)))), _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, firstTrailingBit(var_0.x)), var_1.x), abs(4552u)), _wgslsmith_sub_vec4_u32(select(u_input.a, ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_0.x, 0u, var_0.x), u_input.a), !global1.x), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_1.x, var_1.x, 2230u, u_input.a.x)), ~(~vec4<u32>(var_0.x, 18664u, 0u, 32326u)), vec4<u32>(u_input.c, func_1(var_0.x, vec3<f32>(-293f, -993f, -1365f), true), u_input.c & 0u, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, 1000f, -1939f, -1893f))))), 19373i);
}

