struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, true, false, false, true, true, false, false, true, false, false, true);

var<private> global1: f32 = 245f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> f32 {
    global0 = array<bool, 13>();
    let var_0 = -(i32(-1i) * -40572i);
    global1 = _wgslsmith_div_f32(538f, 434f);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 113f, true)) * 315f))), Struct_1(_wgslsmith_f_op_f32(floor(-519f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-194f, -258f, -623f, -212f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-978f, -1789f, -214f, 1159f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1014f, -650f, 1389f, -540f) * vec4<f32>(1100f, 1032f, -516f, -1257f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(735f, -364f, 519f, 277f) + vec4<f32>(-1989f, 1583f, 444f, -262f))))));
    global0 = array<bool, 13>();
    return var_1.c.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - arg_1.d.c.x));
    var var_0 = ~(-8584i);
    global1 = -1000f;
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.c.x - arg_1.d.b.a) - arg_1.c.x)) == arg_1.d.c.x, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(18628u, 20879u, 1u, 24966u), ~vec4<u32>(47316u, 32786u, 1u, 1750u)) > 7889u);
    let var_2 = Struct_4(arg_1.d, _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(0u, 1u)), ~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), firstTrailingBit(22915i), _wgslsmith_f_op_vec2_f32(-arg_1.c.xy));
    return vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.b.x, var_2.b.x), 13u)], all(vec3<bool>(true, any(vec4<bool>(false, false, false, arg_1.a.x)), !(!arg_0.x))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(func_2());
    let var_2 = vec4<u32>(81228u, 10345u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u << (0u % 32u), 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~firstLeadingBit(vec2<u32>(7386u, 0u)))), ~(~_wgslsmith_div_u32(abs(16794u), _wgslsmith_mod_u32(4294967295u, 14957u))));
    let var_3 = Struct_3(select(vec2<bool>(global0[_wgslsmith_index_u32(~var_2.x, 13u)], true), func_3(select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 13u)], global0[_wgslsmith_index_u32(var_2.x, 13u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(26084u, 13u)], true), vec3<bool>(global0[_wgslsmith_index_u32(12565u, 13u)], global0[_wgslsmith_index_u32(37289u, 13u)], true), false), global0[_wgslsmith_index_u32(var_2.x, 13u)] == true), Struct_3(vec2<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 13u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(8825u, 13u)], false, global0[_wgslsmith_index_u32(var_2.x, 13u)], global0[_wgslsmith_index_u32(var_2.x, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_2.x, 13u)], true, false, global0[_wgslsmith_index_u32(1u, 13u)]), global0[_wgslsmith_index_u32(32463u, 13u)]), _wgslsmith_f_op_vec3_f32(arg_0.b.wzy - arg_0.b.zyz), Struct_2(1000f, Struct_1(arg_0.b.x, vec4<f32>(1181f, arg_0.b.x, -604f, arg_0.a)), vec4<f32>(var_1, arg_0.a, arg_0.b.x, var_1)))), !select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 13u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(30082u, 13u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 13u)])), vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 13u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(var_2.x, 13u)]))), vec4<bool>(true, global0[_wgslsmith_index_u32(29354u, 13u)], !any(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], true, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~var_2, firstTrailingBit(vec4<u32>(var_2.x, 109589u, var_2.x, 0u))), 13u)]), arg_0.b.zyw, Struct_2(-932f, arg_0, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_0.b * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, -1347f, var_1, var_1))))))));
    global1 = 1678f;
    return var_3.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(select(u_input.a.zzy ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 1i, -4331i) & vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), select(u_input.a.xxy, u_input.a.zyz, vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]))), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(24416i, -16971i), 29490i), ~vec3<i32>(-45599i, -38534i, -1i)), !(!select(vec3<bool>(global0[_wgslsmith_index_u32(57210u, 13u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(22366u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(31754u, 13u)], true)))), u_input.a.xyy);
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-1966f + -1530f), func_1(Struct_1(-1939f, vec4<f32>(-410f, -1088f, 326f, -1478f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1119f, _wgslsmith_div_f32(-454f, 1366f), _wgslsmith_f_op_f32(593f * 1229f), _wgslsmith_f_op_f32(trunc(-564f))))), select(vec2<u32>(~_wgslsmith_add_u32(26257u, 1u), ~abs(1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(11268u, 95219u), select(vec2<u32>(0u, 58228u), vec2<u32>(0u, 24899u), global0[_wgslsmith_index_u32(1u, 13u)])) << (reverseBits(vec2<u32>(0u, 5514u)) % vec2<u32>(32u)), select(select(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(27005u, 13u)], global0[_wgslsmith_index_u32(23234u, 13u)]), false), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(21733u, 13u)]), global0[_wgslsmith_index_u32(~15841u, 13u)]), func_3(vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], true, true), Struct_3(vec2<bool>(true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(19455u, 13u)], global0[_wgslsmith_index_u32(94676u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), vec3<f32>(374f, -192f, 285f), Struct_2(-451f, Struct_1(1000f, vec4<f32>(-319f, 1465f, -983f, 698f)), vec4<f32>(-1181f, 1449f, 2434f, -1366f)))), !func_3(vec3<bool>(true, global0[_wgslsmith_index_u32(12761u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(70032u, 13u)], false), vec4<bool>(true, false, true, false), vec3<f32>(1119f, 1469f, -1095f), Struct_2(1331f, Struct_1(649f, vec4<f32>(1000f, -1107f, 1740f, 1515f)), vec4<f32>(2301f, 157f, 1000f, -2057f)))).x)), -4256i, vec2<f32>(-892f, 674f));
    let var_2 = var_1;
    global0 = array<bool, 13>();
    let var_3 = select(!select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_2.b.x, 13u)], false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(8371u, 13u)])), select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 13u)], true, global0[_wgslsmith_index_u32(var_1.b.x, 13u)], global0[_wgslsmith_index_u32(5042u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 13u)], global0[_wgslsmith_index_u32(var_2.b.x, 13u)], global0[_wgslsmith_index_u32(38274u, 13u)], true), global0[_wgslsmith_index_u32(var_2.b.x, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(57363u, 13u)], true, false, global0[_wgslsmith_index_u32(var_2.b.x, 13u)]), !vec4<bool>(global0[_wgslsmith_index_u32(27172u, 13u)], false, global0[_wgslsmith_index_u32(var_2.b.x, 13u)], global0[_wgslsmith_index_u32(23151u, 13u)])), vec4<bool>(true, true, all(vec2<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 13u)], global0[_wgslsmith_index_u32(var_1.b.x, 13u)])), global0[_wgslsmith_index_u32(1u, 13u)])), select(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(var_1.b.x, 13u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 13u)], global0[_wgslsmith_index_u32(var_1.b.x, 13u)], global0[_wgslsmith_index_u32(var_1.b.x, 13u)], global0[_wgslsmith_index_u32(var_2.b.x, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(var_1.b.x, 13u)], global0[_wgslsmith_index_u32(var_1.b.x, 13u)], false)), vec4<bool>(true, global0[_wgslsmith_index_u32(var_2.b.x, 13u)], false, global0[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(9796u, 13u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], true, global0[_wgslsmith_index_u32(var_2.b.x, 13u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 13u)], false, false, true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 13u)], true, true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_1.b.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(8674u, 13u)], false))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.b, var_2.b, var_1.b), ~vec2<u32>(12744u, 74794u)), 13u)]), vec4<bool>(select(!global0[_wgslsmith_index_u32(var_2.b.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)] && global0[_wgslsmith_index_u32(var_2.b.x, 13u)], true), true, global0[_wgslsmith_index_u32(~23070u << (~4294967295u % 32u), 13u)], !(!global0[_wgslsmith_index_u32(0u, 13u)])), vec4<bool>(global0[_wgslsmith_index_u32(max(var_2.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 11932u, 93056u, var_1.b.x), vec4<u32>(var_2.b.x, 35458u, 1u, var_2.b.x))), 13u)], true, !global0[_wgslsmith_index_u32(24129u, 13u)], any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.b.x, 13u)], false, global0[_wgslsmith_index_u32(var_1.b.x, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 13u)], global0[_wgslsmith_index_u32(var_2.b.x, 13u)], global0[_wgslsmith_index_u32(var_2.b.x, 13u)], global0[_wgslsmith_index_u32(var_1.b.x, 13u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 13u)], true, global0[_wgslsmith_index_u32(var_1.b.x, 13u)]))))), vec4<bool>(_wgslsmith_f_op_f32(sign(var_1.d.x)) >= 239f, false, global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(56538u, ~0u)), 13u)], true || global0[_wgslsmith_index_u32(var_2.b.x, 13u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~u_input.a, u_input.a), var_1.b.x, var_1.c, u_input.a.zx, _wgslsmith_f_op_vec4_f32(abs(var_1.a.c)));
}

