struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: vec4<u32> = vec4<u32>(16298u, 0u, 20333u, 17269u);

var<private> global2: vec4<f32> = vec4<f32>(-775f, 133f, -802f, -1000f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = arg_1.a;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1f, global2.x));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec4<f32> {
    var var_0 = !arg_2.zy;
    global1 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), global2.x, 2297f, _wgslsmith_f_op_f32(min(-789f, arg_1.x)))))), arg_1));
    let var_2 = abs(1u);
    var var_3 = Struct_1(arg_2.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1601f, arg_1.x, _wgslsmith_f_op_f32(min(2104f, 717f)), -1284f))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> u32 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), global2.x, global0.a))))), global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(708f)) * _wgslsmith_f_op_f32(abs(global2.x))) * _wgslsmith_f_op_f32(ceil(589f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-732f)), _wgslsmith_f_op_f32(step(global2.x, -267f))))), _wgslsmith_f_op_f32(f32(-1f) * -139f));
    var var_0 = arg_0.a;
    var var_1 = Struct_3(Struct_2(_wgslsmith_sub_i32(-2147483647i, u_input.a.x), arg_0, _wgslsmith_div_u32(~14622u, u_input.d), Struct_1(!global0.a)), ~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(min(global1.xx, global1.xw), u_input.c.xy & vec2<u32>(global1.x, u_input.e)), vec2<u32>(30060u, 4294967295u) ^ u_input.c.xz), ~firstLeadingBit(~27586u));
    var var_2 = ~abs(reverseBits(-u_input.a) ^ u_input.a);
    let var_3 = _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_1.a.a << (69809u % 32u), -2147483647i, u_input.a.x) & ~_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(var_1.a.a, var_2.x, var_1.a.a))), max(-(~max(vec3<i32>(-1i, -45186i, var_2.x), vec3<i32>(var_1.a.a, var_1.a.a, var_2.x))), u_input.a));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(_wgslsmith_mult_vec4_u32(abs(u_input.b), u_input.b));
    var var_0 = abs(global1.x);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1541f, global2.x, global2.x) - vec4<f32>(-1000f, global2.x, 1964f, global2.x)), _wgslsmith_f_op_vec4_f32(func_1(Struct_3(Struct_2(u_input.a.x, Struct_1(false), 23743u, Struct_1(global0.a)), global1.zz, global1.x), Struct_3(Struct_2(u_input.a.x, Struct_1(false), 63585u, Struct_1(global0.a)), vec2<u32>(1u, global1.x), 124806u), Struct_2(u_input.a.x, Struct_1(true), u_input.c.x, Struct_1(true)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1098f, global2.x, global2.x, global2.x))))), vec4<f32>(global2.x, global2.x, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, 304f)) - 1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -2436f, global2.x, global2.x) + vec4<f32>(global2.x, global2.x, global2.x, -1161f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-391f, global2.x, global2.x, global2.x) * vec4<f32>(-1000f, -272f, global2.x, global2.x))), vec4<bool>(global0.a, global0.a, false, false)))));
    let var_1 = Struct_3(Struct_2(0i, Struct_1(all(vec4<bool>(global0.a, false, global0.a, global0.a))), reverseBits(43591u), Struct_1(true | global0.a)), global1.wz | ~(~(~global1.xx)), global1.x);
    let var_2 = select(select(vec4<bool>(var_1.a.d.a, var_1.a.d.a, !global0.a, all(select(vec2<bool>(var_1.a.b.a, global0.a), vec2<bool>(var_1.a.d.a, false), vec2<bool>(var_1.a.d.a, var_1.a.d.a)))), !select(vec4<bool>(var_1.a.b.a, true, global0.a, var_1.a.d.a), select(vec4<bool>(true, var_1.a.d.a, var_1.a.b.a, var_1.a.d.a), vec4<bool>(global0.a, global0.a, false, false), false), !vec4<bool>(var_1.a.b.a, false, false, var_1.a.d.a)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 0u, 4294967295u), ~global1.x) >= 35525u), !(!(!select(vec4<bool>(false, global0.a, true, true), vec4<bool>(true, false, true, global0.a), vec4<bool>(true, global0.a, false, global0.a)))), global0.a);
    var_0 = var_1.c & _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global1.zyx, vec3<u32>(global1.x << (1u % 32u), global1.x, _wgslsmith_div_u32(var_1.a.c, 1u))), vec3<u32>(_wgslsmith_add_u32(~global1.x, 1u), u_input.b.x, _wgslsmith_sub_u32(min(global1.x, 1u), global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, func_3(Struct_1(true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global2.x, global2.x) - vec3<f32>(global2.x, global2.x, 330f))))));
}

