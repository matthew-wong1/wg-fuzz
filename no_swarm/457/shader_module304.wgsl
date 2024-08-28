struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<i32> {
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    let var_0 = -min(-(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, 2147483647i, u_input.a.x, 1i), vec4<i32>(0i, arg_0, -2829i, 2147483647i)) | _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 2147483647i, arg_0, 0i), vec4<i32>(arg_0, arg_1, global0[_wgslsmith_index_u32(16751u, 20u)], arg_1))), vec4<i32>(arg_1, arg_1, _wgslsmith_mod_i32(countOneBits(-5562i), u_input.a.x), ~u_input.a.x));
    var var_1 = Struct_2(var_0.zw, false, (_wgslsmith_add_vec2_u32(abs(u_input.b), vec2<u32>(u_input.c.x, u_input.c.x)) & vec2<u32>(u_input.c.x, 4294967295u)) ^ (vec2<u32>(1u, firstLeadingBit(u_input.c.x)) >> (_wgslsmith_mult_vec2_u32(u_input.c.yz, ~u_input.b) % vec2<u32>(32u))), _wgslsmith_add_vec3_i32(abs(-vec3<i32>(3109i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 20u)])), min(select(var_0.zyw, vec3<i32>(arg_0, arg_0, -2147483647i), vec3<bool>(false, true, false)), ~u_input.a)) & firstLeadingBit(var_0.zzy >> (vec3<u32>(u_input.b.x, 52677u, u_input.c.x) % vec3<u32>(32u))));
    let var_2 = Struct_2(-var_1.a, false, vec2<u32>(abs(1u), u_input.c.x), u_input.a);
    return max(var_0.xzw, vec3<i32>(~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], 54008i)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_2.d.x, var_0.x), vec3<i32>(arg_0, arg_1, var_1.d.x))), 2147483647i, firstTrailingBit(arg_0 | min(0i, var_2.d.x))));
}

fn func_2(arg_0: i32, arg_1: i32) -> f32 {
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    var var_0 = u_input.c;
    var var_1 = Struct_1(vec2<i32>(34196i, ~0i));
    var var_2 = Struct_2(u_input.a.zx, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(~108861u, ~47878u), ~u_input.b & (u_input.b ^ u_input.b)), func_3(-arg_1, ~var_1.a.x));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1010f, 840f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-994f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1046f * -555f), _wgslsmith_f_op_f32(floor(-1000f))))), all(vec4<bool>(var_2.b, true, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 56890u), vec2<u32>(37477u, 63682u)) == var_0.x, var_2.b))));
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 20>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(abs(u_input.b.x), 20u)], u_input.a.x)) * -619f), _wgslsmith_f_op_f32(min(-650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1235f + -942f))))));
    return Struct_1(~(~(-u_input.a.yy & ~u_input.a.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = 48909i ^ u_input.a.x;
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    let var_2 = func_1();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(264f, _wgslsmith_f_op_f32(729f + 1227f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, -641f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(reverseBits(var_0.a.x), _wgslsmith_dot_vec2_i32(var_0.a, vec2<i32>(var_1, global0[_wgslsmith_index_u32(5952u, 20u)])))), -752f, true)), 973f);
    let var_4 = Struct_2(-(~(-(var_0.a << (u_input.c.zz % vec2<u32>(32u))))), select(all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))), true, !any(vec3<bool>(true, false, false))), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.c.x), u_input.c.xy) & firstLeadingBit(u_input.b)) ^ u_input.c.xy, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.xz, var_3.x, min(1i, abs(u_input.a.x)), -1i);
}

