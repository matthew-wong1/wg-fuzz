struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(80022i, -1i, -12341i, 2147483647i, 0i, i32(-2147483648), 53388i, 2147483647i, -22788i, -1i, -1i, -11871i, 2147483647i, i32(-2147483648), i32(-2147483648));

var<private> global1: Struct_2;

var<private> global2: bool;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> vec4<u32> {
    let var_0 = all(vec4<bool>(true, _wgslsmith_f_op_f32(ceil(1000f)) <= -750f, true, true)) && arg_0;
    global2 = all(!global1.a.yy);
    global1 = Struct_2(vec3<bool>(_wgslsmith_mult_u32(u_input.c.x & 23376u, u_input.c.x) < 8028u, any(select(vec4<bool>(global1.a.x, global1.a.x, false, var_0), !vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, false, false, var_0))), all(select(!global1.a, select(vec3<bool>(global1.a.x, false, false), global1.a, var_0), !vec3<bool>(false, true, var_0)))), global1.c.e, global1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(656f, global1.c.a.x, 1362f, arg_1.x), global1.d))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1023f, 1142f, -1000f, 710f)) * vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-1000f - 160f), _wgslsmith_f_op_f32(-global1.d.x), arg_1.x))), _wgslsmith_clamp_vec2_i32(~abs(_wgslsmith_mod_vec2_i32(global1.c.b, global1.c.b)), vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, 1i), _wgslsmith_mult_i32(-u_input.d.x, global1.c.b.x)), vec2<i32>(countOneBits(-2147483647i), global1.c.b.x) & -global1.e));
    global2 = true;
    let var_1 = countOneBits(abs(-vec3<i32>(-36841i, -1i, u_input.d.x >> (68350u % 32u))));
    return _wgslsmith_mult_vec4_u32(reverseBits(~u_input.b << (u_input.b % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(global1.c.d.x), global1.c.c.x, ~1u, ~(~global1.c.d.x)), ~vec4<u32>(7950u, ~u_input.a, global1.c.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(37224u, u_input.c.x, u_input.a), vec3<u32>(1u, global1.b.x, 10273u)))));
}

fn func_2() -> Struct_2 {
    var var_0 = 0u;
    let var_1 = any(global1.a.xy);
    var var_2 = countOneBits(0u);
    let var_3 = Struct_3(_wgslsmith_clamp_vec4_u32(func_3(false, global1.c.a.wy), vec4<u32>(_wgslsmith_clamp_u32(global1.c.d.x, global1.b.x, global1.b.x), global1.b.x, _wgslsmith_add_u32(7638u, global1.c.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.c.c.x, global1.c.c.x), vec3<u32>(global1.b.x, u_input.b.x, global1.b.x))), max(vec4<u32>(u_input.b.x, 10150u, 0u, 41473u), u_input.b)) << ((max(vec4<u32>(15607u, 81295u, global1.b.x, u_input.c.x), u_input.b) ^ vec4<u32>(reverseBits(10389u), ~0u, ~u_input.c.x, global1.b.x ^ 56331u)) % vec4<u32>(32u)), global1.a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c.a - global1.c.a)), _wgslsmith_div_vec2_i32(abs(global1.e), vec2<i32>(-13318i << (0u % 32u), u_input.d.x | 1i)), ~(u_input.b.zy & (global1.c.c << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))), reverseBits(~_wgslsmith_clamp_vec2_u32(global1.b.xz, vec2<u32>(u_input.b.x, 23113u), vec2<u32>(global1.c.e.x, global1.b.x))), ~select(firstLeadingBit(u_input.c), global1.c.e << (vec3<u32>(global1.b.x, u_input.c.x, 1u) % vec3<u32>(32u)), global1.a)), u_input.b);
    var var_4 = select(!var_3.b.zy, select(vec2<bool>(var_3.c.a.x == _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(select(vec3<bool>(global1.a.x, false, global1.a.x), global1.a, true))), select(select(vec2<bool>(global1.a.x, var_3.b.x), vec2<bool>(false, true), !global1.a.xy), select(select(var_3.b.xz, vec2<bool>(true, true), var_1), select(vec2<bool>(var_1, var_3.b.x), var_3.b.zz, var_1), vec2<bool>(global1.a.x, true)), true), select(vec2<bool>(1248i <= global1.c.b.x, true), !select(global1.a.zx, var_3.b.zx, var_3.b.yz), vec2<bool>(false == global1.a.x, var_1))), select(vec2<bool>(false, all(select(vec4<bool>(false, true, global1.a.x, var_3.b.x), vec4<bool>(var_1, var_1, var_1, false), true))), vec2<bool>(global0[_wgslsmith_index_u32(~4294967295u, 15u)] > _wgslsmith_dot_vec3_i32(vec3<i32>(43067i, global1.c.b.x, global1.e.x), u_input.d.xzy), all(!vec4<bool>(global1.a.x, false, true, global1.a.x))), !select(global1.a.zz, select(global1.a.yy, var_3.b.yy, var_3.b.xx), var_1)));
    return Struct_2(select(var_3.b, select(vec3<bool>(global1.a.x, var_3.b.x, true), !vec3<bool>(false, true, global1.a.x), !vec3<bool>(var_3.b.x, var_4.x, false)), var_1), ~abs(var_3.c.e), var_3.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.c.a))), vec2<i32>(_wgslsmith_mod_i32(1i, min(~u_input.d.x, _wgslsmith_add_i32(72474i, global0[_wgslsmith_index_u32(global1.c.c.x, 15u)]))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 1i), vec2<i32>(var_3.c.b.x, -12963i)), 1i, -1i, -global0[_wgslsmith_index_u32(51987u, 15u)]), abs(u_input.d))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<bool> {
    global2 = false;
    var var_0 = Struct_3(_wgslsmith_add_vec4_u32(~func_3(global0[_wgslsmith_index_u32(arg_1.b.x, 15u)] == u_input.d.x, arg_0.zw), abs(u_input.b) & ~select(u_input.b, vec4<u32>(2166u, arg_1.b.x, global1.c.e.x, 17393u), vec4<bool>(true, global1.a.x, global1.a.x, arg_1.a.x))), vec3<bool>(!all(select(vec4<bool>(arg_1.a.x, true, false, false), vec4<bool>(true, arg_1.a.x, false, true), true)), arg_1.a.x, global1.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -1i) << (arg_1.b.yz % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-6767i, 12959i), global1.e)) | arg_1.c.b, countOneBits(vec2<u32>(global1.b.x, arg_1.b.x)), arg_1.b.zx, global1.c.e), u_input.b);
    return vec2<bool>(false, false);
}

