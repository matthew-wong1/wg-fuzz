struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<f32>, 12>;

var<private> global2: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    global1 = array<vec3<f32>, 12>();
    let var_0 = Struct_3(global0.a, vec2<u32>(_wgslsmith_mult_u32(~(u_input.a >> (45215u % 32u)), u_input.a), arg_0.x), vec4<u32>(18509u, 42229u, _wgslsmith_mod_u32(82997u, ~global2.c << (50554u % 32u)), ~_wgslsmith_div_u32(arg_0.x >> (0u % 32u), ~47521u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(4294967295u, global2.c, 0u, 0u)), global0.c), abs(firstLeadingBit(global0.c)), ~vec4<u32>(arg_0.x, 1u, u_input.a, 667u)), _wgslsmith_div_vec4_u32(global0.c, select(vec4<u32>(64213u, 4294967295u, 86006u, 15442u), global0.c, select(vec4<bool>(false, global2.d.a, global2.d.a, global2.b.a), vec4<bool>(global0.e.x, global2.d.a, global0.a.x, false), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global2.b.a))))), vec2<bool>(any(!(!global0.a.yx)), !all(vec2<bool>(true, global2.b.a))));
    var var_1 = abs(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(arg_0, var_0.c.zxw), global0.d.zxx), u_input.a), var_0.c.x));
    var_1 = firstLeadingBit(_wgslsmith_add_vec2_u32(reverseBits(~(~var_0.b)), countOneBits(~_wgslsmith_clamp_vec2_u32(var_0.d.xz, global0.b, vec2<u32>(global0.c.x, 35567u)))));
    var_1 = ~vec2<u32>(var_0.c.x, global0.b.x);
    return select(vec3<bool>(!(!select(false, global0.e.x, false)), !(global2.b.b.x >= _wgslsmith_dot_vec3_i32(vec3<i32>(global2.d.b.x, global2.b.b.x, global2.d.b.x), vec3<i32>(global2.d.b.x, global2.d.b.x, 35203i))), true), global0.a, true);
}

