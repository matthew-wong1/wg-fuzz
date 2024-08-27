struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global1: Struct_1;

var<private> global2: vec4<i32>;

var<private> global3: array<vec4<u32>, 19>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: u32) -> i32 {
    global2 = select(abs(abs(abs(vec4<i32>(global1.c.x, global1.c.x, global2.x, global1.c.x))) ^ vec4<i32>(global1.c.x & global2.x, global2.x, global2.x & global1.c.x, _wgslsmith_add_i32(26100i, global2.x))), countOneBits(abs(max(_wgslsmith_sub_vec4_i32(vec4<i32>(43835i, 0i, 1i, 0i), vec4<i32>(global2.x, global2.x, global2.x, global1.c.x)), vec4<i32>(1i, -1i, -1i, 0i) & vec4<i32>(-2147483647i, global2.x, -1i, global1.c.x)))), _wgslsmith_clamp_i32(~global2.x, 53868i, (global2.x << (global0.x % 32u)) | _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, -4954i), vec2<i32>(-1i, global1.c.x))) == -_wgslsmith_sub_i32(-global1.c.x, 0i));
    var var_0 = ~(~global2.x & _wgslsmith_mult_i32(global1.c.x, abs(global1.c.x)));
    global3 = array<vec4<u32>, 19>();
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1466f, _wgslsmith_f_op_f32(1000f + -592f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2092f + _wgslsmith_f_op_f32(trunc(-399f))), 1897f))));
    return min(42792i, _wgslsmith_dot_vec2_i32(vec2<i32>(-select(global1.c.x, global1.c.x, global1.b.x), -25108i), _wgslsmith_div_vec2_i32(vec2<i32>(1i >> (arg_0 % 32u), ~global1.c.x), vec2<i32>(global1.c.x, _wgslsmith_sub_i32(0i, 1i)))));
}

fn func_4(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(1u), ~18759u), u_input.a.zy);
    var var_1 = _wgslsmith_f_op_f32(-1145f + 413f);
    let var_2 = Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(0u), 1u, 1u, global1.a << (0u % 32u)) ^ select(vec4<u32>(u_input.a.x, 57204u, global1.a, global1.a), abs(global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), true), vec4<u32>(abs(~5175u), global0.x, u_input.a.x, abs(u_input.a.x))), 67203u);
    global3 = array<vec4<u32>, 19>();
    var var_3 = !(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, u_input.a.x, global1.a), var_2.a.zyx)) == 0u);
    return true;
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = vec2<bool>(func_4(func_3(reverseBits(28510u), reverseBits(_wgslsmith_sub_u32(1u, 1u)))), global1.b.x || true);
    var var_1 = Struct_3(global3[_wgslsmith_index_u32(firstLeadingBit(min(~(~u_input.a.x), 1u)), 19u)], global0.x);
    global0 = ~abs(max(~var_1.a.zz << (~vec2<u32>(27453u, var_1.b) % vec2<u32>(32u)), vec2<u32>(global0.x, ~4294967295u)));
    global0 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~firstLeadingBit(u_input.a.xx), u_input.a.zz), ~(~(~vec2<u32>(global1.a, var_1.a.x) ^ select(vec2<u32>(1u, 616u), var_1.a.yw, var_0.x))));
    global2 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global2.x >> (~u_input.a.x % 32u), -4800i, -(i32(-1i) * -139i)), vec4<i32>(_wgslsmith_clamp_i32(global1.c.x, 2147483647i, global1.c.x) ^ reverseBits(2147483647i), global2.x, ~global1.c.x | 0i, _wgslsmith_sub_i32(~(-1i), min(1i, global2.x))), vec4<i32>(_wgslsmith_add_i32(~global1.c.x, _wgslsmith_div_i32(-14632i, -2147483647i)), countOneBits(_wgslsmith_dot_vec3_i32(global2.xyw, global2.zzw)), func_3(firstLeadingBit(global1.a), max(0u, var_1.b)), 21324i)), vec4<i32>(~9944i, _wgslsmith_sub_i32(global1.c.x, -2147483647i), -global1.c.x, 1i) << ((_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.b, 30176u, arg_0, var_1.a.x), select(vec4<u32>(global0.x, 0u, arg_0, u_input.a.x), vec4<u32>(0u, 0u, 1u, var_1.b), global1.b)) | global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, var_1.a.x, global0.x), 19u)]) % vec4<u32>(32u)));
    return Struct_4(global1.b, abs(global2.xww), Struct_3(firstLeadingBit(_wgslsmith_add_vec4_u32(var_1.a, vec4<u32>(26228u, u_input.a.x, global1.a, u_input.a.x) & vec4<u32>(var_1.a.x, 1u, 34751u, global1.a))), 1u & global0.x), vec4<i32>(-global2.x, i32(-1i) * -2147483647i, 1i, 1i));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = arg_2.d;
    global2 = arg_2.d;
    var var_1 = -(~(-1i));
    global3 = array<vec4<u32>, 19>();
    let var_2 = vec2<i32>(arg_2.d.x, ~_wgslsmith_clamp_i32(~var_0.x, ~(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.x, 0i), vec2<i32>(2147483647i, global2.x) & vec2<i32>(2861i, 74796i))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
}

