struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<bool>, 25>;

var<private> global2: Struct_3 = Struct_3(false, vec4<u32>(85863u, 0u, 45851u, 8428u), vec4<i32>(17762i, -39528i, -1i, 2147483647i), Struct_2(true, 4294967295u, -34994i, vec4<i32>(0i, 7135i, 0i, -43986i), 715f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_u32(~arg_0.d.b, u_input.c);
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_0.b.zzy, firstTrailingBit(u_input.b)), _wgslsmith_mod_u32(41085u, 1u));
    let var_3 = Struct_3(true, arg_0.b, min(vec4<i32>(_wgslsmith_sub_i32(0i, min(-2147483647i, -16359i)), arg_1.a.x, firstTrailingBit(-2147483647i) & abs(-24200i), _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_1.a.x, -1i), _wgslsmith_mult_i32(-1i, global2.d.d.x))), global2.d.d), global2.d);
    var_0 = min(4294967295u, 1u);
    return 0i == _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, var_3.c.x, arg_1.a.x), arg_1.a.x >> (select(global2.d.b, 0u, global0.x) % 32u), max(15006i, 0i)), global2.c.ywy);
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    let var_0 = Struct_2(any(vec4<bool>(!func_3(Struct_3(false, global2.b, global2.d.d, Struct_2(arg_0, 0u, 1i, arg_1.d.d, arg_1.d.e)), Struct_1(arg_1.d.d.yzw)), all(!vec3<bool>(false, false, arg_1.d.a)), select(any(vec2<bool>(global0.x, global0.x)), !arg_1.d.a, true), arg_3)), 1u, global2.c.x, reverseBits(arg_1.d.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-431f, arg_1.d.e)))))));
    let var_1 = _wgslsmith_dot_vec3_u32(u_input.b, ~vec3<u32>(_wgslsmith_mult_u32(global2.d.b, 1u), var_0.b, 4809u | global2.d.b) ^ vec3<u32>(1u, 18041u, 4294967295u));
    let var_2 = global2.b.wyz;
    var var_3 = arg_1.d.a;
    global0 = !(!vec3<bool>(!all(global1[_wgslsmith_index_u32(var_0.b, 25u)]), all(!vec4<bool>(false, arg_3, true, false)), var_0.b <= ~global2.d.b));
    return 1u;
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_2(global2.a, u_input.a, u_input.d, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~global2.c, ~global2.c), 1i), u_input.d, firstTrailingBit(global2.d.d.x), -(~(-2147483647i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1279f - 162f), global2.d.e))))));
    let var_1 = (~countOneBits(~vec4<u32>(42655u, 0u, 4294967295u, global2.d.b)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(global2.b, global2.b) << (_wgslsmith_clamp_u32(global2.d.b, 15731u, 1u) % 32u), _wgslsmith_dot_vec3_u32(global2.b.wyx, vec3<u32>(100379u, 29908u, 28602u)) | ~44051u, ~max(0u, 0u), 0u) % vec4<u32>(32u))) >> (~vec4<u32>(1u, _wgslsmith_add_u32(max(62653u, u_input.b.x), var_0.b), 1u, func_2(true, Struct_3(false, global2.b, global2.c, global2.d), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-398f, var_0.e, 961f), vec3<f32>(1436f, 203f, -862f))), !global2.d.a)) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 146f, _wgslsmith_f_op_f32(var_0.e + global2.d.e)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.e + 696f)), _wgslsmith_div_f32(var_0.e, _wgslsmith_f_op_f32(f32(-1f) * -122f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1830f) + -404f))))));
    return Struct_3(global2.a, countOneBits(reverseBits(vec4<u32>(~1u, 24779u, 4294967295u, 1u))), global2.d.d, global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 25>();
    global2 = func_1(_wgslsmith_f_op_f32(trunc(758f)));
    global1 = array<vec4<bool>, 25>();
    let var_0 = Struct_2(true, ~(~min(~1u, 26998u)), countOneBits(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global2.c.x, 25i, -15058i), vec4<i32>(-27830i, global2.d.c, -7775i, global2.d.d.x)))), _wgslsmith_mod_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(u_input.d, 1i, -12519i, -36010i)), global2.c), _wgslsmith_f_op_f32(-global2.d.e));
    global1 = array<vec4<bool>, 25>();
    let var_1 = Struct_2(var_0.e < global2.d.e, (~reverseBits(4294967295u) ^ _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b.x, 57051u), u_input.b.x)) | select(min(~51811u, _wgslsmith_clamp_u32(global2.d.b, global2.b.x, u_input.b.x)), func_1(global2.d.e).d.b << (4294967295u % 32u), false), _wgslsmith_mult_i32(global2.d.c, -_wgslsmith_mult_i32(select(4032i, -29777i, false), u_input.d)), _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(global2.d.d ^ var_0.d, global2.c)), var_0.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.e)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2282f - 619f)))))));
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~(~global2.b));
}

