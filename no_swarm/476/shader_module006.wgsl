struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(0u, 1u, 0u, 15202u), vec4<u32>(9240u, 52322u, 0u, 4613u), vec4<u32>(27454u, 62572u, 1u, 79088u), vec4<u32>(22118u, 4294967295u, 86726u, 0u), vec4<u32>(92049u, 1u, 4294967295u, 4294967295u), vec4<u32>(32361u, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 90872u, 10450u, 29331u), vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(4294967295u, 24129u, 4294967295u, 1u), vec4<u32>(5719u, 1u, 4294967295u, 0u), vec4<u32>(81258u, 4294967295u, 1u, 12280u), vec4<u32>(0u, 4944u, 56051u, 111259u), vec4<u32>(64408u, 6109u, 4294967295u, 75243u), vec4<u32>(4294967295u, 4294967295u, 8116u, 107032u), vec4<u32>(26551u, 11570u, 0u, 41539u), vec4<u32>(5523u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 71604u, 4294967295u, 19539u), vec4<u32>(1u, 81755u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 17364u, 0u, 7910u), vec4<u32>(0u, 84014u, 4294967295u, 8282u), vec4<u32>(4294967295u, 40746u, 29380u, 4294967295u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(0u, 15131u, 0u, 91902u), vec4<u32>(1u, 27478u, 0u, 38723u), vec4<u32>(40816u, 1u, 1u, 64534u), vec4<u32>(51364u, 1306u, 4294967295u, 4294967295u), vec4<u32>(58534u, 54527u, 11143u, 4294967295u));

var<private> global1: Struct_5;

var<private> global2: Struct_3 = Struct_3(0u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_5) -> u32 {
    var var_0 = arg_2;
    let var_1 = ~reverseBits(vec2<u32>(1u, 1u));
    return 4294967295u;
}

fn func_2(arg_0: f32) -> Struct_2 {
    global2 = Struct_3(~_wgslsmith_div_u32(global1.b, func_3(u_input.a, ~0u, Struct_5(global1.a, global2.a, 2147483647i, vec2<i32>(2147483647i, 5503i)))));
    return Struct_2(Struct_1(!(!select(vec3<bool>(false, global1.a, false), vec3<bool>(false, global1.a, global1.a), vec3<bool>(global1.a, global1.a, true)))), vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1691f, 129f)), _wgslsmith_div_f32(arg_0, 518f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - _wgslsmith_f_op_f32(arg_0 * -1000f)), global1.a));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> vec3<bool> {
    var var_0 = Struct_1(arg_2.a.a);
    let var_1 = -40200i;
    var var_2 = Struct_5(!select(var_0.a.x, true && (global1.a && arg_0.c.b.x), true), firstLeadingBit(select(4294967295u, 41508u, !func_2(-1000f).a.a.x)), arg_3, vec2<i32>(max(u_input.a.x, 2147483647i), -firstTrailingBit(arg_3) | 35469i));
    global0 = array<vec4<u32>, 28>();
    var var_3 = ~(~(global1.b ^ _wgslsmith_add_u32(func_3(vec4<i32>(-2147483647i, -1i, var_1, global1.d.x), arg_0.b.a, Struct_5(false, arg_1, u_input.a.x, vec2<i32>(-10820i, -35931i))), 1u)));
    return arg_0.c.a.a;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_5) -> Struct_4 {
    return Struct_4(u_input.a.zyy, Struct_3(~min(global1.b, arg_2.b) | (~global1.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, global1.b), vec2<u32>(global2.a, arg_2.b)) % 32u))), Struct_2(Struct_1(arg_0), !vec2<bool>(false | arg_1.x, false)), vec2<bool>(all(vec2<bool>(true, arg_0.x)), all(select(select(arg_1, vec2<bool>(arg_2.a, true), arg_0.x), !arg_0.zx, vec2<bool>(false, arg_0.x)))));
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_5 {
    return Struct_5(false && all(!(!vec4<bool>(arg_0.x, false, false, arg_0.x))), ~(~countOneBits(global2.a)), select(arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, ~u_input.a.x, _wgslsmith_clamp_i32(12024i, -39302i, -2147483647i)), _wgslsmith_add_vec3_i32(u_input.a.xzz, reverseBits(arg_2.a))), all(vec3<bool>(global1.a, true, func_4(Struct_4(u_input.a.zwz, arg_2.b, Struct_2(arg_2.c.a, arg_2.d), arg_0), 17779u, arg_2.c, 8918i).x))), reverseBits(_wgslsmith_sub_vec2_i32(~vec2<i32>(arg_2.a.x, -43786i), vec2<i32>(-13288i, _wgslsmith_div_i32(arg_2.a.x, -17967i)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_5) -> Struct_5 {
    global1 = func_6(!(!vec2<bool>(u_input.a.x < 2147483647i, all(vec4<bool>(true, global1.a, global1.a, true)))), vec2<i32>(6762i, select(~1i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, global1.c, arg_2.x), vec3<i32>(-73441i, arg_0, arg_2.x)), max(arg_2.x, 11136i)), true)), func_5(func_4(Struct_4(vec3<i32>(2147483647i, -2229i, -1i), Struct_3(8278u), func_2(-899f), !vec2<bool>(global1.a, false)), 21497u, Struct_2(Struct_1(vec3<bool>(true, arg_3.a, true)), vec2<bool>(true, true)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_2.x, arg_0), i32(-1i) * -8667i, global1.c)), !(!arg_1.a.zz), arg_3));
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    var var_0 = ~vec4<u32>(45094u << (_wgslsmith_mult_u32(~global2.a, _wgslsmith_mult_u32(arg_3.b, 16414u)) % 32u), global1.b, global1.b, firstLeadingBit(_wgslsmith_add_u32(global1.b, global1.b)) ^ arg_3.b);
    var var_1 = func_5(func_2(-336f).a.a, func_4(Struct_4(u_input.a.xzy, func_5(arg_1.a, arg_1.a.yy, func_6(arg_1.a.xy, arg_3.d, Struct_4(vec3<i32>(u_input.a.x, 2683i, 8266i), Struct_3(global1.b), Struct_2(Struct_1(vec3<bool>(arg_3.a, false, arg_1.a.x)), arg_1.a.xy), arg_1.a.xx))).b, func_2(-180f), vec2<bool>(func_4(Struct_4(vec3<i32>(global1.c, -1i, arg_0), Struct_3(18178u), Struct_2(arg_1, arg_1.a.xy), vec2<bool>(true, false)), 125476u, Struct_2(arg_1, arg_1.a.xy), arg_0).x, true)), ~global2.a, Struct_2(Struct_1(vec3<bool>(false, true, true)), !arg_1.a.xz), -arg_2.x).zz, arg_3).b;
    return arg_3;
}

