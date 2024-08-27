struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

var<private> global1: array<vec4<f32>, 6>;

var<private> global2: array<i32, 8>;

var<private> global3: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(37167i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(1i, 0i), vec2<i32>(-3712i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-14595i, 2147483647i), vec2<i32>(-24290i, 1i), vec2<i32>(9451i, -1701i), vec2<i32>(40689i, 42015i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, -28125i), vec2<i32>(0i, 10957i), vec2<i32>(-2020i, 43970i), vec2<i32>(9936i, 91609i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-27010i, -18918i), vec2<i32>(34689i, 2147483647i));

var<private> global4: array<Struct_1, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    global3 = array<vec2<i32>, 17>();
    let var_0 = Struct_2(global4[_wgslsmith_index_u32(1u, 29u)], ~u_input.d);
    global0 = array<i32, 16>();
    var var_1 = false;
    var var_2 = u_input.b;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(23744u << (var_2.x % 32u), var_2.x, var_0.a.e << (26302u % 32u)), min(var_2.zwy, ~vec3<u32>(u_input.b.x, 52909u, 4294967295u))), ~var_2.zzw);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    global3 = array<vec2<i32>, 17>();
    var var_0 = arg_2.d;
    let var_1 = Struct_1(!var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) - _wgslsmith_f_op_f32(f32(-1f) * -583f)), 110f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(-arg_2.b))), countOneBits(countOneBits(select(arg_2.c, global0[_wgslsmith_index_u32(~arg_1.x, 16u)], false))), select(select(!arg_0.a.d, vec2<bool>(true, all(vec4<bool>(true, var_0.x, arg_2.d.x, arg_0.a.d.x))), arg_0.a.a | all(vec2<bool>(true, arg_2.d.x))), vec2<bool>(!(1000f >= arg_0.a.b), false), all(select(!vec3<bool>(arg_2.a, var_0.x, true), select(vec3<bool>(arg_0.a.a, false, arg_2.a), vec3<bool>(arg_2.a, arg_0.a.d.x, arg_2.a), vec3<bool>(arg_0.a.d.x, false, arg_0.a.d.x)), select(vec3<bool>(false, true, arg_0.a.d.x), vec3<bool>(arg_0.a.a, arg_0.a.d.x, false), vec3<bool>(false, true, var_0.x))))), _wgslsmith_mult_u32(4294967295u, ~(~_wgslsmith_clamp_u32(17937u, u_input.b.x, arg_2.e))));
    var var_2 = Struct_1(false, _wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.d), ~(abs(arg_0.b) >> (vec3<u32>(arg_2.e, 1u, 47715u) % vec3<u32>(32u)))), var_1.d, arg_1.x);
    var var_3 = ~u_input.b;
    return firstLeadingBit(~arg_1);
}

fn func_1() -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(67274u, ~(~(~u_input.b.x))), countOneBits(countOneBits(func_2(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(139880u, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)]))))), 29u)];
    let var_1 = 23126u;
    global0 = array<i32, 16>();
    let var_2 = u_input.e.x & global2[_wgslsmith_index_u32(var_0.e, 8u)];
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_1, u_input.b.x, u_input.b.x)), abs(vec3<u32>(23223u, var_1, 54714u) ^ u_input.b.xwy), func_3(Struct_2(Struct_1(var_0.a, -172f, -1i, vec2<bool>(var_0.d.x, var_0.a), 28925u), vec3<i32>(var_2, 2147483647i, var_0.c)), u_input.b.wyz, Struct_1(true, 447f, global0[_wgslsmith_index_u32(var_1, 16u)], var_0.d, 4294967295u), var_0.b) ^ vec3<u32>(u_input.b.x, var_1, 1u)), abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(296u, 12434u, 13452u), vec3<u32>(u_input.b.x, var_1, var_0.e))) ^ ~vec3<u32>(u_input.b.x, var_1, ~31620u)), 8u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.b, 367f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1762f))), var_0.b)), var_1 == 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -39203i;
    global0 = array<i32, 16>();
    let var_1 = Struct_2(global4[_wgslsmith_index_u32(u_input.b.x, 29u)], u_input.a);
    let var_2 = 11881u;
    var var_3 = u_input.b;
    var_3 = ~(~vec4<u32>(4294967295u, select(var_2, var_1.a.e, var_1.a.a), _wgslsmith_add_u32(var_2, 0u), min(var_1.a.e, 16444u))) ^ (vec4<u32>(~(~var_2), var_2 ^ firstTrailingBit(var_1.a.e), abs(1u), _wgslsmith_div_u32(var_2, _wgslsmith_div_u32(u_input.b.x, 20189u))) ^ u_input.b);
    let var_4 = true;
    var var_5 = Struct_1(var_1.a.a && false, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-771f, 450f)), 46743i, vec2<bool>(var_1.a.d.x, _wgslsmith_f_op_f32(step(var_1.a.b, _wgslsmith_f_op_f32(-var_1.a.b))) > _wgslsmith_div_f32(-147f, -1300f)), _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(~35259u, _wgslsmith_sub_u32(0u, var_1.a.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_5.b, -104f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.b)) - _wgslsmith_f_op_f32(-415f - -1541f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + -598f)), var_5.b), vec4<f32>(_wgslsmith_f_op_f32(min(var_5.b, _wgslsmith_f_op_f32(-246f + var_5.b))), 861f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_5.b)) * _wgslsmith_f_op_f32(-1438f * var_1.a.b)), var_1.a.b)), _wgslsmith_div_f32(var_1.a.b, _wgslsmith_f_op_f32(f32(-1f) * -1573f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1378f * var_1.a.b), _wgslsmith_f_op_f32(max(422f, 1130f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2069f)))))), firstTrailingBit(~func_3(Struct_2(Struct_1(var_5.d.x, var_1.a.b, 40198i, var_5.d, 46268u), vec3<i32>(u_input.e.x, var_5.c, -2147483647i)), vec3<u32>(4294967295u, 4294967295u, 6037u), var_1.a, var_5.b)), _wgslsmith_add_i32(min(var_1.a.c, ~global0[_wgslsmith_index_u32(1u, 16u)] | 0i), i32(-1i) * -2147483647i));
}

