struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 5>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-1243f, 1285f, 718f, 1000f), vec2<u32>(72639u, 89698u), vec4<f32>(-708f, -197f, -1279f, 797f), false);

var<private> global3: array<bool, 29> = array<bool, 29>(false, true, true, true, true, true, false, true, false, false, true, false, false, false, true, false, true, true, false, false, false, true, false, false, true, false, false, false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = Struct_3(Struct_2(arg_2.a.a, _wgslsmith_f_op_f32(-arg_1.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.x, global0.x, global0.x, arg_2.a.b), global2.c, select(vec4<bool>(false, global2.d, true, global2.d), vec4<bool>(false, arg_2.d, global3[_wgslsmith_index_u32(44996u, 29u)], arg_0), true))), global2.b, global2.c, all(!vec3<bool>(true, global2.d, global2.d))), global2.c.x), u_input.b.x & countOneBits(36800u), all(!select(vec4<bool>(arg_0, false, arg_2.d, global3[_wgslsmith_index_u32(u_input.b.x, 29u)]), vec4<bool>(global2.d, true, false, global3[_wgslsmith_index_u32(global2.b.x, 29u)]), vec4<bool>(true, arg_2.b.a.d, arg_0, false))) == (43500u <= u_input.c));
    var var_1 = Struct_3(var_0.a, Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 314f), _wgslsmith_f_op_f32(select(-251f, 365f, global3[_wgslsmith_index_u32(u_input.b.x, 29u)])), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x + global0.x)), var_0.b.a.b, vec4<f32>(_wgslsmith_div_f32(-240f, 1000f), -245f, _wgslsmith_f_op_f32(min(1000f, global0.x)), 716f), all(vec2<bool>(var_0.a.a.d, var_0.a.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1227f + 1846f) * _wgslsmith_f_op_f32(-354f * global0.x)))), abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~1u, abs(56868u)), reverseBits(0u))), true);
    var var_2 = var_1.b.a;
    let var_3 = vec3<i32>(~u_input.d, firstLeadingBit(-min(42127i, i32(-1i) * -59312i)), ~(-2147483647i) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(global2.b.x, 4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(82203u, u_input.a, var_1.a.a.b.x), vec3<u32>(arg_2.a.a.b.x, var_0.a.a.b.x, u_input.b.x) >> (u_input.b.xzy % vec3<u32>(32u)))) % 32u));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.a.wy * var_1.b.a.a.zx), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.a.c.xy)))), !select(vec2<bool>(1109f >= var_1.a.a.c.x, global0.x > var_2.c.x), !vec2<bool>(var_2.d, var_0.b.a.d), !vec2<bool>(global2.d, var_0.d))));
    return vec4<f32>(_wgslsmith_f_op_f32(select(1298f, 499f, var_1.a.a.d)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(global2.c.x, -1163f)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-1932f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_3 {
    global2 = Struct_1(global2.a, vec2<u32>(global2.b.x, min(u_input.a, _wgslsmith_add_u32(global2.b.x, 30014u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(global2.c)), _wgslsmith_f_op_vec4_f32(func_3(true, vec2<f32>(264f, arg_0.x), Struct_3(Struct_2(Struct_1(vec4<f32>(arg_0.x, 318f, -887f, global0.x), global2.b, vec4<f32>(arg_0.x, -466f, global0.x, 338f), false), global2.c.x), Struct_2(Struct_1(vec4<f32>(233f, 886f, 1744f, -1000f), vec2<u32>(43653u, global2.b.x), global2.c, false), -1889f), u_input.c, false))))))), !(!global2.d));
    global1 = array<Struct_2, 5>();
    return Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(62262u, ~global2.b.x), 5u)], Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c)), ~(~vec2<u32>(50639u, 58485u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c)), true), _wgslsmith_f_op_f32(ceil(global0.x))), u_input.b.x, !(!global2.d));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_2.c.xyz))), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -2147483647i, arg_0, arg_0) >> (vec4<u32>(arg_1.a.b.x, arg_1.a.b.x, arg_2.b.x, 83584u) % vec4<u32>(32u)), vec4<i32>(u_input.d, -1i, arg_0, u_input.d) | vec4<i32>(u_input.d, -2147483647i, 107342i, -35056i)) << (vec4<u32>(1u >> (1u % 32u), arg_2.b.x, arg_1.a.b.x, 95946u) % vec4<u32>(32u)), vec4<i32>(u_input.d, -u_input.d, ~max(u_input.d, 1i), 2147483647i)));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a.c.zyy)), _wgslsmith_add_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(-51216i, 20584i, arg_0, arg_0)), vec4<i32>(max(1i, _wgslsmith_div_i32(u_input.d, -2147483647i)), 33724i, _wgslsmith_mult_i32(arg_0, _wgslsmith_sub_i32(1i, u_input.d)), arg_0))).b;
    let var_2 = Struct_2(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.a.x, -105f, 451f), var_0.b.a.c.zyw))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, arg_1.a.a.x, var_1.a.a.x)))))), select(vec4<i32>(abs(1i), _wgslsmith_mod_i32(66611i, u_input.d), arg_0 ^ arg_0, -35644i), -(~vec4<i32>(arg_0, 20389i, u_input.d, u_input.d)), !(!vec4<bool>(false, var_0.a.a.d, false, true)))).a.a, -545f);
    var var_3 = ~(min(u_input.b.xwy, vec3<u32>(~global2.b.x, var_0.c & var_2.a.b.x, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global2.b.x, u_input.c, global2.b.x, var_2.a.b.x)))) >> (select(countOneBits(max(u_input.b.yyw, u_input.b.yyz)), _wgslsmith_div_vec3_u32(u_input.b.yyz, u_input.b.xzx), !(!global2.d)) % vec3<u32>(32u)));
    let var_4 = var_3.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, global2.a.x)), _wgslsmith_f_op_vec4_f32(func_3(true, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-475f, arg_2.c.x))), Struct_3(Struct_2(var_0.a.a, 1589f), arg_1, 4294967295u, arg_2.d))).x, -414f, _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(global2.a.x * var_1.b))))) - var_1.a.a);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, global2.b), select(global2.b.x & 86696u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 44305u, 4294967295u), u_input.b), 53368u), true));
    var var_1 = ~global2.b.x >> (~_wgslsmith_sub_u32(~abs(44461u), _wgslsmith_dot_vec3_u32(u_input.b.xzy, _wgslsmith_sub_vec3_u32(u_input.b.zxy, vec3<u32>(87058u, 4294967295u, 52179u)))) % 32u);
    var var_2 = -1228f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1319f);
    let var_3 = ~(~select(vec3<u32>(var_0.x, reverseBits(arg_1.b.x), reverseBits(48522u)), select(~vec3<u32>(0u, u_input.a, 291u), u_input.b.wxy, vec3<bool>(false, global3[_wgslsmith_index_u32(49685u, 29u)], arg_1.d)), vec3<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 29u)], global3[_wgslsmith_index_u32(1u, 29u)], arg_1.d)), all(vec4<bool>(false, global2.d, true, global2.d)), true)));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.d, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(928f * global0.x), _wgslsmith_f_op_f32(-global0.x))), Struct_1(_wgslsmith_f_op_vec4_f32(func_1(abs(-1i), global1[_wgslsmith_index_u32(abs(74646u), 5u)], Struct_1(global2.c, vec2<u32>(1u, global2.b.x), global2.c, false))), _wgslsmith_div_vec2_u32(global2.b, global2.b), vec4<f32>(_wgslsmith_f_op_f32(floor(global2.a.x)), -2038f, _wgslsmith_f_op_vec4_f32(func_3(true, vec2<f32>(383f, global0.x), Struct_3(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], 103239u, false))).x, _wgslsmith_f_op_f32(f32(-1f) * -615f)), true)), reverseBits(func_4(vec3<f32>(_wgslsmith_f_op_f32(ceil(-622f)), _wgslsmith_div_f32(global2.a.x, global0.x), _wgslsmith_f_op_f32(-global2.c.x)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 495f, global2.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.d, 2147483647i), vec4<i32>(-35450i, 1i, u_input.d, -2147483647i))).b.a)), _wgslsmith_add_i32(0i, u_input.d));
    var var_1 = ~u_input.a;
    var var_2 = -(var_0.x ^ reverseBits(15020i));
    var_2 = 16810i;
    var var_3 = 1i;
    global3 = array<bool, 29>();
    var var_4 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(~58306u, 29u)], !global2.d, false), select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 29u)], false, true), vec3<bool>(true, false, true), vec3<bool>(global2.d, global2.d, false)), vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.a, 29u)]), !global2.d)), vec3<bool>(!global3[_wgslsmith_index_u32(u_input.b.x, 29u)] & true, !any(vec4<bool>(false, global3[_wgslsmith_index_u32(74043u, 29u)], global2.d, global3[_wgslsmith_index_u32(0u, 29u)])), global3[_wgslsmith_index_u32(u_input.a, 29u)]), !vec3<bool>(all(vec3<bool>(true, global2.d, global2.d)), !global3[_wgslsmith_index_u32(0u, 29u)], !global2.d)), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, global2.d), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(global2.d, false, false), global3[_wgslsmith_index_u32(43757u, 29u)])), !vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.b.x, 1u), 29u)], false, select(true, global2.d, true)), false), vec3<bool>(any(!vec3<bool>(global2.d, global2.d, global3[_wgslsmith_index_u32(u_input.c, 29u)])), false, global2.d));
    global2 = func_2(vec3<f32>(-1415f, _wgslsmith_f_op_f32(select(743f, _wgslsmith_f_op_f32(step(-1222f, _wgslsmith_f_op_f32(min(858f, global0.x)))), (var_0.x >= var_0.x) == global3[_wgslsmith_index_u32(0u, 29u)])), global2.a.x), -(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, u_input.d, var_0.x, var_0.x), ~vec4<i32>(var_0.x, u_input.d, -37235i, var_0.x), vec4<i32>(12773i, u_input.d, 14409i, 1i)))).b.a;
    var_3 = ~_wgslsmith_add_i32(select(0i, _wgslsmith_sub_i32(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, 17252i, -33072i), vec4<i32>(660i, 31060i, u_input.d, u_input.d))), _wgslsmith_add_u32(global2.b.x, u_input.c) == global2.b.x), -_wgslsmith_div_i32(1i, countOneBits(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global2.a.yw))), Struct_3(func_2(vec3<f32>(global0.x, global0.x, global0.x), vec4<i32>(18044i, u_input.d, u_input.d, var_0.x)).a, Struct_2(Struct_1(global2.a, vec2<u32>(1u, global2.b.x), vec4<f32>(global0.x, 471f, global2.c.x, global0.x), global3[_wgslsmith_index_u32(4294967295u, 29u)]), -937f), global2.b.x, false))).x, -837f), max(var_0.xx | _wgslsmith_mod_vec2_i32(var_0.yz, var_0.wx << (vec2<u32>(443u, u_input.c) % vec2<u32>(32u))), vec2<i32>(-66185i, u_input.d)), global2.b, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~16386i, var_0.x), var_0.xz), var_0.xy, min(var_0.xw, -min(var_0.xy, var_0.yz))));
}

