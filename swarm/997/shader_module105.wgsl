struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = u_input.a.x;
    var var_1 = true;
    var_1 = all(vec4<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), select(false, false, true))), !(!all(vec4<bool>(true, true, true, false))), false, false));
    var var_2 = vec3<bool>(!all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), 16151u >= _wgslsmith_dot_vec2_u32(u_input.c.zz, _wgslsmith_mult_vec2_u32(abs(u_input.c.yw), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, u_input.c.x), vec2<u32>(4294967295u, arg_0)))), true);
    var_1 = var_2.x;
    return Struct_2(countOneBits(_wgslsmith_clamp_u32(u_input.c.x, u_input.b | 4974u, u_input.b)));
}

fn func_3(arg_0: Struct_2) -> Struct_2 {
    global0 = array<vec2<f32>, 13>();
    global0 = array<vec2<f32>, 13>();
    global0 = array<vec2<f32>, 13>();
    let var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-519f, 904f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-630f, -382f)))), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(arg_0.a, 13u)])), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 0i), u_input.a.xx), u_input.a.yz), select(_wgslsmith_div_i32(1i, -51713i), -u_input.a.x, any(vec3<bool>(true, true, false))), _wgslsmith_mod_i32(reverseBits(2147483647i), u_input.a.x), reverseBits(u_input.a.x | 2147483647i)) >> (select(min(vec4<u32>(5167u, u_input.c.x, u_input.b, 28884u), ~u_input.c), vec4<u32>(4294967295u, arg_0.a, 62901u, ~6680u), all(vec4<bool>(false, true, false, false))) % vec4<u32>(32u)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), func_2(arg_0.a).a > reverseBits(11403u)), true), all(vec4<bool>(!(arg_0.a >= 4294967295u), any(vec3<bool>(true, true, true)), ~u_input.b <= 4294967295u, true)));
    global0 = array<vec2<f32>, 13>();
    return arg_0;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global0 = array<vec2<f32>, 13>();
    let var_0 = select(select(abs(~min(u_input.c.xy, vec2<u32>(arg_0.a, u_input.c.x))), abs(abs(~u_input.c.ww)), vec2<bool>(true, true)), select(vec2<u32>(~arg_0.a, u_input.c.x), u_input.c.wx, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(u_input.a.x != -4230i, true))), all(!vec4<bool>(true, true, true, any(vec3<bool>(false, false, false)))));
    global0 = array<vec2<f32>, 13>();
    global0 = array<vec2<f32>, 13>();
    global0 = array<vec2<f32>, 13>();
    return Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0, firstTrailingBit(firstLeadingBit(var_0)) ^ var_0), 13u)], vec4<i32>(u_input.a.x, -(~u_input.a.x), u_input.a.x, ~_wgslsmith_mult_i32(-28810i, firstLeadingBit(-1i))), !vec2<bool>(false, any(vec2<bool>(true, false))), true);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1414f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1497f)) * arg_1.a.x), arg_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -475f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_2, _wgslsmith_f_op_vec4_f32(trunc(arg_2)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.x - arg_1.a.x))), _wgslsmith_f_op_f32(-func_4(Struct_2(arg_0.a)).a.x), -859f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1198f))))));
    var var_1 = ~u_input.c ^ vec4<u32>(71981u, 4294967295u, abs(4294967295u), ~(~(~70139u)));
    global0 = array<vec2<f32>, 13>();
    let var_2 = u_input.a.x;
    let var_3 = arg_0;
    return func_4(arg_0);
}

