struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<bool>, 28>;

var<private> global2: array<f32, 30> = array<f32, 30>(-1310f, 844f, -365f, 632f, 826f, 958f, 598f, 2803f, 1484f, -641f, -1117f, -793f, 1264f, 533f, 1185f, -525f, -994f, 834f, -860f, -1083f, -644f, -374f, 486f, 452f, 349f, 617f, -606f, -189f, -2114f, 1225f);

var<private> global3: array<Struct_1, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global3 = array<Struct_1, 14>();
    let var_0 = global3[_wgslsmith_index_u32(global0.a.x, 14u)];
    var var_1 = _wgslsmith_add_u32(u_input.e.x, 0u);
    global3 = array<Struct_1, 14>();
    let var_2 = true;
    return Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.a.x, u_input.d), var_0.a.ww), var_0.a.x, countOneBits(global0.a.x), 4294967295u), !(!vec2<bool>(any(vec4<bool>(true, true, var_2, true)), global0.b.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global2 = array<f32, 30>();
    let var_0 = arg_2;
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, u_input.a), -(~(~5667i)));
    let var_2 = func_2(2147483647i);
    return func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_add_i32(2147483647i, u_input.a), u_input.a, ~2147483647i), min(-(~vec3<i32>(-2147483647i, 30340i, 1i)), -(vec3<i32>(u_input.a, 1i, 2147483647i) | vec3<i32>(u_input.a, u_input.a, u_input.a)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = 20715u;
    var var_1 = func_2(_wgslsmith_clamp_i32(u_input.a, 1i, -3618i));
    let var_2 = func_2(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, ~u_input.a, -7169i), u_input.a, ~u_input.a));
    let var_3 = _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(u_input.d, 30u)]));
    var var_4 = !(reverseBits(u_input.a) <= u_input.a);
    return vec3<bool>(true, true, true);
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    let var_0 = 1u;
    var var_1 = global3[_wgslsmith_index_u32(~u_input.c.x >> (_wgslsmith_sub_u32(abs(global0.a.x), max(4294967295u, _wgslsmith_mod_u32(~global0.a.x, ~u_input.b))) % 32u), 14u)];
    var var_2 = func_1(vec2<u32>(_wgslsmith_div_u32(u_input.e.x, var_1.a.x), var_0), ~u_input.b, Struct_1(countOneBits(~(~global0.a)), func_1(u_input.e, global0.a.x, global3[_wgslsmith_index_u32(u_input.c.x, 14u)]).b));
    var var_3 = func_1(~((func_2(u_input.a).a.zx >> (vec2<u32>(4294967295u, global0.a.x) % vec2<u32>(32u))) >> (countOneBits(~vec2<u32>(var_1.a.x, var_1.a.x)) % vec2<u32>(32u))), ~0u ^ countOneBits(global0.a.x), global3[_wgslsmith_index_u32(u_input.d, 14u)]);
    global1 = array<vec3<bool>, 28>();
    return 46656u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<u32>(abs(u_input.e.x), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(global0.a, global0.a), global0.a | u_input.c)), 0u, Struct_1(~_wgslsmith_clamp_vec4_u32(u_input.c, ~global0.a, global0.a ^ vec4<u32>(u_input.c.x, 0u, global0.a.x, 45137u)), vec2<bool>(true, false)));
    global3 = array<Struct_1, 14>();
    var var_1 = ~func_1(~var_0.a.yw, func_2(u_input.a).a.x & (26277u << (u_input.d % 32u)), func_2(u_input.a ^ u_input.a)).a.x ^ ~32907u;
    var var_2 = reverseBits(abs(_wgslsmith_div_u32(_wgslsmith_mult_u32(94352u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, u_input.d, u_input.b), vec4<u32>(u_input.d, 4294967295u, 0u, 25006u))), ~_wgslsmith_div_u32(u_input.e.x, global0.a.x))));
    var var_3 = Struct_1(vec4<u32>(~func_4(func_3(Struct_1(global0.a, vec2<bool>(var_0.b.x, global0.b.x)), 994f, global3[_wgslsmith_index_u32(u_input.c.x, 14u)])), 32235u, abs(min(var_0.a.x, 0u)), ~var_0.a.x), vec2<bool>(all(vec3<bool>(false & global0.b.x, true, func_2(80626i).b.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(~max(abs(vec2<i32>(-15928i, u_input.a)), vec2<i32>(u_input.a, -18365i)), ~(~vec2<i32>(-61103i, 2147483647i) | vec2<i32>(u_input.a, -1i))));
}

