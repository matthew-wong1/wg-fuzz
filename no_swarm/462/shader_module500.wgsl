struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-219f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -746f))), -259f, _wgslsmith_f_op_f32(1f - -342f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1945f, -894f, 653f, -874f) + vec4<f32>(-1000f, 1000f, 148f, -183f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(208f, 111f, -1516f, -619f) + vec4<f32>(-441f, 796f, -1215f, -914f)))))));
    var var_1 = false;
    let var_2 = u_input.a;
    return _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, firstTrailingBit(select(~33320u, 5806u, false)), select(_wgslsmith_add_u32(0u, 22140u), u_input.e.x, false)), u_input.e.zxx);
}

fn func_2(arg_0: vec3<u32>) -> bool {
    var var_0 = vec3<u32>(44356u, 0u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0, func_3()), ~arg_0.x));
    return select(true, true, !(2136u >= countOneBits(arg_0.x | 29441u)));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = select(!select(!vec4<bool>(true, arg_1.a.x, false, arg_1.a.x), vec4<bool>(true, true, arg_0 <= u_input.c, true), u_input.d <= 28454u), vec4<bool>(_wgslsmith_mod_i32(~arg_1.b, 1i) >= 1i, true, true, true), !vec4<bool>(true, any(!vec2<bool>(true, arg_1.a.x)), !arg_1.a.x | true, func_2(u_input.e.zxw)));
    var_0 = vec4<bool>(true, select(!func_2(vec3<u32>(u_input.e.x, 0u, u_input.e.x)), func_2(~u_input.e.xyz), func_2(min(u_input.e.xxx, u_input.e.yyw))) & arg_1.a.x, !(!(!(arg_1.a.x && var_0.x))), arg_1.a.x);
    var var_1 = Struct_1(reverseBits(abs(arg_0)), var_0.zxx, -1i, ~abs(func_3().x));
    let var_2 = Struct_1(-47857i, vec3<bool>(!(!func_2(u_input.e.zxz)), all(select(!var_1.b, var_0.yyy, true)), !(!var_1.b.x)), u_input.c, _wgslsmith_add_u32(var_1.d, 60404u ^ (func_3().x & abs(25651u))));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1557f + -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(638f - -462f))))), _wgslsmith_f_op_f32(sign(-802f)))));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = !(!select(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x)), vec4<bool>(arg_0.a.x && false, !arg_0.a.x, any(vec2<bool>(arg_0.a.x, true)), any(vec3<bool>(true, arg_0.a.x, arg_0.a.x))), !func_1(28357i, arg_0).a.x));
    var var_1 = arg_0;
    let var_2 = Struct_2(!var_0.wx, arg_1);
    var_1 = func_1(-2147483647i, func_1(arg_0.b, func_1(-_wgslsmith_sub_i32(arg_1, arg_0.b), func_1(u_input.a, arg_0))));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1426f, -530f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(298f, -1280f))))), 962f));
    return Struct_1(-35022i & var_1.b, select(vec3<bool>(true & !var_0.x, ~5831u != reverseBits(u_input.d), !arg_0.a.x), var_0.zzz, var_0.yyz), 1i, u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(select(u_input.c, ~(-34924i), (u_input.c & 28411i) != abs(u_input.c)), Struct_2(vec2<bool>(all(vec4<bool>(false, true, true, true)), true), (0i << (u_input.b % 32u)) & 10717i)), ~_wgslsmith_mod_i32(1i, 30319i), firstTrailingBit(~vec4<i32>(abs(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(u_input.a, -24743i)), min(u_input.c, u_input.c), 12803i)));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -558f), -355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-809f + -1720f)), _wgslsmith_f_op_f32(-1f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1632f + -1136f)))), -518f, _wgslsmith_f_op_f32(-1f)));
    var_1 = func_4(Struct_2(!vec2<bool>(u_input.a <= var_0.c, any(vec2<bool>(true, false))), 0i), ~(~(var_0.c ^ (i32(-1i) * -77846i))), vec4<i32>(-(firstTrailingBit(var_1.a) | 22691i), _wgslsmith_sub_i32(u_input.c, firstTrailingBit(var_0.c)), max(u_input.c >> (0u % 32u), -1i), u_input.a));
    var_1 = func_4(Struct_2(vec2<bool>(var_2.x >= _wgslsmith_f_op_f32(max(var_2.x, var_2.x)), var_1.b.x), u_input.a), max(-(var_1.c | _wgslsmith_div_i32(var_1.a, 18784i)), ~var_0.a), vec4<i32>(-46150i, u_input.a & var_1.c, select(~(-2147483647i), func_4(func_1(-2147483647i, Struct_2(vec2<bool>(var_0.b.x, false), var_1.a)), _wgslsmith_sub_i32(-7789i, var_1.c), firstTrailingBit(vec4<i32>(var_0.c, 9437i, 0i, 1i))).c, true), ~(-50110i)));
    var var_3 = func_4(func_1(7557i, func_1(-12117i, Struct_2(vec2<bool>(true, var_1.b.x), -166i >> (u_input.b % 32u)))), _wgslsmith_mult_i32(_wgslsmith_add_i32(i32(-1i) * -var_1.a, -29015i), 44369i), -(~_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, var_0.c, u_input.a)), select(vec4<i32>(-2147483647i, var_1.a, var_0.a, 52702i), vec4<i32>(-40996i, 13436i, var_0.c, 52965i), var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.e.yxy) ^ _wgslsmith_div_vec3_u32(u_input.e.xxz, vec3<u32>(0u, var_0.d, 4294967295u)), ~(~u_input.e.wwz))), select(_wgslsmith_div_vec2_u32(~abs(u_input.e.zy), ~(vec2<u32>(var_1.d, 86016u) ^ u_input.e.wz)), _wgslsmith_sub_vec2_u32(u_input.e.xz, u_input.e.wy), !(!var_1.b.yy)), vec4<i32>(12251i, -max(u_input.a, -18504i), -1i, ~(~(var_0.a >> (1u % 32u)))), var_2.x);
}

