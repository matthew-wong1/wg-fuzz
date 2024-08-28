struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(1020f, -1491f), vec2<f32>(-177f, -2894f), vec2<f32>(2541f, 902f), vec2<f32>(1384f, -791f), vec2<f32>(274f, -1126f), vec2<f32>(244f, -592f), vec2<f32>(463f, 108f), vec2<f32>(515f, -821f), vec2<f32>(-274f, -557f), vec2<f32>(922f, -667f), vec2<f32>(676f, -1000f), vec2<f32>(-1758f, 401f), vec2<f32>(-360f, -361f), vec2<f32>(-670f, 410f), vec2<f32>(-618f, -391f), vec2<f32>(-2197f, -248f), vec2<f32>(-109f, -534f), vec2<f32>(-579f, -1638f), vec2<f32>(1513f, -122f), vec2<f32>(740f, 451f), vec2<f32>(-705f, 2136f), vec2<f32>(-510f, -2296f), vec2<f32>(862f, -941f), vec2<f32>(-665f, 776f), vec2<f32>(693f, 688f), vec2<f32>(1908f, -238f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    var var_0 = abs(4294967295u);
    global1 = array<vec2<f32>, 26>();
    global1 = array<vec2<f32>, 26>();
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, global0.b.x, global0.b.x) + _wgslsmith_f_op_vec4_f32(-global0.a))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 389f, global0.a.x, global0.a.x)) - global0.b))));
    let var_1 = 38796u;
    return vec4<f32>(_wgslsmith_f_op_f32(454f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1041f, -935f)), _wgslsmith_f_op_f32(-global0.b.x), any(vec4<bool>(false, false, true, false)))), 1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * 425f)))), _wgslsmith_f_op_f32(floor(global0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.a.x)), _wgslsmith_f_op_f32(-1000f * -1506f)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1049f, global0.a.x, -445f, 858f)), vec4<f32>(global0.a.x, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(ceil(global0.b))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(101f, -740f, -389f, -1378f)))))), Struct_1(global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.a.x, global0.b.x, -704f), global0.a)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2221f, 1323f, global0.b.x, global0.a.x)), _wgslsmith_f_op_vec4_f32(-global0.a)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(859f, _wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_f_op_f32(arg_0.x - 624f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.b.a, var_0.a.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(411f, arg_0.x, 1263f, 224f) * vec4<f32>(var_0.b.b.x, arg_0.x, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec4_f32(exp2(global0.a)));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(1439f + 547f)))), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-888f, global0.b.x), _wgslsmith_f_op_vec4_f32(func_3(u_input.a)).x)))));
    var var_1 = arg_0.b;
    var var_2 = max(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x) << (~vec3<u32>(39828u, 1u, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(1u, u_input.c.x, u_input.c.x) << (reverseBits(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) % vec3<u32>(32u))), ~vec3<u32>(~u_input.c.x, 4294967295u, u_input.c.x));
    global0 = func_2(vec3<f32>(-402f, arg_0.a.b.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(func_3(u_input.a)).yyy).a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1151f, global0.b.x, false))))));
    var_2 = vec3<u32>(1u, _wgslsmith_dot_vec2_u32(select(u_input.c, vec2<u32>(8074u, u_input.c.x) ^ u_input.c, true), vec2<u32>((u_input.c.x | u_input.c.x) << ((var_2.x ^ u_input.c.x) % 32u), 18583u)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(5031u, u_input.c.x, 1u)) >> (vec3<u32>(firstTrailingBit(4294967295u), countOneBits(0u), ~0u) % vec3<u32>(32u)), reverseBits(abs(~vec3<u32>(0u, 60715u, 4294967295u)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(arg_0.a.a.x, _wgslsmith_div_f32(-2229f, -1000f), _wgslsmith_f_op_f32(select(-797f, -382f, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-982f, arg_0.a.b.x, false)), _wgslsmith_f_op_f32(var_0.a.x * 1080f))))), _wgslsmith_f_op_vec4_f32(trunc(var_0.b)));
}

fn func_1() -> StorageBuffer {
    global1 = array<vec2<f32>, 26>();
    global0 = func_4(Struct_2(func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(global0.b.yxy)), _wgslsmith_f_op_vec3_f32(-global0.a.zyy), vec3<bool>(false, true, true)))), func_2(global0.b.xzy)), u_input.a.x);
    let var_0 = vec2<i32>(-2147483647i, -18691i);
    global1 = array<vec2<f32>, 26>();
    global1 = array<vec2<f32>, 26>();
    return StorageBuffer(u_input.c.x, ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 33181u, 1u), vec3<u32>(9135u, u_input.c.x, 1u)), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) << (vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, reverseBits(u_input.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), vec3<u32>(0u, u_input.c.x, u_input.c.x)) << (~4294967295u % 32u), min(~4294967295u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1153f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-451f * global0.a.x) * _wgslsmith_f_op_f32(global0.a.x - global0.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.a.x, 1456f, any(vec2<bool>(false, true)))), global0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(max(1099f, 1646f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