fn func_2() -> Struct_2 {
    var var_0 = max(2147483647i, abs(~_wgslsmith_div_i32(~global2.b.b.x, global2.b.b.x)));
    var_0 = global2.b.b.x;
    var var_1 = select(u_input.a, 17247u, false);
    let var_2 = ~37441i;
    var var_3 = Struct_3(select(vec3<bool>(!all(vec4<bool>(false, global0.a.x, global0.e.x, true)), true, global2.d.a), func_3(firstTrailingBit(_wgslsmith_mod_vec3_u32(global0.c.wxz, global0.d.wyy))), global2.d.a), _wgslsmith_mult_vec2_u32(global0.d.ww, firstTrailingBit(vec2<u32>(~u_input.a, u_input.a))), ~max(firstLeadingBit(vec4<u32>(17858u, u_input.a, 4294967295u, 13129u)), global0.c), ~select(global0.d, reverseBits(vec4<u32>(global0.b.x, u_input.a, 0u, global0.d.x)), select(vec4<bool>(false, global2.b.a, true, true), vec4<bool>(global2.b.a, false, global2.b.a, global0.a.x), !global2.b.a)), select(vec2<bool>(!any(vec3<bool>(global0.e.x, global0.a.x, global2.b.a)), any(func_3(global0.c.wzy))), select(select(vec2<bool>(true, true), global0.e, !global0.a.yy), vec2<bool>(true, global0.e.x), global2.c == 1u), global2.b.a));
    return Struct_2(_wgslsmith_f_op_vec4_f32(global2.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) * _wgslsmith_f_op_vec4_f32(global2.a - vec4<f32>(global2.a.x, -337f, -2589f, -744f))) * _wgslsmith_f_op_vec4_f32(max(global2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(468f, global2.a.x, global2.a.x, global2.a.x) * global2.a))))), global2.b, ~abs(var_3.d.x), global2.b);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec3<f32> {
    global0 = Struct_3(select(vec3<bool>(true, all(select(vec2<bool>(global0.a.x, arg_0.b.a), vec2<bool>(global0.e.x, global2.d.a), vec2<bool>(global2.d.a, true))), all(vec4<bool>(arg_0.d.a, global0.a.x, false, true))), select(global0.a, global0.a, ~global0.b.x >= ~51593u), !(!global0.a)), vec2<u32>(arg_0.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.c), global0.b & global0.c.wy)), vec4<u32>(79748u, _wgslsmith_add_u32(25823u, arg_0.c ^ abs(arg_0.c)), 9450u, global0.b.x), reverseBits(_wgslsmith_mult_vec4_u32(~global0.d, vec4<u32>(8031u, 1u, u_input.a, u_input.a) >> (vec4<u32>(global2.c, 0u, 12211u, global2.c) % vec4<u32>(32u)))) >> (vec4<u32>(1u, 4969u, u_input.a, ~func_2().c) % vec4<u32>(32u)), vec2<bool>(all(vec3<bool>(any(vec4<bool>(true, true, global2.b.a, arg_0.b.a)), !arg_0.b.a, !global0.a.x)), false));
    let var_0 = arg_0;
    let var_1 = firstTrailingBit(i32(-1i) * -1i);
    var var_2 = _wgslsmith_mod_i32(arg_0.b.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.d.b.x, _wgslsmith_mod_i32(~6054i, func_2().d.b.x), ~(i32(-1i) * -73216i)), -(~vec3<i32>(-9443i, var_1, var_1)) ^ _wgslsmith_mod_vec3_i32(-vec3<i32>(-19096i, 58457i, -2147483647i), vec3<i32>(var_1, var_0.d.b.x, -36824i))));
    let var_3 = var_0.b;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(global0.b.x, 12u)] * var_0.a.yzy)) * var_0.a.xxy);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<u32>, arg_3: vec4<f32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(191f)) + -173f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    global0 = Struct_3(vec3<bool>(global2.b.a, true, all(vec4<bool>(global2.d.a && false, global2.d.b.x >= global2.d.b.x, global2.d.a, false))), vec2<u32>(max(17739u, ~(~global0.c.x)), _wgslsmith_mult_u32(0u, 44520u)), ~global0.c, global0.d, !global0.e);
    global0 = Struct_3(!global0.a, global0.d.yx, ~_wgslsmith_mult_vec4_u32(abs(countOneBits(vec4<u32>(global0.b.x, global0.b.x, 11848u, global0.d.x))), min(vec4<u32>(0u, global2.c, global0.c.x, 20343u), ~global0.d)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(global0.d | select(vec4<u32>(global2.c, 4294967295u, u_input.a, 38271u), global0.c, vec4<bool>(false, global0.a.x, false, global2.d.a)), ~vec4<u32>(4294967295u, global0.b.x, u_input.a, u_input.a)), vec4<u32>(_wgslsmith_clamp_u32(global0.b.x ^ u_input.a, reverseBits(global0.d.x), u_input.a << (38279u % 32u)), 23644u, 4294967295u, ~reverseBits(15291u))), vec2<bool>(global0.a.x, func_2().d.a));
    var var_0 = !global0.a;
    var var_1 = func_2().d;
    var var_2 = _wgslsmith_mult_u32(10554u, _wgslsmith_add_u32(4294967295u, global0.d.x >> (global0.c.x % 32u)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_1(~(1u << (_wgslsmith_add_u32(global2.c, 5101u) % 32u)), ~35771i, firstLeadingBit(vec3<u32>(u_input.a, 64066u, u_input.a)) >> (firstLeadingBit(global0.c.xyx) % vec3<u32>(32u)), global2.a)).x, -1550f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * 249f), any(vec2<bool>(global0.a.x, global0.e.x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(23109u, global2.d.b.x, global0.d.xyw, global2.a)) * vec3<f32>(200f, global2.a.x, -766f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(981f, var_0, global2.a.x)), vec3<f32>(-1594f, var_0, -703f))), _wgslsmith_f_op_f32(-global2.a.x))) + global2.a.x);
    var var_2 = Struct_3(vec3<bool>(global2.b.b.x <= -countOneBits(global2.b.b.x), !global0.a.x, !(global2.d.b.x > ~(-2147483647i))), max(global0.c.wx, global0.b), ~firstTrailingBit(max(global0.c, select(global0.d, vec4<u32>(65864u, global2.c, global0.b.x, global0.b.x), global2.b.a))), countOneBits(global0.d), !select(vec2<bool>(true, true), global0.a.yy, func_3(vec3<u32>(global0.c.x, global2.c, global2.c)).xx));
    let var_3 = ~global2.b.b.x;
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(global2.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global2.a)) * global2.a) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global2.a)) * global2.a))), Struct_1((~43736u | ~global0.c.x) != _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 1u, 19683u, var_2.d.x)), vec4<u32>(u_input.a, 41655u, u_input.a, global2.c)), global2.b.b), u_input.a, func_2().b);
    var var_5 = !vec4<bool>(true, true, global0.a.x & func_2().b.a, !var_4.b.a);
    var_2 = Struct_3(select(vec3<bool>(false, var_4.b.a, _wgslsmith_mod_u32(1995u, var_4.c) == (global0.c.x | u_input.a)), func_3(global0.d.yyw), func_2().d.a), ~reverseBits(~_wgslsmith_sub_vec2_u32(global0.d.yz, global0.c.xz)), vec4<u32>(~_wgslsmith_mult_u32(abs(var_4.c), 52914u), reverseBits(51273u) << (var_2.d.x % 32u), _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, global2.c), abs(global2.c)) & _wgslsmith_sub_u32(~3554u, ~var_2.c.x), var_2.c.x), ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, 4013u, 4418u, 44095u), global0.d), u_input.a, global0.b.x, var_4.c >> (0u % 32u))), !(!vec2<bool>(select(var_4.d.a, true, global2.d.a), any(vec3<bool>(var_2.e.x, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -975f, global2.a.x, var_0), var_4.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-157f, var_0, var_0, 583f) - var_4.a)))), reverseBits(36789u), _wgslsmith_sub_i32(1i, global2.b.b.x));
}

