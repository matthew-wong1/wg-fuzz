struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = -firstTrailingBit(~vec3<i32>(1i, 1i, 1i) << (max(vec3<u32>(u_input.a, u_input.a, 10382u), ~vec3<u32>(u_input.a, 4294967295u, 0u)) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(16962u), _wgslsmith_div_u32(max(1u, ~4294967295u), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, 0u), 31681u >> (u_input.a % 32u))), u_input.a, u_input.a), vec4<u32>(~_wgslsmith_sub_u32(71778u, u_input.a), _wgslsmith_sub_u32(103292u, 66183u) >> (0u % 32u), min(6459u, u_input.a) & (u_input.a >> (35766u % 32u)), ~1u) | ~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, 36344u)), vec4<u32>(u_input.a, 38522u, u_input.a, 1u)));
    var var_2 = Struct_3(arg_0.a);
    var_2 = arg_0;
    var var_3 = var_1.ww;
    return ~(~((min(var_0.x, var_0.x) >> (4294967295u % 32u)) | _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 4185i, -9366i), vec3<i32>(var_0.x, 5860i, var_0.x) ^ vec3<i32>(var_0.x, var_0.x, 0i))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = Struct_2(-vec2<i32>(arg_2, 10668i) & arg_0.a);
    let var_1 = Struct_3(countOneBits(abs(arg_0.a.x)) < -func_3(Struct_3(true)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-969f, _wgslsmith_f_op_f32(select(-2220f, -911f, true)), _wgslsmith_f_op_f32(f32(-1f) * -868f), _wgslsmith_f_op_f32(f32(-1f) * -519f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, 211f, -595f, -2359f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_3(true);
    var_0 = Struct_3(false);
    let var_1 = Struct_3(false);
    let var_2 = all(select(!vec2<bool>(true, select(true, false, true)), select(vec2<bool>(arg_1.x, true), arg_1.zw, select(arg_1.zw, arg_1.wx, !vec2<bool>(false, var_1.a))), var_1.a));
    let var_3 = Struct_2(arg_3.c >> (vec2<u32>(_wgslsmith_div_u32(max(22660u, arg_2), _wgslsmith_mult_u32(u_input.a, arg_2)), _wgslsmith_mult_u32(_wgslsmith_add_u32(123218u, arg_2), ~43846u)) % vec2<u32>(32u)));
    return -vec3<i32>(-_wgslsmith_mult_i32(var_3.a.x, var_3.a.x), var_3.a.x >> (arg_2 % 32u), 5940i);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = (firstTrailingBit(func_4(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec2<i32>(0i, 2147483647i)), 71224u, -24316i, Struct_2(vec2<i32>(2147483647i, 13601i)))), !vec4<bool>(arg_0, false, false, false), _wgslsmith_div_u32(153465u, u_input.a), Struct_1(arg_0, true, vec2<i32>(2147483647i, 1i)))) << (~(~(~vec3<u32>(u_input.a, 1u, 73165u))) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-22469i, -2147483647i, 19524i), vec3<i32>(2147483647i, -2147483647i, 35515i), vec3<i32>(-1i, -16235i, 1i)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-1326i, 1i, 34496i), vec3<i32>(-78823i, -14685i, -35249i))), vec3<i32>(1i, firstLeadingBit(16042i), -37882i), select(func_4(vec4<f32>(2954f, 685f, -373f, -1073f), vec4<bool>(true, false, true, arg_0), 4294967295u, Struct_1(arg_0, arg_0, vec2<i32>(-1i, -16949i))), vec3<i32>(1i, 1i, 1i), arg_0)), vec3<i32>(-2147483647i, firstTrailingBit(-2147483647i), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1620f, -304f, -1000f, -348f), vec4<f32>(-1000f, 1413f, 996f, 101f), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0)), 33251u, Struct_1(arg_0, arg_0, vec2<i32>(1i, -2147483647i))).x));
    var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.x, ~(2147483647i >> (u_input.a % 32u))), var_0.x), var_0.x << (~u_input.a % 32u), var_0.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(-482f, _wgslsmith_f_op_f32(f32(-1f) * -100f))), -484f);
    let var_2 = Struct_3(true);
    var_0 = vec3<i32>(_wgslsmith_sub_i32(var_0.x >> (u_input.a % 32u), 1i) | _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.x, var_0.x, -1i), var_0.x), 0i, 0i) ^ (min(vec3<i32>(-1i) * -vec3<i32>(var_0.x, var_0.x, var_0.x), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, -35502i, 6938i), vec3<i32>(-100043i, var_0.x, var_0.x) >> (vec3<u32>(81300u, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, 45129i), vec3<i32>(var_0.x, var_0.x, 0i), vec3<i32>(15686i, var_0.x, -1i)))) & vec3<i32>(~var_0.x, -select(43205i, 44215i, true), 21835i));
    return Struct_1(any(!vec3<bool>(!var_2.a, any(vec2<bool>(true, arg_0)), true)), func_3(var_2) >= var_0.x, _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, min(var_0.x, var_0.x)) << (select(vec2<u32>(u_input.a, 0u), ~vec2<u32>(u_input.a, 7463u), select(vec2<bool>(arg_0, var_2.a), vec2<bool>(false, false), vec2<bool>(arg_0, true))) % vec2<u32>(32u)), firstLeadingBit(select(var_0.yy, vec2<i32>(var_0.x, 45777i), arg_0) & (vec2<i32>(var_0.x, var_0.x) ^ var_0.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)))));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = -var_1.c.x;
    var var_3 = firstLeadingBit(var_0.c);
    var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-913f, -936f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(709f + -736f)))), _wgslsmith_f_op_f32(1495f - _wgslsmith_f_op_f32(-1564f + _wgslsmith_f_op_f32(1468f - -320f)))), vec3<u32>(4294967295u, 0u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(55407u, u_input.a), u_input.a, 4294967295u), min(69962u, firstTrailingBit(u_input.a)))), max(-_wgslsmith_sub_i32(1i, func_4(vec4<f32>(179f, 1556f, 142f, -280f), vec4<bool>(var_0.a, var_0.b, true, false), 1u, Struct_1(true, var_1.a, vec2<i32>(1i, -1005i))).x), ~(-abs(0i))));
}

