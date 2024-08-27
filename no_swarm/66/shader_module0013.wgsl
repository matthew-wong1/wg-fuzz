struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(17440u, 76029u, 13467u, 34481u, 36940u, 16995u, 45545u, 17312u, 46035u, 1u, 28320u, 63994u);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<bool>(false, false, false), 0i, -5804i), Struct_1(vec3<bool>(true, true, false), 1i, -29777i), Struct_1(vec3<bool>(false, false, false), 1i, 2147483647i), Struct_1(vec3<bool>(false, true, false), 7185i, 0i), Struct_1(vec3<bool>(true, false, false), -7348i, -2669i), Struct_1(vec3<bool>(true, false, false), 0i, 0i), Struct_1(vec3<bool>(true, false, true), 1i, 11704i), Struct_1(vec3<bool>(false, false, false), 1i, 0i), Struct_1(vec3<bool>(false, false, true), -23645i, -59862i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec3<bool>(!((all(vec2<bool>(false, false)) & true) || any(vec4<bool>(false, false, false, true))), false, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false))));
    var var_1 = global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~u_input.c | _wgslsmith_mult_u32(40488u, u_input.a), _wgslsmith_add_u32(~global0[_wgslsmith_index_u32(u_input.a, 12u)], 32385u)), 12u)], 9u)];
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) >> (0u % 32u), 12u)], 58871u), 12u)], _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 87927u), _wgslsmith_add_vec2_u32(u_input.d.yz, min(~u_input.d.zw, countOneBits(vec2<u32>(u_input.c, u_input.a))))), 55892u), 9u)];
    return vec2<bool>(!all(!select(vec4<bool>(var_2.a.x, false, var_2.a.x, var_2.a.x), vec4<bool>(true, true, var_2.a.x, var_2.a.x), true)), var_2.a.x || !(var_0.x && true));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, ~reverseBits(global0[_wgslsmith_index_u32(u_input.a, 12u)])), 12u)];
    let var_1 = _wgslsmith_mult_i32((-_wgslsmith_clamp_i32(arg_2, -10038i, arg_2) | -(~arg_3.b)) ^ _wgslsmith_add_i32(-(~49553i), firstTrailingBit(_wgslsmith_clamp_i32(u_input.b.x, arg_1.b, arg_2))), reverseBits(_wgslsmith_add_i32(-53899i, 23348i)) << (~(~_wgslsmith_sub_u32(u_input.c, global0[_wgslsmith_index_u32(u_input.c, 12u)])) % 32u));
    global0 = array<u32, 12>();
    var var_2 = vec3<bool>(arg_3.a.x == arg_1.a.x, any(!func_3()), !arg_3.a.x);
    let var_3 = all(arg_1.a.yy);
    return u_input.d.xz;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> bool {
    var var_0 = reverseBits(u_input.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-167f, -833f, -149f, -579f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(786f, -956f, 112f, -515f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-592f, 235f, -489f, -1127f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(698f, -1099f, -558f, 716f), vec4<f32>(-256f, 723f, -2216f, -549f), false))))));
    var var_2 = arg_3.c;
    global0 = array<u32, 12>();
    var var_3 = vec3<u32>(4294967295u, ~global0[_wgslsmith_index_u32(arg_1, 12u)], ~arg_0.x);
    return false;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: i32) -> bool {
    let var_0 = 16711u;
    global0 = array<u32, 12>();
    var var_1 = all(vec4<bool>(true, !any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false)), !(!any(vec2<bool>(false, true))), func_4(vec3<u32>(~u_input.a, 4294967295u, 0u), ~_wgslsmith_sub_u32(1u, 0u), func_2(vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 12u)] << (global0[_wgslsmith_index_u32(11241u, 12u)] % 32u), 9u)], ~1i, Struct_1(vec3<bool>(false, true, true), -21981i, -2147483647i)), global1[_wgslsmith_index_u32(u_input.a, 9u)])));
    global0 = array<u32, 12>();
    var var_2 = 1308f;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-(~_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 2147483647i))) < (countOneBits(38922i) >> (global0[_wgslsmith_index_u32(~u_input.c, 12u)] % 32u));
    global0 = array<u32, 12>();
    var var_1 = select(!vec3<bool>(var_0 || true, true, var_0), select(vec3<bool>(var_0, true, (u_input.b.x <= u_input.b.x) != true), !(!(!vec3<bool>(var_0, true, var_0))), !vec3<bool>(!var_0, select(true, true, false), func_1(u_input.d.yyx, vec4<i32>(-43621i, 2559i, 1i, u_input.b.x), 57392i))), !(!func_1(abs(u_input.d.yxy), -vec4<i32>(13839i, u_input.b.x, u_input.b.x, u_input.b.x), -u_input.b.x)));
    global0 = array<u32, 12>();
    let var_2 = all(!vec3<bool>(var_1.x, var_1.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xxx, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-264f, 934f))))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(select(1015f, 1101f, true)), _wgslsmith_f_op_f32(select(948f, -1196f, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-395f, -655f))))))), u_input.d.zx);
}

