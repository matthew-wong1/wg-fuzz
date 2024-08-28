struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 0i, -1096i);

var<private> global1: array<vec3<bool>, 17>;

var<private> global2: array<vec2<u32>, 30>;

var<private> global3: array<i32, 16>;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = Struct_1(!(!(!(!vec2<bool>(false, global4.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(699f, -670f, -1000f, -436f) + vec4<f32>(-195f, -1831f, -1483f, 1609f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-555f + 222f), -2467f, 403f, _wgslsmith_f_op_f32(-334f - -1000f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1680f, 980f, -427f, -1000f))))), ~(~72350u));
    let var_1 = Struct_1(var_0.a, vec4<f32>(-274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + 1872f) + -1754f)), var_0.b.x, 1475f), var_0.c);
    global4 = vec2<bool>(var_0.a.x, !(!((var_0.b.x < -102f) | true)));
    var_0 = Struct_1(select(var_1.a, !vec2<bool>(!var_0.a.x, all(vec4<bool>(false, global4.x, false, var_1.a.x))), var_0.a.x), _wgslsmith_f_op_vec4_f32(step(var_1.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -182f, var_0.b.x, var_0.b.x)))))), u_input.a.x);
    let var_2 = Struct_2(all(vec4<bool>(select(var_1.a.x | false, var_0.a.x, var_1.a.x), all(!vec4<bool>(var_1.a.x, false, var_0.a.x, true)), var_0.a.x, false & (-1094f == var_0.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(449f, var_1.b.x) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(step(var_1.b.x, -883f))), -1363f)), var_0.b.ww);
    return _wgslsmith_f_op_f32(-var_2.c.x);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: vec4<bool>) -> Struct_2 {
    global4 = vec2<bool>(!(!arg_3.x), arg_3.x);
    let var_0 = Struct_1(select(select(!(!vec2<bool>(true, global4.x)), !arg_3.xw, vec2<bool>(true || global4.x, true)), vec2<bool>(true, false), any(!(!arg_3))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_3(-global3[_wgslsmith_index_u32(u_input.d, 16u)], i32(-1i) * -1i)), -870f, _wgslsmith_f_op_f32(-arg_2)), u_input.a.x);
    global2 = array<vec2<u32>, 30>();
    var var_1 = Struct_1(arg_3.yz, vec4<f32>(-1239f, -403f, _wgslsmith_f_op_f32(f32(-1f) * -192f), _wgslsmith_f_op_f32(-arg_0)), u_input.a.x);
    global1 = array<vec3<bool>, 17>();
    return Struct_2(!(_wgslsmith_f_op_f32(-1088f - -524f) < _wgslsmith_f_op_f32(-arg_0)) | !var_1.a.x, var_0.b.yz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.b.xy))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-458f, arg_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1189f, 407f) - var_0.b.xy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(896f, var_1.b.x) * var_0.b.wx), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, -2091f) - var_0.b.xy)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> vec3<i32> {
    global3 = array<i32, 16>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1044f));
    let var_1 = 0u;
    var_0 = _wgslsmith_div_f32(548f, 522f);
    var var_2 = func_2(arg_0.b.x, firstLeadingBit(~(global3[_wgslsmith_index_u32(25451u, 16u)] ^ global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1267f)), 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-812f + -553f))))), func_2(arg_0.c.x, _wgslsmith_dot_vec2_i32(global0.yz, ~vec2<i32>(30784i, global0.x)), -112f, !vec4<bool>(arg_2.a, false, arg_0.a, false)).b.x), select(select(select(select(vec4<bool>(global4.x, arg_1.a, false, arg_1.a), vec4<bool>(arg_1.a, false, global4.x, false), global4.x), select(vec4<bool>(global4.x, true, true, false), vec4<bool>(arg_1.a, false, arg_1.a, arg_0.a), arg_2.a), true), !select(vec4<bool>(global4.x, arg_2.a, false, false), vec4<bool>(arg_0.a, true, arg_1.a, arg_1.a), arg_1.a), !(!vec4<bool>(arg_0.a, false, true, true))), select(select(vec4<bool>(false, arg_0.a, arg_1.a, true), !vec4<bool>(false, arg_1.a, false, global4.x), any(vec2<bool>(true, global4.x))), select(vec4<bool>(arg_1.a, true, false, true), !vec4<bool>(false, arg_2.a, true, false), true), true), any(vec3<bool>(arg_0.a, true, false)) & arg_2.a));
    return _wgslsmith_add_vec3_i32(abs(countOneBits(~vec3<i32>(0i, 1i, global3[_wgslsmith_index_u32(u_input.a.x, 16u)])) & vec3<i32>(i32(-1i) * -59923i, min(global3[_wgslsmith_index_u32(17733u, 16u)], global0.x), firstLeadingBit(u_input.c))), global0.yzz);
}

