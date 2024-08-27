struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1088f;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<f32>(-1029f, -174f, -1000f), true, vec2<u32>(1u, 0u)), Struct_1(vec3<f32>(848f, -1000f, 255f), true, vec2<u32>(39922u, 31577u)), Struct_1(vec3<f32>(1079f, -377f, 414f), true, vec2<u32>(72710u, 44118u)), Struct_1(vec3<f32>(1344f, -746f, 2405f), false, vec2<u32>(47339u, 0u)), Struct_1(vec3<f32>(873f, -211f, 206f), false, vec2<u32>(39303u, 80091u)), Struct_1(vec3<f32>(-388f, 761f, 454f), true, vec2<u32>(4294967295u, 0u)), Struct_1(vec3<f32>(213f, 1963f, 635f), false, vec2<u32>(50425u, 56612u)), Struct_1(vec3<f32>(1804f, 1215f, 1534f), true, vec2<u32>(1u, 16095u)), Struct_1(vec3<f32>(1787f, -1000f, -1233f), true, vec2<u32>(0u, 1u)), Struct_1(vec3<f32>(-1042f, -1114f, 543f), false, vec2<u32>(40961u, 4813u)), Struct_1(vec3<f32>(-2399f, -1054f, 594f), false, vec2<u32>(1u, 13658u)), Struct_1(vec3<f32>(-547f, -751f, 539f), true, vec2<u32>(58263u, 42368u)), Struct_1(vec3<f32>(151f, 1000f, 1000f), true, vec2<u32>(0u, 29556u)), Struct_1(vec3<f32>(-609f, -775f, -161f), false, vec2<u32>(0u, 1u)), Struct_1(vec3<f32>(-1456f, -1000f, -101f), true, vec2<u32>(41426u, 49225u)), Struct_1(vec3<f32>(2062f, -542f, 619f), false, vec2<u32>(0u, 1u)), Struct_1(vec3<f32>(-1650f, -533f, -156f), false, vec2<u32>(35834u, 0u)), Struct_1(vec3<f32>(1000f, -718f, 426f), true, vec2<u32>(61007u, 71860u)), Struct_1(vec3<f32>(-421f, 811f, 338f), false, vec2<u32>(26849u, 69045u)), Struct_1(vec3<f32>(-489f, -416f, 237f), true, vec2<u32>(0u, 22989u)), Struct_1(vec3<f32>(-604f, 2102f, 925f), true, vec2<u32>(0u, 49944u)), Struct_1(vec3<f32>(731f, 1248f, -323f), false, vec2<u32>(1u, 35678u)), Struct_1(vec3<f32>(1225f, 1000f, -678f), true, vec2<u32>(11346u, 115380u)), Struct_1(vec3<f32>(1593f, -611f, 1650f), false, vec2<u32>(1u, 1u)), Struct_1(vec3<f32>(-626f, -502f, -1087f), true, vec2<u32>(0u, 0u)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = arg_1.c.a.x;
    var var_1 = 20006i;
    let var_2 = arg_1.c;
    let var_3 = true;
    return ~vec2<u32>(50503u, abs(1u));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<i32>) -> vec4<bool> {
    global2 = array<Struct_1, 25>();
    var var_0 = Struct_2(_wgslsmith_sub_u32(~42810u, countOneBits(1u)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + global1.a.x)) >= global1.a.x, Struct_2(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 58295u), global1.c), global1.c, global2[_wgslsmith_index_u32(firstTrailingBit(~0u), 25u)], vec2<u32>(arg_1, _wgslsmith_mult_u32(global1.c.x, global1.c.x)), arg_3.xz)), global2[_wgslsmith_index_u32(~firstTrailingBit(min(_wgslsmith_div_u32(arg_1, global1.c.x), global1.c.x)), 25u)], _wgslsmith_mult_vec2_u32(firstLeadingBit(global1.c) >> (global1.c % vec2<u32>(32u)), abs(vec2<u32>(global1.c.x, _wgslsmith_add_u32(0u, global1.c.x)))), arg_2.zz);
    let var_1 = _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(var_0.a, arg_0, 77361u, 4294967295u)), ~vec4<u32>(global1.c.x, 0u, arg_1, arg_0)), vec4<u32>(global1.c.x, 1u, 1u, _wgslsmith_add_u32(select(4294967295u, 54240u, var_0.c.b), var_0.c.c.x) >> (global1.c.x % 32u)));
    global2 = array<Struct_1, 25>();
    let var_2 = abs(var_1.zy) >> (var_1.wz % vec2<u32>(32u));
    return select(vec4<bool>(true, true, true, all(vec3<bool>(true, global1.b, true))), vec4<bool>(true, !(firstLeadingBit(arg_3.x) >= firstLeadingBit(arg_3.x)), true, global1.b), vec4<bool>(global1.b, var_0.c.b, false, -_wgslsmith_mod_i32(-60994i, arg_3.x) > _wgslsmith_dot_vec4_i32(~arg_3, _wgslsmith_div_vec4_i32(arg_3, vec4<i32>(-37646i, arg_2.x, var_0.e.x, arg_2.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -922f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(431f)) + _wgslsmith_f_op_f32(f32(-1f) * -761f)))), arg_1.x, global1.c);
    let var_1 = true;
    let var_2 = countOneBits(~(~(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0.c.x), vec2<u32>(1u, 52348u)) << (~arg_0.c % vec2<u32>(32u)))));
    let var_3 = vec4<bool>(any(select(vec2<bool>(true, var_1), arg_1.wy, arg_1.xw)), true, arg_0.b, true);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(var_0.a)))))), !var_3.x && (!(u_input.b > u_input.b) && false), _wgslsmith_mod_vec2_u32(~reverseBits(vec2<u32>(var_2.x, var_0.c.x)), ~(~var_0.c)));
    return global2[_wgslsmith_index_u32(var_4.c.x, 25u)];
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = func_4(global2[_wgslsmith_index_u32(global1.c.x, 25u)], vec4<bool>(global1.b, any(func_2(arg_2.x >> (4294967295u % 32u), ~1u, u_input.a, ~vec4<i32>(-59848i, -1i, 1i, u_input.b))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)) == _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_dot_vec3_u32(arg_2, _wgslsmith_mod_vec3_u32(~arg_2, vec3<u32>(arg_2.x, _wgslsmith_div_u32(arg_2.x, global1.c.x), arg_2.x))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1304f)) + arg_0)));
    let var_1 = arg_2;
    let var_2 = countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~reverseBits(var_1.x), var_1.x, ~45151u, _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2.x, var_0.c.x), 22191u)), abs(countOneBits(~vec4<u32>(arg_2.x, var_1.x, var_0.c.x, 1u)))));
    global1 = global2[_wgslsmith_index_u32(var_0.c.x, 25u)];
    return Struct_2(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(6908u, var_2) | vec2<u32>(18086u, global1.c.x)), _wgslsmith_add_vec2_u32(func_4(Struct_1(vec3<f32>(-252f, var_0.a.x, 138f), true, var_0.c), select(vec4<bool>(false, global1.b, false, global1.b), vec4<bool>(var_0.b, global1.b, true, var_0.b), vec4<bool>(true, false, global1.b, global1.b)), 124233u).c, _wgslsmith_div_vec2_u32(~vec2<u32>(var_0.c.x, 35397u), vec2<u32>(var_0.c.x, 4294967295u)))), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.x, 121489u), var_0.c), vec2<u32>(min(3242u, 1u), 1u)), ~min(countOneBits(global1.c), vec2<u32>(1u, global1.c.x))), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(global1.a.x, arg_1.x, var_0.a.x), global1.b))), true, min(var_1.zx, var_0.c << (vec2<u32>(1u, var_2) % vec2<u32>(32u)))), select(!select(vec4<bool>(false, false, global1.b, var_0.b), vec4<bool>(var_0.b, false, true, global1.b), var_0.b), !vec4<bool>(true, false, false, var_0.b), func_2(_wgslsmith_mod_u32(var_0.c.x, 0u), reverseBits(global1.c.x), ~u_input.a, firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, 2147483647i, u_input.b)))), ~29776u), vec2<u32>(4294967295u, 1u), vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(abs(u_input.a.yz), select(vec2<i32>(u_input.b, 97794i), vec2<i32>(u_input.a.x, 13827i), false), u_input.a.zz));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    var var_0 = ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(-40160i, 3115i, arg_0.e.x), 0i), firstTrailingBit(vec3<i32>(u_input.b, -1i, u_input.b))));
    var var_1 = 0i;
    global2 = array<Struct_1, 25>();
    var var_2 = func_1(-297f, global1.a, firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(arg_0.b.x, arg_0.b.x, global1.c.x), vec3<u32>(0u, 387u, arg_0.b.x)), ~vec3<u32>(1u, arg_0.b.x, arg_0.a), _wgslsmith_add_vec3_u32(vec3<u32>(global1.c.x, arg_0.b.x, global1.c.x), vec3<u32>(global1.c.x, 4294967295u, arg_0.b.x))))));
    var var_3 = !(!(!any(vec2<bool>(true, true))));
    return 51552u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.x;
    let var_1 = global1.c.x;
    var var_2 = Struct_2(_wgslsmith_clamp_u32(func_5(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1328f), global1.a, ~vec3<u32>(86072u, 1u, 4294967295u)), -u_input.a.yy), global1.c.x, global1.c.x), global1.c, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(147f * -163f), global1.a.x)), global1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a.x + 1072f)))), false, ~(firstTrailingBit(global1.c) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.c.x, 4294967295u), global1.c, vec2<u32>(25794u, 57326u)) % vec2<u32>(32u)))), func_3(global1.b, Struct_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(81609u, 40703u, 1u, 46033u), vec4<u32>(global1.c.x, global1.c.x, 14915u, global1.c.x)), ~countOneBits(global1.c), global2[_wgslsmith_index_u32(global1.c.x, 25u)], vec2<u32>(4294967295u, ~1u), min(vec2<i32>(u_input.b, u_input.b), u_input.a.yy >> (global1.c % vec2<u32>(32u))))), select(vec2<i32>(abs(i32(-1i) * -1i), -u_input.b & ~u_input.b), _wgslsmith_add_vec2_i32(~select(vec2<i32>(u_input.b, u_input.a.x), vec2<i32>(0i, 1i), vec2<bool>(global1.b, false)), u_input.a.zx), func_1(1f, global1.a, vec3<u32>(_wgslsmith_dot_vec2_u32(global1.c, global1.c), global1.c.x ^ global1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, 4294967295u, 4601u, global1.c.x), vec4<u32>(115744u, global1.c.x, global1.c.x, global1.c.x)))).c.b));
    var_2 = func_1(_wgslsmith_f_op_f32(-func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a), func_1(1842f, vec3<f32>(global1.a.x, -1197f, global1.a.x), vec3<u32>(var_2.c.c.x, 7131u, global1.c.x)).c.b, vec2<u32>(var_2.b.x, 14448u) << (var_2.c.c % vec2<u32>(32u))), func_2(1u, ~global1.c.x, vec3<i32>(-1i, -2147483647i, u_input.a.x) | u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(-61574i, u_input.b, var_2.e.x, u_input.a.x), vec4<i32>(4686i, -24413i, var_2.e.x, 1i))), _wgslsmith_dot_vec2_u32(func_3(global1.b, Struct_2(0u, var_2.c.c, global2[_wgslsmith_index_u32(global1.c.x, 25u)], var_2.b, var_2.e)), var_2.d)).a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-329f, global1.a.x, var_2.c.a.x) - vec3<f32>(-264f, var_2.c.a.x, var_2.c.a.x)))))), var_2.c.a, vec3<bool>(func_4(var_2.c, !vec4<bool>(var_2.c.b, global1.b, true, true), _wgslsmith_mult_u32(global1.c.x, var_2.a)).b, (global1.b || global1.b) || (var_2.c.b & global1.b), !var_2.c.b))), countOneBits(select(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_2.d.x, var_2.c.c.x), vec3<u32>(global1.c.x, 1u, var_2.a), vec3<u32>(global1.c.x, 1u, 1586u)), vec3<u32>(68204u, global1.c.x, 4294967295u)), abs(vec3<u32>(global1.c.x, 14627u, var_2.a)) & ~vec3<u32>(var_2.d.x, 0u, 36802u), select(vec3<bool>(var_2.c.b, global1.b, var_2.c.b), vec3<bool>(true, true, true), false || global1.b))));
    var var_3 = Struct_2(_wgslsmith_sub_u32(var_2.c.c.x, reverseBits(var_2.c.c.x)), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 6811u, 4294967295u), vec3<u32>(global1.c.x, 4294967295u, 1u)) >> (~0u % 32u), abs(~1u)), Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a), var_2.c.b, vec2<u32>(~_wgslsmith_clamp_u32(var_2.a, var_2.b.x, global1.c.x), var_2.b.x)), global1.c, firstTrailingBit(_wgslsmith_clamp_vec2_i32(-(vec2<i32>(var_2.e.x, 12618i) << (var_2.b % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.e.x, var_2.e.x), var_2.e), ~vec2<i32>(1i, 8269i) ^ firstTrailingBit(u_input.a.zz))));
    var_3 = Struct_2(global1.c.x, func_4(var_3.c, select(select(select(vec4<bool>(false, global1.b, false, true), vec4<bool>(var_3.c.b, true, true, false), vec4<bool>(global1.b, true, var_3.c.b, global1.b)), select(vec4<bool>(true, true, var_2.c.b, var_2.c.b), vec4<bool>(true, global1.b, true, true), vec4<bool>(var_3.c.b, false, global1.b, var_3.c.b)), var_3.c.c.x == var_3.c.c.x), !func_2(1u, 0u, vec3<i32>(var_2.e.x, 25548i, 21699i), vec4<i32>(-27737i, 1i, 1i, var_3.e.x)), select(!vec4<bool>(false, var_3.c.b, false, var_3.c.b), vec4<bool>(var_2.c.b, false, global1.b, true), select(vec4<bool>(global1.b, true, true, false), vec4<bool>(true, var_3.c.b, false, var_2.c.b), vec4<bool>(true, var_3.c.b, var_2.c.b, var_3.c.b)))), var_3.a).c, var_2.c, var_3.c.c, var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1374f)), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, u_input.a.x, -2147483647i), min(u_input.a, vec3<i32>(-2147483647i, 2147483647i, -36335i))), -u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(47820i, 2147483647i), ~var_2.e), -_wgslsmith_div_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, -16945i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(var_2.c.a.xy)))))), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(func_3(false, Struct_2(var_3.a, vec2<u32>(1u, 1u), Struct_1(vec3<f32>(var_2.c.a.x, 127f, global1.a.x), true, global1.c), var_2.d, vec2<i32>(-9903i, var_2.e.x))), vec2<u32>(~1927u, global1.c.x), ~(vec2<u32>(22929u, var_3.a) & var_2.d)), vec2<u32>(abs(17889u), _wgslsmith_mult_u32(global1.c.x, ~var_3.a))));
}

