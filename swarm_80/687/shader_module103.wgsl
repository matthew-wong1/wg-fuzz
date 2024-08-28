struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false));

var<private> global1: array<Struct_1, 18>;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global2 = global1[_wgslsmith_index_u32(firstTrailingBit(1u), 18u)];
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1044f);
    global2 = Struct_1(!arg_0.xy);
    var var_1 = true;
    let var_2 = global1[_wgslsmith_index_u32(1u & u_input.b, 18u)];
    return ~(_wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(15533u, u_input.a.x, u_input.b)), reverseBits(vec3<u32>(u_input.b, u_input.a.x, 1u)), vec3<bool>(global0.a.x, global2.a.x, global2.a.x)), ~(~vec3<u32>(u_input.b, 9475u, u_input.b))) ^ firstLeadingBit(~abs(4294967295u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<bool> {
    global1 = array<Struct_1, 18>();
    global1 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(525f)), _wgslsmith_div_f32(649f, -960f), true)), -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-195f, -120f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2469f, 790f, 1910f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-541f, -1066f, 545f) - vec3<f32>(774f, -1408f, -2541f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-770f, 1356f, -318f) + vec3<f32>(-134f, 2406f, -1882f)))))))));
    let var_1 = select(select(select(!(!vec3<bool>(global0.a.x, global0.a.x, arg_1.a.x)), vec3<bool>(true, var_0.x <= var_0.x, false), !vec3<bool>(global0.a.x, true, false)), !select(select(vec3<bool>(true, global0.a.x, true), vec3<bool>(arg_1.a.x, false, false), vec3<bool>(global2.a.x, true, false)), vec3<bool>(global2.a.x, arg_1.a.x, arg_1.a.x), !vec3<bool>(global0.a.x, false, false)), global0.a.x), vec3<bool>(all(!vec4<bool>(global0.a.x, global0.a.x, false, false)), all(!select(vec3<bool>(arg_1.a.x, arg_1.a.x, false), vec3<bool>(global0.a.x, false, global2.a.x), vec3<bool>(false, true, global0.a.x))), arg_1.a.x), !(!vec3<bool>(false, arg_1.a.x, any(vec4<bool>(arg_1.a.x, false, false, true)))));
    var var_2 = vec4<u32>(_wgslsmith_add_u32(func_3(vec3<bool>(true, true, global2.a.x)), func_3(!vec3<bool>(true, global2.a.x, true))), arg_2.x, u_input.b, ~abs(max(select(46153u, u_input.b, global2.a.x), arg_2.x)));
    return arg_1.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(!func_2(u_input.c, arg_0, ~u_input.a.yw));
    global0 = arg_0;
    var var_1 = Struct_1(global0.a);
    let var_2 = ~u_input.a.xy;
    var var_3 = vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~(u_input.a.wzw << (vec3<u32>(u_input.a.x, u_input.b, var_2.x) % vec3<u32>(32u))), vec3<u32>(arg_2 ^ u_input.a.x, u_input.a.x, arg_2)) | arg_2, 1u);
    return global1[_wgslsmith_index_u32(~var_2.x, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    let var_1 = u_input.b;
    var var_2 = global1[_wgslsmith_index_u32(32990u, 18u)];
    var var_3 = func_1(global1[_wgslsmith_index_u32(var_1, 18u)], _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1371f, -978f, true)) * -380f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1514f, -323f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(385f, -1070f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1094f, -454f)))))), countOneBits(3426u));
    let var_4 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.d, max(u_input.e.x, 0i), _wgslsmith_clamp_i32(u_input.e.x, -1i, -1i))), u_input.e, vec3<i32>(u_input.d, 1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.e.x, u_input.d, u_input.e.x, 0i), vec4<i32>(u_input.e.x, u_input.c.x, u_input.c.x, u_input.c.x)))), ~(~_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.e.x, 1i, u_input.c.x), u_input.e)), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(~2147483647i, u_input.c.x, -2147483647i)), _wgslsmith_mult_vec3_i32(-max(vec3<i32>(-2147483647i, u_input.e.x, u_input.c.x), u_input.e), -u_input.e)));
    var var_5 = 43337u;
    global0 = global1[_wgslsmith_index_u32(abs(5878u), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1f));
}

