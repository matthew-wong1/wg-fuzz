struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> f32 {
    let var_0 = -1470f;
    var var_1 = Struct_1(_wgslsmith_div_vec2_i32(u_input.a, abs(countOneBits(select(u_input.a, vec2<i32>(u_input.a.x, arg_1), arg_0.zx)))), -1213f, !arg_0.yy);
    var var_2 = Struct_4(!vec3<bool>(true, all(!vec3<bool>(false, var_1.c.x, true)), var_1.c.x), Struct_3(_wgslsmith_f_op_f32(floor(var_1.b)), select(vec4<bool>(var_1.c.x, all(var_1.c), false, select(var_1.c.x, false, false)), select(select(vec4<bool>(var_1.c.x, true, arg_0.x, arg_0.x), vec4<bool>(false, false, true, false), vec4<bool>(false, arg_0.x, false, arg_0.x)), vec4<bool>(var_1.c.x, false, false, false), vec4<bool>(true, true, arg_0.x, false)), any(arg_0.zx)), Struct_1(vec2<i32>(select(var_1.a.x, 1i, var_1.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 37063i, var_1.a.x), vec3<i32>(u_input.a.x, -27128i, u_input.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))), var_1.c)), Struct_2(Struct_1(vec2<i32>(_wgslsmith_mult_i32(var_1.a.x, var_1.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, -18389i), vec3<i32>(var_1.a.x, -2147483647i, arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(trunc(var_0))), vec2<bool>(true, true)), Struct_1(abs(abs(u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(select(var_0, var_1.b, arg_0.x))), vec2<bool>(any(vec2<bool>(false, var_1.c.x)), any(vec4<bool>(var_1.c.x, var_1.c.x, true, false)))), ~(~vec2<u32>(44780u, 11116u)), Struct_1(_wgslsmith_sub_vec2_i32(select(var_1.a, u_input.a, var_1.c), ~vec2<i32>(u_input.b, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b)) + var_1.b), select(arg_0.zy, select(var_1.c, vec2<bool>(var_1.c.x, true), vec2<bool>(false, arg_0.x)), vec2<bool>(var_1.c.x, arg_0.x))), Struct_1(-_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(var_1.a.x, 0i), vec2<i32>(u_input.a.x, 18269i)), -1367f, !vec2<bool>(true, arg_0.x))), Struct_1(vec2<i32>(-1i) * -reverseBits(vec2<i32>(1i, 5968i)), var_0, vec2<bool>(any(!vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x)), var_1.c.x)));
    var var_3 = Struct_4(select(var_2.b.b.yxy, !arg_0, select(vec3<bool>(any(vec2<bool>(var_1.c.x, false)), select(var_1.c.x, var_2.b.b.x, var_2.d.c.x), false), vec3<bool>(true, var_2.c.e.c.x, any(vec4<bool>(true, var_1.c.x, var_1.c.x, arg_0.x))), !var_2.a)), var_2.b, Struct_2(var_2.c.a, Struct_1(vec2<i32>(var_1.a.x, arg_1) | _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_2.c.b.a.x), vec2<i32>(arg_1, var_1.a.x)), var_1.b, arg_0.yy), reverseBits(~var_2.c.c), var_2.b.c, Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 0i, var_2.d.a.x), vec3<i32>(var_2.c.e.a.x, arg_1, 0i)), -2147483647i), _wgslsmith_div_f32(var_2.d.b, _wgslsmith_f_op_f32(abs(1000f))), vec2<bool>(-151f != var_2.b.c.b, true))), Struct_1(_wgslsmith_clamp_vec2_i32(u_input.a, firstTrailingBit(~var_1.a), vec2<i32>(i32(-1i) * -15393i, firstTrailingBit(0i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 - -1000f), _wgslsmith_div_f32(-1000f, -132f))))), !vec2<bool>(true, var_2.a.x)));
    var_3 = Struct_4(vec3<bool>(any(var_2.b.b), any(vec4<bool>(arg_1 > var_1.a.x, select(true, false, false), true, select(false, var_3.c.b.c.x, true))), all(vec2<bool>(var_3.b.c.c.x, all(vec3<bool>(var_1.c.x, var_3.a.x, false))))), Struct_3(-351f, vec4<bool>(true, true || select(var_1.c.x, var_2.c.b.c.x, true), var_1.c.x, var_1.c.x), Struct_1(countOneBits(vec2<i32>(-1i, 0i)) & var_1.a, _wgslsmith_f_op_f32(min(var_0, var_3.b.a)), !select(var_1.c, vec2<bool>(false, true), vec2<bool>(false, false)))), var_2.c, var_3.c.b);
    return _wgslsmith_f_op_f32(543f + _wgslsmith_f_op_f32(min(-1056f, _wgslsmith_div_f32(1535f, _wgslsmith_div_f32(-810f, _wgslsmith_f_op_f32(f32(-1f) * -1133f))))));
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-595f, _wgslsmith_f_op_f32(-arg_1.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1346f)) - _wgslsmith_f_op_f32(trunc(141f))))));
    let var_2 = arg_1;
    let var_3 = var_2;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(676f - 1000f), true));
    return vec2<bool>(arg_1.b.x, any(var_3.b.zwy));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b), !vec4<bool>(arg_0.b > arg_0.b, true, true, all(!vec4<bool>(arg_0.c.x, arg_1.x, arg_0.c.x, arg_0.c.x))), Struct_1(-(~(vec2<i32>(u_input.a.x, 34717i) >> (vec2<u32>(74994u, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-arg_0.b), vec2<bool>(arg_0.c.x != !arg_0.c.x, false)));
    var var_1 = arg_0;
    var var_2 = select(vec4<bool>(true, any(var_0.b), true, reverseBits(max(2191u, 6797u)) >= (_wgslsmith_dot_vec4_u32(vec4<u32>(2461u, 0u, 4294967295u, 57602u), vec4<u32>(0u, 0u, 12267u, 10525u)) << (~2000u % 32u))), !select(var_0.b, select(var_0.b, !var_0.b, !arg_1.x), !(arg_1.x != arg_0.c.x)), var_0.b);
    var_1 = Struct_1(-vec2<i32>(~1i, u_input.a.x) << (vec2<u32>(0u, min(countOneBits(0u), 11198u)) % vec2<u32>(32u)), 430f, func_4(arg_0.b, Struct_3(_wgslsmith_f_op_f32(var_1.b + -940f), var_0.b, Struct_1(~vec2<i32>(arg_0.a.x, u_input.a.x), _wgslsmith_f_op_f32(round(-1000f)), vec2<bool>(true, var_1.c.x)))));
    var var_3 = !arg_1.xz;
    return _wgslsmith_div_f32(-1090f, -1873f);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_5(Struct_1(~u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1555f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1021f + 187f) - _wgslsmith_f_op_f32(-1154f * 313f)))), func_4(_wgslsmith_f_op_f32(func_3(vec3<bool>(arg_1, false, arg_1), arg_2.x ^ -1i)), Struct_3(-1013f, !vec4<bool>(arg_1, true, false, false), Struct_1(arg_2, 599f, vec2<bool>(arg_1, true))))), select(select(select(!vec3<bool>(arg_1, true, arg_1), select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, false, false)), all(vec4<bool>(false, arg_1, arg_1, true))), select(select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, true, true), false), vec3<bool>(false, arg_1, true), true), vec3<bool>(false, arg_1, arg_1 & true)), select(vec3<bool>(any(vec4<bool>(true, false, false, arg_1)), arg_1, false == arg_1), !(!vec3<bool>(arg_1, false, false)), arg_1 & true), !select(vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, false), vec3<bool>(true, false, arg_1)), false))));
    var var_1 = Struct_1(vec2<i32>(-_wgslsmith_add_i32(25004i, arg_2.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_2.x, -12539i, u_input.a.x), select(vec4<i32>(arg_0, -38323i, u_input.a.x, 34179i), vec4<i32>(60002i, u_input.b, 2147483647i, arg_2.x), false)), 2147483647i & -countOneBits(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-381f, _wgslsmith_f_op_f32(var_0 * var_0)))))), !(!select(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, false), vec2<bool>(false, arg_1)), !vec2<bool>(true, arg_1), all(vec2<bool>(arg_1, true)))));
    return var_1.b;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> i32 {
    let var_0 = select(vec4<bool>(arg_0.x, true, arg_1, all(!select(arg_0.yx, vec2<bool>(true, true), arg_0.x))), arg_0, vec4<bool>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_2(u_input.a.x, arg_0.x, u_input.a))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1491f) * _wgslsmith_f_op_f32(select(-1753f, -1000f, arg_1))), true, !(arg_1 | arg_0.x) && all(select(arg_0.zz, arg_0.xy, arg_1)), false));
    let var_1 = vec3<i32>(~(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a) >> (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 34793u, 4294967295u), vec3<u32>(4294967295u, 5320u, 4294967295u))) % 32u)), 1i, ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(countOneBits(u_input.a.x), abs(-1i)), -2147483647i));
    let var_2 = vec2<u32>(~_wgslsmith_div_u32(abs(~0u), ~_wgslsmith_mult_u32(22384u, 0u)), _wgslsmith_sub_u32(~(~1u), min(max(~3471u, _wgslsmith_dot_vec3_u32(vec3<u32>(39610u, 65186u, 1u), vec3<u32>(0u, 0u, 17580u))), _wgslsmith_mult_u32(abs(1u), abs(74812u)))));
    let var_3 = !select(vec4<bool>(arg_1, select(true, all(vec2<bool>(true, false)), true), false, true), select(vec4<bool>(!var_0.x, all(vec2<bool>(true, arg_0.x)), func_4(960f, Struct_3(1630f, vec4<bool>(arg_1, false, true, arg_1), Struct_1(var_1.zx, 1000f, vec2<bool>(false, arg_0.x)))).x, arg_0.x), select(vec4<bool>(arg_1, false, arg_0.x, arg_1), select(var_0, vec4<bool>(arg_1, var_0.x, false, false), vec4<bool>(false, false, true, true)), var_1.x > 2147483647i), ~var_2.x == (var_2.x & 4294967295u)), true);
    var var_4 = var_0.x;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(-func_1(vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, false, true))) == (_wgslsmith_dot_vec3_i32(vec3<i32>(4374i, u_input.a.x, u_input.b) & vec3<i32>(41112i, -32013i, u_input.b), select(vec3<i32>(-1i, -1607i, u_input.b), vec3<i32>(1i, u_input.a.x, 12003i), true)) << (1u % 32u)), true, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, true, false))));
    var var_1 = vec4<i32>(-(~(-select(u_input.a.x, -2147483647i, true))), firstLeadingBit(0i), u_input.b, -_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(31896i, abs(-36628i))));
    let var_2 = Struct_3(-410f, !(!(!(!vec4<bool>(var_0.x, true, true, var_0.x)))), Struct_1(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1404f), !var_0.xx));
    var var_3 = false;
    var_3 = true;
    var_3 = var_0.x;
    var var_4 = 0u;
    var var_5 = Struct_2(var_2.c, Struct_1(u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.b)), 733f), var_0.xx), min(~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 1u), abs(vec2<u32>(4294967295u, 73741u))), vec2<u32>(~countOneBits(1034u), select(25151u, 1u, var_0.x) & ~4294967295u)), var_2.c, var_2.c);
    let var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_5.a.b, -942f, var_2.a)))), vec3<f32>(var_2.a, _wgslsmith_f_op_f32(-var_5.e.b), _wgslsmith_f_op_f32(min(1000f, 1644f))), any(!var_2.c.c)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a.b, var_2.a, _wgslsmith_f_op_f32(-var_5.d.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_6)), 264f, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_5.a.a.x, var_1.x, var_5.e.a.x, var_1.x), ~vec4<i32>(1i, var_2.c.a.x, 8144i, var_2.c.a.x), true), abs(vec4<i32>(var_2.c.a.x, 2147483647i, var_1.x, -7278i)) | (vec4<i32>(var_1.x, 2147483647i, -1i, -75654i) | vec4<i32>(72240i, 0i, 477i, 2147483647i))), -13236i & select(~var_1.x, var_1.x, !var_0.x)), var_6.xz);
}

