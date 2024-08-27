struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, 1350f, 434f, -1000f);

var<private> global1: f32;

var<private> global2: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(1u, Struct_2(Struct_1(vec4<bool>(false, false, false, false), 1u, true, vec4<bool>(true, true, false, false), vec2<i32>(6826i, -7619i)))), Struct_5(25263u, Struct_2(Struct_1(vec4<bool>(true, false, false, true), 4294967295u, true, vec4<bool>(true, false, false, true), vec2<i32>(2147483647i, -7410i)))), Struct_5(38542u, Struct_2(Struct_1(vec4<bool>(false, true, true, true), 49881u, false, vec4<bool>(true, false, true, true), vec2<i32>(1i, -14222i)))), Struct_5(74378u, Struct_2(Struct_1(vec4<bool>(false, false, true, true), 15254u, true, vec4<bool>(true, false, false, false), vec2<i32>(1i, -9958i)))), Struct_5(0u, Struct_2(Struct_1(vec4<bool>(true, true, false, false), 1u, true, vec4<bool>(false, false, false, true), vec2<i32>(-1i, -25041i)))), Struct_5(18749u, Struct_2(Struct_1(vec4<bool>(false, false, false, false), 1u, true, vec4<bool>(true, false, false, false), vec2<i32>(42656i, i32(-2147483648))))), Struct_5(1u, Struct_2(Struct_1(vec4<bool>(true, false, true, false), 0u, true, vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), 3681i)))), Struct_5(1u, Struct_2(Struct_1(vec4<bool>(true, true, false, true), 12933u, true, vec4<bool>(false, false, true, true), vec2<i32>(1i, 28666i)))), Struct_5(0u, Struct_2(Struct_1(vec4<bool>(true, false, false, false), 5860u, true, vec4<bool>(true, false, true, true), vec2<i32>(2147483647i, -42593i)))), Struct_5(1u, Struct_2(Struct_1(vec4<bool>(true, false, false, true), 92468u, false, vec4<bool>(false, false, false, true), vec2<i32>(51073i, 0i)))), Struct_5(18549u, Struct_2(Struct_1(vec4<bool>(true, true, true, true), 4839u, false, vec4<bool>(true, false, true, true), vec2<i32>(-1i, -30045i)))), Struct_5(0u, Struct_2(Struct_1(vec4<bool>(false, false, true, false), 25824u, false, vec4<bool>(true, false, true, false), vec2<i32>(i32(-2147483648), 9262i)))), Struct_5(0u, Struct_2(Struct_1(vec4<bool>(true, false, false, true), 7422u, true, vec4<bool>(false, false, false, false), vec2<i32>(-20809i, 12812i)))), Struct_5(0u, Struct_2(Struct_1(vec4<bool>(true, false, false, false), 0u, true, vec4<bool>(true, false, true, false), vec2<i32>(-33040i, 1i)))), Struct_5(43344u, Struct_2(Struct_1(vec4<bool>(false, true, false, false), 82u, false, vec4<bool>(false, false, false, false), vec2<i32>(-1i, 3392i)))), Struct_5(80403u, Struct_2(Struct_1(vec4<bool>(false, true, false, true), 0u, true, vec4<bool>(true, true, true, true), vec2<i32>(88138i, 1i)))), Struct_5(4294967295u, Struct_2(Struct_1(vec4<bool>(true, true, false, true), 4294967295u, true, vec4<bool>(true, false, true, true), vec2<i32>(-35794i, 0i)))), Struct_5(1u, Struct_2(Struct_1(vec4<bool>(true, false, true, true), 1u, false, vec4<bool>(false, false, false, false), vec2<i32>(-1i, -1i)))), Struct_5(10324u, Struct_2(Struct_1(vec4<bool>(false, false, true, false), 13122u, false, vec4<bool>(false, false, false, true), vec2<i32>(-21056i, 0i)))), Struct_5(28817u, Struct_2(Struct_1(vec4<bool>(false, true, true, true), 94757u, false, vec4<bool>(false, false, false, true), vec2<i32>(0i, 36116i)))), Struct_5(0u, Struct_2(Struct_1(vec4<bool>(false, false, true, false), 0u, false, vec4<bool>(true, true, true, true), vec2<i32>(1677i, i32(-2147483648))))), Struct_5(43672u, Struct_2(Struct_1(vec4<bool>(true, false, false, false), 1u, true, vec4<bool>(true, false, true, true), vec2<i32>(-1i, -66372i)))));

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec4<bool>(true, true, true, true), 1u, false, vec4<bool>(true, true, false, true), vec2<i32>(-9055i, 1i))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), 1u, true, vec4<bool>(false, false, false, true), vec2<i32>(2147483647i, -1i))), Struct_2(Struct_1(vec4<bool>(false, false, false, true), 57969u, false, vec4<bool>(false, true, true, true), vec2<i32>(10963i, -53626i))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), 0u, true, vec4<bool>(true, true, false, false), vec2<i32>(0i, 8677i))), Struct_2(Struct_1(vec4<bool>(true, false, true, false), 66008u, true, vec4<bool>(true, true, true, true), vec2<i32>(-1i, 4581i))));

