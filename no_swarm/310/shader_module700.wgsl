struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    return vec4<bool>(true, !arg_0.a.x, true, any(arg_0.a.zy) || arg_0.a.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(_wgslsmith_div_f32(-445f, arg_1.b.x), -234f));
    var var_1 = arg_1.a.wyz;
    let var_2 = select(arg_1.a.xx, !arg_1.a.zz, var_1.x);
    var_1 = arg_1.a.wwy;
    let var_3 = Struct_1(vec4<bool>(false, var_1.x, true, var_2.x | !(arg_2 > -31276i)), arg_1.b, vec2<i32>(max(firstLeadingBit(1i) << (0u % 32u), firstTrailingBit(arg_2) ^ arg_1.c.x), 1i));
    return var_3.c.x;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1069f, 1109f, false)), _wgslsmith_div_f32(-1498f, 1656f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1510f * 1000f)), -1047f, 1f))) - vec4<f32>(1783f, -420f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(1519f - 110f)))));
    let var_1 = !(!(!(!any(vec3<bool>(false, true, false)))));
    let var_2 = -1i;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.yy, vec2<f32>(341f, 161f)))) + _wgslsmith_f_op_vec2_f32(-var_0.xy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -363f) - _wgslsmith_f_op_vec2_f32(var_0.zz - vec2<f32>(var_0.x, 848f))))));
    var var_4 = vec3<i32>(abs(_wgslsmith_mod_i32(0i, arg_2.x)), arg_1.x, _wgslsmith_div_i32(22584i, firstTrailingBit(-53898i << (u_input.a.x % 32u)))) >> ((vec3<u32>(~u_input.a.x, max(u_input.c, ~45489u), ~u_input.b.x) ^ vec3<u32>(u_input.a.x, u_input.c << (~0u % 32u), ~(~6042u))) % vec3<u32>(32u));
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 159f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(970f + var_3.x))))), Struct_1(select(select(vec4<bool>(false, var_1, false, true), vec4<bool>(var_1, var_1, var_1, false), all(vec4<bool>(var_1, var_1, true, var_1))), func_3(Struct_1(vec4<bool>(var_1, false, var_1, var_1), vec2<f32>(var_0.x, -3204f), vec2<i32>(-1i, 22299i))), func_3(Struct_1(vec4<bool>(false, var_1, var_1, var_1), vec2<f32>(-1278f, var_3.x), arg_1.ww))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f))), -(_wgslsmith_add_vec2_i32(arg_1.wy, arg_1.yy) >> (firstTrailingBit(vec2<u32>(u_input.a.x, 15261u)) % vec2<u32>(32u)))), var_2 & (countOneBits(var_2) & firstLeadingBit(~arg_0)), select(select(any(vec4<bool>(var_1, false, false, true)), any(vec2<bool>(var_1, var_1)), select(false, true, true)) | any(!vec2<bool>(true, var_1)), false, var_1));
}

