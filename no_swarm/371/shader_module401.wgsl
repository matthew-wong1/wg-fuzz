struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -34070i;

var<private> global1: vec3<f32> = vec3<f32>(117f, 258f, 372f);

var<private> global2: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(vec2<i32>(-1i) * -firstLeadingBit(u_input.a.zz), max(vec3<u32>(~4294967295u, firstLeadingBit(18113u), ~1u), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(44151u, 47334u, 0u), vec3<u32>(21503u, 0u, 106801u)), vec3<u32>(0u, 10363u, 4294967295u), reverseBits(vec3<u32>(1u, 4294967295u, 1846u)))), ~_wgslsmith_mod_u32(1u, 1u), _wgslsmith_mod_vec4_i32(vec4<i32>(-20743i, 10005i, u_input.a.x, u_input.a.x | u_input.a.x), vec4<i32>(~u_input.a.x, 1i, -1i, _wgslsmith_div_i32(27436i, u_input.a.x)))));
    global2 = max(u_input.a.x >> (41791u % 32u), _wgslsmith_mult_i32(24289i, -(var_0.a.d.x << (var_0.a.c % 32u))));
    global0 = ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, reverseBits(-6416i)), _wgslsmith_sub_vec2_i32(u_input.a.wx, ~u_input.a.ww)));
    let var_1 = Struct_4(vec4<bool>(true, true, true, true), Struct_2(var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-717f, global1.x, global1.x, global1.x), vec4<f32>(-285f, global1.x, global1.x, -528f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1518f, 256f, -1025f)), vec4<bool>(false, false, false, false))), vec4<f32>(_wgslsmith_f_op_f32(global1.x + 986f), -451f, _wgslsmith_f_op_f32(ceil(-803f)), _wgslsmith_f_op_f32(f32(-1f) * -601f))) + vec4<f32>(_wgslsmith_f_op_f32(select(global1.x, global1.x, true)), 1000f, global1.x, -1181f)), vec3<bool>(false, !all(vec2<bool>(true, true)), false), _wgslsmith_mult_u32(var_0.a.c, 0u) & reverseBits(firstLeadingBit(~var_0.a.b.x)));
    let var_2 = abs(_wgslsmith_mult_vec3_u32(~var_1.b.a.b, reverseBits(var_0.a.b | countOneBits(vec3<u32>(var_1.e, 86287u, 11000u)))));
    return var_1.d.x;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = firstTrailingBit(~(-abs(-16255i)));
    var var_1 = Struct_5(select(vec4<bool>(any(vec3<bool>(true, false, true)) & true, global1.x <= -1000f, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), true), vec4<bool>(false, false, func_3(), -394f < global1.x), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, false))))), -1466f);
    var var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(5563u, 27542u, 7026u)) << (min(vec3<u32>(arg_1.a.a.c, 120050u, 0u) >> (vec3<u32>(1u, 80788u, arg_1.a.a.b.x) % vec3<u32>(32u)), arg_3.a.a.b) % vec3<u32>(32u)), ~vec3<u32>(~arg_3.a.a.c, 1u, 59213u)), ~1u);
    var_2 = arg_3.a.a.b.yx;
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, arg_2, -601f), vec3<f32>(151f, -1294f, -192f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-559f, arg_2, -916f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, 499f, -115f)))))), vec3<f32>(1000f, -685f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))))));
    return var_1.a;
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_4(!select(vec4<bool>(true, true, any(vec4<bool>(true, false, false, false)), true), select(func_2(u_input.a.x, Struct_3(Struct_2(Struct_1(u_input.a.wx, vec3<u32>(1u, 4294967295u, 1u), 0u, vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x))), vec3<i32>(u_input.a.x, 1i, -12451i)), global1.x, Struct_3(Struct_2(Struct_1(u_input.a.yz, vec3<u32>(50966u, 0u, 4294967295u), 1u, u_input.a)), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i))), vec4<bool>(false, true, true, true), any(vec4<bool>(true, true, false, true))), true), Struct_2(Struct_1(vec2<i32>(u_input.a.x >> (53943u % 32u), firstLeadingBit(u_input.a.x)), countOneBits(vec3<u32>(0u, 4294967295u, 37536u)), ~(~69033u), countOneBits(vec4<i32>(55957i, -18347i, u_input.a.x, u_input.a.x)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))), vec4<f32>(-1169f, -334f, -400f, -2013f), vec3<bool>(true, true, true), ~(~max(~4294967295u, 1u)));
    global0 = -1i | _wgslsmith_add_i32(var_0.b.a.a.x, u_input.a.x);
    let var_1 = Struct_2(var_0.b.a);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + 743f), _wgslsmith_f_op_f32(f32(-1f) * -1841f))));
    let var_3 = var_1.a;
    return vec3<bool>(var_0.a.x, !(func_3() && !any(vec4<bool>(var_0.a.x, false, true, var_0.d.x))), all(func_2(var_1.a.a.x, Struct_3(Struct_2(var_3), vec3<i32>(var_3.a.x, -53545i, 6554i)), _wgslsmith_f_op_f32(-global1.x), Struct_3(Struct_2(var_0.b.a), abs(vec3<i32>(var_0.b.a.a.x, var_0.b.a.d.x, -2147483647i)))).wy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1673f, global1.x), -233f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f)), global1.x)) + vec3<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(trunc(-503f))), global1.x, global1.x));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1074f, -594f, _wgslsmith_f_op_f32(f32(-1f) * -1076f)), vec3<f32>(1f, _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1170f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, -116f, 2505f), vec3<f32>(global1.x, -1000f, global1.x)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x - 1416f), -125f)), _wgslsmith_f_op_f32(-global1.x), 1f)));
    global0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.yx)), ~_wgslsmith_clamp_i32(2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(u_input.a.xwx, _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, 8301i)), _wgslsmith_mod_vec3_i32(u_input.a.xww, u_input.a.zyz)))), u_input.a.x);
    var var_0 = select(select(func_1(), vec3<bool>(false, any(func_1()), true), false), func_2(firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, 2147483647i)), Struct_3(Struct_2(Struct_1(u_input.a.wy, vec3<u32>(71203u, 14215u, 1u), 45309u, vec4<i32>(2147483647i, u_input.a.x, -1i, u_input.a.x))), select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 5937i, u_input.a.x), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), reverseBits(vec3<i32>(1i, u_input.a.x, -1i)), true)), global1.x, Struct_3(Struct_2(Struct_1(u_input.a.xw, vec3<u32>(3103u, 1u, 1u), 1220u, u_input.a)), countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a.x, -53139i), u_input.a.wwz)))).xxx, -1510i <= reverseBits(firstTrailingBit(41675i)));
    let var_1 = ((_wgslsmith_f_op_f32(396f + global1.x) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(612f)), _wgslsmith_div_f32(1000f, 482f))) & true) & var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, 1u), 15234u, 0u), ~(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 40804u), 1u)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a.x, firstLeadingBit(20589i)), ~u_input.a.xww) >> (vec3<u32>(_wgslsmith_mod_u32(27905u >> (1u % 32u), 1u), ~abs(4294967295u), 4294967295u) % vec3<u32>(32u)));
}

