struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = -396f;
    var var_1 = arg_1.a;
    let var_2 = 1162f;
    let var_3 = arg_1;
    let var_4 = ~vec4<u32>(1u, ~37501u & arg_0.a, u_input.c.x, ~(~arg_0.a));
    return var_2;
}

fn func_4(arg_0: f32) -> vec4<u32> {
    var var_0 = vec2<i32>(1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(min(-25668i, -28809i), -1i >> (u_input.a.x % 32u), _wgslsmith_clamp_i32(13258i, 0i, 55975i), -1i)), firstTrailingBit(vec4<i32>(0i << (u_input.a.x % 32u), _wgslsmith_mod_i32(0i, -3889i), _wgslsmith_clamp_i32(51558i, 67041i, 57424i), reverseBits(3219i)))));
    let var_1 = -(max(var_0.x, _wgslsmith_add_i32(var_0.x, 1i)) | abs(-1i));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(~86412u, ~(-vec3<i32>(1i, 0i, -15393i))), Struct_1(u_input.a.x, vec3<i32>(reverseBits(-34138i), firstLeadingBit(27385i), ~1i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1086f, _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(floor(arg_0)))))));
    var var_3 = Struct_1(min(~u_input.a.x, 4294967295u), ~(~firstTrailingBit(firstTrailingBit(vec3<i32>(var_0.x, -1i, 4274i)))));
    let var_4 = 4294967295u;
    return u_input.b;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = arg_0;
    var_0 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a), abs(~vec2<u32>(10425u, 21528u)))), firstTrailingBit(vec3<i32>(1i, -_wgslsmith_mod_i32(57358i, -54635i), arg_0.b.x)));
    var var_1 = _wgslsmith_sub_vec3_i32(~(-arg_0.b), ~(~var_0.b)) >> (min(u_input.b.xwz, ~(~vec3<u32>(1u, 0u, 8322u))) % vec3<u32>(32u));
    let var_2 = ~func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(1u, arg_0.b), arg_0)))) >> (~vec4<u32>(1u, _wgslsmith_div_u32(firstTrailingBit(u_input.a.x), min(arg_0.a, var_0.a)), ~(~4294967295u), max(firstLeadingBit(4294967295u), arg_0.a)) % vec4<u32>(32u));
    let var_3 = arg_0;
    return -1538f;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<i32>) -> f32 {
    let var_0 = select(arg_0.zy, vec2<bool>(true, arg_0.x), arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2009f * 1688f) - 189f) - _wgslsmith_f_op_f32(func_2(Struct_1(43352u, vec3<i32>(-40516i, -1i, -2147483647i)), true))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(292f, 403f))))));
    var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-190f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -406f)), 1773f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-815f, -265f, 799f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1348f, -396f, -373f), vec3<f32>(1093f, 854f, -615f)), _wgslsmith_div_vec3_f32(vec3<f32>(-225f, -2015f, 1444f), vec3<f32>(-813f, 686f, 202f)), !arg_0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(492f, -180f, 407f)) - vec3<f32>(2132f, -1056f, 781f)))));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-160f, _wgslsmith_f_op_f32(385f * var_2.x), var_2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * -714f), _wgslsmith_f_op_f32(-1000f * var_2.x), _wgslsmith_f_op_f32(1632f - -1152f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 287f, var_2.x) - vec3<f32>(var_2.x, var_2.x, -1028f)))), (arg_2.x != 10340i) && (arg_0.x | arg_0.x))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-835f, 979f, var_2.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x))), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, 886f, var_2.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<f32>(var_2.x, -216f, 665f))))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(0u, vec3<i32>(abs(-2147483647i), _wgslsmith_mod_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-50800i, 34396i, 2147483647i, -6127i), vec4<i32>(42015i, -11793i, 2594i, 4795i))), -17278i), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(-36167i, -52768i), firstLeadingBit(18031i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-757f, 1208f)), -1302f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -418f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -1030f), _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), u_input.b.yy, -var_0.b.yz)))));
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(~1u, _wgslsmith_mult_u32(10938u, var_0.a), var_0.a, min(u_input.c.x, u_input.a.x))), reverseBits(var_0.b | var_0.b));
    let var_3 = var_0;
    let var_4 = (max(vec4<i32>(var_3.b.x, var_2.b.x, 24805i, 0i) & _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.b.x, -2147483647i, var_2.b.x, var_2.b.x), vec4<i32>(7451i, var_0.b.x, -1i, 1i)), ~(vec4<i32>(-2147483647i, var_2.b.x, var_2.b.x, var_3.b.x) | vec4<i32>(var_2.b.x, -19605i, var_2.b.x, var_2.b.x))) << (countOneBits(u_input.b) % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u));
    let var_5 = abs(u_input.a);
    var var_6 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, vec3<i32>(var_0.b.x, -68073i, var_2.b.x)), Struct_1(21790u, vec3<i32>(-21503i, var_4.x, var_4.x)))), _wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, true), firstTrailingBit(vec2<u32>(1u, 6209u)), var_4.xw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) * var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zx, ~firstLeadingBit(u_input.c) << (func_4(653f).wyw % vec3<u32>(32u)), vec2<u32>(~reverseBits(6697u), 4294967295u), vec2<u32>(u_input.a.x, ~(~6377u)), u_input.b.yxy);
}

