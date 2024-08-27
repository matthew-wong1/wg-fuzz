struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - -173f);
    let var_2 = var_1;
    global0 = u_input.b.x;
    global0 = ~(-47408i);
    return 1804f;
}

fn func_2() -> i32 {
    let var_0 = firstTrailingBit(vec2<i32>(u_input.e, firstLeadingBit(-2147483647i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1362f, _wgslsmith_f_op_f32(trunc(-2142f)), all(vec3<bool>(true, true, false)))), 1564f, -369f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(861f, -713f, -792f) - vec3<f32>(-587f, -1351f, 365f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-472f, 577f, 1182f), vec3<f32>(-1019f, -126f, -2141f)))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1097f, 163f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-602f, -965f, -997f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(388f, 1096f, 912f))), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))))), vec3<f32>(_wgslsmith_f_op_f32(func_3(true)), 1000f, _wgslsmith_f_op_f32(floor(-678f))))));
    var var_2 = 4294967295u;
    let var_3 = vec2<bool>(15689u <= u_input.c.x, true);
    var var_4 = select(select(!vec3<bool>(var_3.x, all(vec3<bool>(var_3.x, var_3.x, true)), var_3.x || true), select(!vec3<bool>(var_3.x, var_3.x, var_3.x), select(select(vec3<bool>(false, false, var_3.x), vec3<bool>(var_3.x, true, var_3.x), var_3.x), select(vec3<bool>(true, true, var_3.x), vec3<bool>(false, var_3.x, false), var_3.x), select(vec3<bool>(false, false, var_3.x), vec3<bool>(var_3.x, false, false), var_3.x)), false), !select(!vec3<bool>(var_3.x, false, true), select(vec3<bool>(true, var_3.x, true), vec3<bool>(false, false, var_3.x), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false))), vec3<bool>(all(select(!var_3, select(var_3, vec2<bool>(var_3.x, false), var_3.x), var_3.x)), _wgslsmith_mult_i32(1i | var_0.x, -64111i) <= -2147483647i, false), !(!vec3<bool>(!var_3.x, false, true)));
    return max(abs(_wgslsmith_mult_i32(max(3533i, _wgslsmith_add_i32(var_0.x, var_0.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0, vec2<i32>(1683i, -2147483647i)), u_input.e, i32(-1i) * -2147483647i))), -49916i);
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: bool, arg_3: vec4<i32>) -> Struct_3 {
    global0 = 0i;
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1357f, _wgslsmith_div_f32(1051f, -583f))))));
    var var_2 = u_input.c.x;
    var var_3 = true;
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1, vec2<f32>(-1232f, _wgslsmith_div_f32(730f, -540f)), true)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -645f) + vec2<f32>(var_1.x, var_1.x))))), Struct_1(select(arg_3.wzz, select(_wgslsmith_add_vec3_i32(arg_3.xzx, arg_3.ywy), arg_3.xxx, u_input.d < 0u), (u_input.a << (arg_0.x % 32u)) <= 30255i), ~(~arg_0.x) > abs(~u_input.d), i32(-1i) * -1i, 1u), ~_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(u_input.d, ~23113u, abs(1u), ~u_input.c.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3) -> vec4<i32> {
    global0 = arg_2.b.c;
    let var_0 = _wgslsmith_f_op_f32(func_3(func_4(~(~vec3<u32>(3474u, arg_0.d, u_input.d) ^ reverseBits(arg_2.c.yzy)), !(arg_2.b.b || true), false, vec4<i32>(arg_0.a.x, firstTrailingBit(1i), arg_0.c, arg_0.c | -2147483647i) << (vec4<u32>(countOneBits(10494u), _wgslsmith_sub_u32(arg_0.d, 0u), arg_2.b.d, arg_0.d) % vec4<u32>(32u))).b.b));
    var var_1 = !all(select(!select(vec2<bool>(arg_2.b.b, arg_2.b.b), vec2<bool>(arg_2.b.b, arg_0.b), arg_0.b), select(select(vec2<bool>(true, arg_2.b.b), vec2<bool>(false, arg_0.b), vec2<bool>(false, true)), vec2<bool>(false, false), false), select(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_2.b.b, true), false), vec2<bool>(true, false), vec2<bool>(true, arg_2.b.b))));
    let var_2 = select(!(!vec2<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, arg_0.b, arg_2.b.b, false)))), vec2<bool>(!arg_0.b & true, true), all(!(!vec3<bool>(arg_2.b.b, arg_2.b.b, arg_2.b.b))));
    var var_3 = arg_2.b.b;
    return -_wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_clamp_i32(-56385i, -4746i, -90968i), func_2(), -2147483647i, arg_2.b.a.x), abs(-vec4<i32>(u_input.e, arg_0.c, arg_0.c, -2147483647i)) | ~(vec4<i32>(arg_2.b.c, arg_2.b.c, arg_0.a.x, u_input.a) << (vec4<u32>(arg_0.d, 1u, 6303u, u_input.d) % vec4<u32>(32u))));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = select(arg_1.yy, arg_1.zy, arg_1.x != (true | (true && all(vec4<bool>(false, arg_1.x, false, arg_1.x)))));
    let var_1 = func_4(~(~select(u_input.c.wxz << (u_input.c.xyx % vec3<u32>(32u)), abs(u_input.c.xxx), false)), !(!(arg_1.x & true)), select(_wgslsmith_div_i32(u_input.b.x, func_2()) <= _wgslsmith_add_i32(abs(arg_0.x), ~u_input.a), false, false), arg_0).b;
    let var_2 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1.x && true)) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-234f, -945f)), 1235f), -1000f)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(f32(-1f) * -516f));
    var var_4 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.c.x, u_input.d)), select(u_input.c.xw, u_input.c.ww, var_1.b)), u_input.c.yw, vec2<u32>(~33903u, ~0u)) >> (vec2<u32>(_wgslsmith_mod_u32(var_1.d, _wgslsmith_mod_u32(~6395u, _wgslsmith_mult_u32(var_1.d, u_input.d))), _wgslsmith_dot_vec2_u32(~vec2<u32>(8616u, 1u), func_4(abs(u_input.c.zzy), true, 37136u <= var_1.d, _wgslsmith_clamp_vec4_i32(arg_0, arg_0, arg_0)).c.ww)) % vec2<u32>(32u));
    return Struct_1(arg_0.wwy | vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 2147483647i, arg_0.x), var_1.a), -u_input.e, min(min(30641i, var_1.a.x), ~var_1.a.x)), var_1.b, -arg_0.x, ~var_4.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    var var_0 = func_6(func_5(arg_0, vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) - _wgslsmith_f_op_f32(round(217f))), 1000f), func_4(~firstLeadingBit(u_input.c.zzz), arg_2.x >= 2147483647i, true, vec4<i32>(i32(-1i) * -1i, max(arg_0.c, 50215i), u_input.b.x << (67595u % 32u), func_2()))), !select(vec3<bool>(true, false, all(vec3<bool>(arg_0.b, arg_0.b, arg_0.b))), select(!vec3<bool>(arg_0.b, arg_0.b, true), vec3<bool>(true, false, arg_0.b), select(vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(false, arg_0.b, arg_0.b), false)), vec3<bool>(any(vec3<bool>(arg_0.b, arg_0.b, true)), arg_0.b & arg_0.b, !arg_0.b)));
    var var_1 = -arg_2;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(547f - 945f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1127f, arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.x, -272f)) - -1000f), arg_1.a.x)));
    var var_3 = ~(~60264u);
    var var_4 = countOneBits(~vec2<u32>(_wgslsmith_mult_u32(arg_0.d, 1u << (0u % 32u)), reverseBits(u_input.c.x & 4294967295u)));
    return _wgslsmith_div_u32(4294967295u, countOneBits(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-138f, -239f), vec2<f32>(546f, -1000f), vec2<bool>(true, false))), vec2<f32>(-199f, 1000f))))), Struct_1(vec3<i32>(-1i) * -(~vec3<i32>(u_input.e, u_input.e, u_input.a)), true, 25983i, u_input.d), vec4<u32>(u_input.c.x, ~firstTrailingBit(~u_input.d), 126350u, 8955u));
    let var_1 = !vec2<bool>(!any(!vec4<bool>(true, var_0.b.b, false, var_0.b.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))) == var_0.a.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(-687f)), _wgslsmith_f_op_f32(307f - var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -302f), _wgslsmith_f_op_f32(var_0.a.x + -1000f)))))));
    let var_3 = _wgslsmith_clamp_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(~0u, u_input.c.x, ~0u, func_1(var_0.b, Struct_2(var_2.a), vec2<i32>(u_input.b.x, 23177i))))), var_0.c, _wgslsmith_add_vec4_u32(u_input.c, _wgslsmith_add_vec4_u32(vec4<u32>(11000u, var_0.b.d, ~0u, _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(var_0.b.d, u_input.c.x, var_0.c.x, u_input.d))), abs(_wgslsmith_div_vec4_u32(var_0.c, vec4<u32>(1u, u_input.d, 0u, 0u))))));
    global0 = _wgslsmith_dot_vec4_i32(func_5(func_4(var_3.wwy, var_1.x || var_0.b.b, var_0.b.b, vec4<i32>(-2147483647i, 1i, u_input.e, -14721i)).b, vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x + -1693f), var_2.a.x, var_0.a.x), func_4(vec3<u32>(u_input.d, u_input.d, 76379u), true, func_4(vec3<u32>(u_input.c.x, var_0.b.d, 52312u), var_0.b.b, var_0.b.b, vec4<i32>(var_0.b.c, u_input.a, 6927i, 53745i)).b.b, firstLeadingBit(vec4<i32>(-38211i, u_input.e, -2147483647i, -2147483647i)))), func_5(Struct_1(select(var_0.b.a, vec3<i32>(2147483647i, var_0.b.a.x, 1i), var_0.b.b), !var_0.b.b, _wgslsmith_mod_i32(var_0.b.a.x, u_input.e), u_input.c.x), var_2.a.yxz, func_4(~vec3<u32>(var_0.c.x, var_0.b.d, 0u), true, true, vec4<i32>(-2147483647i, -1i, -1i, var_0.b.a.x) >> (vec4<u32>(1u, 25863u, u_input.d, 21310u) % vec4<u32>(32u))))) & ~u_input.b.x;
    let var_4 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c.yy, var_3.zw), func_4(vec3<u32>(4294967295u, _wgslsmith_sub_u32(~24052u, ~var_0.b.d), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.c.yzw, var_3.wxx), ~vec3<u32>(var_0.b.d, var_3.x, u_input.d))), var_0.b.b && func_6(vec4<i32>(59887i, u_input.a, var_0.b.c, var_0.b.a.x), !vec3<bool>(var_0.b.b, false, var_0.b.b)).b, var_1.x, vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -44886i, var_0.b.a.x), 53120i, 2147483647i, -22567i)).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~_wgslsmith_sub_u32(48484u, var_3.x | var_3.x), var_4), ((select(vec4<u32>(0u, 1u, 79598u, var_4), vec4<u32>(5810u, var_0.b.d, var_4, 57540u), var_0.b.b) & u_input.c) >> (countOneBits(~u_input.c) % vec4<u32>(32u))) >> ((vec4<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(var_4, 37791u, var_4, 49192u)), 1u, _wgslsmith_dot_vec2_u32(var_0.c.xx, vec2<u32>(var_4, 68956u))) << (((u_input.c & u_input.c) << (vec4<u32>(4294967295u, var_3.x, var_0.b.d, var_4) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(4294967295u, abs(var_4))), func_6(~vec4<i32>(44589i, 0i, 2147483647i, -20987i) << (reverseBits(u_input.c) % vec4<u32>(32u)), vec3<bool>(var_0.b.b != true, true, var_1.x)).d, max(~(~var_3.x), 10740u), ~0u), _wgslsmith_mod_i32(1i, u_input.a), vec2<i32>(u_input.b.x, u_input.a));
}

