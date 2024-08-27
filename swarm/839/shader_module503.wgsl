struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-29573i, i32(-2147483648)), vec4<bool>(false, false, true, true));

var<private> global1: array<f32, 29> = array<f32, 29>(823f, 1000f, 346f, 515f, -1307f, -616f, 1233f, -427f, -1000f, 714f, 414f, 836f, -1000f, -169f, -1441f, -1790f, 268f, -1089f, 340f, 1267f, 1511f, 2372f, -1111f, 627f, -904f, 1000f, 280f, -265f, -1000f);

var<private> global2: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(4294967295u, 0u), vec2<u32>(16574u, 151746u), vec2<u32>(37294u, 2896u), vec2<u32>(303u, 65534u), vec2<u32>(0u, 4294967295u), vec2<u32>(4381u, 81825u), vec2<u32>(1u, 46670u), vec2<u32>(0u, 1u), vec2<u32>(39538u, 0u), vec2<u32>(1u, 47365u), vec2<u32>(4294967295u, 39566u), vec2<u32>(1u, 0u), vec2<u32>(0u, 1u), vec2<u32>(65031u, 73460u));

var<private> global3: array<vec2<bool>, 20>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> vec2<i32> {
    let var_0 = Struct_1(global0.a, select(!(!vec4<bool>(global0.b.x, true, arg_2, arg_1.b.x)), global0.b, global0.b));
    let var_1 = arg_1;
    return _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>((global0.a.x ^ global0.a.x) >> (1u % 32u), _wgslsmith_div_i32(var_0.a.x << (22089u % 32u), arg_1.a.x & global0.a.x)), abs(abs(vec2<i32>(46920i, -12901i)))), global0.a);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = Struct_1(vec2<i32>(-(~(-74488i)), arg_0.a.x), !select(arg_2.b, !vec4<bool>(true, arg_0.b.x, arg_3.b.x, arg_0.b.x), vec4<bool>(true, select(arg_0.b.x, false, false), true, true)));
    global1 = array<f32, 29>();
    let var_0 = vec2<bool>(!(!arg_3.b.x), false);
    var var_1 = _wgslsmith_sub_i32(-18968i, firstTrailingBit(arg_0.a.x));
    global0 = Struct_1(vec2<i32>(min(87196i, global0.a.x), _wgslsmith_add_i32(arg_3.a.x, _wgslsmith_div_i32(arg_3.a.x, -55621i)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 31406u, 0u), vec3<u32>(4294967295u, 68345u, 4209u)) % 32u)), vec4<bool>(true, false, (_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(9202u, 29u)], -976f)) < 1861f) && global0.b.x, all(vec3<bool>(!global0.b.x, arg_0.b.x, true))));
    return _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(1553u, 29u)]));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global1 = array<f32, 29>();
    let var_0 = arg_0.x;
    global1 = array<f32, 29>();
    global2 = array<vec2<u32>, 14>();
    var var_1 = _wgslsmith_f_op_f32(-129f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_0, 29u)]));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_1(func_3(vec3<i32>(2147483647i, 43890i, 17693i) >> (arg_0.yww % vec3<u32>(32u)), Struct_1(u_input.b, vec4<bool>(global0.b.x, true, false, global0.b.x)), false & global0.b.x, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x, 15203u, var_0), 29u)]), global0.b), u_input.a.x, Struct_1(vec2<i32>(-1i, u_input.a.x) | abs(vec2<i32>(global0.a.x, u_input.b.x)), !global0.b), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), min(vec2<i32>(11522i, global0.a.x), u_input.a)), vec4<bool>(false, false && global0.b.x, true, global0.b.x)))), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(28244u, var_0)), 29u)], global1[_wgslsmith_index_u32(0u, 29u)])));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<u32>) -> vec2<i32> {
    let var_0 = arg_1;
    global3 = array<vec2<bool>, 20>();
    let var_1 = select(select(select(var_0.b, vec4<bool>(false, false, false, false), (-14015i != global0.a.x) && false), vec4<bool>(any(select(vec3<bool>(arg_1.b.x, true, arg_1.b.x), vec3<bool>(global0.b.x, false, arg_1.b.x), false)), true, global0.b.x, all(!vec4<bool>(var_0.b.x, true, arg_1.b.x, false))), select(global0.b, vec4<bool>(global1[_wgslsmith_index_u32(arg_3.x, 29u)] <= 337f, true, true, false), !vec4<bool>(false, arg_1.b.x, false, var_0.b.x))), !vec4<bool>(var_0.b.x, global0.b.x, var_0.b.x, !global0.b.x), all(vec3<bool>(global0.b.x, any(select(var_0.b.zz, global0.b.yx, false)), false)));
    var var_2 = !(!global0.b.yww);
    global1 = array<f32, 29>();
    return vec2<i32>(_wgslsmith_mult_i32(~(-1i), 50045i) >> ((1u & ~max(37554u, arg_3.x)) % 32u), 12519i);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(min(arg_1, func_5(_wgslsmith_f_op_f32(func_2(vec4<u32>(1u, 1u, 16770u, 38188u))), Struct_1(vec2<i32>(2147483647i, 14772i), !global0.b), global1[_wgslsmith_index_u32(88273u, 29u)], vec4<u32>(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(23884u, 14u)], vec2<u32>(1u, 1u)), 1u, 18257u, countOneBits(76237u)))), select(vec4<bool>(global0.b.x, any(select(global0.b.wwy, vec3<bool>(global0.b.x, global0.b.x, false), vec3<bool>(false, global0.b.x, global0.b.x))), !global0.b.x, any(select(vec2<bool>(global0.b.x, global0.b.x), vec2<bool>(false, global0.b.x), global0.b.x))), select(select(global0.b, !global0.b, false), !vec4<bool>(true, true, global0.b.x, false), any(select(vec4<bool>(true, false, false, false), global0.b, global0.b))), select(select(global0.b, vec4<bool>(global0.b.x, false, true, true), global0.b), global0.b, !vec4<bool>(true, global0.b.x, true, global0.b.x))));
    let var_1 = ~1u < select(_wgslsmith_clamp_u32(countOneBits(abs(4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 45634u, 4294967295u, 2188u)), _wgslsmith_clamp_u32(1u, abs(10253u), abs(85143u))), ~select(1u, 1u, false), !(firstTrailingBit(52688u) > 1u));
    global2 = array<vec2<u32>, 14>();
    let var_2 = Struct_1(_wgslsmith_mult_vec2_i32(abs(~vec2<i32>(var_0.a.x, arg_1.x)), _wgslsmith_clamp_vec2_i32(var_0.a, global0.a, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, global0.a.x), vec2<i32>(1i, -55017i)))), vec4<bool>(true, any(vec4<bool>(true, true, true, global0.b.x && true)), ~(-global0.a.x) != var_0.a.x, !(_wgslsmith_f_op_f32(arg_0 + arg_0) < arg_0)));
    var var_3 = vec3<u32>(select(0u, 4294967295u, var_0.b.x), countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(59361u, 4031u, 4294967295u), vec3<u32>(0u, 1u, 1u))), ~55770u);
    return Struct_1(~abs(vec2<i32>(firstLeadingBit(var_2.a.x), ~var_2.a.x)), vec4<bool>(var_2.b.x, var_0.b.x, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, 1u), 29u)], global0.a);
    global3 = array<vec2<bool>, 20>();
    var_0 = Struct_1(~u_input.a, select(select(var_0.b, global0.b, select(false, true, !var_0.b.x)), global0.b, !vec4<bool>(false, var_0.b.x == var_0.b.x, !global0.b.x, any(var_0.b.yxz))));
    var var_1 = func_1(global1[_wgslsmith_index_u32(~4294967295u, 29u)], global0.a);
    let var_2 = vec4<bool>(var_1.b.x, true, !func_1(global1[_wgslsmith_index_u32(~(~1u), 29u)], max(vec2<i32>(global0.a.x, var_0.a.x), u_input.a & vec2<i32>(var_1.a.x, 1i))).b.x, all(var_0.b));
    var var_3 = func_1(_wgslsmith_f_op_f32(step(-944f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, 1u), 29u)])), vec2<i32>(_wgslsmith_mod_i32(func_3(select(vec3<i32>(-14926i, var_0.a.x, global0.a.x), vec3<i32>(0i, -35222i, 49088i), global0.b.yyw), func_1(global1[_wgslsmith_index_u32(44704u, 29u)], vec2<i32>(global0.a.x, var_0.a.x)), true, global1[_wgslsmith_index_u32(~4294967295u, 29u)]).x, -countOneBits(var_0.a.x)), var_1.a.x));
    var_0 = func_1(_wgslsmith_div_f32(348f, -633f), ~var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(39755u, 29u)], -611f) - vec2<f32>(global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(10754u, 29u)])))) + vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6183u, 1u, 4294967295u, 37727u), ~vec4<u32>(1u, 1u, 1u, 62755u)), 29u)], -301f)));
}

