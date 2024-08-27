struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(-1474f, 332f, 840f, -805f), -10649i, -924f), Struct_1(vec4<f32>(797f, 373f, 292f, -1553f), 1i, 1150f), Struct_1(vec4<f32>(-1000f, -300f, -1000f, -1654f), 17662i, -1636f), true, vec2<u32>(0u, 4294967295u));

var<private> global1: vec3<f32>;

var<private> global2: vec3<i32>;

var<private> global3: array<u32, 19>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_f_op_f32(step(arg_0.c, -1797f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1348f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.a.x + 1825f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * 205f))))));
    let var_1 = select(select(select(select(select(vec2<bool>(false, global0.d), vec2<bool>(false, global0.d), global0.d), vec2<bool>(global0.d, false), global0.a.b != 1i), select(!vec2<bool>(global0.d, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(global0.d, false), vec2<bool>(true, global0.d))), select(select(vec2<bool>(global0.d, global0.d), vec2<bool>(true, global0.d), vec2<bool>(global0.d, false)), select(vec2<bool>(global0.d, false), vec2<bool>(global0.d, global0.d), vec2<bool>(true, true)), !vec2<bool>(global0.d, global0.d))), vec2<bool>(true, all(!vec2<bool>(global0.d, true))), true), !(!vec2<bool>(global0.d, global0.d | global0.d)), vec2<bool>(false, true));
    var var_2 = ~(-vec3<i32>(~u_input.c, _wgslsmith_mod_i32(-28593i, 39924i), 0i << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(68486u, 19u)], 19u)] % 32u))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, ~(u_input.c ^ 16051i), ~(u_input.c << (global0.e.x % 32u))), firstLeadingBit(~(vec3<i32>(u_input.c, global2.x, -21378i) & vec3<i32>(global0.c.b, u_input.c, arg_0.b))));
    var var_3 = Struct_2(arg_0, arg_0, global0.a, global0.d, vec2<u32>(global0.e.x, global3[_wgslsmith_index_u32(global0.e.x, 19u)]));
    global1 = arg_0.a.zwz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    let var_0 = abs(~(-vec4<i32>(9686i, -1i, arg_3.x, arg_2.b) | -vec4<i32>(arg_3.x, -5011i, 16662i, 0i))) ^ vec4<i32>(1i, 0i, _wgslsmith_div_i32(1i << (reverseBits(0u) % 32u), 11552i), _wgslsmith_add_i32(0i, -firstLeadingBit(24680i)));
    global0 = Struct_2(arg_2, arg_2, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a.a, arg_2.a)), firstLeadingBit(28179i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, -1921f) * _wgslsmith_div_f32(-1004f, 1041f)))), global0.d, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 32558u), vec2<u32>(global0.e.x ^ global0.e.x, 4294967295u)));
    let var_1 = global0.c;
    let var_2 = global3[_wgslsmith_index_u32(0u, 19u)];
    global0 = Struct_2(global0.b, arg_2, Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 1000f, arg_2.c, arg_2.a.x))), 1i, 1738f), false, firstTrailingBit(u_input.a.yw << (global0.e % vec2<u32>(32u))) & ~(~(~global0.e)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_2.a.x))));
}

fn func_2() -> Struct_1 {
    let var_0 = countOneBits(reverseBits(_wgslsmith_add_i32(abs(-u_input.c), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-13625i, 40542i), 0i << (global3[_wgslsmith_index_u32(0u, 19u)] % 32u)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(global1.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a)), !(!global0.d)))), var_0, _wgslsmith_f_op_f32(func_4(vec4<bool>(all(!vec4<bool>(global0.d, false, false, false)), _wgslsmith_f_op_f32(-var_1) == _wgslsmith_f_op_f32(func_3(global0.a)), any(select(vec3<bool>(true, global0.d, false), vec3<bool>(false, true, false), vec3<bool>(true, global0.d, false))), true), abs(~u_input.c & _wgslsmith_mult_i32(12057i, global0.b.b)), global0.a, ~_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.c, u_input.c, var_0), _wgslsmith_mult_vec3_i32(vec3<i32>(835i, global0.a.b, 2147483647i), vec3<i32>(0i, var_0, -20128i))))));
    global2 = reverseBits(vec3<i32>(-18847i, global2.x, select(~(-42725i), ~(~global0.a.b), global0.d)));
    let var_3 = global0.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.a - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(var_3.a)))))), firstLeadingBit(-1i), _wgslsmith_f_op_f32(func_4(select(select(select(vec4<bool>(false, global0.d, false, global0.d), vec4<bool>(true, global0.d, global0.d, false), global0.d), !vec4<bool>(global0.d, false, true, global0.d), select(vec4<bool>(global0.d, true, global0.d, true), vec4<bool>(false, global0.d, global0.d, true), false)), !vec4<bool>(global0.d, false, global0.d, false), !select(vec4<bool>(true, false, false, true), vec4<bool>(global0.d, global0.d, global0.d, global0.d), false)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-52996i, var_3.b)), ~vec2<i32>(var_2.b, u_input.c)) ^ -countOneBits(global2.x), global0.b, -_wgslsmith_mult_vec3_i32(abs(vec3<i32>(var_2.b, var_2.b, u_input.c)), vec3<i32>(0i, -7301i, global2.x) << (vec3<u32>(global3[_wgslsmith_index_u32(1u, 19u)], 26600u, global0.e.x) % vec3<u32>(32u))))));
}

