struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(12921i, 4294967295u, vec2<u32>(1u, 11491u), 52240i), Struct_1(2147483647i, 7100u, vec2<u32>(43375u, 4294967295u), 12774i), Struct_1(i32(-2147483648), 17210u, vec2<u32>(1u, 11968u), -1i), Struct_1(30989i, 0u, vec2<u32>(4294967295u, 96354u), -10504i), Struct_1(-52112i, 0u, vec2<u32>(1u, 4294967295u), -26878i), Struct_1(-33493i, 77157u, vec2<u32>(61884u, 4294967295u), 0i), Struct_1(2147483647i, 21467u, vec2<u32>(55569u, 4294967295u), 2147483647i), Struct_1(16670i, 1u, vec2<u32>(1u, 33823u), i32(-2147483648)), Struct_1(15306i, 1u, vec2<u32>(1u, 0u), 2147483647i), Struct_1(0i, 9132u, vec2<u32>(1522u, 1u), -14176i), Struct_1(33518i, 1u, vec2<u32>(4294967295u, 4294967295u), -35030i), Struct_1(i32(-2147483648), 39802u, vec2<u32>(0u, 4294967295u), 0i), Struct_1(-1i, 53539u, vec2<u32>(10223u, 0u), -19373i), Struct_1(45712i, 62942u, vec2<u32>(0u, 48417u), -17150i), Struct_1(15968i, 16025u, vec2<u32>(35710u, 70705u), 0i), Struct_1(i32(-2147483648), 57823u, vec2<u32>(56407u, 33095u), -47951i), Struct_1(1i, 1u, vec2<u32>(4294967295u, 70387u), -1i));

var<private> global2: Struct_3 = Struct_3(vec2<f32>(-1000f, 1910f), vec3<u32>(0u, 41713u, 76986u), vec3<bool>(false, false, true), vec4<i32>(-1i, 2147483647i, 2147483647i, -26618i), -34234i);

var<private> global3: array<bool, 21>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_mult_u32(7167u, global2.b.x);
    var var_1 = vec2<u32>((u_input.a.x ^ ((u_input.a.x >> (u_input.a.x % 32u)) << (~85631u % 32u))) & _wgslsmith_add_u32(19451u, select(_wgslsmith_div_u32(39981u, global0.b.x), 38111u, true)), reverseBits(0u));
    global2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global2.a, global2.a))), vec3<u32>(4078u, firstLeadingBit(1u), countOneBits(_wgslsmith_mod_u32(39778u, 16232u))), !vec3<bool>(!all(vec3<bool>(true, true, global2.c.x)), !(-575f < global2.a.x), any(global0.c.xy)), global2.d, global2.e);
    global2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - global2.a)) - vec2<f32>(_wgslsmith_f_op_f32(-235f * global2.a.x), _wgslsmith_f_op_f32(min(755f, 681f)))), global2.a), global0.b, select(!select(global0.c, !global2.c, any(vec3<bool>(false, global2.c.x, true))), global2.c, vec3<bool>(true, global0.c.x, !all(global2.c))), global0.d, 8969i);
    global2 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global0.a.x, global0.a.x), -1725f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a)), !select(select(global2.c.xz, vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), global2.c.xy))), firstTrailingBit((vec3<u32>(global2.b.x, 0u, u_input.a.x) | vec3<u32>(1u, global2.b.x, 6433u)) << (~(~global0.b) % vec3<u32>(32u))), !vec3<bool>(!global3[_wgslsmith_index_u32(37397u, 21u)], false && any(vec2<bool>(false, global2.c.x)), global2.c.x), select(abs(~global0.d << (vec4<u32>(var_1.x, u_input.a.x, 54630u, var_1.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(global2.d, global2.d), vec4<bool>(select(all(vec4<bool>(false, false, global0.c.x, global2.c.x)), true, true), !any(vec4<bool>(false, true, global3[_wgslsmith_index_u32(global2.b.x, 21u)], true)), false, all(vec3<bool>(global2.c.x, global0.c.x, global0.c.x)) && global2.c.x)), 23457i);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(global2.a)), _wgslsmith_f_op_vec2_f32(global0.a + _wgslsmith_f_op_vec2_f32(-global2.a)), !global2.c.x)) + global2.a);
}

