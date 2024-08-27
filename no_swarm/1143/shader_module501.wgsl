struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

var<private> global2: array<vec2<bool>, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> vec4<i32> {
    global0 = arg_0.x;
    let var_0 = any(select(select(vec3<bool>(all(vec3<bool>(false, global1.a.d, false)), true, true), select(vec3<bool>(false, arg_1.a.b, arg_1.a.d), !vec3<bool>(false, arg_1.a.d, true), global1.a.c.x <= arg_1.a.c.x), !(!vec3<bool>(arg_1.a.b, global1.b.a, false))), vec3<bool>(false, arg_1.a.b, arg_1.b.a), !vec3<bool>(true, !global1.b.a, true)));
    let var_1 = countOneBits(select(arg_1.a.c.yx, _wgslsmith_mult_vec2_i32(vec2<i32>(global1.a.c.x, 33989i) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.c.x, 13548u), vec2<u32>(arg_1.c.x, u_input.a.x), vec2<u32>(arg_1.c.x, 16807u)) % vec2<u32>(32u)), abs(max(global1.a.c.yz, arg_1.a.c.zz))), global1.a.b));
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(floor(arg_0)), _wgslsmith_f_op_f32(max(-1104f, arg_0.x)) < global1.a.a.x, global1.a.c, global1.a.b), arg_1.b, _wgslsmith_div_vec4_u32(vec4<u32>(global1.c.x, _wgslsmith_dot_vec3_u32(~global1.c.zww, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.c.x, u_input.a.x, 0u), arg_1.c.zxz)), 0u, global1.c.x), (arg_1.c ^ (vec4<u32>(arg_1.c.x, 1u, u_input.a.x, arg_1.c.x) << (arg_1.c % vec4<u32>(32u)))) | u_input.a));
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.a.a)) * vec2<f32>(arg_0.x, arg_0.x))), !arg_1.b.a, vec4<i32>(1i, -arg_1.a.c.x, ~(~global1.a.c.x), firstTrailingBit(~1i)), select(var_0, any(!global2[_wgslsmith_index_u32(0u, 16u)]), arg_0.x >= -1486f)), Struct_2(arg_1.b.a), global1.c);
    return vec4<i32>(1i | _wgslsmith_dot_vec3_i32(arg_1.a.c.ywz, global1.a.c.zyw), _wgslsmith_mod_i32(-(firstTrailingBit(var_1.x) << (_wgslsmith_mod_u32(global1.c.x, global1.c.x) % 32u)), ~(-1i)), -_wgslsmith_mod_i32(~1i, _wgslsmith_sub_i32(-19539i | arg_1.a.c.x, global1.a.c.x)), 1i);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = min(u_input.a.yyx, vec3<u32>(4294967295u, abs(~select(0u, arg_1, arg_0)), ~arg_2));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a.a), !(arg_0 && arg_0), func_3(vec2<f32>(global1.a.a.x, _wgslsmith_f_op_f32(global1.a.a.x + -120f)), Struct_3(Struct_1(vec2<f32>(global1.a.a.x, global1.a.a.x), false, global1.a.c, true), Struct_2(false), abs(u_input.a))), !global1.b.a), global1.b, global1.c);
    global1 = var_1;
    var_0 = var_1.c.wzy;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a.x, var_1.a.a.x)), global1.b.a, vec4<i32>(~_wgslsmith_dot_vec4_i32(~var_1.a.c, reverseBits(vec4<i32>(var_1.a.c.x, 1i, 0i, global1.a.c.x))), 8048i, var_1.a.c.x, 0i), !var_1.a.d);
    return Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(var_1.a.a.x)), -1174f), !(!(var_1.a.a.x <= -299f)), vec4<i32>(-_wgslsmith_dot_vec2_i32(global1.a.c.ww, vec2<i32>(1i, 24973i)), 2166i, 1i, global1.a.c.x), all(!global2[_wgslsmith_index_u32(~40848u, 16u)])), Struct_2(!all(select(vec4<bool>(var_1.a.d, var_2.b, false, true), vec4<bool>(var_2.b, true, arg_0, var_1.a.b), vec4<bool>(var_1.b.a, true, var_1.a.b, false)))), max(vec4<u32>(_wgslsmith_clamp_u32(var_1.c.x, 4294967295u, 0u), var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_2, 0u), vec3<u32>(global1.c.x, arg_1, u_input.a.x)), 27497u), _wgslsmith_div_vec4_u32(~global1.c, vec4<u32>(9361u, 38119u, 1034u, 46120u) >> (vec4<u32>(83430u, 4294967295u, arg_2, u_input.a.x) % vec4<u32>(32u)))) << (vec4<u32>(var_0.x, ~var_1.c.x, 42317u, ~var_0.x << (~var_0.x % 32u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    global1 = Struct_3(func_2(arg_0.a.b, 41409u, _wgslsmith_div_u32(u_input.a.x, abs(global1.c.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.a.a.x, arg_2.a.x, arg_0.a.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-138f, -1595f, global1.a.a.x))), select(select(vec3<bool>(arg_0.b.a, global1.b.a, true), vec3<bool>(arg_0.b.a, false, true), true), !vec3<bool>(arg_2.d, false, arg_0.b.a), select(false, global1.a.b, false))))).a, arg_1, vec4<u32>(countOneBits(_wgslsmith_clamp_u32(u_input.a.x, ~4294967295u, ~1u)), firstLeadingBit(1u), min(_wgslsmith_div_u32(4294967295u, ~5058u), 0u), ~(~(~global1.c.x))));
    let var_0 = func_2(!arg_2.d, reverseBits(arg_0.c.x ^ ~(~global1.c.x)), ~1181u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, 1067f, 1012f)), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.a.x)), _wgslsmith_f_op_f32(select(1381f, -262f, true)), _wgslsmith_f_op_f32(arg_0.a.a.x - arg_0.a.a.x))))).a;
    var var_1 = var_0.a.x;
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1280f, _wgslsmith_f_op_f32(-arg_2.a.x)))), _wgslsmith_f_op_f32(-224f - var_0.a.x), true));
    var_1 = arg_0.a.a.x;
    return select(!select(!select(vec3<bool>(arg_0.b.a, arg_0.a.d, false), vec3<bool>(arg_2.b, true, arg_2.b), false), vec3<bool>(select(true, false, false), !var_0.b, true || arg_2.d), select(!vec3<bool>(arg_1.a, true, arg_1.a), select(vec3<bool>(arg_1.a, true, arg_2.b), vec3<bool>(false, arg_0.b.a, arg_2.d), vec3<bool>(global1.a.b, true, global1.b.a)), vec3<bool>(true, true, true))), vec3<bool>(global1.a.d, any(vec4<bool>(true, !global1.a.d, var_0.b, !arg_2.b)), select(arg_1.a, false, select(true, false && var_0.b, arg_2.d))), vec3<bool>(true, all(!select(vec3<bool>(false, false, var_0.d), vec3<bool>(false, true, arg_2.b), global1.a.b)), select(all(global2[_wgslsmith_index_u32(50950u, 16u)]), false, false)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1578f) + 893f))), 1693f)));
    var var_0 = global1.b;
    var var_1 = vec4<bool>(false & !any(!vec4<bool>(true, var_0.a, true, false)), any(!func_4(func_2(false, 11460u, 45392u, vec3<f32>(201f, global1.a.a.x, global1.a.a.x)), global1.b, global1.a)), true, any(vec3<bool>(!var_0.a, true, all(vec4<bool>(true, true, var_0.a, var_0.a)))) || var_0.a);
    global2 = array<vec2<bool>, 16>();
    var var_2 = !vec4<bool>(false, _wgslsmith_f_op_f32(-global1.a.a.x) >= _wgslsmith_f_op_f32(-global1.a.a.x), true, global1.b.a);
    return Struct_3(func_2((_wgslsmith_f_op_f32(global1.a.a.x + global1.a.a.x) <= _wgslsmith_f_op_f32(exp2(global1.a.a.x))) || true, global1.c.x, reverseBits(99252u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-253f, global1.a.a.x, -1701f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a.a.x, global1.a.a.x, -1043f)))))).a, Struct_2(false), max(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.a.x, 0u, global1.c.x, u_input.a.x), ~global1.c, func_4(Struct_3(Struct_1(vec2<f32>(global1.a.a.x, global1.a.a.x), false, global1.a.c, var_0.a), global1.b, vec4<u32>(1200u, 4294967295u, 6283u, arg_0.x)), global1.b, global1.a).x), ~_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(38771u, arg_0.x, u_input.a.x, 6178u)), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1233u, global1.c.x, arg_0.x, 1u), vec4<u32>(arg_0.x, u_input.a.x, global1.c.x, u_input.a.x)))), ~_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(35021u, 18408u, u_input.a.x, 4294967295u)) >> (~abs(u_input.a) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_mod_u32(global1.c.x, global1.c.x)), ~u_input.a.x), global1.c.x << (~global1.c.x % 32u)));
    var var_1 = 0i;
    let var_2 = func_2(!(!var_0.b.a), _wgslsmith_mod_u32(var_0.c.x | 15632u, 4294967295u), max(25095u, var_0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(384f, var_0.a.a.x, var_0.a.a.x) * vec3<f32>(502f, -225f, global1.a.a.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1069f, global1.a.a.x, 585f), vec3<f32>(var_0.a.a.x, var_0.a.a.x, 640f)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.a.x, -172f, global1.a.a.x), vec3<f32>(-1251f, -726f, var_0.a.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.a.x, -968f, global1.a.a.x), vec3<f32>(var_0.a.a.x, -1388f, 828f), vec3<bool>(global1.a.b, global1.b.a, var_0.a.d))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, var_0.a.a.x, -180f))))));
    global1 = func_2(func_2(true, 38280u, ~_wgslsmith_sub_u32(~global1.c.x, var_2.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a.x, global1.a.a.x, 915f) * vec3<f32>(141f, var_0.a.a.x, var_2.a.a.x))))).b.a, 4294967295u, var_2.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(298f - var_2.a.a.x), _wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -990f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a.x, global1.a.a.x, var_0.a.a.x) * vec3<f32>(global1.a.a.x, 3013f, var_2.a.a.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.a.x, var_0.a.a.x, 229f), vec3<f32>(var_0.a.a.x, 679f, 1598f))))));
    global0 = _wgslsmith_f_op_f32(-var_0.a.a.x);
    let var_3 = ~u_input.a.x;
    let var_4 = firstLeadingBit(59183u);
    global2 = array<vec2<bool>, 16>();
    let var_5 = select(u_input.a.yy, ~select(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(72658u, 4294967295u)), ~global1.c.zx), countOneBits(firstLeadingBit(vec2<u32>(74758u, global1.c.x))), func_2(var_2.a.d & true, firstLeadingBit(108809u), abs(1u), vec3<f32>(394f, 1350f, var_2.a.a.x)).a.d), global1.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(global1.a.c.ww >> (~vec2<u32>(9548u, var_2.c.x) % vec2<u32>(32u)))), firstTrailingBit(var_0.a.c.xy), ~(u_input.a | ~(~u_input.a)), ~(~85613u), 0i);
}

