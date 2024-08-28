struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_4;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: u32) -> vec4<bool> {
    global1 = Struct_1(vec4<f32>(-128f, 1f, _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-486f, global1.a.x))), arg_0.c)), ~_wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(773u, arg_0.d.x, 30381u, 1u)), firstTrailingBit(vec4<u32>(0u, 79722u, 16113u, 1u))), -1773f, !all(!vec4<bool>(arg_1, global0.b, global1.d, false)));
    var var_0 = ~abs(abs(firstLeadingBit(-vec4<i32>(u_input.a, 0i, 11341i, -1310i))));
    return !select(!select(select(vec4<bool>(global0.b, false, arg_0.b, true), vec4<bool>(false, arg_1, global0.b, global0.b), arg_1), select(vec4<bool>(arg_1, arg_0.b, true, false), vec4<bool>(true, false, global0.b, global0.b), true), !vec4<bool>(false, global0.b, global0.b, false)), select(vec4<bool>(true || global1.d, global1.d, global1.d, !global1.d), select(vec4<bool>(false, global0.b, global0.b, arg_0.b), vec4<bool>(false, arg_1, true, false), true), !select(vec4<bool>(true, global1.d, true, global1.d), vec4<bool>(arg_1, true, false, false), arg_0.b)), select(!vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(var_0.x <= 13935i, !global1.d, global1.d, all(vec2<bool>(global1.d, true))), true));
}

fn func_2(arg_0: Struct_5, arg_1: vec3<u32>) -> bool {
    let var_0 = Struct_2(global0.b, 0u, vec4<bool>(true, true, _wgslsmith_div_f32(global0.c, global1.c) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1521f) * -399f), any(select(select(vec4<bool>(false, global1.d, false, global1.d), vec4<bool>(global0.b, false, global1.d, false), vec4<bool>(true, global0.b, global0.b, global0.b)), select(vec4<bool>(global1.d, global0.b, false, global1.d), vec4<bool>(true, global0.b, global1.d, false), global0.b), global0.b))), -countOneBits(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(arg_0.b.x, arg_0.b.x, u_input.a), vec3<bool>(global1.d, global1.d, global1.d)) | (vec3<i32>(u_input.a, 0i, 43938i) >> (global0.a.zww % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(global1.a, vec4<f32>(672f, 355f, 659f, 450f))), _wgslsmith_f_op_vec4_f32(global1.a + vec4<f32>(-1000f, global1.a.x, -1031f, global0.c)), func_3(Struct_4(vec4<u32>(global0.e, arg_1.x, 38827u, arg_1.x), true, global1.a.x, global0.d, global0.d.x), global1.d, global1.b.x)))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(global0.e, 1u, global0.d.x, global0.d.x), global0.a), global1.b & vec4<u32>(global1.b.x, global0.a.x, 1u, global0.d.x)), vec4<u32>(_wgslsmith_div_u32(global0.a.x, 1u), select(89790u, 47170u, true), 35791u, _wgslsmith_clamp_u32(0u, global1.b.x, 32125u))), global1.c, !global0.b));
    var var_1 = reverseBits(~var_0.d.x);
    global1 = var_0.e;
    let var_2 = global1.d;
    global0 = Struct_4(firstTrailingBit(select(abs(firstTrailingBit(global1.b)), ~vec4<u32>(34143u, global0.a.x, var_0.e.b.x, 4294967295u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.b, global0.a.x, 1u), var_0.e.b, vec4<u32>(var_0.b, arg_1.x, global0.d.x, 0u)) % vec4<u32>(32u)), vec4<bool>(false, true, var_0.e.d, 16214u == var_0.b))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c)))))), _wgslsmith_sub_vec3_u32(arg_1, ~vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.yz, arg_1.zz), ~0u, 0u)), ~1u);
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec2<u32>) -> u32 {
    global0 = Struct_4(~(~vec4<u32>(1u, select(global0.e, 1u, true), ~global1.b.x, global1.b.x)), any(vec3<bool>(global1.d, true, true)), -224f, countOneBits(vec3<u32>(~(~arg_2.x), 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(66295u, global0.a.x, 22184u, 4294967295u), vec4<u32>(0u, 0u, 59357u, 11313u)), firstLeadingBit(39703u), global0.a.x))), 74638u);
    let var_0 = 29196i == (i32(-1i) * -u_input.a);
    var var_1 = -1i;
    let var_2 = func_3(Struct_4(max(vec4<u32>(arg_2.x, 0u, global0.a.x, 1u) >> (global0.a % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(max(vec4<u32>(4294967295u, 1906u, arg_2.x, 27382u), vec4<u32>(0u, arg_2.x, 39432u, global1.b.x)), global1.b >> (global1.b % vec4<u32>(32u)))), any(vec2<bool>(arg_0.x, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1030f + arg_1.x))))), global0.d, _wgslsmith_add_u32(104174u, 1u)), any(arg_0.wyw), 4294967295u | firstLeadingBit(~_wgslsmith_div_u32(global0.a.x, global0.a.x))).zx;
    let var_3 = ~(-vec3<i32>(_wgslsmith_add_i32(u_input.a, -9228i), countOneBits(u_input.a), u_input.a));
    return 11207u;
}

