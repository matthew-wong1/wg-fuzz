struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec2<u32>, 17>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2007f, _wgslsmith_f_op_f32(f32(-1f) * -758f))));
    global0 = arg_1.d.xz;
    var var_1 = Struct_1(vec2<i32>(-2147483647i, u_input.a), _wgslsmith_mult_i32(firstTrailingBit(1i) << (_wgslsmith_div_u32(1u, firstTrailingBit(15584u)) % 32u), -14740i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2652f, 317f, var_0, 1401f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, 2294f) + arg_1.c)) + vec4<f32>(_wgslsmith_div_f32(var_0, var_0), arg_1.c.x, _wgslsmith_f_op_f32(-var_0), -603f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1.c, arg_1.c)))), global0.x)), arg_1.d, !vec3<bool>(true, global0.x && any(vec4<bool>(arg_0, global0.x, false, true)), all(vec3<bool>(arg_0, false, global0.x))));
    let var_2 = vec2<bool>(any(arg_1.d), true);
    let var_3 = arg_1;
    return arg_0;
}

fn func_2(arg_0: Struct_2) -> i32 {
    global1 = array<vec2<u32>, 17>();
    let var_0 = arg_0;
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32((vec2<i32>(var_0.a.b, -63825i) >> (global1[_wgslsmith_index_u32(11922u, 17u)] % vec2<u32>(32u))) & vec2<i32>(u_input.b.x, -16951i), ~u_input.b.yz), firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, 78419i, -2147483647i), vec4<i32>(-2147483647i, var_0.a.b, arg_0.a.b, -53844i), vec4<i32>(49324i, 0i, -8410i, 0i)), ~vec4<i32>(u_input.a, 2147483647i, -1i, 1i))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_0.a.c, arg_0.a.c, select(var_0.a.d, arg_0.a.d, var_0.a.d))))), arg_0.a.d, vec3<bool>(var_0.a.c.x >= _wgslsmith_f_op_f32(-var_0.a.c.x), func_3(arg_0.a.e.x, var_0.a, vec2<i32>(arg_0.a.a.x, -22787i), 35097u), (var_0.a.a.x != 0i) && (u_input.c.x <= 0u))));
    let var_2 = Struct_2(Struct_1(arg_0.a.a, _wgslsmith_dot_vec2_i32(arg_0.a.a, vec2<i32>(~75i, var_0.a.b)), _wgslsmith_f_op_vec4_f32(trunc(arg_0.a.c)), select(vec4<bool>(arg_0.a.b != -1i, true, true, true), select(vec4<bool>(arg_0.a.d.x, true, true, global0.x), vec4<bool>(true, true, arg_0.a.e.x, true), true), arg_0.a.d.x), !var_1.a.e));
    var var_3 = true;
    return -1i;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> vec2<u32> {
    return _wgslsmith_clamp_vec2_u32(global1[_wgslsmith_index_u32(64387u, 17u)], ~(~vec2<u32>(~u_input.c.x, u_input.c.x ^ 82629u)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.c.x, 0u & u_input.c.x), select(~vec2<u32>(u_input.c.x, 20449u), ~vec2<u32>(4294967295u, 5364u), true)), ~abs(u_input.c.wx) >> (~(~vec2<u32>(u_input.c.x, 0u)) % vec2<u32>(32u))));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_vec2_u32(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-729f, 427f, 1000f, 1704f))), Struct_1(_wgslsmith_div_vec2_i32(u_input.b.yy, ~u_input.b.yz), -67957i, vec4<f32>(-339f, _wgslsmith_f_op_f32(f32(-1f) * -181f), -215f, -248f), select(!vec4<bool>(global0.x, global0.x, false, false), !vec4<bool>(false, global0.x, global0.x, global0.x), all(vec2<bool>(false, true))), vec3<bool>(global0.x, all(vec3<bool>(false, true, false)), !global0.x)), firstTrailingBit(func_2(Struct_2(Struct_1(vec2<i32>(u_input.b.x, 1i), u_input.b.x, vec4<f32>(967f, -936f, 582f, -1000f), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x))))) < u_input.b.x), vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, ~18992u), _wgslsmith_clamp_u32(60647u, abs(~u_input.c.x), ~func_4(vec4<f32>(1150f, 462f, -642f, -580f), Struct_1(vec2<i32>(arg_0, 0i), -27606i, vec4<f32>(1959f, -501f, -1896f, 1000f), vec4<bool>(global0.x, false, false, global0.x), vec3<bool>(false, global0.x, global0.x)), global0.x).x)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1940f))), true));
    var var_2 = 32207u;
    var var_3 = 953f;
    var_2 = 19111u;
    return vec4<bool>(false, false, (u_input.c.x ^ firstLeadingBit(_wgslsmith_mult_u32(9154u, u_input.c.x))) >= ~34891u, global0.x);
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    global0 = select(arg_1, !(!vec2<bool>(31428i < u_input.b.x, all(vec2<bool>(arg_1.x, false)))), vec2<bool>(arg_2.d.x, false));
    let var_0 = arg_3;
    let var_1 = _wgslsmith_add_i32(var_0.b << (arg_0 % 32u), 42541i);
    let var_2 = Struct_1(vec2<i32>(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, var_1), _wgslsmith_add_i32(var_1, -8291i))), 0i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, arg_2.a.x, 46195i), vec3<i32>(u_input.b.x, var_1, u_input.a)), max(u_input.b, vec3<i32>(-1i, arg_2.a.x, u_input.a))) << (~arg_0 % 32u), 2147483647i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.c.x, 347f, _wgslsmith_f_op_f32(-arg_2.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c.x, -1693f) + _wgslsmith_f_op_f32(arg_3.c.x + 1085f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.x, -320f, 1131f, -722f) * vec4<f32>(-762f, -1362f, -1655f, -848f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.c.x, 561f, 444f, 138f), vec4<f32>(-1658f, arg_3.c.x, arg_2.c.x, var_0.c.x), arg_3.d))))), arg_3.e.x)), var_0.d, !(!arg_3.d.zzy));
    let var_3 = abs(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(countOneBits(u_input.a), _wgslsmith_mult_i32(var_2.a.x, var_0.b), 15511i)), u_input.b));
    return func_1(max(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(22132i, arg_3.b, 40254i, var_0.a.x), vec4<i32>(arg_3.b, 1i, u_input.b.x, 53069i)) & ~25039i, 2147483647i), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_sub_i32(-96672i, -var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_u32(14044u, 4294967295u), vec2<bool>(!any(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), true)), true), Struct_1(u_input.b.yx, abs(-_wgslsmith_sub_i32(u_input.b.x, -4733i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-388f, 1072f, -918f, -362f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1265f, -1838f, 1487f, -907f)))), !select(!vec4<bool>(false, true, global0.x, true), func_1(2147483647i), true), !func_1(-u_input.a).xxx), Struct_1(u_input.b.zx, u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), 353f, -1030f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(178f, -845f))))), func_1(4709i), vec3<bool>(global0.x, global0.x, false)));
    var var_1 = max(_wgslsmith_mod_u32(abs(_wgslsmith_div_u32(3348u, u_input.c.x)), 19659u), 1080u) <= u_input.c.x;
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32((abs(vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u)) & vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 95803u)) ^ (_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)) >> ((vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x) & vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))), ~(~(~vec4<u32>(u_input.c.x, 43252u, u_input.c.x, 4294967295u))), ~vec4<u32>(3910u, ~u_input.c.x, 1u, u_input.c.x)), u_input.c, ~vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, 7656u)), _wgslsmith_div_u32(1u, ~u_input.c.x), u_input.c.x >> ((29028u | u_input.c.x) % 32u)));
    let var_3 = Struct_1(-vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(-2480i, u_input.b.x, 51440i), vec3<i32>(-1i, -2147483647i, u_input.a))), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, u_input.a, -1i, -47536i), reverseBits(vec4<i32>(u_input.a, 1i, 2147483647i, u_input.b.x)))), firstTrailingBit(_wgslsmith_add_i32(abs(-2147483647i), u_input.b.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1206f, 321f, -169f, 1000f) * vec4<f32>(-1202f, 889f, -159f, 183f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -598f, 449f, 379f) * vec4<f32>(980f, -786f, 251f, -478f)), all(var_0.www))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-595f, -1484f, -276f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-248f, -909f, 265f, -2124f), vec4<f32>(245f, 684f, 2506f, 480f))) + vec4<f32>(_wgslsmith_f_op_f32(1161f * 430f), 1f, _wgslsmith_f_op_f32(floor(424f)), _wgslsmith_f_op_f32(step(1423f, 904f)))))), func_1(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-25742i, u_input.b.x), _wgslsmith_div_i32(u_input.a, -101069i), 1i) & max(_wgslsmith_div_i32(-45751i, u_input.a), ~(-21155i))), vec3<bool>(true, var_0.x, var_0.x));
    let var_4 = Struct_2(var_3);
    var_2 = vec4<u32>(abs(~u_input.c.x), ~u_input.c.x, ~u_input.c.x, u_input.c.x | ~0u) & vec4<u32>(select(~_wgslsmith_mult_u32(4294967295u, var_2.x), ~16393u, var_4.a.c.x < _wgslsmith_f_op_f32(max(var_4.a.c.x, var_3.c.x))), var_2.x, ~(~var_2.x) >> (~_wgslsmith_div_u32(26787u, 23861u) % 32u), ~(var_2.x << ((8942u << (u_input.c.x % 32u)) % 32u)));
    let var_5 = ~vec3<u32>(7802u, _wgslsmith_mult_u32(~1u, u_input.c.x), _wgslsmith_dot_vec4_u32(select(u_input.c, ~vec4<u32>(u_input.c.x, u_input.c.x, 67035u, var_2.x), true), u_input.c));
    var var_6 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-278f, _wgslsmith_add_vec2_u32(~vec2<u32>(~14521u, ~var_6.x), ~(~_wgslsmith_div_vec2_u32(var_6.wy, vec2<u32>(var_2.x, 4294967295u)))), i32(-1i) * -2147483647i);
}

