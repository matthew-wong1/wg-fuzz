struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
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

var<private> global0: array<u32, 14>;

var<private> global1: Struct_4;

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: f32) -> u32 {
    return 7557u;
}

fn func_3() -> vec4<f32> {
    global2 = Struct_1(max(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~4294967295u, 14u)], global1.d.a.a.c), ~(~30781u)), global1.d.a.a.b, 16118u, _wgslsmith_f_op_vec4_f32(-global1.b.a.d), _wgslsmith_f_op_f32(-295f * -891f));
    let var_0 = 1f;
    return global1.b.a.d;
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = global1.d.a.a;
    var_0 = global1.b.a;
    var var_1 = Struct_1(51484u & u_input.d, ~vec4<i32>(51178i << ((8817u ^ u_input.d) % 32u), _wgslsmith_mult_i32(-u_input.b.x, _wgslsmith_mult_i32(u_input.a, 2745i)), ~u_input.b.x, ~abs(global2.b.x)), ~abs(select(global0[_wgslsmith_index_u32(0u, 14u)], var_0.c, global1.c.x) >> (abs(global0[_wgslsmith_index_u32(1u, 14u)]) % 32u)), _wgslsmith_f_op_vec4_f32(func_3()), 1062f);
    var_0 = Struct_1(max(_wgslsmith_add_u32(15536u, global2.a) | var_0.c, 4294967295u), vec4<i32>(-35718i, ~(-max(-3465i, var_1.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b.x, 0i), ~u_input.c), _wgslsmith_mod_i32(1i, u_input.a)), global2.a, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x - -1950f), _wgslsmith_f_op_f32(f32(-1f) * -426f))), _wgslsmith_f_op_f32(select(global2.d.x, _wgslsmith_f_op_f32(ceil(-1044f)), global1.c.x)), global1.c.x || global1.c.x)), global2.e, _wgslsmith_f_op_f32(global1.b.a.e - -1000f), 971f), arg_0.x);
    let var_2 = global1.c;
    return countOneBits(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e)))), firstLeadingBit(vec4<i32>(-1i, global2.b.x, 36424i, min(i32(-1i) * -1i, 8317i))), _wgslsmith_sub_u32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(133f, 1374f, global2.e) - vec3<f32>(-1000f, global1.b.a.d.x, global1.d.a.a.d.x)))), u_input.d), global1.b.a.d, global1.d.a.a.d.x);
    var var_0 = select(!vec2<bool>(!(global1.d.a.a.e > global1.d.a.a.d.x), true), !vec2<bool>(!(!global1.c.x), select(true, true, any(global1.c))), vec2<bool>(false, true));
    let var_1 = ~firstTrailingBit(global2.b.yw) ^ ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 0i), _wgslsmith_mult_vec2_i32(global1.d.a.a.b.wz, vec2<i32>(u_input.b.x, global1.b.a.b.x)));
    var var_2 = ~_wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26800u, 14u)], 14u)], u_input.d, 37011u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(u_input.d), countOneBits(global2.a), global2.c, global0[_wgslsmith_index_u32(4294967295u, 14u)]), ~min(vec4<u32>(1u, 1u, 79640u, 1u), vec4<u32>(global1.d.a.b, global1.a, 0u, 41710u)), ~(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], 27789u, 1u))));
    var_2 = vec4<u32>(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.a.a.e))) >> (~(~abs(var_2.x)) % 32u), 26112u, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.e)))), ~(abs(_wgslsmith_mod_u32(35935u, u_input.d)) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, var_2.x, 4294967295u, u_input.d), vec4<u32>(4294967295u, 0u, 4294967295u, 0u))));
    global2 = Struct_1(abs(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_2.wx, vec2<u32>(37502u, u_input.d)) >> (_wgslsmith_clamp_u32(4294967295u, global2.c, 34111u >> (1u % 32u)) % 32u), 14u)]), ~vec4<i32>(u_input.c.x, _wgslsmith_add_i32(-2147483647i, global1.b.a.b.x), max(var_1.x, 29975i) ^ ~var_1.x, i32(-1i) * -2147483647i), var_2.x | (~global1.d.a.b & u_input.d), vec4<f32>(global2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1405f, _wgslsmith_f_op_f32(global1.d.a.a.d.x * -922f), true)) - _wgslsmith_f_op_f32(step(353f, -120f))), _wgslsmith_f_op_f32(f32(-1f) * -747f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-223f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(303f, global1.d.a.a.e)))))), -470f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_vec3_u32(var_2.wxw, var_2.ywy) & _wgslsmith_div_vec3_u32(var_2.xxy, vec3<u32>(67005u, 0u, global1.b.a.c))), _wgslsmith_add_u32(var_2.x, _wgslsmith_sub_u32(0u, ~u_input.d) ^ global0[_wgslsmith_index_u32(~8568u, 14u)]), countOneBits(func_1(global1.d.a.a.e)), 4294967295u);
}

