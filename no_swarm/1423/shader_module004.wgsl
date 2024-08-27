struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1434u, -700f, vec2<u32>(1u, 19914u), vec3<f32>(-1380f, -409f, -1420f), 46788u), Struct_1(0u, -797f, vec2<u32>(43317u, 24485u), vec3<f32>(875f, -889f, 1000f), 23809u), Struct_1(4294967295u, 622f, vec2<u32>(9700u, 27217u), vec3<f32>(132f, 1361f, -1326f), 4294967295u), Struct_1(92418u, 696f, vec2<u32>(44873u, 8056u), vec3<f32>(-709f, 748f, 366f), 40775u), Struct_1(41448u, 398f, vec2<u32>(1u, 83659u), vec3<f32>(-524f, -1023f, 2509f), 1u));

var<private> global2: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(0i, -1i), vec2<i32>(-19540i, 31288i), vec2<i32>(0i, 1i), vec2<i32>(18118i, 36557i), vec2<i32>(0i, 0i), vec2<i32>(0i, i32(-2147483648)));

var<private> global3: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = vec4<bool>(20901u == _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(arg_1.c.x, arg_0.a, u_input.a), arg_1.e), select(!(arg_0.a != u_input.b.x), false, false) || (any(vec2<bool>(true, true)) || true), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), any(vec4<bool>(true, 504f != arg_1.b, true, true)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(-arg_1.b), -542f);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(arg_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_1.d))), select(var_0.xxx, var_0.zzy, !vec3<bool>(var_0.x, false, true)))))) * arg_1.d);
    var_1 = vec3<f32>(arg_1.d.x, -234f, _wgslsmith_f_op_f32(531f * _wgslsmith_f_op_f32(163f + _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(-1000f * arg_1.d.x))))));
    var var_3 = arg_0;
    return arg_1.c;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<bool>) -> i32 {
    let var_0 = 0u;
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.d.x, -386f) - _wgslsmith_f_op_f32(f32(-1f) * -1581f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(floor(arg_0.a.b))), arg_0.b) * arg_0.b));
    let var_1 = func_2(Struct_3(firstLeadingBit(var_0) & 4294967295u, u_input.c.wxw), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, var_0, 0u) | select(arg_0.c, arg_0.c, vec4<bool>(arg_2.x, arg_2.x, true, false)), vec4<u32>(var_0, arg_0.a.c.x, var_0, var_0) & ~arg_0.c), 966f, vec2<u32>(select(var_0, u_input.b.x, false) & var_0, 4471u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b, _wgslsmith_div_f32(arg_0.b, arg_0.b), 412f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-118f, arg_0.b, 874f) - arg_0.a.d), arg_2.x)), 4294967295u | u_input.b.x)).x;
    let var_2 = select(!select(vec2<bool>(arg_2.x, arg_2.x && arg_2.x), vec2<bool>(true, true), true), arg_2, any(select(!(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), vec4<bool>(true, true, true, true), true)));
    let var_3 = firstTrailingBit(vec2<u32>(max(_wgslsmith_mult_u32(~4294967295u, 52173u), _wgslsmith_dot_vec2_u32(abs(arg_0.c.xw), arg_0.c.zy)), abs(52104u)));
    return arg_1.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> u32 {
    var var_0 = ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.c | vec2<u32>(0u, 5450u), vec2<u32>(arg_1.a, u_input.b.x)), func_2(Struct_3(arg_1.c.x, vec3<i32>(-2147483647i, arg_3.x, -32431i)), Struct_1(122199u, arg_1.d.x, vec2<u32>(arg_1.e, 16330u), arg_1.d, 0u))));
    let var_1 = _wgslsmith_div_vec3_i32(select(vec3<i32>(~arg_3.x & func_3(Struct_2(Struct_1(1u, arg_1.d.x, vec2<u32>(437u, 4294967295u), vec3<f32>(1123f, -1477f, -308f), 31801u), arg_1.b, vec4<u32>(4294967295u, 0u, 25369u, 1u)), arg_3, vec2<bool>(false, true)), 0i, -max(arg_3.x, u_input.c.x)), max(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(45240i, -1i, arg_0)), ~vec3<i32>(u_input.c.x, arg_0, 1i), vec3<i32>(62188i, u_input.c.x, 10790i)), arg_3), select(select(vec3<bool>(false, true, arg_2), vec3<bool>(arg_2, false, false), vec3<bool>(false, false, true)), !(!vec3<bool>(false, false, arg_2)), all(select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, false, arg_2), false)))), ~abs(vec3<i32>(-arg_3.x, _wgslsmith_dot_vec2_i32(arg_3.zy, vec2<i32>(u_input.c.x, arg_3.x)), -arg_0)));
    var var_2 = !vec2<bool>(!arg_2, true);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 6>();
    var var_0 = Struct_1(func_1(u_input.c.x, Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.b.x), select(1u, u_input.a, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -630f), 1193f)), vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 1u), _wgslsmith_mult_u32(0u, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-333f, -1014f, 1652f)))), ~u_input.a), select(!all(vec3<bool>(false, true, true)), true, true), vec3<i32>(~0i, 2147483647i, u_input.c.x)), 1307f, vec2<u32>(u_input.b.x << (~(u_input.a | 4075u) % 32u), 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-486f, 642f, -233f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-942f, 932f, 891f) * vec3<f32>(-1451f, -1414f, -770f)))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-958f, 143f, 1204f), vec3<f32>(-643f, 807f, -504f))))))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(u_input.a, ~2358u, _wgslsmith_div_u32(44468u, u_input.b.x), ~631u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(8412u, u_input.b.x, 1u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(18987u, 32609u, u_input.a, u_input.b.x), vec4<u32>(u_input.a, 1u, 0u, u_input.b.x))), select(vec4<u32>(u_input.a, u_input.b.x, 1u, u_input.b.x) >> (vec4<u32>(u_input.a, 8491u, 2158u, 38405u) % vec4<u32>(32u)), reverseBits(vec4<u32>(0u, 41574u, 4294967295u, 4294967295u)), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)))));
    let var_1 = vec4<bool>(false, false, false, select(38655i > ~u_input.c.x, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, true))), true));
    global3 = 744f;
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(exp2(var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(204f))) + 1191f)));
    let x = u_input.a;
    s_output = StorageBuffer(~67443u, -26842i);
}

