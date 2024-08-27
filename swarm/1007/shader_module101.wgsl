struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: f32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = arg_0.c;
    var_0 = arg_0.c;
    let var_1 = _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(65126u, 0u, 9040u, 4294967295u), vec4<u32>(78019u, 1u, 34266u, 40430u)), 92310u, var_0.c.a.x, ~var_0.a.a.x)), vec4<u32>(var_0.a.a.x, abs(0u ^ (var_0.a.a.x | u_input.c)), 1u, ~(13236u | u_input.d)));
    let var_2 = Struct_3(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), vec4<u32>(var_0.a.a.x, ~1u, _wgslsmith_clamp_u32(~(~4294967295u), 4294967295u, firstTrailingBit(87221u)), _wgslsmith_sub_u32(arg_0.b.x, u_input.a.x)), Struct_2(var_0.e, _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(15842i), -2147483647i, -var_0.d, var_0.d), _wgslsmith_mult_vec4_i32(vec4<i32>(91237i, var_0.d, 1i, var_0.d) >> (arg_0.b % vec4<u32>(32u)), reverseBits(vec4<i32>(7657i, 0i, 0i, u_input.b.x)))), Struct_1(reverseBits(vec3<u32>(var_1.x, 52645u, 25056u)), vec3<bool>(var_0.c.b.x, false, 80404u <= var_0.e.a.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.d.c)))), firstTrailingBit(_wgslsmith_div_i32(u_input.b.x, 26661i)) << ((1474u << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.a.x, arg_0.b.x, var_0.c.a.x, var_1.x), arg_0.b) % 32u)) % 32u), Struct_1(vec3<u32>(0u, 0u >> (var_1.x % 32u), ~1u), !(!var_0.c.b), vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.c.x + -972f), _wgslsmith_f_op_f32(1891f - var_0.c.c.x), var_0.e.c.x))), Struct_1(var_1.zzz | var_1.wyy, vec3<bool>(all(vec3<bool>(var_0.e.b.x, var_0.e.b.x, arg_0.c.c.b.x)), !arg_0.c.c.b.x, var_0.a.b.x), arg_0.d.c), 65304i);
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.c.x, arg_0.c.c.c.x, arg_0.d.c.x, var_0.e.c.x), vec4<f32>(286f, 139f, var_0.e.c.x, 370f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(800f, var_2.d.c.x, 979f, var_0.a.c.x), vec4<f32>(-1573f, -1919f, var_0.a.c.x, var_0.e.c.x))), vec4<bool>(true, var_2.d.b.x, var_0.a.b.x, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.d.c.x, var_0.e.c.x, -920f, -554f), vec4<f32>(arg_0.d.c.x, 622f, 625f, -937f), false))))))));
    return 830f;
}

