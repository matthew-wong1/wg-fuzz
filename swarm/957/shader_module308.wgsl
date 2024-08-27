struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(-2083i, -9056i), vec2<i32>(i32(-2147483648), -14555i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), -196i), vec2<i32>(i32(-2147483648), 37067i), vec2<i32>(-1i, 36866i), vec2<i32>(0i, 24638i), vec2<i32>(-1i, 4590i), vec2<i32>(0i, 58287i), vec2<i32>(-38930i, i32(-2147483648)), vec2<i32>(-1i, -59321i), vec2<i32>(25852i, 2147483647i), vec2<i32>(-9882i, -42405i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = Struct_1(arg_0.a);
    var var_1 = vec3<f32>(-752f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(-arg_1)), false)))), 1063f);
    var var_2 = true;
    var var_3 = -767f;
    return -vec3<i32>(_wgslsmith_sub_i32(arg_0.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.a.x), vec2<i32>(-12007i, u_input.e.x)), ~var_0.a.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.a.x, var_0.a.x), ~vec2<i32>(2147483647i, u_input.e.x)), arg_0.c.a.x >> (~24859u % 32u)), -firstTrailingBit(1i));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32) -> u32 {
    global0 = array<vec2<i32>, 13>();
    var var_0 = Struct_5(_wgslsmith_clamp_vec3_i32(func_3(Struct_5(firstTrailingBit(vec3<i32>(5126i, u_input.e.x, u_input.c)), vec4<bool>(false, true, true, true), Struct_3(vec4<i32>(u_input.a, 2147483647i, u_input.e.x, 58454i), vec2<u32>(arg_2, 49925u), 4294967295u), -542f), _wgslsmith_div_f32(1173f, -1000f), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.e.x, 1i, -25361i), vec4<i32>(31404i, 2147483647i, -2147483647i, u_input.a)), u_input.d.xz & vec2<u32>(u_input.b, arg_2), max(u_input.d.x, 49357u))), -vec3<i32>(u_input.a, i32(-1i) * -39738i, ~u_input.a), select(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, -9382i, u_input.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.c, 0i), vec3<i32>(u_input.c, -9747i, -19447i)), abs(vec3<i32>(-3437i, u_input.e.x, u_input.a))), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(1i, u_input.e.x, u_input.e.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.e.x, u_input.a), vec3<i32>(u_input.c, -26434i, u_input.a), vec3<i32>(0i, u_input.e.x, u_input.e.x)), vec3<i32>(u_input.e.x, u_input.e.x, u_input.a)), false)), !(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), Struct_3(_wgslsmith_add_vec4_i32(select(-vec4<i32>(u_input.e.x, u_input.e.x, u_input.a, 28273i), vec4<i32>(-65305i, 17993i, u_input.a, 2147483647i), true), -vec4<i32>(u_input.c, u_input.a, 5226i, 11245i)), ~vec2<u32>(arg_0, min(arg_2, 4294967295u)), arg_2), _wgslsmith_f_op_f32(floor(1128f)));
    var_0 = Struct_5(firstLeadingBit(vec3<i32>(var_0.c.a.x, -_wgslsmith_add_i32(-25549i, var_0.a.x), _wgslsmith_mult_i32(u_input.a << (arg_0 % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -31344i, var_0.c.a.x, -2147483647i), vec4<i32>(-2147483647i, -1i, -2147483647i, var_0.a.x))))), vec4<bool>((!var_0.b.x & any(vec4<bool>(false, var_0.b.x, true, true))) != (var_0.b.x | (false & var_0.b.x)), any(!vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x)), true, true), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(998f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1199f - 283f)), -803f))));
    var var_1 = select(-vec2<i32>(-var_0.a.x, u_input.e.x), reverseBits(var_0.c.a.xz), select(var_0.b.zy, vec2<bool>(false, var_0.b.x), select(var_0.b.ww, vec2<bool>(!var_0.b.x, true), all(!var_0.b.wz))));
    let var_2 = _wgslsmith_dot_vec2_i32(select(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(2068i, -43124i), _wgslsmith_add_vec2_i32(vec2<i32>(-275i, var_1.x), global0[_wgslsmith_index_u32(arg_2, 13u)]), vec2<bool>(true, true)), firstTrailingBit(vec2<i32>(490i, 1i)), reverseBits(u_input.e)), _wgslsmith_mod_vec2_i32(max(select(vec2<i32>(u_input.e.x, var_0.a.x), u_input.e, var_0.b.yx), abs(global0[_wgslsmith_index_u32(arg_2, 13u)])), ~(u_input.e ^ global0[_wgslsmith_index_u32(arg_0, 13u)])), true), _wgslsmith_mult_vec2_i32(min(vec2<i32>(2147483647i, firstLeadingBit(-2147483647i)), -var_0.a.yx << (~vec2<u32>(43960u, 6497u) % vec2<u32>(32u))), -global0[_wgslsmith_index_u32(4294967295u, 13u)]));
    return 55706u;
}

