struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(660f))))) - _wgslsmith_f_op_f32(max(-1000f, -673f))), 302f));
    let var_1 = abs(_wgslsmith_mod_vec2_u32(vec2<u32>(28545u, 18615u), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(35734u, 16069u), vec2<u32>(59378u, 22584u))));
    let var_2 = select(0u, ~1424u, _wgslsmith_f_op_f32(floor(811f)) <= _wgslsmith_f_op_f32(-var_0));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1180f)))) <= _wgslsmith_f_op_f32(f32(-1f) * -1558f), -max(vec3<i32>(~u_input.a.x, abs(0i), firstLeadingBit(u_input.a.x)), u_input.a.wxx), countOneBits(countOneBits(vec2<i32>(u_input.a.x, 40273i)) >> (vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 0u, var_2), vec3<u32>(var_2, 21140u, 26853u))) % vec2<u32>(32u))), Struct_2(Struct_1(5568i, vec3<bool>(true, var_0 < var_0, true))));
    let var_4 = ~countOneBits(var_1.x);
    return !vec4<bool>(all(vec3<bool>(var_3.d.a.b.x & false, true, all(vec4<bool>(var_3.a, false, true, var_3.a)))), false, var_1.x >= _wgslsmith_div_u32(10795u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_4, 35525u), vec3<u32>(var_1.x, var_4, var_2))), true | all(var_3.d.a.b.yz));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = select(vec4<bool>(false, true, !select(select(true, true, true), all(vec2<bool>(false, false)), true), true), !func_3(), 49624i > _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, ~1i, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, arg_0), -u_input.a.yzx, u_input.a.yxw ^ vec3<i32>(arg_0, -17299i, -7413i))));
    var var_1 = select(vec4<bool>(((var_0.x && false) & !var_0.x) | var_0.x, arg_0 <= -1i, true, true), vec4<bool>(false, !all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, var_0.x, true, false), var_0.x)), !var_0.x, var_0.x), select(select(!select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x), !select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, false, false, false)), !var_0.x || (var_0.x && var_0.x)), func_3(), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, u_input.a.x), vec4<i32>(arg_0, 0i, u_input.a.x, u_input.a.x)) <= abs(~(-2147483647i))));
    let var_2 = Struct_3(var_1.x, u_input.a.xyy, firstTrailingBit(u_input.a.xw), Struct_2(Struct_1(25416i, var_1.wwx)));
    var_1 = vec4<bool>(true != (_wgslsmith_f_op_f32(ceil(-631f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(441f + 888f))), var_1.x, true, false);
    var_1 = select(!(!select(vec4<bool>(var_2.a, false, false, var_1.x), vec4<bool>(var_0.x, true, var_1.x, false), vec4<bool>(true, false, var_1.x, var_0.x))), vec4<bool>(var_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 18765u, 5934u), vec4<u32>(4294967295u, 80366u, 0u, 0u)) < reverseBits(~4294967295u), func_3().x && true, var_1.x), false);
    return var_2.d.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3) -> vec2<i32> {
    let var_0 = func_2(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(12519i, 29717i), reverseBits(arg_2.c)), vec2<i32>(~1i, firstLeadingBit(arg_2.d.a.a))), -88141i));
    let var_1 = firstTrailingBit(~1u);
    let var_2 = abs(var_1);
    var var_3 = Struct_2(arg_2.d.a);
    var_3 = Struct_2(Struct_1(-firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_3.a.a, arg_0.a, u_input.a.x), u_input.a)), vec3<bool>(func_3().x, arg_1.x, true)));
    return arg_2.b.yz;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(func_2(-(i32(-1i) * -u_input.a.x)));
    return arg_1.a.d;
}

