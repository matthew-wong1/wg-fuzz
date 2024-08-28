struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(2147483647i, vec3<u32>(0u, 59743u, 1190u), 451f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: bool, arg_3: vec2<i32>) -> bool {
    var var_0 = arg_2;
    global0 = array<Struct_1, 20>();
    global2 = array<Struct_1, 1>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 20u)];
    var var_2 = i32(-1i) * -11673i;
    return !all(select(!(!vec4<bool>(true, false, arg_2, true)), !select(vec4<bool>(true, false, false, arg_2), vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(arg_2, false, arg_2, false)), select(vec4<bool>(arg_2, false, arg_2, false), select(vec4<bool>(arg_2, true, arg_2, true), vec4<bool>(true, true, arg_2, false), arg_2), !vec4<bool>(arg_2, true, true, false))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~arg_1, vec4<u32>(arg_1.x, u_input.b.x, arg_1.x, u_input.b.x)), 20u)];
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1003f))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-var_0.c)), -1858f));
    var var_1 = vec2<bool>(!(!func_3(~vec2<i32>(-10885i, 0i), 942f, true, ~vec2<i32>(-1i, 24288i))), true);
    var_1 = select(vec2<bool>(true | var_1.x, !(true & var_1.x)), vec2<bool>(all(vec3<bool>(var_1.x, true, any(vec2<bool>(true, var_1.x)))), -231f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 1108f))), select(!(!select(vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, false))), !vec2<bool>(var_1.x, false), vec2<bool>(all(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), true)));
    return Struct_1(-2147483647i, var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(375f, var_0.c), _wgslsmith_div_f32(1554f, -1010f))), _wgslsmith_f_op_f32(151f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(802f)), -1410f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec4<i32> {
    var var_0 = u_input.b.x;
    var_0 = u_input.b.x;
    let var_1 = all(!vec2<bool>(true, any(vec2<bool>(arg_2, false))));
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(trunc(-386f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-486f - arg_1)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_1, 1461f, -1135f) + vec4<f32>(-358f, arg_1, arg_1, arg_1)))))), _wgslsmith_div_vec4_u32(vec4<u32>(~25193u, firstTrailingBit(4294967295u), 1u, abs(u_input.b.x)) & _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.b.x, 0u, 1u, arg_0.b.x)), firstTrailingBit(vec4<u32>(arg_0.b.x, u_input.b.x, arg_0.b.x, 17594u))), vec4<u32>(_wgslsmith_mod_u32(max(u_input.b.x, u_input.b.x), ~4294967295u), _wgslsmith_mod_u32(min(4294967295u, 4294967295u), reverseBits(arg_0.b.x)), ~max(0u, arg_0.b.x), _wgslsmith_dot_vec3_u32(select(arg_0.b, arg_0.b, vec3<bool>(true, var_1, var_1)), ~vec3<u32>(u_input.b.x, u_input.b.x, 85064u)))));
    var_0 = ~func_2(vec4<f32>(arg_1, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - -1574f)), 236f), ~vec4<u32>(_wgslsmith_clamp_u32(90757u, 67075u, 0u), ~u_input.b.x, ~7568u, ~arg_0.b.x)).b.x;
    return vec4<i32>(max(arg_0.a, reverseBits(u_input.a)), _wgslsmith_sub_i32(var_2.a, -abs(_wgslsmith_clamp_i32(var_2.a, u_input.a, u_input.a))), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_0.a, firstTrailingBit(-38199i), 1i, u_input.a << (u_input.b.x % 32u))), firstLeadingBit(vec4<i32>(func_2(vec4<f32>(var_2.c, 516f, arg_0.c, -1000f), vec4<u32>(u_input.b.x, 20756u, var_2.b.x, 0u)).a, abs(u_input.a), _wgslsmith_div_i32(66226i, 2147483647i), ~2147483647i))), _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(var_2.a, 27183i, var_2.a, -75923i)), vec4<i32>(-2147483647i << (_wgslsmith_dot_vec2_u32(u_input.b.zz, arg_0.b.xx) % 32u), -4296i, arg_0.a, -26363i)));
}

