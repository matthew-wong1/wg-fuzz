struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(53924i);

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-2122f, 1000f), vec2<f32>(173f, -1000f), vec2<f32>(-202f, -1000f), vec2<f32>(2567f, 584f), vec2<f32>(286f, -606f), vec2<f32>(-348f, 727f), vec2<f32>(-950f, 441f), vec2<f32>(-1000f, 1307f), vec2<f32>(-1387f, 1044f), vec2<f32>(-624f, -1110f), vec2<f32>(1000f, 407f), vec2<f32>(241f, -466f), vec2<f32>(-1000f, 102f), vec2<f32>(1040f, -744f), vec2<f32>(1000f, 1750f), vec2<f32>(482f, -1101f));

var<private> global3: array<i32, 20> = array<i32, 20>(1i, 0i, 14423i, i32(-2147483648), 1i, -40099i, -1i, -10530i, -31905i, 1i, -43388i, -23342i, 24590i, -54427i, 2147483647i, -1397i, 31552i, 51959i, 35042i, -55518i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    return 4294967295u;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~(~4294967295u), 1u, _wgslsmith_sub_u32(4294967295u, max(4294967295u, 19325u)), ~18983u), vec4<u32>(~5344u & select(1u, 1u, false), func_3(), _wgslsmith_dot_vec2_u32(~vec2<u32>(18176u, 38452u), vec2<u32>(1u, 1u)), ~(~12217u)));
    global3 = array<i32, 20>();
    var var_1 = Struct_3(Struct_1(!global1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 - global2[_wgslsmith_index_u32(var_0.x, 16u)])) - _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(1u, 16u)]))), ~var_0.x, -abs(global0.a), select(select(!select(vec4<bool>(global1.x, false, false, true), vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, false, false, true)), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, true, global1.x), false), !(global1.x & global1.x)), !(!select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(true, true, true, true), vec4<bool>(false, global1.x, true, false))), global1.x), true);
    var var_2 = Struct_4(u_input.c, Struct_2(36448i), abs(u_input.b.x));
    let var_3 = 1u;
    return Struct_3(Struct_1(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_1, vec2<f32>(var_1.a.b.x, arg_1.x)))) * vec2<f32>(117f, _wgslsmith_f_op_f32(select(var_1.a.b.x, var_1.a.b.x, global1.x))))), 26019u, -1i, var_1.d, _wgslsmith_mult_u32(var_3, 4294967295u) >= 8918u);
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: Struct_3, arg_3: vec2<i32>) -> vec4<i32> {
    global0 = arg_0.b;
    let var_0 = arg_2.a.b.x;
    return select(-firstLeadingBit(_wgslsmith_clamp_vec4_i32(-u_input.c, vec4<i32>(arg_3.x, 58557i, 59560i, -2147483647i), vec4<i32>(-2147483647i, 24268i, arg_3.x, 31824i))), vec4<i32>(_wgslsmith_div_i32(1i, abs(68968i) & arg_3.x), global0.a, -2147483647i, 30253i >> (select(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.b, arg_0.c.x, arg_2.b), vec3<u32>(111151u, arg_0.c.x, arg_2.b)), !global1.x) % 32u)), true);
}

