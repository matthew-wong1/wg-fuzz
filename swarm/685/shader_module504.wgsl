struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 528f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_4(vec3<i32>(12680i, 1i, -arg_1) >> (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(arg_2.a, vec3<u32>(14979u, arg_2.e.e, arg_2.e.e)), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 55685u, arg_0), arg_2.a)) % vec3<u32>(32u)), 1000f);
    var var_1 = arg_3;
    var_1 = Struct_4(arg_2.e.c.c, 287f);
    var var_2 = vec4<bool>(!select(select(false, arg_2.e.a.d, true), max(var_0.a.x, -15579i) != countOneBits(1i), true), any(select(!select(vec3<bool>(arg_2.e.c.d, true, false), vec3<bool>(true, true, true), vec3<bool>(false, arg_2.e.a.d, false)), select(!vec3<bool>(true, false, arg_2.e.b.d), vec3<bool>(true, true, arg_2.e.d.d), !vec3<bool>(arg_2.e.c.d, true, true)), any(select(vec3<bool>(arg_2.e.b.d, arg_2.e.d.d, true), vec3<bool>(arg_2.e.d.d, false, true), vec3<bool>(arg_2.e.b.d, arg_2.e.d.d, arg_2.e.a.d))))), arg_2.e.c.d, all(select(!vec3<bool>(arg_2.e.b.d, false, arg_2.e.d.d), vec3<bool>(!arg_2.e.d.d, false, true), vec3<bool>(all(vec3<bool>(false, false, arg_2.e.d.d)), arg_2.e.c.d, false))));
    var var_3 = true;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d + arg_3.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.b)), var_1.b)))), !(!(_wgslsmith_div_u32(64796u, arg_0) >= arg_0))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3, arg_3: vec3<f32>) -> f32 {
    let var_0 = arg_2.e.c.c;
    global0 = _wgslsmith_f_op_f32(round(466f));
    let var_1 = ~vec4<i32>(arg_2.e.a.c.x, _wgslsmith_sub_i32(var_0.x, abs(-39090i)), max(u_input.b, -23665i), var_0.x);
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.b)));
    var var_2 = _wgslsmith_div_vec2_i32(max(var_0.yz, vec2<i32>(~var_0.x, -abs(0i))), vec2<i32>(-23975i & reverseBits(_wgslsmith_sub_i32(5555i, var_1.x)), var_1.x));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -814f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(~(~arg_1.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e, arg_1.x), vec2<u32>(arg_0.e, 45864u)), arg_1.x), _wgslsmith_mod_u32(arg_0.e, _wgslsmith_dot_vec4_u32(vec4<u32>(46732u, 4294967295u, arg_1.x, arg_0.e), arg_1))), arg_1.zzz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c.a))))), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.a.a, -754f)) + _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(929f, arg_0.a.a, -822f, arg_0.c.a) + _wgslsmith_div_vec4_f32(arg_0.d.b, vec4<f32>(arg_0.c.a, arg_0.d.a, -744f, arg_0.b.b.x))), _wgslsmith_f_op_f32(func_3(arg_1.x, _wgslsmith_add_i32(u_input.a, arg_0.a.c.x), Struct_3(arg_1.zwx, arg_0.b.a, -9438i, arg_0.c.b.x, Struct_2(arg_0.d, arg_0.b, Struct_1(1169f, arg_0.c.b, vec3<i32>(u_input.b, arg_0.a.e, -21656i), true, arg_0.b.e), Struct_1(arg_0.d.a, vec4<f32>(1462f, -431f, arg_0.d.a, -303f), vec3<i32>(-28108i, 0i, 0i), arg_0.d.d, arg_0.a.e), arg_0.e)), Struct_4(vec3<i32>(1i, 2147483647i, 19877i), -398f))), Struct_3(_wgslsmith_mult_vec3_u32(vec3<u32>(7278u, 27588u, 0u), vec3<u32>(4294967295u, arg_0.e, 111172u)), -419f, ~48153i, _wgslsmith_f_op_f32(arg_0.c.a - 852f), Struct_2(arg_0.c, Struct_1(357f, vec4<f32>(arg_0.c.b.x, arg_0.c.a, -1502f, arg_0.d.b.x), vec3<i32>(u_input.a, -31617i, u_input.a), true, u_input.b), arg_0.a, Struct_1(arg_0.c.a, vec4<f32>(arg_0.c.b.x, arg_0.b.a, arg_0.a.a, arg_0.a.a), arg_0.c.c, true, arg_0.c.c.x), arg_0.e)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(585f, arg_0.d.b.x, arg_0.c.a), arg_0.c.b.yyz, !vec3<bool>(false, arg_0.c.d, false)))))), arg_0);
    var var_1 = vec4<bool>(any(!vec4<bool>(true, true, !var_0.e.d.d, var_0.e.d.d)), true, ((var_0.c & _wgslsmith_sub_i32(var_0.c, -44987i)) ^ _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, arg_0.a.e, arg_0.d.c.x, arg_0.a.e)), vec4<i32>(2147483647i, arg_0.d.c.x, u_input.b, u_input.a) | vec4<i32>(u_input.a, -59024i, 2147483647i, arg_0.c.e))) >= 40518i, true);
    var_1 = vec4<bool>(any(!var_1.wwy), var_0.e.d.d, true, all(!(!(!vec4<bool>(true, var_1.x, false, false)))));
    var_1 = select(select(select(select(!vec4<bool>(false, false, arg_0.a.d, var_0.e.c.d), !vec4<bool>(arg_0.c.d, true, var_0.e.c.d, var_1.x), arg_0.a.d), select(vec4<bool>(false, true, arg_0.d.d, arg_0.b.d), !vec4<bool>(true, var_1.x, arg_0.c.d, false), arg_0.d.d), !vec4<bool>(var_0.e.d.d, var_1.x, false, true)), !vec4<bool>(!var_0.e.b.d, false == var_1.x, var_1.x, false), var_1.x), vec4<bool>(true, var_1.x, any(!vec4<bool>(var_1.x, var_0.e.d.d, false, var_1.x)), !var_0.e.b.d), !vec4<bool>(var_1.x, true | any(vec4<bool>(arg_0.c.d, true, true, var_0.e.c.d)), select(var_0.e.d.d || false, true, any(var_1.xy)), false));
    let var_2 = Struct_3(arg_1.yxx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - var_0.d)), u_input.a, -2350f, Struct_2(arg_0.a, var_0.e.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1067f))), vec4<f32>(var_0.b, -419f, var_0.e.c.b.x, arg_0.b.b.x), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(var_0.c, u_input.a, u_input.b)), -arg_0.d.c), !var_0.e.a.d || (var_0.e.b.b.x == arg_0.d.b.x), _wgslsmith_mult_i32(u_input.a, var_0.e.d.c.x) << (arg_1.x % 32u)), var_0.e.c, var_0.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + var_2.e.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-541f * var_2.d), _wgslsmith_f_op_f32(var_0.d * var_2.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b)))), var_0, var_0.e.c.b.wxy)) * -645f);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_add_u32(4830u, arg_0.e), _wgslsmith_dot_vec3_i32(min(abs(vec3<i32>(-63510i, arg_2, u_input.b)), -arg_0.c.c), vec3<i32>(min(arg_2, arg_2), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -50839i, u_input.b), vec3<i32>(arg_2, arg_2, arg_2)), 1i)), Struct_3(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(38853u, 32489u, 1u), vec3<u32>(arg_0.e, 4294967295u, arg_0.e))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.a - -1000f))), _wgslsmith_sub_i32(arg_0.c.e, 1i), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(min(-641f, -1000f))), Struct_2(arg_0.d, Struct_1(1062f, arg_0.b.b, vec3<i32>(0i, arg_0.d.c.x, arg_2), false, u_input.b), arg_0.c, Struct_1(arg_1, vec4<f32>(arg_1, arg_0.b.a, arg_1, -534f), arg_0.c.c, arg_0.b.d, 19712i), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 3128u, arg_0.e), vec3<u32>(arg_0.e, arg_0.e, arg_0.e)))), Struct_4(-vec3<i32>(-1i, arg_0.b.c.x, arg_0.d.c.x), arg_0.b.b.x))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-1640f - 471f), _wgslsmith_f_op_f32(arg_0.b.a * 1524f), -1260f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_0.d.b * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_0.a.b, vec4<f32>(-312f, arg_0.c.a, 905f, arg_1)), _wgslsmith_f_op_vec4_f32(ceil(arg_0.b.b)), true))), arg_0.b.b)));
    return Struct_2(arg_0.a, Struct_1(305f, _wgslsmith_f_op_vec4_f32(select(arg_0.c.b, arg_0.d.b, arg_0.a.d)), vec3<i32>(-_wgslsmith_sub_i32(31948i, 2147483647i), -arg_2, _wgslsmith_dot_vec3_i32(arg_0.b.c, ~arg_0.d.c)), true, -u_input.a), Struct_1(-2326f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b.b) * _wgslsmith_f_op_vec4_f32(exp2(arg_0.c.b))), arg_0.c.c, !arg_0.d.d, -2147483647i >> (arg_0.e % 32u)), arg_0.c, ~_wgslsmith_sub_u32(~4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, arg_0.e), ~1u)));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> u32 {
    global0 = arg_0.b.b.x;
    let var_0 = Struct_4(vec3<i32>(~_wgslsmith_mult_i32(~(-23716i), ~u_input.a), 12513i >> (arg_1 % 32u), max(-12629i | ~arg_0.d.c.x, -16316i)), -194f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - arg_0.b.a)) + _wgslsmith_f_op_f32(step(-373f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2398f - arg_0.d.b.x))))));
    var var_1 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.a.d, true, false), vec3<bool>(true, arg_0.b.d, false), false), select(vec3<bool>(arg_0.b.d, arg_0.c.d, true), vec3<bool>(true, true, false), arg_0.c.d)), !(!vec3<bool>(arg_0.a.d, true, false)), !vec3<bool>(arg_0.a.d, arg_0.c.d, arg_0.b.d)), vec3<bool>(arg_0.c.d, true && arg_0.d.d, !any(vec4<bool>(arg_0.c.d, false, true, false))), select(!vec3<bool>(arg_0.b.d, arg_0.a.d, true), vec3<bool>(any(vec2<bool>(arg_0.a.d, false)), any(vec3<bool>(false, true, arg_0.c.d)), false), select(true, all(vec3<bool>(arg_0.b.d, arg_0.d.d, arg_0.b.d)), !arg_0.d.d))), vec3<bool>(true, false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(arg_0.b.d, arg_0.b.d)))), select(vec3<bool>(true, any(select(vec3<bool>(arg_0.c.d, false, true), vec3<bool>(false, false, arg_0.a.d), vec3<bool>(true, arg_0.a.d, true))), arg_0.a.d), !vec3<bool>(arg_2 >= arg_0.c.b.x, all(vec3<bool>(false, false, arg_0.a.d)), arg_0.b.d), true));
    var_1 = select(!vec3<bool>(var_1.x, true, true), !select(vec3<bool>(arg_0.d.d, arg_0.e > 4294967295u, var_1.x), select(select(vec3<bool>(true, true, arg_0.a.d), vec3<bool>(var_1.x, arg_0.d.d, var_1.x), false), vec3<bool>(var_1.x, var_1.x, true), arg_0.b.d), select(select(vec3<bool>(false, arg_0.d.d, true), vec3<bool>(true, var_1.x, false), false), vec3<bool>(true, true, true), !vec3<bool>(true, arg_0.b.d, var_1.x))), func_5(Struct_2(arg_0.d, Struct_1(_wgslsmith_f_op_f32(sign(arg_2)), vec4<f32>(1000f, -1000f, var_0.b, 912f), _wgslsmith_add_vec3_i32(arg_0.d.c, var_0.a), all(vec2<bool>(arg_0.b.d, true)), u_input.a), Struct_1(_wgslsmith_f_op_f32(160f + 568f), _wgslsmith_div_vec4_f32(arg_0.d.b, arg_0.b.b), ~var_0.a, true, arg_0.c.c.x), Struct_1(arg_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.a, 1451f, 756f, 660f) + arg_0.c.b), _wgslsmith_sub_vec3_i32(arg_0.c.c, var_0.a), false, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.e, -52421i), vec2<i32>(19841i, var_0.a.x))), ~(~1151u)), arg_0.a.a, 1i).c.d);
    return ~abs(abs(1u));
}

