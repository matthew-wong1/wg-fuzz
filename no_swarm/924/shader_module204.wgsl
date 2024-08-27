struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> bool {
    var var_0 = arg_0.b;
    var_0 = arg_0.a;
    var var_1 = arg_0;
    var_0 = var_1.b;
    let var_2 = var_0.a.zwy;
    return arg_0.a.b;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> bool {
    let var_0 = Struct_1(vec4<bool>(true, !func_3(Struct_2(Struct_1(vec4<bool>(true, true, false, false), false, vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, true, false), false, vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec2<bool>(true, true)), -25284i), Struct_4(vec3<i32>(7713i, -12936i, -2147483647i), arg_0, vec2<bool>(false, false), arg_1)), -1010f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 1464f) + -1000f), true), any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), func_3(Struct_2(Struct_1(vec4<bool>(false, true, false, false), false, u_input.b.wyy, vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, false, true), false, u_input.b.zyx, vec2<bool>(true, true)), -1i), Struct_4(vec3<i32>(48480i, u_input.a, u_input.a), -70153i, vec2<bool>(true, true), arg_1))), true)), u_input.b.xww, select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), func_3(Struct_2(Struct_1(vec4<bool>(true, false, false, false), true, vec3<u32>(u_input.b.x, 0u, 4294967295u), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, false, false, false), true, u_input.b.yxy, vec2<bool>(false, true)), 1i), Struct_4(vec3<i32>(30116i, 2147483647i, 1i), 1i, vec2<bool>(false, false), arg_1))), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), false));
    let var_1 = var_0;
    let var_2 = arg_1.x;
    let var_3 = Struct_4(vec3<i32>(2147483647i << (reverseBits(_wgslsmith_add_u32(var_1.c.x, 14362u)) % 32u), countOneBits(22676i), u_input.a), _wgslsmith_clamp_i32(u_input.a, min(1i, firstTrailingBit(2147483647i)), countOneBits(arg_0)), select(select(!(!var_0.a.zz), vec2<bool>(!var_1.b, var_0.d.x), vec2<bool>(var_1.b, !var_1.d.x)), vec2<bool>(false, true), var_0.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1 * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, 1893f, -2185f))))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(902f, var_3.d.x)) * _wgslsmith_f_op_f32(-1000f + 1998f));
    return (u_input.b.x >> ((7796u ^ (u_input.b.x ^ abs(var_1.c.x))) % 32u)) >= ~(~firstTrailingBit(u_input.b.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(true | (arg_2.a.c >= u_input.a), arg_0.x, false, any(select(arg_0.yz, vec2<bool>(arg_0.x, false), arg_2.a.b.a.x))), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(arg_0.x, true, arg_0.x, false), select(arg_2.c.b.a, vec4<bool>(false, false, false, arg_0.x), arg_0), false), !arg_2.a.a.b), arg_0.x), arg_0.x);
    var_0 = vec4<bool>(var_0.x && true, arg_2.b, !var_0.x, arg_2.c.a.b);
    let var_1 = vec3<u32>(1u << (~(arg_2.a.b.c.x | ~u_input.b.x) % 32u), ~firstTrailingBit(4919u), abs(25832u & arg_2.a.b.c.x));
    let var_2 = vec3<bool>(arg_0.x, !((false == any(vec2<bool>(true, true))) && any(select(vec4<bool>(false, false, var_0.x, var_0.x), arg_2.a.b.a, var_0.x))), true);
    let var_3 = _wgslsmith_mod_i32(4597i, ~16928i);
    return arg_2.c;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> f32 {
    let var_0 = func_4(select(vec4<bool>(true, !(u_input.b.x > u_input.b.x), select(any(vec3<bool>(true, false, false)), true, arg_1 >= arg_1), !func_2(2147483647i, vec3<f32>(-241f, 344f, 1843f))), !vec4<bool>(true, true, 2147483647i > arg_1, true), vec4<bool>(func_2(arg_1, vec3<f32>(-267f, 762f, 890f)) | false, ~2147483647i <= u_input.a, _wgslsmith_mod_i32(345i, u_input.a) > -2147483647i, false)), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_1, u_input.a, u_input.a), vec4<i32>(25247i, u_input.a, arg_1, arg_1)), -vec4<i32>(-2147483647i, 4898i, 50368i, arg_1), -vec4<i32>(u_input.a, -4576i, u_input.a, arg_1)) & vec4<i32>(1i, 4079i, -34138i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1, -1i, 2147483647i)), firstLeadingBit(vec3<i32>(u_input.a, -6985i, 1i)))), Struct_3(Struct_2(Struct_1(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), true, vec3<u32>(64151u, 1u, u_input.b.x), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), Struct_1(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), true, min(u_input.b.wzy, vec3<u32>(1041u, u_input.b.x, u_input.b.x)), vec2<bool>(false, true)), 1i), true, Struct_2(Struct_1(vec4<bool>(true, false, false, true), true, vec3<u32>(25513u, 1u, arg_0.x) ^ u_input.b.xwy, select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), Struct_1(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true), true, select(u_input.b.zwy, vec3<u32>(52213u, 43677u, arg_0.x), true), vec2<bool>(false, false)), -47488i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -39038i, arg_1, arg_1), vec4<i32>(-77705i, u_input.a, arg_1, u_input.a)))));
    return -1055f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(4294967295u, 45078u);
    let var_1 = -firstLeadingBit(-(~(~vec4<i32>(u_input.a, u_input.a, -1i, 0i))));
    var var_2 = abs(vec4<i32>(1i, i32(-1i) * -1i, -var_1.x, (2147483647i ^ u_input.a) ^ u_input.a) ^ vec4<i32>(min(u_input.a, -1i) >> (~4294967295u % 32u), -u_input.a, -4260i, firstTrailingBit(var_1.x)));
    var var_3 = !((var_2.x < 1i) | true);
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1243f, 1639f) + _wgslsmith_f_op_f32(151f * -472f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1301f - _wgslsmith_f_op_f32(trunc(338f))), _wgslsmith_f_op_f32(func_1(~vec2<u32>(u_input.b.x, 1344u), var_2.x))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-729f, -662f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(771f, -1474f) - vec2<f32>(1020f, -944f)), vec2<f32>(-962f, -1784f), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-347f, -628f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-439f, 962f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-263f, -1232f), vec2<f32>(-1425f, 346f), true)))));
    var var_5 = vec2<u32>(~_wgslsmith_div_u32(u_input.b.x, firstLeadingBit(_wgslsmith_div_u32(1u, u_input.b.x))), 4294967295u);
    var var_6 = Struct_4(min(vec3<i32>(1495i, 1i, _wgslsmith_clamp_i32(1i, -1i, 0i)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, var_1.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(2147483647i, var_2.x, var_1.x)))) >> (~u_input.b.zzy % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(var_1.xyw, vec3<i32>(-var_1.x, select(var_2.x, var_2.x, true), -2147483647i) >> (u_input.b.xzw % vec3<u32>(32u))), select(!func_4(vec4<bool>(false, false, true, false), var_1, Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, true), true, u_input.b.zyz, vec2<bool>(false, false)), Struct_1(vec4<bool>(true, false, false, true), false, u_input.b.xyy, vec2<bool>(true, false)), var_2.x), true, Struct_2(Struct_1(vec4<bool>(false, true, true, true), true, u_input.b.xwx, vec2<bool>(false, true)), Struct_1(vec4<bool>(true, false, true, true), false, vec3<u32>(var_5.x, u_input.b.x, var_5.x), vec2<bool>(false, true)), 0i))).a.a.ww, vec2<bool>(true, func_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), true, u_input.b.xxx, vec2<bool>(false, true)), Struct_1(vec4<bool>(true, true, false, true), true, u_input.b.zyy, vec2<bool>(false, true)), u_input.a), Struct_4(vec3<i32>(var_2.x, var_2.x, -2147483647i), var_1.x, vec2<bool>(false, false), vec3<f32>(-639f, var_4.x, -822f)))), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), func_4(vec4<bool>(true, true, true, true), ~var_1, Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, false, false), false, vec3<u32>(4294967295u, var_5.x, 1u), vec2<bool>(true, true)), Struct_1(vec4<bool>(true, true, true, true), true, u_input.b.yxx, vec2<bool>(true, true)), var_1.x), false, Struct_2(Struct_1(vec4<bool>(false, true, true, true), true, u_input.b.zzy, vec2<bool>(false, false)), Struct_1(vec4<bool>(false, true, true, true), true, vec3<u32>(27529u, var_5.x, 2144u), vec2<bool>(true, false)), 1i))).b.a.ww)), vec3<f32>(-565f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_4.x, var_4.x)))), var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-756f - _wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(func_1(reverseBits(u_input.b.xz), var_6.b)))), _wgslsmith_f_op_f32(var_4.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.x), -172f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_2.x), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, var_1.x), vec2<i32>(2147483647i, -1i)), -var_1.yx) ^ _wgslsmith_mult_vec2_i32(var_1.zy, -vec2<i32>(-894i, 28908i))), var_6.a.x, _wgslsmith_dot_vec4_i32(var_1, _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, var_2.x, var_2.x), -var_1) ^ -_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, -2147483647i, -29916i, var_6.b), vec4<i32>(-10411i, 0i, -1i, var_6.a.x))));
}

