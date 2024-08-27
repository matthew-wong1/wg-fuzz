struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(-700f, -1i, 888f, 76718i);

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(true, Struct_1(-183f, i32(-2147483648), 356f, -1i), Struct_1(-1000f, -18162i, 557f, 0i)), Struct_2(false, Struct_1(-140f, -22410i, 713f, 2147483647i), Struct_1(-426f, 0i, 120f, i32(-2147483648))), Struct_2(true, Struct_1(-1000f, 0i, 1262f, -52188i), Struct_1(1807f, -9934i, -1078f, -1i)), Struct_2(false, Struct_1(-852f, 5418i, 804f, 12742i), Struct_1(-211f, 2147483647i, 898f, 1i)), Struct_2(false, Struct_1(1620f, 0i, -1000f, 1i), Struct_1(553f, -6365i, -327f, 1i)), Struct_2(true, Struct_1(-131f, 0i, -1000f, 2597i), Struct_1(1000f, 63545i, -572f, -1i)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> u32 {
    global2 = Struct_1(676f, _wgslsmith_mod_i32(-74205i, u_input.c.x >> (u_input.d.x % 32u)), global0.a, -1i);
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(-global0.a)), -501f), _wgslsmith_f_op_f32(global2.c + -661f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a))), 898f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a))));
    var var_1 = !(!vec3<bool>(false, u_input.d.x == _wgslsmith_add_u32(u_input.d.x, 1u), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global2.c), arg_0))));
    let var_3 = vec2<bool>(all(var_1.zz), global2.c < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_2.x)) + var_2.x));
    return ~(~abs(select(4294967295u, 1u, false)));
}

fn func_2() -> i32 {
    var var_0 = ~func_3(-294f);
    var var_1 = Struct_3(vec3<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), !(!all(vec2<bool>(true, false))), all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), u_input.d.x < u_input.d.x))), any(vec2<bool>(1000f != _wgslsmith_f_op_f32(-global0.a), any(vec4<bool>(false, true, false, false)))), Struct_2(false, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * global2.c), ~global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a, -1281f, true))), firstLeadingBit(42515i)), Struct_1(global2.a, abs(22848i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + 718f)), -max(global0.b, global2.b))));
    global0 = var_1.c.b;
    var var_2 = ~u_input.a;
    var var_3 = var_1.c.b;
    return -1i;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-167f)) * _wgslsmith_f_op_f32(floor(-648f)))), ~(~0i | global0.b), -1000f, -15095i);
    let var_1 = _wgslsmith_mult_vec3_u32(~arg_3.zxy, firstTrailingBit(~(arg_3.yww ^ arg_3.yyx)) ^ _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d.x, 9750u, arg_0.x)) << (~arg_3.zzz % vec3<u32>(32u)), u_input.d.wzy));
    var var_2 = _wgslsmith_add_vec3_i32(reverseBits(-_wgslsmith_add_vec3_i32(-vec3<i32>(-57776i, var_0.d, -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.b, global2.d, var_0.b), vec3<i32>(-72082i, 47465i, -23496i)))), vec3<i32>(~firstLeadingBit(abs(global0.d)), func_2(), _wgslsmith_add_i32(_wgslsmith_clamp_i32(global2.b, _wgslsmith_mult_i32(global0.d, var_0.d), abs(-2147483647i)), _wgslsmith_clamp_i32(var_0.b, -1i, abs(35942i)))));
    global1 = ~(~33847u);
    var_2 = abs(~(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(var_2.x, 0i, 0i)), ~vec3<i32>(u_input.c.x, 1i, -75793i)) << ((vec3<u32>(arg_3.x, arg_0.x, var_1.x) & min(vec3<u32>(arg_3.x, u_input.a, 1205u), arg_3.xzw)) % vec3<u32>(32u))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 6>();
    global2 = func_1(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32((vec3<u32>(u_input.d.x, u_input.a, u_input.d.x) >> (u_input.d.zxx % vec3<u32>(32u))) & u_input.d.xwz, vec3<u32>(4294967295u, 1u, ~4294967295u)), ~(~vec3<u32>(0u, u_input.d.x, 60569u))), any(vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true)), 34776u, u_input.d);
    var var_0 = _wgslsmith_dot_vec3_u32(u_input.d.wxz, _wgslsmith_mod_vec3_u32(vec3<u32>(select(34273u, ~44556u, any(vec4<bool>(true, false, true, true))), 723u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(21202u, 11698u, 1u), min(u_input.a, 53692u), 0u), ~u_input.d.xyw)));
    var_0 = min(_wgslsmith_dot_vec4_u32(min(countOneBits(~vec4<u32>(1u, u_input.d.x, u_input.a, u_input.a)), u_input.d), abs(vec4<u32>(u_input.a, 1u, u_input.d.x, reverseBits(u_input.a)))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(countOneBits(28072u), abs(~u_input.d.x)), ~max(95390u, u_input.a) & u_input.d.x));
    var var_1 = vec4<u32>(u_input.d.x, reverseBits(_wgslsmith_dot_vec2_u32(firstLeadingBit(~u_input.d.yx), _wgslsmith_add_vec2_u32(~vec2<u32>(358u, 60559u), u_input.d.ww))), ~13824u, u_input.a);
    var_1 = abs(~vec4<u32>(_wgslsmith_sub_u32(1u, u_input.d.x), _wgslsmith_sub_u32(~u_input.d.x, _wgslsmith_sub_u32(72588u, var_1.x)), _wgslsmith_div_u32(1u, min(var_1.x, 35957u)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, u_input.a), vec2<u32>(0u, 1u)) >> (_wgslsmith_div_u32(12387u, 4294967295u) % 32u)));
    let var_2 = func_1(select(vec3<u32>(4294967295u, ~u_input.a >> (~u_input.a % 32u), 32180u), u_input.d.zxw, !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), !any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), any(vec4<bool>(true, false, false, false)))), ~_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(u_input.d.yyw, abs(vec3<u32>(var_1.x, var_1.x, var_1.x))), countOneBits(46833u)), max(~firstTrailingBit(reverseBits(u_input.d)), ~vec4<u32>(var_1.x, ~32539u, _wgslsmith_sub_u32(var_1.x, var_1.x), firstTrailingBit(u_input.a))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(821f - 751f) * _wgslsmith_f_op_f32(580f + global0.c)) - 346f)));
    global2 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(581f, -355f, var_2.c)))))));
}

