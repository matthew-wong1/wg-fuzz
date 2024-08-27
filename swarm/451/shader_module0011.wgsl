struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = -987f;

var<private> global2: Struct_1 = Struct_1(true, true, vec2<f32>(919f, -416f), false, true);

var<private> global3: array<vec4<u32>, 12>;

var<private> global4: i32 = 14667i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(1u, 12u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, 435f, 132f, arg_1.c.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(max(arg_3.a.c.x, arg_0.c.x)), global0.c.x, arg_1.c.x))));
    let var_2 = !global0.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a) - _wgslsmith_f_op_vec3_f32(-arg_1.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-213f, arg_3.a.c.x, -144f), var_1.xyx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(880f, global2.c.x, arg_3.b.c.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1223f, -1104f, 861f)))))));
    global4 = reverseBits(-60611i);
    return !arg_3.a.d;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_3(Struct_1(true, select(arg_0.a, global2.e, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c) + _wgslsmith_f_op_vec2_f32(arg_0.c - global2.c))), !arg_0.b, global0.b), arg_0, reverseBits(-(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a) << (vec4<u32>(arg_1.x, 47965u, u_input.c, arg_1.x) % vec4<u32>(32u)))) | vec4<i32>(~(~61619i), u_input.a, 1i, 1i));
    let var_1 = var_0.c.wy;
    var var_2 = arg_0;
    var var_3 = global2.a || arg_0.b;
    let var_4 = vec2<bool>(true, true);
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<bool>) -> vec4<bool> {
    var var_0 = Struct_1(max(~2147483647i, ~40735i) != ~(-_wgslsmith_mod_i32(arg_0.b.x, u_input.a)), func_4(Struct_1(!arg_1.b.b, func_3(arg_1.a, Struct_2(vec3<f32>(arg_1.b.c.x, 385f, 305f), vec4<i32>(arg_1.c.x, arg_1.c.x, 2147483647i, 2147483647i), global2.c), u_input.d, arg_1) && true, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.c.x, 1595f) * _wgslsmith_f_op_vec2_f32(global0.c + global2.c)), all(!vec4<bool>(true, true, arg_2.x, global2.a)), global2.a), _wgslsmith_clamp_vec4_u32(~(global3[_wgslsmith_index_u32(61430u, 12u)] ^ vec4<u32>(71077u, 0u, 4294967295u, u_input.d)), _wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, u_input.b), 12u)], _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c, u_input.d, 56317u), global3[_wgslsmith_index_u32(61835u, 12u)])), global3[_wgslsmith_index_u32(reverseBits(1u), 12u)])), arg_0.c, !arg_1.a.b, true);
    let var_1 = Struct_2(vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.c.x), arg_0.a.x) + global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-743f - _wgslsmith_div_f32(-311f, 763f)) * _wgslsmith_f_op_f32(sign(1f)))), vec4<i32>(abs(_wgslsmith_add_i32(~(-1i), _wgslsmith_dot_vec3_i32(arg_0.b.zzx, arg_0.b.zxz))), firstTrailingBit(firstLeadingBit(abs(-2147483647i))), u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global2.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c), vec2<f32>(var_0.c.x, -845f)))) * vec2<f32>(-133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(998f, -2008f, arg_2.x))))));
    let var_2 = !select(!all(vec4<bool>(global2.e, true, true, true)) & var_0.b, all(arg_2.yz), all(vec3<bool>(arg_2.x, arg_2.x, true)));
    let var_3 = vec3<i32>(abs(var_1.b.x), u_input.a, 1i);
    var var_4 = global0.a;
    return vec4<bool>(true, !(!((u_input.a != -2147483647i) & (933f == arg_1.b.c.x))), all(!select(arg_2.zy, vec2<bool>(false, true), false)) || false, var_2 || arg_1.b.b);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = vec2<u32>(u_input.b, ~(u_input.d << (u_input.d % 32u)));
    global0 = Struct_1(any(func_2(Struct_2(_wgslsmith_f_op_vec3_f32(select(arg_2, arg_2, arg_3.a)), -vec4<i32>(u_input.a, -6551i, 0i, 1873i), vec2<f32>(-814f, -401f)), Struct_3(arg_3, Struct_1(global0.e, false, arg_3.c, arg_1, global0.b), -vec4<i32>(-1i, u_input.a, 2147483647i, 16413i)), !(!vec3<bool>(true, false, global0.e)))), !(var_0.x <= abs(abs(15887u))), vec2<f32>(457f, 260f), false, global2.a);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c.x, arg_0) * arg_2.x);
    var var_1 = firstLeadingBit(var_0.x);
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_0, ~_wgslsmith_add_vec2_u32(var_0, var_0)) & firstLeadingBit(u_input.b), reverseBits(30336u));
    return _wgslsmith_dot_vec4_i32(countOneBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -1i, u_input.a) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 85278u) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, u_input.a, -6458i, -14050i))), abs(vec4<i32>(firstTrailingBit(countOneBits(u_input.a)), 3432i, u_input.a, select(firstLeadingBit(u_input.a), -1i, global2.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit((vec4<i32>(countOneBits(-42847i), -274i, ~(-1i), u_input.a) | _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), -vec4<i32>(u_input.a, 2147483647i, 15725i, u_input.a))) << (vec4<u32>(~countOneBits(u_input.c), reverseBits(~4294967295u), ~136412u, _wgslsmith_add_u32(u_input.d, ~u_input.d)) % vec4<u32>(32u)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.x))), global2.c.x);
    var var_1 = Struct_1(any(vec4<bool>(true, true, true, true)), 19950u == select(60220u, 0u, -47612i >= var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(ceil(2268f))))), global0.e, any(select(!(!vec2<bool>(false, global2.d)), !select(vec2<bool>(global0.e, false), vec2<bool>(global0.a, global0.a), vec2<bool>(true, false)), vec2<bool>(true, true))));
    global4 = _wgslsmith_sub_i32(0i, _wgslsmith_add_i32(2147483647i | _wgslsmith_div_i32(select(var_0.x, u_input.a, var_1.b), func_1(var_1.c.x, true, vec3<f32>(379f, global2.c.x, var_1.c.x), Struct_1(true, var_1.e, vec2<f32>(1176f, global0.c.x), true, true))), select(_wgslsmith_sub_i32(u_input.a, u_input.a & -2147483647i), firstLeadingBit(var_0.x) << (~u_input.d % 32u), any(select(vec4<bool>(false, false, global2.a, true), vec4<bool>(global0.b, true, global2.b, false), vec4<bool>(true, global0.d, false, false))))));
    var var_2 = var_1.c.x;
    var_2 = global2.c.x;
    let var_3 = vec4<i32>(u_input.a, abs(var_0.x) | -18802i, reverseBits((func_1(global0.c.x, var_1.e, vec3<f32>(global2.c.x, 1343f, global0.c.x), Struct_1(false, global0.a, global2.c, false, false)) ^ func_1(global0.c.x, global0.d, vec3<f32>(-614f, global0.c.x, 1277f), Struct_1(global2.b, global0.b, global2.c, false, global0.d))) & -1i), 1i);
    global4 = -20i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c.x, 934f, -683f, var_1.c.x))))))), -41278i, -1539f, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 13797u), 12u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1042f, -905f, global2.c.x, var_1.c.x) - vec4<f32>(var_1.c.x, 840f, 220f, var_1.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, -512f, var_1.c.x) * vec4<f32>(-343f, global2.c.x, global2.c.x, 313f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, -388f, -326f, -557f), vec4<f32>(var_1.c.x, var_1.c.x, global2.c.x, global0.c.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(204f, var_1.c.x, global2.c.x, global0.c.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-327f, -1000f, global0.c.x, var_1.c.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, 1825f, var_1.c.x, global0.c.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1150f, -2763f, global2.c.x, 584f)))), select(vec4<bool>(var_1.e, true, true, true), vec4<bool>(global0.e, true, true, var_1.e), global0.b))), vec4<bool>(all(vec4<bool>(global0.b, true, var_1.a, var_1.a)), !(global2.a || global0.b), !var_1.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.c), vec3<u32>(u_input.c, 4294967295u, u_input.d)) < 53281u))));
}