fn func_1() -> vec2<i32> {
    global2 = all(func_4(_wgslsmith_f_op_vec4_f32(global1.c.a * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.c.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(419f, -178f, global1.d.x, 277f) - vec4<f32>(-157f, -724f, 436f, -1003f)), vec4<bool>(true, true, true, true)))), func_2()));
    global0 = array<i32, 15>();
    global1 = Struct_2(vec3<bool>(global1.a.x, any(vec2<bool>(all(vec4<bool>(true, global1.a.x, true, false)), true)), true), vec3<u32>(~8808u, 136u, u_input.c.x), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f * 928f), _wgslsmith_f_op_f32(global1.d.x + -1516f), global1.d.x, -618f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d))), select(global1.e, select(firstTrailingBit(vec2<i32>(66756i, global1.e.x)), ~global1.c.b, vec2<bool>(global1.a.x, true)), vec2<bool>(true, global1.d.x < global1.c.a.x)), vec2<u32>(u_input.c.x, max(global1.b.x, 8654u)) & ~reverseBits(global1.b.zy), func_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.c.a.yx, vec2<f32>(global1.d.x, global1.d.x)))).zz, _wgslsmith_mult_vec3_u32(~u_input.b.zxx, vec3<u32>(0u, 21383u, _wgslsmith_mod_u32(u_input.b.x, u_input.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global1.c.a * vec4<f32>(206f, -1749f, global1.d.x, global1.d.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1.d))))), abs(min(min(abs(global1.e), -vec2<i32>(-14008i, -16022i)), firstLeadingBit(vec2<i32>(24452i, 0i) << (global1.c.e.yz % vec2<u32>(32u))))));
    var var_0 = _wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d.yxy, firstTrailingBit(vec3<i32>(-24952i, 1i, u_input.d.x))), vec3<i32>(-4735i, -23878i, ~global1.e.x)), u_input.d.zyw);
    var var_1 = global1.a.x;
    return -vec2<i32>(u_input.d.x, ~_wgslsmith_mult_i32(global1.e.x, ~u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global1.c.a.x * global1.d.x);
    let var_1 = Struct_2(global1.a, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, global1.c.e.x)), global1.b), vec3<u32>(u_input.c.x, reverseBits(~global1.b.x), u_input.c.x)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(928f, 205f, -655f, -290f) - global1.d)) - vec4<f32>(_wgslsmith_f_op_f32(234f * global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -715f), -716f, global1.d.x)), func_1(), vec2<u32>(min(~global1.b.x, 4294967295u ^ global1.c.c.x), 37670u), _wgslsmith_mod_vec2_u32(~global1.c.d, vec2<u32>(global1.c.d.x, global1.b.x)) ^ vec2<u32>(~global1.b.x, firstLeadingBit(u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, abs(0u), 137847u), _wgslsmith_div_vec3_u32(reverseBits(global1.b), min(u_input.b.wzz, u_input.c)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c.a)), _wgslsmith_f_op_vec4_f32(global1.c.a * _wgslsmith_f_op_vec4_f32(-global1.c.a)))))), vec2<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(global1.c.c.x, 15u)], _wgslsmith_div_i32(2147483647i, 1i) << (~global1.b.x % 32u)), global1.c.b.x));
    global2 = all(vec4<bool>(false, !(!global1.a.x | !var_1.a.x), var_1.a.x, !((global0[_wgslsmith_index_u32(2255u, 15u)] ^ var_1.e.x) == reverseBits(global1.e.x))));
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global1.c.b.x, (-5364i >> (_wgslsmith_div_u32(var_1.c.c.x, 9871u) % 32u)) | global1.e.x, u_input.d.x, countOneBits(global1.c.b.x)), ~(~u_input.a), ~(func_3(var_1.c.b.x > 54232i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, 1000f))).wwx & (~vec3<u32>(var_1.b.x, global1.c.d.x, 1u) & vec3<u32>(0u, var_1.c.d.x, u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(-171f * -1340f))), var_1.c.a.x)), ~(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, u_input.d), u_input.d) ^ -(vec4<i32>(22352i, var_1.e.x, var_1.c.b.x, 2147483647i) << (vec4<u32>(global1.c.c.x, 4294967295u, 16186u, global1.c.e.x) % vec4<u32>(32u)))));
}

