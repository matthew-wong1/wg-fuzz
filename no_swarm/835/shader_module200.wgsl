struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -44824i, 0i), 219f, vec4<u32>(4294967295u, 30029u, 19862u, 45488u));

var<private> global1: array<Struct_1, 9>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32) -> vec2<bool> {
    return !(!vec2<bool>(true, !(arg_0.a.b == 2579f)));
}

fn func_2() -> Struct_1 {
    let var_0 = !(!vec2<bool>(all(vec2<bool>(true, true)), true));
    var var_1 = u_input.d.x;
    var var_2 = u_input.a;
    let var_3 = func_3(Struct_2(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, global0.c.x), 9u)], _wgslsmith_mult_u32(select(1u, u_input.e, var_0.x), _wgslsmith_mod_u32(42422u, u_input.b))), (~countOneBits(global0.c.xxx) & global0.c.xxz) | global0.c.xyy, 31990u);
    let var_4 = global1[_wgslsmith_index_u32(max(~reverseBits(global0.c.x), 32638u), 9u)];
    return global1[_wgslsmith_index_u32(reverseBits(~(var_4.c.x ^ ~0u)), 9u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: bool) -> vec2<bool> {
    let var_0 = arg_1.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_2))));
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    let var_2 = global0.c;
    return vec2<bool>(arg_3, arg_3);
}

fn func_1() -> i32 {
    let var_0 = !select(vec2<bool>(true, true), func_4(Struct_2(func_2(), global0.c.x), Struct_2(global1[_wgslsmith_index_u32(select(global0.c.x, u_input.a, false), 9u)], reverseBits(global0.c.x)), vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-global0.b)), true), select(func_3(Struct_2(global1[_wgslsmith_index_u32(1u, 9u)], 44297u), vec3<u32>(40738u, 1u, global0.c.x), _wgslsmith_add_u32(global0.c.x, 4294967295u)), vec2<bool>(true, true), all(vec2<bool>(true, true))));
    var var_1 = Struct_2(Struct_1(firstLeadingBit(select(~vec4<i32>(u_input.c, global0.a.x, global0.a.x, -1i), vec4<i32>(22647i, u_input.d.x, 0i, 0i), true)), global0.b, countOneBits(~global0.c)), global0.c.x);
    var var_2 = -1i;
    var var_3 = func_3(Struct_2(func_2(), 1u), _wgslsmith_mod_vec3_u32(var_1.a.c.yyw, _wgslsmith_sub_vec3_u32(abs(_wgslsmith_div_vec3_u32(global0.c.zwx, var_1.a.c.yxx)), ~func_2().c.zyz)), global0.c.x).x;
    let var_4 = global0.c.zwx;
    return -((-(3702i & global0.a.x) | global0.a.x) | abs(-u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_1, 9>();
    global0 = Struct_1(vec4<i32>(global0.a.x, -23828i | (12458i >> (_wgslsmith_dot_vec3_u32(global0.c.wwz, global0.c.zzy) % 32u)), 0i, 92004i ^ (i32(-1i) * -global0.a.x)), _wgslsmith_f_op_f32(func_2().b * global0.b), ~global0.c >> (global0.c % vec4<u32>(32u)));
    global1 = array<Struct_1, 9>();
    global0 = Struct_1(-(~reverseBits(_wgslsmith_clamp_vec4_i32(global0.a, global0.a, vec4<i32>(u_input.c, var_0, 0i, var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -809f) + _wgslsmith_div_f32(-1000f, 1577f)) + _wgslsmith_f_op_f32(global0.b - global0.b)) + global0.b), global0.c);
    global0 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_mult_u32(0u, max(u_input.b, global0.c.x)))), 9u)];
    let var_1 = -countOneBits(-(global0.a << (~global0.c % vec4<u32>(32u))));
    var var_2 = func_3(Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, 22465u), 9u)], _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, u_input.e), global0.c.x) ^ 50281u), ~vec3<u32>(u_input.e, 53382u, global0.c.x), (((u_input.e << (29623u % 32u)) | (1u >> (1u % 32u))) & ~(~u_input.b)) >> (_wgslsmith_div_u32(global0.c.x, global0.c.x) % 32u)).x;
    global0 = Struct_1(reverseBits(global0.a), -1040f, vec4<u32>(27438u, global0.c.x, global0.c.x, select(4294967295u, global0.c.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4070u, max(4294967295u, global0.c.x), ~u_input.a), _wgslsmith_clamp_u32(17619u, 0u, 45876u) | ~4294967295u, 4294967295u), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.e, 0u, global0.c.x)), vec3<u32>(1u, ~global0.c.x, ~4294967295u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-709f)), -691f, _wgslsmith_div_f32(197f, global0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b, -272f, global0.b)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, global0.b)))), vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), all(vec4<bool>(false, true, true, false)), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * global0.b) + global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global0.b)))), global0.c.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(f32(-1f) * -1835f))));
}