fn func_7(arg_0: Struct_5, arg_1: u32) -> Struct_2 {
    global2 = Struct_3(func_5(select(vec3<bool>(false & arg_0.a, true, arg_0.a), vec3<bool>(any(vec4<bool>(arg_0.a, false, arg_0.a, false)), all(vec4<bool>(false, false, false, global1.a)), true), func_2(_wgslsmith_f_op_f32(round(1102f))).b.x), !(!(!vec2<bool>(false, global1.a))), arg_0).b.a);
    let var_0 = u_input.a;
    global0 = array<vec4<u32>, 28>();
    global2 = func_5(func_5(!select(!vec3<bool>(arg_0.a, false, false), !vec3<bool>(arg_0.a, arg_0.a, global1.a), true), vec2<bool>(arg_0.a, (global2.a > global2.a) || arg_0.a), func_6(vec2<bool>(any(vec3<bool>(false, true, true)), !arg_0.a), _wgslsmith_mult_vec2_i32(arg_0.d, ~global1.d), func_5(vec3<bool>(true, arg_0.a, arg_0.a), func_5(vec3<bool>(true, false, global1.a), vec2<bool>(global1.a, arg_0.a), Struct_5(true, 0u, -17557i, var_0.yw)).c.b, arg_0))).c.a.a, !vec2<bool>(false, arg_0.a), Struct_5(-2147483647i >= ((i32(-1i) * -2147483647i) << ((0u >> (global1.b % 32u)) % 32u)), global2.a, var_0.x, u_input.a.wz)).b;
    let var_1 = select(!vec4<bool>(arg_0.a, global1.a, func_2(_wgslsmith_f_op_f32(-941f * -981f)).a.a.x, true), vec4<bool>((func_4(Struct_4(var_0.zxz, Struct_3(arg_1), Struct_2(Struct_1(vec3<bool>(false, global1.a, false)), vec2<bool>(global1.a, false)), vec2<bool>(global1.a, arg_0.a)), arg_1, Struct_2(Struct_1(vec3<bool>(true, false, false)), vec2<bool>(global1.a, false)), arg_0.d.x).x || func_1(3911i, Struct_1(vec3<bool>(arg_0.a, arg_0.a, global1.a)), u_input.a.zxw, arg_0).a) | all(select(vec2<bool>(true, global1.a), vec2<bool>(false, true), vec2<bool>(arg_0.a, true))), true, global1.a, arg_0.a || true), select(!vec4<bool>(all(vec2<bool>(arg_0.a, arg_0.a)), 62258u <= arg_1, global1.a, !arg_0.a), select(vec4<bool>(true, true, func_2(-456f).b.x, true), select(vec4<bool>(true, global1.a, global1.a, false), select(vec4<bool>(true, arg_0.a, true, global1.a), vec4<bool>(true, false, arg_0.a, true), false), false), func_2(-131f).b.x), !(!(!vec4<bool>(global1.a, arg_0.a, false, true)))));
    return Struct_2(func_5(select(select(vec3<bool>(false, arg_0.a, var_1.x), !var_1.www, true), !(!var_1.xyy), !var_1.xxz), select(func_4(func_5(vec3<bool>(var_1.x, false, true), var_1.yw, arg_0), global1.b, func_2(468f), ~var_0.x).xz, var_1.xx, select(vec2<bool>(arg_0.a, false), func_5(vec3<bool>(false, false, false), vec2<bool>(arg_0.a, global1.a), Struct_5(var_1.x, arg_0.b, u_input.a.x, vec2<i32>(-9695i, arg_0.d.x))).d, var_1.zw)), arg_0).c.a, vec2<bool>(true, false));
}

