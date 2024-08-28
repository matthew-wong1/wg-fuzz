struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(~vec2<u32>(u_input.a.x, 10523u ^ arg_0.b)), 1u);
    var var_1 = false;
    var_1 = true;
    var var_2 = _wgslsmith_sub_u32(~(~1u), ~min(1743u, u_input.a.x));
    var var_3 = var_0;
    return var_0;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1193f)))) + arg_0), arg_0));
    let var_1 = func_2(arg_1);
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1679f)) + _wgslsmith_f_op_f32(-arg_0)), -843f), vec2<f32>(1838f, _wgslsmith_f_op_f32(f32(-1f) * -1037f)))));
    let var_2 = _wgslsmith_div_i32(arg_2.x, 2147483647i) >> (4294967295u % 32u);
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-394f))), _wgslsmith_f_op_f32(select(var_0.x, -1091f, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2253f, 1857f))))))));
    return arg_1.a;
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-657f, -1137f, true)), _wgslsmith_f_op_f32(select(-280f, 239f, false))))) - -803f)));
    var var_1 = func_2(Struct_1(u_input.a.xy, u_input.a.x));
    var_1 = Struct_1(func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1553f))), func_2(Struct_1(u_input.a.wx, 2943u)), vec2<i32>(u_input.b.x, -1i) | -vec2<i32>(-2147483647i, u_input.b.x), _wgslsmith_sub_i32(max(u_input.b.x, u_input.b.x), firstTrailingBit(-1i))) >> (vec2<u32>(~_wgslsmith_sub_u32(var_1.a.x, var_1.b), ~(~4294967295u)) % vec2<u32>(32u)), ~var_1.a.x);
    let var_2 = _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(var_1.b, _wgslsmith_mod_u32(~0u, 78196u), firstTrailingBit(var_1.b), var_1.b)), ~reverseBits(vec4<u32>(_wgslsmith_mod_u32(var_1.b, var_1.a.x), _wgslsmith_mult_u32(4294967295u, u_input.a.x), u_input.a.x, u_input.a.x)));
    var_1 = Struct_1(var_1.a, var_2.x);
    return vec2<u32>(var_2.x, 1u) << (vec2<u32>(~firstLeadingBit(min(18320u, 6736u)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1.a.x, var_1.b), firstLeadingBit(1u), 33652u) << ((_wgslsmith_clamp_u32(0u, 4294967295u, u_input.a.x) >> (~1u % 32u)) % 32u)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-953f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-773f)))), -1035f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(759f - -1751f)))), -369f);
    let var_1 = vec4<i32>(~_wgslsmith_div_i32(abs(~41865i), u_input.b.x), -38449i, 29276i, u_input.b.x);
    var var_2 = Struct_1(func_1(), _wgslsmith_dot_vec3_u32(u_input.a.zxw ^ abs(~u_input.a.zzy), vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 16102u), 0u, abs(_wgslsmith_sub_u32(2823u, 1u)))));
    var var_3 = vec3<i32>(~min(u_input.b.x, _wgslsmith_clamp_i32(var_1.x, max(u_input.b.x, -34544i), var_1.x)), firstLeadingBit(_wgslsmith_mult_i32(~(u_input.b.x << (u_input.a.x % 32u)), abs(-2147483647i))), ~select(~u_input.b.x, ~firstTrailingBit(u_input.b.x), true));
    var_3 = reverseBits(vec3<i32>(u_input.b.x, countOneBits(var_1.x), firstTrailingBit(-1i) ^ 0i));
    var_3 = _wgslsmith_sub_vec3_i32(abs(var_1.wyw), vec3<i32>(-1i) * -(~vec3<i32>(-2147483647i, 4342i, -505i) >> ((vec3<u32>(47528u, 4294967295u, 4294967295u) << (u_input.a.xzx % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_4 = func_2(func_2(Struct_1(select(u_input.a.wy, ~u_input.a.yw, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), func_2(func_2(Struct_1(vec2<u32>(u_input.a.x, u_input.a.x), 1u))).a.x)));
    var var_5 = func_2(func_2(func_2(Struct_1(vec2<u32>(var_4.b, 5936u), var_4.b))));
    let var_6 = _wgslsmith_mult_i32(-7136i, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -943f)))), 750f, -482f, _wgslsmith_f_op_f32(-var_0.x)), var_1, abs(select(~u_input.a.wwy ^ ~vec3<u32>(4294967295u, 4294967295u, var_5.b), ~(~u_input.a.zyy), any(vec2<bool>(false, false)))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(-203f))));
}

