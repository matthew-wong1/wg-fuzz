struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25>;

var<private> global1: Struct_4 = Struct_4(774f, -611f, 17870u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    let var_0 = ~vec4<u32>(u_input.c, global1.c, u_input.c, global1.c);
    let var_1 = firstLeadingBit(-reverseBits(u_input.b));
    var var_2 = true;
    return global1.a;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    let var_0 = false;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a - -1201f))), u_input.c);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-323f, 333f) + -966f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1086f, var_1.a)), var_1.a)) * -548f))), -1000f);
    var_1 = Struct_4(_wgslsmith_f_op_f32(global1.a + -983f), 657f, u_input.c);
    global0 = array<vec2<f32>, 25>();
    return -41645i;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32) -> Struct_3 {
    let var_0 = -_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_0.a.c.x, func_2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.a.b.x, -706f), vec2<f32>(747f, -358f)))), abs(firstLeadingBit(-u_input.b)));
    global1 = Struct_4(_wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1725f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))), 1u);
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(var_1.a.b.x + var_1.e.x))) + -231f), -989f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.a.a.a)))), 106f), var_1.a.b));
    let var_3 = ~vec3<u32>(var_1.d, _wgslsmith_mult_u32(u_input.a.x, var_1.d), ~(~4294967295u)) << (~vec3<u32>(14331u, _wgslsmith_mod_u32(global1.c, 7921u) >> (var_1.d % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a), u_input.a)) % vec3<u32>(32u));
    return Struct_3(Struct_2(arg_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-492f, 567f)) * -1153f)), select(min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 2147483647i), var_1.c), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.c.x, arg_0.a.c.x, 45375i), var_1.c)), arg_0.a.c, vec3<bool>(true, true, true)), abs(6288u), var_1.a.b));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = 4294967295u;
    global1 = Struct_4(-1375f, arg_1.a.e.x, ~(~arg_1.a.d));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(32746u, 0u), 25u)]));
    var_0 = ~countOneBits(_wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), u_input.a.x | arg_1.a.d)) ^ (_wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_1.a.d, 1u, global1.c, u_input.a.x) ^ vec4<u32>(0u, 1u, arg_1.a.d, u_input.a.x)), countOneBits(vec4<u32>(4294967295u, 1u, 46865u, 38496u))) << (u_input.c % 32u));
    var_0 = abs(_wgslsmith_mod_u32(arg_1.a.d, _wgslsmith_div_u32(34721u, u_input.c)) & _wgslsmith_add_u32(~(~global1.c), func_1(Struct_3(Struct_2(Struct_1(global1.a, arg_1.a.a.b), arg_1.a.b, arg_1.a.c, 2257u, vec4<f32>(-266f, var_1.x, -2250f, 1054f))), vec3<i32>(0i, u_input.b, -2147483647i), ~u_input.a.x).a.d));
    return arg_1.a.a;
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = (2147483647i | _wgslsmith_clamp_i32(~(1i >> (arg_0.d % 32u)), u_input.b, _wgslsmith_mult_i32(~9668i, -u_input.b))) | func_1(Struct_3(Struct_2(arg_0.a, _wgslsmith_div_f32(arg_0.a.a, 1259f), _wgslsmith_mult_vec3_i32(arg_0.c, vec3<i32>(arg_0.c.x, u_input.b, 56069i)), _wgslsmith_div_u32(arg_0.d, 6157u), _wgslsmith_f_op_vec4_f32(arg_0.a.b - arg_0.a.b))), arg_0.c, u_input.a.x).a.c.x;
    let var_1 = func_1(func_1(Struct_3(func_1(Struct_3(Struct_2(Struct_1(-615f, arg_0.e), -294f, arg_0.c, 1u, arg_0.a.b)), -arg_0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 20745u, 44740u), vec3<u32>(u_input.a.x, 24111u, 92340u))).a), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.b, u_input.b), min(vec3<i32>(arg_0.c.x, -2147483647i, 51596i), vec3<i32>(2147483647i, arg_0.c.x, -1i)) ^ vec3<i32>(u_input.b, u_input.b, 2147483647i)), 4294967295u), vec3<i32>(arg_0.c.x, ~(-arg_0.c.x << (_wgslsmith_mod_u32(global1.c, 0u) % 32u)), ~(-2147483647i)), ~25839u);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(568f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.a.b))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.a.a)))), _wgslsmith_f_op_f32(func_1(func_1(var_1, ~var_1.a.c, abs(arg_0.d)), vec3<i32>(u_input.b, -2147483647i, -u_input.b), u_input.c).a.e.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2362f - var_1.a.a.a), _wgslsmith_f_op_f32(-arg_0.a.a), true)) - var_1.a.e.x)));
    global0 = array<vec2<f32>, 25>();
    var var_3 = func_1(func_1(Struct_3(var_1.a), vec3<i32>(1i >> (_wgslsmith_div_u32(54898u, global1.c) % 32u), abs(-arg_0.c.x), -var_1.a.c.x), ~(~39638u)), var_1.a.c, 4294967295u << (_wgslsmith_mult_u32(0u, _wgslsmith_div_u32(arg_0.d, var_1.a.d)) % 32u)).a.a.b.zw;
    return max(abs(24193i), arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(func_5(Struct_2(func_4(u_input.b, func_1(Struct_3(Struct_2(Struct_1(-125f, vec4<f32>(global1.a, -1419f, 1000f, global1.b)), -226f, vec3<i32>(5170i, -2147483647i, u_input.b), 4294967295u, vec4<f32>(-607f, 387f, 1040f, 836f))), vec3<i32>(-1i, u_input.b, 4543i), 0u)), func_1(Struct_3(Struct_2(Struct_1(global1.b, vec4<f32>(-523f, global1.a, -1687f, 324f)), global1.a, vec3<i32>(u_input.b, -23832i, u_input.b), 34933u, vec4<f32>(-960f, global1.b, 1583f, global1.b))), vec3<i32>(19572i, 65425i, u_input.b) | vec3<i32>(-11493i, 0i, 2545i), countOneBits(u_input.c)).a.a.b.x, select(min(vec3<i32>(74212i, -28808i, u_input.b), vec3<i32>(u_input.b, 2147483647i, u_input.b)), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 26599i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), true), _wgslsmith_sub_u32(u_input.a.x, global1.c), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-948f, global1.a, 640f, -1000f), vec4<f32>(-148f, global1.b, -1473f, global1.a), false)))))), -13630i);
    let var_1 = -var_0.x;
    var var_2 = true;
    let var_3 = _wgslsmith_sub_vec2_i32(max(-vec2<i32>(-30500i, var_0.x), ~vec2<i32>(firstLeadingBit(-42958i), var_1)), ~var_0);
    var var_4 = select(select(vec3<bool>(!any(vec2<bool>(true, false)), !all(vec2<bool>(true, true)), false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), !(_wgslsmith_add_u32(1u, u_input.a.x) != _wgslsmith_div_u32(firstTrailingBit(0u), func_1(Struct_3(Struct_2(Struct_1(global1.a, vec4<f32>(643f, global1.a, global1.a, 276f)), global1.a, vec3<i32>(0i, var_0.x, u_input.b), global1.c, vec4<f32>(-430f, global1.b, 272f, global1.a))), vec3<i32>(0i, 47064i, var_3.x), 29732u).a.d)));
    let var_5 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(997f * global1.b), _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, global1.a, global1.b) * vec4<f32>(global1.a, -240f, global1.a, global1.a))), 167f, vec3<i32>(-49153i, ~u_input.b ^ (u_input.b << (38015u % 32u)), -(var_0.x | var_3.x)), 1u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1498f, -1868f, -1424f, -359f), vec4<f32>(global1.b, global1.a, -587f, global1.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_3.x, 0i), var_1), abs(_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(2147483647i, u_input.b), max(8412i, var_0.x) >> (~4294967295u % 32u), -18225i)), _wgslsmith_f_op_f32(floor(global1.a)));
}

