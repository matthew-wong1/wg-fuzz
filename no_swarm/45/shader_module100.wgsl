struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1419f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1.x, 796f, arg_0.x))))) + _wgslsmith_f_op_f32(ceil(342f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 325f) + -794f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(611f * 184f), _wgslsmith_f_op_f32(1104f * arg_1.x)))), 1f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x * arg_1.x))));
    let var_1 = Struct_2(Struct_1(vec2<u32>(u_input.c, u_input.c), u_input.a), u_input.c, Struct_1(select(abs(vec2<u32>(u_input.c, u_input.c) & vec2<u32>(u_input.c, 4294967295u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)), arg_0), u_input.a));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    return abs(~var_1.c.a) >> (var_1.c.a % vec2<u32>(32u));
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(576f - -1107f);
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_sub_vec3_i32(u_input.a.wxw, arg_0.a.b.xzy) << (~(~vec3<u32>(4294967295u, 115978u, 0u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-37355i & u_input.b, -48180i, arg_0.c.b.x), -(~arg_0.c.b.zwy))), _wgslsmith_add_vec3_i32(abs(u_input.a.xwx), _wgslsmith_sub_vec3_i32(arg_0.c.b.wzy, reverseBits(vec3<i32>(u_input.d, arg_0.c.b.x, u_input.b))) << (vec3<u32>(0u, min(u_input.c, arg_0.c.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, arg_0.b), vec2<u32>(6197u, u_input.c))) % vec3<u32>(32u))), vec3<i32>(firstTrailingBit(-_wgslsmith_div_i32(u_input.a.x, 38784i)), ~(-countOneBits(21838i)), (i32(-1i) * -46293i) << (firstLeadingBit(abs(u_input.c)) % 32u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(var_0, -731f)));
    let var_3 = Struct_2(Struct_1(firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(85751u, 48420u), 59234u)), arg_0.a.b), ~11049u, Struct_1(arg_0.c.a, firstTrailingBit(arg_0.c.b)));
    let var_4 = select(select(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, all(vec4<bool>(false, true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true))), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))), 14935u > u_input.c), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, all(vec3<bool>(true, false, true)), true, 4294967295u >= var_3.c.a.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), any(vec2<bool>(false, false))), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), false, true), vec4<bool>(true, false, true, all(vec4<bool>(true, true, true, true))))), vec4<bool>(true, true, true, true));
    return all(select(!var_4.zw, !(!(!var_4.yz)), select(var_4.wx, var_4.zy, vec2<bool>(!var_4.x, true))));
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = func_4(Struct_2(Struct_1(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, 16816u)), vec2<u32>(u_input.c, 0u) ^ vec2<u32>(u_input.c, 49122u), vec2<bool>(false, true)), reverseBits(vec4<i32>(2147483647i, u_input.d, 78105i, 2147483647i)) | abs(u_input.a)), ~((1u << (u_input.c % 32u)) >> (0u % 32u)), Struct_1(func_3(vec2<bool>(true, true), vec2<f32>(-303f, arg_0), -2147483647i) ^ vec2<u32>(u_input.c, u_input.c), ~(~u_input.a))));
    var var_1 = false;
    return -(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zw, vec2<i32>(u_input.b, 1i), u_input.a.yx), vec2<i32>(u_input.a.x, 17445i)), min(1i, u_input.b)) & u_input.a.x);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = !all(vec3<bool>(true, true, true));
    var var_1 = 0i;
    var var_2 = -func_2(arg_0.x);
    var var_3 = ~(max(min(~vec4<u32>(4294967295u, 0u, 14369u, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c) ^ vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u)), vec4<u32>(u_input.c & 78943u, abs(4987u), max(u_input.c, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(46889u, u_input.c, 28572u), vec3<u32>(4294967295u, u_input.c, 60876u)))) >> (~(vec4<u32>(59921u, 17940u, 1u, u_input.c) | select(vec4<u32>(u_input.c, 25810u, u_input.c, u_input.c), vec4<u32>(u_input.c, 1u, 1u, u_input.c), false)) % vec4<u32>(32u)));
    var_3 = max(abs(~vec4<u32>(func_3(vec2<bool>(var_0, true), vec2<f32>(arg_0.x, -987f), -2147483647i).x, abs(u_input.c), _wgslsmith_dot_vec2_u32(var_3.wy, var_3.wx), abs(var_3.x))), max(abs(~(vec4<u32>(var_3.x, 1u, u_input.c, 7084u) | vec4<u32>(85466u, u_input.c, 1u, 1u))), firstLeadingBit(vec4<u32>(u_input.c | 24460u, 4294967295u, 1u, ~1u))));
    return Struct_1(countOneBits(vec2<u32>(var_3.x >> (u_input.c % 32u), u_input.c) << (var_3.wz % vec2<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(38330i, _wgslsmith_mult_i32(-1i, 2147483647i << (u_input.c % 32u))), 1i << (_wgslsmith_div_u32(31817u, 44837u) % 32u), (i32(-1i) * -u_input.b) & _wgslsmith_dot_vec4_i32(u_input.a, ~u_input.a), -49659i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-292f, 262f))))), ~_wgslsmith_sub_u32(countOneBits(u_input.c), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(51976u, u_input.c)))), func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(742f, -1606f), vec2<f32>(-1000f, -1000f)))), vec2<f32>(1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-16891i, -u_input.b, -_wgslsmith_div_i32(0i, 2977i) << (u_input.c % 32u)), abs(vec2<u32>(var_0.c.a.x, 0u)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-534f * -563f), _wgslsmith_f_op_f32(-282f * 637f), _wgslsmith_f_op_f32(sign(213f))) + vec3<f32>(1f, 1f, 1f)))));
}