fn func_1() -> Struct_4 {
    var var_0 = func_5(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), func_4(func_2(u_input.a.x), vec2<bool>(false, true), Struct_3(true, vec3<i32>(u_input.a.x, -2147483647i, -1i), u_input.a.xy, Struct_2(Struct_1(31072i, vec3<bool>(false, true, false)))))), vec2<i32>(u_input.a.x, _wgslsmith_add_i32(-2147483647i, u_input.a.x))), Struct_4(Struct_3(all(vec2<bool>(true, true)) && true, ~select(u_input.a.zxx, vec3<i32>(3104i, u_input.a.x, -35157i), vec3<bool>(true, true, false)), ~abs(u_input.a.xy), Struct_2(func_2(u_input.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1141f))))), func_2(68403i));
    var_0 = Struct_2(Struct_1(-1i, !vec3<bool>(var_0.a.b.x, true, var_0.a.b.x)));
    var var_1 = vec4<bool>(!((-40086i >= u_input.a.x) == any(select(vec4<bool>(true, false, var_0.a.b.x, true), vec4<bool>(var_0.a.b.x, false, var_0.a.b.x, var_0.a.b.x), true))), var_0.a.b.x, true, all(var_0.a.b.xy));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1404f, -165f)) * _wgslsmith_f_op_f32(max(1507f, 2457f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-502f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(950f, -949f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -136f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(303f - -1504f), -1218f, _wgslsmith_f_op_f32(-323f * 1662f), _wgslsmith_f_op_f32(343f - 413f))), select(!func_3(), select(vec4<bool>(false, var_1.x, true, false), select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(false, true, var_1.x, var_1.x), false), vec4<bool>(var_0.a.b.x, var_1.x, var_1.x, true)), func_3()))));
    let var_3 = u_input.a.x >> (max(~26436u, ~_wgslsmith_mult_u32(select(31366u, 4294967295u, var_1.x), countOneBits(0u))) % 32u);
    return Struct_4(Struct_3(true, vec3<i32>(~(var_3 | -1i), ~abs(u_input.a.x), max(-1i, reverseBits(var_0.a.a))), _wgslsmith_clamp_vec2_i32(reverseBits(u_input.a.xy & vec2<i32>(var_3, u_input.a.x)), func_4(var_0.a, vec2<bool>(true, false), Struct_3(var_1.x, u_input.a.wxx, u_input.a.zz, Struct_2(Struct_1(u_input.a.x, var_0.a.b)))), u_input.a.zx >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), Struct_2(Struct_1(2147483647i, !var_0.a.b))));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    let var_0 = select(!(!select(func_3(), !vec4<bool>(arg_1.a.a, true, arg_2.b.x, true), true)), !select(!select(vec4<bool>(true, false, arg_2.b.x, true), vec4<bool>(arg_0.x, arg_1.a.a, arg_1.a.a, true), vec4<bool>(false, true, arg_0.x, arg_2.b.x)), vec4<bool>(true, true, true, true), vec4<bool>(true, !arg_1.a.a, true, arg_1.a.b.x != -2147483647i)), false);
    var var_1 = var_0.yz;
    var_1 = !var_0.zw;
    var_1 = vec2<bool>(!(29771u <= select(_wgslsmith_dot_vec3_u32(vec3<u32>(29930u, 4294967295u, 35981u), vec3<u32>(0u, 13074u, 1u)), _wgslsmith_sub_u32(77643u, 1u), true)), !(!(!(-67885i != arg_1.a.d.a.a))));
    var_1 = func_5(arg_1.a.b.yx, arg_1, 1654f, Struct_1(7462i, select(!vec3<bool>(arg_0.x, false, var_0.x), vec3<bool>(true, !arg_2.b.x, arg_0.x), func_2(36602i).b.x & select(var_1.x, var_0.x, arg_2.b.x)))).a.b.yy;
    return arg_1.a.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<bool>(select(true, any(vec4<bool>(false, true, false, true)), false), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), all(vec2<bool>(true, true)))), true), func_1(), Struct_1(func_4(func_2(u_input.a.x), vec2<bool>(false, false), func_1().a).x >> (max(firstTrailingBit(39794u), 18282u) % 32u), vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 1i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) == -u_input.a.x, any(func_3().wx), all(func_3()))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-463f, -824f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(794f * 223f))))));
    var var_2 = Struct_4(Struct_3(any(var_0.b.zy), u_input.a.xyy, ~u_input.a.yy, Struct_2(func_6(func_2(u_input.a.x).b, Struct_4(Struct_3(false, u_input.a.zzw, vec2<i32>(var_0.a, u_input.a.x), Struct_2(Struct_1(-1i, vec3<bool>(var_0.b.x, false, false))))), Struct_1(var_0.a, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, 4294967295u);
}