fn func_2() -> vec3<bool> {
    var var_0 = select(vec3<bool>(true, true, true), !vec3<bool>(1000f <= _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.d, 10u)], 73870u)), true, !(17059u > u_input.d)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(142f, -1537f))))));
    var var_2 = Struct_4(u_input.a.x, -1i, _wgslsmith_sub_vec2_u32(~abs(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a)), reverseBits(u_input.a) ^ vec2<u32>(abs(u_input.c), 1u)), -_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(countOneBits(u_input.b.x), _wgslsmith_div_i32(u_input.b.x, u_input.b.x), ~u_input.b.x)));
    let var_3 = select(select(select(vec3<bool>(true, var_0.x, false), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(false, var_0.x, false), var_0.x), false), vec3<bool>(any(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, false), vec4<bool>(false, false, var_0.x, false))), all(!var_0.yz), any(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))), !((var_0.x && true) || (var_1.x <= var_1.x))), !vec3<bool>(select(false, 50081u <= var_2.a, false), !any(vec2<bool>(true, var_0.x)), !any(vec3<bool>(true, false, var_0.x))), var_0.x);
    var_0 = select(select(select(select(vec3<bool>(false, var_0.x, true), var_3, all(vec4<bool>(var_3.x, var_0.x, var_0.x, var_0.x))), !var_3, u_input.a.x < (0u | var_2.a)), select(var_3, select(vec3<bool>(true, var_0.x, var_0.x), select(var_3, var_3, var_3), var_3.x), all(select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, false), var_3.zx))), !var_3), vec3<bool>(var_3.x, false, !(!any(vec4<bool>(false, true, true, true)))), select(vec3<bool>(true, true, (var_0.x == false) == (var_2.a <= u_input.a.x)), vec3<bool>(any(!vec4<bool>(var_3.x, var_3.x, var_0.x, true)), var_0.x & var_3.x, any(vec4<bool>(var_3.x, false, var_3.x, var_3.x))), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, var_0.x, true), vec3<bool>(false, true, var_0.x)), var_3, !(!vec3<bool>(var_3.x, var_3.x, true)))));
    return select(vec3<bool>(var_3.x, true, true), !var_3, vec3<bool>(any(select(!vec4<bool>(false, var_0.x, var_0.x, var_3.x), !vec4<bool>(var_0.x, true, false, var_3.x), var_0.x)), any(!vec2<bool>(false, var_3.x)), false));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = vec4<f32>(1273f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(342f + 1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-783f - _wgslsmith_f_op_f32(1073f * -1548f))))), _wgslsmith_f_op_f32(floor(-1522f)));
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(~u_input.a.x, _wgslsmith_sub_u32(arg_2.x, 4294967295u), arg_2.x)), vec3<u32>(firstTrailingBit(~arg_2.x), arg_0.x, arg_0.x), arg_0 >> (vec3<u32>(u_input.c, 0u, arg_0.x) % vec3<u32>(32u))), select(!select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_3.x, arg_1, true), true), select(func_2(), vec3<bool>(arg_1, true, any(arg_3)), all(select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1), arg_3))), arg_1), var_0.xwz);
    let var_2 = vec4<bool>(any(func_2().zx), any(arg_3.yx), var_1.b.x, all(select(!(!vec4<bool>(true, arg_1, var_1.b.x, true)), vec4<bool>(any(var_1.b.xy), true, arg_3.x, true), !any(vec3<bool>(var_1.b.x, false, arg_3.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + var_1.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -728f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c.x + 1692f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(311f * -127f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.x), var_0.x, -495f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c.x)) * var_0.x))));
    var var_4 = all(!select(vec2<bool>(true, arg_1), vec2<bool>(var_2.x, true), arg_3.zz));
    return Struct_1(var_1.a, !var_2.wyx, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(940f, -943f, -987f) + vec3<f32>(1462f, var_0.x, -952f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(var_0.zyz, vec3<f32>(var_1.c.x, var_0.x, var_0.x), vec3<bool>(arg_1, true, false)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1401f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.x, var_1.c.x), var_1.c.x, true)), var_1.c.x))));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(53667i, 1i, arg_0, arg_0 >> (69508u % 32u)), vec4<i32>(abs(-u_input.b.x), -1i, i32(-1i) * -18480i, -16024i)));
    global0 = array<Struct_3, 10>();
    var var_1 = arg_1;
    var var_2 = func_4(vec3<u32>(~0u, _wgslsmith_sub_u32(~u_input.a.x, 42625u), ~_wgslsmith_sub_u32(1u, 0u)), arg_1, u_input.a, select(func_2(), select(select(select(vec3<bool>(true, true, arg_1), vec3<bool>(false, false, arg_1), arg_1), vec3<bool>(arg_1, true, true), true), !vec3<bool>(arg_1, arg_1, false), min(u_input.c, 4294967295u) >= _wgslsmith_mod_u32(u_input.c, u_input.a.x)), select(vec3<bool>(true, !arg_1, func_2().x), !vec3<bool>(arg_1, false, true), all(vec3<bool>(true, true, true)))));
    var var_3 = Struct_2(func_4(var_2.a, !all(!var_2.b), ~(~u_input.a), var_2.b), 47007i, Struct_1(~_wgslsmith_clamp_vec3_u32(var_2.a, var_2.a, vec3<u32>(var_2.a.x, 9218u, 4294967295u)) & var_2.a, vec3<bool>(!var_2.b.x | true, true, arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c * vec3<f32>(var_2.c.x, 1168f, var_2.c.x)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.c.x, var_2.c.x, 1000f), vec3<f32>(var_2.c.x, -875f, 779f)))) - vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(func_3(Struct_3(var_0.x, vec4<u32>(56059u, 1u, u_input.d, 24635u), Struct_2(Struct_1(vec3<u32>(u_input.a.x, 21234u, u_input.c), var_2.b, var_2.c), u_input.b.x, Struct_1(var_2.a, var_2.b, vec3<f32>(-326f, var_2.c.x, var_2.c.x)), u_input.b.x, Struct_1(vec3<u32>(u_input.c, 26710u, u_input.c), vec3<bool>(var_2.b.x, false, true), vec3<f32>(var_2.c.x, 1000f, var_2.c.x))), Struct_1(var_2.a, vec3<bool>(arg_1, true, true), var_2.c), -24000i), 1u)), _wgslsmith_f_op_f32(-247f - var_2.c.x)))), ~(i32(-1i) * -2147483647i), func_4(firstTrailingBit(var_2.a << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, var_2.a.x, var_2.a.x), var_2.a) % vec3<u32>(32u))), true, select(_wgslsmith_clamp_vec2_u32(var_2.a.zy ^ u_input.a, ~vec2<u32>(54617u, 41917u), ~vec2<u32>(59738u, u_input.c)), select(select(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(false, true)), var_2.a.yz, u_input.b.x >= var_0.x), !var_2.b.zy), !vec3<bool>(var_2.b.x, false, func_2().x)));
    return Struct_1(select(_wgslsmith_mult_vec3_u32(vec3<u32>(~8433u, _wgslsmith_mult_u32(1u, var_3.e.a.x), _wgslsmith_mod_u32(0u, 1u)), var_2.a << (var_3.e.a % vec3<u32>(32u))), vec3<u32>(4294967295u, var_2.a.x, 0u), var_2.b), vec3<bool>(false, arg_1, var_3.a.b.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1576f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(121f, var_3.c.c.x)) * 491f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_3.c.c, var_2.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.c.x, var_2.c.x, 2169f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec2<i32>) -> f32 {
    global0 = array<Struct_3, 10>();
    var var_0 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_3.x, arg_3.x, arg_3.x), vec4<i32>(arg_3.x, u_input.b.x, 0i, u_input.b.x))), vec4<i32>(firstTrailingBit(arg_3.x), ~arg_3.x, u_input.b.x, -arg_3.x)), max(-(vec4<i32>(u_input.b.x, arg_3.x, -2147483647i, -39153i) ^ vec4<i32>(arg_3.x, -2147483647i, 0i, u_input.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, arg_3.x, -2147483647i, u_input.b.x) >> (vec4<u32>(arg_2.x, 48152u, 859u, u_input.c) % vec4<u32>(32u)), -vec4<i32>(-61716i, u_input.b.x, arg_3.x, u_input.b.x))), abs((vec4<i32>(arg_3.x, -1i, u_input.b.x, -4811i) | vec4<i32>(33605i, arg_3.x, 35574i, u_input.b.x)) ^ select(vec4<i32>(36139i, 8687i, -2147483647i, u_input.b.x), vec4<i32>(arg_3.x, -2147483647i, 1i, 602i), arg_0.b.x)));
    let var_1 = Struct_1(~(~arg_2.www), vec3<bool>(true, any(arg_0.b.xy), arg_0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1179f, 1402f, -345f) * vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x))), vec3<f32>(_wgslsmith_f_op_f32(ceil(355f)), arg_0.c.x, _wgslsmith_f_op_f32(sign(-540f))), !arg_0.b.x))));
    var var_2 = ~(_wgslsmith_mod_vec2_i32(arg_3, select(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, arg_3.x), vec2<i32>(1i, 1i)), vec2<i32>(u_input.b.x, 28078i), func_2().x)) << (~arg_0.a.xz % vec2<u32>(32u)));
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(16466u, _wgslsmith_div_u32(u_input.c, min(arg_1.x, _wgslsmith_dot_vec2_u32(arg_0.a.xy, arg_1))), 0u), 10u)];
    return 645f;
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: vec2<u32>) -> vec3<u32> {
    let var_0 = -12493i;
    let var_1 = arg_0;
    global0 = array<Struct_3, 10>();
    var var_2 = Struct_2(func_4(select(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a.x, u_input.d, u_input.c), vec3<u32>(arg_3.x, arg_3.x, arg_3.x), vec3<bool>(true, false, arg_1)), vec3<u32>(arg_3.x, 160449u, u_input.d)), vec3<u32>(~19738u, abs(29805u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 4294967295u, 47718u, 21684u), vec4<u32>(arg_3.x, 15433u, 1u, 7788u))), vec3<bool>(false, true, arg_1 && true)), ~4294967295u == _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 75831u, arg_3.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 14287u, 21128u), vec3<u32>(4294967295u, 23936u, u_input.d))), reverseBits(firstTrailingBit(vec2<u32>(4294967295u, u_input.c)) & _wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(49469u, 4294967295u))), func_1(_wgslsmith_mult_i32(arg_2, -var_0), arg_1).b), ~(reverseBits(-15468i >> (1u % 32u)) >> (u_input.a.x % 32u)), func_1(~_wgslsmith_dot_vec2_i32(abs(u_input.b.zx), u_input.b.xz), all(vec2<bool>(arg_1, arg_1))), firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(0i, u_input.b.x), select(-1i, -32445i, false)), _wgslsmith_mult_i32(u_input.b.x, 9132i) | (-2147483647i >> (u_input.d % 32u)), _wgslsmith_mod_i32(u_input.b.x, -9824i) >> (~0u % 32u))), func_4(~select(~vec3<u32>(61345u, arg_3.x, 0u), vec3<u32>(u_input.c, 37010u, 0u), !vec3<bool>(arg_1, false, arg_1)), true, arg_3, vec3<bool>(arg_1, false, false)));
    let var_3 = select(var_2.c.b.zx, func_4(vec3<u32>(12531u, ~(58920u ^ u_input.d), 26836u), false, arg_3, vec3<bool>((arg_1 == false) && false, !(false && arg_1), true)).b.xz, var_2.c.b.yz);
    return ~countOneBits(var_2.a.a >> (~func_4(var_2.e.a, false, arg_3, var_2.e.b).a % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(912i, true), vec2<u32>(u_input.c, 68447u), abs(vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, 1u)), -vec2<i32>(u_input.b.x, u_input.b.x))) - -1470f), true, _wgslsmith_dot_vec4_i32(vec4<i32>(-30941i, _wgslsmith_add_i32(-1i, u_input.b.x), 1854i, firstLeadingBit(2666i)), vec4<i32>(u_input.b.x, -1i, 5580i, -37661i) & countOneBits(vec4<i32>(u_input.b.x, 15618i, -43295i, -38055i))), ~(~vec2<u32>(4294967295u, u_input.d) ^ select(u_input.a, vec2<u32>(u_input.c, u_input.d), false))), !func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(-1000f, 1078f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-796f)), _wgslsmith_f_op_f32(f32(-1f) * -2669f))), 1f)));
    global1 = var_0.c.x;
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    global1 = var_0.c.x;
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1790f), 133f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.zz - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(923f, 179f), var_0.c.yy))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.c.zy))))), firstTrailingBit(~((var_0.a.x >> (u_input.d % 32u)) ^ 4294967295u)), ~(-(~countOneBits(u_input.b.x))));
}

