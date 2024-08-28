struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4>;

var<private> global1: Struct_1 = Struct_1(4294967295u, 1175f, true);

var<private> global2: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(global2.a.a | global2.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1042f))) * global2.d.b), !global1.c), !vec2<bool>(global1.a > ~8682u, all(select(vec4<bool>(global2.a.c, global2.b.x, false, global2.b.x), vec4<bool>(global1.c, false, global1.c, true), global1.c))), Struct_1(~global1.a, global1.b, true), Struct_1(0u, _wgslsmith_f_op_f32(-global1.b), true & all(select(global2.b, vec2<bool>(true, global1.c), false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.b + global2.d.b), -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(272f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.b), -275f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-125f, global1.b), vec2<f32>(738f, global2.a.b))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.d.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-846f, -1926f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-766f, global2.a.b))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.b, _wgslsmith_f_op_f32(-684f * 298f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2031f), _wgslsmith_div_f32(-673f, 877f)) - vec2<f32>(_wgslsmith_f_op_f32(round(-605f)), var_0.c.b)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.b * 357f) * global2.c.b)), _wgslsmith_f_op_f32(-728f * -101f)));
    let var_2 = var_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -700f);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: bool, arg_3: u32) -> u32 {
    var var_0 = Struct_2(global2.c, global2.b, Struct_1(~global2.a.a, _wgslsmith_f_op_f32(-global1.b), true), global2.a);
    var var_1 = Struct_1(reverseBits(~97197u), _wgslsmith_f_op_f32(func_3()), global1.c);
    global2 = Struct_2(var_0.d, var_0.b, Struct_1(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1201f + var_0.d.b) - _wgslsmith_f_op_f32(var_1.b + var_0.c.b))), arg_2), Struct_1(arg_3 & 13565u, _wgslsmith_f_op_f32(min(global2.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b * global2.c.b)))), ((u_input.a.x ^ -2316i) >> (35806u % 32u)) >= u_input.a.x));
    global2 = Struct_2(var_0.d, vec2<bool>(false || all(global2.b), all(select(vec3<bool>(true, true, var_0.a.c), vec3<bool>(false, false, true), true))), Struct_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, max(global1.a, var_0.d.a)), global2.d.a), -743f, arg_2 && (global2.d.c || true)), global2.c);
    var var_2 = firstLeadingBit(countOneBits(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a.x, arg_0, u_input.a.x, -2147483647i) & vec4<i32>(-12345i, -34549i, 18208i, 0i), vec4<i32>(-11496i, arg_0, u_input.a.x, 2147483647i), vec4<bool>(false, global2.b.x, true, global1.c)), -vec4<i32>(2147483647i, 41299i, u_input.a.x, u_input.a.x) | abs(vec4<i32>(u_input.a.x, 24453i, u_input.a.x, -39045i)))));
    return arg_3;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(min(~(~global1.a), 0u), 4u)];
    global1 = Struct_1(select(~_wgslsmith_mod_u32(arg_0.a.a, firstLeadingBit(1u)), ~(~0u & func_2(u_input.a.x, vec4<u32>(34657u, 4294967295u, 0u, 4294967295u), global1.c, global1.a)), !(!arg_0.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1.b)))), global1.c || global2.b.x);
    global2 = Struct_2(Struct_1(_wgslsmith_mod_u32(~(~var_0.x), _wgslsmith_clamp_u32(global1.a, arg_0.a.a, ~global1.a)), _wgslsmith_f_op_f32(-global1.b), global2.b.x), !arg_0.b, global2.a, global2.c);
    let var_1 = ~39864u & (firstLeadingBit(~var_0.x) ^ global2.a.a);
    let var_2 = select(vec2<bool>(true, any(!vec4<bool>(global1.c, global1.c, arg_0.b.x, true))), select(global2.b, global2.b, true), !select(vec2<bool>(false, arg_0.b.x), !arg_0.b, global2.b.x & (arg_0.b.x || true)));
    return Struct_2(Struct_1(min(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.a.a, global1.a), var_0.x), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.zx, var_0.xy), arg_0.a.a)), _wgslsmith_f_op_f32(sign(959f)), true), !(!var_2), arg_0.c, arg_0.c);
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_2(global2.d, vec2<bool>(!all(select(vec3<bool>(false, global2.c.c, true), vec3<bool>(global2.b.x, false, false), vec3<bool>(true, false, arg_0.d.c))), _wgslsmith_f_op_f32(782f + arg_0.d.b) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b - global2.c.b) + global1.b)), Struct_1(abs(_wgslsmith_clamp_u32(~global1.a, global2.d.a, _wgslsmith_clamp_u32(global1.a, arg_0.d.a, global2.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a.b, -1499f)) - _wgslsmith_f_op_f32(global2.d.b + global2.c.b)) * 1f), arg_0.d.c), func_1(func_1(arg_0)).c);
    global2 = Struct_2(Struct_1(~_wgslsmith_clamp_u32(739u, _wgslsmith_dot_vec2_u32(vec2<u32>(16212u, var_0.d.a), vec2<u32>(23108u, 1u)), _wgslsmith_mod_u32(4294967295u, 118u)), arg_0.c.b, any(vec2<bool>(u_input.a.x <= u_input.a.x, true))), func_1(var_0).b, var_0.d, var_0.d);
    var var_1 = false;
    var var_2 = arg_0.d;
    let var_3 = u_input.a.yy & (u_input.a.zx << (vec2<u32>(1u, firstTrailingBit(~global2.a.a)) % vec2<u32>(32u)));
    return -378f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec3<bool>(global1.c, !any(vec2<bool>(global2.d.c, false)), true), vec3<bool>(1i == ~min(u_input.a.x, u_input.a.x), false, true), -1026f == _wgslsmith_f_op_f32(-global1.b));
    let var_1 = global2.a;
    let var_2 = Struct_1(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(func_1(Struct_2(Struct_1(global1.a, 1369f, var_0.x), vec2<bool>(false, false), Struct_1(48822u, -284f, global1.c), global2.a))))))), 1u > global2.c.a);
    global0 = array<vec3<u32>, 4>();
    var var_3 = _wgslsmith_div_vec2_u32(~(~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a, 24457u), vec2<u32>(43839u, 0u), vec2<u32>(global2.a.a, global1.a)), abs(vec2<u32>(var_2.a, var_2.a)))), _wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(func_2(-23677i, vec4<u32>(0u, var_2.a, global1.a, 1u), var_1.c, 28836u)), global2.a.a), _wgslsmith_div_vec2_u32(~abs(vec2<u32>(13749u, global2.c.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(global2.c.a, 0u) & vec2<u32>(var_2.a, var_2.a), ~vec2<u32>(global1.a, 1u)))));
    var_3 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(select(var_2.a, 28509u, var_0.x), _wgslsmith_mult_u32(1u, 35436u)), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(4294967295u, global1.a), vec2<u32>(global2.a.a, var_3.x), global2.c.c), ~vec2<u32>(4294967295u, var_2.a)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a, global1.a), vec2<u32>(var_1.a, 41074u)), firstTrailingBit(vec2<u32>(24452u, 7515u)), any(vec3<bool>(true, global2.b.x, true))))), ~vec2<u32>(var_3.x, 83315u));
    var_3 = vec2<u32>(abs(0u | global1.a), global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~(~(-13519i)), firstLeadingBit(~u_input.a.x)), -vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(u_input.a.x, 11055i)), max(-53779i, ~u_input.a.x), 11153i));
}

