struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<bool>(true, true)), -53997i);

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_3) -> vec3<i32> {
    global0 = Struct_3(global0.a, -2147483647i);
    var var_0 = Struct_4(59899u, arg_0.a.a.x);
    global1 = 1u;
    var var_1 = Struct_4(var_0.a, !(all(select(vec2<bool>(var_0.b, var_0.b), global0.a.a, arg_0.a.a.x)) | (arg_0.a.a.x | any(vec3<bool>(var_0.b, global0.a.a.x, true)))));
    var var_2 = arg_0.a.a;
    return max(reverseBits(-(vec3<i32>(2147483647i, arg_0.b, 0i) ^ reverseBits(vec3<i32>(49511i, global0.b, arg_0.b)))), vec3<i32>(global0.b, -2147483647i, -arg_0.b));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>) -> vec2<i32> {
    global0 = Struct_3(global0.a, arg_1.x);
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -func_2(Struct_3(Struct_2(vec2<bool>(global0.a.a.x, global0.a.a.x)), -77706i)), vec3<i32>(0i, -(~global0.b), arg_1.x & arg_1.x));
    var_0 = 0i;
    var_0 = -global0.b;
    let var_1 = !(!vec2<bool>(select(global0.a.a.x, true, true), false));
    return _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.yz, arg_1.yz, select(abs(arg_1.xx), arg_1.yx, true)) >> (u_input.b.yx % vec2<u32>(32u)), arg_1.zx);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> vec2<i32> {
    global1 = u_input.d.x;
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(374f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-659f, 987f)))), -738f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(980f)), _wgslsmith_div_f32(288f, 730f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(734f, 538f))), vec2<f32>(-1007f, _wgslsmith_f_op_f32(sign(-110f))), false)));
    global0 = Struct_3(arg_0.a, -(~abs(global0.b)) | _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(29418i, 1i, 1i, arg_0.b) >> (vec4<u32>(u_input.c.x, 0u, u_input.c.x, 70330u) % vec4<u32>(32u)), vec4<i32>(38352i, -2147483647i, -2147483647i, global0.b) ^ vec4<i32>(23328i, global0.b, global0.b, -23396i)), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-16446i, -2147483647i, -50799i, arg_0.b), vec4<i32>(0i, -22855i, arg_0.b, global0.b)))));
    var var_1 = ~0i;
    let var_2 = vec3<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a) ^ (vec4<u32>(0u, u_input.b.x, u_input.d.x, u_input.d.x) ^ vec4<u32>(7788u, 34502u, 4294967295u, u_input.b.x)), ~(~vec4<u32>(0u, u_input.a, 4294967295u, 91154u)))), ~41630u, ~1u);
    return ~min(firstLeadingBit(vec2<i32>(-1i, -2147483647i) ^ vec2<i32>(-1i, global0.b)) & func_2(Struct_3(Struct_2(vec2<bool>(false, true)), 17569i)).xy, reverseBits(vec2<i32>(global0.b, 73166i) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(28210i, arg_0.b), vec2<i32>(-4272i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-7907i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -58266i), func_1(u_input.b, max(vec3<i32>(global0.b, global0.b, 4984i), vec3<i32>(-14819i, 37404i, 2147483647i))) ^ (func_3(Struct_3(Struct_2(global0.a.a), 14927i), Struct_2(global0.a.a), global0.a, vec2<bool>(true, global0.a.a.x)) | -vec2<i32>(1i, -2147483647i))));
    let var_1 = 0u;
    global0 = Struct_3(global0.a, -(~(-1i ^ func_3(Struct_3(global0.a, 1i), global0.a, global0.a, vec2<bool>(global0.a.a.x, global0.a.a.x)).x)));
    global1 = _wgslsmith_dot_vec2_u32(u_input.b.zx, _wgslsmith_sub_vec2_u32(select(u_input.b.zy, select(select(vec2<u32>(var_1, 31790u), vec2<u32>(var_1, 0u), global0.a.a.x), u_input.d, !vec2<bool>(global0.a.a.x, false)), true), _wgslsmith_mult_vec2_u32(~countOneBits(vec2<u32>(43701u, 128407u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, u_input.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 29157u), u_input.d)))));
    global1 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 13960u, 9016u, u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 53553u, 0u, 0u), vec4<u32>(33708u, 4453u, u_input.d.x, u_input.c.x))), max(~vec4<u32>(u_input.b.x, u_input.d.x, var_1, 4294967295u), vec4<u32>(var_1, 0u, 16373u, 6877u))), 5478u);
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_u32(_wgslsmith_mult_u32(9092u, u_input.d.x), 20872u) >> ((0u | ~u_input.d.x) % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -599f)))))));
}

