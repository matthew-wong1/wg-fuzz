struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f))), _wgslsmith_f_op_f32(-1845f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -241f)))), global0.x))));
    let var_1 = arg_0.a;
    var var_2 = true;
    var_2 = !select(all(global0.xw), true, true);
    let var_3 = arg_2.a;
    return !(!vec2<bool>(global0.x, !all(vec3<bool>(global0.x, global0.x, false))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: i32) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(~arg_2, u_input.a.xz));
    let var_1 = func_3(Struct_2(Struct_1(-11563i, ~var_0.a.b)), (var_0.a.a >> (0u % 32u)) & _wgslsmith_div_i32(reverseBits(var_0.a.a), -26214i), Struct_2(var_0.a));
    global0 = vec4<bool>(false, global0.x, select(func_3(var_0, _wgslsmith_div_i32(1i, arg_0.x), var_0).x && select(global0.x, true, true), -195f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -450f) - _wgslsmith_f_op_f32(ceil(-700f))), all(global0.zxx)), false);
    let var_2 = vec4<i32>(i32(-1i) * -_wgslsmith_mult_i32(var_0.a.a, min(arg_0.x, -13377i)), -arg_1.x, -_wgslsmith_div_i32((arg_1.x | var_0.a.a) << (20369u % 32u), arg_1.x), countOneBits(-6012i | _wgslsmith_mult_i32(~28509i, _wgslsmith_sub_i32(-28378i, arg_2))));
    global0 = vec4<bool>(select(false, true, all(!var_1)), true, global0.x, true);
    return !select(!vec4<bool>(any(vec4<bool>(false, true, false, false)), false, true, arg_1.x <= arg_1.x), !vec4<bool>(false, global0.x, global0.x, var_1.x), vec4<bool>(max(var_2.x, 14181i) < arg_1.x, true, false, global0.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(arg_2);
    var var_1 = Struct_2(arg_2);
    let var_2 = !(!(!func_2(countOneBits(vec3<i32>(-1i, 1i, arg_1.a)), vec3<i32>(var_1.a.a, arg_1.a, -17240i) | vec3<i32>(67035i, arg_1.a, -28793i), arg_1.a)));
    let var_3 = vec2<u32>(_wgslsmith_add_u32(max(56952u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.a.b, u_input.a.xz, var_1.a.b), ~arg_1.b)), _wgslsmith_dot_vec2_u32(arg_2.b, ~u_input.a.yx)), 1u);
    var_1 = Struct_2(Struct_1(-var_0.a.a, max(u_input.a.xz, ~_wgslsmith_mod_vec2_u32(var_1.a.b, vec2<u32>(0u, 28769u)))));
    return Struct_2(Struct_1(-12498i, ~arg_2.b));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_4(select(func_2(vec3<i32>(-arg_0, -32348i, -arg_0), firstLeadingBit(vec3<i32>(1i, 1i, arg_0)), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, arg_0, arg_0), countOneBits(vec3<i32>(27661i, -2147483647i, arg_0)))), vec4<bool>(!(!global0.x), false, true, false), false), Struct_1(~max(65104i, -44350i) & ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(-60897i, 0i)), vec2<u32>(6005u, 1u)), Struct_1(~reverseBits(arg_0), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1470f, 250f, -1000f, 2180f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1213f, -628f, 573f, 880f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1213f, 382f, -986f, 1496f), vec4<f32>(-407f, 2340f, 949f, -2216f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1649f, -445f, -1000f, -1000f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-482f, 146f, 927f, -626f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(568f, 1168f, 958f, -1000f)), !vec4<bool>(global0.x, global0.x, global0.x, global0.x))))));
    var var_1 = _wgslsmith_dot_vec2_u32(~(firstTrailingBit(u_input.a.yz) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 28679u), u_input.a.yx) % vec2<u32>(32u))), vec2<u32>(firstTrailingBit(1u), 24272u)) >> ((38998u << (var_0.a.b.x % 32u)) % 32u);
    var var_2 = vec3<bool>(any(!global0.xxz), any(select(select(!vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true), select(true, global0.x, global0.x)), !select(global0.xw, global0.yw, global0.zy), true)), any(global0.zyx));
    var_1 = var_0.a.b.x;
    global0 = select(!(!func_2(~vec3<i32>(arg_0, arg_0, 16533i), vec3<i32>(51244i, arg_0, -2147483647i) | vec3<i32>(-1i, 13668i, var_0.a.a), -var_0.a.a)), !(!(!vec4<bool>(var_2.x, global0.x, true, global0.x))), !vec4<bool>(global0.x, !var_2.x, func_3(func_4(vec4<bool>(global0.x, global0.x, var_2.x, false), var_0.a, Struct_1(var_0.a.a, u_input.a.xx), vec4<f32>(284f, 199f, 317f, 1000f)), -24518i, func_4(vec4<bool>(var_2.x, global0.x, true, global0.x), Struct_1(1i, u_input.a.zz), Struct_1(arg_0, var_0.a.b), vec4<f32>(156f, 606f, 705f, 925f))).x, true));
    return func_4(func_2(vec3<i32>(21236i, 12328i, -max(arg_0, var_0.a.a)), vec3<i32>(-2147483647i, -(var_0.a.a & var_0.a.a), _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0, var_0.a.a), 1i)), 0i), Struct_1(var_0.a.a, var_0.a.b), Struct_1(-abs(~0i), vec2<u32>(u_input.a.x << (select(1u, 0u, true) % 32u), select(~u_input.a.x, 79533u, var_2.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f - 1725f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1420f)) + 774f), _wgslsmith_f_op_f32(f32(-1f) * -110f))), -2681f, _wgslsmith_f_op_f32(f32(-1f) * -896f))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_1(11916i);
    global0 = vec4<bool>(true, var_0, global0.x, false);
    global0 = select(select(select(!func_2(vec3<i32>(var_1.a, -1i, -1i), vec3<i32>(var_1.a, -2147483647i, var_1.a), var_1.a), func_2(vec3<i32>(var_1.a, var_1.a, var_1.a) ^ vec3<i32>(0i, 21518i, var_1.a), abs(vec3<i32>(var_1.a, 2147483647i, var_1.a)), var_1.a << (15080u % 32u)), func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a, var_1.a, var_1.a), vec3<i32>(var_1.a, -11784i, var_1.a)), -vec3<i32>(var_1.a, var_1.a, var_1.a), var_1.a)), !func_2(~vec3<i32>(-2006i, -19796i, 0i), ~vec3<i32>(var_1.a, var_1.a, var_1.a), var_1.a), vec4<bool>(true, all(vec4<bool>(false, var_0, global0.x, true)) != true, false, true)), vec4<bool>(all(select(!vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, var_0, false, true), any(vec4<bool>(var_0, var_0, false, true)))), global0.x, global0.x, select(true, any(global0.zz), all(!vec4<bool>(false, true, var_0, global0.x)))), !select(vec4<bool>(true, !var_0, any(vec4<bool>(var_0, false, true, var_0)), true), !(!vec4<bool>(var_0, false, false, global0.x)), vec4<bool>(false, true, var_0, true)));
    global0 = !func_2(abs(_wgslsmith_div_vec3_i32(min(vec3<i32>(-1i, var_1.a, 15042i), vec3<i32>(var_1.a, -9835i, 13288i)), vec3<i32>(var_1.a, -1i, var_1.a) | vec3<i32>(var_1.a, -51081i, var_1.a))), ~(vec3<i32>(var_1.a, var_1.a, var_1.a) & vec3<i32>(var_1.a, 64815i, -34726i)), var_1.a);
    let var_2 = Struct_2(func_1(var_1.a));
    let var_3 = ~(-vec2<i32>(~var_2.a.a >> (~u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-11330i, var_2.a.a, -8748i, 35277i), vec4<i32>(var_1.a, 0i, -47372i, 51989i)), -vec4<i32>(var_2.a.a, 0i, -15903i, 1i))));
    var var_4 = _wgslsmith_add_i32(-abs(_wgslsmith_mod_i32(var_1.a, ~27753i)), _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_3.x, var_1.a, -2147483647i, var_2.a.a)), -vec4<i32>(var_1.a, 29221i, -51919i, var_3.x)), abs(firstLeadingBit(vec4<i32>(var_3.x, 1326i, var_3.x, var_1.a))) >> (~(~vec4<u32>(u_input.a.x, 4294967295u, 69162u, u_input.a.x)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(min(max(vec4<i32>(-1i, 21131i, var_2.a.a, -1i), vec4<i32>(var_3.x, var_2.a.a, var_3.x, 9147i)) | ~vec4<i32>(var_1.a, var_3.x, var_1.a, var_3.x), vec4<i32>(-33892i, firstTrailingBit(-2147483647i), var_1.a, var_2.a.a)) << (firstTrailingBit(~vec4<u32>(53186u, 64378u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(689f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(269f, -563f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(2017f, 1156f), vec2<f32>(-2330f, -1481f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-786f, -226f))), global0.xz)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1972f, -1000f) * vec2<f32>(2063f, 1222f)) + vec2<f32>(-762f, 1000f))), func_2(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-16337i, var_1.a, 1i), vec3<i32>(1i, var_2.a.a, -66892i), global0.yxw), countOneBits(vec3<i32>(var_2.a.a, 2147483647i, var_1.a))), firstTrailingBit(vec3<i32>(var_1.a, var_2.a.a, -2147483647i) >> (vec3<u32>(u_input.a.x, 42912u, 7618u) % vec3<u32>(32u))), firstTrailingBit(var_1.a)).x)), _wgslsmith_sub_i32(10718i, 3472i));
}

