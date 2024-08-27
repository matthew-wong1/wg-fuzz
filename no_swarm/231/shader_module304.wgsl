struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(vec2<u32>(u_input.a.x, 1517u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, 282f, -721f, -817f) * arg_3.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.b)))), arg_3, Struct_1(vec2<u32>(1u, ~0u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(269f, arg_3.b.x, -1373f, -508f)))))), u_input.b.x);
    let var_1 = vec4<bool>(any(vec4<bool>(true, true, true, true)), 1703f <= _wgslsmith_f_op_f32(arg_1.b.x + var_0.c.b.x), _wgslsmith_f_op_f32(-arg_3.b.x) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) * arg_3.b.x), true);
    return vec2<bool>(_wgslsmith_clamp_u32(firstTrailingBit(15023u), ~4294967295u, _wgslsmith_clamp_u32(arg_2.x, _wgslsmith_mod_u32(arg_2.x, 6236u), arg_3.a.x)) != 4294967295u, !(var_1.x && var_1.x));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec3<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(sign(-1333f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-162f * -1944f), _wgslsmith_f_op_f32(f32(-1f) * -638f))) - 386f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(949f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(958f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(594f * -622f)))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, 1516f), -309f, _wgslsmith_div_f32(-1428f, 1505f), 969f)))));
    let var_1 = Struct_2(Struct_1(max(reverseBits(u_input.a.zy), min(~vec2<u32>(u_input.c.x, u_input.a.x), abs(u_input.a.yz))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2270f, var_0.x, 777f, var_0.x), vec4<f32>(114f, var_0.x, 706f, var_0.x), arg_1.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(257f, 1226f, var_0.x, -1459f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(265f, var_0.x, var_0.x, var_0.x) * vec4<f32>(var_0.x, 396f, var_0.x, 498f)))))), Struct_1(u_input.a.zz, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1478f, 1350f, 272f)))))), Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 4294967295u), u_input.c) << (u_input.c % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -161f, var_0.x, 1825f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(407f, -579f, var_0.x, var_0.x) - vec4<f32>(var_0.x, -1551f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, -748f, var_0.x), vec4<f32>(1737f, var_0.x, var_0.x, var_0.x))))))), abs(u_input.b.x));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.a.b)));
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_2.c.b)))))));
    return arg_1;
}

fn func_1() -> i32 {
    let var_0 = vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_add_i32(32396i, 19092i), ~(-39049i), -53913i), reverseBits(vec4<i32>(10042i, u_input.e, u_input.b.x, u_input.e))), vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(u_input.e, 1i, u_input.b.x, 7777i))), -2147483647i, u_input.e);
    let var_1 = true;
    var var_2 = vec2<bool>(any(func_3(var_0.yy, !func_2(0i, Struct_1(u_input.a.yw, vec4<f32>(-1384f, 386f, 1937f, 1000f)), vec2<u32>(9017u, 25310u), Struct_1(vec2<u32>(u_input.a.x, 0u), vec4<f32>(861f, 585f, -932f, 105f))), select(select(vec3<bool>(false, true, var_1), vec3<bool>(var_1, var_1, var_1), var_1), vec3<bool>(var_1, false, var_1), !vec3<bool>(var_1, false, var_1)))), var_1);
    var var_3 = vec2<bool>(true, !var_1);
    return select(_wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.e, _wgslsmith_sub_i32(var_0.x, -4807i), var_0.x & -2147483647i, -2147483647i), ~vec4<i32>(var_0.x, u_input.b.x, 2147483647i, u_input.e)), -(u_input.b.x << (countOneBits(0u) % 32u)), true) ^ (~(~_wgslsmith_mod_i32(var_0.x, u_input.e)) << (~_wgslsmith_add_u32(0u, ~4294967295u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) << (select(u_input.a.x, 1u, false) % 32u), ~u_input.a.x | (1u ^ u_input.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) * _wgslsmith_f_op_f32(-146f + 1567f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1103f)) + 209f), _wgslsmith_div_f32(859f, -978f), -909f) - vec4<f32>(_wgslsmith_f_op_f32(-162f * _wgslsmith_div_f32(1000f, 356f)), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(153f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1062f * 1000f), _wgslsmith_f_op_f32(1022f * -103f)))));
    var var_1 = firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.e, -2147483647i, u_input.b.x >> (u_input.d % 32u), 1i), select(vec4<i32>(i32(-1i) * -1i, func_1(), 2147483647i, u_input.b.x), countOneBits(vec4<i32>(u_input.e, -5797i, u_input.b.x, u_input.e)), true)));
    var var_2 = Struct_1(~vec2<u32>(4294967295u, var_0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -454f, var_0.b.x, var_0.b.x) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, var_0.b.x, 543f, -706f))))));
    let var_3 = Struct_2(Struct_1(firstTrailingBit(abs(_wgslsmith_sub_vec2_u32(u_input.a.zz, vec2<u32>(1u, 4294967295u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-381f)) + var_2.b.x), var_0.b.x, var_0.b.x, -752f)), var_0, var_0, -max(~u_input.b.x, func_1()));
    var var_4 = var_3.c.b.zwy;
    var_4 = var_0.b.wzx;
    let var_5 = Struct_1(vec2<u32>(15383u, firstLeadingBit(var_2.a.x)) | var_3.a.a, var_3.c.b);
    var var_6 = -17916i;
    var var_7 = -(~(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1638f), _wgslsmith_f_op_f32(-204f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, var_2.b.x))))), _wgslsmith_mult_u32(abs(27485u), 19354u));
}

