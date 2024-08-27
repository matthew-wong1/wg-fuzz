struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(112042u, vec2<f32>(2706f, 1000f), vec3<i32>(7629i, -16970i, -18773i), true, vec3<u32>(8281u, 20181u, 643u));

var<private> global1: array<i32, 20>;

var<private> global2: vec2<i32> = vec2<i32>(74773i, 20041i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = false;
    var var_1 = all(select(select(vec2<bool>(false, var_0), select(vec2<bool>(false, true), vec2<bool>(true, true), global0.d), global0.d), select(vec2<bool>(false, global0.d), vec2<bool>(global0.d, false), select(vec2<bool>(true, var_0), vec2<bool>(global0.d, global0.d), global0.d)), global0.d != !var_0)) & !(!var_0);
    let var_2 = Struct_1(_wgslsmith_div_u32(0u, 1u & min(~38231u, ~global0.a)), _wgslsmith_f_op_vec2_f32(global0.b + vec2<f32>(-828f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.x - global0.b.x))))), firstTrailingBit(_wgslsmith_add_vec3_i32(~select(global0.c, vec3<i32>(0i, -20312i, arg_0), vec3<bool>(true, global0.d, true)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.c.x, global2.x, 20689i) << (global0.e % vec3<u32>(32u)), -global0.c))), !var_0, _wgslsmith_div_vec3_u32(~countOneBits(~global0.e), _wgslsmith_add_vec3_u32(global0.e, global0.e)));
    var_1 = -2147483647i != -(-69824i | var_2.c.x);
    global2 = vec2<i32>(0i, global0.c.x);
    return !select(vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), 1f == global0.b.x, ~global1[_wgslsmith_index_u32(94049u, 20u)] > ~1i, var_0), vec4<bool>(any(vec4<bool>(false, var_2.d, var_0, var_2.d)), var_2.d, false, var_0), !vec4<bool>(global0.d, false, true, !var_2.d));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = !global0.d;
    var var_1 = vec3<bool>(true & any(vec3<bool>(func_3(41053i).x, !arg_3.b.d, select(false, false, arg_3.b.d))), func_3(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.c.x, global0.c.x, global1[_wgslsmith_index_u32(u_input.b, 20u)]), ~arg_2.c)).x == all(arg_1.zw), true);
    var var_2 = vec3<u32>(1u, ~countOneBits(~arg_2.e.x) | 2744u, arg_2.a);
    var_2 = global0.e << (firstTrailingBit(~arg_3.b.e) % vec3<u32>(32u));
    let var_3 = Struct_2(arg_3.b.c.zy, arg_3.b, vec2<i32>(reverseBits(global0.c.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global2.x, 9742i, arg_2.c.x), vec4<i32>(45115i, 14145i, 27062i, 1i)), -_wgslsmith_add_i32(global2.x, global2.x)) ^ (vec2<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_2.x, 20u)], 2147483647i), _wgslsmith_dot_vec2_i32(global0.c.yz, vec2<i32>(2147483647i, 1i))) & max(arg_2.c.zy, vec2<i32>(-2147483647i, arg_3.c.x))));
    return -_wgslsmith_mult_vec3_i32(vec3<i32>(~(-arg_3.c.x), _wgslsmith_clamp_i32(~(-16947i), i32(-1i) * -23011i, _wgslsmith_mult_i32(arg_3.c.x, 13830i)), ~_wgslsmith_mod_i32(2147483647i, var_3.b.c.x)), vec3<i32>(global2.x, 0i, -2147483647i));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-global0.b), func_4(u_input.b, func_3(_wgslsmith_mult_i32(global0.c.x, 2147483647i) ^ 2147483647i), Struct_1(~(16811u << (1u % 32u)), _wgslsmith_f_op_vec2_f32(-global0.b), ~global0.c, any(vec4<bool>(global0.d, global0.d, true, true)), _wgslsmith_clamp_vec3_u32(global0.e, select(vec3<u32>(0u, 26828u, global0.a), global0.e, vec3<bool>(false, true, true)), ~global0.e)), Struct_2(global0.c.xz, Struct_1(u_input.a >> (u_input.a % 32u), global0.b, -vec3<i32>(-15225i, 2147483647i, 0i), false, firstTrailingBit(vec3<u32>(u_input.a, 15930u, 13662u))), global0.c.xx)), global0.d, ~(~vec3<u32>(reverseBits(u_input.b), ~1u, global0.a)));
    var var_1 = Struct_1(reverseBits(31268u), global0.b, ~global0.c, true, select(vec3<u32>(_wgslsmith_dot_vec3_u32(~global0.e, countOneBits(vec3<u32>(var_0.a, 38701u, u_input.a))), reverseBits(~u_input.b), countOneBits(11224u)), firstLeadingBit(min(~global0.e, global0.e)), false));
    let var_2 = var_0.c.x;
    let var_3 = firstTrailingBit(vec2<i32>(global1[_wgslsmith_index_u32(abs(~4294967295u) << (~select(0u, 64537u, false) % 32u), 20u)], select(-41527i, reverseBits(1i), !(!var_1.d))));
    global0 = var_0;
    return Struct_2(firstTrailingBit(global0.c.yx) ^ _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c.x, -2147483647i), var_3), var_3), var_0, vec2<i32>(-(~2147483647i & global1[_wgslsmith_index_u32(~u_input.b, 20u)]), -21929i));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    return Struct_1(1u, vec2<f32>(-1202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.b.x * arg_2.b.b.x) * -852f)), -vec3<i32>(firstLeadingBit(-76273i), global0.c.x, 25862i) ^ global0.c, arg_1, firstLeadingBit(min(arg_2.b.e, abs(countOneBits(arg_2.b.e)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(-(~_wgslsmith_clamp_vec2_i32(firstTrailingBit(global0.c.zx), global0.c.yy ^ global0.c.xz, vec2<i32>(global1[_wgslsmith_index_u32(global0.a, 20u)], 38138i))), func_5(global0.d, _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(arg_0, -1768f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * _wgslsmith_f_op_f32(step(-441f, global0.b.x))), func_2()), _wgslsmith_mod_vec2_i32(vec2<i32>((global2.x | global0.c.x) | -2147483647i, -26676i), -func_5(true, false, Struct_2(global0.c.zx, Struct_1(102389u, vec2<f32>(global0.b.x, 160f), global0.c, true, global0.e), vec2<i32>(1i, 2147483647i))).c.zx & vec2<i32>(global0.c.x, global2.x)));
    global2 = firstTrailingBit(abs(global0.c.xx << (_wgslsmith_mod_vec2_u32(global0.e.yy, var_0.b.e.xy) % vec2<u32>(32u))));
    let var_1 = ~(~u_input.a);
    var var_2 = var_0.b.a;
    let var_3 = abs(global0.e);
    return func_2().b;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    global2 = _wgslsmith_mod_vec2_i32(global0.c.yz >> (global0.e.zy % vec2<u32>(32u)), firstTrailingBit(max(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(global0.c.yz, global0.c.yx), -arg_1.c), arg_1.c)));
    var var_0 = arg_1;
    var var_1 = ~(-var_0.b.c);
    var_1 = vec3<i32>(global2.x, abs(~(-2147483647i)), var_0.c.x);
    var_0 = Struct_2(global0.c.yx, func_1(_wgslsmith_f_op_f32(-global0.b.x)), vec2<i32>(arg_1.a.x, abs(16418i)));
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - -341f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-397f - _wgslsmith_f_op_f32(sign(global0.b.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.b.x)))));
    global2 = global0.c.yy;
    global0 = Struct_1(abs(func_6(vec4<f32>(_wgslsmith_f_op_f32(select(global0.b.x, global0.b.x, global0.d)), -2021f, _wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(-941f * 361f)), Struct_2(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 20u)], global0.c.x), func_1(global0.b.x), global0.c.zz))), global0.b, vec3<i32>(-2147483647i, global0.c.x, ~global2.x << (_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a, global0.e.x), vec2<u32>(u_input.b, u_input.a)) % 32u)), global0.d, vec3<u32>(u_input.b, ~(~u_input.b), global0.a));
    var_0 = -537f;
    let var_1 = vec2<i32>(global1[_wgslsmith_index_u32(54397u, 20u)], func_4(_wgslsmith_sub_u32(u_input.b, 1u), vec4<bool>(func_3(global0.c.x >> (global0.a % 32u)).x, global0.d && true, global0.d, true), Struct_1(~(global0.a | 7806u), vec2<f32>(-327f, _wgslsmith_f_op_f32(-890f * global0.b.x)), vec3<i32>(-1i) * -global0.c, !global0.d | false, ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, global0.a, u_input.b), vec3<u32>(49675u, global0.e.x, u_input.a))), Struct_2(select(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 33160i), vec2<i32>(33944i, -14154i)), -vec2<i32>(1i, 22296i), !global0.d), Struct_1(func_2().b.e.x, global0.b, _wgslsmith_mod_vec3_i32(vec3<i32>(46105i, 2147483647i, 1i), global0.c), true, ~global0.e), firstLeadingBit(global0.c.zy) & _wgslsmith_clamp_vec2_i32(global0.c.zy, global0.c.yz, vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], -2147483647i)))).x);
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f))))));
    var_0 = global0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(85016u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global0.e, vec3<u32>(global0.e.x, 18805u, global0.a)), global0.e)), firstLeadingBit(firstTrailingBit(global0.e.x)) >> (~1u % 32u)), _wgslsmith_mult_i32(func_2().a.x, -8633i), -_wgslsmith_sub_i32(-func_4(global0.a, vec4<bool>(global0.d, false, global0.d, global0.d), Struct_1(4294967295u, global0.b, vec3<i32>(global2.x, 26091i, global2.x), global0.d, vec3<u32>(u_input.a, 0u, 1u)), Struct_2(global0.c.zy, Struct_1(global0.a, global0.b, vec3<i32>(var_1.x, -2147483647i, var_1.x), global0.d, global0.e), vec2<i32>(global0.c.x, var_1.x))).x, _wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, var_1.x), _wgslsmith_sub_i32(-2147483647i, global1[_wgslsmith_index_u32(2836u, 20u)]))), _wgslsmith_f_op_f32(-global0.b.x));
}

