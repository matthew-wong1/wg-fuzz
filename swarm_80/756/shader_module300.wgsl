struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 15038i);

var<private> global1: Struct_1 = Struct_1(4294967295u, vec4<i32>(-37330i, i32(-2147483648), -22747i, 6611i), vec2<f32>(827f, -1566f), vec4<i32>(-1i, 0i, 11332i, 22817i), true);

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(-67394i, -19969i, 44313i), vec3<i32>(-9585i, -200i, -13122i), vec3<i32>(i32(-2147483648), i32(-2147483648), 32814i), vec3<i32>(25146i, 13198i, 1i), vec3<i32>(1i, -31609i, 1i), vec3<i32>(2147483647i, 1i, -25881i), vec3<i32>(i32(-2147483648), -8979i, 0i), vec3<i32>(5170i, 0i, 20164i), vec3<i32>(-1653i, -13268i, -5540i), vec3<i32>(0i, 69519i, 2147483647i), vec3<i32>(61556i, 1i, 42663i), vec3<i32>(2147483647i, 2179i, 5826i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(select(min(u_input.a.x, 56168u | arg_0), 4294967295u, true), _wgslsmith_add_u32(~global2.a, abs(58360u)) >> (~arg_0 % 32u), abs(~_wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.zz))), firstTrailingBit(reverseBits(-vec4<i32>(8857i, -2147483647i, global2.b.x, 0i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(775f)), _wgslsmith_f_op_f32(global1.c.x + 116f)))), vec4<i32>(-(~u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global1.b.x, arg_1.b.x, 1i), select(~global1.b, ~global1.d, select(vec4<bool>(false, arg_1.e, false, false), vec4<bool>(global1.e, true, global1.e, global2.e), vec4<bool>(false, true, false, true)))), _wgslsmith_dot_vec3_i32(abs(~global1.b.xzy), vec3<i32>(-25036i, abs(-33218i), global1.b.x)), -25666i), (~(arg_2 & 26007i) | countOneBits(i32(-1i) * -2147483647i)) != (-3453i & -arg_2));
    var_0 = Struct_1(abs(1u), arg_1.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(501f, var_0.c.x))) * arg_1.c) * var_0.c), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.x, 119f)))), global1.e | all(vec4<bool>(arg_1.e, arg_1.e, false, true)))), ~arg_1.d, all(select(vec4<bool>(true, true, !arg_1.e, true), select(select(vec4<bool>(global2.e, true, false, global1.e), vec4<bool>(global2.e, false, global2.e, false), vec4<bool>(false, global1.e, true, global1.e)), select(vec4<bool>(false, global2.e, global2.e, global1.e), vec4<bool>(global1.e, false, global2.e, true), vec4<bool>(global2.e, true, false, var_0.e)), !vec4<bool>(global1.e, global1.e, true, var_0.e)), true)));
    let var_1 = _wgslsmith_f_op_f32(round(-1702f));
    let var_2 = Struct_1(66572u, vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -1i, 4942i), abs(global3[_wgslsmith_index_u32(var_0.a, 13u)])), ~_wgslsmith_mult_i32(9171i, arg_1.b.x), global0.x), (arg_1.d.x << (~4294967295u % 32u)) & -11280i, 2147483647i, -(~global2.b.x)), var_0.c, vec4<i32>(-1i) * -firstTrailingBit(global1.d), true);
    return reverseBits(var_0.d);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = !(!select(select(vec3<bool>(true, true, global1.e), vec3<bool>(false, false, false), vec3<bool>(global1.e, false, global2.e)), !select(vec3<bool>(global2.e, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, arg_3.e)), select(vec3<bool>(true, true, arg_3.e), vec3<bool>(true, true, true), true)));
    let var_1 = arg_3;
    var var_2 = var_1;
    var var_3 = Struct_1(1u, -global1.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, var_2.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.x, global1.c.x))), all(select(vec3<bool>(false, arg_3.e, var_1.e), vec3<bool>(arg_3.e, global1.e, false), var_0.x)))), var_2.c)), _wgslsmith_add_vec4_i32(arg_3.b, var_2.d), all(!vec3<bool>(global1.e, true, false)) || true);
    let var_4 = any(vec4<bool>(any(vec3<bool>(true, true, true)), any(!select(vec2<bool>(var_3.e, true), var_0.zy, false)), false, select(arg_3.e, false, true)));
    return Struct_1(26897u, vec4<i32>(-(~(~arg_1.x)), 35884i, ~reverseBits(var_3.b.x), _wgslsmith_dot_vec4_i32(func_3(arg_3.a, Struct_1(arg_3.a, vec4<i32>(var_1.d.x, 2147483647i, 13190i, 0i), var_3.c, arg_1, false), -1i, arg_0), var_1.b) | arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_2.c - vec2<f32>(arg_0.x, global1.c.x)))))), vec4<i32>(global0.x, countOneBits(1i), -2147483647i & (1i & _wgslsmith_div_i32(11950i, global1.b.x)), -(~(-52101i))), global2.e && true);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<i32> {
    return global2.d;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = !select(vec4<bool>(_wgslsmith_f_op_f32(step(116f, global2.c.x)) < -683f, true, !any(vec2<bool>(arg_2.e, global1.e)), arg_2.e), vec4<bool>(arg_2.e, global1.e, global1.c.x <= _wgslsmith_div_f32(1000f, -290f), global2.e), select(!(!vec4<bool>(global1.e, false, arg_2.e, arg_2.e)), select(select(vec4<bool>(false, false, global2.e, arg_2.e), vec4<bool>(arg_2.e, false, global2.e, false), vec4<bool>(global2.e, false, global1.e, false)), vec4<bool>(false, global2.e, false, true), vec4<bool>(global1.e, true, false, false)), !vec4<bool>(global2.e, arg_2.e, arg_2.e, true)));
    global0 = _wgslsmith_sub_vec2_i32(~(~(-(~arg_1.xy))), arg_0.xw);
    var var_1 = 1u;
    let var_2 = arg_2;
    global1 = Struct_1(_wgslsmith_mod_u32(countOneBits(_wgslsmith_mod_u32(var_2.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.a, 41281u), u_input.a))), global2.a), ~_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -2147483647i, global0.x, 9539i) >> (vec4<u32>(var_2.a, 4294967295u, global2.a, 24347u) % vec4<u32>(32u)), ~vec4<i32>(arg_2.b.x, global2.b.x, u_input.b, 2955i)) & var_2.d, global1.c, (vec4<i32>(1i, 2147483647i, abs(-5618i), _wgslsmith_add_i32(arg_0.x, -1i)) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(5986u, 1u, 1u, 771u), vec4<u32>(u_input.a.x, arg_2.a, 13526u, global1.a)) & (vec4<u32>(global2.a, var_2.a, 1u, arg_2.a) ^ vec4<u32>(var_2.a, 847u, arg_2.a, global1.a))) % vec4<u32>(32u))) ^ func_4(global2.c, func_2(arg_2.c, global2.d, u_input.a.x, Struct_1(global1.a, vec4<i32>(global0.x, arg_0.x, var_2.b.x, 2147483647i), var_2.c, global1.b, false))), false);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1.c.x)))), -2727f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - arg_2.c.x))), var_2.c.x, _wgslsmith_f_op_f32(-arg_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.e;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b << (global2.a % 32u), 17394i, ~global0.x, -26115i), ~(global1.b | vec4<i32>(1i, 2147483647i, u_input.b, global0.x))), vec3<i32>(-1i) * -min(-vec3<i32>(global1.b.x, global2.d.x, -5646i), ~vec3<i32>(-50606i, global2.b.x, 25306i)), Struct_1(global1.a, ~(-global1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.c.x), global1.c.x)), vec4<i32>(global0.x, global0.x | global1.d.x, global1.b.x, ~(~global0.x)), global2.e)));
    var var_2 = !vec2<bool>(true && ((u_input.b < global1.b.x) == (-1806f < global1.c.x)), true);
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.c.x)) - global1.c.x)) < _wgslsmith_f_op_f32(-1439f + 828f), all(select(!vec2<bool>(global2.e, global1.e), vec2<bool>(true, true), global1.e)) != true);
    let var_4 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-795f, global1.c.x) + vec2<f32>(global2.c.x, -978f)) + global2.c) + vec2<f32>(_wgslsmith_f_op_f32(max(-744f, global1.c.x)), global1.c.x))), _wgslsmith_div_vec4_i32(-vec4<i32>(~(-78600i), u_input.b, global2.d.x, global2.d.x), global2.d), global1.a, func_2(vec2<f32>(_wgslsmith_div_f32(-1745f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_1.x + -1219f)), vec4<i32>(-2147483647i, 0i, u_input.b << (u_input.a.x % 32u), global2.b.x), abs(~global1.a), func_2(vec2<f32>(_wgslsmith_div_f32(-105f, -930f), -1000f), min(_wgslsmith_mult_vec4_i32(global1.d, global2.d), firstTrailingBit(global2.d)), 0u, func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(789f, global2.c.x), vec2<f32>(339f, 1355f), vec2<bool>(true, var_3.x))), vec4<i32>(global2.d.x, 54350i, 2147483647i, u_input.b), global1.a, Struct_1(19680u, vec4<i32>(2147483647i, global0.x, -1i, global2.b.x), global2.c, global1.d, global2.e)))));
    var var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(620f, _wgslsmith_f_op_f32(abs(var_4.c.x))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(2077i, global1.b.x, 1i, 84030i), vec4<i32>(var_4.d.x, -2147483647i, -24248i, -16238i)), vec3<i32>(u_input.b, 0i, global2.b.x) & global1.d.zwy, func_2(vec2<f32>(var_4.c.x, 979f), vec4<i32>(global2.b.x, -1i, global2.d.x, var_4.b.x), 24166u, var_4))).ww), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_4.c - var_4.c), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, -193f)))), var_3)))));
}

