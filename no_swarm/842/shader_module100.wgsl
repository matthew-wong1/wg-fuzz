struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(1000f), Struct_1(vec2<bool>(false, false), vec4<bool>(true, true, true, false), vec3<bool>(true, false, true)), i32(-2147483648));

var<private> global1: bool;

var<private> global2: vec2<f32>;

var<private> global3: i32 = 14078i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> u32 {
    global3 = -80904i;
    global3 = _wgslsmith_add_i32(8947i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 55518i, -1i, global0.c), min(vec4<i32>(-2147483647i, -2147483647i, 26687i, global0.c), max(vec4<i32>(-1i, -14931i, -5517i, global0.c), vec4<i32>(41663i, -2147483647i, global0.c, 1i)))));
    global2 = vec2<f32>(717f, _wgslsmith_f_op_f32(step(517f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.a - arg_1.x))) + _wgslsmith_f_op_f32(f32(-1f) * -498f)))));
    global3 = global0.c;
    var var_0 = arg_0.x;
    return ~abs(u_input.a.x);
}

fn func_3() -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global2.x, global0.a.a, global0.b.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -287f), -2453f))))));
    var var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) * global2.x) * _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(global0.a.a + global2.x), false))));
    global2 = vec2<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-795f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_f_op_f32(ceil(global2.x)))))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global0.a.a)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, global2.x)))) + vec2<f32>(_wgslsmith_f_op_f32(global0.a.a - -394f), global0.a.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1602f + 457f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.x, 953f), vec2<f32>(-1111f, 184f))), vec2<f32>(global0.a.a, global2.x))))));
    var var_1 = global0.c | -(~global0.c);
    return global0.a.a;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global2.x, arg_1.a), -1637f, _wgslsmith_f_op_f32(func_3())));
    let var_1 = vec3<u32>(~u_input.a.x, firstLeadingBit(~(2906u << (u_input.c.x % 32u))), 32267u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x + arg_1.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1775f + arg_1.a))), global2.x, _wgslsmith_div_f32(global2.x, 1206f))));
    let var_3 = Struct_2(-1043f);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 1001f, var_0.x, var_2.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.a, -1235f, global0.a.a, global2.x))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.a, -242f, global2.x, arg_1.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, 281f, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, var_2.x, var_2.x, 348f) - vec4<f32>(arg_1.a, global2.x, arg_1.a, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2708f, global0.a.a, -362f, 141f) * vec4<f32>(-1552f, 913f, -1244f, global2.x)), !global0.b.c.x)), any(global0.b.b)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(361f - var_3.a), _wgslsmith_f_op_f32(var_2.x * -466f), _wgslsmith_f_op_f32(-1160f - var_2.x), _wgslsmith_f_op_f32(global2.x + 238f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1300f, global2.x, var_0.x, -1642f) - vec4<f32>(272f, var_0.x, 430f, global0.a.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2108f, 773f, arg_1.a, -615f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, global0.a.a, global2.x, -209f), vec4<f32>(-695f, 1000f, -1000f, -2024f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(135f, arg_1.a, var_0.x, -465f)), global0.b.b)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(437f, var_3.a, var_2.x, var_0.x)))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.a + var_3.a))))));
}