fn func_1() -> u32 {
    global3 = array<i32, 20>();
    var var_0 = _wgslsmith_add_vec4_i32(func_4(Struct_5(func_2(global3[_wgslsmith_index_u32(9996u, 20u)] ^ 0i, global2[_wgslsmith_index_u32(select(1u, 1u, true), 16u)]), Struct_2(u_input.b.x), select(max(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u)), ~vec2<u32>(90732u, 109000u), vec2<bool>(true, true)), func_2(-2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1571f, -1138f))).d.xx), false, func_2(min(_wgslsmith_mod_i32(-80499i, -39360i), countOneBits(2147483647i)), vec2<f32>(_wgslsmith_div_f32(1000f, -750f), _wgslsmith_f_op_f32(trunc(-1306f)))), abs(-vec2<i32>(-1i, global0.a))), (vec4<i32>(-1i) * -vec4<i32>(19422i, u_input.a.x, u_input.a.x, 0i)) | u_input.c);
    var var_1 = Struct_3(func_2(reverseBits(-17776i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1693f, 516f), vec2<f32>(2754f, 184f), global1.x)) - _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(0u, 16u)] + global2[_wgslsmith_index_u32(24117u, 16u)])) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(4294967295u, 16u)], vec2<f32>(141f, 1123f))))).a, _wgslsmith_mod_u32(43535u, 1u), func_4(Struct_5(func_2(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 0u), 20u)], _wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(1u, 16u)], vec2<f32>(-147f, -786f))), Struct_2(_wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(var_0.x, global0.a))), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(39033u, 0u)), ~vec2<u32>(40741u, 14363u)), select(vec2<bool>(false, false), !global1.zz, !global1.x)), global1.x, Struct_3(func_2(u_input.a.x >> (42829u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-609f, 877f))).a, ~35897u, ~global0.a, vec4<bool>(true, true, global1.x, all(vec4<bool>(false, global1.x, global1.x, global1.x))), !(!global1.x)), func_4(Struct_5(Struct_3(Struct_1(false, global2[_wgslsmith_index_u32(3037u, 16u)]), 1u, 27461i, vec4<bool>(false, global1.x, global1.x, false), global1.x), Struct_2(global3[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<u32>(1u, 1u), global1.xx), any(!vec4<bool>(global1.x, global1.x, global1.x, true)), func_2(u_input.c.x, _wgslsmith_f_op_vec2_f32(step(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(47490u, 16u)]))), vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(-36598i, global0.a))).yz).x, vec4<bool>(!(!func_2(var_0.x, global2[_wgslsmith_index_u32(38521u, 16u)]).d.x), global1.x, all(select(global1.xx, func_2(11764i, global2[_wgslsmith_index_u32(36252u, 16u)]).d.yy, !vec2<bool>(false, global1.x))), true), true);
    global3 = array<i32, 20>();
    let var_2 = -firstLeadingBit(~vec3<i32>(global0.a, ~1i, i32(-1i) * -1i));
    return min(~_wgslsmith_mult_u32(reverseBits(63096u), var_1.b), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 20>();
    let var_0 = 6842i;
    let var_1 = u_input.c.zw;
    let var_2 = ~(~vec4<u32>(0u, _wgslsmith_add_u32(~82368u, _wgslsmith_add_u32(30166u, 26148u)), func_1(), ~83956u));
    let var_3 = vec3<f32>(func_2(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_1.x, 0i, -641i)), ~u_input.c.wxw), _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(var_2.x, 16u)] * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(var_2.x, 16u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(1249f, -2892f) - vec2<f32>(940f, 255f)))))).a.b.x, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1651f + _wgslsmith_f_op_f32(f32(-1f) * -430f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f + 851f)) - -1346f))));
    let var_4 = func_2(var_0, _wgslsmith_f_op_vec2_f32(exp2(global2[_wgslsmith_index_u32(54340u, 16u)]))).a;
    global2 = array<vec2<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<u32>(~func_1(), ~(~(~var_2.x)), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(var_2.x, var_2.x), ~4294967295u)), ~(vec4<u32>(var_2.x, abs(var_2.x), func_3(), var_2.x) << (vec4<u32>(4294967295u, 0u, select(4294967295u, var_2.x, false), reverseBits(var_2.x)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.b.x, 497f)) * _wgslsmith_f_op_f32(f32(-1f) * -203f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-298f, var_3.x, var_4.b.x, 354f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b.x, -904f, var_4.b.x, var_4.b.x) - vec4<f32>(var_3.x, 1463f, -695f, var_4.b.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.x, var_4.b.x, 103f, -134f))), all(vec2<bool>(var_4.a, global1.x)))), !(global1.x & var_4.a)))));
}

