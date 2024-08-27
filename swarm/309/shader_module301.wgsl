struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 7>;

var<private> global3: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_3) -> f32 {
    var var_0 = vec4<u32>(u_input.c, 1u, abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, 81635u, arg_3.b.c), vec4<u32>(u_input.a, 94388u, 1u, u_input.a), vec4<u32>(arg_3.b.c, 26588u, arg_3.b.c, 21840u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 90826u, 56650u, 0u), vec4<u32>(arg_3.b.c, arg_3.b.c, 1u, 89393u))), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(13792u, u_input.c, 8195u), vec3<u32>(52213u, 10339u, 21476u)), ~45767u))), global1.b.c);
    var var_1 = Struct_2(!(!select(select(global1.a, vec2<bool>(true, false), global1.b.a), vec2<bool>(true, true), global1.a)), Struct_1(all(!select(vec3<bool>(arg_3.b.a, arg_3.b.a, true), vec3<bool>(global1.a.x, false, arg_3.b.a), vec3<bool>(false, false, global1.a.x))), max(i32(-1i) * -2147483647i, 4236i), arg_3.b.c, _wgslsmith_f_op_vec3_f32(arg_1.wyz + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, arg_1.x, -590f))))));
    let var_2 = Struct_3(vec2<f32>(var_1.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c.x, -781f) * _wgslsmith_f_op_f32(arg_1.x - arg_2)))), Struct_1(arg_3.b.a, var_1.b.b, 8635u, var_1.b.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 103f, arg_3.d, var_1.b.d.x) - arg_0), vec4<f32>(var_1.b.d.x, -207f, -339f, global1.b.d.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-990f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + 137f) - _wgslsmith_f_op_f32(select(arg_0.x, -232f, arg_3.b.a))))))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.d.x, 1f))));
    let var_3 = Struct_2(!vec2<bool>(all(!vec3<bool>(var_2.b.a, var_2.b.a, false)), !global1.a.x), global1.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))) * -159f));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = ~_wgslsmith_add_u32(arg_0.x, ~1u);
    let var_1 = _wgslsmith_f_op_f32(-254f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec4<f32>(1423f, -712f, global1.b.d.x, global1.b.d.x), vec4<f32>(330f, global1.b.d.x, global1.b.d.x, global1.b.d.x), global1.b.d.x, Struct_3(vec2<f32>(global1.b.d.x, global1.b.d.x), Struct_1(global1.b.a, 0i, u_input.c, global1.b.d), vec4<f32>(-749f, global1.b.d.x, global1.b.d.x, global1.b.d.x), global1.b.d.x))))), _wgslsmith_f_op_f32(round(1f)))), -1139f)));
    return Struct_2(!select(vec2<bool>(any(vec4<bool>(global1.a.x, global1.b.a, global1.b.a, true)), true), global1.a, select(global1.a, global1.a, vec2<bool>(true, true))), Struct_1(!global1.a.x, arg_1.x, 1u, global1.b.d));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec4<f32> {
    let var_0 = false;
    let var_1 = true;
    global1 = func_2(select(~arg_1, firstLeadingBit(arg_1), var_0), (~(-vec4<i32>(u_input.b, global1.b.b, -1i, global0.x)) >> ((vec4<u32>(7896u, global1.b.c, 4294967295u, 102878u) & abs(vec4<u32>(49736u, 108428u, u_input.c, 4294967295u))) % vec4<u32>(32u))) | vec4<i32>(u_input.b, global0.x, 2147483647i, -u_input.b | global1.b.b));
    global1 = Struct_2(select(func_2(arg_1, vec4<i32>(global0.x & u_input.b, _wgslsmith_sub_i32(arg_0.x, -1i), _wgslsmith_div_i32(-13432i, arg_0.x), ~(-2147483647i))).a, !vec2<bool>(global1.b.a, false), vec2<bool>(true || (global0.x >= global1.b.b), true)), global1.b);
    var var_2 = Struct_1(true, firstLeadingBit(-26892i), 71422u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-641f)) + global1.b.d.x), global1.b.d.x)));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(747f)), _wgslsmith_f_op_f32(-1572f - var_2.d.x)), func_2(reverseBits(vec3<u32>(var_2.c, 0u, 1u)), vec4<i32>(arg_0.x, 21506i, u_input.b, -7172i)).b.d.x, var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-391f)))))));
}

