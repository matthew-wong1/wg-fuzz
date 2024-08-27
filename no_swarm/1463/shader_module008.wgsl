struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 27>;

var<private> global2: array<u32, 4>;

var<private> global3: vec4<bool>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(min(vec3<i32>(-371i, -16612i, -30687i) << (vec3<u32>(28058u, global2[_wgslsmith_index_u32(0u, 4u)], 37397u) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-32509i, 17987i, 2147483647i), -vec3<i32>(-2147483647i, -2147483647i, -31404i))), -18418i);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_0)), arg_1.e))), arg_1.e)), -704f);
    let var_2 = ~vec3<i32>(var_0, i32(-1i) * -2147483647i, _wgslsmith_add_i32(var_0 >> (34623u % 32u), ~var_0)) ^ ~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 46870i, var_0) ^ ~vec3<i32>(6183i, -1i, var_0), vec3<i32>(0i, firstLeadingBit(var_0), var_0 >> (u_input.a % 32u)));
    global2 = array<u32, 4>();
    global1 = array<bool, 27>();
    return ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_1.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.c, 4u)], 4u)], 4u)], 4u)], u_input.a)), vec3<u32>(u_input.a, _wgslsmith_sub_u32(~0u, firstLeadingBit(50761u)), _wgslsmith_mult_u32(8019u, arg_1.c))), 4u)];
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~abs(7210u), 4u)], func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1137f))), Struct_2(Struct_1(vec2<bool>(global3.x, global3.x)), _wgslsmith_mod_u32(u_input.a, 0u), abs(1u), Struct_1(global3.yw), _wgslsmith_f_op_f32(1021f * -109f)))) > 35611u;
    global0 = Struct_1(global3.xy);
    let var_1 = 1u;
    global0 = Struct_1(select(vec2<bool>(true, false), select(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], false), global0.a, true), !(!vec2<bool>(global0.a.x, false)), any(global0.a)), false));
    var var_2 = vec4<i32>(min(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-32328i, 2147483647i), vec2<i32>(54626i, 29878i)), -1i) | -(~2573i), -1i), (1i ^ ~_wgslsmith_clamp_i32(0i, 9058i, -1i)) ^ ~(-2147483647i), -57108i, 2147483647i);
    return _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(16529u, 4u)], var_1) << (select(vec3<u32>(4294967295u, 58285u, u_input.a), vec3<u32>(u_input.a, 72337u, var_1), global1[_wgslsmith_index_u32(66892u, 27u)]) % vec3<u32>(32u)), ~(vec3<u32>(u_input.a, u_input.a, var_1) >> (vec3<u32>(0u, 17168u, 4294967295u) % vec3<u32>(32u))), select(!vec3<bool>(global3.x, true, global0.a.x), select(global3.xxx, vec3<bool>(true, global3.x, global3.x), false), select(vec3<bool>(global3.x, true, true), global3.xxw, true))), (_wgslsmith_mod_vec3_u32(select(vec3<u32>(0u, 44181u, 0u), vec3<u32>(var_1, var_1, u_input.a), global3.xzx), vec3<u32>(var_1, 0u, global2[_wgslsmith_index_u32(u_input.a, 4u)])) | ~(vec3<u32>(u_input.a, 55292u, 34551u) ^ vec3<u32>(51894u, 1u, 4294967295u))) >> (~(~vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 4u)], var_1, 30090u)) % vec3<u32>(32u)), vec3<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], var_1, countOneBits(global2[_wgslsmith_index_u32(~var_1, 4u)])));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    global2 = array<u32, 4>();
    let var_0 = _wgslsmith_dot_vec3_u32(min(func_2(), reverseBits(countOneBits(vec3<u32>(0u, 4294967295u, 13650u)))), ~reverseBits(min(vec3<u32>(0u, 1u, u_input.a) << (vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], 35188u, 33589u) % vec3<u32>(32u)), vec3<u32>(u_input.a, 1u, arg_0))));
    global1 = array<bool, 27>();
    var var_1 = select(true, any(!arg_1), false);
    let var_2 = any(select(select(global0.a, vec2<bool>(true, true), arg_2.a.x & !arg_2.a.x), select(select(vec2<bool>(true, false), vec2<bool>(arg_2.a.x, true), true | arg_2.a.x), global0.a, select(global0.a, arg_2.a, global1[_wgslsmith_index_u32(u_input.a, 27u)] | true)), global0.a.x));
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    var var_0 = ~(_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], 41599u, 25319u), vec4<u32>(u_input.a, 1u, 17492u, 0u)), countOneBits(select(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 4u)], 2189u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 4u)]), vec4<u32>(global2[_wgslsmith_index_u32(19382u, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], 44582u, 1u), vec4<bool>(arg_0.a.x, global0.a.x, arg_1, global1[_wgslsmith_index_u32(0u, 27u)])))) | abs(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], 26027u), vec4<u32>(u_input.a, 45655u, global2[_wgslsmith_index_u32(u_input.a, 4u)], 4294967295u))));
    var var_1 = 1i;
    var_0 = ~max(vec4<u32>(var_0.x, 9741u, global2[_wgslsmith_index_u32(var_0.x, 4u)], var_0.x) << (firstLeadingBit(vec4<u32>(var_0.x, 9963u, 4294967295u, 1u)) % vec4<u32>(32u)), ~vec4<u32>(80609u, var_0.x, u_input.a, global2[_wgslsmith_index_u32(var_0.x, 4u)])) & max(vec4<u32>(30634u, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(var_0.x, 4u)] | var_0.x, u_input.a), ~u_input.a, u_input.a), firstLeadingBit(~vec4<u32>(1u, 69688u, u_input.a, 43535u)) | _wgslsmith_div_vec4_u32(~vec4<u32>(23340u, 4294967295u, u_input.a, global2[_wgslsmith_index_u32(u_input.a, 4u)]), reverseBits(vec4<u32>(0u, 73582u, 85900u, u_input.a))));
    let var_2 = !select(vec3<bool>(!(global3.x || true), global3.x, false), vec3<bool>(true, global1[_wgslsmith_index_u32(29120u, 27u)], true), abs(global2[_wgslsmith_index_u32(0u, 4u)]) == 0u);
    let var_3 = Struct_2(arg_0, global2[_wgslsmith_index_u32(u_input.a, 4u)], 0u, func_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.a, 59455u), vec3<u32>(var_0.x, global2[_wgslsmith_index_u32(20818u, 4u)], 23596u)), 34805u), vec4<bool>(true, all(vec2<bool>(true, global3.x)), select(global0.a.x || arg_1, true, any(vec2<bool>(true, true))), all(!vec4<bool>(global3.x, false, false, true))), Struct_1(arg_0.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(834f)))))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(17645u, !vec4<bool>(true, global0.a.x, select(true, true, true), true), Struct_1(!global0.a)), all(select(select(vec3<bool>(true, global0.a.x, global3.x), select(global3.wyy, global3.yyw, global3.zwz), !global3.yzx), !vec3<bool>(global3.x, false, true), vec3<bool>(global3.x, !global0.a.x, true))));
    var var_1 = 0u >= global2[_wgslsmith_index_u32(countOneBits(var_0.b), 4u)];
    var var_2 = _wgslsmith_add_vec3_i32(min(vec3<i32>(1i, 1i, 1i), ~(-vec3<i32>(1i, 1i, 1i))), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(~(-50354i), firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(22562i, -45322i)), -abs(vec3<i32>(37286i, -1i, 1i))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, 0i, -1i), -vec3<i32>(1i, -1i, 2147483647i)), vec3<i32>(-1i) * -vec3<i32>(-13332i, 19913i, 1i))));
    var_1 = false;
    var_0 = Struct_2(Struct_1(var_0.a.a), (reverseBits(46888u) | ~firstTrailingBit(var_0.c)) & ~20865u, u_input.a, func_4(var_0.a, func_4(Struct_1(func_4(Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(var_0.b, 27u)], false)), true).a.a), true & (var_0.e < var_0.e)).a.a.x).a, -2712f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, -1570f, var_0.e)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e, 342f, var_0.e) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-601f, 417f, var_0.e))))));
}

