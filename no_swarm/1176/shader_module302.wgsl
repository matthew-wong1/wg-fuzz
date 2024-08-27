struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: bool) -> bool {
    var var_0 = arg_0;
    let var_1 = 1245f;
    var_0 = false;
    let var_2 = ~84375u;
    var var_3 = !vec4<bool>(false | !all(arg_2), arg_0, true, true);
    return arg_3;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<u32>) -> vec4<i32> {
    let var_0 = vec2<i32>(-u_input.d.x, -6063i | arg_1.b.a.c.x);
    let var_1 = Struct_4(vec3<i32>(-u_input.b.x, 1643i, -1i), Struct_2(Struct_1(max(vec4<i32>(var_0.x, 1i, u_input.c, -25553i), vec4<i32>(-2147483647i, var_0.x, var_0.x, 2147483647i) >> (arg_2 % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(371f, arg_1.b.a.b.x, -795f, 414f), vec4<f32>(768f, 1608f, arg_1.b.a.b.x, arg_1.b.a.b.x), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.a.b.x, -757f, -1136f, arg_1.b.a.b.x) - vec4<f32>(-548f, arg_1.b.a.b.x, arg_1.b.a.b.x, arg_1.b.a.b.x)))), ~(var_0 & u_input.b), arg_1.b.a.e, select(!vec4<bool>(arg_1.c.x, false, arg_1.b.a.e.x, false), vec4<bool>(true, true, true, arg_1.b.a.e.x), arg_1.d.c))), select(select(select(select(arg_1.b.a.d.wyz, arg_1.c, true), arg_1.c, vec3<bool>(true, arg_1.d.c, true)), vec3<bool>(true, true, arg_1.b.a.e.x), -1570f != _wgslsmith_f_op_f32(round(arg_1.b.a.b.x))), select(arg_1.b.a.e.ywx, !(!arg_1.c), !arg_1.b.a.d.xyw), select(arg_1.c.x, !select(true, arg_1.d.a, arg_1.d.a), arg_1.b.a.e.x)), arg_1.d);
    return vec4<i32>(_wgslsmith_add_i32(~0i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-55984i, 27465i, arg_1.d.d.x), vec3<i32>(-21692i, 1i, u_input.d.x))), firstTrailingBit(max(arg_1.b.a.c.x >> (0u % 32u), countOneBits(var_0.x)) ^ _wgslsmith_clamp_i32(2147483647i, min(var_0.x, 2147483647i), ~31480i)), ~5689i, -_wgslsmith_add_i32(var_1.b.a.c.x, 43280i | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 1i), var_0)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_3(false, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.d.x, -5909i, u_input.b.x, 1i)), func_3(arg_0, Struct_4(vec3<i32>(1i, u_input.b.x, 43323i), Struct_2(Struct_1(vec4<i32>(u_input.c, u_input.a, u_input.d.x, -20471i), vec4<f32>(1295f, 281f, -233f, -934f), u_input.b, vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))), vec3<bool>(arg_1.x, arg_1.x, false), Struct_3(arg_1.x, vec4<i32>(u_input.b.x, -40216i, -11188i, 37104i), arg_1.x, vec4<i32>(u_input.c, -2147483647i, u_input.a, 1i))), vec4<u32>(arg_0.x, arg_0.x, 1u, 4294967295u)) | select(vec4<i32>(-2147483647i, 46676i, u_input.c, 0i), vec4<i32>(u_input.a, u_input.d.x, -1i, -1i), false)), select(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(1i, u_input.a, -4271i)), abs(u_input.b.x), u_input.b.x, -u_input.c), firstTrailingBit(vec4<i32>(1i, u_input.b.x, u_input.b.x, 32969i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(-8197i, u_input.b.x, u_input.a, u_input.a), vec4<i32>(u_input.a, 1i, u_input.d.x, u_input.c)), vec4<bool>(arg_0.x <= 14723u, arg_1.x, true, true))), false, min(_wgslsmith_mult_vec4_i32(vec4<i32>(-53590i, u_input.c, 25194i, u_input.d.x), -vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.b.x)), vec4<i32>(countOneBits(u_input.c), u_input.a, 5636i, u_input.a)) << (vec4<u32>(abs(_wgslsmith_mod_u32(112563u, arg_0.x)), _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.x, arg_0.x), arg_0.x), ~115999u, arg_0.x | ~1u) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-604f))), _wgslsmith_f_op_f32(ceil(630f)))), _wgslsmith_f_op_f32(trunc(1f)))));
    let var_2 = Struct_2(Struct_1(reverseBits(func_3(vec3<u32>(0u, arg_0.x, arg_0.x), Struct_4(u_input.d, Struct_2(Struct_1(var_0.d, vec4<f32>(-576f, var_1.x, 270f, var_1.x), var_0.b.wz, vec4<bool>(arg_1.x, var_0.a, var_0.a, true), vec4<bool>(arg_1.x, arg_1.x, true, false))), vec3<bool>(var_0.a, true, false), var_0), vec4<u32>(27578u, arg_0.x, arg_0.x, arg_0.x))) | func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(19653u, arg_0.x, arg_0.x), arg_0, arg_0), Struct_4(u_input.d, Struct_2(Struct_1(var_0.d, vec4<f32>(var_1.x, var_1.x, var_1.x, 1645f), vec2<i32>(0i, u_input.a), vec4<bool>(true, true, false, arg_1.x), vec4<bool>(true, false, var_0.c, true))), vec3<bool>(var_0.a, true, true), Struct_3(var_0.c, vec4<i32>(-43440i, -35372i, 27980i, 69960i), var_0.c, vec4<i32>(u_input.d.x, var_0.b.x, var_0.b.x, var_0.b.x))), ~vec4<u32>(arg_0.x, arg_0.x, 51443u, arg_0.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, -1000f), vec4<f32>(292f, 942f, var_1.x, 344f), vec4<bool>(var_0.c, true, var_0.c, false)))))), _wgslsmith_mod_vec2_i32(reverseBits(~vec2<i32>(var_0.d.x, 2147483647i)), ~(~vec2<i32>(1i, -36438i))), select(select(vec4<bool>(false, var_0.c, false, arg_1.x), select(vec4<bool>(var_0.a, true, true, false), vec4<bool>(var_0.c, false, var_0.a, var_0.a), false), var_0.c), select(!vec4<bool>(arg_1.x, arg_1.x, var_0.a, false), !vec4<bool>(false, arg_1.x, var_0.c, arg_1.x), true), !arg_1.x), select(!vec4<bool>(var_0.a, true, arg_1.x, false), vec4<bool>(false, arg_1.x, true, true), vec4<bool>(true, var_0.c, arg_1.x, false))));
    let var_3 = var_0;
    let var_4 = _wgslsmith_sub_i32(26866i, u_input.c) | -var_0.d.x;
    return vec2<bool>(-88711i <= -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_3.b.x, -1i), firstTrailingBit(vec3<i32>(1i, var_2.a.c.x, var_0.d.x))), all(var_2.a.d) && var_2.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec4<i32>(1i, 1i, ~abs(0i), -u_input.b.x & abs(u_input.c)), vec4<f32>(1f, _wgslsmith_f_op_f32(-982f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1193f)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -466f) - -722f) - -780f)), u_input.d.yy, vec4<bool>(true, true, true, true), !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(func_1(false, -1i, vec4<bool>(false, false, true, true), true), true, true, all(vec3<bool>(true, false, true))), any(vec2<bool>(false, true)) || true));
    let var_1 = var_0.b.wx;
    var var_2 = !var_0.d.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_0.b.wxz);
    var var_4 = ((any(func_2(vec3<u32>(32287u, 56934u, 42696u), vec2<bool>(true, false))) | true) & true) || var_0.e.x;
    var_4 = true;
    let var_5 = select(vec2<bool>(true, true), !select(var_0.d.yz, vec2<bool>(func_1(true, var_0.a.x, vec4<bool>(var_0.e.x, var_0.e.x, false, var_0.d.x), true), any(var_0.e.yzx)), vec2<bool>(!var_0.e.x, true)), any(select(select(var_0.d.zxw, vec3<bool>(false, var_0.d.x, false), vec3<bool>(var_0.d.x, var_0.e.x, false)), !vec3<bool>(true, false, var_0.e.x), var_0.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(reverseBits(u_input.d.x) << (14992u % 32u), firstTrailingBit(u_input.d.x), abs(43486i), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_div_i32(u_input.a, u_input.b.x) ^ (u_input.c ^ 2147483647i))), ((vec3<i32>(26435i, 38686i, 24237i) & vec3<i32>(var_0.a.x, -2147483647i, 11509i)) & firstLeadingBit(firstLeadingBit(var_0.a.zwy))) | -var_0.a.wzx, u_input.d);
}

