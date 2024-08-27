struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.c, arg_1, arg_1, _wgslsmith_f_op_f32(floor(1071f))))), arg_0);
    let var_1 = true;
    global0 = u_input.b.x;
    var var_2 = arg_0.c;
    var var_3 = arg_0;
    return arg_1;
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = -vec2<i32>(-countOneBits(arg_1.b.b), -(-arg_0 | -83305i));
    global0 = 4294967295u;
    var var_1 = 748f;
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-619f * -365f) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, arg_2.a.x)))), 579f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.c, -142f, arg_1.a.x)), _wgslsmith_f_op_vec3_f32(arg_1.a.xyy + arg_2.a.xxw)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(504f, 132f, arg_1.b.c)) + _wgslsmith_f_op_vec3_f32(arg_2.a.zxw + arg_1.a.zww))))));
    let var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.a.x, 4294967295u, u_input.b.x, 7596u), vec4<u32>(0u, 0u, 1u, arg_2.b.a.x)), u_input.b.x | arg_2.b.a.x, _wgslsmith_mult_u32(arg_2.b.a.x, arg_1.b.a.x)) << (reverseBits(abs(vec3<u32>(4294967295u, 1494u, 38740u))) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(max(vec3<u32>(7423u, 19136u, arg_2.b.a.x), vec3<u32>(61379u, 41309u, 14656u)), vec3<u32>(u_input.b.x, arg_2.b.a.x, u_input.b.x))), u_input.b);
    return select(u_input.b.x, 73319u, true);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    global0 = ~u_input.b.x;
    var var_0 = Struct_2(vec4<f32>(-777f, 652f, _wgslsmith_f_op_f32(func_2(arg_0, arg_0.c)), 1048f), arg_0);
    global0 = ~func_3(-1i, Struct_2(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(738f + 1097f), _wgslsmith_f_op_f32(min(arg_0.c, 1095f)), _wgslsmith_f_op_f32(-949f * -1561f)), var_0.b), Struct_2(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 1000f, arg_0.c, 394f) * var_0.a)), Struct_1(vec2<u32>(u_input.b.x, var_0.b.a.x), 1i, var_0.b.c, vec3<i32>(var_0.b.d.x, 0i, 19892i))));
    var var_1 = arg_0;
    let var_2 = var_0.b.a;
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(-30583i, _wgslsmith_div_i32(~arg_0.d.x, arg_0.d.x), 1i), min(select(vec3<i32>(~1i, min(arg_0.b, var_0.b.d.x), 1961i), firstLeadingBit(var_1.d ^ arg_0.d), vec3<bool>(true, select(false, true, false), true)), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-39217i, -12989i, -53892i)) | vec3<i32>(u_input.a, var_0.b.b, 0i), ~arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(~u_input.b.xz, ~select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 54830u), u_input.b.zy), u_input.b.xy, true)), u_input.a, 723f, _wgslsmith_mult_vec3_i32(abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, u_input.d.x, 1i), vec4<i32>(u_input.c, u_input.c, u_input.d.x, u_input.c)), ~u_input.d.x, u_input.a)), u_input.d));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1486f, 1091f, -1468f, -1962f)))));
    var_0 = Struct_1(u_input.b.xy ^ (~countOneBits(u_input.b.zx) & var_0.a), _wgslsmith_clamp_i32(-30999i, ~(-1i), -(firstLeadingBit(2147483647i) & func_1(Struct_1(vec2<u32>(1u, 1u), -35774i, var_1.x, vec3<i32>(1i, 80950i, u_input.c)), vec3<u32>(1u, 67419u, 75664u)))), 1000f, ~_wgslsmith_mult_vec3_i32(u_input.d, firstLeadingBit(firstTrailingBit(u_input.d))));
    var_0 = Struct_1(~(~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.a.x), vec2<u32>(0u, 0u)), _wgslsmith_sub_vec2_u32(u_input.b.xx, var_0.a))), u_input.a, 528f, u_input.d);
    var var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c, -335f)) - _wgslsmith_f_op_f32(1000f + 871f)), -568f, var_0.c)));
}