fn func_4(arg_0: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_sub_vec2_i32(abs(-vec2<i32>(global0.x, 2147483647i)), select(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global1.b.b), vec2<i32>(57681i, -23304i)), min(vec2<i32>(-2147483647i, 39806i), vec2<i32>(-773i, 1248i)), vec2<bool>(true, global1.a.x))), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(50941u, global1.b.c, 1u), ~vec3<u32>(0u, 10577u, global1.b.c)), select(vec3<u32>(global1.b.c, 45222u, 887u), vec3<u32>(0u, global1.b.c, 1u), true) >> (~vec3<u32>(u_input.c, global1.b.c, u_input.c) % vec3<u32>(32u)), ~countOneBits(vec3<u32>(global1.b.c, u_input.c, u_input.c))))).yz));
    global0 = -vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1836i, global0.x, u_input.b), firstTrailingBit(vec3<i32>(u_input.b, -19934i, global1.b.b))), -global1.b.b, countOneBits(-global0.x)), global0.x);
    let var_1 = global1.b;
    global0 = _wgslsmith_mult_vec3_i32(~((_wgslsmith_mod_vec3_i32(vec3<i32>(global1.b.b, 1i, -2147483647i), vec3<i32>(1i, var_1.b, global1.b.b)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 33453u), vec3<u32>(var_1.c, global1.b.c, 4294967295u)) % vec3<u32>(32u))) >> (vec3<u32>(1u, firstLeadingBit(var_1.c), var_1.c) % vec3<u32>(32u))), -(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.b.b, u_input.b, global0.x), vec3<i32>(var_1.b, global0.x, -2147483647i)), ~vec3<i32>(global0.x, global1.b.b, u_input.b)) & abs(vec3<i32>(global0.x, -1i, u_input.b))));
    let var_2 = firstTrailingBit(-7168i);
    return !(!var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 7>();
    let var_0 = Struct_2(vec2<bool>(false, any(select(vec3<bool>(global1.a.x, true, global1.a.x), vec3<bool>(global1.b.a, false, global1.a.x), all(vec2<bool>(true, global1.a.x))))), Struct_1(func_4(_wgslsmith_f_op_vec4_f32(func_1(-vec2<i32>(2147483647i, global0.x), ~vec3<u32>(u_input.c, 0u, global1.b.c)))), global0.x, _wgslsmith_mult_u32(0u, ~global1.b.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1019f)) * -1166f), -1326f, -1070f)));
    var var_1 = Struct_3(global1.b.d.xz, var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-304f, global1.b.d.x, 1690f, var_0.b.d.x))), _wgslsmith_f_op_vec4_f32(func_1(vec2<i32>(global1.b.b, global1.b.b), vec3<u32>(43189u, u_input.a, global1.b.c))), vec4<bool>(true, global1.a.x, global1.b.a, var_0.a.x))))), 608f);
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x - -420f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d.x + _wgslsmith_f_op_f32(ceil(768f))))), func_2(~vec3<u32>(~1u, 11311u, select(var_1.b.c, u_input.c, false)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, min(-16154i, 13127i), i32(-1i) * -10584i, var_0.b.b), vec4<i32>(_wgslsmith_div_i32(0i, 20607i), min(u_input.b, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b, u_input.b, var_0.b.b, 0i), vec4<i32>(var_1.b.b, u_input.b, 2147483647i, -2147483647i)), 0i & u_input.b))).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, global1.b.d.x, var_0.b.d.x, var_1.d)), global1.b.d.x);
    let var_3 = _wgslsmith_sub_vec3_i32(abs(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(17285i, 2147483647i, var_1.b.b), vec3<i32>(global1.b.b, -42335i, -1i))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 74465u, 1u) ^ vec3<u32>(0u, 28626u, var_2.b.c), vec3<u32>(4294967295u, u_input.a, u_input.c), vec3<u32>(global1.b.c, u_input.c, 40190u) << (vec3<u32>(0u, 36924u, 6215u) % vec3<u32>(32u))) % vec3<u32>(32u))), abs(vec3<i32>(~(~global0.x), ~(~(-30464i)), firstTrailingBit(i32(-1i) * -1i))));
    var_1 = var_2;
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-610f, select(~(global2[_wgslsmith_index_u32(~var_2.b.c, 7u)] >> (global2[_wgslsmith_index_u32(var_0.b.c ^ var_0.b.c, 7u)] % vec2<u32>(32u))), ~(~max(vec2<u32>(var_2.b.c, global1.b.c), global2[_wgslsmith_index_u32(1u, 7u)])), _wgslsmith_f_op_f32(828f - _wgslsmith_f_op_f32(select(var_2.a.x, 739f, true))) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.b.d.x, global1.b.d.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-798f, -449f)), _wgslsmith_f_op_f32(505f + var_0.b.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.x))))));
}

