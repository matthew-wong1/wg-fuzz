struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_1, 5>;

var<private> global2: vec3<f32>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    global2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0)), global2.x)), _wgslsmith_f_op_f32(-727f - global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -118f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, global2.x, -428f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1555f, 760f, 389f)))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(342f)), arg_0, _wgslsmith_f_op_f32(sign(-220f)))))));
    return arg_2.b;
}

fn func_3(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_1(!select(!vec2<bool>(global3.x, true), !select(vec2<bool>(false, true), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x)), false), 8036u | u_input.b, _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(39690i, -15417i, u_input.a, -15727i), vec4<i32>(-70379i, u_input.a, 0i, u_input.a), vec4<i32>(-1i, 35055i, -12067i, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i) ^ vec4<i32>(u_input.a, u_input.a, -32618i, 2242i)), vec4<i32>(2147483647i, u_input.a, 15826i, i32(-1i) * -12127i)) ^ (vec4<i32>(firstTrailingBit(u_input.a), firstLeadingBit(-1i), firstTrailingBit(u_input.a), u_input.a) >> (~vec4<u32>(0u, 4294967295u, 64884u, 4294967295u) % vec4<u32>(32u))), u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1432f, 814f, -312f, -198f), vec4<f32>(global2.x, arg_0.x, -557f, 715f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1793f, -805f, global2.x, global2.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1332f, 504f, global2.x, 1079f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(809f, global2.x, 2977f, -1386f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, arg_0.x, 274f, global2.x) - vec4<f32>(-779f, 1709f, -936f, arg_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 407f, -563f, global2.x) - vec4<f32>(arg_0.x, -1482f, -1054f, 1264f)) - _wgslsmith_div_vec4_f32(vec4<f32>(856f, -333f, global2.x, -886f), vec4<f32>(-448f, 626f, -1105f, global2.x)))), select(!select(vec4<bool>(global3.x, false, false, var_0.a.x), vec4<bool>(var_0.a.x, global3.x, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), vec4<bool>(all(vec3<bool>(false, var_0.a.x, false)), any(vec4<bool>(global3.x, false, false, false)), var_0.a.x || false, false), 3260u >= u_input.c)))));
    var var_2 = true;
    let var_3 = 1043f;
    var var_4 = _wgslsmith_clamp_vec3_i32(var_0.c.yyw, (_wgslsmith_mod_vec3_i32(var_0.c.xxy ^ vec3<i32>(-2147483647i, u_input.a, var_0.d), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_0.c.x), var_0.c.wzw)) | var_0.c.xww) | ~(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, var_0.d, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), var_0.c.yyw);
    return !select(var_0.a, vec2<bool>(!(2147483647i > u_input.a), true), !vec2<bool>(true, var_0.a.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(select(!func_3(vec3<f32>(global2.x, global2.x, global2.x)), global3.yz, true), 0u, -(~(-vec4<i32>(u_input.a, 6594i, 2147483647i, 1i) << (vec4<u32>(u_input.b, u_input.b, 5699u, 88962u) % vec4<u32>(32u)))), u_input.a);
    var var_1 = !(_wgslsmith_mod_i32(1i, -_wgslsmith_add_i32(var_0.c.x, -23688i)) > -u_input.a);
    var var_2 = vec3<u32>(~min(~1u, 4294967295u), 1u, reverseBits(func_1(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_mod_u32(21160u, 53484u), Struct_1(vec2<bool>(true, var_0.a.x), var_0.b, var_0.c, -1i)))) & _wgslsmith_add_vec3_u32(vec3<u32>(~0u, func_1(_wgslsmith_f_op_f32(global2.x * global2.x), var_0.b | 51889u, global1[_wgslsmith_index_u32(countOneBits(55304u), 5u)]), 45440u), abs(vec3<u32>(~var_0.b, ~u_input.b, 1u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(global2.zz));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(ceil(global2.x)));
    return global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b >> (var_0.b % 32u), ~(~u_input.b)), 5u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(-1i, -(arg_1.c.x & arg_0.d) ^ arg_0.d), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(41075i, arg_0.d, 0i), arg_0.c.xwy), -vec3<i32>(u_input.a, u_input.a, u_input.a) << (select(vec3<u32>(0u, arg_1.b, 0u), vec3<u32>(u_input.c, arg_1.b, 1u), vec3<bool>(arg_0.a.x, global3.x, arg_1.a.x)) % vec3<u32>(32u))), firstLeadingBit(countOneBits(vec3<i32>(-2147483647i, 37687i, u_input.a)) ^ vec3<i32>(u_input.a, 7233i, 30444i))), arg_0.c.x | _wgslsmith_mult_i32(27770i, _wgslsmith_dot_vec4_i32(arg_1.c, -vec4<i32>(u_input.a, u_input.a, -2147483647i, arg_1.c.x))));
    let var_1 = Struct_1(global3.yy, arg_1.b, firstLeadingBit(arg_0.c), -arg_0.d);
    global3 = vec3<bool>(true, true, false);
    global0 = _wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(abs(-19283i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.c.x, -22093i, u_input.a) & (vec4<i32>(-1i, 1030i, 33075i, 1i) | vec4<i32>(-35872i, arg_0.c.x, 1i, 27119i)), select(reverseBits(arg_1.c), vec4<i32>(-2147483647i, 2147483647i, arg_0.c.x, var_1.d), !vec4<bool>(arg_0.a.x, true, arg_1.a.x, var_1.a.x)))));
    let var_2 = arg_0.b;
    return Struct_1(!vec2<bool>(all(global3.zz), var_1.a.x), ~select(_wgslsmith_mod_u32(u_input.b, ~var_1.b), _wgslsmith_mod_u32(arg_1.b, var_1.b), true), vec4<i32>(-1i, 29143i, -1i, -abs(_wgslsmith_dot_vec3_i32(arg_1.c.wyx, vec3<i32>(4670i, 565i, -7566i)))), ~_wgslsmith_add_i32(-2147483647i, ~0i));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = ~0u;
    var var_2 = ~(countOneBits(~u_input.c) << (var_0.b % 32u));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-809f, 218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1))), 661f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(global2.x + arg_1.x)))));
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1), _wgslsmith_f_op_vec3_f32(arg_1 + arg_1), select(!vec3<bool>(false, true, global3.x), select(!select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a.x, true, var_0.a.x), vec3<bool>(var_0.a.x, false, true)), select(!vec3<bool>(arg_0.a.x, var_0.a.x, true), vec3<bool>(global3.x, true, var_0.a.x), !vec3<bool>(var_0.a.x, false, false)), arg_0.a.x), select(select(select(vec3<bool>(global3.x, arg_0.a.x, global3.x), vec3<bool>(false, false, true), true), !vec3<bool>(global3.x, false, global3.x), select(vec3<bool>(false, var_0.a.x, arg_0.a.x), vec3<bool>(true, true, false), vec3<bool>(global3.x, true, arg_0.a.x))), select(vec3<bool>(false, arg_0.a.x, arg_0.a.x), select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.a.x, false), false), !arg_0.a.x), global3.x))));
    return global1[_wgslsmith_index_u32(~u_input.c, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(~_wgslsmith_mult_i32(u_input.a, u_input.a), -1i), reverseBits(select(vec2<i32>(3943i, u_input.a), vec2<i32>(u_input.a, u_input.a), global3.x)) << (vec2<u32>(4294967295u, _wgslsmith_mod_u32(0u, u_input.c)) % vec2<u32>(32u)), vec2<bool>(!(u_input.c < 0u), func_1(-948f, u_input.c, global1[_wgslsmith_index_u32(4294967295u, 5u)]) != 0u)), ~_wgslsmith_mod_vec2_i32(min(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a)), select(vec2<i32>(5104i, 52941i), vec2<i32>(u_input.a, u_input.a), false)), -vec2<i32>(-1i, -2715i)));
    let var_0 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(~0u ^ u_input.b, 0u)) <= ~u_input.c;
    let var_1 = global2.x;
    var var_2 = func_5(global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(-global2.x), 6919u, func_4(func_2(), func_2())), 5u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(global2.x + global2.x), 1f)) - vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1249f)), 1000f)), global2.xy, vec3<i32>(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_div_i32(u_input.a, u_input.a), select(u_input.a, 1i, var_0)), 3321i, u_input.a) ^ ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2278i, u_input.a, -2147483647i), vec3<i32>(-2147483647i, 1i, u_input.a))));
    let var_3 = vec2<i32>(_wgslsmith_add_i32(-u_input.a, _wgslsmith_dot_vec3_i32(var_2.c.zxz, _wgslsmith_mod_vec3_i32(var_2.c.yyw, vec3<i32>(0i, u_input.a, u_input.a)))) >> (~1u % 32u), func_5(Struct_1(func_4(global1[_wgslsmith_index_u32(firstLeadingBit(27562u), 5u)], func_4(global1[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(60822u, 5u)])).a, 12299u, var_2.c, -u_input.a | _wgslsmith_sub_i32(-7617i, var_2.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, 1809f, -1000f)))))), global2.zx, -var_2.c.wyy).d);
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c, 19169u), ~vec2<u32>(var_2.b, var_2.b)), firstLeadingBit(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(71638u, 24358u)), vec2<u32>(var_2.b, u_input.c))), var_2.a), 1i, global2.x, ~u_input.b);
}