fn func_8(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global2 = Struct_3(4294967295u);
    var var_0 = 1u;
    let var_1 = firstTrailingBit(3226u ^ global1.b);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(546f, 1009f)), _wgslsmith_f_op_f32(abs(-1871f)))), _wgslsmith_f_op_f32(223f * _wgslsmith_f_op_f32(623f - -429f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1284f - 1443f) * 955f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(756f * -1009f))))));
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, ~func_5(vec3<bool>(true, true, global1.a), vec2<bool>(global1.a, global1.a), Struct_5(global1.a, 12119u, global1.d.x, u_input.a.zx)).b.a ^ select(10969u, global1.b, !arg_1.a.a.x), 1u), select(vec3<u32>(53263u, func_1(global1.c, arg_1.a, u_input.a.yxx, Struct_5(false, global2.a, global1.d.x, vec2<i32>(46337i, 20706i))).b, 0u), ~vec3<u32>(18224u, 17498u, var_1) | _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.a, 21689u, global1.b), vec3<u32>(global2.a, global2.a, var_1), vec3<u32>(0u, 17704u, 1u)), arg_1.a.a) | reverseBits(select(vec3<u32>(61229u, global2.a, 11393u), vec3<u32>(global1.b, 105634u, 44048u), !arg_1.a.a)));
    return Struct_1(vec3<bool>(true, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_8(-_wgslsmith_mult_i32(56770i, 28101i), func_7(func_1(abs(global1.d.x), Struct_1(vec3<bool>(false, global1.a, global1.a)), vec3<i32>(u_input.a.x, 66653i, 42810i), Struct_5(global1.a, global2.a, -41054i, vec2<i32>(24728i, -1i))), 31035u | ~global1.b)), vec2<bool>(all(vec2<bool>(all(vec2<bool>(false, false)), global1.a)), func_6(vec2<bool>(false, !global1.a), ~vec2<i32>(global1.c, -1i), Struct_4(_wgslsmith_add_vec3_i32(u_input.a.zzw, u_input.a.zxz), Struct_3(global1.b), Struct_2(Struct_1(vec3<bool>(true, true, global1.a)), vec2<bool>(false, false)), vec2<bool>(global1.a, global1.a))).a));
    global1 = func_1(~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(22994i, u_input.a.x, -1i, 2147483647i)), global1.d.x) >> (abs(27501u) % 32u), Struct_1(var_0.a.a), ~_wgslsmith_div_vec3_i32(-reverseBits(vec3<i32>(global1.d.x, 41651i, -15898i)), vec3<i32>(abs(global1.c), -global1.c, _wgslsmith_mult_i32(-2147483647i, u_input.a.x))), Struct_5(true, _wgslsmith_div_u32(~global1.b, global2.a), 5452i, vec2<i32>(abs(~(-1775i)), abs(6264i))));
    global0 = array<vec4<u32>, 28>();
    var var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-16749i);
}

