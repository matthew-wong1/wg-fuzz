struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), 1219f, -270f, 1000f, 464f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    var var_0 = ~u_input.c.x == 21142i;
    let var_1 = Struct_2(firstTrailingBit(global0.x), Struct_1(vec4<bool>(!all(global1.a), true, true, true), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(select(global1.b, global1.d, global1.a.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-676f - -775f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d + global1.c), _wgslsmith_f_op_f32(-global1.e)))), vec4<u32>(arg_1, 4294967295u, 4294967295u, _wgslsmith_clamp_u32(arg_1, countOneBits(25457u), ~global0.x)));
    let var_2 = ~u_input.d;
    let var_3 = !select(!var_1.b.a.wyw, global1.a.wwx, select(vec3<bool>(global1.c <= var_1.b.b, true, !var_1.b.a.x), !(!vec3<bool>(false, true, global1.a.x)), var_1.b.a.x));
    var_0 = var_1.b.e < -1140f;
    return global1.c;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = Struct_2(15607u, Struct_1(select(global1.a, vec4<bool>(all(vec2<bool>(global1.a.x, global1.a.x)), arg_2.a.x | arg_3.b.a.x, arg_2.a.x, !global1.a.x), global1.a.x), global1.c, 592f, _wgslsmith_f_op_f32(round(arg_3.b.c)), _wgslsmith_f_op_f32(-139f * _wgslsmith_f_op_f32(floor(global1.d)))), ~vec4<u32>(~_wgslsmith_mod_u32(32052u, u_input.e.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.x, 4294967295u), _wgslsmith_div_u32(4523u, arg_1)), 0u, global0.x ^ firstLeadingBit(0u)));
    return !vec4<bool>(true, false, any(select(vec3<bool>(false, global1.a.x, true), arg_3.b.a.wxz, arg_3.b.a.wxy)) && var_0.b.a.x, arg_3.b.a.x);
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_1(func_4(vec2<i32>(48451i, _wgslsmith_mult_i32(min(u_input.a.x, 5869i), countOneBits(u_input.d.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(arg_0.x), ~42554u, arg_0.x), vec3<u32>(1u, 4294967295u, arg_0.x)), Struct_1(select(select(vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), global1.a, vec4<bool>(false, global1.a.x, false, global1.a.x)), !vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), select(vec4<bool>(false, global1.a.x, global1.a.x, true), vec4<bool>(true, global1.a.x, global1.a.x, true), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)), 116f, -942f), Struct_2(global0.x, Struct_1(vec4<bool>(false, false, true, true), _wgslsmith_f_op_f32(min(global1.e, global1.c)), _wgslsmith_f_op_f32(func_3(u_input.d.yz, 0u, vec2<i32>(2147483647i, -2147483647i))), _wgslsmith_f_op_f32(abs(global1.b)), _wgslsmith_f_op_f32(-global1.c)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(22572u, 1u, 81960u), vec3<u32>(21596u, 1u, arg_0.x)), arg_0.x, 1u, u_input.e.x))), _wgslsmith_f_op_f32(step(global1.e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b))))), _wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(587f * 280f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1518f)))));
    let var_1 = ~(vec2<i32>(-1i) * -firstLeadingBit(-u_input.d.zx));
    let var_2 = Struct_2(4294967295u, Struct_1(var_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(315f, _wgslsmith_f_op_f32(var_0.d + global1.d))), _wgslsmith_f_op_f32(global1.e * _wgslsmith_f_op_f32(ceil(1262f))))), 840f, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global1.c)), ~(countOneBits(countOneBits(vec4<u32>(global0.x, u_input.e.x, u_input.e.x, 53348u))) ^ select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 15062u, global0.x, u_input.e.x), vec4<u32>(u_input.e.x, 20101u, u_input.e.x, global0.x), vec4<u32>(52667u, 17359u, 0u, u_input.e.x)), vec4<u32>(u_input.e.x, 7326u, u_input.e.x, arg_0.x) << (vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_0.x) % vec4<u32>(32u)), false)));
    global1 = Struct_1(select(!vec4<bool>(all(global1.a.yyx), any(vec3<bool>(global1.a.x, var_2.b.a.x, var_2.b.a.x)), !var_0.a.x, !global1.a.x), var_0.a, true), _wgslsmith_f_op_f32(select(901f, -580f, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.e))))), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(round(696f)));
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1225f, _wgslsmith_f_op_f32(f32(-1f) * -907f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.e, var_2.b.e))))))));
    return Struct_2(_wgslsmith_div_u32(~(~(~92274u)), u_input.e.x), var_2.b, var_2.c);
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = vec3<u32>(~(~arg_2.c.x), global0.x, global0.x);
    var var_1 = arg_2;
    var var_2 = !var_1.b.a.x;
    var var_3 = arg_2;
    let var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-197f, 631f, var_3.b.c) + vec3<f32>(var_3.b.b, arg_2.b.d, var_1.b.c)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-886f, arg_2.b.d, -327f)))))))));
    return var_1.c;
}

fn func_1() -> Struct_1 {
    global0 = func_5(-abs(firstTrailingBit(-22205i)), any(select(vec4<bool>(true, global1.a.x, global1.a.x, true), !global1.a, !vec4<bool>(global1.a.x, false, global1.a.x, true))), func_2(global0.wwx)) & _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(50448u, u_input.e.x, 32057u, global0.x)), select(reverseBits(vec4<u32>(u_input.e.x, 21166u, 0u, u_input.e.x)) << (~vec4<u32>(global0.x, global0.x, u_input.e.x, u_input.e.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, u_input.e.x, global0.x, global0.x) << (vec4<u32>(82019u, 1u, 0u, global0.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.e.x, u_input.e.x, 27026u, u_input.e.x))), func_2(global0.xww).b.a), ~max(~vec4<u32>(global0.x, 4294967295u, global0.x, 1u), ~vec4<u32>(u_input.e.x, u_input.e.x, global0.x, u_input.e.x)));
    var var_0 = 1514f;
    let var_1 = Struct_1(global1.a, global1.b, global1.e, -751f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-460f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.d, global1.e)))), global1.a.x)));
    global0 = vec4<u32>(global0.x, ~(~_wgslsmith_mult_u32(~global0.x, u_input.e.x)), 0u, u_input.e.x);
    let var_2 = Struct_2(_wgslsmith_mult_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 15439u, global0.x, 4294967295u), vec4<u32>(0u, 4294967295u, 21013u, u_input.e.x))), global0.x), var_1, abs(vec4<u32>(1u & u_input.e.x, 1u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(15538u, global0.x, 14914u), global0.wyz), global0.xxz), 0u)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = Struct_2(max(~(~12770u), reverseBits(~u_input.e.x)), func_1(), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(14884u, 43103u, 0u, global0.x)), vec4<u32>(global0.x, 38884u, u_input.e.x, global0.x)) << (func_2(vec3<u32>(49697u, 4294967295u, global0.x)).c % vec4<u32>(32u)), reverseBits((vec4<u32>(53393u, global0.x, 4294967295u, 4294967295u) >> (vec4<u32>(0u, global0.x, u_input.e.x, 4294967295u) % vec4<u32>(32u))) << (abs(vec4<u32>(global0.x, u_input.e.x, u_input.e.x, 1u)) % vec4<u32>(32u)))));
    global1 = func_2(global0.wzy).b;
    var var_1 = func_2(~(~vec3<u32>(_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, global0.x, u_input.e.x), global0.yyx), var_0.a))).b;
    var var_2 = !(!func_1().a);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xx, 358f);
}