fn func_1() -> bool {
    let var_0 = vec3<i32>(2147483647i, 1i, -7661i);
    var var_1 = func_6(func_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(354f, vec4<f32>(-322f, 688f, -1668f, 1360f), var_0, true, var_0.x), Struct_1(339f, vec4<f32>(1000f, 1435f, 314f, -386f), vec3<i32>(u_input.b, 1i, -2147483647i), true, 0i), Struct_1(-129f, vec4<f32>(-1000f, -1382f, -1839f, 390f), var_0, false, 2147483647i), Struct_1(-666f, vec4<f32>(423f, 1317f, -1000f, -1587f), var_0, true, u_input.b), 4294967295u), vec4<u32>(50505u, 1u, 4294967295u, 4294967295u))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(431f, 297f, 102f, 1651f), vec4<f32>(-1000f, -446f, -1188f, 303f))), var_0, true, u_input.a), Struct_1(-504f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-2024f, -1656f, -423f, -1474f) + vec4<f32>(244f, -609f, 264f, -1018f)), var_0, true, var_0.x), Struct_1(_wgslsmith_f_op_f32(828f - -1028f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(684f, 457f, -1000f, -956f))), -var_0, true, 16875i), Struct_1(522f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1974f, -1357f, 256f) - vec4<f32>(1402f, 955f, 1000f, 568f)), select(var_0, var_0, vec3<bool>(true, true, true)), false, _wgslsmith_div_i32(u_input.a, u_input.a)), ~4294967295u), _wgslsmith_f_op_f32(-452f + -688f), -(~var_0.x)), ~_wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1306f * -128f))));
    var var_2 = Struct_3(vec3<u32>(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 0u, 2852u), vec4<u32>(54980u, 4294967295u, 113343u, 86812u)), vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 1u, 18206u, 34160u)), ~1u), _wgslsmith_f_op_f32(f32(-1f) * -103f), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1509f)) - _wgslsmith_f_op_f32(-904f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-585f * 2406f) * _wgslsmith_div_f32(163f, 542f)))), func_5(func_5(Struct_2(func_5(Struct_2(Struct_1(-259f, vec4<f32>(-1000f, -1976f, -1419f, -1000f), var_0, true, u_input.a), Struct_1(382f, vec4<f32>(201f, 159f, -1000f, -368f), var_0, false, -1i), Struct_1(-1428f, vec4<f32>(1716f, 675f, 1911f, 1000f), vec3<i32>(var_0.x, u_input.a, u_input.a), true, 56749i), Struct_1(-190f, vec4<f32>(509f, 376f, -360f, -1075f), var_0, false, var_0.x), 15673u), -634f, 0i).d, func_5(Struct_2(Struct_1(-651f, vec4<f32>(1146f, -519f, -867f, -197f), vec3<i32>(-28831i, u_input.a, u_input.b), true, -59298i), Struct_1(198f, vec4<f32>(1385f, 258f, 916f, 1422f), vec3<i32>(u_input.a, 2839i, u_input.b), false, -1i), Struct_1(679f, vec4<f32>(-994f, -1467f, -500f, -123f), var_0, false, 2147483647i), Struct_1(1302f, vec4<f32>(-1583f, 382f, 1242f, 1846f), vec3<i32>(var_0.x, 24830i, -648i), false, 48153i), 1u), 1000f, 9368i).d, Struct_1(-586f, vec4<f32>(1131f, 974f, -389f, 529f), var_0, false, -13053i), Struct_1(1000f, vec4<f32>(-208f, -357f, 1903f, 397f), vec3<i32>(23574i, u_input.a, var_0.x), false, -2147483647i), _wgslsmith_dot_vec3_u32(vec3<u32>(50328u, 1u, 37433u), vec3<u32>(62891u, 67779u, 50821u))), _wgslsmith_f_op_f32(-1f), 2147483647i), _wgslsmith_div_f32(-1444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1088f)))), min(_wgslsmith_sub_i32(~var_0.x, -var_0.x), -(-24425i << (1u % 32u)))));
    var_1 = 1u;
    let var_3 = select(!select(!vec2<bool>(var_2.e.c.d, var_2.e.a.d), vec2<bool>(true, true), false), !(!(!vec2<bool>(true, var_2.e.c.d))), vec2<bool>(true, true));
    return any(select(vec2<bool>(var_2.e.c.d, var_2.e.a.d), vec2<bool>(var_3.x, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec3<bool>(false, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), true)) || ((u_input.b <= (-u_input.b | abs(u_input.b))) & (true | (true & func_1())));
    var var_1 = 4294967295u;
    var var_2 = Struct_1(1083f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<f32>(549f, -192f, -1785f, 201f), _wgslsmith_f_op_f32(func_4(vec4<f32>(-659f, 259f, -887f, 111f), -581f, Struct_3(vec3<u32>(1u, 85023u, 44697u), 232f, 0i, -335f, Struct_2(Struct_1(189f, vec4<f32>(725f, 1423f, -1949f, -638f), vec3<i32>(-19303i, -10787i, -1i), true, 15910i), Struct_1(-516f, vec4<f32>(-2496f, -1000f, -1103f, 2046f), vec3<i32>(u_input.b, u_input.b, u_input.b), var_0, u_input.b), Struct_1(-286f, vec4<f32>(-744f, -634f, 1470f, 974f), vec3<i32>(u_input.b, 0i, u_input.a), var_0, 30842i), Struct_1(792f, vec4<f32>(-1282f, -2748f, -276f, 581f), vec3<i32>(-43461i, u_input.a, u_input.b), true, u_input.a), 90967u)), vec3<f32>(914f, 444f, 302f))), Struct_3(vec3<u32>(14063u, 14515u, 1u), -1192f, -21996i, -616f, Struct_2(Struct_1(2649f, vec4<f32>(-1000f, 277f, -958f, -3451f), vec3<i32>(-2147483647i, -1i, u_input.b), false, u_input.a), Struct_1(126f, vec4<f32>(1344f, 180f, 1000f, -400f), vec3<i32>(u_input.a, u_input.b, u_input.b), true, 75077i), Struct_1(-1136f, vec4<f32>(243f, -1000f, 588f, -1244f), vec3<i32>(27718i, 776i, u_input.a), false, 26346i), Struct_1(-472f, vec4<f32>(196f, -1104f, 1928f, -1134f), vec3<i32>(u_input.b, -2147483647i, -1i), false, u_input.b), 0u)), vec3<f32>(490f, -2171f, -268f)))), -607f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -539f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2412f * 606f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -195f) - _wgslsmith_f_op_f32(1648f - 998f)))), func_5(Struct_2(Struct_1(_wgslsmith_div_f32(-1306f, 378f), _wgslsmith_div_vec4_f32(vec4<f32>(-304f, -141f, -1269f, 269f), vec4<f32>(188f, 1008f, -858f, 524f)), vec3<i32>(1i, 1i, 1i), true, firstLeadingBit(70691i)), func_5(Struct_2(Struct_1(633f, vec4<f32>(1000f, -1069f, -221f, -152f), vec3<i32>(-1i, -1i, -97719i), var_0, u_input.b), Struct_1(1000f, vec4<f32>(-1339f, -1257f, -855f, -698f), vec3<i32>(u_input.b, u_input.b, u_input.a), false, u_input.a), Struct_1(-563f, vec4<f32>(2716f, 835f, 2683f, -499f), vec3<i32>(7830i, 1i, 0i), false, u_input.a), Struct_1(245f, vec4<f32>(-631f, 1099f, -456f, 123f), vec3<i32>(-727i, u_input.a, -10954i), true, u_input.a), 4294967295u), _wgslsmith_f_op_f32(225f - -319f), 1i).b, func_5(func_5(Struct_2(Struct_1(-481f, vec4<f32>(-1000f, 1617f, 527f, 603f), vec3<i32>(u_input.a, 2147483647i, -30001i), false, u_input.a), Struct_1(844f, vec4<f32>(1326f, -820f, -880f, 1000f), vec3<i32>(-4121i, -25452i, u_input.b), var_0, 1776i), Struct_1(-660f, vec4<f32>(-230f, -1000f, 1000f, -2219f), vec3<i32>(18820i, -2147483647i, 1i), var_0, 2147483647i), Struct_1(-272f, vec4<f32>(-797f, -518f, -340f, 620f), vec3<i32>(u_input.a, u_input.a, u_input.a), false, u_input.b), 24125u), 609f, -1i), -1000f, u_input.a).b, Struct_1(_wgslsmith_f_op_f32(func_3(52570u, 7491i, Struct_3(vec3<u32>(1u, 1u, 113801u), 282f, -2147483647i, 625f, Struct_2(Struct_1(-226f, vec4<f32>(-404f, -1335f, 213f, -1226f), vec3<i32>(u_input.b, u_input.a, u_input.a), true, u_input.b), Struct_1(-1047f, vec4<f32>(-1158f, 1157f, 384f, 732f), vec3<i32>(u_input.b, u_input.a, u_input.b), var_0, u_input.a), Struct_1(-970f, vec4<f32>(-973f, -480f, 966f, 759f), vec3<i32>(71502i, u_input.b, 12184i), var_0, 2147483647i), Struct_1(224f, vec4<f32>(117f, -959f, -427f, -1000f), vec3<i32>(u_input.b, u_input.a, u_input.a), var_0, -2147483647i), 0u)), Struct_4(vec3<i32>(-28739i, u_input.b, -74830i), 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-807f, 1306f, -457f, 1617f) - vec4<f32>(1302f, -287f, -789f, 203f)), vec3<i32>(-27785i, -20319i, u_input.b), false, u_input.a), 75173u << (1u % 32u)), 912f, 1i).a.c, !var_0, _wgslsmith_sub_i32(-35058i, -(~u_input.b)));
    var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(454f)), vec4<f32>(_wgslsmith_f_op_f32(step(1575f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f)))), var_2.a, var_2.a, -1164f), _wgslsmith_mult_vec3_i32(var_2.c, ~var_2.c), _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))) == -464f, -14188i);
    var_2 = func_5(Struct_2(Struct_1(-1228f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(var_2.b, var_2.b, var_2.d)), _wgslsmith_f_op_vec4_f32(-var_2.b))), var_2.c, all(select(vec3<bool>(true, false, false), vec3<bool>(false, var_2.d, false), vec3<bool>(true, false, var_2.d))), 1i), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(var_2.a * -1762f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, -615f, -957f, 2120f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, -586f, var_2.b.x, var_2.b.x), var_2.b, false))), select(vec3<i32>(-2147483647i, 2147483647i, 1i), var_2.c, true), !var_0, _wgslsmith_mod_i32(-2147483647i, 1i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-333f - var_2.b.x) - _wgslsmith_f_op_f32(342f * 659f)), _wgslsmith_f_op_vec4_f32(min(var_2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, 891f, var_2.a, var_2.a)))), vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-96195i, 2147483647i), var_2.c.zz), ~0i), false, var_2.c.x), func_5(func_5(func_5(Struct_2(Struct_1(var_2.b.x, vec4<f32>(var_2.b.x, -620f, var_2.b.x, var_2.a), var_2.c, var_0, -49331i), Struct_1(var_2.b.x, var_2.b, vec3<i32>(var_2.e, var_2.c.x, var_2.c.x), var_2.d, 0i), Struct_1(-150f, vec4<f32>(1057f, var_2.a, var_2.b.x, var_2.a), vec3<i32>(u_input.a, var_2.e, 2147483647i), var_2.d, 28618i), Struct_1(533f, vec4<f32>(-1000f, var_2.a, var_2.a, 403f), var_2.c, true, -3512i), 4040u), -251f, u_input.b), -1408f, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - var_2.b.x)), i32(-1i) * -6728i).c, ~func_5(Struct_2(Struct_1(var_2.b.x, vec4<f32>(var_2.a, 1000f, var_2.b.x, 999f), vec3<i32>(0i, var_2.c.x, u_input.a), false, var_2.e), Struct_1(-1180f, var_2.b, var_2.c, true, -1i), Struct_1(329f, var_2.b, var_2.c, var_0, 1i), Struct_1(var_2.b.x, vec4<f32>(var_2.a, 232f, -110f, 2305f), var_2.c, false, 2147483647i), 1u), var_2.b.x, i32(-1i) * -15392i).e), var_2.a, 1i).b;
    var var_3 = Struct_3(abs(select(vec3<u32>(abs(1u), select(20065u, 55469u, var_0), _wgslsmith_add_u32(0u, 64054u)), select(select(vec3<u32>(0u, 78165u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<bool>(var_2.d, var_2.d, true)), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(true, var_2.d, false), vec3<bool>(true, var_0, false), vec3<bool>(false, true, var_2.d))), true)), 100f, reverseBits(_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, u_input.b), u_input.b) << (19402u % 32u)), -1638f, Struct_2(func_5(func_5(Struct_2(Struct_1(var_2.a, vec4<f32>(var_2.b.x, 1000f, var_2.b.x, -557f), vec3<i32>(2147483647i, u_input.b, var_2.e), false, 1i), Struct_1(644f, var_2.b, vec3<i32>(-2147483647i, var_2.c.x, var_2.e), var_0, u_input.a), Struct_1(778f, var_2.b, var_2.c, var_2.d, u_input.a), Struct_1(var_2.b.x, vec4<f32>(234f, var_2.b.x, 283f, var_2.a), var_2.c, true, u_input.b), 4294967295u), func_5(Struct_2(Struct_1(386f, var_2.b, var_2.c, false, -11715i), Struct_1(-971f, vec4<f32>(var_2.b.x, 246f, -707f, -1210f), vec3<i32>(-2147483647i, u_input.b, u_input.b), var_2.d, u_input.a), Struct_1(-1271f, var_2.b, var_2.c, false, var_2.e), Struct_1(-491f, var_2.b, vec3<i32>(2147483647i, var_2.c.x, var_2.c.x), var_0, var_2.e), 4294967295u), 1151f, var_2.c.x).c.b.x, _wgslsmith_sub_i32(11402i, 32800i)), _wgslsmith_f_op_f32(func_4(var_2.b, _wgslsmith_f_op_f32(var_2.b.x - var_2.a), Struct_3(vec3<u32>(43026u, 1u, 51956u), var_2.b.x, u_input.b, 716f, Struct_2(Struct_1(-109f, var_2.b, var_2.c, var_0, var_2.c.x), Struct_1(-564f, var_2.b, vec3<i32>(-16341i, u_input.a, -1i), var_2.d, var_2.c.x), Struct_1(802f, var_2.b, var_2.c, false, -68346i), Struct_1(-2343f, var_2.b, vec3<i32>(35189i, 2147483647i, 15325i), var_0, u_input.a), 0u)), var_2.b.xxy)), 13003i).a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)), _wgslsmith_f_op_vec4_f32(-var_2.b), select(abs(vec3<i32>(-20009i, 43433i, -2147483647i)), -vec3<i32>(u_input.b, var_2.c.x, 54732i), true), true, ~_wgslsmith_mult_i32(-1i, 46328i)), func_5(func_5(func_5(Struct_2(Struct_1(var_2.b.x, var_2.b, vec3<i32>(-3381i, var_2.c.x, u_input.a), var_2.d, var_2.e), Struct_1(1083f, vec4<f32>(var_2.a, 343f, var_2.b.x, -168f), var_2.c, var_0, 1i), Struct_1(834f, var_2.b, vec3<i32>(2147483647i, 55667i, -2147483647i), true, u_input.b), Struct_1(-1070f, var_2.b, vec3<i32>(-43420i, u_input.a, -57570i), true, u_input.a), 26759u), var_2.a, 1i), _wgslsmith_div_f32(-142f, 862f), u_input.a), var_2.a, i32(-1i) * -u_input.b).c, Struct_1(var_2.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(452f, var_2.a, -1000f, -949f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, -571f, var_2.b.x, var_2.b.x)), all(vec2<bool>(true, false)))), abs(_wgslsmith_mult_vec3_i32(var_2.c, var_2.c)), var_0 & (u_input.a >= -5491i), 0i), 1u));
    var var_4 = !(func_1() & any(select(vec2<bool>(false, var_3.e.a.d), select(vec2<bool>(true, false), vec2<bool>(var_0, true), vec2<bool>(true, var_0)), vec2<bool>(true, true))));
    var var_5 = vec4<i32>(-(i32(-1i) * -(0i | var_2.c.x)), max(~_wgslsmith_add_i32(func_5(Struct_2(Struct_1(var_2.a, vec4<f32>(608f, var_3.e.a.a, var_3.e.d.b.x, var_3.b), var_3.e.d.c, var_0, 25750i), var_3.e.a, var_3.e.b, Struct_1(1496f, vec4<f32>(var_3.e.b.a, var_3.e.a.a, 132f, -108f), vec3<i32>(var_3.e.a.c.x, var_2.c.x, var_2.e), true, var_3.e.d.e), 1u), -333f, 0i).b.e, i32(-1i) * -2876i), ~0i), _wgslsmith_add_i32(~10923i, 0i), u_input.a);
    var var_6 = _wgslsmith_div_vec3_i32(-var_3.e.c.c, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-var_5.zwz, var_2.c), ~var_5.wzz)) | abs(var_3.e.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<i32>(u_input.b, -var_3.e.a.e, _wgslsmith_sub_i32(var_5.x, 24013i), 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(54769i, 12178i, 0i, 0i), vec4<i32>(-25082i, 19796i, -26358i, var_5.x)) & abs(vec4<i32>(1i, u_input.a, -2249i, 32685i)), vec4<bool>(false, var_3.e.d.d, false, true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_2.b.yw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(-17442i), var_2.e), max(var_5.xw, select(var_3.e.d.c.zy, _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, var_6.x), var_2.c.yz), vec2<bool>(true, true))), vec2<i32>(_wgslsmith_dot_vec2_i32(var_2.c.yx, _wgslsmith_sub_vec2_i32(var_3.e.a.c.yz, var_2.c.yx)), _wgslsmith_dot_vec3_i32(~var_2.c, ~vec3<i32>(u_input.b, 0i, u_input.a)))), _wgslsmith_mod_vec2_i32(var_2.c.xy, vec2<i32>(-var_3.c, ~(-17077i))));
}

