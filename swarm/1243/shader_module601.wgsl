struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), min(global0.x, global0.x << (u_input.b.x % 32u)));
    var_0 = _wgslsmith_mod_i32(min(i32(-1i) * -1i, -35311i & global0.x), 0i);
    let var_1 = Struct_1(u_input.b.xz, vec2<bool>(true, true), (all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)) || false) && all(vec3<bool>(true, true, false)));
    var var_2 = Struct_3(Struct_2(!select(vec4<bool>(true, true, false, var_1.b.x), select(vec4<bool>(var_1.c, var_1.b.x, true, true), vec4<bool>(var_1.c, true, false, var_1.b.x), vec4<bool>(var_1.c, var_1.b.x, false, var_1.b.x)), false), vec2<i32>(~(-u_input.a), 19037i >> (firstTrailingBit(14365u) % 32u))), _wgslsmith_mult_vec3_i32(reverseBits(-global0.zyw), reverseBits(global0.wwx)));
    var var_3 = vec4<i32>(var_2.a.b.x, 16594i >> (1u % 32u), select(countOneBits(_wgslsmith_mod_i32(u_input.a, abs(var_2.a.b.x))), 0i, true), global0.x);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1383f * 599f), -225f) * -1523f);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> vec3<u32> {
    let var_0 = vec4<bool>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(7394u, 1u) << (u_input.b.x % 32u), _wgslsmith_mod_u32(17697u, 67866u)) < 1u, true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)))) < 1000f);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(exp2(arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), 529f))));
    global0 = firstLeadingBit(-_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(global0.x, -19925i, arg_1.x, 0i) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), max(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, arg_1.x), vec4<i32>(global0.x, u_input.a, 2147483647i, -16279i)), ~vec4<i32>(0i, 7099i, arg_1.x, -2147483647i))));
    var var_2 = all(select(var_0.zzx, select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, true, true), true), select(var_0.yzx, vec3<bool>(var_0.x, true, var_0.x), var_0.x), var_0.yxw), vec3<bool>(var_0.x, var_0.x, -14011i < _wgslsmith_sub_i32(global0.x, global0.x))));
    var var_3 = vec2<f32>(1000f, _wgslsmith_f_op_f32(func_3()));
    return u_input.b.xxw;
}

fn func_4(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(vec4<bool>(any(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false)), false, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)))), ~vec2<i32>(reverseBits(global0.x), 35579i << (arg_0.x % 32u))), firstLeadingBit(vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(8191i, global0.x, u_input.a, u_input.a)), -vec4<i32>(-2147483647i, global0.x, global0.x, global0.x)), -1i)));
    var var_1 = Struct_3(Struct_2(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.a.a.x, true, var_0.a.a.x, true), var_0.a.a)), vec2<i32>(~var_0.a.b.x, -countOneBits(u_input.a))), reverseBits(vec3<i32>(2147483647i, -u_input.a, var_0.a.b.x)));
    var var_2 = ~(~vec4<u32>(~(~arg_0.x), _wgslsmith_mult_u32(firstLeadingBit(9424u), arg_0.x | 94959u), ~arg_0.x, _wgslsmith_div_u32(arg_0.x, arg_0.x | u_input.b.x)));
    var var_3 = select(select(select(select(var_0.a.a.wy, var_1.a.a.wy, vec2<bool>(true, var_1.a.a.x)), vec2<bool>(var_1.a.a.x, var_1.a.a.x || var_0.a.a.x), any(vec4<bool>(false, true, var_1.a.a.x, false)) & !var_1.a.a.x), var_0.a.a.wx, var_0.a.a.xw), select(var_1.a.a.yx, var_1.a.a.wz, var_0.a.a.yz), var_0.a.a.x);
    var var_4 = vec4<i32>(i32(-1i) * -global0.x, var_0.b.x, -(global0.x | _wgslsmith_sub_i32(-var_1.b.x, ~global0.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1.a.b, -vec2<i32>(global0.x, global0.x) >> (func_2(1718f, var_0.a.b).yx % vec2<u32>(32u))), vec2<i32>(-var_0.b.x, firstLeadingBit(-2147483647i)) | vec2<i32>(u_input.a, 2147483647i)));
    return var_0.a;
}

