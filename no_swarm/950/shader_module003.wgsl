struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-765f, _wgslsmith_f_op_f32(abs(269f))));
    let var_1 = Struct_1(!vec2<bool>(true, select(true, 26917u <= u_input.c.x, true)), vec2<u32>(84325u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(24272u, u_input.c.x, u_input.b.x, 0u), vec4<u32>(u_input.d, u_input.b.x, u_input.c.x, 4294967295u)), ~0u)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.c.zz << (u_input.b.yz % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = select(vec3<bool>(any(select(vec2<bool>(false, false), select(var_1.a, vec2<bool>(var_1.a.x, false), false), select(var_1.a, var_1.a, var_1.a.x))), var_1.a.x, var_1.a.x), vec3<bool>(all(!vec4<bool>(var_1.a.x, false, var_1.a.x, true)), all(vec2<bool>(true, true)), true), select(!(!vec3<bool>(var_1.a.x, true, false)), vec3<bool>(false, !all(vec4<bool>(false, false, var_1.a.x, false)), var_1.a.x), var_1.a.x & var_1.a.x));
    var_2 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(var_1.a.x == var_2.x, any(var_2.zy), true), select(!vec3<bool>(false, var_2.x, false), vec3<bool>(true, var_1.a.x, var_1.a.x), any(vec4<bool>(var_1.a.x, var_1.a.x, false, true)))), vec3<bool>(!all(vec2<bool>(true, var_2.x)), var_1.a.x, !(var_1.a.x | false)), var_1.a.x), vec3<bool>(false & !(1000f < var_0.x), true, var_2.x), true);
    let var_3 = Struct_3(!select(vec3<bool>(var_2.x, !var_1.a.x, !var_2.x), select(vec3<bool>(true, true, true), vec3<bool>(var_1.a.x, false, var_1.a.x), select(vec3<bool>(var_1.a.x, var_2.x, var_2.x), vec3<bool>(false, true, var_1.a.x), true)), select(vec3<bool>(var_1.a.x, var_2.x, true), !vec3<bool>(var_2.x, false, false), var_2.x)), vec4<bool>(false | (~var_1.b.x >= ~34223u), !all(!vec3<bool>(false, var_2.x, false)), true, all(select(!vec4<bool>(var_2.x, false, var_2.x, true), !vec4<bool>(false, true, var_1.a.x, true), select(vec4<bool>(var_2.x, true, true, true), vec4<bool>(true, var_1.a.x, false, var_1.a.x), true)))), _wgslsmith_dot_vec4_u32(u_input.b, ~firstTrailingBit(~u_input.b)));
    return select(min(~31793u, 0u) & _wgslsmith_sub_u32(var_3.c, reverseBits(~1u)), ~var_3.c, select(!(true | var_2.x), var_1.a.x | (all(var_1.a) && !var_3.a.x), true));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(step(-1540f, 1f));
    let var_1 = _wgslsmith_div_u32(max(1u, _wgslsmith_mod_u32(76642u, func_3())), firstTrailingBit(reverseBits(8259u)) >> (0u % 32u)) & ~_wgslsmith_dot_vec4_u32(~u_input.b & firstTrailingBit(vec4<u32>(arg_0.x, 0u, 72743u, 1u)), vec4<u32>(u_input.c.x, 27353u, 20653u, arg_0.x >> (u_input.a % 32u)));
    var var_2 = _wgslsmith_mod_i32(select(~(-countOneBits(1i)), -38451i, all(vec4<bool>(all(vec4<bool>(true, false, true, false)), false, any(vec4<bool>(true, false, true, true)), all(vec3<bool>(false, true, false))))), _wgslsmith_clamp_i32(~countOneBits(1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -20100i, 61649i, 28901i), firstTrailingBit(vec4<i32>(0i, 59005i, 1i, 0i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 20991i, 12920i), vec3<i32>(-2147483647i, -13059i, 1i)), ~60401i)), abs(_wgslsmith_mod_i32(~24031i, _wgslsmith_dot_vec4_i32(vec4<i32>(49849i, -2147483647i, 821i, 45317i), vec4<i32>(2147483647i, 2147483647i, 21921i, 2147483647i))))));
    var var_3 = firstTrailingBit(_wgslsmith_add_vec4_u32(~(~(~u_input.b)), vec4<u32>(~(~51279u), ~func_3(), u_input.b.x, 4294967295u)));
    let var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~(-firstTrailingBit(vec3<i32>(5480i, -42797i, 31461i))), -reverseBits(vec3<i32>(1i, 1i, 1i))), reverseBits(-vec3<i32>(~(-17148i), reverseBits(0i), firstTrailingBit(2147483647i))));
    return _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -852f) - -886f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_add_vec2_u32(u_input.c.xz, arg_2.yy | abs(vec2<u32>(56684u, u_input.c.x)));
    var var_1 = -560f;
    var_1 = arg_0.x;
    var_1 = arg_0.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_u32(~(vec2<u32>(0u, 4294967295u) | arg_2.zy), u_input.c.xz))));
    return -46496i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.wwz;
    var var_1 = vec4<bool>(!(!(any(vec3<bool>(true, true, false)) | true)), true, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)))), true);
    var var_2 = vec2<i32>(0i, _wgslsmith_mod_i32(~countOneBits(func_1(vec3<f32>(623f, 1115f, -1682f), -4194i, u_input.b)), 8115i));
    var var_3 = 1u;
    let var_4 = Struct_1(vec2<bool>(all(select(vec4<bool>(false, var_1.x, true, true), !vec4<bool>(var_1.x, false, true, var_1.x), var_1.x)), select(any(!vec4<bool>(false, var_1.x, false, true)), var_1.x, var_1.x)), u_input.c.yx);
    var_1 = select(!select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_4.a.x, var_4.a.x, false, true)), select(!vec4<bool>(var_4.a.x, var_1.x, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, var_1.x, var_4.a.x, false), vec4<bool>(var_4.a.x, var_1.x, false, true)), var_4.a.x)), vec4<bool>(var_4.a.x, true, !all(!vec4<bool>(false, false, true, var_4.a.x)), var_4.a.x), any(select(vec4<bool>(select(var_4.a.x, true, var_4.a.x), !var_1.x, var_1.x, var_4.a.x), vec4<bool>(false, var_4.a.x, !var_4.a.x, all(var_1.ww)), select(!vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(true, var_1.x, var_1.x, true), true))));
    let var_5 = Struct_2(Struct_1(select(vec2<bool>(false, var_1.x), !var_4.a, select(var_1.zw, !var_1.yx, any(vec4<bool>(var_1.x, var_1.x, true, false)))), firstLeadingBit(firstLeadingBit(u_input.c.yx >> (var_0.xz % vec2<u32>(32u))))), Struct_1(!var_4.a, firstTrailingBit(countOneBits(abs(vec2<u32>(var_4.b.x, 39935u))))));
    let var_6 = select(var_1.zz, vec2<bool>(!all(vec4<bool>(var_1.x, var_5.a.a.x, true, true)) & true, any(!(!vec4<bool>(false, true, var_1.x, true)))), any(var_1.wzy));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x, vec2<u32>(~1u << (var_0.x % 32u), 1u), -1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2184f, -2266f, -273f)))));
}

