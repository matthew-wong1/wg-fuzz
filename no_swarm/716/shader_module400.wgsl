struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(71558u, 1u));

var<private> global1: f32;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-33362i, -1637f, vec2<u32>(1u, 4294967295u)), Struct_1(2147483647i, -623f, vec2<u32>(1u, 0u)), Struct_1(23726i, -539f, vec2<u32>(1u, 1u)), Struct_1(2147483647i, -1835f, vec2<u32>(11850u, 71447u)), Struct_1(28469i, 450f, vec2<u32>(1u, 33994u)), Struct_1(1i, -338f, vec2<u32>(0u, 32179u)), Struct_1(27817i, -399f, vec2<u32>(0u, 15777u)), Struct_1(846i, -1539f, vec2<u32>(74661u, 4294967295u)), Struct_1(2147483647i, 574f, vec2<u32>(49747u, 0u)), Struct_1(33895i, -1000f, vec2<u32>(1u, 1u)), Struct_1(-19369i, 786f, vec2<u32>(80417u, 0u)), Struct_1(1i, 1163f, vec2<u32>(0u, 17095u)), Struct_1(i32(-2147483648), -2356f, vec2<u32>(41796u, 0u)), Struct_1(27002i, -1497f, vec2<u32>(51129u, 34629u)), Struct_1(9900i, 2511f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(71838i, -622f, vec2<u32>(0u, 59202u)), Struct_1(-1i, 1387f, vec2<u32>(4294967295u, 9986u)), Struct_1(-1i, 146f, vec2<u32>(4294967295u, 0u)), Struct_1(1i, -1172f, vec2<u32>(1u, 61778u)), Struct_1(0i, 2022f, vec2<u32>(31229u, 29555u)), Struct_1(-20503i, -1000f, vec2<u32>(1u, 8226u)), Struct_1(-73534i, 411f, vec2<u32>(29071u, 4294967295u)), Struct_1(-38082i, 926f, vec2<u32>(9012u, 0u)), Struct_1(-52321i, -558f, vec2<u32>(4294967295u, 50615u)), Struct_1(53135i, 780f, vec2<u32>(1u, 4294967295u)), Struct_1(-22894i, -476f, vec2<u32>(27032u, 4294967295u)), Struct_1(36258i, -118f, vec2<u32>(1u, 18966u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_5(Struct_3(!vec4<bool>(true, all(vec3<bool>(false, false, true)), true, all(vec4<bool>(false, false, true, false))), Struct_2(firstTrailingBit(global0.a)), 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, arg_0.b))), Struct_2(global0.a)), 4294967295u);
    global0 = var_1.a.b;
    let var_2 = ~min(var_0.c.x, ~_wgslsmith_add_u32(arg_0.c.x, firstTrailingBit(58656u)));
    let var_3 = Struct_5(var_1.a, _wgslsmith_mod_u32(firstTrailingBit(~firstLeadingBit(27081u)), var_1.a.b.a.x));
    return true;
}

