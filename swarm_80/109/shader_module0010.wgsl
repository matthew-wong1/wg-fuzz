struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<vec2<u32>, 2>;

var<private> global4: array<bool, 15> = array<bool, 15>(false, false, false, false, false, false, true, false, true, false, true, true, true, false, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global2.a.x, global2.e.x, global2.a.x)), vec4<f32>(global0.x, global0.x, global0.x, -129f), select(vec4<bool>(arg_1, global4[_wgslsmith_index_u32(16684u, 15u)], arg_1, arg_1), vec4<bool>(arg_1, true, true, false), vec4<bool>(arg_1, false, true, arg_1))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1556f, global2.e.x, _wgslsmith_f_op_f32(global2.e.x * -1546f), _wgslsmith_f_op_f32(-global2.a.x)))), -vec3<i32>(_wgslsmith_clamp_i32(-5109i, _wgslsmith_sub_i32(2147483647i, global2.b.x), global2.b.x), max(23958i, 1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.x, 1i, u_input.c, -2147483647i), vec4<i32>(u_input.c, -17764i, global2.b.x, -9283i))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(arg_0.x, 2u)], global3[_wgslsmith_index_u32(0u, 2u)]), arg_0.x, reverseBits(arg_0.x)), ~max(vec3<u32>(4294967295u, global2.c.x, global2.d.x), vec3<u32>(u_input.d.x, arg_0.x, u_input.d.x))), firstTrailingBit(vec2<u32>(abs(_wgslsmith_mod_u32(1u, 1u)), _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(global2.c.x, arg_0.x, arg_0.x, global2.c.x)) ^ countOneBits(arg_0.x))), _wgslsmith_f_op_vec4_f32(round(global2.e)));
    var var_1 = !(!select(!select(vec2<bool>(arg_1, false), vec2<bool>(global4[_wgslsmith_index_u32(var_0.c.x, 15u)], global4[_wgslsmith_index_u32(global2.c.x, 15u)]), vec2<bool>(global4[_wgslsmith_index_u32(1u, 15u)], true)), vec2<bool>(var_0.e.x > -1640f, any(vec2<bool>(false, arg_1))), !vec2<bool>(arg_1, global4[_wgslsmith_index_u32(global2.d.x, 15u)])));
    global0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-718f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global2.e.x)))))))), global0.x);
    global3 = array<vec2<u32>, 2>();
    let var_2 = _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-7137i, 30546i, 103716i, arg_2.x), vec4<i32>(-1i, var_0.b.x, 33251i, 0i)), global2.b.x, -var_0.b.x, global2.b.x), select(vec4<i32>(0i, global2.b.x, -1i, var_0.b.x) | vec4<i32>(var_0.b.x, -1i, 2147483647i, var_0.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 1i, arg_2.x, u_input.b), vec4<i32>(4851i, u_input.b, arg_2.x, var_0.b.x)), vec4<bool>(true, arg_1, true, var_1.x))), firstTrailingBit(-vec4<i32>(arg_2.x & 1i, -2147483647i, -1i, global2.b.x)));
    return var_0.d.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e.x + -118f) - 848f));
    global3 = array<vec2<u32>, 2>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.e), vec3<i32>(global2.b.x & global2.b.x, countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global2.b, vec3<i32>(u_input.c, global2.b.x, arg_0.x), vec3<i32>(u_input.b, -29299i, 1i)), global2.b)), select(arg_0.x, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.x, global2.b.x, -2147483647i), vec3<i32>(-10310i, arg_0.x, arg_0.x)) != -1i)), ~vec3<u32>(global2.c.x, _wgslsmith_clamp_u32(func_3(u_input.a, false, arg_0), u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), abs(~u_input.d.x)), global2.c.yz, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2032f * -913f) + _wgslsmith_f_op_f32(-282f + -240f)), global2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global2.a.x, 517f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + 778f), _wgslsmith_f_op_f32(step(global0.x, 706f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1062f)), 1061f, _wgslsmith_f_op_f32(f32(-1f) * -1652f), _wgslsmith_f_op_f32(min(global0.x, global0.x))) + vec4<f32>(1000f, _wgslsmith_f_op_f32(max(global2.e.x, 396f)), _wgslsmith_f_op_f32(-global2.a.x), global0.x))));
    var var_2 = reverseBits(_wgslsmith_mod_i32(u_input.c, var_1.b.x));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(469f, var_1.e.x, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(-var_1.e))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1616f, global2.e.x, 1000f, 576f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-209f, -268f, global0.x, -377f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global2.e * var_1.e)))))), ~global2.b, vec3<u32>(u_input.d.x, 31978u, abs(u_input.a.x)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(56218u), var_1.c.x), u_input.d.yz), ~_wgslsmith_div_vec2_u32(global2.c.xz, ~vec2<u32>(u_input.d.x, 0u)), u_input.d.yy), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1688f, var_1.e.x, 1789f, 530f) + var_1.a), _wgslsmith_f_op_vec4_f32(global2.a - var_1.e), vec4<bool>(arg_1, true, arg_1, false))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1.e)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global2.e.x, var_1.a.x, global0.x), var_1.e), var_1.e)))));
    return var_1.a.wzz;
}

