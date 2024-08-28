struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec2<bool>(true, false), -524f, vec3<i32>(1i, 2147483647i, -19237i))), Struct_2(Struct_1(vec2<bool>(true, false), 781f, vec3<i32>(1i, 0i, 47162i))), Struct_2(Struct_1(vec2<bool>(false, true), -1212f, vec3<i32>(0i, 52010i, 0i))), Struct_2(Struct_1(vec2<bool>(true, false), -1123f, vec3<i32>(2147483647i, 72478i, -6080i))), Struct_2(Struct_1(vec2<bool>(true, false), 1000f, vec3<i32>(15125i, -42491i, 2147483647i))), Struct_2(Struct_1(vec2<bool>(false, false), -663f, vec3<i32>(1i, -63717i, -1i))), Struct_2(Struct_1(vec2<bool>(true, false), -1431f, vec3<i32>(22071i, -94819i, 21536i))), Struct_2(Struct_1(vec2<bool>(false, false), -1000f, vec3<i32>(-1i, -8329i, -22826i))), Struct_2(Struct_1(vec2<bool>(true, true), 934f, vec3<i32>(-29834i, 48820i, -23386i))), Struct_2(Struct_1(vec2<bool>(false, false), -317f, vec3<i32>(0i, 2147483647i, 49086i))), Struct_2(Struct_1(vec2<bool>(false, false), -1000f, vec3<i32>(-1162i, -1i, 42450i))), Struct_2(Struct_1(vec2<bool>(false, true), 302f, vec3<i32>(0i, 23302i, i32(-2147483648)))), Struct_2(Struct_1(vec2<bool>(false, true), 422f, vec3<i32>(23985i, 43063i, -1i))), Struct_2(Struct_1(vec2<bool>(true, false), 658f, vec3<i32>(-3066i, 0i, 14234i))), Struct_2(Struct_1(vec2<bool>(true, false), -1483f, vec3<i32>(33573i, 2147483647i, -1i))), Struct_2(Struct_1(vec2<bool>(true, false), -643f, vec3<i32>(11449i, -1i, -1i))), Struct_2(Struct_1(vec2<bool>(false, true), 1036f, vec3<i32>(-9740i, 2045i, 1i))), Struct_2(Struct_1(vec2<bool>(true, true), 1617f, vec3<i32>(25380i, 21924i, 11111i))), Struct_2(Struct_1(vec2<bool>(true, true), -888f, vec3<i32>(-17485i, -28829i, -4618i))), Struct_2(Struct_1(vec2<bool>(true, false), 605f, vec3<i32>(-54057i, 25413i, -26735i))));

var<private> global1: array<f32, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], -1610f, 2002f, 524f) - vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1243f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, global1[_wgslsmith_index_u32(0u, 12u)], -673f, -687f)))))));
    let var_1 = Struct_3(-95303i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~countOneBits(u_input.c.x), 12u)]))), Struct_1(select(vec2<bool>(any(vec4<bool>(false, true, false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), 1126f, vec3<i32>(-1i) * -(~vec3<i32>(u_input.a, -2147483647i, -17708i))), select(vec3<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true)), global0[_wgslsmith_index_u32(53639u, 20u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, -1195f, global1[_wgslsmith_index_u32(0u, 12u)], arg_0.x)))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(1438f + var_0.x), arg_0.x, var_1.c.b))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_1.e.a.b, 2467f, var_1.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1001f, 208f))))));
    let var_3 = Struct_2(var_1.c);
    let var_4 = -135f;
    return -77233i;
}

