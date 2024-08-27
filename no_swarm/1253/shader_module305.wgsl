struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(0u, 0u), Struct_1(42773u, 4294967295u), Struct_1(4294967295u, 11964u), Struct_1(36956u, 62837u), Struct_1(0u, 48365u), Struct_1(1u, 24478u), Struct_1(40176u, 80811u), Struct_1(6345u, 4294967295u), Struct_1(4294967295u, 1u), Struct_1(38088u, 57193u), Struct_1(13855u, 1u), Struct_1(4294967295u, 1u));

var<private> global1: Struct_1 = Struct_1(75496u, 25221u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = min(arg_1.x, global1.b);
    return Struct_1(_wgslsmith_mult_u32(global1.a, ~(arg_1.x | global1.b)), 91059u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_u32(~global1.a, func_2(vec4<f32>(_wgslsmith_div_f32(887f, 283f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1284f), _wgslsmith_f_op_f32(122f * 614f)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1.a.b, arg_1.a.b, 69314u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 19733u, 18632u), vec4<u32>(1u, 0u, arg_0.a.a, 5241u))), vec2<u32>(select(arg_1.a.a, global1.a, arg_1.b.x), _wgslsmith_div_u32(10713u, arg_0.a.a)), 0u | arg_0.a.a).b) | _wgslsmith_mult_u32(arg_1.a.a, _wgslsmith_add_u32(~(arg_1.a.b << (arg_1.a.a % 32u)), 0u));
    var var_1 = abs(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, 17416u, global1.b, arg_1.a.a), vec4<u32>(4294967295u, arg_1.a.a, 78154u, 9328u)), 23164u, _wgslsmith_mult_u32(45133u, arg_1.a.a), _wgslsmith_div_u32(arg_1.a.b, 1u))) >> (vec4<u32>(reverseBits(arg_0.a.b), 0u << ((3156u & firstLeadingBit(global1.b)) % 32u), global1.a, ~select(_wgslsmith_add_u32(arg_1.a.a, arg_1.a.b), _wgslsmith_add_u32(global1.b, global1.b), any(vec2<bool>(arg_0.b.x, arg_0.b.x)))) % vec4<u32>(32u));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-884f, 428f, -1639f, -816f), vec4<f32>(-1366f, 775f, 1032f, 1625f), vec4<bool>(false, arg_0.b.x, arg_2.x, arg_0.b.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(324f, 107f, 148f, -456f) * vec4<f32>(-1688f, -960f, 473f, -683f)))))), ~(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, var_1.x, arg_0.a.a, 26404u), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, 0u, arg_1.a.b, arg_0.a.a), vec4<u32>(arg_1.a.a, 0u, 27477u, var_1.x))) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.b, var_1.x, 0u, arg_1.a.b), vec4<u32>(7495u, 1u, arg_1.a.b, var_1.x), vec4<u32>(1u, 18373u, 0u, 4294967295u)) % vec4<u32>(32u))), var_1.zx, global1.b);
    let var_3 = 60104i;
    let var_4 = Struct_1(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.a, 22106u, 47303u, arg_1.a.a), vec4<u32>(65147u, 17524u, arg_1.a.a, var_2.b))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.a.a, arg_1.a.b), _wgslsmith_mult_u32(~select(var_1.x, var_2.b, arg_1.b.x), ~_wgslsmith_dot_vec3_u32(var_1.xyy, vec3<u32>(44289u, var_1.x, arg_1.a.b)))));
    return select(vec4<bool>(all(!(!arg_2)), !(!all(arg_1.b)), true || any(select(arg_0.b, arg_1.b, true)), true), select(!select(!vec4<bool>(false, true, arg_0.b.x, false), select(vec4<bool>(arg_0.b.x, true, true, arg_1.b.x), vec4<bool>(true, arg_2.x, arg_0.b.x, arg_1.b.x), vec4<bool>(true, false, arg_0.b.x, true)), false), vec4<bool>(!(arg_1.b.x && arg_2.x), true, true, !arg_2.x), select(!(!vec4<bool>(true, arg_0.b.x, false, false)), vec4<bool>(arg_0.b.x, !arg_2.x, true, arg_1.b.x), !arg_0.b.x || true)), !(!(!(!vec4<bool>(false, arg_0.b.x, false, false)))));
}