var<private> global4: array<Struct_2, 27>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = any(vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)))), -6503i < ~u_input.a, all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(true, false, false)))));
    var var_1 = Struct_2(Struct_1(vec4<bool>(true, any(vec3<bool>(false, true, false)) == true, true, true), u_input.b, !all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec3<bool>(true, true, true)), false, false, any(vec2<bool>(true, true))), false), vec2<i32>(u_input.a, 0i)));
    var var_2 = (_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(12246u, u_input.b, u_input.b), vec3<u32>(u_input.b, 67536u, var_1.a.b)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 13762u, u_input.b), vec3<u32>(1u, 0u, var_1.a.b), vec3<u32>(4294967295u, 0u, 28023u)), firstLeadingBit(vec3<u32>(var_1.a.b, var_1.a.b, var_1.a.b)) | (vec3<u32>(64724u, var_1.a.b, 4294967295u) ^ vec3<u32>(var_1.a.b, 49399u, var_1.a.b)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(u_input.b, var_1.a.b, 1u)), ~vec3<u32>(0u, u_input.b, 0u))) ^ vec3<u32>(~(49120u >> (u_input.b % 32u)), _wgslsmith_mult_u32(~37766u, var_1.a.b), firstLeadingBit(~4294967295u))) >> (~(vec3<u32>(~var_1.a.b, _wgslsmith_mod_u32(u_input.b, u_input.b), ~u_input.b) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1.a.b, 29087u), vec3<u32>(0u, 1u, var_1.a.b))) % vec3<u32>(32u));
    let var_3 = Struct_1(vec4<bool>(false | !var_1.a.c, any(!(!var_1.a.a.xxx)), false, false), var_1.a.b, any(var_1.a.d), var_1.a.d, -(~vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.e.x, 31104i, var_1.a.e.x, -1i), vec4<i32>(-49685i, 1i, u_input.a, 1i)))));
    global1 = global0.x;
    return var_1.a.d.yww;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_3(all(func_3()) & false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, -2515f, arg_0.x, global0.x), vec4<f32>(-511f, 1831f, 358f, 600f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1408f, 1642f, -728f, arg_0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -303f), arg_0.x, _wgslsmith_f_op_f32(1161f - arg_0.x), _wgslsmith_f_op_f32(global0.x - global0.x)))), arg_0.x, Struct_1(vec4<bool>(true, true, true, func_3().x), u_input.b, !(~u_input.a < _wgslsmith_clamp_i32(u_input.a, -2147483647i, 10306i)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), min(_wgslsmith_mod_vec2_i32(-vec2<i32>(31468i, 13701i), abs(vec2<i32>(u_input.a, u_input.a))), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-2147483647i, u_input.a)))));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1062f)), 140f));
    global3 = array<Struct_2, 5>();
    var var_1 = !vec2<bool>(func_3().x, !var_0.a);
    let var_2 = var_0.d;
    return -(u_input.a | -_wgslsmith_sub_i32(reverseBits(-39978i), i32(-1i) * -33548i));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: bool, arg_3: u32) -> i32 {
    let var_0 = true;
    let var_1 = ~(max(_wgslsmith_add_u32(~36335u, ~arg_1.b.a.b), 4294967295u) & 6132u);
    var var_2 = vec4<bool>(arg_2, !any(vec4<bool>(var_0 || false, var_0, arg_2, true)), true, (all(func_3()) | true) & var_0);
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(-9099i, -(firstLeadingBit(u_input.a) | _wgslsmith_dot_vec2_i32(arg_1.b.a.e, arg_1.b.a.e))), arg_1.b.a.e.x, -arg_1.b.a.e.x, select(func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, global0.x)))), abs(-1i) >> (_wgslsmith_sub_u32(min(15539u, 4294967295u), u_input.b) % 32u), true));
    var var_4 = Struct_4((arg_1.b.a.e.x ^ 24891i) << (~44742u % 32u));
    return ~(~u_input.a);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(!vec4<bool>(true, any(vec4<bool>(true, false, true, true)), true, true), u_input.b, any(select(vec2<bool>(true, true), vec2<bool>(true, true), 1080f <= global0.x)), vec4<bool>(true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))), true || (global0.x < -714f), select(any(vec4<bool>(true, false, false, false)), true, true)), -_wgslsmith_add_vec2_i32(vec2<i32>(-13286i, 7255i), abs(vec2<i32>(u_input.a, 3270i)))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(global0.x, -1000f)), -957f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)))));
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.x))));
    var var_1 = _wgslsmith_mod_i32(var_0.a.e.x, _wgslsmith_clamp_i32(25777i, reverseBits(-u_input.a), func_4(func_2(vec2<f32>(global0.x, 1012f)), global2[_wgslsmith_index_u32(countOneBits(13134u), 22u)], true && var_0.a.d.x, ~u_input.b))) << ((_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(26611u, var_0.a.b, var_0.a.b), vec3<u32>(18708u, 1u, u_input.b)) >> (vec3<u32>(u_input.b, var_0.a.b, 66275u) % vec3<u32>(32u)), ~max(vec3<u32>(74883u, var_0.a.b, u_input.b), vec3<u32>(4294967295u, 13219u, 62404u))) | 4294967295u) % 32u);
    var var_2 = vec3<u32>(var_0.a.b, u_input.b, _wgslsmith_clamp_u32(min(5946u, 94409u), 1u, reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, var_0.a.b), vec3<u32>(25067u, 1u, var_0.a.b), vec3<u32>(4294967295u, var_0.a.b, var_0.a.b)), vec3<u32>(21702u, u_input.b, 2540u) | vec3<u32>(var_0.a.b, 81260u, 1u)))));
    return Struct_1(vec4<bool>(!var_0.a.c, any(!select(vec3<bool>(true, true, true), var_0.a.d.yyz, true)), 14495u == _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(15385u, u_input.b), var_2.zy), var_2.yy), func_3().x), u_input.b, false, vec4<bool>(var_0.a.c, !(_wgslsmith_f_op_f32(-global0.x) <= global0.x), 422f != global0.x, any(!select(vec4<bool>(var_0.a.d.x, false, var_0.a.c, false), var_0.a.d, var_0.a.a))), min(-_wgslsmith_add_vec2_i32(var_0.a.e, var_0.a.e), abs(-min(vec2<i32>(u_input.a, u_input.a), var_0.a.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_5, 22>();
    global1 = global0.x;
    let var_0 = func_1();
    let var_1 = 0i;
    var var_2 = Struct_4(17467i);
    var var_3 = select(false, var_0.c, !all(vec2<bool>(var_0.c, true)) && false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x - -444f))))), firstTrailingBit(55018u));
}

