struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 12648i, -1i, -37851i);

var<private> global1: bool = false;

var<private> global2: array<vec4<i32>, 10>;

var<private> global3: Struct_2 = Struct_2(-106f, Struct_1(228f, vec4<u32>(79390u, 1u, 4294967295u, 42249u), -1071f, vec2<bool>(false, false)), 374f, 29620u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec3<bool> {
    let var_0 = firstLeadingBit(select(u_input.c, 15930i & select(~1i, _wgslsmith_mult_i32(-5107i, 0i), false), any(global3.b.d)));
    return vec3<bool>(!(false != !(!arg_0.d.x)), true, global3.b.d.x);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = -2192f;
    global3 = Struct_2(_wgslsmith_f_op_f32(-1072f + 1199f), Struct_1(arg_0.x, u_input.b, -318f, !select(select(global3.b.d, vec2<bool>(true, global3.b.d.x), vec2<bool>(global3.b.d.x, false)), !vec2<bool>(global3.b.d.x, false), global3.b.d)), -336f, 0u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-140f - global3.a) * arg_0.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)), var_1)))), max(~(~vec4<u32>(u_input.b.x, 1u, u_input.a, global3.b.b.x)), vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(u_input.b.wx, global3.b.b.zy), global3.b.b.x, min(0u, 38108u))) & vec4<u32>(0u, ~25231u, 0u, _wgslsmith_clamp_u32(1u | u_input.a, _wgslsmith_add_u32(u_input.b.x, global3.d), _wgslsmith_sub_u32(4294967295u, 19534u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f + _wgslsmith_f_op_f32(abs(1000f))))), vec2<bool>(true, true));
    let var_3 = vec4<u32>(79297u, ~_wgslsmith_clamp_u32(40066u, 70605u, ~101109u), firstTrailingBit(0u), global3.b.b.x);
    return true;
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = !(!(!(!func_2(global3.b, 68219u))));
    let var_1 = select(select(!vec3<bool>(func_3(arg_0), global3.b.d.x, any(vec4<bool>(true, global3.b.d.x, true, true))), vec3<bool>(select(false, arg_0.x >= global3.b.c, var_0.x), var_0.x, !var_0.x), !(!(!vec3<bool>(var_0.x, false, true)))), !vec3<bool>(1u < u_input.b.x, false, true), !(!func_2(global3.b, ~global3.d)));
    let var_2 = Struct_3(!vec4<bool>(select(var_0.x, false, true), true, global3.b.d.x & false, true), Struct_1(global3.b.a, _wgslsmith_clamp_vec4_u32(reverseBits(countOneBits(global3.b.b)), ~(vec4<u32>(global3.d, 49267u, 0u, 1u) >> (u_input.b % vec4<u32>(32u))), u_input.b), _wgslsmith_f_op_f32(global3.c * global3.b.c), select(vec2<bool>(!var_1.x, true), vec2<bool>(false, u_input.c > global0.x), global3.b.d.x)), var_1, _wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(u_input.b.x, 35739u, u_input.b.x, u_input.b.x)), ~global3.b.b), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0.x, -191f)))))), firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(global3.d, global3.b.b.x), abs(global3.b.b.x), 78367u, 4294967295u)), arg_0.x, select(func_2(Struct_1(global3.c, vec4<u32>(11833u, 0u, 33727u, global3.b.b.x), 1684f, vec2<bool>(global3.b.d.x, global3.b.d.x)), 23560u).zy, vec2<bool>(func_2(global3.b, 0u).x, var_1.x), global3.b.d.x)));
    let var_3 = global0.wzy;
    var var_4 = vec4<bool>(var_2.b.d.x != func_2(Struct_1(1362f, ~vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.a), -359f, select(var_0.xx, var_0.xx, var_2.c.zz)), firstTrailingBit(u_input.a) ^ ~37157u).x, true, var_1.x, select(all(var_2.a), true, false));
    return Struct_3(vec4<bool>(~(-1i) <= ~global0.x, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-316f, global3.b.c, 886f, 172f) + arg_0)), false, false), Struct_1(-367f, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, 65487u), ~0u, _wgslsmith_add_u32(u_input.b.x, 0u), reverseBits(var_2.b.b.x)), _wgslsmith_mult_vec4_u32(abs(global3.b.b), global3.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -658f) + 314f)), func_2(Struct_1(341f, _wgslsmith_mult_vec4_u32(var_2.d, global3.b.b), _wgslsmith_div_f32(588f, 597f), global3.b.d), 34413u).yy), !(!var_4.wyx), vec4<u32>(abs(u_input.a), 17682u, ~var_2.d.x, _wgslsmith_mult_u32(25784u ^ global3.d, ~var_2.b.b.x)), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(752f, 902f, global3.c, -362f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.c, -148f, 400f, global3.b.a) * vec4<f32>(global3.a, global3.b.a, -2151f, global3.a)))))));
    let var_2 = -firstTrailingBit(global0.x);
    global2 = array<vec4<i32>, 10>();
    var var_3 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.c), 1421f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(603f)) - _wgslsmith_f_op_f32(step(var_1.b.c, var_1.b.a)))), false)), Struct_1(_wgslsmith_f_op_f32(max(514f, -1373f)), vec4<u32>(~firstTrailingBit(u_input.b.x), 15041u, countOneBits(u_input.a) | global3.b.b.x, _wgslsmith_dot_vec4_u32(min(var_1.d, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global3.d, var_0, 86504u), vec4<u32>(u_input.a, var_0, u_input.a, 1u)))), _wgslsmith_f_op_f32(global3.c - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1582f, var_1.b.c)), _wgslsmith_f_op_f32(-var_1.e.c)))), select(global3.b.d, func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.a, global3.b.c, 670f, var_1.e.c)))).b.d, !global3.b.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -161f))), var_0);
    var_3 = Struct_2(var_1.b.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.a + var_1.b.c) - _wgslsmith_f_op_f32(abs(-272f)))), var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.c, 129f))), var_3.b.d), global3.b.c, u_input.b.x);
    var var_4 = Struct_3(!func_1(vec4<f32>(989f, var_1.e.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1668f + 181f))).a, func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global3.a)))), _wgslsmith_f_op_f32(var_3.c * var_1.e.c), _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.c)) * _wgslsmith_f_op_f32(select(var_1.b.a, 425f, true))))).e, var_1.c, _wgslsmith_mod_vec4_u32(var_1.e.b, vec4<u32>(select(_wgslsmith_mult_u32(u_input.b.x, u_input.a), reverseBits(var_1.d.x), !var_1.e.d.x), ~abs(var_1.d.x), ~var_0, 28390u)), Struct_1(var_3.b.a, vec4<u32>(1u, ~max(75874u, var_3.b.b.x), 68142u, u_input.a), _wgslsmith_f_op_f32(floor(-709f)), !vec2<bool>(false, !var_1.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_u32(0u, 6784u) << (u_input.b.x % 32u), var_1.b.b.x), var_3.a, _wgslsmith_mod_i32(-16229i, 7810i));
}

