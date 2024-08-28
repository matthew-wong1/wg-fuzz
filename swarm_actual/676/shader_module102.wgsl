struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<i32> = vec4<i32>(22013i, 2147483647i, -2968i, -16154i);

var<private> global2: array<u32, 24>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> i32 {
    global1 = reverseBits(_wgslsmith_mult_vec4_i32(select(-vec4<i32>(-1i, arg_0, -15696i, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(14184i, arg_0, global0.d.c, -11882i), vec4<i32>(-15212i, global0.c.c, global1.x, global0.b.x)), vec4<bool>(true, false, false, arg_1.x)), abs(vec4<i32>(1i, 43165i, arg_0, 22084i)))) ^ -vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.b.x, 0i, -26762i, -2147483647i), vec4<i32>(-4412i, arg_0, -2147483647i, -2147483647i)), vec4<i32>(arg_0, 2147483647i, -1i, global1.x) & vec4<i32>(0i, global1.x, 21465i, 75003i)), abs(global1.x & -2147483647i), 42215i, ~arg_0);
    var var_0 = 1000f;
    let var_1 = _wgslsmith_dot_vec4_u32(global0.c.b, ~global0.a.b);
    let var_2 = Struct_1(u_input.e, global0.c.b, 2147483647i, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~50951u, 24u)], 24u)]);
    global1 = vec4<i32>(min(var_2.c, 2585i), -1i, 1i, 27552i);
    return _wgslsmith_clamp_i32(-26439i, _wgslsmith_dot_vec2_i32(global1.xw, abs(~abs(vec2<i32>(global1.x, 5270i)))), abs(countOneBits(arg_0)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    let var_0 = global1.wyx;
    global1 = -_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, 2147483647i << (global0.a.b.x % 32u), func_3(arg_0, vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x)), max(-50417i, global0.c.c)), vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(-301i, 2147483647i)), _wgslsmith_mult_i32(-1i, var_0.x >> (global2[_wgslsmith_index_u32(0u, 24u)] % 32u)), -func_3(-1i, vec4<bool>(arg_2.x, false, true, arg_2.x)), ~924i));
    global1 = min(~vec4<i32>(arg_0, var_0.x, global0.d.c, arg_0 | _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, var_0.x), vec2<i32>(global0.c.c, global0.d.c))), _wgslsmith_div_vec4_i32(-vec4<i32>(global0.c.c, i32(-1i) * -16692i, _wgslsmith_div_i32(2147483647i, arg_0), 11612i), -firstLeadingBit(-vec4<i32>(14906i, 2147483647i, 2147483647i, 0i))));
    global0 = Struct_2(global0.a, ~var_0.yz, global0.d, global0.c, ~vec2<u32>(0u, global0.e.x));
    let var_1 = -vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0, -2147483647i, 17001i), vec4<i32>(global1.x, global1.x, global1.x, -1i)), ~vec4<i32>(-29012i, global1.x, global1.x, 2147483647i)), ~global0.d.c, -_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -2147483647i, global1.x, -11447i), vec4<i32>(arg_0, 1i, -15700i, 0i))), arg_0, func_3(34238i, vec4<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, arg_2.x, true)), true, arg_2.x)));
    return 879f;
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_2(global0.a, select(vec2<i32>(-1i, global1.x), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(global0.d.c, 1i)), select(global1.ww, global0.b, vec2<bool>(arg_0, false))), vec2<i32>(global0.a.c, max(global0.c.c, 1i))), select(select(select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), vec2<bool>(true, false)), vec2<bool>(true, arg_0), all(vec2<bool>(false, true))), vec2<bool>(true, !arg_0), vec2<bool>(true, true))), Struct_1(~vec3<u32>(12924u, firstLeadingBit(43119u), ~54701u), ~global0.a.b, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global1.x, 46394i, func_3(global1.x, vec4<bool>(arg_0, arg_0, arg_0, arg_0))), _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, global1.x, global0.d.c), -global1.zzx), 1i), u_input.e.x), global0.c, _wgslsmith_div_vec2_u32(~select(global0.a.b.wx >> (global0.e % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1150u, 47860u), vec2<u32>(4294967295u, 0u), global0.e), arg_0), u_input.a.xy));
    let var_1 = _wgslsmith_f_op_f32(select(-1000f, 249f, true));
    global1 = vec4<i32>(reverseBits(-(var_0.b.x | 1i)), -global0.a.c, abs(~(global0.a.c ^ -18237i)), ~(-38210i));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(func_3(global0.c.c, select(select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), false), vec4<bool>(true, arg_0, arg_0, true), select(arg_0, arg_0, arg_0))), 1031f, !select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true)), true)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, arg_1.x, arg_0)) + 1350f)))));
    return (-firstTrailingBit(global1.x) ^ func_3(global1.x, vec4<bool>(var_3 >= arg_1.x, !arg_0, true, select(true, true, arg_0)))) > -global1.x;
}

