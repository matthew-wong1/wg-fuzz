struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 12>;

var<private> global3: vec3<i32>;

var<private> global4: u32 = 0u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_3(select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1.d, vec4<u32>(global1.d.x, 94779u, u_input.d.x, 4294967295u)), 12u)] & any(arg_2), false, !arg_1), select(arg_2, vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 12u)], false), true), global0.x), Struct_1(~global3.x, ~2147483647i, _wgslsmith_mult_i32(reverseBits(select(global3.x, u_input.a, true)), 1i), vec4<u32>(~_wgslsmith_mult_u32(global1.d.x, 47420u), u_input.e.x, 19972u >> (abs(0u) % 32u), u_input.d.x | countOneBits(u_input.e.x))), select(any(!(!vec4<bool>(false, arg_2.x, true, arg_1))), all(select(vec3<bool>(true, true, arg_2.x), arg_2, global0.x)), !any(!vec4<bool>(true, false, false, arg_2.x))), ~_wgslsmith_sub_i32(1i, countOneBits(~2623i)));
    global0 = select(arg_2.yy, vec2<bool>(arg_1, !select(global0.x, true, true)), true);
    global4 = _wgslsmith_div_u32(~(~(~u_input.e.x) | ~(~4294967295u)), var_0.b.d.x);
    var var_1 = !arg_2.x & arg_1;
    let var_2 = Struct_2(u_input.b, _wgslsmith_f_op_f32(abs(1090f)), Struct_1(~u_input.b.x, u_input.b.x, _wgslsmith_div_i32(global3.x, max(_wgslsmith_div_i32(global1.a, 1i), _wgslsmith_sub_i32(var_0.b.c, global1.c))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 60989u, u_input.d.x, 4294967295u), max(vec4<u32>(4294967295u, u_input.d.x, global1.d.x, 0u), vec4<u32>(0u, 20237u, 4294967295u, 28065u))) ^ ~(var_0.b.d ^ global1.d)), vec2<f32>(-1745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-453f - -1000f) - _wgslsmith_f_op_f32(min(2069f, 591f))))), global0.x);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(arg_0.x), ~min(1i, arg_0.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(select(-14541i, 25782i, global2[_wgslsmith_index_u32(u_input.e.x, 12u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), global3.zx), max(0i, 2147483647i)), _wgslsmith_mod_i32(firstLeadingBit(var_2.c.a), 1i))), vec3<i32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(37227i, u_input.b.x, global3.x, var_0.d), u_input.b), vec4<i32>(global1.a, 2147483647i, 64835i, var_0.d))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global3 = vec3<i32>(~4709i, func_3(abs(vec3<i32>(global1.a, global1.c, _wgslsmith_mod_i32(global3.x, 2147483647i))), any(vec2<bool>(global0.x, u_input.e.x == 14645u)), !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], false, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.d.x, global1.d.x), 12u)])), 2147483647i);
    var var_0 = Struct_1(~(-2147483647i ^ global1.c), func_3(select(-vec3<i32>(u_input.b.x, 0i, u_input.b.x), firstTrailingBit(u_input.b.xwz), any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 12u)], global2[_wgslsmith_index_u32(global1.d.x, 12u)]))), false, !vec3<bool>(true, true, global2[_wgslsmith_index_u32(~global1.d.x, 12u)])), ~firstLeadingBit(global3.x), vec4<u32>(global1.d.x, global1.d.x, _wgslsmith_dot_vec3_u32(u_input.e.yzx, firstTrailingBit(~vec3<u32>(u_input.c, 72347u, 87763u))), _wgslsmith_div_u32(~u_input.d.x, 1u)));
    global1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-18820i, global3.x), _wgslsmith_add_i32(global3.x, firstTrailingBit(u_input.a))), _wgslsmith_dot_vec4_i32(-vec4<i32>(global3.x ^ -43476i, 0i, -2147483647i, global1.a), u_input.b), global3.x, _wgslsmith_sub_vec4_u32(abs(min(vec4<u32>(10202u, 8815u, 29524u, 1u) >> (vec4<u32>(u_input.e.x, 1u, 15468u, 33995u) % vec4<u32>(32u)), u_input.e)), ~_wgslsmith_mod_vec4_u32(~u_input.e, vec4<u32>(47486u, 67419u, var_0.d.x, global1.d.x))));
    let var_1 = 60903u;
    global2 = array<bool, 12>();
    return Struct_1(u_input.b.x ^ u_input.a, ~(_wgslsmith_add_i32(-31939i, _wgslsmith_div_i32(var_0.b, var_0.c)) & 0i), ~(-(-31372i & var_0.b) >> (global1.d.x % 32u)), global1.d);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(vec4<i32>(2147483647i, abs(select(-4295i, 2147483647i, global2[_wgslsmith_index_u32(global1.d.x, 12u)])), -1i, _wgslsmith_sub_i32(1i, u_input.b.x) << (u_input.e.x % 32u)) >> (vec4<u32>(_wgslsmith_mod_u32(~u_input.d.x, 7126u), ~_wgslsmith_clamp_u32(global1.d.x, u_input.c, 0u), 1u, 51874u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -545f))) - _wgslsmith_f_op_f32(ceil(-452f))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1126f, -1215f) - vec2<f32>(1000f, -1185f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-456f, 206f) - vec2<f32>(136f, -1360f)))))), !(global2[_wgslsmith_index_u32(global1.d.x, 12u)] & true));
    var var_1 = ~u_input.e.yx >> (u_input.d % vec2<u32>(32u));
    var var_2 = select(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(~4294967295u, 12u)], true);
    var var_3 = _wgslsmith_mult_u32(4294967295u, global1.d.x);
    global1 = Struct_1(1i, -_wgslsmith_sub_i32(0i ^ -u_input.a, global3.x), firstTrailingBit(i32(-1i) * -(u_input.a << (48856u % 32u))), ~(~abs(vec4<u32>(15761u, 11854u, var_1.x, var_0.c.d.x))) << (vec4<u32>(global1.d.x, ~(var_1.x >> (u_input.c % 32u)), _wgslsmith_add_u32(~var_0.c.d.x, _wgslsmith_add_u32(var_1.x, 45473u)), ~var_0.c.d.x) % vec4<u32>(32u)));
    return func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2109f - 375f) - var_0.d.x) * var_0.b), -871f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = 1f;
    let var_1 = Struct_2(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(786f - 337f), _wgslsmith_f_op_f32(trunc(-585f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_1(), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(638f * 486f), _wgslsmith_f_op_f32(f32(-1f) * -1200f)), vec2<f32>(_wgslsmith_f_op_f32(1000f - -1533f), -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(1f, 1f))))), true);
    var var_2 = func_2(var_1.d);
    let var_3 = var_1;
    global2 = array<bool, 12>();
    var var_4 = Struct_2(vec4<i32>(countOneBits(select(global3.x, global3.x, true)), ~(-49274i), 30589i, abs(-17569i)), -1272f, var_3.c, var_3.d, any(!vec4<bool>(global0.x, true, true, !var_1.e)));
    let var_5 = (false | global2[_wgslsmith_index_u32(var_3.c.d.x, 12u)]) & var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2092f * -494f)) * var_1.d.x), -451f)), var_3.c.d.x, u_input.d.x, var_3.d.x);
}