fn func_1() -> vec4<bool> {
    global0 = Struct_2(global0.a, func_2(), global0.b, global0.d, ~_wgslsmith_add_vec2_u32(countOneBits(firstTrailingBit(u_input.a.xx)), u_input.a.zy));
    global2 = countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(~global2.x, -2147483647i, _wgslsmith_dot_vec2_i32(~global2.yx, vec2<i32>(-1i, 23919i))), vec3<i32>(-1i) * -(~vec3<i32>(-1i, global0.b.b, u_input.c))));
    var var_0 = vec4<u32>(~u_input.a.x, _wgslsmith_add_u32(33718u >> (reverseBits(u_input.b) % 32u), global3[_wgslsmith_index_u32(select(u_input.b, 0u, false) | global0.e.x, 19u)]), _wgslsmith_sub_u32(574u << (global0.e.x % 32u), 5170u), countOneBits(93820u)) | (~u_input.a | select(firstLeadingBit(~u_input.a), ~vec4<u32>(10208u, 63567u, u_input.b, global0.e.x), true));
    var var_1 = func_2();
    let var_2 = any(!select(vec3<bool>(false != global0.d, u_input.b >= u_input.a.x, all(vec4<bool>(global0.d, true, true, global0.d))), !(!vec3<bool>(false, global0.d, global0.d)), select(vec3<bool>(false, false, true), vec3<bool>(global0.d, global0.d, false), true)));
    return vec4<bool>(global0.d, true, true, false);
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = select(select(select(!arg_1.xzw, vec3<bool>(arg_1.x, global0.d | arg_1.x, -853f > global1.x), !select(arg_1.wzx, arg_1.xyy, vec3<bool>(arg_1.x, global0.d, arg_1.x))), !vec3<bool>(false, all(arg_1.xz), false), arg_1.zwz), vec3<bool>(any(func_1()), !(global0.d | true), all(vec3<bool>(true, any(vec3<bool>(global0.d, false, false)), true))), true);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c.a - global0.b.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, 655f, global0.c.a.x, arg_0)))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(round(-101f)), 868f, _wgslsmith_f_op_f32(-1597f * -1000f)), !vec4<bool>(true, true, var_0.x, false))), ~(-6932i), _wgslsmith_f_op_f32(sign(arg_0))), Struct_1(global0.b.a, _wgslsmith_div_i32(select(-u_input.c, reverseBits(1i), any(vec2<bool>(false, false))), _wgslsmith_mult_i32(global2.x, -2147483647i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, -671f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_0, -298f)), -522f, 1f, _wgslsmith_f_op_f32(func_4(arg_1, u_input.c, global0.b, vec3<i32>(global0.b.b, 32334i, -1i)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0.c.a)) + _wgslsmith_f_op_vec4_f32(global0.a.a - vec4<f32>(-1852f, arg_0, global1.x, arg_0)))), min(~min(-2147483647i, -24420i), global0.c.b), -527f), false, vec2<u32>(min(~u_input.a.x, countOneBits(arg_2.x << (u_input.a.x % 32u))), firstTrailingBit(45872u)));
    global3 = array<u32, 19>();
    var var_2 = vec2<i32>(49676i, -min(-u_input.c, _wgslsmith_add_i32(global2.x, -2147483647i)) >> (1u % 32u));
    let var_3 = _wgslsmith_dot_vec2_u32(var_1.e, _wgslsmith_mod_vec2_u32(~(~(~var_1.e)), ~(~vec2<u32>(var_1.e.x, global3[_wgslsmith_index_u32(arg_2.x, 19u)]))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(var_1.a.a, vec4<f32>(func_2().a.x, -1000f, global0.b.a.x, _wgslsmith_f_op_f32(ceil(arg_0))))), ~(-2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -612f)), Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, _wgslsmith_f_op_f32(arg_0 - -205f), _wgslsmith_f_op_f32(trunc(-531f)), global0.c.c))), -firstLeadingBit(func_2().b), _wgslsmith_div_f32(_wgslsmith_div_f32(385f, -2212f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 1000f, true)) * global1.x))), func_2(), !all(vec3<bool>(all(vec2<bool>(global0.d, arg_1.x)), true, true)), _wgslsmith_add_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.e.x, 22647u), abs(vec2<u32>(677u, 4294967295u)))), vec2<u32>(arg_2.x, abs(countOneBits(66860u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), -383f, _wgslsmith_f_op_f32(global0.b.a.x - global0.a.a.x), global0.b.c))), 2147483647i, global0.a.a.x), global0.a, global0.a, true, _wgslsmith_mult_vec2_u32(reverseBits(min(firstTrailingBit(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)], 54297u)), vec2<u32>(global0.e.x, 28289u))), global0.e));
    global3 = array<u32, 19>();
    global3 = array<u32, 19>();
    let var_0 = vec3<bool>(!global0.d, global0.d & global0.d, ~(-5251i) != global2.x);
    var var_1 = global0.b.a;
    let var_2 = ~_wgslsmith_div_vec2_i32(vec2<i32>(1i, i32(-1i) * -19779i), firstTrailingBit(-abs(global2.yz)));
    let var_3 = func_5(-223f, select(func_1(), !func_1(), u_input.b <= (countOneBits(global3[_wgslsmith_index_u32(4294967295u, 19u)]) ^ global3[_wgslsmith_index_u32(1u, 19u)])), abs(~(~firstLeadingBit(vec3<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 19u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~firstTrailingBit(_wgslsmith_dot_vec2_i32(global2.yx, global2.zy))), func_2().c, vec4<f32>(_wgslsmith_f_op_f32(max(-491f, var_3.a.a.x)), global1.x, global0.a.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), 1754f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(163f)), func_5(-503f, vec4<bool>(var_3.d, var_3.d, global0.d, true), u_input.a.zwy).b.c))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -262f), global1.x)));
}

