struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), -1000f, 60530u, 65660i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = global1.a.x;
    global0 = abs(abs(~vec4<u32>(global0.x, 4294967295u, 24686u, u_input.b.x))) << (~select(vec4<u32>(u_input.b.x, global1.c, _wgslsmith_mult_u32(global0.x, u_input.b.x), select(u_input.b.x, 1u, false)), vec4<u32>(~u_input.b.x, select(31868u, 0u, false), u_input.b.x, global0.x), all(select(vec4<bool>(false, global1.a.x, global1.a.x, true), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, true), true))) % vec4<u32>(32u));
    global1 = Struct_1(select(select(vec2<bool>(global1.a.x & global1.a.x, true), select(vec2<bool>(true, true), global1.a, 1000f == global1.b), select(!vec2<bool>(global1.a.x, global1.a.x), vec2<bool>(false, true), 404f <= global1.b)), select(select(select(vec2<bool>(true, false), vec2<bool>(global1.a.x, global1.a.x), global1.a.x), !global1.a, any(vec2<bool>(global1.a.x, global1.a.x))), select(!global1.a, select(global1.a, global1.a, false), global1.a.x), vec2<bool>(!global1.a.x, global1.a.x)), any(vec2<bool>(u_input.a.x > global1.d, false))), _wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, global1.b) * global1.b))), countOneBits(_wgslsmith_add_u32(global1.c, 33749u)), reverseBits(~(firstLeadingBit(2147483647i) >> (0u % 32u))));
    return ~(~(_wgslsmith_dot_vec2_u32(global0.wy, u_input.b) ^ 0u) << ((countOneBits(reverseBits(1u)) | global0.x) % 32u));
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = vec4<u32>(_wgslsmith_div_u32(44961u, func_3()), ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~global0.wxz, vec3<u32>(arg_0.c, u_input.b.x, u_input.b.x)), select(vec3<u32>(0u, arg_0.c, global1.c), _wgslsmith_mod_vec3_u32(global0.yyw, vec3<u32>(1u, 58257u, u_input.b.x)), !vec3<bool>(false, false, arg_0.a.x))), firstTrailingBit(abs(_wgslsmith_add_u32(global1.c, u_input.b.x) & _wgslsmith_mult_u32(0u, arg_0.c))), ~_wgslsmith_div_u32(_wgslsmith_add_u32(global0.x, 27403u), 4294967295u));
    var var_0 = vec2<u32>(~(~u_input.b.x) & (u_input.b.x & ~countOneBits(global0.x)), ~u_input.b.x ^ 35690u);
    var var_1 = vec4<bool>(any(vec3<bool>(any(vec2<bool>(false, global1.a.x)), !(!global1.a.x), abs(1u) > ~global1.c)), _wgslsmith_sub_u32(abs(arg_0.c | 19732u), 0u) > (arg_0.c >> (2193u % 32u)), abs(55268i) < -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yz, u_input.a.zz), firstTrailingBit(vec2<i32>(1725i, 9328i))), all(!select(vec2<bool>(global1.a.x, false), vec2<bool>(global1.a.x, arg_0.a.x), !vec2<bool>(arg_0.a.x, true))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(max(1f, global1.b))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b * 316f), global1.b, arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b, 709f))) + 1487f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1589f, 124f)))));
    var var_3 = ~_wgslsmith_sub_vec3_i32(u_input.a, min(~vec3<i32>(arg_0.d, global1.d, u_input.a.x), u_input.a)) & vec3<i32>(-2147483647i, -26304i, _wgslsmith_add_i32(1i, -1i));
    return true & arg_0.a.x;
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_1(!vec2<bool>(func_2(Struct_1(global1.a, -670f, 1u, global1.d)) | true, (true | global1.a.x) & any(vec3<bool>(true, global1.a.x, global1.a.x))), 1283f, u_input.b.x, abs(-20485i));
    global0 = select(select(~vec4<u32>(1u, 3405u, var_0.c, 44018u), ~vec4<u32>(global1.c, u_input.b.x, 20772u, 82037u), !(!vec4<bool>(false, var_0.a.x, false, false))) >> (vec4<u32>(0u, ~_wgslsmith_dot_vec3_u32(global0.xzw, vec3<u32>(4294967295u, 39790u, var_0.c)), 13625u, ~(1u << (global1.c % 32u))) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.b.x, global1.c << (1u % 32u)), 4294967295u), ~1u, var_0.c), false);
    let var_1 = var_0.b;
    let var_2 = vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), -326f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-942f)))))));
    global0 = ~(~vec4<u32>(_wgslsmith_clamp_u32(min(u_input.b.x, 30283u), global1.c, 1u), var_0.c, 69055u, _wgslsmith_mod_u32(countOneBits(44046u), abs(global1.c))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.x;
    global1 = Struct_1(select(!select(vec2<bool>(false, global1.a.x), !global1.a, any(vec2<bool>(true, true))), select(!vec2<bool>(global1.a.x, global1.a.x), !select(vec2<bool>(false, true), vec2<bool>(false, global1.a.x), global1.a.x), false), !func_1()), global1.b, 0u, -2147483647i);
    global1 = Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f) - 617f), ~1u, 30012i);
    global0 = abs(vec4<u32>(global1.c, abs(0u) ^ global1.c, _wgslsmith_mod_u32(1u, firstTrailingBit(~global0.x)), u_input.b.x << (1u % 32u)));
    var var_1 = vec4<i32>(global1.d, u_input.a.x, select((_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a.xx) << ((u_input.b.x & global1.c) % 32u)) | -5925i, ~u_input.a.x, 318f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1016f)))), _wgslsmith_dot_vec3_i32(u_input.a, select(vec3<i32>(u_input.a.x, reverseBits(global1.d), global1.d), max(-vec3<i32>(-15262i, -60860i, 2147483647i), abs(u_input.a)), select(select(vec3<bool>(global1.a.x, true, false), vec3<bool>(global1.a.x, global1.a.x, true), vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), select(vec3<bool>(true, true, false), vec3<bool>(true, global1.a.x, false), global1.a.x), true))));
    let x = u_input.a;
    s_output = StorageBuffer(598f, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1u, global1.c), 1u, 73720u), ~global0.wwx), vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, ~global1.c), 4294967295u, 1u ^ global1.c, select(global1.c, 15589u, var_1.x <= _wgslsmith_sub_i32(32181i, u_input.a.x))), _wgslsmith_add_vec2_i32(vec2<i32>(6424i, min(reverseBits(global1.d), ~(-56350i))), vec2<i32>(_wgslsmith_div_i32(~global1.d, u_input.a.x), global1.d)), i32(-1i) * -(reverseBits(global1.d) >> (~0u % 32u)));
}

