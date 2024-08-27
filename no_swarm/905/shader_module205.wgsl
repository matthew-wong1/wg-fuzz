struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global1: array<vec4<u32>, 30>;

var<private> global2: array<Struct_5, 26>;

var<private> global3: i32;

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 1u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<u32> {
    global2 = array<Struct_5, 26>();
    let var_0 = true;
    var var_1 = global2[_wgslsmith_index_u32(~firstTrailingBit(global0.x), 26u)];
    var var_2 = ~(~_wgslsmith_sub_vec3_u32(min(var_1.e.a.c.wxw ^ vec3<u32>(global4.x, u_input.b, 1u), ~vec3<u32>(u_input.b, u_input.b, global0.x)), vec3<u32>(~26362u, global0.x, _wgslsmith_mod_u32(var_1.c.c.x, 0u))));
    let var_3 = global2[_wgslsmith_index_u32(4294967295u, 26u)];
    return var_3.e.a.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = arg_2.a.b;
    var var_1 = select(~(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, arg_2.a.b), vec2<i32>(0i, -3958i)), u_input.d.x) << (_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 0u), arg_2.a.c.zx) % vec2<u32>(32u))), arg_2.a.a.zz, any(!vec2<bool>(any(vec3<bool>(arg_1.x, true, false)), all(vec3<bool>(arg_1.x, true, true)))));
    let var_2 = arg_2.a;
    var var_3 = Struct_4(Struct_2(var_2, arg_2.a), 1896f, Struct_1(-var_2.a, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.d.x, firstLeadingBit(2147483647i))), ~(vec4<u32>(global0.x, 0u, global0.x, arg_0.x) ^ abs(vec4<u32>(var_2.c.x, 28790u, arg_2.a.c.x, 38527u)))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_2.c.x, arg_0.x)), max(~var_2.c.yx, _wgslsmith_mult_vec2_u32(var_2.c.yw, arg_2.a.c.zz))), var_2.c.x), Struct_1(vec4<i32>(_wgslsmith_mult_i32(countOneBits(-13277i), ~arg_2.a.b), _wgslsmith_dot_vec2_i32(~var_2.a.yz, select(vec2<i32>(var_2.b, 1i), vec2<i32>(-1i, var_2.a.x), arg_1.xx)), _wgslsmith_dot_vec4_i32(countOneBits(var_2.a), abs(vec4<i32>(7377i, 20037i, var_1.x, var_1.x))), _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, var_1.x), var_1.x)), countOneBits(_wgslsmith_mult_i32(var_2.b, arg_2.b.a.x)) >> (arg_0.x % 32u), global1[_wgslsmith_index_u32(4095u, 30u)] | vec4<u32>(0u, u_input.b, 33799u, _wgslsmith_dot_vec3_u32(vec3<u32>(33857u, 4294967295u, arg_2.b.c.x), arg_2.a.c.www))));
    let var_4 = var_1.x;
    return ~vec4<u32>(_wgslsmith_add_u32(select(26571u, global0.x, false), abs(4294967295u)) >> (func_3().x % 32u), arg_2.a.c.x, global0.x, ~23786u);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<i32>) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(735f - arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b))));
    let var_1 = func_4(min(_wgslsmith_mult_vec4_u32(func_3(), ~(~arg_0.a.c)), countOneBits(~firstTrailingBit(vec4<u32>(30956u, u_input.b, 1u, global4.x)))), vec4<bool>(true, all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false)), all(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), any(vec3<bool>(true, true, true))), arg_0);
    global4 = ~((abs(arg_0.a.c.wx) << (~(var_1.yy >> (vec2<u32>(56688u, 24106u) % vec2<u32>(32u))) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(global4.x, 15080u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(global4.x, global0.x))), ~vec2<u32>(global4.x, global0.x)) % vec2<u32>(32u)));
    var var_2 = arg_0.a.a.x;
    let var_3 = Struct_4(arg_0, var_0.x, arg_1.c, global0.x << (40125u % 32u), Struct_1(vec4<i32>(_wgslsmith_add_i32(-32850i >> (var_1.x % 32u), arg_0.a.a.x >> (arg_1.d % 32u)), -(arg_0.b.b ^ 3716i), _wgslsmith_dot_vec2_i32(arg_1.e.a.xw, select(vec2<i32>(arg_1.a.b.a.x, 14409i), arg_1.a.a.a.xx, false)), min(u_input.a.x, 35103i >> (global0.x % 32u))), 25830i, min(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, u_input.c), 30u)], vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2578u, arg_1.c.c.x, u_input.c), arg_0.b.c), 4294967295u, 4294967295u, ~arg_1.d))));
    return any(vec2<bool>(all(vec4<bool>(true, -2147483647i >= var_3.c.a.x, any(vec3<bool>(false, false, true)), any(vec3<bool>(false, false, false)))), true));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> vec4<f32> {
    global1 = array<vec4<u32>, 30>();
    global2 = array<Struct_5, 26>();
    global0 = select(~(reverseBits(arg_0.zx | arg_0.xw) << (~vec2<u32>(global4.x, 17018u) % vec2<u32>(32u))), vec2<u32>(global4.x, ~arg_0.x), select(select(vec2<bool>(func_2(Struct_2(Struct_1(u_input.a, 2147483647i, vec4<u32>(global4.x, arg_0.x, u_input.b, u_input.c)), Struct_1(vec4<i32>(u_input.d.x, u_input.a.x, 32616i, -68083i), -26131i, vec4<u32>(global0.x, global4.x, u_input.c, 0u))), Struct_4(Struct_2(Struct_1(u_input.d, u_input.a.x, global1[_wgslsmith_index_u32(14709u, 30u)]), Struct_1(u_input.a, u_input.a.x, vec4<u32>(global0.x, global0.x, u_input.b, 1u))), 697f, Struct_1(vec4<i32>(u_input.d.x, 1i, -8198i, u_input.a.x), u_input.d.x, arg_0), 33576u, Struct_1(u_input.d, u_input.a.x, arg_0)), vec3<i32>(2147483647i, 50348i, -1i)), 0u >= global4.x), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_2(Struct_2(Struct_1(vec4<i32>(u_input.a.x, 21503i, 7728i, -1i), 13134i, vec4<u32>(global4.x, 10254u, 4294967295u, 4294967295u)), Struct_1(u_input.d, -1i, arg_0)), Struct_4(Struct_2(Struct_1(vec4<i32>(u_input.d.x, 0i, arg_1, -23421i), arg_1, global1[_wgslsmith_index_u32(global0.x, 30u)]), Struct_1(vec4<i32>(u_input.d.x, u_input.d.x, arg_1, u_input.a.x), -23844i, vec4<u32>(1u, 41759u, 27263u, 32377u))), -225f, Struct_1(vec4<i32>(2088i, 8374i, -156i, -1i), arg_1, vec4<u32>(4294967295u, global4.x, global0.x, u_input.b)), 4294967295u, Struct_1(vec4<i32>(u_input.a.x, 10514i, 16391i, 1i), -17026i, arg_0)), u_input.a.xxw))));
    global0 = arg_0.zw;
    global1 = array<vec4<u32>, 30>();
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-899f - 817f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -570f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-585f))))), -948f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -577f) - _wgslsmith_f_op_f32(583f - 128f)), 353f, select(true, true, true)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = vec4<u32>(4294967295u, u_input.b, ~global0.x, ~global4.x);
    let var_1 = arg_0.zwz;
    let var_2 = select(select(vec2<bool>(true, true), !vec2<bool>(all(vec3<bool>(false, true, true)), true), select(any(vec3<bool>(true, true, true)) || any(vec2<bool>(false, true)), ~u_input.c > ~0u, false)), !(!vec2<bool>(46931u == u_input.c, true)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))));
    global4 = var_0.wy;
    let var_3 = func_4(vec4<u32>(_wgslsmith_mod_u32(4294967295u, min(func_3().x, global0.x & global0.x)), global4.x, ~1u, 0u), !(!select(vec4<bool>(true, var_2.x, false, false), select(vec4<bool>(false, var_2.x, var_2.x, false), vec4<bool>(var_2.x, true, false, true), var_2.x), var_2.x)), Struct_2(Struct_1(u_input.d, u_input.d.x, global1[_wgslsmith_index_u32(10378u, 30u)]), Struct_1(u_input.a, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-37078i, 26584i), vec2<i32>(2147483647i, arg_1))), vec4<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(76707u, 30u)], vec4<u32>(global4.x, u_input.c, 1u, var_0.x)), 0u, 1u, ~global4.x)))).yx;
    return Struct_1(~u_input.d, reverseBits(min(~arg_1, i32(-1i) * -1i)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(80885u, func_4(_wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(abs(global4.x), 30u)], _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.x, 0u, global0.x), global1[_wgslsmith_index_u32(var_0.x, 30u)])), !(!vec4<bool>(var_2.x, true, false, true)), Struct_2(Struct_1(u_input.d, 2147483647i, global1[_wgslsmith_index_u32(1u, 30u)]), Struct_1(vec4<i32>(-49799i, u_input.d.x, arg_1, u_input.d.x), 2147483647i, vec4<u32>(4294967295u, 24339u, 1u, 1u)))).x), 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_mult_vec2_u32(abs(abs(~countOneBits(vec2<u32>(global0.x, 14719u)))), reverseBits(select(max(~vec2<u32>(0u, 17429u), vec2<u32>(global0.x, 76770u) ^ vec2<u32>(89109u, 7132u)), vec2<u32>(u_input.c, u_input.b), true)));
    var var_0 = Struct_3(select(select(vec3<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(false, false))), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), true), vec2<u32>(20509u, u_input.b << (~1u % 32u)) << (vec2<u32>(global4.x, 57494u) % vec2<u32>(32u)));
    let var_1 = firstLeadingBit(min(-(_wgslsmith_sub_i32(2147483647i, u_input.a.x) & (u_input.a.x ^ 2147483647i)), select(u_input.d.x, _wgslsmith_add_i32(-2147483647i, 0i), all(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<bool>(false, true, var_0.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x))))));
    global1 = array<vec4<u32>, 30>();
    var var_2 = _wgslsmith_mod_vec3_i32(select(u_input.d.yyw, min(u_input.a.wxy, _wgslsmith_clamp_vec3_i32(u_input.a.xzy, vec3<i32>(-1i, var_1, var_1), max(vec3<i32>(17548i, 1i, u_input.d.x), vec3<i32>(1i, 30088i, var_1)))), !var_0.a), vec3<i32>(0i, -24474i, -_wgslsmith_mod_i32(var_1, _wgslsmith_add_i32(-1i, 1i))));
    let var_3 = vec2<bool>(true, var_0.a.x);
    var var_4 = Struct_4(Struct_2(Struct_1(~abs(u_input.a), i32(-1i) * -1i, ~firstLeadingBit(global1[_wgslsmith_index_u32(global4.x, 30u)])), func_5(_wgslsmith_f_op_vec4_f32(func_1(~global1[_wgslsmith_index_u32(3613u, 30u)], var_2.x)), -9789i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -493f)), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(50935u, global0.x, 4294967295u, var_0.b.x), global1[_wgslsmith_index_u32(global4.x, 30u)], vec4<u32>(59798u, 4294967295u, 19435u, 0u)), -27114i)).x))), Struct_1(select(vec4<i32>(u_input.a.x, -309i, -2147483647i, u_input.d.x), vec4<i32>(u_input.a.x, -8756i, -515i, var_2.x), vec4<bool>(true, true, true, true)) ^ abs(u_input.d), select(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, var_1, -30272i) & u_input.d, ~u_input.d), (global4.x >> (41087u % 32u)) == _wgslsmith_add_u32(global0.x, 43953u)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 1u, var_0.b.x, 3612u), vec4<u32>(12067u, 56115u, global4.x, u_input.b)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.x, var_0.b.x), vec3<u32>(0u, 0u, u_input.b)), min(4294967295u, 1u), 12292u & global0.x, ~global0.x))), 4339u, Struct_1(max(u_input.a, vec4<i32>(u_input.d.x & var_1, var_1, 1i, -16675i)), -30085i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.b, ~vec2<u32>(5300u, 4294967295u)), 30u)]));
    var var_5 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b, var_4.b, var_4.b, var_4.b) + vec4<f32>(-1000f, 559f, 150f, var_4.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, var_4.b, 1000f, var_4.b)))) + vec4<f32>(-1376f, -187f, 475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.b))))));
}

