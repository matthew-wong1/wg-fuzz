struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: Struct_3,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

var<private> global1: Struct_4 = Struct_4(vec3<u32>(0u, 60648u, 91095u), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), Struct_3(vec4<u32>(37797u, 20570u, 22933u, 1u)), vec2<i32>(31415i, 42030i));

var<private> global2: vec2<u32>;

var<private> global3: array<Struct_3, 20>;

var<private> global4: Struct_2 = Struct_2(vec4<f32>(-862f, -388f, 987f, 956f), vec3<i32>(-38687i, 123i, -1i), true);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = i32(-1i) * -global4.b.x;
    let var_1 = global1.b.xw;
    global2 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(abs(global1.a.x)), global2.x), reverseBits(vec2<u32>(_wgslsmith_mult_u32(global2.x, global2.x), select(global2.x, 9685u, global4.c)))), ~(~global1.d.a.x));
    let var_2 = Struct_1(global4.b.x);
    global1 = Struct_4(min(global1.d.a.xxx, _wgslsmith_clamp_vec3_u32(select(vec3<u32>(71259u, global1.a.x, 50992u), global1.d.a.wxy, global1.b.xzz) ^ global1.d.a.xxz, vec3<u32>(~81075u, 15687u, global1.a.x), global1.a >> ((vec3<u32>(global1.d.a.x, global1.d.a.x, 94500u) << (global1.d.a.zyz % vec3<u32>(32u))) % vec3<u32>(32u)))), select(vec4<bool>(all(global1.c.yxz), all(vec2<bool>(var_1.x, true)), !global1.c.x, all(global0[_wgslsmith_index_u32(global1.d.a.x, 32u)])), vec4<bool>(global1.b.x, var_1.x, true, true), !(!global0[_wgslsmith_index_u32(global1.d.a.x, 32u)])), global1.b, global3[_wgslsmith_index_u32(83553u, 20u)], select(vec2<i32>(4986i, -(i32(-1i) * -20368i)), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(19304i, global1.e.x, global4.b.x, var_2.a), vec4<i32>(u_input.a.x, u_input.a.x, global4.b.x, 1i))), 2147483647i), select(!(!vec2<bool>(global4.c, global1.b.x)), vec2<bool>(false, true), global1.b.x | global4.c)));
    return true;
}

fn func_2() -> vec4<bool> {
    global4 = Struct_2(global4.a, u_input.a, global4.c);
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.a) - vec4<f32>(-269f, 1224f, _wgslsmith_f_op_f32(min(global4.a.x, _wgslsmith_f_op_f32(max(global4.a.x, global4.a.x)))), _wgslsmith_f_op_f32(global4.a.x + -1143f))), ~((countOneBits(vec3<i32>(u_input.b, 40173i, -35500i)) << (vec3<u32>(25439u, 82287u, global2.x) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -23756i, -14711i), global4.b), _wgslsmith_div_vec3_i32(global4.b, vec3<i32>(0i, -2147483647i, 0i)))), global4.c);
    let var_1 = vec4<u32>(~_wgslsmith_div_u32(11365u, abs(abs(4294967295u))), ~_wgslsmith_mod_u32(~0u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global1.a.zy, vec2<u32>(global1.a.x, 18132u)), ~global2.x)), global2.x, 1u);
    global4 = var_0;
    var var_2 = true;
    return vec4<bool>((-17193i >= ~_wgslsmith_clamp_i32(global4.b.x, 10543i, global1.e.x)) && var_0.c, any(select(global1.c.yyx, global1.c.wzw, any(vec4<bool>(global1.c.x, global4.c, false, global1.b.x)))), true, !func_3());
}

fn func_1() -> StorageBuffer {
    let var_0 = vec4<bool>(global4.c, global4.c, !(!any(!vec4<bool>(global4.c, global1.c.x, true, false))), !(false && all(global1.c.zw)));
    global1 = Struct_4(abs(~(global1.a & global1.d.a.xyz)), vec4<bool>(true, false, false, !any(vec2<bool>(false, true))), select(!select(func_2(), func_2(), false), select(vec4<bool>(!var_0.x, var_0.x, true, global1.b.x), global1.b, global4.c), !vec4<bool>(true, true, func_2().x, true)), global3[_wgslsmith_index_u32(global1.d.a.x, 20u)], vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, global1.e.x, -1i), vec4<i32>(global4.b.x, global1.e.x, global4.b.x, u_input.a.x)), _wgslsmith_mult_i32(u_input.a.x, abs(u_input.a.x >> (global1.a.x % 32u)))));
    var var_1 = max(vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(global4.b), u_input.a), _wgslsmith_div_i32(2147483647i, ~(-2147483647i)), global4.b.x | -global1.e.x, 0i) & vec4<i32>(-2147483647i, select(u_input.a.x, -4774i, false) << ((global2.x | 4294967295u) % 32u), -2147483647i, i32(-1i) * -19608i), firstLeadingBit(~(-(vec4<i32>(global4.b.x, global4.b.x, 1i, 29534i) | vec4<i32>(-2147483647i, global1.e.x, global4.b.x, -32114i)))));
    var var_2 = 0i;
    var var_3 = Struct_4(vec3<u32>(_wgslsmith_sub_u32(6484u, _wgslsmith_mult_u32(~global1.d.a.x, select(global1.d.a.x, 4294967295u, true))), 0u, _wgslsmith_add_u32(22886u, 40396u & ~global2.x)), vec4<bool>(true, !global1.b.x, global1.c.x, !all(global1.b.zxx)), vec4<bool>(global1.c.x, true, !(_wgslsmith_f_op_f32(global4.a.x * global4.a.x) <= _wgslsmith_f_op_f32(ceil(955f))), false), global3[_wgslsmith_index_u32(max(~(~(global1.d.a.x ^ global1.a.x)), 21907u), 20u)], vec2<i32>(-4632i, -min(abs(-7515i), var_1.x)));
    return StorageBuffer(vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -global1.e.x, ~(44668i | global4.b.x)), ~(-_wgslsmith_sub_i32(5246i, u_input.a.x))), 102256u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f) * global4.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -281f));
    global3 = array<Struct_3, 20>();
    let var_1 = Struct_3(vec4<u32>(global1.d.a.x, ~(~4294967295u), firstTrailingBit(4294967295u >> (global2.x % 32u)) ^ _wgslsmith_sub_u32(global2.x, ~global1.d.a.x), 43312u));
    let x = u_input.a;
    s_output = func_1();
}

