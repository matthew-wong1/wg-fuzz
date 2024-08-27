struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: array<vec3<i32>, 11>;

var<private> global2: i32;

var<private> global3: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: i32) -> vec4<u32> {
    var var_0 = vec2<i32>(~(-2147483647i), u_input.a.x << (_wgslsmith_mult_u32(14071u, arg_1.x) % 32u));
    global1 = array<vec3<i32>, 11>();
    var_0 = -_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, -1i), (vec2<i32>(-1i) * -u_input.a.yx) | select(u_input.a.yy, -u_input.a.zy, !arg_0));
    return _wgslsmith_add_vec4_u32(~(vec4<u32>(808u, _wgslsmith_add_u32(u_input.c, u_input.b), _wgslsmith_div_u32(4294967295u, 1u), ~4294967295u) << (min(firstTrailingBit(vec4<u32>(arg_1.x, 4294967295u, 30995u, 20290u)), vec4<u32>(arg_1.x, arg_1.x, 0u, 6629u)) % vec4<u32>(32u))), ~(abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, u_input.c, u_input.c), vec4<u32>(arg_1.x, 0u, arg_1.x, u_input.c))) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, arg_1.x, 1u, 1u), vec4<u32>(439u, 4294967295u, u_input.c, 4688u)) % vec4<u32>(32u))));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> vec2<u32> {
    let var_0 = 50305u;
    global2 = u_input.a.x;
    global3 = vec2<i32>(max(_wgslsmith_div_i32(global3.x, _wgslsmith_sub_i32(arg_0, -2147483647i) & 0i), select(~arg_0, u_input.a.x, false)), 6747i);
    let var_1 = -2147483647i >> (arg_1.a.x % 32u);
    return _wgslsmith_add_vec2_u32(~vec2<u32>(28608u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(17128u, u_input.c)), arg_1.a.yw)), _wgslsmith_div_vec2_u32(~arg_1.a.xy, arg_1.a.xw));
}

fn func_2() -> vec2<u32> {
    return func_4(select(_wgslsmith_mod_i32(-78012i, -2451i), 2632i, _wgslsmith_clamp_i32(~global3.x, -7170i, ~16170i) >= ~(-23015i)), Struct_4(_wgslsmith_div_vec4_u32(func_3(true, countOneBits(vec3<u32>(4294967295u, 65304u, 0u)), global3.x), vec4<u32>(~0u, countOneBits(u_input.b), u_input.b & 53622u, abs(u_input.b)))));
}

fn func_1() -> u32 {
    var var_0 = Struct_2(abs(0u), -16249i);
    return ~_wgslsmith_add_u32(_wgslsmith_mult_u32(~33632u | ~u_input.c, _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(var_0.a, u_input.c))), _wgslsmith_dot_vec2_u32(~min(vec2<u32>(51948u, 44566u), vec2<u32>(39741u, var_0.a)), func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(abs(func_1()), _wgslsmith_clamp_i32(-2147483647i & u_input.a.x, 1i, 2147483647i) >> (select(countOneBits(1u), 4294967295u, false) % 32u));
    var var_1 = !(!((2147483647i << (~u_input.b % 32u)) <= ~(~1i)));
    let var_2 = !(~_wgslsmith_div_u32(var_0.a, 98951u) >= ~(select(1u, 0u, false) >> (_wgslsmith_div_u32(var_0.a, u_input.c) % 32u)));
    let var_3 = -1155f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~var_0.a, var_0.a, 35729u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(14282u, 4294967295u), vec2<u32>(26047u, var_0.a)) % 32u)), ~_wgslsmith_div_u32(~_wgslsmith_div_u32(1u, u_input.b), ~40692u), vec4<f32>(-1138f, var_3, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 10u)]), 213f), (i32(-1i) * -_wgslsmith_add_i32(global3.x, var_0.b)) >> (_wgslsmith_clamp_u32(~func_1(), ~func_2().x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 40869u, 3927u, var_0.a) >> (vec4<u32>(0u, 4294967295u, var_0.a, 65501u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, var_0.a, 42146u, 11489u))) % 32u), _wgslsmith_clamp_i32(-1i, -firstLeadingBit(26196i), abs(_wgslsmith_dot_vec3_i32(~global1[_wgslsmith_index_u32(u_input.c, 11u)], max(vec3<i32>(399i, -26679i, var_0.b), vec3<i32>(var_0.b, global3.x, -1i))))));
}

