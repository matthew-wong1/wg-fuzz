struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: Struct_5 = Struct_5(vec4<f32>(-322f, -1516f, 484f, 1142f));

var<private> global2: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(0u, 43795u), vec2<u32>(4294967295u, 61070u), vec2<u32>(5168u, 1u), vec2<u32>(63177u, 29698u), vec2<u32>(51018u, 4294967295u), vec2<u32>(18975u, 0u), vec2<u32>(0u, 0u), vec2<u32>(41721u, 21844u), vec2<u32>(39525u, 0u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(ceil(217f)))), 1291f, 1776f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) + 287f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-494f, arg_2.c.a.x)))));
    var var_0 = ~select(arg_2.a.b.wyx, _wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(arg_2.a.b.zyz, vec3<u32>(19582u, 4294967295u, 4294967295u)), arg_2.c.b.xxy >> (arg_3.b.xxy % vec3<u32>(32u)), ~(arg_3.b.zzz | vec3<u32>(36319u, u_input.a.x, arg_3.b.x))), global0.x);
    global2 = array<vec2<u32>, 9>();
    global0 = arg_2.d;
    var var_1 = Struct_3(countOneBits(_wgslsmith_mult_vec2_u32(u_input.a, ~vec2<u32>(u_input.b, 0u))) ^ (_wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.x, arg_2.c.b.x), var_0.zz, arg_2.b.yz), vec2<u32>(4294967295u, var_0.x)) << ((global2[_wgslsmith_index_u32(~52281u, 9u)] ^ ~arg_3.b.zx) % vec2<u32>(32u))), -20902i, 897f, _wgslsmith_dot_vec4_u32(~(arg_3.b >> (~vec4<u32>(4294967295u, arg_2.a.d, 93503u, 1u) % vec4<u32>(32u))), vec4<u32>(4294967295u | ~arg_3.d, ~abs(u_input.a.x), ~firstLeadingBit(1u), abs(4294967295u))), arg_2);
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: i32, arg_3: f32) -> Struct_1 {
    global1 = Struct_5(global1.a);
    global2 = array<vec2<u32>, 9>();
    var var_0 = vec3<u32>(~66237u, ~(_wgslsmith_sub_u32(u_input.b, func_3(vec2<i32>(arg_2, arg_2), vec4<bool>(global0.x, global0.x, true, global0.x), Struct_2(Struct_1(global1.a.wzx, vec4<u32>(u_input.a.x, u_input.b, 0u, u_input.b), true, u_input.b, vec4<i32>(arg_2, arg_2, 24275i, 6889i)), vec4<bool>(global0.x, true, arg_1.x, arg_1.x), Struct_1(global1.a.zxw, vec4<u32>(u_input.b, u_input.b, u_input.b, 7918u), true, 1u, vec4<i32>(arg_2, arg_2, -12112i, -41770i)), arg_1), Struct_1(vec3<f32>(arg_3, 1684f, -442f), vec4<u32>(10611u, u_input.b, u_input.b, 4294967295u), arg_1.x, u_input.a.x, vec4<i32>(0i, arg_2, arg_2, arg_2)))) >> (_wgslsmith_div_u32(u_input.b & u_input.a.x, ~u_input.b) % 32u)), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 0u, u_input.a.x)) & ~vec3<u32>(u_input.b, 1u, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    let var_1 = -4211i;
    var var_2 = vec4<bool>(!global0.x, any(select(arg_1, select(arg_1, select(vec2<bool>(false, false), arg_1, vec2<bool>(true, true)), any(vec4<bool>(true, true, arg_1.x, arg_1.x))), any(select(vec3<bool>(true, global0.x, arg_1.x), vec3<bool>(global0.x, global0.x, true), false)))), all(vec3<bool>(var_0.x < select(1u, 31182u, false), _wgslsmith_div_f32(arg_0, global1.a.x) <= _wgslsmith_div_f32(-744f, arg_0), true)), false);
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, global1.a.x, -1090f), _wgslsmith_f_op_vec3_f32(-global1.a.zyx))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, arg_0) - _wgslsmith_f_op_f32(global1.a.x - 1382f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(973f, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, 1935f)))), abs(~max(vec4<u32>(var_0.x, var_0.x, 0u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 51779u, u_input.b, var_0.x), vec4<u32>(var_0.x, 0u, 1u, 0u), vec4<u32>(4294967295u, 1u, 32819u, 22699u)))), arg_3 <= global1.a.x, 2911u ^ ~(~u_input.a.x), (-vec4<i32>(arg_2, 0i, var_1, var_1) | firstTrailingBit(vec4<i32>(1i, -1i, arg_2, arg_2))) & -vec4<i32>(reverseBits(arg_2), ~1i, ~var_1, -arg_2));
}