fn func_1(arg_0: vec2<i32>) -> vec2<i32> {
    let var_0 = ~(~(i32(-1i) * -(arg_0.x << (49846u % 32u))));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(-2147483647i, var_0), 32240i, min(2147483647i, _wgslsmith_sub_i32(arg_0.x, _wgslsmith_mult_i32(7953i, ~arg_0.x))), var_0);
    var_1 = -max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(46713i, 3943i, -1i, 2147483647i), select(vec4<i32>(-85584i, 1i, 0i, -45440i), vec4<i32>(var_1.x, var_1.x, 48111i, var_0), true), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(16498i, -34285i, 23657i, arg_0.x), vec4<i32>(arg_0.x, 15726i, var_0, var_1.x), vec4<i32>(arg_0.x, var_1.x, -2147483647i, arg_0.x)), reverseBits(vec4<i32>(-2147483647i, arg_0.x, arg_0.x, var_1.x)))), vec4<i32>(23445i, var_0, var_0, var_1.x) << (u_input.a % vec4<u32>(32u)));
    var_1 = max(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 21412i, _wgslsmith_mod_i32(var_1.x, var_1.x) | func_2(-2147483647i, vec4<i32>(var_1.x, var_0, -37846i, var_1.x), vec4<i32>(arg_0.x, arg_0.x, -10614i, var_0)), min(-42629i, 25144i)), select(select(-vec4<i32>(var_1.x, 2147483647i, -2264i, var_1.x), vec4<i32>(arg_0.x, 63766i, -2147483647i, arg_0.x), true), firstLeadingBit(-vec4<i32>(2147483647i, var_0, 5271i, var_0)), (arg_0.x >> (u_input.b.x % 32u)) == ~arg_0.x)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(var_0, -16881i, var_1.x, arg_0.x)), vec4<i32>(var_0, var_1.x, arg_0.x, var_1.x) & vec4<i32>(var_0, -1i, 2147483647i, var_1.x)) & (vec4<i32>(var_1.x, var_1.x, arg_0.x, var_0) ^ ~vec4<i32>(4951i, var_0, 1i, -2147483647i)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_1.x, 23113i, -1i) ^ vec4<i32>(arg_0.x, 60080i, var_1.x, arg_0.x), vec4<i32>(var_0, var_1.x, var_1.x, var_1.x) ^ vec4<i32>(-43170i, var_1.x, var_0, -2147483647i))));
    var_1 = vec4<i32>(i32(-1i) * -var_1.x, 1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 8017i, var_1.x), ~vec3<i32>(var_0, var_1.x, 2147483647i)), -13849i) & vec4<i32>(-_wgslsmith_dot_vec4_i32(-vec4<i32>(65517i, var_1.x, arg_0.x, -6578i), vec4<i32>(2147483647i, -51389i, 13145i, arg_0.x)), -(~(~var_1.x)), firstTrailingBit(22050i), 2147483647i);
    return ~(~var_1.zy);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = vec2<f32>(arg_0.b.x, 733f);
    var var_1 = vec3<i32>(arg_0.c.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, arg_0.c.x, arg_0.c.x), -vec3<i32>(arg_0.c.x, 29355i, arg_0.c.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(27523i, 1i, arg_0.c.x, arg_0.c.x), vec4<i32>(arg_0.c.x, 2710i, 54741i, -2147483647i))) ^ _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), vec3<i32>(arg_0.c.x, -1i, 1i), false) ^ vec3<i32>(arg_0.c.x, -9792i, 10221i), ~vec3<i32>(arg_0.c.x, 41229i, arg_0.c.x)), _wgslsmith_div_i32(_wgslsmith_sub_i32(func_2(1i, ~vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x) | vec4<i32>(arg_0.c.x, arg_0.c.x, 0i, 2147483647i)), arg_0.c.x << (~54496u % 32u)), 1i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-686f, arg_1.x) + arg_1.x))));
    var var_3 = arg_0;
    var_1 = vec3<i32>(~(~(i32(-1i) * -var_1.x)), _wgslsmith_add_i32(0i, 12854i), var_1.x);
    return Struct_1(!arg_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(1608f, arg_1.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(var_3.b.x, -865f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2506f, var_3.b.x), arg_1))))), firstTrailingBit(vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -2147483647i, arg_0.c.x), vec3<i32>(2147483647i, 0i, -12261i))), 47245i | ~var_3.c.x)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.b.x, -380f, arg_0.b.x))) + vec3<f32>(_wgslsmith_f_op_f32(-965f - arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -282f), _wgslsmith_div_f32(-1725f, arg_0.b.x))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x) - vec3<f32>(-1000f, arg_0.b.x, arg_0.b.x)), vec3<f32>(115f, 716f, arg_0.b.x)))));
    let var_1 = (!arg_0.a.x | (~(~3735u) >= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 0u), reverseBits(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))))) | false;
    var var_2 = arg_0;
    let var_3 = arg_1;
    return _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(~(-func_5(Struct_1(var_3.a, var_3.b, vec2<i32>(-2147483647i, arg_1.c.x)), vec2<f32>(-1319f, 149f), false).c.x), var_3.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(Struct_1(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), vec2<f32>(1f, 1f), func_1(vec2<i32>(22777i, 0i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-482f, -273f), vec2<f32>(1072f, -1596f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-540f, -724f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(563f, 182f))), true), func_5(func_5(func_5(func_5(Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(1000f, -406f), vec2<i32>(-16568i, 5587i)), vec2<f32>(1467f, -1884f), false), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1857f, -1285f), vec2<f32>(276f, 419f))), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-997f, 459f) - vec2<f32>(721f, -1176f))), true), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1741f, 487f)), -719f), 2151f), any(!func_5(Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(-603f, -1019f), vec2<i32>(-1i, -1i)), vec2<f32>(519f, 826f), false).a.yyz)), firstTrailingBit(countOneBits((vec2<u32>(24760u, u_input.c) ^ u_input.a.xy) ^ vec2<u32>(0u, u_input.b.x))));
    var var_1 = -912f;
    let var_2 = func_5(func_5(func_5(func_5(func_5(Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(758f, 788f), vec2<i32>(64454i, -2147483647i)), vec2<f32>(-747f, -251f), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1318f, -888f) - vec2<f32>(1164f, -1163f)), select(true, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-824f, 224f)), all(vec4<bool>(true, true, true, true)) == true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1178f, -698f)) - vec2<f32>(973f, -163f))), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(410f - 229f), 361f)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_2.c));
}