fn func_2() -> vec4<i32> {
    global1 = array<f32, 12>();
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -1i, ~u_input.b, u_input.a, select(i32(-1i) * -29351i, u_input.a, select(true, false, true))) ^ vec4<i32>(u_input.b, _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(u_input.a, -74464i)), 22673i, u_input.a), vec4<i32>(-45109i, -2147483647i, -(~u_input.b), _wgslsmith_mult_i32(2147483647i, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)]))))));
    let var_1 = Struct_3(1i, -936f, Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), vec2<bool>(true, true), !all(vec4<bool>(false, true, true, false))), global1[_wgslsmith_index_u32(u_input.c.x, 12u)], vec3<i32>(select(-2147483647i, var_0.x, false), _wgslsmith_dot_vec2_i32(var_0.wx, -var_0.zx), var_0.x)), select(select(vec3<bool>(true, true, false), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), true), vec3<bool>(true, true, var_0.x > u_input.b)), !vec3<bool>(true, any(vec3<bool>(false, true, false)), true), 1030f != _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), 12u)] + -802f)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~(u_input.c.x | 0u), u_input.c.x, _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 39767u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 27658u, u_input.c.x)))), ~(u_input.c.x << (12177u % 32u)), 1u), 20u)]);
    let var_2 = Struct_1(select(var_1.c.a, vec2<bool>(all(vec3<bool>(var_1.d.x, true, var_1.d.x)), all(var_1.d)), vec2<bool>(u_input.c.x < firstTrailingBit(16735u), true)), global1[_wgslsmith_index_u32(1u, 12u)], ~var_0.zyy << ((vec3<u32>(select(21767u, u_input.c.x, var_1.e.a.a.x), ~u_input.c.x, _wgslsmith_add_u32(3292u, u_input.c.x)) >> (reverseBits(vec3<u32>(u_input.c.x, 0u, u_input.c.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_3 = !vec2<bool>(var_2.a.x, true);
    return abs(select(~_wgslsmith_clamp_vec4_i32(var_0, vec4<i32>(u_input.b, -4808i, u_input.b, -7011i), ~var_0), var_0, !(!vec4<bool>(var_1.e.a.a.x, false, var_3.x, false))));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-804f, 240f))) + vec2<f32>(arg_2.e.a.b, -528f))) * vec2<f32>(arg_2.e.a.b, global1[_wgslsmith_index_u32(~(~u_input.c.x), 12u)]))));
    var_0 = ~arg_2.e.a.c.x;
    let var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(min(-45805i, 0i), arg_1.x, ~arg_0), -arg_2.c.c) ^ ~(~select(vec3<i32>(arg_2.e.a.c.x, -2147483647i, u_input.a), vec3<i32>(25547i, arg_0, u_input.b), vec3<bool>(arg_2.c.a.x, arg_2.e.a.a.x, arg_2.c.a.x))), reverseBits(abs(reverseBits(vec3<i32>(0i, arg_1.x, -1i)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 21986u), vec3<u32>(22327u, 4294967295u, u_input.c.x)) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_i32(arg_1.xzz, vec3<i32>(u_input.a, max(arg_0, arg_2.a), u_input.a) & vec3<i32>(-14961i, _wgslsmith_sub_i32(u_input.b, 2147483647i), func_2().x), arg_2.c.c ^ min(arg_2.c.c, vec3<i32>(u_input.a, -58926i, 17419i))));
    global1 = array<f32, 12>();
    return !(!(!(!vec4<bool>(true, arg_2.c.a.x, true, true))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = !select(arg_1.xy, !vec2<bool>(arg_1.x & arg_1.x, true), any(arg_1));
    let var_1 = func_4(arg_0.x, abs(~func_2()) & _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.x, arg_0.x, -2147483647i, arg_0.x)), vec4<i32>(2147483647i, ~arg_0.x, arg_0.x, func_2().x)), Struct_3(-arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.c.x, 12u)])) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(102636u, 12u)], -236f)))), Struct_1(!vec2<bool>(false, arg_1.x), _wgslsmith_f_op_f32(sign(1289f)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(u_input.b, -2147483647i, arg_0.x)), vec3<i32>(arg_0.x, u_input.b, arg_0.x) << (vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x) % vec3<u32>(32u)))), vec3<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, var_0.x, arg_1.x), arg_1.x)), false), Struct_2(Struct_1(vec2<bool>(var_0.x, true), global1[_wgslsmith_index_u32(max(u_input.c.x, u_input.c.x), 12u)], countOneBits(vec3<i32>(-23032i, u_input.b, -1i))))));
    let var_2 = vec3<u32>(~_wgslsmith_mod_u32(1u, u_input.c.x), ~_wgslsmith_sub_u32(4294967295u, 36665u), abs(u_input.c.x));
    global0 = array<Struct_2, 20>();
    let var_3 = var_1.x;
    return Struct_2(Struct_1(!func_4(~arg_0.x, vec4<i32>(arg_0.x, u_input.a, 1i, 13038i), Struct_3(u_input.a, -2159f, Struct_1(vec2<bool>(var_0.x, var_0.x), global1[_wgslsmith_index_u32(19283u, 12u)], vec3<i32>(-1i, u_input.a, arg_0.x)), vec3<bool>(arg_1.x, true, false), Struct_2(Struct_1(var_1.zz, global1[_wgslsmith_index_u32(4294967295u, 12u)], vec3<i32>(0i, u_input.b, u_input.a))))).xy, _wgslsmith_div_f32(-115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 12u)]))), abs(_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.b, arg_0.x, -3492i)), min(vec3<i32>(arg_0.x, u_input.b, u_input.b), vec3<i32>(-2147483647i, arg_0.x, -1i))))));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(arg_1.a.c.x, 1i & ((u_input.b | u_input.b) | 12963i)), -arg_1.a.c.x, -55267i, ~reverseBits(2147483647i));
    var var_1 = func_1(_wgslsmith_mod_vec2_i32(~arg_1.a.c.yx, _wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(var_0.xw, arg_1.a.c.yx), -arg_1.a.c.xy)), vec4<bool>(true, any(select(!vec4<bool>(false, false, true, arg_1.a.a.x), select(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, true, arg_1.a.a.x), vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, false, arg_1.a.a.x), arg_1.a.a.x), !vec4<bool>(arg_1.a.a.x, false, arg_1.a.a.x, arg_1.a.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_3)), _wgslsmith_f_op_f32(step(-1946f, -635f))) <= _wgslsmith_f_op_f32(-150f * global1[_wgslsmith_index_u32(1u, 12u)]), any(arg_1.a.a))).a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], var_1.b, arg_1.a.b), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], -1015f, -1000f, -1269f), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b, -997f, -1229f, 841f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(269f, var_1.b, -1518f, global1[_wgslsmith_index_u32(arg_0, 12u)])), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(592f, 1042f, -656f, -460f))))))));
    let var_3 = ((true && select(any(vec4<bool>(false, var_1.a.x, var_1.a.x, arg_1.a.a.x)), 89093u != arg_0, any(vec3<bool>(arg_1.a.a.x, arg_1.a.a.x, false)))) | all(vec4<bool>(true && arg_1.a.a.x, var_1.a.x, arg_1.a.a.x, true))) == false;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, _wgslsmith_f_op_f32(sign(func_1(var_0.yy, !vec4<bool>(var_1.a.x, var_3, var_3, false)).a.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 12u)] * global1[_wgslsmith_index_u32(19007u, 12u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 12u)]))), var_1.b, var_1.a.x))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 12u)] * arg_3) * 591f), _wgslsmith_f_op_f32(exp2(arg_3)), 225f, _wgslsmith_f_op_f32(1222f - -1244f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 389f, -1714f, var_2.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(693f, 1247f, 1015f, var_2.x))), vec4<f32>(1421f, var_2.x, var_2.x, var_2.x))))));
    return -583f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_0 = Struct_3(~(-reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -10069i, -12371i), vec3<i32>(u_input.b, 42531i, 0i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(~4294967295u, func_1(vec2<i32>(-33413i, u_input.a), vec4<bool>(true, true, true, true)), u_input.a, global1[_wgslsmith_index_u32(1u, 12u)])) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(125f)), -384f)))), Struct_1(select(vec2<bool>(any(vec3<bool>(false, false, true)), func_1(vec2<i32>(-32252i, -17718i), vec4<bool>(false, false, true, true)).a.a.x), vec2<bool>(any(vec4<bool>(true, true, false, true)), func_1(vec2<i32>(2147483647i, 2147483647i), vec4<bool>(false, false, false, false)).a.a.x), true & (12341i != u_input.a)), 446f, ~max(vec3<i32>(u_input.b, 35914i, 1i) >> (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), ~vec3<i32>(u_input.a, u_input.a, u_input.b))), func_4(-(~u_input.a) >> (u_input.c.x % 32u), vec4<i32>(u_input.a, u_input.a >> (_wgslsmith_mod_u32(14932u, u_input.c.x) % 32u), u_input.b, 55080i), Struct_3(u_input.a, 197f, func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 15856i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a)), vec4<bool>(true, true, false, true)).a, select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), func_4(2147483647i, vec4<i32>(6348i, u_input.b, 27814i, u_input.a), Struct_3(1i, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], Struct_1(vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.c.x, 12u)], vec3<i32>(52016i, u_input.a, 0i)), vec3<bool>(false, true, false), Struct_2(Struct_1(vec2<bool>(false, true), global1[_wgslsmith_index_u32(4294967295u, 12u)], vec3<i32>(u_input.b, u_input.a, -51187i))))).xxy, select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), func_1(-vec2<i32>(1i, u_input.a), func_4(u_input.a, vec4<i32>(u_input.a, -20228i, u_input.a, 1244i), Struct_3(28658i, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], Struct_1(vec2<bool>(false, false), global1[_wgslsmith_index_u32(4294967295u, 12u)], vec3<i32>(u_input.b, u_input.b, 55492i)), vec3<bool>(true, true, false), Struct_2(Struct_1(vec2<bool>(true, true), global1[_wgslsmith_index_u32(12043u, 12u)], vec3<i32>(u_input.a, -33512i, -2147483647i)))))))).yxx, func_1(vec2<i32>((u_input.a ^ u_input.a) ^ u_input.b, u_input.b & _wgslsmith_add_i32(u_input.a, u_input.a)), vec4<bool>(func_4(0i, vec4<i32>(856i, u_input.b, -2147483647i, u_input.a) | vec4<i32>(-2147483647i, u_input.b, 0i, -1i), Struct_3(2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], Struct_1(vec2<bool>(false, false), global1[_wgslsmith_index_u32(u_input.c.x, 12u)], vec3<i32>(u_input.a, -80019i, -2147483647i)), vec3<bool>(true, false, true), Struct_2(Struct_1(vec2<bool>(false, true), -1313f, vec3<i32>(u_input.b, u_input.b, 0i))))).x, true, any(vec4<bool>(true, true, true, true)), true)));
    global1 = array<f32, 12>();
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1658f, 330f, var_0.e.a.b) - vec3<f32>(var_0.e.a.b, 1253f, global1[_wgslsmith_index_u32(59954u, 12u)])), _wgslsmith_div_vec3_f32(vec3<f32>(191f, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], -343f), vec3<f32>(var_0.b, 760f, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-894f, var_0.b, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.e.a.b, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]) * vec3<f32>(192f, 176f, -511f))), var_0.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.b), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(54502u, 12u)] * 607f), -1896f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], -1730f, var_0.e.a.b)))))));
    var var_2 = var_0;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(u_input.c.x, Struct_2(Struct_1(vec2<bool>(true, true), -2064f, var_2.e.a.c)), var_2.a, _wgslsmith_f_op_f32(var_0.b + -279f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(46637u, 12u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2323f + -596f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 12u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-758f)))) - var_1.x));
    var var_4 = Struct_3(33270i, _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.c.x, 12u)])))), var_0.c, vec3<bool>(var_2.c.a.x, var_2.e.a.a.x, false), func_1(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-25538i, var_0.a), vec2<i32>(u_input.b, var_2.c.c.x), var_2.c.a.x), var_2.e.a.c.yx, vec2<i32>(var_0.e.a.c.x, 22356i) ^ var_0.e.a.c.yx) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-44389i, u_input.b), max(vec2<i32>(13703i, var_2.c.c.x), vec2<i32>(var_2.c.c.x, 1i))), select(select(select(vec4<bool>(false, var_0.d.x, false, true), vec4<bool>(var_2.c.a.x, true, var_2.c.a.x, true), true), vec4<bool>(var_0.d.x, var_2.c.a.x, var_2.d.x, var_0.d.x), !vec4<bool>(true, var_0.e.a.a.x, false, var_2.c.a.x)), vec4<bool>(var_2.e.a.a.x, true != var_2.d.x, !var_2.d.x, false), select(vec4<bool>(var_2.c.a.x, var_0.e.a.a.x, true, false), vec4<bool>(var_2.c.a.x, false, var_2.d.x, var_0.c.a.x), func_1(var_0.e.a.c.xx, vec4<bool>(var_2.e.a.a.x, true, var_0.e.a.a.x, var_2.e.a.a.x)).a.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1166f), _wgslsmith_div_f32(var_2.e.a.b, var_0.c.b), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f + var_0.c.b) + _wgslsmith_f_op_f32(sign(1293f))))), firstTrailingBit(vec4<i32>(func_2().x, -_wgslsmith_sub_i32(var_0.c.c.x, 0i), ~u_input.a, abs(17325i | var_2.a))));
}