fn func_1() -> Struct_5 {
    var var_0 = vec2<i32>(~50218i & _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(0i, 24016i, -8634i)), select(abs(vec3<i32>(-24163i, 3643i, -2147483647i)), firstLeadingBit(vec3<i32>(-81034i, -14722i, 32777i)), all(vec3<bool>(true, global0.x, false)))), 14910i);
    let var_1 = func_2(1f, !(!(!select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), vec2<bool>(false, true)))), var_0.x, 600f);
    var_0 = vec2<i32>(max(var_0.x, ~10885i), countOneBits((reverseBits(var_0.x) | var_0.x) & -14633i));
    var var_2 = _wgslsmith_f_op_f32(min(-230f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-837f)) * 423f), global1.a.x))));
    var var_3 = _wgslsmith_div_u32(firstTrailingBit(var_1.b.x), 53333u);
    return Struct_5(vec4<f32>(-569f, -1115f, -1765f, -1455f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(846f)))) + -690f), vec2<bool>(_wgslsmith_f_op_f32(global1.a.x + global1.a.x) < 415f, _wgslsmith_mod_u32(30516u, u_input.b) <= ~33964u), -abs(1i), _wgslsmith_f_op_f32(-var_0.a.x)), !select(select(!vec4<bool>(global0.x, true, false, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, false, global0.x, global0.x), global0.x), global0.x & false), !(!vec4<bool>(true, global0.x, true, global0.x)), !(!vec4<bool>(true, false, false, global0.x))), func_2(1000f, !(!vec2<bool>(global0.x, false)), firstLeadingBit(min(i32(-1i) * -20415i, 2559i)), -754f), !vec2<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)) | true, true & global0.x));
    let var_2 = func_2(_wgslsmith_f_op_f32(func_1().a.x + 844f), vec2<bool>(any(!(!var_1.b)), global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.e.x & select(37101i, var_1.c.e.x, true), var_1.a.e.x), ~_wgslsmith_clamp_vec2_i32(var_1.a.e.xx << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~vec2<i32>(1i, -11871i), -vec2<i32>(2147483647i, 1i))), _wgslsmith_f_op_f32(-var_1.a.a.x));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -876f), func_1().a.x);
    global1 = var_0;
    let var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1166f, var_2.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a.yyw)));
    let var_5 = firstLeadingBit(_wgslsmith_sub_u32(reverseBits(1u), 40162u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-19325i, -2147483647i, var_1.a.e.x, firstTrailingBit(-39074i)), max(var_2.b.wx, ~global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(0u, var_2.b.x)), 9u)]), vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-922f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1016f)), abs(vec4<u32>(~0u, 18176u, var_1.c.b.x, ~func_3(var_2.e.wx, var_1.b, var_1, Struct_1(vec3<f32>(123f, var_4.x, var_4.x), vec4<u32>(18975u, var_1.a.b.x, 58827u, 25254u), var_2.c, 75270u, vec4<i32>(-38327i, var_2.e.x, var_1.a.e.x, -861i))))), ~0u);
}