fn func_1() -> vec4<i32> {
    let var_0 = true || global4.x;
    return vec4<i32>(global3[_wgslsmith_index_u32(0u, 16u)], ~_wgslsmith_dot_vec3_i32(func_4(Struct_2(false, vec2<f32>(-1783f, 404f), vec2<f32>(-1240f, 1590f)), func_2(431f, -2147483647i, -1000f, vec4<bool>(false, true, var_0, true)), Struct_2(var_0, vec2<f32>(-2201f, -2385f), vec2<f32>(851f, 1241f)), _wgslsmith_clamp_u32(u_input.d, 12618u, 4294967295u)), vec3<i32>(~u_input.b, -29523i, global3[_wgslsmith_index_u32(u_input.d, 16u)] | -16441i)), (u_input.c | _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global0.wxz, global0.zyz), func_4(Struct_2(false, vec2<f32>(867f, -1000f), vec2<f32>(-726f, -1376f)), Struct_2(global4.x, vec2<f32>(110f, -1000f), vec2<f32>(-767f, 800f)), Struct_2(true, vec2<f32>(1000f, 802f), vec2<f32>(-1375f, -648f)), u_input.d))) ^ max(0i, 0i), u_input.b);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2) -> bool {
    var var_0 = ~(~(-4805i));
    var var_1 = select(!all(vec4<bool>(true, true, true, select(false, false, false))), any(!(!vec3<bool>(true, global4.x, arg_1.a))), global4.x);
    let var_2 = global4.x;
    let var_3 = arg_1;
    var var_4 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(f32(-1f) * -801f)))), -2147483647i, 1000f, vec4<bool>(true, all(vec4<bool>(false, func_2(arg_1.c.x, global3[_wgslsmith_index_u32(72815u, 16u)], -902f, vec4<bool>(true, var_3.a, arg_1.a, true)).a, true, false)), false, all(!global1[_wgslsmith_index_u32(~4294967295u, 17u)])));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = vec4<bool>(var_0, true, !func_5(func_1(), Struct_2(any(vec4<bool>(global4.x, global4.x, var_0, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-408f, 775f)), vec2<f32>(1f, 1f))), true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.a.x, 16u)], 73440i) & global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d, countOneBits(u_input.a.x), 83354u >> (u_input.d % 32u)), 16u)], ~global0.x)) * _wgslsmith_f_op_f32(floor(917f)));
    var var_3 = -1i;
    global0 = vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(2147483647i, u_input.b), 0i, -2147483647i, ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 8894u, 29573u, 0u), vec4<u32>(u_input.a.x, 4294967295u, 53479u, u_input.d)), 16u)]), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(13663i, 30160i, global3[_wgslsmith_index_u32(15738u, 16u)], 46754i), vec4<i32>(global3[_wgslsmith_index_u32(1u, 16u)], global0.x, u_input.b, 0i))), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-46755i, u_input.c) ^ _wgslsmith_sub_vec2_i32(global0.xw, global0.zz)), -global0.yx), _wgslsmith_sub_i32(-22510i, -1991i));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(95535u, 1u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(22149u, 24627u, 51495u))), ~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.d, 61525u)))));
}