fn func_4(arg_0: f32) -> vec3<u32> {
    global0 = Struct_3(global0.a, Struct_1(select(vec2<bool>(global0.b.c.x, global0.b.c.x == global0.b.b.x), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec4<bool>(global0.b.a.x, global0.b.a.x, any(global0.b.c), global0.b.c.x), select(vec4<bool>(false, global0.b.c.x, global0.b.b.x, global0.b.b.x), global0.b.b, select(global0.b.b, global0.b.b, global0.b.a.x)), !select(global0.b.b, vec4<bool>(global0.b.b.x, global0.b.b.x, global0.b.c.x, true), global0.b.b.x)), select(!select(global0.b.b.xxz, vec3<bool>(false, false, global0.b.c.x), global0.b.c), select(vec3<bool>(global0.b.b.x, global0.b.c.x, global0.b.b.x), vec3<bool>(global0.b.c.x, false, false), select(vec3<bool>(false, global0.b.c.x, false), global0.b.b.xxw, true)), any(!global0.b.b))), -abs(_wgslsmith_clamp_i32(abs(10901i), -global0.c, global0.c)));
    let var_0 = 2147483647i;
    global3 = _wgslsmith_mod_i32(~global0.c, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-81475i, global0.c, global0.c), _wgslsmith_clamp_i32(global0.c, global0.c, 26447i), global0.c << (u_input.a.x % 32u), abs(global0.c)), vec4<i32>(-1i) * -vec4<i32>(1i, 2147483647i, var_0, -26978i))));
    let var_1 = global0.a;
    let var_2 = 11396i;
    return vec3<u32>(~(~u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, u_input.c.x, select(~1u, 0u, select(global0.b.a.x, true, global0.b.c.x))), _wgslsmith_div_u32(~abs(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~4294967295u, _wgslsmith_add_u32(9512u, 47082u), func_1(vec3<bool>(true, global0.b.c.x, false), vec3<f32>(-625f, -276f, var_1.a))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, 1u), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.b.x), vec4<u32>(u_input.c.x, 16823u, 4294967295u, u_input.a.x)), vec4<u32>(39192u, _wgslsmith_mod_u32(20329u, u_input.a.x), 8901u >> (1u % 32u), 1u)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, ~4294967295u), ~(~u_input.a.x), ~func_1(vec3<bool>(false, global0.b.b.x, global0.b.b.x), vec3<f32>(-1345f, global0.a.a, global0.a.a)), u_input.b.x));
    let var_1 = _wgslsmith_sub_vec3_i32(~vec3<i32>(max(global0.c, -2147483647i), -1i, ~global0.c) >> ((~vec3<u32>(1u, 55046u, 52069u) >> (func_4(_wgslsmith_f_op_f32(func_2(global0.b.c.x, global0.a, vec4<i32>(global0.c, 0i, -15860i, -2147483647i), true))) % vec3<u32>(32u))) % vec3<u32>(32u)), select(vec3<i32>(abs(global0.c) << (4294967295u % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, global0.c, 15741i), vec3<i32>(global0.c, global0.c, -54724i)), global0.c & (-26192i >> (u_input.c.x % 32u))), vec3<i32>(global0.c, _wgslsmith_add_i32(global0.c ^ -1684i, max(global0.c, 1i)), -_wgslsmith_sub_i32(global0.c, -13956i)), global0.b.b.wxw));
    var var_2 = Struct_4(13868i, Struct_3(global0.a, Struct_1(global0.b.b.xz, !vec4<bool>(false, global0.b.a.x, false, false), select(select(vec3<bool>(true, global0.b.c.x, global0.b.a.x), vec3<bool>(true, false, global0.b.b.x), global0.b.c), !global0.b.c, vec3<bool>(false, false, true))), firstTrailingBit(~countOneBits(56899i))), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(var_1.yx, -var_1.xx | var_1.yy)));
    global3 = (_wgslsmith_mod_i32(10149i, var_1.x) & ~firstTrailingBit(_wgslsmith_dot_vec2_i32(var_1.xy, vec2<i32>(global0.c, var_2.a)))) >> (var_0.x % 32u);
    var_2 = Struct_4(-(~abs(~var_2.c.x)), Struct_3(Struct_2(_wgslsmith_f_op_f32(step(-2726f, _wgslsmith_f_op_f32(func_3())))), var_2.b.b, global0.c), abs(-_wgslsmith_mod_vec2_i32(~var_2.c, vec2<i32>(1455i, var_2.b.c))));
    global3 = 2147483647i;
    var var_3 = global0.c;
    global1 = all(select(vec3<bool>(all(!global0.b.c), _wgslsmith_f_op_f32(-1422f - global2.x) < _wgslsmith_f_op_f32(step(global2.x, -1452f)), global0.b.c.x), !vec3<bool>(false, global0.b.a.x, true), u_input.c.x != 24643u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(_wgslsmith_div_i32(~global0.c, global0.c), var_2.c.x), _wgslsmith_div_f32(-1252f, global0.a.a));
}