fn func_6(arg_0: vec2<f32>, arg_1: bool) -> f32 {
    global1 = Struct_1(2324u, global1.b, -vec2<i32>(-2147483647i, abs(_wgslsmith_clamp_i32(global1.c.x, global1.c.x, -26851i))));
    let var_0 = Struct_3(countOneBits(vec4<u32>(~global0.x, ~23823u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 42912u, 56537u, global1.a), vec4<u32>(0u, global1.a, global0.x, global1.a)), countOneBits(63306u)) | (vec4<u32>(global1.a, u_input.a.x, 0u, global1.a) | global3[_wgslsmith_index_u32(u_input.a.x, 19u)])), _wgslsmith_mult_u32(global0.x, global1.a));
    let var_1 = select(global1.b.wz, vec2<bool>(arg_1, !(any(vec2<bool>(global1.b.x, arg_1)) || false)), vec2<bool>(global1.b.x, any(global1.b)));
    global0 = u_input.a.zx;
    var var_2 = global2.x ^ global1.c.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-497f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)))))));
}

fn func_7(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    global2 = -vec4<i32>(-_wgslsmith_clamp_i32(2147483647i, 29308i, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, -15461i, global2.x), vec3<i32>(global1.c.x, global1.c.x, global2.x))), firstLeadingBit(18188i), 1i, ~global2.x);
    var var_0 = !global1.b.zwy;
    let var_1 = func_2(23940u);
    global0 = vec2<u32>(~countOneBits(55833u), 2214u);
    global1 = Struct_1(abs(u_input.a.x), global1.b, vec2<i32>(~abs(16192i), 1i));
    return Struct_1(~reverseBits(~6318u), !func_2(~(4294967295u << (0u % 32u))).a, global1.c);
}

fn func_8(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(5741u, 19u)], arg_0.a);
    let var_1 = func_7(!global1.b.x, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -839f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec2_f32(func_5(vec2<u32>(arg_0.a, global0.x), arg_0.b.wxz, Struct_4(vec4<bool>(false, true, true, false), vec3<i32>(-8566i, global1.c.x, 7932i), Struct_3(var_0.a, arg_0.a), vec4<i32>(12943i, -17018i, global1.c.x, 60087i)), Struct_3(global3[_wgslsmith_index_u32(arg_0.a, 19u)], arg_0.a))).x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_vec2_f32(func_5(vec2<u32>(1u, 73106u), vec3<bool>(false, true, arg_0.b.x), Struct_4(global1.b, global2.zzx, Struct_3(vec4<u32>(41639u, 4294967295u, global1.a, 1u), u_input.a.x), vec4<i32>(global2.x, global2.x, global2.x, global2.x)), Struct_3(global3[_wgslsmith_index_u32(1u, 19u)], global0.x))).x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-832f, -446f)) - _wgslsmith_f_op_f32(ceil(-1000f))), 667f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true);
    var var_2 = func_2(arg_0.a).c;
    global2 = vec4<i32>(select(var_1.c.x, 21011i, ~func_3(1u, arg_0.a) < _wgslsmith_div_i32(arg_0.c.x, -2147483647i)), _wgslsmith_mod_i32(func_7(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1718f, 1000f, -361f, 1934f) - vec4<f32>(-389f, 594f, 222f, 907f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1547f, 896f, 866f, 445f))), _wgslsmith_f_op_f32(-1f), !arg_0.b.x & true).c.x, -9932i), firstLeadingBit(-(abs(var_1.c.x) >> (10348u % 32u))), arg_0.c.x);
    return func_7(func_2(min(arg_0.a, ~firstLeadingBit(7264u))).a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1727f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1036f) - -779f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f)) + _wgslsmith_f_op_f32(sign(374f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-614f - -774f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1054f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1235f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(762f + -101f) * _wgslsmith_f_op_f32(func_6(vec2<f32>(-1000f, 1000f), false))) * 193f)), arg_0.b.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: i32) -> Struct_2 {
    global1 = func_8(func_7(all(vec2<bool>(global1.b.x, global1.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(695f, 1132f, -577f, -212f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(673f, -1036f, 823f, -186f) * vec4<f32>(235f, -339f, 1423f, -644f))) + vec4<f32>(-1553f, 1004f, _wgslsmith_div_f32(-530f, 848f), _wgslsmith_f_op_f32(sign(-274f)))), _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec2_f32(func_5(arg_2, select(vec3<bool>(global1.b.x, false, false), vec3<bool>(true, global1.b.x, global1.b.x), global1.b.x), func_2(4294967295u), Struct_3(global3[_wgslsmith_index_u32(arg_1.a.x, 19u)], u_input.a.x))), !(!global1.b.x))), global1.b.x));
    global3 = array<vec4<u32>, 19>();
    global2 = vec4<i32>(i32(-1i) * -1i, ~(-1i), -_wgslsmith_sub_i32(arg_3, -global1.c.x), 0i);
    var var_0 = 23335i;
    var var_1 = global1.b.x;
    return arg_1;
}