fn func_1(arg_0: vec3<bool>) -> vec4<u32> {
    global0 = Struct_4(~vec4<u32>(_wgslsmith_div_u32(global0.e, ~global0.e), abs(_wgslsmith_div_u32(41662u, 11747u)), _wgslsmith_add_u32(global0.e, global1.b.x), ~_wgslsmith_add_u32(68616u, 38352u)), 662f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global0.c)))), _wgslsmith_f_op_f32(f32(-1f) * -825f), vec3<u32>(_wgslsmith_clamp_u32(88441u, 6026u, min(global1.b.x, global1.b.x) << (_wgslsmith_sub_u32(global0.a.x, 46603u) % 32u)), ~1u, 4294967295u), func_4(!vec4<bool>(func_2(Struct_5(-44222i, vec2<i32>(1i, 2147483647i)), vec3<u32>(global0.d.x, global1.b.x, 1u)), all(vec3<bool>(false, false, global0.b)), global0.b || true, !global1.d), global1.a.xyw, ~select(vec2<u32>(0u, global1.b.x), global0.a.zx << (global0.a.yx % vec2<u32>(32u)), !vec2<bool>(arg_0.x, true))));
    var var_0 = !((!arg_0.x && true) & !arg_0.x);
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(401f, _wgslsmith_f_op_f32(-866f + global1.a.x), all(select(vec4<bool>(global0.b, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, global0.b, global1.d, false))))), -443f, global0.c, _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))), vec4<u32>(_wgslsmith_dot_vec4_u32(~global1.b, vec4<u32>(45506u, global1.b.x, countOneBits(global0.a.x), ~global0.d.x)), 1u, 0u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, global1.c) + _wgslsmith_f_op_f32(global1.a.x + global1.a.x)) - 592f) * -1097f), arg_0.x);
    let var_1 = Struct_1(global1.a, ~(~vec4<u32>(global1.b.x, 70396u, global0.e | global1.b.x, reverseBits(global1.b.x))), global1.c, any(arg_0.yz));
    let var_2 = Struct_5(u_input.a, min(select(min(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-34146i, -1i)), vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, 35358u) % vec2<u32>(32u))), abs(countOneBits(vec2<i32>(-1i, 1i))), any(vec2<bool>(false, false))), vec2<i32>(~(-2147483647i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-5761i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, -12910i, 0i)))));
    return min(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(reverseBits(max(vec4<u32>(1u, 17148u, global0.e, global0.d.x), vec4<u32>(global0.a.x, 39136u, global1.b.x, 0u))), global1.b >> (global1.b % vec4<u32>(32u))), firstTrailingBit(1u), global0.a.x & global1.b.x), vec4<u32>(53874u, 0u, min(12865u, ~4294967295u), max(~_wgslsmith_mod_u32(global0.e, var_1.b.x), ~1u)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    global0 = Struct_4(select(min(max(vec4<u32>(0u, global1.b.x, 47624u, global1.b.x), vec4<u32>(arg_3.a.x, arg_3.e, 67669u, 4294967295u)), firstTrailingBit(_wgslsmith_clamp_vec4_u32(arg_2.b.e.b, global0.a, vec4<u32>(arg_3.a.x, global1.b.x, 45587u, 2603u)))), arg_1.a, false), func_3(Struct_4(_wgslsmith_mult_vec4_u32(global1.b, vec4<u32>(arg_3.d.x, 2406u, global0.e, 4209u) ^ vec4<u32>(1u, arg_3.d.x, global0.a.x, global0.a.x)), select(arg_1.b, arg_3.e < arg_3.e, true), -738f, ~func_1(vec3<bool>(true, global0.b, arg_3.b)).yzy, _wgslsmith_add_u32(arg_1.e & 66713u, _wgslsmith_add_u32(global0.e, arg_3.a.x))), any(arg_2.b.c.www), arg_3.e).x, _wgslsmith_f_op_f32(-348f - _wgslsmith_f_op_f32(floor(1000f))), global0.a.wzw, 39208u);
    var var_0 = u_input.a;
    global0 = Struct_4(_wgslsmith_add_vec4_u32(select(vec4<u32>(40585u, arg_2.d.x, 4294967295u, _wgslsmith_mult_u32(arg_1.d.x, global0.d.x)), global0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -38747i, arg_2.b.d.x, 5284i), vec4<i32>(-77997i, 2147483647i, -27137i, u_input.a)) <= min(17124i, u_input.a)), global1.b), false != (_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b.e.a.x - 276f), _wgslsmith_f_op_f32(min(arg_2.e.x, arg_3.c))) == -457f), arg_1.c, max(vec3<u32>(global0.a.x, global0.a.x, _wgslsmith_mult_u32(global1.b.x, arg_3.e)), vec3<u32>(51712u, 0u, _wgslsmith_mod_u32(49712u, global1.b.x))) >> (vec3<u32>(arg_1.a.x, _wgslsmith_dot_vec4_u32(arg_3.a, countOneBits(arg_3.a)), arg_3.d.x & arg_2.d.x) % vec3<u32>(32u)), arg_3.e);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(-904f)), -345f, _wgslsmith_f_op_f32(global0.c * -531f))));
    return arg_2.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~max(~66353u, _wgslsmith_div_u32(global1.b.x & global0.a.x, 0u)));
    let var_1 = firstLeadingBit(var_0);
    var var_2 = func_5(_wgslsmith_mod_vec3_i32(-(vec3<i32>(45092i, -35594i, u_input.a) & vec3<i32>(u_input.a, u_input.a, 12058i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-5321i, -10478i, -5074i))) >> ((global1.b.wxw << (~(global0.d >> (vec3<u32>(45026u, 0u, var_0) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_4(~func_1(select(vec3<bool>(false, global0.b, false), vec3<bool>(global1.d, true, global1.d), vec3<bool>(global0.b, false, global1.d))), true, -1097f, abs(abs(vec3<u32>(global0.d.x, var_1, 1u))), min(~var_1, _wgslsmith_dot_vec2_u32(~global1.b.yy, ~vec2<u32>(53699u, 0u)))), Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global1.a.x)), _wgslsmith_f_op_f32(trunc(global0.c)))))), Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a)) > 1i, _wgslsmith_dot_vec4_u32(abs(global0.a), vec4<u32>(1u, 0u, 4294967295u, 45174u)), select(select(vec4<bool>(true, global0.b, global0.b, false), vec4<bool>(global1.d, global1.d, false, true), vec4<bool>(global1.d, true, true, false)), func_3(Struct_4(global1.b, global0.b, -539f, vec3<u32>(28885u, global1.b.x, var_1), 0u), global0.b, 98621u), global0.b), vec3<i32>(-1i & u_input.a, u_input.a & 13114i, 0i), Struct_1(_wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(-567f, 1000f, -1286f, global1.c)), ~vec4<u32>(global0.d.x, global1.b.x, 9175u, var_0), -1000f, var_1 >= 51653u)), u_input.a, ~_wgslsmith_sub_vec2_u32(global0.a.zx, vec2<u32>(59579u, var_1)) >> (_wgslsmith_div_vec2_u32(~vec2<u32>(var_0, global0.e), _wgslsmith_mult_vec2_u32(global0.d.xx, global0.a.yx)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-global1.a.xww)), Struct_4(vec4<u32>(1u & func_1(vec3<bool>(global0.b, global0.b, true)).x, 1u, _wgslsmith_sub_u32(global0.d.x | 734u, 0u), func_1(vec3<bool>(true, true, true)).x), func_3(Struct_4(min(vec4<u32>(0u, 1u, 43206u, 93039u), vec4<u32>(76569u, 57576u, global0.e, global1.b.x)), global1.d || true, _wgslsmith_f_op_f32(max(global0.c, 395f)), global0.d >> (global1.b.xyx % vec3<u32>(32u)), select(global0.a.x, 2121u, global1.d)), 4294967295u < firstTrailingBit(21933u), ~var_1).x, _wgslsmith_f_op_f32(f32(-1f) * -732f), min(func_1(select(vec3<bool>(false, true, global0.b), vec3<bool>(global0.b, global1.d, global0.b), vec3<bool>(global1.d, true, false))).ywy, _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, var_1, var_1), global1.b.zzy) | ~global0.d), _wgslsmith_clamp_u32(4069u, ~(~14508u), 11901u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_2.a.xwz);
    global0 = Struct_4(vec4<u32>(firstTrailingBit(var_0), var_0, ~10938u, 4294967295u), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1813f)))), ~abs(~(~global0.d)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a, ~u_input.a, select(u_input.a > -1i, false, global1.d)));
}