fn func_1() -> bool {
    var var_0 = Struct_3(func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-144f, 1000f) * _wgslsmith_f_op_f32(sign(852f))), _wgslsmith_div_vec2_i32(global0.yz, global0.yy) >> (u_input.b.wy % vec2<u32>(32u)))), vec3<i32>(global0.x, firstLeadingBit(~global0.x), ~global0.x) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(53566u, 4294967295u, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)));
    var_0 = Struct_3(func_4(u_input.b.wyw), _wgslsmith_mult_vec3_i32(global0.wwx, firstLeadingBit(~_wgslsmith_sub_vec3_i32(global0.yyy, vec3<i32>(var_0.b.x, -36551i, var_0.b.x)))));
    let var_1 = var_0.b;
    var_0 = Struct_3(func_4(vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b.yz)), _wgslsmith_mult_u32(select(u_input.b.x, 33107u, var_0.a.a.x), 1u), u_input.b.x)), var_0.b);
    var_0 = Struct_3(var_0.a, firstLeadingBit(firstLeadingBit(vec3<i32>(1i, var_1.x, u_input.a))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec4<bool>(select(~u_input.b.x >= ~u_input.b.x, true, all(vec2<bool>(true, true))), any(vec2<bool>(false, u_input.b.x >= u_input.b.x)), false, func_1() & false), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.wx, ~(~vec2<u32>(35218u, 4294967295u))), _wgslsmith_sub_vec2_u32(abs(firstLeadingBit(u_input.b.xw)), u_input.b.wy), vec2<u32>(u_input.b.x, select(min(32345u, u_input.b.x), 1u, all(vec4<bool>(false, true, false, true))))));
    let var_1 = Struct_3(Struct_2(vec4<bool>(true, true, any(func_4(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)).a.zxz), true), ~global0.zz), countOneBits(_wgslsmith_mod_vec3_i32(global0.zxz, max(firstLeadingBit(global0.yzz), ~global0.xyw))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1052f, 430f, 743f, -971f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(301f, -126f, -967f, -1597f)))))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1394f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1000f - 636f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) + _wgslsmith_f_op_f32(f32(-1f) * -581f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1355f, -1018f)), -854f))) - vec4<f32>(1433f, 454f, -373f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1226f)))))));
    let var_3 = var_0.b.x;
    global0 = _wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.x, 1i, u_input.a, var_1.a.b.x), vec4<i32>(var_1.b.x, -2147483647i, 38146i, var_1.b.x)), vec4<i32>(-1i) * -vec4<i32>(0i, -1i, 1i, u_input.a), -max(vec4<i32>(var_1.a.b.x, var_1.b.x, -1i, var_1.b.x), vec4<i32>(global0.x, -17157i, -54260i, -61262i)))), vec4<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(17719i, var_1.b.x, global0.x)), var_1.b), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(61404i, -77417i, 33127i), global0.yww, true), _wgslsmith_sub_vec3_i32(global0.yww, vec3<i32>(var_1.a.b.x, u_input.a, 0i))), var_1.b.x << (u_input.b.x % 32u)), countOneBits(_wgslsmith_dot_vec2_i32(firstLeadingBit(global0.wz), var_1.a.b)), ~(_wgslsmith_div_i32(-1i, u_input.a) ^ 39672i)));
    let var_4 = Struct_1(countOneBits(vec2<u32>(0u, 38058u)), vec2<bool>(all(var_1.a.a.xz), _wgslsmith_div_i32(global0.x, 4919i) <= _wgslsmith_dot_vec3_i32(var_1.b | var_1.b, ~vec3<i32>(var_1.b.x, -3870i, global0.x))), firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(var_0.b.x, var_0.b.x))) < min(15505u, ~reverseBits(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-922f - var_2.x), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1432f) + _wgslsmith_f_op_f32(var_2.x + 303f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1963f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(689f * -1486f)))), _wgslsmith_div_f32(-629f, var_2.x), var_2.x), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(var_0.b.x, u_input.b.x, 0u, 53833u))), ~_wgslsmith_clamp_vec4_u32(u_input.b, firstLeadingBit(u_input.b), min(vec4<u32>(u_input.b.x, 1u, var_0.b.x, var_0.b.x), vec4<u32>(4294967295u, 80522u, var_0.b.x, var_4.a.x)))), select(select(_wgslsmith_mult_i32(u_input.a, abs(-39226i)), -1i, func_1()), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(var_1.a.b, global0.xx), vec2<i32>(12703i, u_input.a), vec2<i32>(var_1.a.b.x, -2147483647i)), global0.xz), var_0.a.x), 741f);
}