fn func_1() -> vec3<bool> {
    let var_0 = global1.x;
    global2 = array<u32, 24>();
    var var_1 = !select(abs(firstTrailingBit(global1.x)) == global1.x, func_4(~global1.x != firstLeadingBit(-10145i), vec4<f32>(708f, -714f, _wgslsmith_f_op_f32(func_2(global1.x, -548f, vec2<bool>(true, false))), -515f)), true);
    global2 = array<u32, 24>();
    let var_2 = vec2<bool>(true, u_input.a.x > (~abs(global2[_wgslsmith_index_u32(0u, 24u)]) | global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)]));
    return !select(!(!vec3<bool>(false, var_2.x, false)), select(select(!vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(true, false, false), !vec3<bool>(true, var_2.x, var_2.x)), vec3<bool>(select(true, false, var_2.x), true, false), vec3<bool>(all(vec2<bool>(true, var_2.x)), var_2.x, var_2.x)), !vec3<bool>(true, var_2.x, var_2.x || true));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(select(select(_wgslsmith_add_vec3_u32(select(arg_3.a.b.xwx, vec3<u32>(3059u, global0.a.a.x, u_input.c), vec3<bool>(arg_2.x, false, arg_2.x)), vec3<u32>(arg_1, 10594u, arg_3.e.x) & arg_3.a.b.wzz), ~vec3<u32>(arg_1, 19818u, u_input.d.x), arg_2), abs(min(firstTrailingBit(vec3<u32>(6729u, 4294967295u, global0.d.d)), ~vec3<u32>(1u, 0u, arg_3.a.d))), all(vec2<bool>(false, true))), global0.a.b, global1.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~13210u, ~45825u, 4294967295u | global2[_wgslsmith_index_u32(79982u, 24u)], global2[_wgslsmith_index_u32(global0.c.a.x, 24u)] >> (arg_3.c.b.x % 32u)), vec4<u32>(global2[_wgslsmith_index_u32(select(arg_1, 21038u, true), 24u)], arg_1, _wgslsmith_mod_u32(u_input.e.x, global2[_wgslsmith_index_u32(47241u, 24u)]), ~0u)), _wgslsmith_sub_u32(~arg_0.b.x, ~arg_1)));
    global2 = array<u32, 24>();
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global0.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(52126u, 57403u), 24u)], 24u)], select(vec3<bool>(true, true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false))), select(vec3<bool>(any(vec4<bool>(true, true, true, false)), true, true), vec3<bool>(true, true, any(vec2<bool>(false, false))), !func_1()), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false))), Struct_2(Struct_1(vec3<u32>(countOneBits(4294967295u), u_input.c, 1u), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(global0.c.b, global0.d.b), vec4<u32>(u_input.e.x, 85492u, 23877u, 0u)), global1.x, 4294967295u), vec2<i32>(-2147483647i, -38103i), global0.a, Struct_1(_wgslsmith_add_vec3_u32(min(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(u_input.b.x, 4294967295u, 1u)), vec3<u32>(99310u, u_input.d.x, u_input.d.x)), firstTrailingBit(vec4<u32>(1u, 46477u, 0u, global0.c.a.x)), -2147483647i, 4294967295u), global0.e));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(1014f)), _wgslsmith_f_op_f32(f32(-1f) * -639f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) + vec2<f32>(-1077f, _wgslsmith_div_f32(var_1.x, 1283f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), -1000f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, -1686f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2248f, -823f), vec2<f32>(239f, 469f), true)))))))));
    global0 = Struct_2(global0.c, countOneBits(vec2<i32>(global1.x, ~2147483647i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.c), global0.b))), Struct_1(~u_input.e, global0.c.b, -41146i, ~_wgslsmith_clamp_u32(reverseBits(29941u), _wgslsmith_add_u32(4294967295u, global2[_wgslsmith_index_u32(var_0.a.x, 24u)]), global2[_wgslsmith_index_u32(u_input.d.x, 24u)] >> (u_input.b.x % 32u))), Struct_1(u_input.a, ~vec4<u32>(global0.e.x, ~var_0.d, 1u, global0.c.d & global0.c.b.x), -32909i, ~(~reverseBits(4294967295u))), vec2<u32>(u_input.c, _wgslsmith_mod_u32(~global0.a.d, ~firstLeadingBit(23684u))));
    var var_3 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(60919u, max(~4294967295u, global0.c.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(228f, var_2.x))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, 954f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_2.x, 224f), true)))))), global1.wxx);
}

