struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(938f, 2023f, 614f, 528f, -509f, 480f, 765f, 512f, 429f, -1169f, -389f, -981f);

var<private> global1: Struct_2;

var<private> global2: u32 = 63661u;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global2 = global1.b.a;
    var var_0 = arg_1;
    var var_1 = ~_wgslsmith_mult_u32(_wgslsmith_div_u32(14129u & arg_2.a, ~_wgslsmith_mult_u32(0u, arg_2.a)), arg_0.a);
    var_1 = arg_2.a;
    let var_2 = arg_2;
    return global1.b;
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    global2 = 1u;
    let var_0 = arg_0.a;
    let var_1 = (arg_0.b.a ^ _wgslsmith_mod_u32(func_2(Struct_1(0u, arg_0.b.b), vec2<bool>(false, true), Struct_1(arg_0.b.a, global1.b.b)).a | 4294967295u, min(arg_0.b.a, 49444u))) ^ arg_0.b.a;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(595f, -380f)) * _wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a))))));
    global1 = Struct_2(1109f, Struct_1(global1.b.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1163f, global1.a, _wgslsmith_f_op_f32(-var_0)))));
    return global1.b;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = func_3(Struct_2(-300f, func_2(Struct_1(global1.b.a, _wgslsmith_f_op_vec3_f32(-global1.b.b)), vec2<bool>(true, true), global1.b)));
    let var_1 = vec2<u32>(func_2(global1.b, !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_1(~4294967295u, vec3<f32>(var_0.b.x, global0[_wgslsmith_index_u32(var_0.a, 12u)], global1.b.b.x))).a, firstTrailingBit(var_0.a << ((var_0.a << (global1.b.a % 32u)) % 32u))) ^ vec2<u32>(1u, _wgslsmith_add_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, global1.b.a, global1.b.a), vec3<u32>(11110u, global1.b.a, global1.b.a)), 4294967295u), 114436u));
    global2 = 30337u;
    let var_2 = ~54851u == _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(0u, 70576u, 24919u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.a, var_1.x, var_0.a, var_0.a), max(vec4<u32>(69007u, 41540u, var_0.a, var_0.a), vec4<u32>(global1.b.a, var_1.x, var_0.a, var_1.x))), firstLeadingBit(var_1.x) << (4294967295u % 32u), ~(~var_1.x)));
    let var_3 = select(select(select(!(!vec4<bool>(false, false, var_2, true)), !select(vec4<bool>(true, var_2, true, false), vec4<bool>(false, var_2, true, false), vec4<bool>(true, var_2, var_2, var_2)), vec4<bool>(false, var_2, arg_1.x == -2147483647i, false)), !(!(!vec4<bool>(var_2, var_2, var_2, true))), vec4<bool>(var_2, false, var_2, var_0.b.x > _wgslsmith_f_op_f32(select(global1.a, global1.a, false)))), select(vec4<bool>(all(!vec3<bool>(true, true, var_2)), var_2 | var_2, var_2, var_2), !select(select(vec4<bool>(false, true, false, var_2), vec4<bool>(true, var_2, true, var_2), var_2), vec4<bool>(var_2, false, var_2, var_2), !vec4<bool>(false, var_2, var_2, var_2)), vec4<bool>(var_2 && select(true, false, var_2), all(select(vec3<bool>(var_2, false, true), vec3<bool>(false, true, var_2), vec3<bool>(var_2, var_2, var_2))), all(vec3<bool>(var_2, var_2, true)), var_2)), true);
    return Struct_2(_wgslsmith_f_op_f32(global1.b.b.x - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 12u)] * var_0.b.x)), global1.b);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = select(firstTrailingBit(-abs(~vec4<i32>(51966i, u_input.a.x, -2147483647i, u_input.a.x))), _wgslsmith_clamp_vec4_i32(-(~_wgslsmith_div_vec4_i32(vec4<i32>(-9632i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(-1i, 2988i, u_input.a.x, 1952i))), ~vec4<i32>(-41865i, u_input.a.x, u_input.a.x, 0i) << ((reverseBits(vec4<u32>(global1.b.a, 31077u, 33209u, 12705u)) | abs(vec4<u32>(69468u, global1.b.a, global1.b.a, 1u))) % vec4<u32>(32u)), reverseBits(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 1i, u_input.a.x, -2147483647i))), false);
    let var_1 = Struct_2(-170f, Struct_1(arg_1.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(583f, global0[_wgslsmith_index_u32(global1.b.a, 12u)], 1023f)) - _wgslsmith_div_vec3_f32(vec3<f32>(588f, -1000f, -2282f), _wgslsmith_f_op_vec3_f32(vec3<f32>(785f, arg_1.b.b.x, arg_0) - vec3<f32>(-562f, 208f, global1.a))))));
    global2 = firstTrailingBit(~abs(41126u));
    let var_2 = global1.b.b;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -348f), var_1.b);
    return Struct_2(_wgslsmith_f_op_f32(-arg_0), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.b.a;
    let var_0 = _wgslsmith_mod_i32(u_input.a.x, u_input.a.x);
    let var_1 = !any(vec3<bool>(false, false, true));
    let var_2 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(107f))))), func_1(_wgslsmith_dot_vec3_i32(u_input.a, ~u_input.a), u_input.a ^ min(u_input.a, u_input.a), max(_wgslsmith_div_vec3_i32(u_input.a, u_input.a) ^ (vec3<i32>(var_0, var_0, 0i) & vec3<i32>(u_input.a.x, 37024i, var_0)), countOneBits(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a)))));
    var var_3 = ~vec4<u32>(4294967295u << (select(global1.b.a, 16042u >> (global1.b.a % 32u), true) % 32u), _wgslsmith_add_u32(global1.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(416u, 68432u, 4294967295u, var_2.b.a), vec4<u32>(var_2.b.a, 0u, global1.b.a, 10309u) | vec4<u32>(0u, 4294967295u, global1.b.a, global1.b.a))), ~global1.b.a, 4294967295u);
    global1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec2<u32>(326u, ~41473u)));
}

