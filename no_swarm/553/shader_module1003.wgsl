struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 19>;

var<private> global1: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    global1 = true;
    let var_0 = vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, true, false)), false), !(u_input.b.x == u_input.b.x))), !(!(any(vec4<bool>(true, false, true, false)) | true)));
    global1 = all(select(vec2<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), true), var_0, var_0.x));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))) + vec2<f32>(-161f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1159f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-2061f, -202f)), _wgslsmith_f_op_f32(select(-507f, 833f, var_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(step(1000f, 337f)), _wgslsmith_div_f32(1517f, -212f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1188f, -117f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-908f, 428f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1573f, -429f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-549f, -1376f)))))), select(var_0, select(select(!var_0, !var_0, select(vec2<bool>(var_0.x, var_0.x), var_0, true)), select(select(var_0, var_0, var_0), !vec2<bool>(var_0.x, true), !var_0.x), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(707f, -1118f, var_0.x))) == -465f)));
    return var_2.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f + 1152f)))))), max(u_input.e.ywx, vec3<i32>(abs(u_input.a), 2147483647i, u_input.e.x)));
    let var_1 = select(select(vec4<bool>(all(select(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], vec3<bool>(true, true, false), vec3<bool>(true, true, false))), true, !(1i >= u_input.d), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true))), true), any(vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))), any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), true)));
    let var_2 = var_0.a;
    var var_3 = 0u;
    var var_4 = _wgslsmith_f_op_f32(func_3());
    return Struct_2(var_0.a, _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_sub_vec3_i32(var_0.c, vec3<i32>(-8687i, var_0.c.x, u_input.d) | countOneBits(var_0.c << (vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = func_2(_wgslsmith_div_vec3_u32(~firstTrailingBit(vec3<u32>(0u, u_input.b.x, arg_3)), ~countOneBits(vec3<u32>(50572u, 8112u, arg_3))));
    global0 = array<vec3<bool>, 19>();
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(290f, -1203f))) == _wgslsmith_f_op_f32(trunc(var_1.b)), !select(all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true, true));
    var var_3 = select(vec2<bool>(u_input.b.x != ~(arg_3 | 4294967295u), ~4294967295u != u_input.b.x), vec2<bool>(true, true), (~_wgslsmith_clamp_u32(16552u, arg_3, 4294967295u) < (select(1u, arg_3, var_2.x) | arg_3)) & true);
    return func_2(~(u_input.b >> (~vec3<u32>(arg_3, arg_3, 0u) % vec3<u32>(32u)))).a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(abs(vec2<i32>(arg_3.c.x, arg_3.c.x))), reverseBits(vec2<i32>(3243i, 18095i))), -1i), -2147483647i, 58538i, _wgslsmith_sub_i32(-1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(10569i, 0i, u_input.c), vec3<i32>(arg_2.c.x, 2147483647i, arg_3.c.x)), vec3<i32>(1i, arg_3.c.x, -17536i)), ~(~16720i))));
    let var_1 = u_input.e.xy;
    var var_2 = Struct_2(arg_1, _wgslsmith_f_op_f32(select(arg_1.a, arg_3.b, select((i32(-1i) * -44406i) == var_0.x, false, _wgslsmith_f_op_f32(-1368f + arg_1.a) == _wgslsmith_f_op_f32(-arg_1.a)))), -vec3<i32>(~reverseBits(arg_3.c.x), var_1.x, abs(var_0.x)));
    var var_3 = func_2(vec3<u32>(1u, 4294967295u, 4294967295u));
    var var_4 = select(vec3<bool>(true, !(u_input.b.x <= u_input.b.x), !(!all(vec3<bool>(true, true, false)))), vec3<bool>(all(vec4<bool>(true, true, true, true)) != any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false)), false, (_wgslsmith_f_op_f32(f32(-1f) * -207f) >= var_2.b) & true), true);
    return !(!(-_wgslsmith_mod_i32(var_2.c.x, 0i) == -countOneBits(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(func_4(vec3<u32>(~u_input.b.x << (~1u % 32u), ~2970u, select(1u, 1u, false)), func_1(Struct_1(_wgslsmith_f_op_f32(trunc(1057f))), u_input.a, vec3<f32>(-218f, -1366f, -445f), u_input.b.x), func_2(vec3<u32>(72185u, 0u << (u_input.b.x % 32u), 27974u)), func_2(vec3<u32>(1u, min(u_input.b.x, 58016u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 30761u), vec2<u32>(4294967295u, 4294967295u))))), _wgslsmith_f_op_f32(exp2(1f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -478f))), false);
    var var_0 = !vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_1 = !vec2<bool>(countOneBits(u_input.d) <= -1i, !(!(var_0.x && var_0.x)));
    var var_2 = vec2<bool>(!(!any(vec2<bool>(var_1.x, false))), true);
    global1 = any(!(!vec3<bool>(var_1.x, var_2.x, var_2.x))) && (!all(!var_1) | true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(u_input.d), u_input.e.x, -(~(~u_input.a)), min(~u_input.d & 1i, u_input.c)), -firstTrailingBit(-18927i), ~u_input.c >> (~u_input.b.x % 32u));
}

