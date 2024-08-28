struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false));

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_2) -> vec3<f32> {
    global2 = array<vec4<bool>, 21>();
    global2 = array<vec4<bool>, 21>();
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(62726u, arg_3.c.b.x), ~35261u), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_3.c.a.x, _wgslsmith_mult_u32(1u, global0.a.x)), _wgslsmith_dot_vec3_u32(global0.a, ~arg_3.c.a)), arg_0.a.x));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1129f))))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(266f * -640f)), arg_3.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x + arg_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -639f)))), _wgslsmith_f_op_f32(min(arg_3.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1074f - 322f) * -1307f))))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(arg_3.b.x, _wgslsmith_f_op_f32(round(-289f)), all(vec2<bool>(global3.x, global3.x)) & !(!arg_1))), arg_3.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(308f, arg_3.b.x, true))) * var_1.x))));
    return vec3<f32>(_wgslsmith_f_op_f32(-776f * arg_2.x), var_1.x, 655f);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(global0.a, vec3<u32>(7978u, 19442u, 64611u)), vec3<u32>(global0.b.x, 13500u, global0.b.x)), vec2<u32>(1u, _wgslsmith_clamp_u32(10223u, u_input.b, u_input.b))), true, vec3<f32>(1718f, _wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-676f, 1000f)))), Struct_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(810f, -773f, 1570f, -1041f))), Struct_1(vec3<u32>(11543u, 1u, 0u), min(vec2<u32>(u_input.b, u_input.b), global0.b))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(324f, _wgslsmith_f_op_f32(ceil(-1631f)), _wgslsmith_f_op_f32(floor(1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-257f, 237f, -493f) - vec3<f32>(-2033f, 1224f, 540f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    global1 = global2[_wgslsmith_index_u32(9967u, 21u)];
    var var_1 = 37800u;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-899f - -324f) * _wgslsmith_div_f32(-364f, -913f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-927f + var_0.x))))), var_0.x);
    let var_3 = vec4<u32>(~(~4294967295u), _wgslsmith_div_u32(global0.b.x, firstLeadingBit(firstLeadingBit(global0.a.x))) | _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global0.a.x), vec2<u32>(u_input.b, global0.b.x)) | _wgslsmith_mult_vec2_u32(global0.b, global0.b), vec2<u32>(u_input.b << (u_input.b % 32u), countOneBits(4294967295u))), 1u, 4294967295u);
    return Struct_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, 1000f, 980f))) - vec4<f32>(var_0.x, 707f, var_2.x, 1093f)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(select(var_0.x, -622f, false)))))), Struct_1(global0.a, var_3.wx));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = Struct_2(-u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b) - vec4<f32>(-860f, -829f, -386f, arg_2.b.x)))), func_2().c);
    global1 = !global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~(~var_0.c.b.x), 27345u), 21u)];
    let var_1 = ~(~abs(_wgslsmith_mult_u32(var_0.c.b.x, arg_2.c.a.x)) >> (arg_2.c.b.x % 32u));
    var var_2 = var_0;
    var var_3 = 1u;
    return 17741i;
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = Struct_1((vec3<u32>(~0u, ~21882u, select(0u, 9039u, true)) >> (abs(firstLeadingBit(vec3<u32>(u_input.b, global0.b.x, arg_0.c.a.x))) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(global0.a, select(global0.a, vec3<u32>(21026u, arg_0.c.b.x, 1u), vec3<bool>(false, global1.x, true))), select(vec3<u32>(1u, global0.a.x, 4294967295u), vec3<u32>(4294967295u, 1u, arg_0.c.b.x), select(global3.xwy, global3.xxy, vec3<bool>(false, false, false)))), select(arg_0.c.a.xy, global0.a.zz, true));
    let var_1 = 1u;
    global3 = !vec4<bool>(all(vec3<bool>(global1.x, true, global1.x)), true, !(any(global2[_wgslsmith_index_u32(4294967295u, 21u)]) && global3.x), !global1.x);
    global2 = array<vec4<bool>, 21>();
    var var_2 = Struct_2(firstTrailingBit(min(-2147483647i, u_input.a.x) ^ func_4(!global1.yzx, arg_0.a, func_2(), any(vec2<bool>(true, false)))), arg_0.b, Struct_1(abs(firstTrailingBit(_wgslsmith_sub_vec3_u32(var_0.a, global0.a))), reverseBits(arg_0.c.b) ^ ~(var_0.a.yx & global0.b)));
    return vec4<f32>(1f, _wgslsmith_f_op_f32(-494f - _wgslsmith_f_op_f32(round(-833f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * arg_0.b.x), var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    global2 = array<vec4<bool>, 21>();
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-413f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -822f), 108f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(-5786i, vec4<f32>(-502f, -1904f, 540f, -183f), Struct_1(vec3<u32>(64576u, u_input.b, 0u), vec2<u32>(global0.a.x, 19253u))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1255f, 1576f, -1850f, -896f), vec4<f32>(-133f, 1000f, 2979f, 416f), vec4<bool>(global3.x, true, false, global3.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 316f, 1155f, 315f)), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(u_input.a.x, vec4<f32>(1185f, 1208f, -1102f, 157f), Struct_1(global0.a, vec2<u32>(4294967295u, var_0))))).x, _wgslsmith_f_op_f32(f32(-1f) * -261f), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(u_input.a.x, vec4<f32>(-1000f, 406f, -196f, 2164f), Struct_1(global0.a, global0.a.xx)))).x, -502f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1352f, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(global0.a, global0.b), false, vec3<f32>(717f, -758f, 257f), Struct_2(u_input.a.x, vec4<f32>(-753f, 1879f, 1138f, 514f), Struct_1(vec3<u32>(29083u, var_0, var_0), vec2<u32>(0u, 20546u))))).x, _wgslsmith_div_f32(615f, -704f), _wgslsmith_f_op_f32(1944f - 477f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(737f, 841f, -676f, 1198f), vec4<f32>(1519f, -1165f, 455f, -1445f))))))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = func_2();
    var_3 = Struct_2(33634i, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1007f, -169f))), var_3.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(f32(-1f) * -1328f))), var_3.b)), var_3.c);
    let var_4 = Struct_2(_wgslsmith_mult_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-5595i, -15632i, var_3.a), select(vec3<i32>(var_3.a, u_input.a.x, 46339i), vec3<i32>(u_input.a.x, -23134i, u_input.a.x), true)), firstLeadingBit(54750i)), _wgslsmith_sub_i32(reverseBits(18072i), u_input.a.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(1i, vec4<f32>(var_2, var_2, var_3.b.x, var_2), Struct_1(vec3<u32>(1u, var_3.c.a.x, var_3.c.b.x), vec2<u32>(13396u, var_3.c.b.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_3.b + var_3.b)))))), var_3.c);
    let var_5 = func_2().c.a;
    let var_6 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(var_1.ywy, var_1.zzz), var_5, 39039u, _wgslsmith_add_i32(-8428i, -1i));
}