fn func_2(arg_0: vec4<i32>) -> vec2<u32> {
    var var_0 = !vec4<bool>(true, func_3(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, 1730i, arg_0.x), arg_0), -2470f, ~global0.a)), all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), all(vec3<bool>(true, true, true)));
    var var_1 = select(abs(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1420u, global0.a.x, global0.a.x), vec3<u32>(global0.a.x, global0.a.x, 79079u) ^ vec3<u32>(global0.a.x, global0.a.x, global0.a.x)))), vec3<u32>(global0.a.x, 0u, ~55795u), var_0.wzy);
    var var_2 = _wgslsmith_add_u32(global0.a.x, 4294967295u);
    let var_3 = ~(~(vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(33673i, u_input.c.x, -62830i)) >> (var_1.xy % vec2<u32>(32u))));
    var var_4 = any(var_0.zwy);
    return ~global0.a;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    global2 = array<Struct_1, 27>();
    let var_0 = ~(~arg_0.c.x) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(vec2<u32>(global0.a.x, global0.a.x) | arg_0.c), vec2<u32>(firstLeadingBit(25741u), 117316u)), countOneBits(func_2(vec4<i32>(u_input.a.x, arg_0.a, -12188i, arg_2.x))) << (~arg_0.c % vec2<u32>(32u))) % 32u);
    global2 = array<Struct_1, 27>();
    let var_1 = abs(max(vec3<u32>(global0.a.x, _wgslsmith_dot_vec2_u32(global0.a, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 25794u), global0.a)), max(~arg_0.c.x, firstLeadingBit(var_0))), select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 48965u, 23955u, var_0), vec4<u32>(4294967295u, arg_0.c.x, var_0, global0.a.x)), _wgslsmith_div_u32(4294967295u, 1u), ~arg_0.c.x), vec3<u32>(global0.a.x, 4294967295u, 66917u), arg_1 || true)));
    let var_2 = arg_0.a;
    return _wgslsmith_div_u32(4294967295u, var_1.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_3(!select(vec4<bool>(any(vec4<bool>(arg_0.x, false, true, true)), all(vec2<bool>(arg_0.x, arg_0.x)), select(true, arg_0.x, arg_0.x), arg_0.x), vec4<bool>(arg_0.x, all(vec2<bool>(false, false)), true, true), true), Struct_2(global0.a), _wgslsmith_div_i32(u_input.b.x, abs(-abs(u_input.b.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) + vec2<f32>(-190f, arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-170f, -372f) * vec2<f32>(-1000f, -610f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_2) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -369f)))), true)), Struct_2(firstLeadingBit(select(vec2<u32>(53938u, 64163u), global0.a, true)) & global0.a));
    var_0 = Struct_3(select(select(var_0.a, !(!vec4<bool>(true, false, var_0.a.x, var_0.a.x)), vec4<bool>(true, arg_0.x, all(var_0.a.xy), !var_0.a.x)), !select(vec4<bool>(false, false, arg_0.x, true), !vec4<bool>(arg_0.x, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, true)), select(!select(vec4<bool>(true, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, false), arg_0), arg_0, true)), Struct_2(~_wgslsmith_mult_vec2_u32(min(vec2<u32>(var_0.e.a.x, global0.a.x), var_0.e.a), vec2<u32>(4294967295u, global0.a.x))), -2147483647i, vec2<f32>(arg_2, _wgslsmith_f_op_f32(trunc(-1045f))), Struct_2(~var_0.b.a));
    global0 = Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(46641u, func_2(vec4<i32>(u_input.a.x, u_input.c.x, var_0.c, 2147483647i)).x), select(var_0.e.a, vec2<u32>(var_0.b.a.x, 8694u), any(arg_0))), ~0u << ((_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.a.x, 21261u, global0.a.x), vec4<u32>(4294967295u, global0.a.x, 4294967295u, var_0.e.a.x)) >> (_wgslsmith_clamp_u32(global0.a.x, global0.a.x, 53824u) % 32u)) % 32u)));
    global2 = array<Struct_1, 27>();
    var var_1 = Struct_4(Struct_1(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(abs(var_0.d.x)))), var_0.e.a), _wgslsmith_sub_vec3_u32(vec3<u32>(select(_wgslsmith_sub_u32(var_0.b.a.x, var_0.e.a.x), _wgslsmith_sub_u32(global0.a.x, global0.a.x), false), func_2(vec4<i32>(u_input.c.x, 26419i, 0i, 0i)).x, global0.a.x), vec3<u32>(42976u, 25331u, 47976u)), global2[_wgslsmith_index_u32(func_2(vec4<i32>(var_0.c ^ u_input.c.x, _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(-2147483647i, var_0.c)), ~(~55859i), 45841i)).x, 27u)]);
    return Struct_2(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(14266u, var_1.b.x), vec2<u32>(global0.a.x, global0.a.x))) & vec2<u32>(_wgslsmith_clamp_u32(func_2(vec4<i32>(u_input.a.x, -20668i, var_1.c.a, 39961i)).x, _wgslsmith_dot_vec4_u32(vec4<u32>(5163u, global0.a.x, var_0.b.a.x, var_1.a.c.x), vec4<u32>(var_1.c.c.x, 1u, global0.a.x, 49283u)), var_0.b.a.x), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a);
    var var_0 = func_4(vec4<bool>(global0.a.x < _wgslsmith_mult_u32(max(1u, global0.a.x), func_1(global2[_wgslsmith_index_u32(0u, 27u)], true, vec3<i32>(0i, -34191i, 32475i))), true, func_3(global2[_wgslsmith_index_u32(~(~0u), 27u)]), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 100f)), -746f);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-183f, -1000f) - vec2<f32>(-411f, -834f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2566f, -575f), vec2<f32>(1398f, 937f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(319f, 1544f), vec2<f32>(-260f, 656f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -965f)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(916f, -901f) * vec2<f32>(-1000f, 720f)))))))));
    let var_2 = Struct_5(Struct_3(vec4<bool>(!any(vec4<bool>(false, false, true, false)), _wgslsmith_sub_u32(var_0.a.x, var_0.a.x) >= var_0.a.x, false, all(vec4<bool>(true, true, true, true))), Struct_2(~max(vec2<u32>(1808u, 35047u), global0.a)), u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - _wgslsmith_f_op_f32(var_1.x - var_1.x)), 532f), func_4(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), 1899f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-705f, var_1.x))))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer((firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, 33065i, u_input.c.x)) & vec4<i32>(-2147483647i, u_input.c.x, var_2.a.c, select(var_2.a.c, var_2.a.c, false))) & -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_2.a.c, u_input.c.x, -32215i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a.x, var_2.a.c, var_2.a.c), vec4<i32>(-1i, var_2.a.c, 0i, 0i))), var_2.a.c, var_1.x, ~(-_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.zy), select(1i, -1i, var_2.a.a.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(258f * var_1.x), var_2.a.d.x, _wgslsmith_f_op_f32(-var_2.a.d.x)))));
}

