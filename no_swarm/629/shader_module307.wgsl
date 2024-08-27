struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 4> = array<f32, 4>(1000f, -402f, -483f, 782f);

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = all(vec3<bool>(u_input.d == -abs(3891i), true & any(!vec4<bool>(true, false, true, global0.x)), arg_2.x));
    let var_1 = select(vec2<bool>(false, global0.x), arg_2, arg_2.x);
    global1 = array<f32, 4>();
    global0 = select(vec3<bool>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(67211u, 4u)] * _wgslsmith_f_op_f32(step(-1397f, global1[_wgslsmith_index_u32(0u, 4u)]))) > _wgslsmith_f_op_f32(f32(-1f) * -569f), !(!all(vec3<bool>(true, true, global2.x))), !(!var_1.x)), vec3<bool>(arg_0, !(global2.x & global0.x), true), !(579f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.c.x, 4u)])))));
    var var_2 = Struct_3(~u_input.e.x);
    return Struct_1(!select(!select(vec3<bool>(global2.x, false, false), vec3<bool>(global0.x, true, false), arg_2.x), !vec3<bool>(true, arg_2.x, true), select(!vec3<bool>(true, global2.x, true), !vec3<bool>(arg_0, false, global2.x), !vec3<bool>(false, false, global0.x))));
}

fn func_3() -> u32 {
    global0 = !(!vec3<bool>(global2.x, !global2.x, u_input.e.x > _wgslsmith_add_i32(u_input.a, u_input.e.x)));
    var var_0 = u_input.e.xzw;
    global0 = vec3<bool>(true, true, any(!select(global0.zx, !vec2<bool>(true, global2.x), global0.x)));
    var var_1 = Struct_3(~_wgslsmith_mod_i32(~1i, _wgslsmith_div_i32(~var_0.x, countOneBits(2147483647i))));
    var_1 = Struct_3(-51399i);
    return _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(u_input.b, ~vec4<u32>(u_input.b.x, 9329u, 26592u, u_input.c.x))) | u_input.c, ~vec4<u32>(abs(~9004u), max(max(u_input.c.x, 3225u), 1u), ~(~51779u), _wgslsmith_add_u32(abs(u_input.c.x), u_input.c.x)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    return Struct_2(func_2(global0.x, 29891u, vec2<bool>(true, true)), global1[_wgslsmith_index_u32(func_3() & u_input.c.x, 4u)], func_2(global2.x, 3251u, vec2<bool>(all(!vec3<bool>(global2.x, global2.x, false)), global2.x && true)), Struct_1(!(!vec3<bool>(global2.x, global2.x, false))), Struct_1(select(select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global2.x, false), false), vec3<bool>(true, true, global2.x), !vec3<bool>(global2.x, global0.x, global0.x)), vec3<bool>(any(vec3<bool>(global0.x, false, global0.x)), global1[_wgslsmith_index_u32(arg_1.x, 4u)] >= global1[_wgslsmith_index_u32(arg_1.x, 4u)], !global0.x), any(vec3<bool>(global0.x, true, global0.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = Struct_2(Struct_1(arg_3.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-331f + 531f) - _wgslsmith_f_op_f32(1108f * arg_3.b)))), func_2(all(!(!vec4<bool>(false, false, false, global2.x))), ~(~arg_0.x), select(global0.yz, !global2.xx, func_1(~u_input.c.x, vec2<u32>(18973u, u_input.b.x)).c.a.xz)), Struct_1(vec3<bool>(true, 1u >= firstTrailingBit(32575u), false)), arg_1.a);
    let var_1 = ~_wgslsmith_add_i32(~(~u_input.e.x), -_wgslsmith_add_i32(2151i, arg_2) ^ u_input.e.x);
    var var_2 = 374f;
    var var_3 = arg_1;
    global1 = array<f32, 4>();
    return arg_3.e.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global2 = vec3<bool>(!(32314i == ~(u_input.e.x ^ -60283i)), global2.x, !global0.x);
    let var_1 = any(vec3<bool>(!func_4(~vec4<u32>(0u, u_input.c.x, 27228u, 9525u), func_1(u_input.b.x, u_input.c.yy), i32(-1i) * -1i, func_1(u_input.c.x, u_input.c.zy)), !func_2(global2.x & global2.x, _wgslsmith_mod_u32(u_input.c.x, 46638u), !global2.yx).a.x, false));
    global2 = vec3<bool>(u_input.b.x != _wgslsmith_sub_u32(u_input.c.x, 71471u), !select(global2.x, all(select(vec3<bool>(true, var_1, global0.x), vec3<bool>(false, global2.x, var_1), true)), ~u_input.c.x < 44786u), false);
    var_0 = select(1u, 10985u, global0.x & global2.x) | u_input.b.x;
    let var_2 = u_input.e.x;
    var var_3 = all(!func_2(!global0.x, _wgslsmith_sub_u32(~u_input.b.x, u_input.b.x), !vec2<bool>(global2.x, false)).a);
    let var_4 = func_1(_wgslsmith_clamp_u32(u_input.b.x, ~(~u_input.b.x), u_input.c.x) >> (u_input.c.x % 32u), _wgslsmith_add_vec2_u32(countOneBits(reverseBits(select(u_input.b.yw, u_input.b.yx, global2.xx))), vec2<u32>(16909u ^ u_input.b.x, _wgslsmith_div_u32(4294967295u, u_input.b.x)))).a;
    var_0 = firstLeadingBit(_wgslsmith_div_u32(70390u & ~(u_input.c.x >> (u_input.c.x % 32u)), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_div_u32(0u, u_input.c.x)), u_input.b.x >> (~_wgslsmith_clamp_u32(u_input.c.x & 46989u, firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 9686u), u_input.c.zw)) % 32u));
}

