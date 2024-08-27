struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 18>;

var<private> global2: Struct_3;

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec3<u32>, 20>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = select(vec4<bool>(true, -1i <= u_input.b, !all(vec4<bool>(true, false, true, false)) && false, all(vec2<bool>(true, true)) && true), vec4<bool>(true, !any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), -929f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d)), true), select(!vec4<bool>(global2.d < -544f, true, select(true, false, false), true), !vec4<bool>(all(vec2<bool>(false, true)), true, global2.d >= 3154f, true), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(select(true, false, true), true, true, false), vec4<bool>(any(vec3<bool>(true, false, true)), -1i < u_input.b, true, true))));
    var var_1 = Struct_4(var_0.x, vec3<f32>(969f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d, global2.c))), _wgslsmith_f_op_f32(-global2.c)), true || var_0.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c), ~select(u_input.c & vec3<u32>(1u, global2.b, 4294967295u), _wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(22064u, 8278u, global2.e.b.b)), vec3<bool>(true, var_0.x, false))));
    var var_2 = 0u;
    let var_3 = Struct_4(var_1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global2.d + -1199f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, var_1.b.x)), -340f) + vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-797f * var_1.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-495f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -764f)))), !var_1.c | var_1.c, var_1.d);
    let var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, global2.c, 2067f, var_1.b.x)), vec4<f32>(var_3.b.x, var_3.b.x, -1000f, -1000f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(828f, var_3.b.x, 2100f, -811f))))))));
    return firstTrailingBit(~_wgslsmith_mod_i32(64651i, -2147483647i));
}

fn func_2() -> vec2<bool> {
    global0 = _wgslsmith_mult_u32(50008u, 0u);
    let var_0 = Struct_3(vec4<i32>(_wgslsmith_div_i32(0i, firstLeadingBit(u_input.b)), ~max(global2.a.x, i32(-1i) * -34037i), -2147483647i, ~u_input.b | -global2.a.x), u_input.a, _wgslsmith_f_op_f32(-1134f - global2.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1947f) * _wgslsmith_f_op_f32(f32(-1f) * -221f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + global2.c))) + _wgslsmith_f_op_f32(step(-127f, _wgslsmith_f_op_f32(-global2.c)))), Struct_2(~_wgslsmith_sub_vec2_u32(vec2<u32>(11508u, global2.b), global2.e.a), Struct_1(vec3<i32>(global2.e.c.a.x, 1i, global2.e.b.c.x) | (global2.a.zxy >> (vec3<u32>(u_input.a, 23484u, u_input.a) % vec3<u32>(32u))), u_input.d, vec2<i32>(-global2.a.x, func_3())), global2.e.b, firstLeadingBit(~_wgslsmith_div_u32(28429u, 22850u))));
    var var_1 = 29042i;
    global2 = var_0;
    var var_2 = 0u;
    return vec2<bool>(!(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1227f * 436f))) > -374f), false & (any(vec3<bool>(false, false, false)) != (any(vec2<bool>(true, false)) | true)));
}

