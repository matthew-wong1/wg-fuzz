struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

var<private> global1: bool = true;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> vec4<u32> {
    global0 = array<Struct_3, 3>();
    var var_0 = Struct_3(any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(trunc(-2212f)), Struct_1(~(vec2<u32>(0u, 7382u) | arg_1.a), _wgslsmith_f_op_vec4_f32(trunc(arg_1.b)), vec4<i32>(-2536i, countOneBits(18742i << (arg_1.a.x % 32u)), -43730i << (select(arg_1.a.x, arg_1.a.x, false) % 32u), ~countOneBits(2147483647i))), vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(sign(arg_2.x)), arg_0.b.x), arg_1.b.yxw);
    global0 = array<Struct_3, 3>();
    let var_1 = arg_0.c.x & countOneBits(_wgslsmith_mod_i32(-27813i, _wgslsmith_div_i32(max(var_0.c.c.x, arg_1.c.x), ~var_0.c.c.x)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(-1458f)), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.d.x)), 462f)) + _wgslsmith_f_op_f32(-arg_0.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -637f))))), _wgslsmith_f_op_f32(var_0.c.b.x - 1419f));
    return select(vec4<u32>(4294967295u, arg_0.a.x, arg_1.a.x, var_0.c.a.x), _wgslsmith_add_vec4_u32(~reverseBits(~vec4<u32>(0u, var_0.c.a.x, arg_0.a.x, arg_0.a.x)), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, 0u), vec2<u32>(arg_0.a.x, 0u)), _wgslsmith_mod_u32(var_0.c.a.x, arg_3), ~59u, arg_0.a.x))), select(select(select(select(vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(true, var_0.a, var_0.a, var_0.a)), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), !vec4<bool>(var_0.a, false, false, var_0.a)), select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), all(vec2<bool>(var_0.a, true))), !any(vec3<bool>(false, var_0.a, var_0.a))), select(vec4<bool>(var_0.a && var_0.a, var_0.a, !var_0.a, false), vec4<bool>(arg_1.c.x != -1i, all(vec2<bool>(true, var_0.a)), true, var_0.a), vec4<bool>(!var_0.a, any(vec3<bool>(false, true, var_0.a)), all(vec3<bool>(false, false, false)), true)), all(select(select(vec3<bool>(false, var_0.a, false), vec3<bool>(var_0.a, false, true), var_0.a), select(vec3<bool>(true, var_0.a, false), vec3<bool>(true, var_0.a, false), var_0.a), true))));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = 0i;
    var var_1 = vec3<bool>(true, true, true);
    global0 = array<Struct_3, 3>();
    let var_2 = var_0;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10242u, ~26993u >> (1u % 32u), ~arg_0, 1u), firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 0u, 4294967295u, 4294967295u), vec4<u32>(arg_0, 1u, 0u, 9783u)) << (select(func_3(Struct_1(vec2<u32>(45852u, arg_0), vec4<f32>(1322f, 1170f, 872f, 1086f), vec4<i32>(u_input.a, 10818i, 16234i, var_0)), Struct_1(vec2<u32>(arg_0, 1u), vec4<f32>(506f, -539f, -434f, -1016f), vec4<i32>(0i, 2441i, 1i, u_input.a)), vec3<f32>(311f, 1140f, 259f), 1u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 34268u), vec4<u32>(0u, 79149u, arg_0, 11678u)), vec4<bool>(var_1.x, true, var_1.x, var_1.x)) % vec4<u32>(32u)))), 3u)];
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.c.b.x), 584f));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    let var_0 = vec4<bool>(true | !arg_1.a, arg_0.c.c.x > ~u_input.c, true, select(true, arg_1.a != true, true));
    global0 = array<Struct_3, 3>();
    global1 = true && (_wgslsmith_f_op_f32(arg_0.a.b.x + arg_0.a.b.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2045f)) + 1185f));
    var var_1 = 53669u;
    let var_2 = Struct_3(all(select(var_0.zzw, var_0.wwz, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.c.a.x))), arg_0.a, _wgslsmith_f_op_vec3_f32(-arg_1.d), _wgslsmith_f_op_vec3_f32(select(arg_1.d, _wgslsmith_f_op_vec3_f32(-arg_0.a.b.wwz), !any(!var_0))));
    return arg_1.c;
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_1(select(arg_0.c.a, firstTrailingBit(vec2<u32>(~4294967295u, ~122455u)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c.b)), vec4<i32>(max(_wgslsmith_dot_vec2_i32(func_1(Struct_2(Struct_1(arg_0.c.a, arg_0.c.b, vec4<i32>(-2147483647i, arg_0.c.c.x, arg_0.c.c.x, -2147483647i)), vec2<u32>(75380u, 22475u), Struct_1(vec2<u32>(arg_0.c.a.x, 23982u), vec4<f32>(381f, arg_0.d.x, arg_0.c.b.x, arg_0.b), vec4<i32>(arg_0.c.c.x, u_input.b, arg_0.c.c.x, 11744i))), global0[_wgslsmith_index_u32(1u, 3u)]).c.zz, vec2<i32>(u_input.b, 55556i)), _wgslsmith_mod_i32(2147483647i << (arg_0.c.a.x % 32u), -arg_0.c.c.x)), ~abs(~(-38317i)), u_input.c, arg_0.c.c.x));
    let var_1 = _wgslsmith_clamp_vec2_i32(~arg_0.c.c.yw, vec2<i32>(var_0.c.x, 1i), ~_wgslsmith_mod_vec2_i32(arg_0.c.c.wx, select(vec2<i32>(1i, var_0.c.x), vec2<i32>(u_input.b, arg_0.c.c.x), vec2<bool>(false, arg_0.a))) >> (~(var_0.a << (min(arg_0.c.a, var_0.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = -var_1.x;
    let var_3 = 1i;
    global0 = array<Struct_3, 3>();
    return min(0i, var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true | all(vec2<bool>(true && select(false, false, true), all(vec2<bool>(true, false)) & all(vec3<bool>(false, false, true))));
    var var_1 = vec2<bool>(false, var_0);
    global1 = func_4(Struct_3(any(!vec4<bool>(var_1.x, false, var_0, var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1450f))), func_1(Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), vec4<f32>(-524f, 1000f, 897f, -1471f), vec4<i32>(u_input.b, -1i, u_input.c, u_input.a)), vec2<u32>(105758u, 0u), Struct_1(vec2<u32>(1u, 30507u), vec4<f32>(-1000f, -2315f, -759f, -520f), vec4<i32>(u_input.a, 21853i, u_input.b, u_input.b))), Struct_3(false, -595f, Struct_1(vec2<u32>(4294967295u, 9914u), vec4<f32>(1688f, 630f, -299f, 419f), vec4<i32>(u_input.c, -2147483647i, u_input.b, u_input.b)), vec3<f32>(-252f, -664f, 767f), vec3<f32>(1000f, -1391f, 355f))), vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-659f - -799f), _wgslsmith_div_f32(-675f, 1146f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-119f, -273f, 883f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-149f, -880f, 2407f)))))) != firstLeadingBit(~15460i);
    global1 = func_4(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 3u)]) <= u_input.b;
    var var_2 = _wgslsmith_f_op_f32(trunc(1216f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, i32(-1i) * -1i));
}

