struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<bool>;

var<private> global2: array<vec3<f32>, 18>;

var<private> global3: Struct_2 = Struct_2(vec4<u32>(4294967295u, 48162u, 0u, 0u), 410f, Struct_1(vec2<u32>(1u, 102475u), -1868f, 2147483647i, vec4<u32>(4294967295u, 0u, 0u, 4294967295u), -228f), Struct_1(vec2<u32>(4294967295u, 1u), -589f, 0i, vec4<u32>(39434u, 104526u, 0u, 68111u), 173f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    return 1230f;
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.c.b), _wgslsmith_f_op_f32(-global3.d.e)))))));
    let var_1 = 61576u;
    var var_2 = arg_0;
    global2 = array<vec3<f32>, 18>();
    return vec2<bool>(any(global0.yyw), global1.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>) -> vec4<i32> {
    global1 = select(!select(vec2<bool>(true, all(global0.yy)), func_3(Struct_4(u_input.a)), !(global1.x | false)), global0.yx, !(!select(!global0.wx, func_3(Struct_4(vec4<u32>(global3.d.d.x, 4294967295u, global3.a.x, u_input.a.x))), global0.x)));
    global3 = Struct_2(_wgslsmith_mult_vec4_u32(abs(global3.a), max(~vec4<u32>(1u, u_input.c.x, u_input.c.x, 32183u), _wgslsmith_clamp_vec4_u32(global3.a, u_input.c, u_input.c)) ^ global3.c.d), -261f, Struct_1(u_input.d.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.b) - _wgslsmith_f_op_f32(round(global3.d.b)))), _wgslsmith_dot_vec4_i32(arg_0, ~vec4<i32>(u_input.b, -29434i, 52889i, arg_0.x)), ~reverseBits(global3.c.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b + -614f))), Struct_1(max(vec2<u32>(24917u, 0u), select(~u_input.e.wy, ~global3.c.d.wz, select(vec2<bool>(global1.x, global0.x), vec2<bool>(global0.x, false), global1.x))), _wgslsmith_f_op_f32(global3.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1267f, global3.c.b, global0.x)) + _wgslsmith_f_op_f32(894f * global3.b))), _wgslsmith_mult_i32(arg_1.x, 1i), vec4<u32>(_wgslsmith_dot_vec2_u32(global3.c.a, ~global3.a.wx), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.e.wyx, global3.a.xyw), u_input.c.x), 4294967295u, _wgslsmith_div_u32(global3.d.d.x, 1u)), 453f));
    let var_0 = func_3(Struct_4(_wgslsmith_add_vec4_u32(global3.a, ~global3.c.d)));
    var var_1 = global0.x;
    var var_2 = arg_1.yz;
    return vec4<i32>(-2147483647i, abs(global3.c.c), u_input.b, arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> f32 {
    global2 = array<vec3<f32>, 18>();
    var var_0 = vec4<bool>((arg_0.d.x >= u_input.e.x) || any(!global0.zy), global1.x, all(vec4<bool>(global1.x, all(vec2<bool>(true, global0.x)), func_3(Struct_4(arg_0.d)).x || true, true)), global1.x);
    var var_1 = arg_2;
    return _wgslsmith_f_op_f32(global3.d.e - arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global3.c.d, -377f, Struct_1(vec2<u32>(~(6924u >> (0u % 32u)), global3.c.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(step(-553f, global3.d.e)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-670f, global3.b), global3.c.b)), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, global3.c.c), -select(vec2<i32>(global3.c.c, -11173i), vec2<i32>(59102i, 1i), vec2<bool>(global1.x, global1.x))), _wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(u_input.e.x << (global3.a.x % 32u), global3.d.d.x << (1u % 32u), countOneBits(55261u), 10938u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-621f, global3.b), _wgslsmith_f_op_f32(func_1(false, Struct_3(vec4<i32>(global3.d.c, -12397i, 22562i, -5774i)), Struct_1(u_input.a.zz, global3.b, u_input.b, vec4<u32>(global3.c.d.x, u_input.c.x, 1u, 12796u), global3.b), vec4<bool>(global1.x, true, false, true)))) - 969f)), Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(0u, u_input.d.x)), reverseBits(u_input.d.zx)), u_input.d.xx), -742f, firstLeadingBit(0i), u_input.a, _wgslsmith_f_op_f32(-global3.d.e)));
    var var_0 = ~u_input.b;
    var_0 = global3.d.c;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1176f) - -1346f), Struct_3(func_2(-vec4<i32>(global3.d.c, -2147483647i, global3.d.c, global3.c.c), vec3<i32>(global3.d.c, 2147483647i, u_input.b) >> (vec3<u32>(1u, 1u, global3.c.d.x) % vec3<u32>(32u)))))) * _wgslsmith_f_op_f32(-global3.d.b));
    var var_2 = Struct_3(_wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(u_input.b, u_input.b, 2147483647i, 34794i) | -vec4<i32>(global3.c.c, 2147483647i, 2147483647i, global3.c.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.b, _wgslsmith_clamp_i32(0i, global3.d.c, -6431i), 2147483647i, global3.c.c), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(global3.c.c, 0i, u_input.b, global3.d.c)), _wgslsmith_sub_vec4_i32(vec4<i32>(-38418i, global3.c.c, 2147483647i, global3.c.c), vec4<i32>(global3.d.c, global3.c.c, 2147483647i, u_input.b)))), abs(vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.b, 2147483647i, 35297i))));
    let var_3 = vec3<f32>(_wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.e + 645f) + global3.c.e)), 1000f, global3.c.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global3.d.a.x, global3.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), global3.a.ww)), vec3<u32>(reverseBits(~(global3.a.x ^ u_input.a.x)), global3.d.a.x, abs(abs(global3.a.x))), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.wz, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x)) << (vec2<u32>(63116u, 46825u) % vec2<u32>(32u))), 1u), _wgslsmith_f_op_vec2_f32(floor(var_3.yx)));
}