fn func_1() -> Struct_2 {
    var var_0 = !select(func_3(Struct_2(Struct_1(global1.a, global1.a), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), Struct_2(func_2(vec4<f32>(-507f, 1157f, 343f, 688f), vec4<u32>(global1.b, global1.b, 1u, global1.a), vec2<u32>(global1.a, 387u), 71407u), vec2<bool>(false, true)), vec3<bool>(true, true, true)), vec4<bool>(false, false, true, global1.b != min(global1.b, global1.a)), true);
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-min(vec4<i32>(-2147483647i, u_input.a, -3195i, u_input.a), reverseBits(vec4<i32>(78958i, u_input.a, -14903i, -18352i))), vec4<i32>(_wgslsmith_mod_i32(u_input.a, countOneBits(0i)), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 44564i, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, u_input.a, -1i)), 0i)), vec4<i32>(u_input.a, ~_wgslsmith_mod_i32(0i, _wgslsmith_mod_i32(u_input.a, u_input.a)), u_input.a, ((i32(-1i) * -2147483647i) >> (global1.a % 32u)) & ~u_input.a));
    var_0 = !(!select(select(func_3(Struct_2(global0[_wgslsmith_index_u32(9011u, 12u)], vec2<bool>(var_0.x, var_0.x)), Struct_2(global0[_wgslsmith_index_u32(global1.a, 12u)], var_0.xy), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec4<bool>(true, false, false, var_0.x), !vec4<bool>(false, true, var_0.x, false)), select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, false)), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), !vec4<bool>(var_0.x, var_0.x, false, var_0.x)), vec4<bool>(var_0.x, all(vec4<bool>(var_0.x, false, true, true)), var_0.x, var_0.x)));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(2588f * -430f), _wgslsmith_f_op_f32(round(-1731f)), _wgslsmith_f_op_f32(select(-730f, -1264f, true))) + vec4<f32>(_wgslsmith_f_op_f32(1094f + 2067f), _wgslsmith_f_op_f32(f32(-1f) * -1510f), _wgslsmith_f_op_f32(min(-1355f, 404f)), _wgslsmith_div_f32(-950f, 187f))))), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, 1u, ~(~109662u), abs(global1.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~24468u, 1u, 4294967295u, _wgslsmith_mod_u32(18464u, global1.b)), reverseBits(vec4<u32>(global1.b, 29267u, 1u, global1.b)), countOneBits(vec4<u32>(global1.a, 4294967295u, 0u, 1u)))), vec2<u32>(_wgslsmith_mod_u32(~global1.b, 1u), abs(4294967295u)), global1.b);
    var_2 = global0[_wgslsmith_index_u32(countOneBits(var_2.b), 12u)];
    return Struct_2(Struct_1(var_2.b, global1.a), vec2<bool>(true, any(!func_3(Struct_2(global0[_wgslsmith_index_u32(9220u, 12u)], vec2<bool>(var_0.x, false)), Struct_2(global0[_wgslsmith_index_u32(0u, 12u)], vec2<bool>(var_0.x, var_0.x)), var_0.zyx))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_1();
    let var_1 = Struct_1(4294967295u, countOneBits(arg_0.a.b));
    let var_2 = vec2<u32>(select(func_1().a.a, ~0u, true), _wgslsmith_dot_vec4_u32(min(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a.b, global1.b, arg_0.a.b, arg_0.a.a), vec4<u32>(var_0.a.a, arg_1.a.b, 0u, var_1.a)), ~vec4<u32>(0u, global1.a, 4294967295u, var_1.b)), vec4<u32>(~(~83953u), ~(~0u), 4294967295u, 4294967295u)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_sub_u32(var_1.a, select(7800u, select(arg_0.a.b, var_1.b, var_0.b.x), all(var_0.b))), 41872u), vec2<bool>(!arg_0.b.x, func_1().b.x));
    global1 = func_1().a;
    return func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(651f, 835f, 674f, -1680f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-580f, -357f, -154f, -1919f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1823f, -1310f, -602f, 1000f), vec4<f32>(-285f, -932f, 213f, 786f), var_0.b.x)), vec4<f32>(-453f, 808f, -1515f, -1000f)))), select(vec4<bool>(all(vec3<bool>(true, arg_0.b.x, true)), true, all(vec3<bool>(var_0.b.x, arg_1.b.x, false)), all(vec4<bool>(false, false, arg_0.b.x, false))), !func_3(Struct_2(var_3.a, var_3.b), Struct_2(Struct_1(0u, 1u), var_0.b), vec3<bool>(true, false, arg_0.b.x)), all(vec3<bool>(var_3.b.x, true, arg_1.b.x)) || true))), abs(_wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, var_0.a.b, var_3.a.a, 4294967295u), firstLeadingBit(vec4<u32>(48818u, arg_0.a.b, 0u, global1.a)), vec4<bool>(true, arg_0.b.x, true, false)), abs(vec4<u32>(5197u, arg_0.a.a, 31540u, 0u)) & (vec4<u32>(4294967295u, var_3.a.a, var_1.b, 0u) | vec4<u32>(4294967295u, 25345u, var_1.b, 13648u)))), ~(~countOneBits(var_2) | ((var_2 ^ var_2) & ~vec2<u32>(arg_0.a.a, var_3.a.b))), _wgslsmith_mult_u32(abs(func_1().a.a), var_3.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(func_1(), func_1()), func_1().b);
    let var_1 = true;
    var var_2 = ~(_wgslsmith_sub_vec2_u32(abs(firstTrailingBit(vec2<u32>(0u, var_0.a.b))), vec2<u32>(global1.b | global1.b, reverseBits(4294967295u))) >> (abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a, 13266u), vec2<u32>(32662u, var_0.a.a)) ^ vec2<u32>(1u, var_0.a.a)) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2269f, -1110f), vec2<f32>(-233f, -1000f))))))))));
    global1 = func_4(Struct_2(func_4(func_1(), Struct_2(Struct_1(global1.a, 4294967295u), func_1().b)), select(var_0.b, var_0.b, all(!vec4<bool>(true, true, var_1, var_0.b.x)))), func_1());
    var var_4 = abs(firstTrailingBit(_wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.a, var_2.x, 45409u), vec3<u32>(var_0.a.a, 7062u, var_0.a.b)), firstTrailingBit(vec3<u32>(var_0.a.a, global1.b, var_2.x)), vec3<bool>(false, true, true)), vec3<u32>(global1.a, 0u, 62912u))));
    var var_5 = Struct_2(global0[_wgslsmith_index_u32(~var_0.a.a, 12u)], var_0.b);
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_6.a.b, min(min(abs(10897u), countOneBits(var_6.a.a)), 35263u), ~(~var_6.a.a) & func_2(vec4<f32>(-122f, 1300f, var_3.x, 1250f), vec4<u32>(var_5.a.b, var_5.a.a, 59382u, 0u), ~vec2<u32>(4294967295u, var_6.a.a), var_6.a.a).b));
}

