struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, false, -1229f));

var<private> global1: Struct_1 = Struct_1(false, false, 1297f);

var<private> global2: array<f32, 24>;

var<private> global3: vec2<u32> = vec2<u32>(0u, 53962u);

var<private> global4: array<Struct_2, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    global4 = array<Struct_2, 20>();
    global3 = max(abs(arg_3.yy), ~(~vec2<u32>(_wgslsmith_mod_u32(54320u, arg_3.x), max(global3.x, 8330u))));
    var var_0 = true;
    var var_1 = vec4<bool>(min(countOneBits(arg_3.x | arg_3.x), ~max(1u, 79394u)) < ~arg_3.x, reverseBits(64862u) <= arg_3.x, u_input.a.x > _wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, -u_input.a.x), -u_input.a.x), global0.a.a);
    let var_2 = global0.a;
    return _wgslsmith_mult_u32(42687u | firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_3, arg_3), arg_3)), ~firstTrailingBit(abs(~arg_3.x)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-369f, _wgslsmith_f_op_f32(global0.a.c * global1.c), _wgslsmith_div_f32(-1213f, 494f), _wgslsmith_f_op_f32(-global1.c))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -387f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 800f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c, global1.c, -836f, global1.c) * vec4<f32>(global0.a.c, 152f, global0.a.c, 276f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-270f, 431f, global2[_wgslsmith_index_u32(global3.x, 24u)], -225f))))), vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1184f, global1.c)))), -206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) - _wgslsmith_f_op_f32(arg_2 + 401f)))));
    var var_1 = Struct_2(global0.a);
    var var_2 = _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(global3.x, reverseBits(arg_0)));
    global2 = array<f32, 24>();
    var var_3 = global0.a;
    return _wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, global3.x), vec3<u32>(global3.x, global3.x, global3.x))), func_3(global0.a, global4[_wgslsmith_index_u32(arg_0, 20u)], global4[_wgslsmith_index_u32(abs(52056u), 20u)], vec3<u32>(global3.x, 0u, 4294967295u) | vec3<u32>(global3.x, global3.x, arg_0))) >> (vec2<u32>(~max(1u, 632u), ~firstTrailingBit(arg_0)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(1u, arg_0), arg_0));
}

fn func_1() -> Struct_1 {
    var var_0 = global1.c;
    global3 = ~(~abs(~func_2(global3.x, global1.b, global1.c)));
    global2 = array<f32, 24>();
    var var_1 = global0.a.b;
    var var_2 = 1u;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.a;
    let var_2 = Struct_2(global0.a);
    global3 = ~reverseBits(vec2<u32>(128538u, ~(~global3.x)));
    var var_3 = 0u;
    var var_4 = func_3(Struct_1(false, any(!select(vec3<bool>(global0.a.b, var_0.b, global1.a), vec3<bool>(global0.a.b, true, global0.a.b), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)))), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~10020u, global3.x) & _wgslsmith_clamp_u32(~41868u, firstTrailingBit(global3.x), ~global3.x), max(~(global3.x & global3.x), 12751u), 29198u), 20u)], var_2, vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global3.x, global3.x, 1u, 0u)), vec4<u32>(select(global3.x, 55u, var_2.a.b), func_3(global0.a, var_2, Struct_2(Struct_1(global1.a, global0.a.a, global2[_wgslsmith_index_u32(0u, 24u)])), vec3<u32>(27979u, 27792u, global3.x)), _wgslsmith_sub_u32(global3.x, 1u), ~global3.x)), 39179u, abs(~52750u)));
    global0 = global4[_wgslsmith_index_u32(select(38873u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global3.x), ~vec2<u32>(0u, 11392u)), global3.x), global0.a.a && true), 20u)];
    global2 = array<f32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, -432f, -2288f, -769f)) - vec4<f32>(global2[_wgslsmith_index_u32(48344u, 24u)], global0.a.c, 436f, 938f)))))), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(118055u, 47930u), ~global3.x) & global3.x, 1u), vec4<u32>(~(~max(global3.x, global3.x)), firstTrailingBit(1u) ^ func_2(global3.x, global1.a | global1.a, _wgslsmith_div_f32(var_0.c, var_2.a.c)).x, global3.x, firstLeadingBit(_wgslsmith_add_u32(global3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(17495u, global3.x, global3.x, 1u), vec4<u32>(0u, global3.x, global3.x, global3.x))))));
}

