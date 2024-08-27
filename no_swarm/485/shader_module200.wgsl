struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -40758i, 0i);

var<private> global1: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(2266f, -882f), vec2<f32>(-876f, -288f), vec2<f32>(-302f, -558f), vec2<f32>(-413f, -514f), vec2<f32>(497f, 208f), vec2<f32>(-335f, 1518f), vec2<f32>(551f, 945f), vec2<f32>(1445f, -194f), vec2<f32>(-325f, -1000f), vec2<f32>(-144f, -1000f), vec2<f32>(-1213f, -1645f), vec2<f32>(-748f, 729f), vec2<f32>(-276f, -1418f), vec2<f32>(-306f, 1457f), vec2<f32>(189f, 817f));

var<private> global2: array<Struct_3, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~abs(1u), 15u)]) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-787f, 1304f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1969f, 1399f) - global1[_wgslsmith_index_u32(13569u, 15u)])))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 104f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f))))));
    let var_1 = global0.x ^ global0.x;
    var var_2 = ~u_input.b.x;
    var_2 = ~_wgslsmith_div_u32(~u_input.a, u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: f32, arg_3: f32) -> i32 {
    global2 = array<Struct_3, 21>();
    global0 = vec3<i32>(global0.x, _wgslsmith_clamp_i32(-1i, _wgslsmith_div_i32(-1i, (global0.x << (4294967295u % 32u)) | global0.x), i32(-1i) * -11844i), 1i);
    global1 = array<vec2<f32>, 15>();
    global2 = array<Struct_3, 21>();
    global2 = array<Struct_3, 21>();
    return ~(i32(-1i) * -((global0.x << (64950u % 32u)) | -2147483647i));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(!(!vec4<bool>(true, true, all(vec2<bool>(false, true)), true)), u_input.a, _wgslsmith_sub_u32(reverseBits(_wgslsmith_mod_u32(~u_input.a, u_input.a >> (u_input.b.x % 32u))), u_input.a));
    global2 = array<Struct_3, 21>();
    let var_1 = countOneBits(_wgslsmith_add_i32(-18287i, global0.x));
    global0 = _wgslsmith_mult_vec3_i32(vec3<i32>(-3814i, global0.x << (u_input.b.x % 32u), -2147483647i), vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(func_3(vec3<u32>(u_input.a, 0u, var_0.c), 1525f, -947f, -504f)), _wgslsmith_clamp_i32(max(33139i, -24233i), var_1, _wgslsmith_sub_i32(global0.x, global0.x))), global0.x, ~(-var_1)));
    var var_2 = _wgslsmith_sub_vec3_u32(select(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.b, 26830u), 0u), ~4294967295u, reverseBits(var_0.b)), firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(var_0.b, u_input.a), var_0.c, var_0.b)), false), min(abs(vec3<u32>(u_input.a, abs(var_0.c), var_0.b)), vec3<u32>(var_0.b, countOneBits(_wgslsmith_mod_u32(33858u, u_input.a)), max(1u, 72396u))));
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~(~(~vec4<i32>(0i, 1560i, var_1, 8711i))), ~vec4<i32>(max(var_1, 0i), 1i, ~global0.x, 1i)), -22175i, ~(var_1 << (_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 4294967295u, u_input.a), vec3<u32>(var_0.b, var_0.b, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 51922u, var_0.b), vec3<u32>(0u, u_input.b.x, var_0.b))) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -vec3<i32>(~global0.x, global0.x, firstTrailingBit(abs(global0.x))) | _wgslsmith_mod_vec3_i32(select(~vec3<i32>(-2393i, global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x) << (~vec3<u32>(u_input.b.x, u_input.b.x, 1u) % vec3<u32>(32u)), true), (countOneBits(vec3<i32>(1i, 2147483647i, 1i)) & -vec3<i32>(1i, global0.x, 0i)) | ((vec3<i32>(global0.x, global0.x, 24411i) ^ vec3<i32>(-2147483647i, global0.x, global0.x)) >> (vec3<u32>(u_input.a, 1u, u_input.b.x) % vec3<u32>(32u))));
    global0 = vec3<i32>(-82283i, firstLeadingBit(2646i), -56985i);
    let var_0 = Struct_3(_wgslsmith_add_u32(~max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 42731u, u_input.b.x), vec4<u32>(14290u, u_input.a, 1u, 1u)), ~u_input.b.x), 4294967295u));
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(func_1(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -291f))), _wgslsmith_f_op_f32(-1f)), true, !(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), all(vec2<bool>(true, false)))));
    global0 = min(vec3<i32>(-32434i, func_2(), 352i), vec3<i32>(global0.x >> (var_0.a % 32u), 2147483647i & global0.x, min(global0.x, -1i)) & (vec3<i32>(-1i) * -vec3<i32>(global0.x, 82242i, global0.x))) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b.x, 0u, 12031u, var_0.a) | vec4<u32>(1u, u_input.a, 0u, u_input.b.x)), vec4<u32>(_wgslsmith_div_u32(1u, u_input.a), var_0.a, 4294967295u, 60386u << (u_input.a % 32u))), _wgslsmith_sub_u32(~(~u_input.b.x), (u_input.b.x << (var_0.a % 32u)) | 23292u), ~(~78030u)) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec2<bool>(var_1.b, any(var_1.c.zyy))))));
    var var_3 = vec2<bool>(all(!var_1.c.xzy), var_1.b || (var_1.b && !var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(84574u, 45879i, _wgslsmith_add_u32(0u, ~4294967295u), var_2);
}

