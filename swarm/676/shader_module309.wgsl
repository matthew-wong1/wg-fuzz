struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 1099f;
    let var_1 = 1i;
    global0 = array<vec2<f32>, 31>();
    var var_2 = !(!vec2<bool>(true, ~u_input.c <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(56899u, 57078u))));
    var var_3 = _wgslsmith_f_op_f32(abs(var_0));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.a - arg_3.a) * vec3<f32>(var_0, arg_1, 371f)) * vec3<f32>(539f, -1000f, -1252f))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~min(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(21110u, arg_1.x, 33006u), _wgslsmith_div_vec3_u32(arg_1.wwy, vec3<u32>(arg_1.x, u_input.c, 48893u))), vec3<u32>(reverseBits(u_input.c), countOneBits(51974u), ~u_input.c), arg_1.wyz), firstLeadingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c, arg_1.x), vec3<u32>(arg_1.x, arg_1.x, arg_1.x))));
    var var_1 = select(vec3<bool>(!select(true, true, all(vec3<bool>(false, true, false))), false, false), select(!vec3<bool>(true, select(false, true, false), true), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, true)))), !(!vec3<bool>(var_0.x < var_0.x, any(vec2<bool>(true, false)), false)));
    var var_2 = false;
    var_1 = select(select(select(select(vec3<bool>(false, var_1.x, var_1.x), select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, true, false), vec3<bool>(true, true, false)), vec3<bool>(var_1.x, var_1.x, true)), select(vec3<bool>(var_1.x, true, true), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, true, var_1.x)), !vec3<bool>(false, var_1.x, true)), !vec3<bool>(false, var_1.x, false)), select(vec3<bool>(true, var_1.x, u_input.b < u_input.a), select(vec3<bool>(false, var_1.x, var_1.x), !vec3<bool>(false, false, var_1.x), true), vec3<bool>(true, true, true)), vec3<bool>(all(!vec3<bool>(var_1.x, false, var_1.x)), any(vec2<bool>(var_1.x, false)), 279f == arg_0.a.a.x)), select(vec3<bool>(true, true, var_1.x), select(!(!vec3<bool>(var_1.x, true, true)), select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, true, var_1.x)), select(vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, var_1.x, false), var_1.x), !var_1.x), !select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x))), !any(select(var_1.xx, var_1.xx, vec2<bool>(var_1.x, var_1.x)))), vec3<bool>(false, all(vec4<bool>(true, true, false, all(var_1.xx))), all(!(!vec3<bool>(var_1.x, false, var_1.x)))));
    let var_3 = vec2<f32>(1560f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-308f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-272f))))));
    return arg_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = var_0;
    global0 = array<vec2<f32>, 31>();
    var var_2 = -7283i;
    var var_3 = vec3<bool>(!all(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), false & !(!select(true, false, false)), ~1u < arg_1);
    return Struct_2(func_2(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_2.zy, arg_2.zw), reverseBits(0i)), -417f, ~max(min(arg_2.xyx, arg_2.yyw), vec3<i32>(arg_2.x, -2147483647i, arg_2.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, 234f)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = (~(i32(-1i) * -2147483647i) ^ -_wgslsmith_sub_i32(u_input.a, 25154i)) >> (u_input.c % 32u);
    var var_1 = (abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, u_input.c, 42779u), vec3<u32>(1u, 1u, 68318u))) | (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, 1u, u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 25744u))) >> (~vec3<u32>(4294967295u, 42096u, u_input.c) % vec3<u32>(32u)))) << (~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(10264u, u_input.c, u_input.c) | vec3<u32>(u_input.c, 4294967295u, u_input.c)), vec3<u32>(u_input.c, firstLeadingBit(1042u), ~u_input.c)) % vec3<u32>(32u));
    var_0 = i32(-1i) * -21032i;
    var_1 = firstLeadingBit(~max(~vec3<u32>(22689u, u_input.c, 0u), ~vec3<u32>(0u, u_input.c, var_1.x)) | ~min(firstLeadingBit(vec3<u32>(0u, 4294967295u, u_input.c)), ~vec3<u32>(1u, u_input.c, u_input.c)));
    let var_2 = arg_0.a;
    return var_2;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(func_5(func_4(func_3(Struct_2(Struct_1(vec3<f32>(328f, 1102f, -432f))), vec4<u32>(u_input.c, u_input.c, 27515u, 0u), func_2(arg_0, -1000f, vec3<i32>(-12802i, 22567i, 1i), Struct_1(vec3<f32>(-1030f, 365f, -1451f)))), 1u, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, 14878i) >> (vec4<u32>(20629u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)), -vec4<i32>(arg_0, -24477i, 1i, arg_0))), vec2<bool>(true, true), all(vec4<bool>(true, select(true, true, false), false, true))));
    var_0 = func_4(var_0.a, u_input.c, ~(~(~_wgslsmith_add_vec4_i32(vec4<i32>(0i, -6335i, 0i, u_input.b), vec4<i32>(49369i, u_input.b, arg_0, 23913i)))));
    var var_1 = !select(vec3<bool>(any(vec2<bool>(true, true)), func_4(var_0.a, u_input.c, vec4<i32>(arg_0, 2147483647i, -23686i, 10889i)).a.a.x == func_3(Struct_2(Struct_1(var_0.a.a)), vec4<u32>(35634u, 1u, 51438u, 4294967295u), Struct_1(var_0.a.a)).a.x, any(vec3<bool>(true, false, true))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true);
    var_0 = func_4(var_0.a, countOneBits(~119493u), vec4<i32>(0i, 0i >> (u_input.c % 32u), u_input.b, -17696i));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1707f, var_0.a.a.x, -959f, var_0.a.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-764f, -833f, 830f, var_0.a.a.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1074f, 647f, var_0.a.a.x, -470f) * vec4<f32>(-1075f, var_0.a.a.x, var_0.a.a.x, -120f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-701f, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x) - vec4<f32>(153f, var_0.a.a.x, var_0.a.a.x, 2177f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1592f, var_0.a.a.x, var_0.a.a.x, 167f) + vec4<f32>(var_0.a.a.x, 350f, -1665f, var_0.a.a.x)))))));
    return func_2(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(534f * var_0.a.a.x)), vec3<i32>(-2147483647i, (i32(-1i) * -u_input.a) & firstTrailingBit(1i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_0, -19655i, arg_0), arg_0, ~(-2852i)), 29556i)), Struct_1(vec3<f32>(func_3(func_4(Struct_1(vec3<f32>(1038f, var_0.a.a.x, 1295f)), u_input.c, vec4<i32>(arg_0, u_input.a, arg_0, 57064i)), min(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), Struct_1(vec3<f32>(var_2.x, var_2.x, 1189f))).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -821f) + var_0.a.a.x), 1197f)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = min(_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.c, u_input.c) >> ((vec2<u32>(4294967295u, u_input.c) >> (vec2<u32>(37302u, 83556u) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(~(vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))), select(reverseBits(vec2<u32>(4294967295u, 0u)), vec2<u32>(20064u, u_input.c), vec2<bool>(true, true)))), abs(19833u));
    let var_1 = ~select(_wgslsmith_sub_u32(~(~u_input.c), ~_wgslsmith_mod_u32(u_input.c, 1u)), 1u, any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = Struct_2(Struct_1(arg_0.a));
    global0 = array<vec2<f32>, 31>();
    var_0 = _wgslsmith_mod_u32(var_1, 31222u) & abs(firstTrailingBit(4294967295u));
    return var_2.a;
}

