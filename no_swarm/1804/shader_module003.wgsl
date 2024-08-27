struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 14341u);

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<f32>(441f, 255f, 445f)), Struct_1(vec3<f32>(-464f, 1283f, -497f)), Struct_1(vec3<f32>(990f, -353f, -1000f)), Struct_1(vec3<f32>(-119f, -834f, 1000f)), Struct_1(vec3<f32>(1018f, -119f, 339f)), Struct_1(vec3<f32>(-991f, -960f, 1000f)));

var<private> global2: array<bool, 15>;

var<private> global3: vec4<f32> = vec4<f32>(673f, 1000f, -822f, -451f);

var<private> global4: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> f32 {
    let var_0 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.c, _wgslsmith_mod_u32(_wgslsmith_mod_u32(global0.x, 6592u), 0u), ~(~global0.x)), abs(min(vec3<u32>(25567u, u_input.c, u_input.c), ~vec3<u32>(global0.x, 4294967295u, global0.x))));
    var var_1 = Struct_1(global3.zxz);
    var var_2 = global1[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(~0u | global0.x, 0u, 101887u) & ~_wgslsmith_clamp_u32(global0.x, ~var_0.x, u_input.c)), 6u)];
    var var_3 = countOneBits(vec2<i32>(~(~max(u_input.a, u_input.b)), u_input.b | -62018i));
    var var_4 = -abs(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_3.x & u_input.a, i32(-1i) * -2147483647i, -2147483647i), 1i));
    return global3.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = vec4<f32>(arg_2, _wgslsmith_f_op_f32(200f * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(473f * -1616f))))), _wgslsmith_f_op_f32(select(arg_1.a.x, arg_2, global2[_wgslsmith_index_u32(~(u_input.c & global0.x), 15u)] & global2[_wgslsmith_index_u32(~(~0u), 15u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_1.a.zx, false)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-268f * global3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.x))))));
    let var_1 = -19403i;
    global2 = array<bool, 15>();
    global1 = array<Struct_1, 6>();
    let var_2 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.c, 4268u, 8171u) << (vec3<u32>(global0.x, u_input.c, u_input.c) % vec3<u32>(32u))), ~vec3<u32>(59528u, global0.x, 19310u)), ~reverseBits(vec3<u32>(1u, 4294967295u, 95556u)) << (vec3<u32>(4294967295u, u_input.c, _wgslsmith_div_u32(2633u, 86274u)) % vec3<u32>(32u))), 26u)];
    return _wgslsmith_div_i32(-(~(-abs(arg_0.x))), -var_1);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    var var_0 = u_input.c;
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1467f, global3.x, arg_3.x, global3.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.x * global3.x), 305f, 720f, _wgslsmith_f_op_f32(floor(arg_3.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<f32>(1000f, arg_3.x, -366f, global3.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, 1927f, global3.x, -448f), vec4<f32>(-164f, arg_3.x, global3.x, global3.x)))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(355f, 1000f, arg_3.x, arg_3.x)))))));
    let var_1 = arg_1;
    let var_2 = Struct_2(all(vec3<bool>(u_input.c > 16630u, select(arg_1.a, true, any(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, false))), true)));
    let var_3 = global1[_wgslsmith_index_u32(min(global0.x, ~u_input.c) | ~1u, 6u)];
    return arg_3.x;
}

fn func_1() -> vec3<u32> {
    var var_0 = global4[_wgslsmith_index_u32(~global0.x, 26u)];
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-557f, 325f) - vec2<f32>(global3.x, -980f)), global2[_wgslsmith_index_u32(49886u & global0.x, 15u)]))) * -1483f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2059f))))), _wgslsmith_f_op_f32(sign(1655f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.a <= func_3(vec3<i32>(u_input.b, u_input.b, 2147483647i), Struct_1(vec3<f32>(global3.x, 450f, -531f)), global3.x), global4[_wgslsmith_index_u32(1u, 26u)], u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, global3.x))))));
    var var_2 = 1u;
    var var_3 = -u_input.a > ((countOneBits(_wgslsmith_div_i32(u_input.a, -34902i)) ^ countOneBits(~u_input.a)) | (-56241i & -func_3(vec3<i32>(u_input.b, u_input.a, u_input.a), global1[_wgslsmith_index_u32(global0.x, 6u)], var_1.x)));
    let var_4 = global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(34390u, _wgslsmith_mult_u32(48588u, u_input.c), ~30646u), vec3<u32>(1u, select(17531u, u_input.c, global2[_wgslsmith_index_u32(20241u, 15u)]), 0u >> (1u % 32u)))), 6u)];
    return ~(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.c, 1u, 14619u)), vec3<u32>(55016u, 11078u, global0.x)), abs(~vec3<u32>(59707u, global0.x, global0.x))) | _wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, global0.x, 51642u)), ~vec3<u32>(u_input.c, u_input.c, u_input.c)));
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x)))) + _wgslsmith_f_op_f32(step(547f, _wgslsmith_f_op_f32(-1867f - -434f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -152f);
    var var_0 = global4[_wgslsmith_index_u32(u_input.c, 26u)];
    var var_1 = arg_0;
    var_1 = _wgslsmith_mult_vec3_u32(arg_0, func_1());
    global1 = array<Struct_1, 6>();
    return vec4<bool>(false, 7425u >= max(~u_input.c, u_input.c), global2[_wgslsmith_index_u32(1u, 15u)], false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(max(~func_1() ^ func_1(), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.c, u_input.c)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1085f, -201f)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global3.wzy)))));
    var var_1 = Struct_2(any(!vec4<bool>(!global2[_wgslsmith_index_u32(global0.x, 15u)], false, true, 532f != global3.x)));
    global0 = vec2<u32>(select(29670u, ~_wgslsmith_mod_u32(1u, 1u), _wgslsmith_f_op_f32(-global3.x) < global3.x), 0u);
    global0 = vec2<u32>(_wgslsmith_sub_u32(u_input.c >> (~(~u_input.c) % 32u), _wgslsmith_mult_u32(65602u, u_input.c)), (global0.x | 0u) << (global0.x % 32u));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1474f), _wgslsmith_f_op_f32(871f + global3.x), -1000f, _wgslsmith_f_op_f32(global3.x * global3.x));
    global0 = ~(~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(global0.x, global0.x), firstTrailingBit(vec2<u32>(4294967295u, 0u))), vec2<u32>(~u_input.c, u_input.c)));
    var var_2 = global1[_wgslsmith_index_u32(~global0.x, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(24505u, ~select(~(~vec3<i32>(-2147483647i, u_input.a, -35428i)), vec3<i32>(~0i, -2147483647i, ~5504i), true), global3.xx);
}

