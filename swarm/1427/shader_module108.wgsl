struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: f32,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: vec4<i32> = vec4<i32>(-8841i, 14099i, 1561i, 32078i);

var<private> global2: array<vec2<u32>, 31>;

var<private> global3: array<Struct_2, 5>;

var<private> global4: array<bool, 21> = array<bool, 21>(true, false, false, false, true, true, false, false, true, true, true, false, true, false, true, false, true, false, true, false, true);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> i32 {
    global0 = array<bool, 5>();
    global2 = array<vec2<u32>, 31>();
    var var_0 = global3[_wgslsmith_index_u32(0u, 5u)];
    var_0 = Struct_2(1i);
    global2 = array<vec2<u32>, 31>();
    return select(i32(-1i) * -(~(-6208i | u_input.a)), global1.x, true);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_2(-(~(-func_2(Struct_3(-2668f, true, arg_0.a, Struct_2(arg_0.e.x), vec2<i32>(global1.x, 0i)), arg_0.b))));
    global1 = vec4<i32>(-2147483647i, -u_input.a, ~_wgslsmith_sub_i32(~max(global1.x, -2147483647i), _wgslsmith_div_i32(-13852i | arg_1.e.x, firstTrailingBit(-1i))), countOneBits(global1.x >> (1u % 32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-273f + -824f) - _wgslsmith_f_op_f32(1227f - 480f)) - -1207f)) - -1096f);
    global4 = array<bool, 21>();
    global2 = array<vec2<u32>, 31>();
    return var_1;
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    let var_0 = Struct_1(!(!vec4<bool>(arg_0.b, all(vec2<bool>(true, true)), arg_0.b, !arg_0.b)), reverseBits(vec3<u32>(~(~4294967295u), 0u, min(~4294967295u, 1u))), any(vec2<bool>(any(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 5u)], global4[_wgslsmith_index_u32(1u, 21u)], global4[_wgslsmith_index_u32(4294967295u, 21u)])), true)), min(4294967295u, _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(~0u, select(0u, 6750u, true)), 0u)));
    let var_1 = Struct_1(vec4<bool>(any(select(var_0.a.xwz, select(var_0.a.xzy, vec3<bool>(var_0.a.x, arg_0.b, global4[_wgslsmith_index_u32(19430u, 21u)]), global0[_wgslsmith_index_u32(var_0.d, 5u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.b, var_0.b), 5u)])), any(var_0.a), var_0.a.x, any(!(!var_0.a.xw))), var_0.b, !var_0.c, 4294967295u);
    global4 = array<bool, 21>();
    let var_2 = Struct_2(u_input.a);
    global2 = array<vec2<u32>, 31>();
    return abs(reverseBits(firstTrailingBit(firstLeadingBit(arg_0.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~4294967295u, 5u)];
    global2 = array<vec2<u32>, 31>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(2116f * _wgslsmith_f_op_f32(trunc(832f))), !global0[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-295f, 520f) + _wgslsmith_f_op_f32(func_1(Struct_3(-1000f, global4[_wgslsmith_index_u32(0u, 21u)], -1380f, global3[_wgslsmith_index_u32(42198u, 5u)], vec2<i32>(u_input.a, var_0.a)), Struct_3(-1726f, global0[_wgslsmith_index_u32(1u, 5u)], -1000f, global3[_wgslsmith_index_u32(56491u, 5u)], vec2<i32>(var_0.a, 21311i))))) - -251f)), global3[_wgslsmith_index_u32(77836u & _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(0u, 0u), reverseBits(28065u))), 5u)], func_3(Struct_3(-1405f, global4[_wgslsmith_index_u32(~4294967295u, 21u)], 503f, global3[_wgslsmith_index_u32(1u, 5u)], global1.zx)) ^ global1.yw);
    var var_2 = var_1.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2012f)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(min(var_1.a, var_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, -1863f, -1564f) * vec3<f32>(var_1.a, var_1.c, var_1.a)))))));
    var var_4 = ~abs(27788u);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x)));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(345f, -1996f))))));
    global3 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(-1178f, vec4<f32>(var_1.c, var_3.x, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1355f, var_3.x, false))) * var_1.a)), min(var_1.e >> ((_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 75613u), global2[_wgslsmith_index_u32(0u, 31u)]) >> (global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 31u)] % vec2<u32>(32u))) % vec2<u32>(32u)), -global1.xy), min(abs(vec4<u32>(31931u, ~379u, _wgslsmith_add_u32(21313u, 1u), 1u)), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_sub_vec3_i32(select(countOneBits(vec3<i32>(-5993i, 0i, -53956i)), vec3<i32>(global1.x, _wgslsmith_dot_vec3_i32(global1.wxw, global1.www), global1.x), false), (-vec3<i32>(var_1.d.a, global1.x, var_0.a) ^ -vec3<i32>(var_0.a, 17124i, -2147483647i)) ^ abs(abs(vec3<i32>(global1.x, 12411i, global1.x)))));
}

