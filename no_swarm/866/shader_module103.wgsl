struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, false, true), i32(-2147483648), vec3<bool>(false, true, false), 4294967295u), vec3<bool>(false, false, true), vec3<i32>(-27328i, 0i, -12794i));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, false), 2147483647i, vec3<bool>(false, true, false), 4294967295u);

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> bool {
    global2 = arg_0;
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1054f - -1002f) - -772f) * _wgslsmith_f_op_f32(max(-865f, _wgslsmith_f_op_f32(ceil(-1019f)))))), false, arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(778f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2240f)), _wgslsmith_f_op_f32(-435f * _wgslsmith_f_op_f32(sign(-462f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(832f, -1495f, 661f, -117f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-131f, -398f, -114f, -1211f), vec4<f32>(1000f, 164f, 1524f, 1373f), true))))), arg_0.b.zy);
    let var_1 = global2.a;
    global2 = Struct_2(Struct_1(select(!vec3<bool>(true, true, var_1.c.x), select(select(vec3<bool>(global1.c.x, arg_0.a.a.x, true), vec3<bool>(false, true, true), true), !vec3<bool>(false, true, arg_0.b.x), vec3<bool>(arg_0.b.x, global0.b.x, false)), vec3<bool>(all(vec4<bool>(var_1.a.x, false, var_1.c.x, global2.b.x)), true, true)), global2.a.b >> (~75376u % 32u), global0.a.c, ~(~u_input.d)), vec3<bool>(global1.c.x | false, any(select(var_1.c, vec3<bool>(global0.a.a.x, true, true), !arg_0.b)), _wgslsmith_mod_u32(global2.a.d, firstLeadingBit(1u)) > _wgslsmith_div_u32(4294967295u, reverseBits(global2.a.d))), -(vec3<i32>(-1i) * -global0.c));
    let var_2 = vec4<bool>(79037u < _wgslsmith_sub_u32(global2.a.d & firstTrailingBit(global2.a.d), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0.a.d, arg_0.a.d, 94317u), ~var_1.d)), var_0.c.a.c.x || !global2.b.x, global1.c.x, global1.a.x);
    return any(vec2<bool>(all(vec4<bool>(all(vec2<bool>(false, false)), true, true, any(vec4<bool>(false, true, false, false)))), arg_0.a.d >= _wgslsmith_add_u32(~27567u, u_input.a.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f))) * -2086f), -1032f, -210f, 1f);
    var var_1 = -451f;
    let var_2 = Struct_4(1986f, false, Struct_2(Struct_1(global2.b, ~(i32(-1i) * -12889i), global1.a, _wgslsmith_clamp_u32(global1.d, ~u_input.a.x, ~global0.a.d)), select(!vec3<bool>(true, global1.c.x, global2.b.x), select(vec3<bool>(global2.b.x, global0.b.x, true), global2.a.c, global2.a.b < 0i), vec3<bool>(global2.a.c.x, global1.a.x == true, func_3(Struct_2(global0.a, vec3<bool>(global1.a.x, global2.a.a.x, true), global0.c)))), select(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), global2.c), min(vec3<i32>(global0.c.x, -22099i, -173i), vec3<i32>(-1i, 0i, -26509i)), !global2.b.x)), var_0, vec2<bool>(!all(global1.a), true));
    let var_3 = firstTrailingBit(-_wgslsmith_dot_vec4_i32(arg_0 & arg_0, arg_0));
    global0 = var_2.c;
    return !vec3<bool>(true, true, global0.b.x);
}

