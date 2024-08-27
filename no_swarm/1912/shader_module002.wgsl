struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec4<u32> {
    var var_0 = vec4<i32>(u_input.a, reverseBits(select(u_input.a, reverseBits(u_input.a), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)))), u_input.a, ~_wgslsmith_clamp_i32(u_input.a & max(0i, -2147483647i), 14172i, u_input.a));
    var var_1 = vec3<u32>(1u, 1u, 1u) & _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 28373u, 1u), vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(25868u, 2743u, 4294967295u), vec3<u32>(1u, 25126u, 1u), vec3<u32>(1u, 16496u, 55207u))), vec3<u32>(1u, 1u, 1u), max(~vec3<u32>(1508u, 4294967295u, 86214u), ~firstLeadingBit(vec3<u32>(0u, 34307u, 3498u))));
    return vec4<u32>(~var_1.x, var_1.x, _wgslsmith_div_u32(111734u, ~0u), var_1.x);
}

fn func_2() -> Struct_1 {
    return Struct_1(false, 1i, u_input.a, abs(func_3() | ~vec4<u32>(4294967295u, 0u, 14960u, 0u)), vec3<bool>(true, true, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = func_2();
    let var_2 = Struct_1(true, -firstLeadingBit(_wgslsmith_sub_i32(func_2().c, arg_3.b)), -(~(-2147483647i | ~arg_0.c)), vec4<u32>(var_1.d.x, 4294967295u, 19884u, ~(firstTrailingBit(arg_3.d.x) << (var_1.d.x % 32u))), !select(arg_1.e, !vec3<bool>(arg_0.a, true, false), any(vec4<bool>(true, arg_3.a, arg_0.a, arg_0.a))));
    return Struct_1(false, arg_0.b, -1i, abs((var_1.d | arg_1.d) ^ abs(var_1.d)) >> (_wgslsmith_div_vec4_u32(min(_wgslsmith_clamp_vec4_u32(arg_1.d, vec4<u32>(arg_1.d.x, var_0.d.x, 43052u, 24176u), var_0.d), vec4<u32>(arg_0.d.x, 40827u, arg_1.d.x, 66251u)), _wgslsmith_add_vec4_u32(var_2.d, ~vec4<u32>(75992u, 0u, arg_3.d.x, 4294967295u))) % vec4<u32>(32u)), func_2().e);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_4(func_2(), Struct_1(true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 56841i, u_input.a) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, 27356i), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), ~vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a) << (vec4<u32>(7071u, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u))), 43559i, ~(~select(vec4<u32>(1u, 925u, 1u, 65589u), vec4<u32>(15932u, 52694u, 9346u, 7106u), true)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))), true, Struct_1(true, 32678i, u_input.a, _wgslsmith_add_vec4_u32(~(~vec4<u32>(31095u, 4294967295u, 4294967295u, 96265u)), vec4<u32>(~1u, 14391u, func_2().d.x, ~45873u)), vec3<bool>(true, select(true, all(vec2<bool>(false, true)), true), true)));
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, i32(-1i) * -var_0.c, -(i32(-1i) * -12411i)), _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.a, -25908i, var_0.b), vec3<i32>(~47877i, -u_input.a, -u_input.a))) | vec3<i32>(~u_input.a, _wgslsmith_clamp_i32(-(~(-40599i)), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 6327i) ^ vec3<i32>(-2147483647i, -2147483647i, u_input.a), vec3<i32>(var_0.c, u_input.a, var_0.b))), 1i);
    var_1 = vec3<i32>(_wgslsmith_div_i32(-2147483647i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-57074i, 2147483647i, -32168i), vec3<i32>(u_input.a, var_1.x, 4636i), vec3<i32>(0i, 24662i, 0i)), -vec3<i32>(var_1.x, var_0.b, var_1.x))), u_input.a, func_4(func_4(Struct_1(var_0.e.x, 0i, var_1.x, vec4<u32>(var_0.d.x, 4294967295u, 28161u, var_0.d.x), vec3<bool>(true, false, true)), var_0, true && !var_0.a, var_0), func_2(), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.a, true, var_0.a), var_0.a)), func_2()).b);
    var_1 = reverseBits(~_wgslsmith_clamp_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b, 1i, var_1.x), vec3<i32>(var_0.b, -43267i, 1i))), vec3<i32>(-1i) * -vec3<i32>(var_0.c, 2147483647i, -2147483647i), firstTrailingBit(vec3<i32>(-2147483647i, u_input.a, var_0.b))));
    let var_2 = var_1.x;
    return func_4(func_4(Struct_1(all(!var_0.e.yz), -var_1.x | max(1i, u_input.a), var_0.c, _wgslsmith_div_vec4_u32(~var_0.d, var_0.d), vec3<bool>(true, var_0.a, !var_0.e.x)), var_0, true, Struct_1(false, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-25192i, -2147483647i), var_1.zy)), _wgslsmith_mod_i32(1i, var_1.x), _wgslsmith_mod_vec4_u32(var_0.d, var_0.d) << (min(var_0.d, vec4<u32>(37704u, var_0.d.x, var_0.d.x, 0u)) % vec4<u32>(32u)), var_0.e)), func_4(func_2(), func_4(Struct_1(true, abs(24691i), i32(-1i) * -39422i, firstTrailingBit(vec4<u32>(18961u, 1u, var_0.d.x, 4294967295u)), var_0.e), var_0, !(!var_0.a), var_0), false, Struct_1(any(var_0.e.zy) & (var_0.e.x & true), 1i, _wgslsmith_div_i32(~var_0.b, _wgslsmith_mod_i32(u_input.a, u_input.a)), reverseBits(~vec4<u32>(var_0.d.x, 4294967295u, 26921u, var_0.d.x)), func_4(Struct_1(var_0.a, 47031i, var_0.b, var_0.d, var_0.e), Struct_1(false, var_1.x, 7817i, vec4<u32>(var_0.d.x, var_0.d.x, 0u, var_0.d.x), var_0.e), var_0.a, Struct_1(var_0.a, -14419i, -2147483647i, vec4<u32>(var_0.d.x, 14435u, var_0.d.x, var_0.d.x), vec3<bool>(var_0.e.x, var_0.e.x, var_0.a))).e)), false, func_4(var_0, Struct_1(true, -8861i, -50682i, vec4<u32>(reverseBits(0u), _wgslsmith_sub_u32(40563u, var_0.d.x), _wgslsmith_dot_vec3_u32(var_0.d.zzz, var_0.d.zzx), var_0.d.x), vec3<bool>(true, true && var_0.a, false)), var_0.a, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 15375u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(110f)) + _wgslsmith_f_op_f32(round(-234f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(211f * 633f))) - 995f)));
    let var_2 = func_1(_wgslsmith_f_op_f32(round(-1118f)));
    var var_3 = var_2.e.xx;
    var_3 = func_4(var_2, var_2, false, var_2).e.zy;
    let var_4 = vec2<i32>(func_4(func_1(var_1.x), func_2(), all(vec2<bool>(all(vec4<bool>(var_3.x, false, var_3.x, var_2.a)), all(vec2<bool>(false, false)))), Struct_1(false, 1i, abs(var_2.b), var_2.d, vec3<bool>(false, func_1(-1204f).e.x, func_2().a))).b, -26807i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(266f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)))), ~_wgslsmith_add_i32(var_2.b, u_input.a & var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
}

