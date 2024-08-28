struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = max(~(-u_input.a), firstTrailingBit(abs(~u_input.d)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-142f)), _wgslsmith_f_op_f32(f32(-1f) * -454f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-254f))), true)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-722f - 1f)))));
    let var_2 = !all(!vec4<bool>(true, all(vec4<bool>(true, true, true, false)), true, true));
    return 0u;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> bool {
    let var_0 = Struct_3(arg_0, Struct_1(vec3<bool>(func_3() < countOneBits(arg_2.x), true, false)), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f))))), vec4<u32>(u_input.c.x, ~arg_2.x, ~reverseBits(reverseBits(arg_2.x)), firstTrailingBit(~(~1u))), vec3<u32>(4294967295u, ~(~(~1u)), 0u));
    let var_1 = var_0;
    let var_2 = var_1;
    var var_3 = arg_2.x;
    let var_4 = var_0.d.xz;
    return all(var_1.b.a.zy);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(arg_1.b.a);
    let var_1 = Struct_2(-356f);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1075f))));
    var var_3 = select(select(select(select(vec4<bool>(false, var_0.a.x, arg_1.b.a.x, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, true), vec4<bool>(true, arg_1.a, true, true)), vec4<bool>(false, any(var_0.a.zx), false | arg_1.b.a.x, false), vec4<bool>(select(false, true, arg_1.a), arg_1.b.a.x, true, true)), !(!select(vec4<bool>(false, arg_1.a, arg_1.a, true), vec4<bool>(var_0.a.x, false, var_0.a.x, arg_1.b.a.x), vec4<bool>(arg_1.b.a.x, true, true, var_0.a.x))), select(vec4<bool>(-164f >= var_2.a, arg_1.a, true, 246f > arg_0.x), select(vec4<bool>(arg_1.b.a.x, var_0.a.x, false, var_0.a.x), !vec4<bool>(false, true, arg_1.b.a.x, true), true), !(var_0.a.x | arg_1.b.a.x))), select(vec4<bool>(true, func_2(var_0.a.x, reverseBits(vec2<i32>(u_input.d, 2147483647i)), ~vec4<u32>(39730u, arg_1.e.x, arg_1.d.x, arg_1.e.x), vec4<bool>(true, arg_1.b.a.x, arg_1.b.a.x, var_0.a.x)), arg_1.a, true), !vec4<bool>(true, true, false | var_0.a.x, any(vec2<bool>(true, false))), !(var_1.a <= _wgslsmith_div_f32(var_1.a, 261f))), select(select(select(vec4<bool>(var_0.a.x, true, true, arg_1.b.a.x), !vec4<bool>(arg_1.a, true, false, var_0.a.x), true || arg_1.a), select(select(vec4<bool>(var_0.a.x, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec4<bool>(true, true, arg_1.a, var_0.a.x)), var_0.a.x), vec4<bool>(true, true, reverseBits(arg_1.d.x) >= 9948u, true), !select(!vec4<bool>(false, true, false, arg_1.a), !vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), var_0.a.x && true)));
    var var_4 = any(var_3.yx);
    return Struct_1(vec3<bool>(49u > _wgslsmith_div_u32(select(arg_1.d.x, 0u, true), _wgslsmith_sub_u32(u_input.c.x, arg_1.d.x)), any(var_0.a.zy), any(select(vec4<bool>(true, false, true, var_3.x), !vec4<bool>(true, false, false, var_0.a.x), select(vec4<bool>(true, false, true, arg_1.b.a.x), vec4<bool>(arg_1.a, var_3.x, arg_1.b.a.x, var_0.a.x), vec4<bool>(var_0.a.x, arg_1.b.a.x, false, var_3.x))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = !vec4<bool>(!any(!arg_1.a), true, true, any(!select(vec4<bool>(true, true, arg_1.a.x, false), vec4<bool>(false, true, true, false), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true))));
    var var_1 = u_input.b.x;
    var var_2 = ~_wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(u_input.b.yy << (u_input.c.yz % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(40078i, 7531i)))), ~(~(arg_0.yx ^ vec2<i32>(1i, -2147483647i))));
    var var_3 = arg_1;
    var_2 = vec2<i32>(u_input.a, 0i);
    return func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) + _wgslsmith_f_op_f32(step(-1672f, _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1227f)))), _wgslsmith_f_op_f32(f32(-1f) * -156f), -1000f), Struct_3(4294967295u > _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.x), Struct_1(var_3.a), Struct_2(-1073f), ~(~vec4<u32>(u_input.c.x, u_input.e.x, u_input.c.x, u_input.e.x)) ^ u_input.c, u_input.c.www)).a.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: bool, arg_3: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x))), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), 323f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-794f, -983f, arg_0.x, -682f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -458f, arg_0.x) + vec4<f32>(117f, arg_0.x, arg_0.x, arg_0.x)))))), true)));
    let var_1 = Struct_3(!(_wgslsmith_clamp_u32(4294967295u, 65354u, 20952u) != ~arg_3) | false, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) + _wgslsmith_f_op_vec4_f32(-var_0)) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1249f, _wgslsmith_div_f32(var_0.x, arg_0.x), 189f)), Struct_3(_wgslsmith_f_op_f32(-arg_0.x) <= arg_0.x, func_1(vec4<f32>(1000f, var_0.x, -169f, arg_0.x), Struct_3(false, Struct_1(vec3<bool>(arg_2, false, arg_2)), Struct_2(1217f), vec4<u32>(63452u, 47876u, u_input.e.x, u_input.e.x), u_input.c.yzx)), Struct_2(var_0.x), ~(~u_input.c), select(_wgslsmith_clamp_vec3_u32(u_input.c.zxw, u_input.c.zyz, u_input.c.xzy), vec3<u32>(u_input.c.x, 35844u, 1u), !arg_2))), Struct_2(_wgslsmith_f_op_f32(trunc(arg_0.x))), vec4<u32>(abs(firstTrailingBit(29822u)), select(select(u_input.c.x, arg_3 >> (u_input.c.x % 32u), !arg_2), _wgslsmith_mult_u32(1u, firstTrailingBit(u_input.e.x)), !(!arg_2)), firstTrailingBit(reverseBits(14762u)), 30523u), _wgslsmith_add_vec3_u32(u_input.c.zyz, ~(~vec3<u32>(102165u, 4294967295u, u_input.c.x)) | ((vec3<u32>(0u, 1u, u_input.e.x) ^ u_input.c.yzw) ^ ~vec3<u32>(246u, u_input.c.x, arg_3))));
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-211f + -357f), -166f, _wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_f_op_f32(min(624f, 111f))))), var_1);
    var_2 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-352f, arg_0.x, arg_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(abs(var_0)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, 1437f, false)), 1f, -158f, arg_0.x)))), var_1);
    var_2 = Struct_1(!(!select(var_2.a, var_1.b.a, select(var_2.a, var_1.b.a, arg_2))));
    return StorageBuffer(firstTrailingBit(~_wgslsmith_sub_vec3_u32(u_input.c.wyy, vec3<u32>(1u, var_1.e.x, 4294967295u)) ^ vec3<u32>(var_1.d.x, ~108826u, 9715u << (arg_3 % 32u))), _wgslsmith_add_i32(arg_1.x, 1i), arg_0.zz, _wgslsmith_mult_u32(~arg_3, _wgslsmith_dot_vec3_u32(var_1.d.zxy, ~u_input.c.xyy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.b.x, firstLeadingBit(firstLeadingBit(-2147483647i)));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(665f, -1141f, -744f) * _wgslsmith_div_vec3_f32(vec3<f32>(887f, -2828f, -520f), vec3<f32>(412f, 683f, 1709f))))), vec3<f32>(1f, _wgslsmith_div_f32(-1000f, -484f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(757f * 1000f) * _wgslsmith_div_f32(1000f, 984f))), vec3<bool>(func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 27321i, 6774i, 10923i), vec4<i32>(var_0, u_input.d, u_input.a, -8858i)), func_1(vec4<f32>(-616f, -468f, -1000f, 1280f), Struct_3(false, Struct_1(vec3<bool>(true, true, true)), Struct_2(629f), vec4<u32>(u_input.c.x, 1u, 6679u, u_input.e.x), vec3<u32>(u_input.e.x, 17477u, u_input.c.x))), _wgslsmith_div_f32(188f, 184f)), false, true))), _wgslsmith_clamp_vec2_i32(u_input.b.yy >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), min(vec2<i32>(0i, u_input.d) ^ vec2<i32>(15649i, u_input.b.x), max(vec2<i32>(u_input.b.x, 59399i), u_input.b.zz)) & vec2<i32>(abs(22501i), u_input.a), u_input.b.yz), false, abs(_wgslsmith_sub_u32(u_input.c.x, ~u_input.e.x) >> ((max(u_input.c.x, u_input.e.x) << (_wgslsmith_dot_vec3_u32(u_input.c.zwy, vec3<u32>(u_input.c.x, 4294967295u, 31373u)) % 32u)) % 32u)));
}