fn func_4(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_div_vec4_i32(~vec4<i32>(1i & u_input.a, ~u_input.a, -2147483647i, u_input.a), abs(-vec4<i32>(-15572i, u_input.e.x, u_input.e.x, 2147483647i))), ~select(vec2<u32>(_wgslsmith_sub_u32(0u, u_input.b), arg_0.x), _wgslsmith_clamp_vec2_u32(~arg_0.yy, _wgslsmith_add_vec2_u32(arg_0.xz, arg_0.zz), select(arg_0.xy, arg_0.zz, vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(false, true))), abs(_wgslsmith_add_u32(arg_0.x, u_input.b)));
    let var_1 = _wgslsmith_div_i32(-15733i, abs(~u_input.a));
    var var_2 = ~var_0.c;
    var var_3 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(var_1, 48865i), var_0.a.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.e.x, func_3(Struct_5(vec3<i32>(-1i, 0i, var_0.a.x), vec4<bool>(false, true, true, false), Struct_3(var_0.a, vec2<u32>(4422u, var_0.c), 4294967295u), 328f), -1443f, vec4<bool>(true, true, true, true), var_0).x), var_1));
    var var_4 = Struct_1(reverseBits(vec3<i32>(-1933i, ~(-39830i), max(var_0.a.x, var_0.a.x))) & _wgslsmith_add_vec3_i32(var_0.a.yxx, func_3(Struct_5(var_0.a.zxx, vec4<bool>(true, false, true, false), var_0, 239f), _wgslsmith_f_op_f32(select(952f, 1290f, false)), vec4<bool>(true, true, true, true), Struct_3(var_0.a, var_0.b, 66545u))));
    return var_0;
}

fn func_1() -> u32 {
    let var_0 = Struct_5(-abs(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 1i, 1i), vec3<i32>(10704i, -30855i, 2147483647i))), select(!select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false), func_4(vec3<u32>(func_2(~35299u, _wgslsmith_f_op_f32(min(-222f, -1000f)), ~u_input.d.x), firstLeadingBit(max(26366u, 12129u)), ~reverseBits(0u))), -547f);
    global0 = array<vec2<i32>, 13>();
    let var_1 = -40754i;
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(var_0.c.a.yyx, var_0.a)), Struct_1(func_3(var_0, var_0.d, var_0.b, var_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d))) * -1958f), !(_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(sign(618f))) != _wgslsmith_f_op_f32(sign(-556f))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(598f - var_2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-209f, _wgslsmith_div_f32(var_0.d, var_0.d)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.c, _wgslsmith_f_op_f32(sign(-301f)), false)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -675f)))), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.c)) - 1360f)));
    return 1u & _wgslsmith_add_u32(~1u, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 13>();
    let var_0 = vec2<bool>(true, true);
    global0 = array<vec2<i32>, 13>();
    let var_1 = u_input.b;
    global0 = array<vec2<i32>, 13>();
    var var_2 = vec4<u32>(countOneBits(~25868u), ~u_input.d.x, _wgslsmith_mod_u32(~var_1, _wgslsmith_div_u32(var_1, 7270u)), var_1 << (countOneBits(~firstTrailingBit(u_input.d.x)) % 32u));
    var_2 = ~vec4<u32>(var_1, ~var_1, ~(~firstLeadingBit(var_2.x)), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(-19437i, i32(-1i) * -u_input.c)), vec3<f32>(325f, -112f, 1511f));
}