fn func_1() -> vec4<u32> {
    let var_0 = global2.e.b.c.x;
    var var_1 = !select(!func_2(), !select(func_2(), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false)), true);
    global1 = array<Struct_1, 18>();
    global1 = array<Struct_1, 18>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.d, global2.c))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.c, 1707f)))) - vec2<f32>(_wgslsmith_f_op_f32(sign(global2.d)), 1f)), vec2<f32>(global2.c, global2.d), false)) - vec2<f32>(global2.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-470f)), _wgslsmith_f_op_f32(-global2.d)))));
    return ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.e.d, ~u_input.c.x, 0u, _wgslsmith_add_u32(global2.b, 35708u)), firstLeadingBit(abs(vec4<u32>(u_input.a, u_input.a, 80467u, 0u)))), select(vec4<u32>(global2.e.b.b, global2.e.a.x, ~u_input.a, 28643u), abs(vec4<u32>(4294967295u, 0u, 1u, global2.b)), !select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, true, true, false), true)), ~vec4<u32>(global2.e.a.x, 1u, global2.b, abs(4294967295u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = firstTrailingBit(vec3<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 29558i, u_input.b), vec3<i32>(u_input.b, global2.e.b.a.x, 1i) << (global4[_wgslsmith_index_u32(1u, 20u)] % vec3<u32>(32u))), max(global2.a.x, _wgslsmith_mod_i32(-2147483647i, global2.e.b.a.x))), abs(~reverseBits(-7193i)), -countOneBits(54446i)));
    global1 = array<Struct_1, 18>();
    global4 = array<vec3<u32>, 20>();
    var var_1 = Struct_3(vec4<i32>(u_input.b, ~var_0.x, 46881i, 25681i), firstTrailingBit(global2.e.a.x), 382f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 502f) * global2.c))), global2.e);
    var var_2 = abs(_wgslsmith_mod_vec3_i32(-select(min(vec3<i32>(-29253i, var_1.e.b.a.x, global2.e.b.c.x), var_0), _wgslsmith_div_vec3_i32(vec3<i32>(6280i, 40198i, var_0.x), var_1.e.c.a), arg_1.x), vec3<i32>(_wgslsmith_add_i32(-1i, 25911i & var_0.x), max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e.c.c.x, var_1.e.c.c.x, 1i, global2.a.x), var_1.a), i32(-1i) * -1i), -2147483647i)));
    return 0u;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c.c.x, select(abs(23811i), -10814i, all(vec3<bool>(true, true, true))), arg_0.c.c.x), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(global2.a.x, 60976i, u_input.b)), vec3<i32>(u_input.b ^ -8988i, abs(global2.e.b.a.x), abs(arg_2.c.x)))), arg_0.d, _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(max(_wgslsmith_sub_vec2_i32(arg_0.b.a.zy, arg_0.b.a.zz), ~global2.e.c.c), arg_2.c), vec2<i32>(1555i, ~(-1i))));
    let var_1 = Struct_3(global2.a & _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -15424i, arg_0.b.c.x, 1i), global2.a), _wgslsmith_sub_i32(arg_2.a.x, u_input.b), _wgslsmith_mod_i32(var_0.a.x, 2147483647i), global2.e.c.a.x << (6522u % 32u)), vec4<i32>(-1i) * -vec4<i32>(arg_2.c.x, 17153i, 4437i, arg_2.a.x), vec4<i32>(1i, var_0.c.x, arg_2.a.x, arg_0.c.a.x) & global2.a), _wgslsmith_sub_u32(~(~arg_2.b), func_1().x), _wgslsmith_f_op_f32(exp2(global2.c)), -314f, Struct_2(u_input.c.xz, global1[_wgslsmith_index_u32(~41501u, 18u)], Struct_1(vec3<i32>(arg_0.b.c.x, arg_2.c.x, global2.a.x), 5680u, _wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.c.x, u_input.b), -vec2<i32>(-12196i, -12442i))), 0u));
    global2 = Struct_3(vec4<i32>(~2147483647i, abs(1i & u_input.b), u_input.b, (var_1.e.c.a.x << ((var_0.b >> (arg_1 % 32u)) % 32u)) >> (_wgslsmith_mod_u32(0u << (arg_2.b % 32u), 113342u) % 32u)), 80052u, _wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(trunc(global2.d)))), -141f, Struct_2(firstTrailingBit(~firstTrailingBit(global2.e.a)), global2.e.b, Struct_1(_wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, arg_2.c.x, -1i), ~vec3<i32>(-2147483647i, var_1.a.x, -35758i)), u_input.c.x, reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(59167i, 0i), global2.a.yw))), _wgslsmith_div_u32(var_0.b, _wgslsmith_sub_u32(~1u, firstTrailingBit(u_input.c.x)))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1073f)))) >= var_1.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c + var_1.c), -177f), -274f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.d, 591f, 101f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, global2.c, var_1.c)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.d, 814f))))), false)), all(vec2<bool>(true, true)), 4294967295u);
    var var_3 = global2.e.c;
    return Struct_4(var_2.c, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1952f)), 1915f)), -442f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * var_1.d), var_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))), !any(select(select(vec2<bool>(true, true), vec2<bool>(false, var_2.a), var_2.a), select(vec2<bool>(var_2.a, var_2.c), vec2<bool>(true, var_2.c), var_2.a), vec2<bool>(false, true))), 73716u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-803f, 1130f), _wgslsmith_div_vec2_f32(vec2<f32>(488f, global2.d), vec2<f32>(global2.c, 1460f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, global2.d)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d, global2.d) - vec2<f32>(global2.d, global2.d))))) + vec2<f32>(1f, 1f))));
    var var_1 = func_5(Struct_2(_wgslsmith_mult_vec2_u32(~u_input.c.xx, min(vec2<u32>(u_input.a, 24143u), ~vec2<u32>(global2.b, 21846u))), global1[_wgslsmith_index_u32(func_4(~vec4<u32>(0u, u_input.a, u_input.a, 1u) << (func_1() % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), 18u)], Struct_1(vec3<i32>(firstLeadingBit(global2.a.x), 1i, -9368i), 0u, vec2<i32>(-u_input.b, u_input.b << (19506u % 32u))), u_input.d), abs(u_input.a), global2.e.b);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.c.x), 18u)];
    let var_3 = Struct_1(vec3<i32>(global2.e.b.a.x, 2147483647i, ~reverseBits(global2.e.c.a.x)), abs(global2.b), firstLeadingBit(firstTrailingBit(-vec2<i32>(3575i, 1i))));
    var var_4 = global2.e.c;
    var var_5 = ~_wgslsmith_clamp_vec3_i32(var_4.a, abs(~vec3<i32>(72218i, -1i, var_2.c.x)), var_4.a);
    let var_6 = all(select(vec3<bool>(!(!var_1.a), (false | var_1.a) && all(vec4<bool>(var_1.a, true, var_1.c, true)), !all(vec4<bool>(var_1.a, false, true, var_1.a))), !select(!vec3<bool>(var_1.c, false, var_1.c), vec3<bool>(var_1.a, false, var_1.c), !vec3<bool>(var_1.a, false, false)), !var_1.a));
    let var_7 = Struct_4(any(!(!vec4<bool>(true, var_6, true, false))) & var_1.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -737f, -1003f))), _wgslsmith_f_op_vec3_f32(var_1.b + var_1.b), select(!select(vec3<bool>(var_1.c, var_1.c, var_6), vec3<bool>(var_6, var_6, var_1.c), vec3<bool>(var_1.a, false, false)), vec3<bool>(106070u < var_1.d, true, !var_6), var_1.a))), true, 46219u);
    global3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(12783u, ~(~var_1.d)));
}

