struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: array<Struct_1, 8>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(886f, 614f, 917f), vec3<bool>(true, true, false), 44712u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> bool {
    global2 = global1[_wgslsmith_index_u32(global2.c, 8u)];
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.zx - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-329f, 287f)), 1000f)), _wgslsmith_f_op_f32(-global2.a.x))) + global2.a.zz);
    global0 = array<u32, 17>();
    var var_1 = !(global2.c <= global2.c);
    global0 = array<u32, 17>();
    return all(!global2.b);
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_i32(i32(-1i) * -(-u_input.b | _wgslsmith_div_i32(11453i, 1i)), firstLeadingBit(max(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(u_input.b, u_input.b)), ~(-34285i) ^ u_input.b)));
    global2 = global1[_wgslsmith_index_u32(43362u, 8u)];
    return !vec3<bool>(true, !func_3(), arg_0.b.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: i32, arg_3: u32) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 8u)];
    var_0 = global1[_wgslsmith_index_u32(~(~firstLeadingBit(~_wgslsmith_div_u32(53832u, 4294967295u))), 8u)];
    var var_1 = global1[_wgslsmith_index_u32(~(~min(var_0.c, ~(~global2.c))), 8u)];
    var var_2 = arg_3;
    global0 = array<u32, 17>();
    return vec4<u32>(26502u, abs(~_wgslsmith_mult_u32(1u, 4294967295u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_3, var_0.c), vec2<u32>(global0[_wgslsmith_index_u32(arg_3, 17u)], arg_3)) >> (1u % 32u), ~_wgslsmith_mult_u32(countOneBits(4294967295u), global2.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, 3590u), _wgslsmith_sub_vec2_u32(vec2<u32>(min(var_1.c, 68930u), ~22199u), reverseBits(vec2<u32>(1u, var_1.c)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    global0 = array<u32, 17>();
    global1 = array<Struct_1, 8>();
    let var_0 = global2.c;
    let var_1 = _wgslsmith_clamp_vec3_u32(~(arg_1.zwx << (vec3<u32>(global0[_wgslsmith_index_u32(~1u, 17u)], 12334u, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]) % vec3<u32>(32u))), ~(~select(arg_1.zzy, ~vec3<u32>(arg_1.x, 1u, 4294967295u), global2.b.x & arg_0.b.x)), arg_1.xzx);
    global1 = array<Struct_1, 8>();
    return global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71029u, 17u)] >> (73142u % 32u), 17u)] < 680u;
}

fn func_1() -> bool {
    let var_0 = ~countOneBits(~u_input.a.xz);
    global0 = array<u32, 17>();
    var var_1 = vec3<u32>(global0[_wgslsmith_index_u32(0u, 17u)], 4294967295u, global0[_wgslsmith_index_u32(~(reverseBits(reverseBits(global2.c)) ^ 4294967295u), 17u)]);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2101f + global2.a.x), _wgslsmith_f_op_f32(trunc(global2.a.x)), _wgslsmith_f_op_f32(max(global2.a.x, global2.a.x)))))), _wgslsmith_f_op_vec3_f32(-global2.a)));
    var var_3 = vec3<bool>(true, (global2.b.x & true) & global2.b.x, func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a)), select(!global2.b, !global2.b, !vec3<bool>(global2.b.x, false, global2.b.x)), 61976u), abs(func_4(func_2(global1[_wgslsmith_index_u32(4881u, 8u)]), global2.a.yy, 43898i, select(34666u, global2.c, true)))));
    return func_5(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(23952u, var_1.x, ~(~var_1.x), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4509u, 17u)], firstLeadingBit(1u), _wgslsmith_div_u32(33072u, 84124u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 17u)], global2.c), abs(vec4<u32>(0u, 67607u, 4294967295u, global2.c)))), 8u)], _wgslsmith_add_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(4294967295u, 1u >> (var_0.x % 32u)), _wgslsmith_mod_u32(var_1.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 0u, u_input.a.x))), 11574u), ~vec4<u32>(4294967295u, abs(17574u), ~25507u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!global2.b.x, !global2.b.x, func_1(), global2.b.x);
    let var_1 = true;
    global1 = array<Struct_1, 8>();
    let var_2 = vec2<f32>(global2.a.x, 314f);
    let var_3 = global1[_wgslsmith_index_u32(u_input.a.x, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_3.a.x, -422f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a - vec3<f32>(1142f, var_2.x, 1000f))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(var_3.a)), var_3.a))))), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, u_input.b)) << (~vec2<u32>(25595u, ~u_input.a.x) % vec2<u32>(32u)), vec2<u32>(~43279u, global2.c), _wgslsmith_div_u32(59648u, _wgslsmith_mult_u32(~u_input.a.x, 21985u) | abs(u_input.a.x << (112811u % 32u))));
}

