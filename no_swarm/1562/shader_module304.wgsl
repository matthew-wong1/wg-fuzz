struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 1i);

var<private> global1: array<i32, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-150f, 453f, 1000f, -1061f) * vec4<f32>(1187f, 539f, -738f, 285f))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(-1235f, 563f)), _wgslsmith_f_op_f32(f32(-1f) * -1020f), _wgslsmith_div_f32(1000f, 418f), -455f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1142f, 422f, -924f, 429f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -864f, -1302f, -201f))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1050f, 406f, 300f, 1217f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2718f, -1000f, 1054f, 1283f), vec4<f32>(-273f, -429f, 800f, -759f)))))))));
    var var_1 = vec3<bool>(true, true & !(1u < _wgslsmith_div_u32(u_input.a.x, 0u)), true);
    let var_2 = _wgslsmith_add_vec2_u32(~reverseBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, u_input.b), u_input.d.xz)), countOneBits(vec2<u32>(u_input.c.x, max(max(1u, u_input.b), 4294967295u))));
    let var_3 = var_2.x;
    let var_4 = !(!(!all(vec3<bool>(true, var_1.x, var_1.x))) || (any(vec4<bool>(var_1.x, var_1.x, var_1.x, false)) && (!var_1.x && var_1.x)));
    return StorageBuffer(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(712f + -433f), var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x), vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(33351u, var_2.x), var_2.x, ~_wgslsmith_sub_u32(123380u, var_3)), ~var_3, firstTrailingBit(countOneBits(var_2.x) >> (84241u % 32u)), ~24456u), ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(23203u, 0u, var_2.x, 1u)), vec4<u32>(var_2.x ^ u_input.d.x, _wgslsmith_mod_u32(36959u, var_2.x), ~1u, firstLeadingBit(var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(-countOneBits(abs(-vec2<i32>(19811i, global1[_wgslsmith_index_u32(u_input.b, 31u)]))));
    let var_0 = vec2<u32>(~_wgslsmith_div_u32(50417u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.e.x), u_input.d.yyw), u_input.c.x)), _wgslsmith_div_u32(~u_input.e.x, firstTrailingBit(u_input.b)));
    let var_1 = u_input.c.x;
    global0 = vec2<i32>(~(-2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(u_input.d.x, 32988u)), 31u)]);
    var var_2 = ~reverseBits(firstLeadingBit(0i));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-153f * -573f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -699f) - _wgslsmith_f_op_f32(f32(-1f) * -793f)))));
    var var_4 = Struct_1(_wgslsmith_mod_u32(var_0.x, var_1 | u_input.a.x));
    var_4 = Struct_1(~0u);
    let x = u_input.a;
    s_output = func_1();
}

