struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<vec3<i32>, 8>;

var<private> global2: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)));
    global0 = array<Struct_1, 27>();
    var var_2 = max(~vec4<i32>(-10582i, _wgslsmith_div_i32(-27492i, ~arg_0.c.x), ~19791i, var_0.c.x), -vec4<i32>(_wgslsmith_sub_i32(arg_0.c.x & 20115i, arg_0.c.x), -5386i, _wgslsmith_mod_i32(min(arg_0.c.x, -1i), ~2147483647i), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-9199i, arg_0.c.x)), var_0.c)));
    var var_3 = var_0.b;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_0.a)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = !vec2<bool>(true, (_wgslsmith_f_op_f32(-arg_0.a.x) >= _wgslsmith_f_op_f32(f32(-1f) * -2015f)) | (false && any(vec3<bool>(false, false, false))));
    global0 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(203f, arg_0.a.x, arg_0.b.a.x, 772f))))))));
    var var_2 = 487f;
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3(arg_0, -42180i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -1153f)))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-314f, var_1.x, var_1.x, var_1.x)))))), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, 1711u, u_input.b.x, 4294967295u)), _wgslsmith_sub_u32(0u, u_input.a.x)) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x & u_input.a.x, _wgslsmith_sub_u32(u_input.b.x, 0u)), ~(~0u)) % 32u), 27u)], select(~(-vec2<i32>(-8118i, arg_0.c.x)) | arg_0.c, vec2<i32>(i32(-1i) * -12592i, 2147483647i), true));
    return 1u >> (0u % 32u);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(abs(arg_2.c.x) ^ countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.c.x, arg_2.c.x, -1i, 0i), vec4<i32>(arg_1, 1i, -26124i, var_0.b.c.x))), var_0.b.c.x, reverseBits(-1i)), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.c.x, -30302i, 26177i), reverseBits(global1[_wgslsmith_index_u32(var_0.a.x, 8u)])), var_0.b.c.x, -arg_1 | abs(1302i)));
    global2 = _wgslsmith_sub_u32(~select(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), u_input.b.ww)), ~_wgslsmith_mult_u32(var_0.a.x, arg_0.a.x), true), 66024u);
    let var_2 = var_0.c;
    let var_3 = var_0.c.x;
    return Struct_2(var_0.b.a, Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.a.x, arg_2.a.x, arg_0.d.b.a.x, arg_2.a.x))))))), firstTrailingBit(firstLeadingBit(_wgslsmith_div_vec2_i32(abs(vec2<i32>(arg_0.b.c.x, -1i)), select(vec2<i32>(arg_0.d.c.x, -49230i), vec2<i32>(-21661i, -1i), arg_0.c)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true));
    global0 = array<Struct_1, 27>();
    global1 = array<vec3<i32>, 8>();
    let var_1 = func_4(Struct_3(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a | ~u_input.b.xxy, vec3<u32>(u_input.b.x, func_2(Struct_2(vec3<f32>(970f, arg_0.x, arg_0.x), Struct_1(vec4<f32>(arg_0.x, arg_0.x, 629f, 886f)), vec2<i32>(1i, -13334i))), 1u)), Struct_2(vec3<f32>(193f, _wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_0, Struct_1(vec4<f32>(-1325f, arg_0.x, -684f, -1000f)), vec2<i32>(-26405i, -1i)), 1i, arg_0.x, global0[_wgslsmith_index_u32(28434u, 27u)])).x, _wgslsmith_f_op_f32(-591f * arg_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1883f, 402f, arg_0.x) - vec4<f32>(901f, arg_0.x, arg_0.x, arg_0.x))), vec2<i32>(-1i, _wgslsmith_mod_i32(-59399i, 1i))), !select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), false), select(vec2<bool>(true, false), vec2<bool>(arg_1, false), vec2<bool>(arg_1, true)), all(vec3<bool>(false, arg_1, arg_1))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -587f, arg_0.x, -908f) * vec4<f32>(arg_0.x, -413f, 204f, 714f))), vec2<i32>(15106i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 4471i, -43901i), vec3<i32>(1i, -2147483647i, -33097i))))), 0i, Struct_2(arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], _wgslsmith_mod_vec2_i32(vec2<i32>(19628i, 0i), ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-19811i, 0i)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -883f, 1000f, -1919f) - vec4<f32>(arg_0.x, arg_0.x, 1502f, arg_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(503f, -1742f, -1379f, 1190f))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.x, 176f))), _wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.x))))), vec4<bool>(arg_1, true, true, all(vec2<bool>(arg_1, false))))));
    let var_2 = all(select(select(!vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(true, false, arg_1 && false, any(vec4<bool>(true, false, arg_1, arg_1))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, arg_1, true, true))), vec4<bool>(!any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(trunc(var_1.a.x)) <= _wgslsmith_f_op_f32(round(832f)), true, arg_1), vec4<bool>(true, true, true, true)));
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<f32>) -> StorageBuffer {
    var var_0 = arg_0;
    let var_1 = ~u_input.b.yzx;
    var var_2 = Struct_3(countOneBits(vec3<u32>(countOneBits(56362u), ~1u, abs(var_1.x))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_2.zyz * vec3<f32>(var_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x)), _wgslsmith_f_op_vec3_f32(-arg_2.ywx), true)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.b.a.wyx)) + vec3<f32>(1367f, -413f, arg_2.x))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1709f, -2576f, -666f) + var_0.a) * _wgslsmith_f_op_vec3_f32(-arg_0.a)), true).b, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, arg_0.c.x), var_0.c)), select(vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), all(vec4<bool>(false, false, true, false)) && any(vec2<bool>(false, false))), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), select(vec2<bool>(true, all(vec3<bool>(false, true, true))), vec2<bool>(arg_2.x <= -825f, any(vec3<bool>(true, true, true))), true)), Struct_2(_wgslsmith_f_op_vec3_f32(trunc(arg_2.xzx)), arg_0.b, _wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.c.x, var_0.c.x), vec2<i32>(-1i) * -vec2<i32>(arg_0.c.x, arg_0.c.x))));
    var var_3 = ~countOneBits(u_input.b << ((~vec4<u32>(10563u, 48856u, u_input.b.x, 55402u) ^ (u_input.b & u_input.b)) % vec4<u32>(32u)));
    let var_4 = select(select(!vec3<bool>(var_2.c.x, !var_2.c.x, select(var_2.c.x, var_2.c.x, var_2.c.x)), select(select(vec3<bool>(var_2.c.x, false, false), !vec3<bool>(var_2.c.x, true, false), var_3.x != 4294967295u), select(!vec3<bool>(var_2.c.x, true, true), vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x), select(vec3<bool>(false, true, var_2.c.x), vec3<bool>(var_2.c.x, var_2.c.x, true), true)), !(!vec3<bool>(var_2.c.x, false, false))), !select(vec3<bool>(false, var_2.c.x, var_2.c.x), select(vec3<bool>(true, false, var_2.c.x), vec3<bool>(var_2.c.x, false, var_2.c.x), false), vec3<bool>(var_2.c.x, var_2.c.x, false))), !vec3<bool>(false, all(vec2<bool>(true, var_2.c.x)), any(!vec3<bool>(false, var_2.c.x, false))), false);
    return StorageBuffer(select(~firstTrailingBit(vec3<u32>(u_input.a.x, arg_1.x, 4294967295u) >> (vec3<u32>(u_input.a.x, arg_1.x, 4294967295u) % vec3<u32>(32u))), arg_1, var_4), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.b.a.x), _wgslsmith_div_f32(arg_0.a.x, 842f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1161f), -867f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(353f, -1000f) * -909f)), -649f) * vec4<f32>(_wgslsmith_f_op_f32(-2202f * 125f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1843f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -152f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f))));
    let var_1 = true;
    let var_2 = 1u;
    let var_3 = 16631i;
    var var_4 = Struct_2(var_0.xyw, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~45864u, _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, 9786u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.b.x, u_input.b.x))), vec4<u32>(min(var_2, u_input.b.x), u_input.b.x, 26624u, ~u_input.a.x))), 27u)], ~reverseBits(-vec2<i32>(var_3, 1i)));
    let x = u_input.a;
    s_output = func_5(func_1(vec3<f32>(_wgslsmith_f_op_f32(-161f + _wgslsmith_f_op_f32(min(172f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1542f + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1232f))), var_0.x == var_4.b.a.x), firstLeadingBit(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(8159u, 0u, var_2)), ~u_input.a)) >> (vec3<u32>(24742u, ~(~18562u), _wgslsmith_mod_u32(34707u, firstTrailingBit(var_2))) % vec3<u32>(32u)), var_0);
}