fn func_9(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<f32>) -> vec4<u32> {
    global1 = Struct_1(~(~func_2(_wgslsmith_mod_u32(global1.a, u_input.a.x)).c.b), vec4<bool>(any(vec3<bool>(true, arg_1.a.x != arg_1.a.x, !global1.b.x)), _wgslsmith_f_op_f32(sign(-3003f)) < -208f, global1.b.x, false), vec2<i32>(_wgslsmith_div_i32(global1.c.x, _wgslsmith_mod_i32(global1.c.x, -1i)) >> (39533u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.c.x, global2.x), vec2<i32>(-2147483647i, global1.c.x)), vec2<i32>(-1i, -2147483647i)), ~(-vec2<i32>(global2.x, 19152i)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(arg_2.x, -1805f, 1656f, -789f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(arg_0))))));
    var var_1 = arg_1;
    var_1 = arg_1;
    let var_2 = ~vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(74756u, ~u_input.a.x, 19706u));
    return ~vec4<u32>(var_2.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(~0u, 0u | u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, var_1.a.x), abs(54728u))), ~(~(var_2.x ^ 46476u)), countOneBits(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~firstTrailingBit(~vec2<u32>(global0.x, u_input.a.x)));
    global0 = vec2<u32>(global0.x, 14706u);
    let var_0 = 1u;
    let var_1 = Struct_2(vec2<u32>(countOneBits(var_0) & 34240u, _wgslsmith_dot_vec2_u32(~(~u_input.a.zz), ~_wgslsmith_mult_vec2_u32(u_input.a.zz, u_input.a.xz))));
    global2 = _wgslsmith_mod_vec4_i32(max(vec4<i32>(1i, -global1.c.x, _wgslsmith_div_i32(global2.x, -2147483647i), i32(-1i) * -31423i) << (func_9(_wgslsmith_div_vec4_f32(vec4<f32>(823f, 483f, 419f, 1202f), vec4<f32>(1219f, 1855f, -1000f, -592f)), func_1(vec2<u32>(74888u, 58750u), var_1, vec2<u32>(global0.x, 0u), 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-274f, 1722f, -993f))) % vec4<u32>(32u)), vec4<i32>(global2.x, global1.c.x ^ select(global2.x, global2.x, global1.b.x), func_3(~9048u, global1.a ^ 0u), global1.c.x)), vec4<i32>(_wgslsmith_add_i32(3599i, func_3(4294967295u << (global0.x % 32u), abs(var_1.a.x))), firstLeadingBit(-61123i) & ~_wgslsmith_mod_i32(global2.x, global2.x), -1i, _wgslsmith_sub_i32(firstLeadingBit(firstTrailingBit(0i)), func_8(Struct_1(1u, global1.b, global2.xw)).c.x ^ func_2(var_0).b.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-564f))))) + -1724f);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(109f + var_2) + _wgslsmith_f_op_f32(-var_2)), -528f, _wgslsmith_f_op_f32(ceil(-639f)))));
    var var_4 = select(u_input.a.yy, u_input.a.yz, global2.x > global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3.x, 289f, var_2));
}