fn func_1() -> i32 {
    var var_0 = global2.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-758f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0.x)), -230f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(2305f, -455f, global0.x) - global2.e.wyz))))), all(select(select(vec3<bool>(true, global4[_wgslsmith_index_u32(709u, 15u)], global4[_wgslsmith_index_u32(56288u, 15u)]), vec3<bool>(global4[_wgslsmith_index_u32(0u, 15u)], false, global4[_wgslsmith_index_u32(global2.d.x, 15u)]), global4[_wgslsmith_index_u32(4294967295u, 15u)]), !vec3<bool>(global4[_wgslsmith_index_u32(global2.d.x, 15u)], true, true), select(vec3<bool>(global4[_wgslsmith_index_u32(global2.d.x, 15u)], global4[_wgslsmith_index_u32(1u, 15u)], true), vec3<bool>(global4[_wgslsmith_index_u32(var_0.x, 15u)], global4[_wgslsmith_index_u32(var_0.x, 15u)], true), vec3<bool>(global4[_wgslsmith_index_u32(var_0.x, 15u)], false, global4[_wgslsmith_index_u32(5451u, 15u)]))))))));
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(global2.a, global2.a), max(~global2.b, -global2.b), u_input.d, var_0.yx ^ ((~vec2<u32>(global2.c.x, 0u) << (~vec2<u32>(global2.c.x, 0u) % vec2<u32>(32u))) ^ vec2<u32>(u_input.d.x, ~u_input.a.x)), global2.e);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(global2.b.xz, any(!(!vec4<bool>(global4[_wgslsmith_index_u32(63426u, 15u)], global4[_wgslsmith_index_u32(1u, 15u)], global4[_wgslsmith_index_u32(41392u, 15u)], true))))));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + var_1.x))))), 759f, -583f, 219f), min(_wgslsmith_div_vec3_i32(global2.b, var_2.b), vec3<i32>(reverseBits(_wgslsmith_add_i32(global2.b.x, global2.b.x)), var_2.b.x, ~reverseBits(var_2.b.x))), ~(vec3<u32>(var_2.c.x, 33427u, 1u) >> (select(vec3<u32>(global2.d.x, var_0.x, u_input.a.x), vec3<u32>(global2.c.x, u_input.d.x, u_input.d.x), vec3<bool>(true, global4[_wgslsmith_index_u32(var_2.d.x, 15u)], global4[_wgslsmith_index_u32(global2.c.x, 15u)])) % vec3<u32>(32u))) ^ vec3<u32>(57639u, 456u, _wgslsmith_div_u32(27468u, var_0.x)), vec2<u32>(abs(~abs(0u)), 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-809f, 415f, 1641f, global2.e.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1000f, -921f))) * var_2.e));
    return _wgslsmith_mult_i32(var_3.b.x ^ 62756i, var_2.b.x & -20338i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(~abs(u_input.d.x << (u_input.a.x % 32u))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(~u_input.b << (~50746u % 32u), func_1() & ~u_input.c), global2.b.x));
}