fn func_1() -> vec4<i32> {
    let var_0 = -478f;
    return select(firstTrailingBit(firstLeadingBit(func_4(func_2(vec4<f32>(-1000f, var_0, -343f, var_0), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(trunc(var_0)), all(vec4<bool>(true, false, true, true))))), vec4<i32>(u_input.a, 14062i << (0u % 32u), -(~u_input.a), 1i), ((1u >= ~u_input.b.x) && all(vec4<bool>(true, true, true, true))) & all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 1>();
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, -19733i, u_input.a, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 32486i, u_input.a, u_input.a), vec4<i32>(u_input.a, 459i, u_input.a, u_input.a))), vec4<i32>(min(u_input.a, u_input.a), i32(-1i) * -10002i, ~u_input.a, 16762i << (0u % 32u))), vec4<i32>(u_input.a, _wgslsmith_mult_i32(~u_input.a, u_input.a), ~(1153i << (u_input.b.x % 32u)), max(_wgslsmith_div_i32(-2147483647i, u_input.a), i32(-1i) * -19380i))) | select(func_1(), abs(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-25668i, 0i, u_input.a, -2147483647i), vec4<i32>(-19949i, 14912i, u_input.a, u_input.a)), vec4<i32>(u_input.a, -6907i, u_input.a, u_input.a) ^ vec4<i32>(-11221i, 2147483647i, u_input.a, u_input.a))), true);
    var_0 = ~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(-63927i, 2147483647i, u_input.a, var_0.x)), vec4<i32>(-1i, -u_input.a, 1i, _wgslsmith_mod_i32(0i, var_0.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), -var_0.xx), -(~0i), -1i, 10445i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-312f, 154f, -332f, 992f) * vec4<f32>(-249f, 1586f, 742f, -940f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2318f, -335f, -1213f, 726f))), vec4<u32>(_wgslsmith_sub_u32(1u, 0u), 8223u >> (u_input.b.x % 32u), u_input.b.x, 1u)).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(376f)) - 150f), _wgslsmith_div_f32(-591f, _wgslsmith_f_op_f32(f32(-1f) * -1203f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -753f)) - 1f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -312f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x)))));
    var_0 = vec4<i32>(-1i) * -select(~vec4<i32>(-35803i, 9447i, var_0.x, -1i), max(vec4<i32>(2147483647i, 1i, -1i, u_input.a), vec4<i32>(var_0.x, var_0.x, 2147483647i, 956i) ^ vec4<i32>(35398i, -762i, var_0.x, 23069i)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f) + _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-468f)), var_2)), ~vec3<i32>(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, -181f, var_1.x, var_1.x), vec4<f32>(1000f, var_2, -821f, -1864f), false)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 20565u, u_input.b.x, u_input.b.x), vec4<u32>(19717u, 34378u, u_input.b.x, u_input.b.x))).a, u_input.a, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, -76925i), var_0.zwz))), min(firstLeadingBit(abs(var_0.x)) << (0u % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(23503i, var_0.x, u_input.a), vec3<i32>(func_1().x, -1i, 2147483647i))), func_4(func_2(_wgslsmith_f_op_vec4_f32(-var_1), _wgslsmith_div_vec4_u32(vec4<u32>(40705u, 33551u, 18189u, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, 46963u, 39062u) % vec4<u32>(32u)), reverseBits(vec4<u32>(30734u, 80472u, u_input.b.x, 1u)))), -808f, ~(var_0.x & u_input.a) >= ~(-1i)).x, func_4(Struct_1(i32(-1i) * -u_input.a, (u_input.b << (vec3<u32>(24604u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) & reverseBits(u_input.b), -251f), 1f, false).x);
}