fn func_1() -> Struct_4 {
    var var_0 = true;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), false, Struct_2(Struct_1(global2.a.a, ~_wgslsmith_dot_vec2_i32(global2.c.zy, vec2<i32>(2147483647i, global0.a.b)), global2.b, _wgslsmith_dot_vec3_u32(~u_input.c, _wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 8861u), vec3<u32>(29390u, 3036u, global1.d)))), func_2(vec4<i32>(1i, 38240i, ~global1.b, ~global2.c.x), vec4<u32>(_wgslsmith_add_u32(0u, global0.a.d), 1u, ~13u, global0.a.d)), vec3<i32>(firstTrailingBit(global2.a.b), _wgslsmith_mod_i32(~(-1i), ~global2.a.b), global2.c.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-376f, -640f)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(111f + 395f) + _wgslsmith_div_f32(348f, 917f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f * -606f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(-416f, -1238f), 934f, _wgslsmith_f_op_f32(f32(-1f) * -192f), 562f))))), global2.a.a.zy);
    global0 = Struct_2(global0.a, global0.a.c, _wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_1.c.c, global2.c, var_1.c.c) | (vec3<i32>(2147483647i, global1.b, -38101i) ^ -global0.c), select(global2.c, global0.c, select(vec3<bool>(false, true, global1.c.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let var_2 = _wgslsmith_sub_vec2_i32(-_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 2147483647i), global0.c.yz), vec2<i32>(50492i, var_1.c.a.b) | var_1.c.c.zx, global0.c.zx) << (~(~_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.a)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(~abs(abs(vec2<i32>(global2.a.b, u_input.b))), vec2<i32>(_wgslsmith_add_i32(-37064i, var_1.c.a.b), -global2.c.x) | countOneBits(global2.c.xy << (u_input.c.xx % vec2<u32>(32u))), select(vec2<i32>(_wgslsmith_clamp_i32(global2.a.b, -23506i, -1i), -global2.c.x), vec2<i32>(2147483647i, u_input.b), global1.a.yy)));
    let var_3 = var_1;
    return var_3;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = !(!(!(946f == _wgslsmith_div_f32(arg_0.a, arg_0.d.x))));
    global1 = arg_0.c.a;
    var var_1 = arg_2.c;
    global2 = Struct_2(func_1().c.a, global2.b, global0.c);
    let var_2 = _wgslsmith_f_op_f32(arg_0.a * 833f);
    return Struct_1(vec3<bool>(all(vec3<bool>(arg_0.a < arg_0.a, true, true)), func_2((vec4<i32>(global0.a.b, arg_1.b, -1i, u_input.b) >> (vec4<u32>(65974u, global0.a.d, 19406u, 1u) % vec4<u32>(32u))) >> (~vec4<u32>(18326u, arg_1.d, 0u, 0u) % vec4<u32>(32u)), ~(vec4<u32>(global0.a.d, global1.d, arg_2.a.d, 1u) << (vec4<u32>(arg_1.d, u_input.d, u_input.a.x, global0.a.d) % vec4<u32>(32u)))).x, any(vec2<bool>(true, true))), arg_1.b, global0.a.a, ~(~(~max(18212u, u_input.a.x))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~u_input.c;
    var var_1 = arg_0.c;
    var var_2 = _wgslsmith_f_op_f32(506f * -1301f);
    let var_3 = global1.b;
    var var_4 = vec2<u32>(global0.a.d | _wgslsmith_div_u32(_wgslsmith_sub_u32(abs(global0.a.d), _wgslsmith_mod_u32(4294967295u, 84463u)), 1u >> (arg_0.a.d % 32u)), 26282u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(Struct_2(func_4(func_1(), func_1().c.a, func_1().c), !global0.b, global0.c));
    let var_0 = func_1().d;
    global0 = Struct_2(func_1().c.a, vec3<bool>(true && global1.a.x, all(func_4(func_1(), global0.a, Struct_2(Struct_1(vec3<bool>(global2.a.a.x, global2.a.a.x, false), 36418i, global1.c, 44443u), global2.a.a, global0.c)).a), ((1i != global2.c.x) | false) & all(global0.a.a)), global2.c);
    let var_1 = ~(~countOneBits((vec3<u32>(4294967295u, 41200u, global0.a.d) | u_input.c) | vec3<u32>(4294967295u, 1u, global2.a.d)));
    var var_2 = _wgslsmith_f_op_f32(sign(-681f));
    global1 = global0.a;
    var var_3 = Struct_3(func_5(Struct_2(Struct_1(vec3<bool>(true, true, true), reverseBits(u_input.b), !global0.a.c, 4294967295u << (var_1.x % 32u)), !global0.b, _wgslsmith_div_vec3_i32(global2.c >> (var_1 % vec3<u32>(32u)), ~global0.c))).a.c.zz, Struct_2(func_4(func_1(), Struct_1(func_4(Struct_4(var_0.x, false, Struct_2(Struct_1(global2.b, 19951i, vec3<bool>(global0.b.x, false, global2.b.x), u_input.d), global1.c, global2.c), vec4<f32>(var_0.x, var_0.x, -1596f, -557f), vec2<bool>(global0.a.a.x, true)), Struct_1(global0.b, -1i, global0.a.c, 4294967295u), Struct_2(global0.a, global1.c, vec3<i32>(-4463i, global0.c.x, global0.a.b))).a, _wgslsmith_add_i32(u_input.b, 0i), vec3<bool>(true, true, true), ~var_1.x), func_5(func_5(Struct_2(Struct_1(vec3<bool>(global0.a.c.x, false, global0.b.x), u_input.b, global1.a, global0.a.d), global1.a, global0.c)))), select(global1.a, !select(global1.a, vec3<bool>(false, false, true), global2.b), !any(vec4<bool>(true, global2.a.a.x, true, false))), max(vec3<i32>(func_4(Struct_4(var_0.x, true, Struct_2(Struct_1(vec3<bool>(global0.a.c.x, global0.b.x, global1.a.x), -2147483647i, global1.a, 0u), global0.a.c, global2.c), var_0, global0.a.c.xz), global2.a, Struct_2(Struct_1(vec3<bool>(false, global1.c.x, false), 0i, vec3<bool>(global2.b.x, global1.c.x, global1.c.x), u_input.c.x), vec3<bool>(global1.c.x, true, true), vec3<i32>(global1.b, u_input.b, global2.c.x))).b, global1.b, global2.c.x | u_input.b), func_5(func_5(Struct_2(Struct_1(global2.a.a, global0.c.x, global1.c, 4294967295u), vec3<bool>(global0.b.x, false, true), global0.c))).c)), _wgslsmith_div_f32(-1877f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1973f + _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(trunc(var_0.x)))), func_4(Struct_4(var_0.x, global2.b.x, Struct_2(Struct_1(vec3<bool>(global1.c.x, true, false), u_input.b, global2.a.c, 4737u), global1.a, global0.c << (u_input.c % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(var_0.x, 668f, 108f, var_0.x), vec4<bool>(true, global0.a.a.x, true, false)))), vec2<bool>(true, true)), global0.a, Struct_2(Struct_1(vec3<bool>(global0.b.x, global2.b.x, false), _wgslsmith_dot_vec2_i32(vec2<i32>(44338i, global2.a.b), vec2<i32>(global2.a.b, -2147483647i)), func_2(vec4<i32>(global0.c.x, global2.c.x, -2147483647i, 45325i), vec4<u32>(u_input.d, 12626u, u_input.a.x, 4294967295u)), 14022u & global1.d), func_2(-vec4<i32>(2147483647i, 32778i, global0.c.x, global2.a.b), ~vec4<u32>(global1.d, global1.d, global1.d, 22085u)), vec3<i32>(-1i) * -vec3<i32>(global2.a.b, global2.a.b, global1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-501f, var_0.x)) - _wgslsmith_f_op_f32(344f * 1000f)), _wgslsmith_f_op_f32(var_3.c - _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x - var_0.x))), -(vec4<i32>(global0.c.x, -1i, ~(-32466i), ~global2.a.b) ^ -_wgslsmith_add_vec4_i32(vec4<i32>(global0.a.b, global2.c.x, 10560i, 17011i), vec4<i32>(2147483647i, -2147483647i, global0.c.x, global1.b))), _wgslsmith_add_vec2_u32(var_1.xz, _wgslsmith_mod_vec2_u32(reverseBits(var_1.xy), vec2<u32>(firstTrailingBit(1u), func_1().c.a.d))));
}