fn func_7(arg_0: Struct_1) -> vec4<f32> {
    global0 = array<vec2<f32>, 31>();
    var var_0 = -22125i;
    global0 = array<vec2<f32>, 31>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(trunc(arg_0.a.x))), arg_0.a.x, true)), func_4(arg_0, max(_wgslsmith_dot_vec4_u32(vec4<u32>(10653u, 0u, 38037u, 4294967295u), vec4<u32>(6560u, u_input.c, 1u, 78840u)), u_input.c), -reverseBits(vec4<i32>(1i, u_input.b, 40150i, u_input.a))).a.a.x, arg_0.a.x));
    var var_2 = reverseBits(u_input.a);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-377f - var_1.x)) * arg_0.a.x)), 1000f, arg_0.a.x, arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 31>();
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_7(func_6(func_1(u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-641f, -1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1269f, -547f, 808f, 737f), vec4<f32>(697f, -484f, 607f, -1000f)) * vec4<f32>(1277f, -691f, 393f, 178f))))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~reverseBits(_wgslsmith_mod_u32(17839u, u_input.c)), 15669u), 31u)];
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(824f)), var_0.x);
    global0 = array<vec2<f32>, 31>();
    var var_2 = func_4(func_5(func_4(func_4(func_6(Struct_1(vec3<f32>(var_0.x, var_0.x, 1417f)), var_0.zw), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 33964u), vec2<u32>(84204u, u_input.c)), min(vec4<i32>(-1i, 0i, 2147483647i, u_input.b), vec4<i32>(-2147483647i, u_input.a, -24843i, 0i))).a, ~1u, _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, -2147483647i) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(-1i, -1i, -2147483647i, u_input.b))), vec2<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))), true), _wgslsmith_mult_u32(~u_input.c, ~22732u), vec4<i32>(778i, u_input.a << (30326u % 32u), u_input.a, reverseBits(-10196i)));
    var var_3 = func_4(Struct_1(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(step(-1932f, var_1.x))), var_0.x)), ~4294967295u, _wgslsmith_clamp_vec4_i32(vec4<i32>(abs(u_input.a), u_input.b << (reverseBits(0u) % 32u), u_input.a, max(_wgslsmith_sub_i32(2147483647i, u_input.a), -2147483647i)), vec4<i32>(_wgslsmith_mult_i32(u_input.a, -37559i), _wgslsmith_mult_i32(u_input.b, u_input.b), abs(0i), ~u_input.b) << ((abs(vec4<u32>(46121u, u_input.c, u_input.c, 92668u)) & vec4<u32>(u_input.c, 4294967295u, 4294967295u, 0u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-63270i, u_input.a), vec2<i32>(u_input.a, -1i)), u_input.a, u_input.b, u_input.a), abs(vec4<i32>(0i, 1i, -2147483647i, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a.a.x, var_3.a.a.x, var_0.x, 548f))), _wgslsmith_f_op_vec4_f32(sign(var_0))))), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(64969u, 1u, 1u) & vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(32539u, 11995u, u_input.c))) | ~14690u, select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~u_input.c), min(~vec2<u32>(1u, 32987u), vec2<u32>(u_input.c, u_input.c))), ~vec2<u32>(15653u, u_input.c), select(vec2<bool>(true, any(vec3<bool>(false, true, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), all(vec3<bool>(false, true, false)) & (u_input.b > -39254i))));
}