fn func_2() -> Struct_2 {
    let var_0 = firstLeadingBit(60300i);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(func_3()), u_input.a.wyw, vec3<bool>(false, global2.c.x, any(select(vec4<bool>(false, global0.c.x, false, global0.c.x), select(vec4<bool>(false, true, true, true), vec4<bool>(global2.c.x, true, true, true), true), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], false, global0.c.x, false)))), vec4<i32>(abs(select(firstLeadingBit(global2.d.x), global0.e, global2.c.x)), abs(_wgslsmith_add_i32(1i, max(global0.e, var_0))), firstTrailingBit(global2.d.x ^ var_0), -39969i >> (_wgslsmith_dot_vec3_u32(countOneBits(global0.b), vec3<u32>(0u, global2.b.x, 1u) | global0.b) % 32u)), 58582i);
    var var_2 = _wgslsmith_div_i32(-var_1.e, 0i);
    var var_3 = select(_wgslsmith_clamp_vec4_i32(-max(_wgslsmith_div_vec4_i32(vec4<i32>(0i, global2.d.x, 0i, -56136i), vec4<i32>(1i, global2.d.x, global0.e, 19143i)), vec4<i32>(var_1.e, 2147483647i, 0i, var_1.d.x)), global0.d, ~_wgslsmith_clamp_vec4_i32(-var_1.d, ~vec4<i32>(-1i, var_1.e, global0.d.x, -22999i), max(global2.d, vec4<i32>(var_0, 2147483647i, -12168i, -2075i)))), vec4<i32>(~_wgslsmith_add_i32(-2147483647i, var_0), -1i, global2.e, _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_add_i32(-2147483647i, 1i)), -4615i, 4737i)), any(!vec4<bool>(false, global0.c.x, all(vec4<bool>(global0.c.x, global2.c.x, global2.c.x, global2.c.x)), true)));
    var var_4 = ~u_input.a.x;
    return Struct_2(global0.a.x);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = func_2();
    let var_1 = firstTrailingBit(vec3<u32>(global2.b.x, 4294967295u, 1u));
    var var_2 = func_2();
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2251f, global2.a.x, global2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -1099f)))), vec3<u32>(abs(u_input.a.x ^ 0u) | ~_wgslsmith_mult_u32(20977u, 35372u), countOneBits(u_input.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global2.b.x, arg_1.x, global0.b.x, 16683u), vec4<u32>(0u, global2.b.x, global0.b.x, arg_1.x), vec4<bool>(false, global0.c.x, global2.c.x, true)), u_input.a), _wgslsmith_mod_u32(5227u, global2.b.x))), !vec3<bool>(!(global3[_wgslsmith_index_u32(global0.b.x, 21u)] && global2.c.x), false, global0.c.x), ~_wgslsmith_clamp_vec4_i32(abs(global0.d ^ vec4<i32>(2147483647i, global0.e, global2.e, global2.e)), abs(select(vec4<i32>(43476i, 1i, global2.e, global0.e), global0.d, global3[_wgslsmith_index_u32(17346u, 21u)])), select(_wgslsmith_clamp_vec4_i32(global2.d, vec4<i32>(-8893i, global2.d.x, -33051i, -1i), global0.d), firstLeadingBit(vec4<i32>(-2147483647i, global2.e, 2147483647i, -6096i)), !global0.c.x)), global0.e);
    var var_3 = global0.a.x;
    return global2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~global0.e, global2.d.x);
    var var_1 = _wgslsmith_sub_vec2_u32(u_input.a.zw | u_input.a.xx, min(abs(vec2<u32>(~1u, _wgslsmith_add_u32(u_input.a.x, 11676u))), global2.b.yy));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(486f, -139f)))), ~vec3<u32>(global0.b.x, 30838u >> (~global0.b.x % 32u), 1u), vec3<bool>(select(global2.a.x > _wgslsmith_f_op_f32(-271f - global0.a.x), global3[_wgslsmith_index_u32(global0.b.x, 21u)], true), any(global2.c), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 0u << (var_1.x % 32u)), 21u)]), global2.d, global2.e);
    var_1 = vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(global0.b.x), ~(~global2.b.x), 19968u), min(min(global0.b.x, ~1u), func_1(356f, u_input.a.xxy, Struct_2(_wgslsmith_f_op_f32(-var_2.a.x)))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -251f), 918f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.x, global0.a.x)) - _wgslsmith_f_op_f32(abs(var_2.a.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a.x, global0.a.x, global2.a.x, global0.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.d, firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(40382u, 78717u, 11388u, var_1.x), u_input.a) & _wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, 50002u, global2.b.x, 29579u), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.x, 4296u, var_1.x, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, var_1.x)))), -_wgslsmith_clamp_vec4_i32(select(vec4<i32>(global2.e, 11893i, -35364i, -1i), abs(var_2.d), !vec4<bool>(true, global0.c.x, false, true)), global2.d, var_2.d), reverseBits(firstLeadingBit(~global2.b.x) << (var_2.b.x % 32u)), _wgslsmith_div_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.x, global0.d.x), vec2<i32>(-31636i, var_0.x), vec2<i32>(41471i, 0i)), -select(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.d.x, 2147483647i), var_2.d.zy), -global0.d.xx, true)));
}

