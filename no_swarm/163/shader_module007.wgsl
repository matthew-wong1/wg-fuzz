struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(true, true, false, true, true, false, false, false, true, true, true, true, true, false, true, false, false, false, true, true, true, false, true, true, false, true, true);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 17>;

var<private> global3: vec3<i32>;

var<private> global4: u32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<f32>) -> u32 {
    global3 = reverseBits(select(~arg_0, vec3<i32>(_wgslsmith_sub_i32(arg_2.x, -1i), max(arg_0.x, arg_0.x), arg_0.x), (-1276f == arg_3.x) & true)) << (firstLeadingBit(firstLeadingBit(~vec3<u32>(u_input.b.x, 1u, 16380u)) >> (~vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_0 = Struct_1(arg_3.x);
    var var_1 = Struct_1(arg_3.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(var_0.a + arg_1.a));
    let var_3 = (~(-28416i) > min(abs(-2147483647i >> (u_input.a.x % 32u)), abs(abs(global3.x)))) & !(!global0[_wgslsmith_index_u32(u_input.a.x, 27u)]);
    return 0u;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_3(~vec3<i32>(0i, -2147483647i, global3.x) >> (abs(vec3<u32>(48868u, 68881u, u_input.b.x)) % vec3<u32>(32u)), Struct_1(_wgslsmith_div_f32(-539f, 1444f)), vec2<i32>(global3.x & -1i, select(global3.x, 41804i, true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1539f, arg_0, -1281f)))))), 57282u), 27u)];
    let var_1 = u_input.b;
    global2 = array<Struct_1, 17>();
    var var_2 = vec4<bool>(global0[_wgslsmith_index_u32(reverseBits(16894u), 27u)], any(select(vec4<bool>(true, all(vec2<bool>(arg_2, arg_2)), global0[_wgslsmith_index_u32(var_1.x, 27u)] == false, true), vec4<bool>(-561f >= global1.a, arg_2, arg_2, true), vec4<bool>(true, global0[_wgslsmith_index_u32(~0u, 27u)], global0[_wgslsmith_index_u32(func_3(vec3<i32>(-2147483647i, u_input.c, global3.x), global2[_wgslsmith_index_u32(4294967295u, 17u)], vec2<i32>(18245i, u_input.e), vec3<f32>(-401f, -397f, 938f)), 27u)], arg_2))), arg_2, !arg_2);
    let var_3 = global2[_wgslsmith_index_u32(var_1.x, 17u)];
    return global2[_wgslsmith_index_u32(~u_input.b.x, 17u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = -435f;
    global4 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1000f, 1f))));
    var var_2 = select(any(select(vec2<bool>(global1.a >= arg_1.a, any(vec4<bool>(true, false, arg_3, false))), vec2<bool>(arg_1.a > 1183f, any(vec4<bool>(arg_3, false, true, false))), select(vec2<bool>(false, true), select(vec2<bool>(arg_3, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec2<bool>(true, arg_3)), arg_3 || arg_3))), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 1173f)))) <= -683f);
    let var_3 = u_input.a.x;
    return arg_2;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<i32>(global3.x, global3.x, ~u_input.d, 1i);
    let var_1 = Struct_1(global1.a);
    let var_2 = -vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_div_i32(-8757i, var_0.x), ~0i), countOneBits(u_input.c), ~(~var_0.x), global3.x >> (_wgslsmith_add_u32(~54187u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 42078u, u_input.a.x), vec3<u32>(arg_0.x, 1u, 0u))) % 32u));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(0u, arg_0.x, 96590u)), min(u_input.a.x, ~u_input.b.x)), arg_0.x, _wgslsmith_dot_vec3_u32(~(vec3<u32>(arg_0.x, 88383u, u_input.a.x) ^ vec3<u32>(60575u, 46188u, u_input.a.x)), vec3<u32>(~1853u, arg_0.x, arg_0.x))), vec3<u32>(~u_input.a.x, u_input.a.x, min(abs(40041u), 0u))), 17u)];
    global3 = ~_wgslsmith_add_vec3_i32(-vec3<i32>(global3.x >> (75778u % 32u), select(u_input.d, var_0.x, false), _wgslsmith_dot_vec2_i32(var_2.yw, var_2.wx)), vec3<i32>(max(var_2.x, var_0.x), countOneBits(_wgslsmith_mult_i32(-2147483647i, var_2.x)), global3.x));
    return func_2(1190f, arg_0.x, all(vec3<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(arg_0.x, 27u)]))), true)));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = max(_wgslsmith_mod_i32(~(-global3.x), 10972i), ~(-(~1i))) << (u_input.a.x % 32u);
    let var_1 = func_5(~u_input.b, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1365f, arg_0.a, 377f), vec3<f32>(650f, 1907f, global1.a), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 27u)], false)))))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))), 56405u, all(vec2<bool>(true, true))), global2[_wgslsmith_index_u32(u_input.b.x, 17u)], false));
    var_0 = global3.x;
    var var_2 = arg_0;
    let var_3 = 59041u;
    return !(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 27u)] && all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_3, 27u)])), global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(25043u, 0u, 44209u), vec3<u32>(0u, 4294967295u, u_input.a.x), global0[_wgslsmith_index_u32(13773u, 27u)]), vec3<u32>(var_3, 1609u, 44399u)), 27u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_clamp_i32(u_input.e ^ _wgslsmith_dot_vec4_i32(max(vec4<i32>(11338i, global3.x, u_input.c, 2147483647i), vec4<i32>(u_input.d, global3.x, -1i, 10162i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, -1i, -3156i, u_input.c), vec4<i32>(-1i, global3.x, -24587i, 43801i))), u_input.e, max(reverseBits(i32(-1i) * -3042i), _wgslsmith_mult_i32(u_input.d, -86197i) & global3.x));
    let var_1 = Struct_1(196f);
    global2 = array<Struct_1, 17>();
    var var_2 = func_1(var_1);
    global4 = ~_wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x) >> (vec4<u32>(u_input.a.x, 0u, u_input.b.x, 10167u) % vec4<u32>(32u)))), vec4<u32>(abs(u_input.b.x >> (u_input.b.x % 32u)), u_input.b.x, 1661u, u_input.b.x));
    var var_3 = vec4<u32>(~select(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, u_input.a.x), u_input.a.x), true), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.b.x), ~vec4<u32>(45133u, u_input.a.x, 0u, 0u)), (vec4<u32>(u_input.b.x, 68031u, u_input.b.x, 7827u) ^ vec4<u32>(34863u, 19831u, u_input.a.x, 40495u)) << (vec4<u32>(0u, 2007u, 33906u, u_input.b.x) % vec4<u32>(32u)), (vec4<u32>(61514u, u_input.b.x, 1u, u_input.a.x) & vec4<u32>(77092u, 39702u, u_input.b.x, u_input.b.x)) | firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 19812u))), ~vec4<u32>(u_input.b.x, ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), u_input.b), u_input.b.x ^ u_input.a.x)), 1394u, u_input.b.x);
    let var_4 = true;
    var_2 = !vec4<bool>(true, any(func_1(var_1)), all(select(var_2.yzx, var_2.www, var_2.zzw)), var_2.x);
    global4 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(_wgslsmith_mult_i32(var_0, ~u_input.e), 0i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1217f, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(1000f + var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-843f, -583f, 1000f, 1032f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 2134f, _wgslsmith_f_op_f32(f32(-1f) * -993f), _wgslsmith_f_op_f32(trunc(var_1.a))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, var_1.a, global1.a) - vec4<f32>(479f, 655f, 789f, 240f))))))), select(reverseBits(~(~5357i)), 2147483647i, true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a, var_1.a, global1.a)))))), min(select(_wgslsmith_sub_u32(4292u, var_3.x), 4294967295u, false), u_input.a.x) << (~(~(0u ^ var_3.x)) % 32u));
}