fn func_1() -> vec3<f32> {
    var var_0 = vec3<f32>(1f, 1f, 1f);
    var var_1 = false;
    let var_2 = func_5(Struct_2(4294967295u), func_4(func_3(func_2(_wgslsmith_mod_u32(4294967295u, u_input.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(var_0.x * -294f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -516f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 142f, 1593f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1211f, -398f, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))));
    global0 = array<vec2<f32>, 13>();
    var var_3 = !vec4<bool>(func_5(func_2(u_input.b), var_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_2.a.x, var_2.a.x, -2256f) - vec4<f32>(-662f, var_0.x, var_0.x, var_2.a.x))).b.x == 23870i, true, all(vec3<bool>(all(var_2.c), any(vec4<bool>(false, false, false, var_2.d)), any(vec2<bool>(true, var_2.c.x)))), !var_2.c.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(145f, 162f, var_0.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -195f, -709f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(217f, var_2.a.x, var_0.x), vec3<f32>(var_0.x, var_2.a.x, var_0.x)))))));
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = func_5(Struct_2(18342u), func_5(Struct_2(arg_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0[_wgslsmith_index_u32(arg_0.x, 13u)]))), vec4<i32>(31933i, u_input.a.x, countOneBits(u_input.a.x), arg_1), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), arg_1 <= (67264i ^ u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1086f))), _wgslsmith_f_op_f32(1f - arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -1000f, 237f, 577f) + vec4<f32>(arg_2.x, -437f, arg_2.x, 862f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(662f, arg_2.x, 185f, arg_2.x)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), ~u_input.a.x <= -35142i))));
    let var_1 = func_2(arg_0.x);
    var var_2 = ~vec3<u32>(78420u, _wgslsmith_mod_u32(4294967295u, 1u), 88735u << (arg_0.x % 32u));
    global0 = array<vec2<f32>, 13>();
    var var_3 = select(vec4<u32>(~(min(arg_0.x, var_2.x) >> ((u_input.b & var_1.a) % 32u)), min(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(arg_0.x, 74134u)), ~(u_input.b & 1u)), firstTrailingBit(~(~arg_0.x)), abs(0u)), select(reverseBits(abs(vec4<u32>(var_1.a, arg_0.x, var_1.a, 1u)) & vec4<u32>(arg_0.x, 36238u, var_2.x, 0u)), u_input.c, false & !(var_0.c.x | false)), select(vec4<bool>(false, all(var_0.c), !(var_0.d & false), _wgslsmith_f_op_f32(max(-1051f, arg_2.x)) >= var_0.a.x), vec4<bool>(!(!var_0.d), ~90916u <= (var_2.x ^ var_2.x), all(!vec2<bool>(var_0.d, true)), var_0.d), ~var_0.b.x == (-var_0.b.x | (49684i & var_0.b.x))));
    return global0[_wgslsmith_index_u32(u_input.b, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(select(reverseBits(vec2<u32>(u_input.b, 1u) << (vec2<u32>(36389u, u_input.c.x) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 4064u), vec2<u32>(3183u, u_input.c.x), ~u_input.c.yw), true), u_input.c.yz), ~_wgslsmith_div_vec2_u32(~(u_input.c.xz << (vec2<u32>(1u, u_input.c.x) % vec2<u32>(32u))), ~(~vec2<u32>(u_input.c.x, u_input.c.x))), ~_wgslsmith_add_vec2_u32(u_input.c.zw, vec2<u32>(79465u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c))));
    global0 = array<vec2<f32>, 13>();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(~(~vec2<u32>(u_input.b, var_0.x)), ~u_input.a.x, _wgslsmith_f_op_vec3_f32(func_1())))), select(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, ~u_input.a.x, -u_input.a.x)), reverseBits(func_5(func_3(Struct_2(4294967295u)), Struct_1(global0[_wgslsmith_index_u32(15719u, 13u)], vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -12837i), vec2<bool>(false, false), false), vec4<f32>(var_1, -1000f, var_1, var_1)).b), vec4<bool>(true, true, true, true)), vec2<bool>(true, true), false);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1()).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(1i, i32(-1i) * -u_input.a.x, select(u_input.a.x, select(var_2.b.x, u_input.a.x, false), false)) & reverseBits(var_2.b.x), ~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(u_input.c.zzw), vec3<u32>(1u, 0u, 4294967295u)), _wgslsmith_add_vec3_u32(u_input.c.wyx, u_input.c.wzx)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_2.a.x, var_1, 1079f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_2.a.x, 2449f, var_2.a.x))))) - vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1077f * var_1) * -289f), var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1051f))));
}

