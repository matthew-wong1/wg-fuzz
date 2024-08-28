struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<i32, 30>;

var<private> global2: Struct_2 = Struct_2(vec3<f32>(-1311f, 1000f, -2160f), -1630f, Struct_1(1060f, -1123f, vec4<f32>(-1000f, 1000f, 353f, 1000f), vec4<f32>(-2057f, -144f, 1650f, -439f), 29995i), Struct_1(648f, 584f, vec4<f32>(626f, 198f, 1000f, 371f), vec4<f32>(-696f, 756f, 843f, -1155f), -1i));

var<private> global3: Struct_2;

var<private> global4: array<i32, 2> = array<i32, 2>(-14077i, i32(-2147483648));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> vec2<u32> {
    let var_0 = true;
    return u_input.a >> (~(~u_input.a) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_2.d.x, arg_0.b))))), _wgslsmith_f_op_f32(247f - 1653f), -969f));
    global1 = array<i32, 30>();
    var var_1 = Struct_2(vec3<f32>(arg_2.a, global3.d.c.x, -1530f), global2.a.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1305f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2094f + _wgslsmith_f_op_f32(var_0.x * 1481f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_2.a)), _wgslsmith_f_op_f32(round(-1358f)), any(vec2<bool>(true, false))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(-1757f, global3.d.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1352f), _wgslsmith_f_op_f32(floor(arg_0.d.d.x)), arg_0.d.d.x))), _wgslsmith_f_op_vec4_f32(-global2.d.c), global3.d.e), arg_0.d);
    let var_2 = abs(u_input.c.x);
    var var_3 = arg_0;
    return ~(_wgslsmith_add_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(var_2, 30u)], global1[_wgslsmith_index_u32(24526u, 30u)]), vec2<i32>(global2.c.e, arg_0.c.e)) << (func_3(_wgslsmith_dot_vec2_u32(u_input.c, u_input.a)) % vec2<u32>(32u))) >> (abs(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 13048u, 1u, 4294967295u), vec4<u32>(arg_1, 13442u, u_input.c.x, var_2)) << ((56046u >> (u_input.a.x % 32u)) % 32u), _wgslsmith_div_u32(5854u, _wgslsmith_add_u32(var_2, 17256u)))) % vec2<u32>(32u));
}

fn func_1() -> Struct_1 {
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-609f, 162f)), -1327f, _wgslsmith_f_op_f32(sign(global2.a.x))))), -539f, global2.d, global3.c);
    let var_0 = true;
    let var_1 = _wgslsmith_clamp_vec2_i32(max(-countOneBits(abs(vec2<i32>(-10534i, -30272i))), func_2(global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.a.x), 23u)], u_input.c.x, Struct_1(global3.c.b, _wgslsmith_f_op_f32(global2.b * -452f), global3.c.c, global2.c.d, -31373i))), -_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(1i, global1[_wgslsmith_index_u32(u_input.c.x, 30u)]), global1[_wgslsmith_index_u32(1u, 30u)]), min(abs(vec2<i32>(global4[_wgslsmith_index_u32(23726u, 2u)], 0i)), vec2<i32>(1i, global2.c.e))), ~_wgslsmith_mult_vec2_i32(abs(~vec2<i32>(global3.c.e, global1[_wgslsmith_index_u32(4785u, 30u)])), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-10944i, u_input.b), vec2<i32>(global1[_wgslsmith_index_u32(0u, 30u)], 1i), vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(0u, 30u)])))));
    global2 = global0[_wgslsmith_index_u32(func_3(~u_input.c.x).x, 23u)];
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, min(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, abs(u_input.a.x))), min(max(4294967295u, ~(u_input.a.x & u_input.c.x)), abs(1u))), 23u)];
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1593f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-467f))), global3.d.c, _wgslsmith_f_op_vec4_f32(select(global3.d.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-1525f * 484f), _wgslsmith_f_op_f32(round(-678f)), _wgslsmith_div_f32(global3.b, -1000f)))), false)), global4[_wgslsmith_index_u32(((~72167u >> (_wgslsmith_sub_u32(4294967295u, u_input.a.x) % 32u)) >> (~_wgslsmith_sub_u32(0u, u_input.a.x) % 32u)) << (1u % 32u), 2u)]);
    global1 = array<i32, 30>();
    let var_1 = func_1();
    global2 = global0[_wgslsmith_index_u32(~u_input.c.x, 23u)];
    var var_2 = select(vec2<u32>(u_input.c.x, 4294967295u), u_input.c, (global2.d.e >= firstLeadingBit(-1i)) || (all(vec4<bool>(false, true, true, false)) | all(vec3<bool>(false, false, false)))) << (u_input.c % vec2<u32>(32u));
    global3 = global0[_wgslsmith_index_u32(4294967295u, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.c.a, _wgslsmith_div_f32(var_0.c.x, var_0.b), _wgslsmith_f_op_f32(step(global3.b, global2.a.x))), _wgslsmith_f_op_vec3_f32(-global3.d.c.xxx), vec3<bool>(false, var_0.e >= 2147483647i, true))))));
}

