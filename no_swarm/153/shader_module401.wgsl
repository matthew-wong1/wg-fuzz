struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<f32> {
    global0 = arg_1.x;
    var var_0 = _wgslsmith_f_op_vec4_f32(min(arg_0.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(arg_0.d.x, arg_0.e.x, 383f, 162f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, -194f, -1643f, arg_0.e.x) * vec4<f32>(arg_0.b.x, arg_0.b.x, -123f, -245f))))))))));
    var var_1 = arg_0.a;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -542f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, var_0.x) + _wgslsmith_f_op_f32(-1097f + var_0.x))) + -733f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-629f + _wgslsmith_f_op_f32(var_0.x * arg_0.d.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(935f + arg_0.e.x))) + _wgslsmith_f_op_f32(abs(672f))) - -1466f));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(arg_0.b, arg_0.b))))));
    return _wgslsmith_f_op_vec2_f32(-var_0.xx);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<bool>(arg_0.a.x, arg_0.a.x, true), vec4<f32>(-370f, arg_0.e.x, arg_0.b.x, arg_0.d.x), any(vec4<bool>(true, arg_0.c, false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-450f, arg_0.d.x) * arg_0.b.zz), vec3<f32>(-882f, -674f, arg_0.d.x)), vec2<bool>(arg_0.a.x, arg_0.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(974f, -982f))))))));
    var var_1 = vec2<i32>(-2147483647i, _wgslsmith_sub_i32(-(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 8857i, u_input.a, u_input.b.x), vec4<i32>(2147483647i, -24627i, u_input.b.x, u_input.a)) | min(-2147483647i, u_input.b.x)), ~u_input.a << (~_wgslsmith_add_u32(0u, u_input.d) % 32u)));
    return Struct_1(arg_0.a, arg_0.b, false, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(var_0)))), _wgslsmith_f_op_vec3_f32(-arg_0.e));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = func_2(arg_2);
    global0 = arg_2.a.x;
    global0 = var_0.a.x;
    var var_1 = true;
    let var_2 = Struct_1(arg_2.a, arg_2.b, arg_2.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d.x, arg_2.e.x), arg_2.b.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, arg_1) * var_0.d), func_2(Struct_1(vec3<bool>(arg_2.c, true, false), var_0.b, false, vec2<f32>(180f, arg_1), vec3<f32>(var_0.b.x, var_0.e.x, -294f))).a.zx))), arg_2.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.e)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2402f, arg_1, var_0.b.x) * var_0.e)) + func_2(arg_2).e) - _wgslsmith_div_vec3_f32(func_2(Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, false), arg_2.b, false, vec2<f32>(-207f, 1473f), var_0.b.zww)).b.zwy, vec3<f32>(-737f, -1341f, arg_1))));
    return Struct_1(arg_2.a, vec4<f32>(1231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.b.x - 188f), var_2.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-956f))))), func_2(func_2(func_2(Struct_1(vec3<bool>(true, false, arg_2.a.x), vec4<f32>(530f, var_2.d.x, 870f, 851f), false, var_2.b.zy, var_2.e)))).c, vec2<f32>(arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.x + var_0.b.x)))), var_2.e);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0.c;
    var var_0 = false;
    let var_1 = u_input.d;
    let var_2 = Struct_1(!(!vec3<bool>(arg_0.a.x, all(arg_0.a.xx), arg_0.a.x)), _wgslsmith_f_op_vec4_f32(-arg_0.b), all(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, false, arg_0.a.x)), func_1(u_input.b.x, arg_0.e.x, arg_0, vec4<u32>(u_input.d, var_1, u_input.d, var_1)).a.x, true, select(false, arg_0.a.x, false)), vec4<bool>(u_input.d > var_1, func_2(Struct_1(arg_0.a, vec4<f32>(arg_0.e.x, -1000f, arg_0.d.x, 1157f), true, arg_0.e.xx, vec3<f32>(107f, 1109f, -970f))).c, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-531f, arg_0.b.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.b.x, 221f), arg_0.e.zx)), true)) * _wgslsmith_f_op_vec2_f32(-arg_0.b.xz))), arg_0.b.wzx);
    var var_3 = Struct_1(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(round(var_2.b.x)), var_2.e.x, var_2.b.x, _wgslsmith_f_op_f32(step(arg_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -894f)))), !func_1(abs(~1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.e.x), -397f)), arg_0, ~(~vec4<u32>(4467u, u_input.c, 0u, var_1))).a.x, arg_0.e.xy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(660f, arg_0.e.x, var_2.d.x), vec3<f32>(-1223f, arg_0.b.x, 208f)) - vec3<f32>(-654f, var_2.e.x, arg_0.b.x))) - _wgslsmith_f_op_vec3_f32(arg_0.b.xww + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_2.b.www + arg_0.b.wzy), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x) * vec3<f32>(arg_0.d.x, -516f, 2045f)), true)))));
    return Struct_1(!vec3<bool>(true, var_3.a.x, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.b, _wgslsmith_f_op_vec4_f32(-var_2.b))), false, vec2<f32>(667f, arg_0.d.x), var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(-(i32(-1i) * -2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-806f - 182f))), 1f), Struct_1(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), vec4<f32>(-603f, _wgslsmith_f_op_f32(546f - 921f), _wgslsmith_f_op_f32(sign(-144f)), _wgslsmith_f_op_f32(min(236f, -1000f))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(153f, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2304f), 272f, _wgslsmith_f_op_f32(f32(-1f) * -267f))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.c, u_input.c), u_input.c, u_input.c, 102627u), ~(~vec4<u32>(1u, 0u, 0u, 0u)))));
    var var_1 = 48141i;
    var_0 = func_4(func_1(select(_wgslsmith_mult_i32(u_input.b.x, 1i), u_input.a, !var_0.c), var_0.e.x, func_4(func_2(Struct_1(var_0.a, vec4<f32>(1070f, -469f, -236f, var_0.d.x), var_0.a.x, vec2<f32>(367f, 723f), vec3<f32>(1165f, var_0.e.x, var_0.d.x)))), vec4<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 20258u), vec2<u32>(4294967295u, u_input.d))), ~u_input.c, u_input.d, ~_wgslsmith_div_u32(u_input.c, u_input.c))));
    var_0 = func_1(u_input.b.x & -2147483647i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(-var_0.d.x)), 278f, var_0.c)), var_0.e.x)), Struct_1(func_4(func_2(Struct_1(vec3<bool>(var_0.a.x, true, var_0.c), vec4<f32>(271f, var_0.d.x, -2073f, -281f), var_0.a.x, var_0.d, var_0.b.xww))).a, _wgslsmith_f_op_vec4_f32(select(var_0.b, vec4<f32>(-489f, _wgslsmith_div_f32(1669f, -281f), _wgslsmith_f_op_f32(235f * var_0.e.x), _wgslsmith_f_op_f32(var_0.e.x * var_0.b.x)), vec4<bool>(any(vec2<bool>(true, var_0.c)), -1i <= u_input.b.x, true, !var_0.c))), var_0.a.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x), _wgslsmith_f_op_f32(-var_0.e.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x + 1875f), _wgslsmith_f_op_f32(f32(-1f) * -1757f), 346f) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -389f), -905f, _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<bool>(var_0.c, var_0.c, false), vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 849f), var_0.a.x, var_0.e.zx, vec3<f32>(656f, var_0.e.x, -680f)), vec2<bool>(var_0.c, true))).x))), select(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d, 1u, u_input.c, 4294967295u)), ~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.d)), vec4<u32>(1u, ~u_input.c, abs(u_input.c), u_input.c & 0u)), countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, 39773u, 36992u, u_input.d), vec4<u32>(67657u, u_input.d, u_input.d, u_input.c) & vec4<u32>(45336u, 16599u, u_input.d, 1u))), vec4<bool>(select(var_0.c && true, u_input.c > 46561u, 3600f < var_0.e.x), true | var_0.a.x, !var_0.c, true)));
    let var_2 = ~43531u;
    let var_3 = func_1(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(40275i, -2147483647i, u_input.a, -21751i)), abs(vec4<i32>(45560i, u_input.a, 8107i, 0i))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, 2147483647i, -2147483647i), firstLeadingBit(vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, 0i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -387f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-532f))))) * _wgslsmith_div_f32(882f, _wgslsmith_f_op_f32(-func_2(Struct_1(vec3<bool>(true, true, var_0.a.x), vec4<f32>(1285f, 676f, var_0.d.x, var_0.d.x), var_0.a.x, vec2<f32>(var_0.b.x, 352f), vec3<f32>(204f, 1177f, -248f))).e.x))), Struct_1(!(!var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b * vec4<f32>(358f, var_0.e.x, var_0.b.x, var_0.d.x)))), var_0.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.b.zy, var_0.d))), _wgslsmith_f_op_vec2_f32(-var_0.d)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -901f, var_0.b.x)), func_2(Struct_1(var_0.a, vec4<f32>(-1161f, var_0.b.x, var_0.d.x, -937f), true, vec2<f32>(var_0.e.x, var_0.b.x), var_0.e)).b.yyx))), ~(~(~(~vec4<u32>(u_input.d, var_2, var_2, u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, u_input.b.x);
}

