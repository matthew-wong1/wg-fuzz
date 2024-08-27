struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -25309i;

var<private> global1: array<f32, 2> = array<f32, 2>(137f, 1185f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(50352u, 25547u, 54980u), 2u)], _wgslsmith_f_op_f32(-690f + global1[_wgslsmith_index_u32(4294967295u, 2u)]), _wgslsmith_f_op_f32(max(1000f, global1[_wgslsmith_index_u32(arg_1.x, 2u)])), -1196f))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -546f), 1015f, arg_2.b.a)), _wgslsmith_div_f32(-957f, 1623f)), -346f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 2u)])), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.x, 1u), 2u)]));
    var var_1 = firstTrailingBit(~vec2<u32>(arg_1.x, 0u));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(249f, -644f, var_0.x, -485f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(493f, 1064f, 337f, 1994f) * vec4<f32>(-1509f, 545f, -621f, -845f))))))));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec3_i32(-u_input.a, (-vec3<i32>(u_input.a.x, u_input.a.x, arg_2.a.x) << (select(u_input.c.xyz, arg_1, vec3<bool>(false, arg_0, true)) % vec3<u32>(32u))) ^ max(firstTrailingBit(arg_2.a.yxz), vec3<i32>(0i, 2147483647i, 21058i))), ~0i, 15938i, 2147483647i);
    global0 = -1i;
    return var_1.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1720f - 1000f), _wgslsmith_div_f32(arg_1, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + global1[_wgslsmith_index_u32(func_3(true, vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), Struct_2(arg_0, Struct_1(true), vec2<bool>(true, false))), 2u)])), _wgslsmith_f_op_f32(f32(-1f) * -899f)));
    var var_1 = Struct_1(!all(vec2<bool>(true, true)) | all(vec4<bool>(true, true, true, all(vec2<bool>(false, false)))));
    var var_2 = select(u_input.c, vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.xyw, u_input.c.ywy), 0u, _wgslsmith_add_u32(abs(0u), firstLeadingBit(u_input.c.x)), u_input.c.x), !var_1.a);
    var var_3 = max(min(~(~vec2<u32>(var_2.x, u_input.c.x)), firstLeadingBit(u_input.c.wy)), _wgslsmith_div_vec2_u32(vec2<u32>(abs(abs(0u)), u_input.b), firstLeadingBit(max(_wgslsmith_mod_vec2_u32(u_input.c.wz, u_input.c.zy), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_2.x), vec2<u32>(u_input.c.x, 0u), vec2<u32>(4294967295u, u_input.c.x))))));
    global1 = array<f32, 2>();
    return Struct_3(arg_0.x, ~(var_2.x | (firstTrailingBit(8972u) ^ var_2.x)), select(select(!vec4<bool>(false, true, false, var_1.a), select(select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), var_1.a), select(vec4<bool>(var_1.a, true, false, false), vec4<bool>(var_1.a, true, var_1.a, false), var_1.a), var_1.a), var_1.a), vec4<bool>(!var_1.a, all(vec2<bool>(var_1.a, true)) | all(vec3<bool>(true, false, true)), var_1.a, all(select(vec4<bool>(false, true, var_1.a, true), vec4<bool>(true, false, var_1.a, var_1.a), true))), false & all(!vec4<bool>(var_1.a, var_1.a, true, var_1.a))), Struct_1(select(all(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, true))), (var_1.a == var_1.a) && !var_1.a, var_1.a)), u_input.b);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = func_2(~(~vec4<i32>(16593i, -11865i, -1i, abs(5617i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) - arg_1), ~abs(~max(vec4<i32>(u_input.a.x, u_input.a.x, 0i, 23942i), vec4<i32>(u_input.a.x, 13498i, u_input.a.x, arg_0.a)))).a;
    global1 = array<f32, 2>();
    global1 = array<f32, 2>();
    return 29173u;
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(func_4(func_2(select(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 1i), vec4<i32>(-2147483647i, 1i, u_input.a.x, 31361i), vec4<bool>(true, true, false, arg_0.a)), _wgslsmith_f_op_f32(min(804f, global1[_wgslsmith_index_u32(u_input.b, 2u)])), vec4<i32>(-28348i, u_input.a.x, 48481i, 1i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(73495u, 2u)]), -587f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 2u)])), Struct_1(true)), 2u)], -1867f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b >> (u_input.d % 32u), 2u)]))), 1512f));
    var var_1 = !any(vec2<bool>(func_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -19493i), global1[_wgslsmith_index_u32(select(4294967295u, 4294967295u, true), 2u)], vec4<i32>(0i, 2147483647i, u_input.a.x, u_input.a.x) | vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, 1i)).d.a, !all(vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a))));
    let var_2 = vec2<i32>(1i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(~(-18049i), (0i ^ u_input.a.x) ^ _wgslsmith_mult_i32(-1697i, u_input.a.x), min(i32(-1i) * -2147483647i, u_input.a.x))));
    var var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(u_input.c), vec4<u32>(u_input.c.x, 31806u, u_input.d, 4294967295u)), reverseBits(u_input.c >> (vec4<u32>(0u, 4294967295u, u_input.b, 0u) % vec4<u32>(32u)))), ~50291u) << (~_wgslsmith_add_vec2_u32(~(~u_input.c.wx), abs(u_input.c.zx)) % vec2<u32>(32u));
    let var_4 = global1[_wgslsmith_index_u32(~u_input.d, 2u)];
    return select(~(_wgslsmith_add_vec3_i32(u_input.a ^ u_input.a, u_input.a) | ((vec3<i32>(var_2.x, var_2.x, 1i) | vec3<i32>(-22735i, var_2.x, 3758i)) | vec3<i32>(1i, var_2.x, 0i))), u_input.a, select(!vec3<bool>(true, !arg_0.a, arg_0.a), func_2(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 0i, min(-1i, var_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 9002i, -1i, var_2.x), vec4<i32>(0i, 34i, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(844f))), ~vec4<i32>(-1i, -2147483647i, var_2.x, u_input.a.x)).c.yxy, select(!vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, any(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), true), vec3<bool>(arg_0.a, all(vec3<bool>(true, arg_0.a, false)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 2>();
    let var_0 = _wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(func_1(Struct_1(false)), _wgslsmith_add_vec3_i32(select(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-2147483647i, 59425i, u_input.a.x)), max(u_input.a, u_input.a), true), vec3<i32>(~(-9010i), countOneBits(u_input.a.x), 2147483647i))));
    let var_1 = 1u;
    global0 = u_input.a.x;
    let var_2 = 19893u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

