struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(25128i, -1i), -323f, 0u, vec4<i32>(2147483647i, 1i, 2147483647i, -21889i), vec2<f32>(234f, 201f));

var<private> global2: Struct_1;

var<private> global3: array<bool, 32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = false || (_wgslsmith_f_op_f32(abs(global1.e.x)) <= global2.b);
    var var_1 = Struct_1(global2.d.xx, global1.b, ~4294967295u, ~(~_wgslsmith_mod_vec4_i32(max(vec4<i32>(-2147483647i, -1i, 6161i, global2.a.x), vec4<i32>(global2.d.x, u_input.b, 0i, 43529i)), -global2.d)), vec2<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -666f))))));
    global1 = Struct_1(u_input.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global2.b)))), arg_0, _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(var_1.d.x), -u_input.c.x, ~global1.d.x, global2.a.x ^ u_input.c.x), var_1.d) & vec4<i32>(max(u_input.c.x, global2.a.x) | _wgslsmith_mod_i32(-46363i, u_input.c.x), abs(~global2.a.x), reverseBits(32805i) | -var_1.d.x, _wgslsmith_mult_i32(global1.d.x, abs(u_input.b))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_1.b + global1.b), var_1.e.x))));
    var_0 = true;
    let var_2 = u_input.a;
    return _wgslsmith_sub_u32(0u, ~arg_0 & 12704u);
}

fn func_2(arg_0: vec2<bool>) -> vec2<u32> {
    let var_0 = !select(!vec4<bool>(true, arg_0.x, global3[_wgslsmith_index_u32(global1.c, 32u)] | false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.c, 12u)], 32u)]), !vec4<bool>(global3[_wgslsmith_index_u32(global1.c, 32u)], true, all(vec2<bool>(false, false)), true), select(select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)], true, global3[_wgslsmith_index_u32(u_input.a.x, 32u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 32u)], global3[_wgslsmith_index_u32(67052u, 32u)], false, true), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), false), select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 32u)], arg_0.x, global3[_wgslsmith_index_u32(79527u, 32u)], true), vec4<bool>(true, global3[_wgslsmith_index_u32(global2.c, 32u)], false, arg_0.x), global3[_wgslsmith_index_u32(1u, 32u)])), !select(vec4<bool>(false, arg_0.x, global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(54366u, 32u)]), vec4<bool>(global3[_wgslsmith_index_u32(1u, 32u)], true, false, false), global3[_wgslsmith_index_u32(60147u, 32u)]), !vec4<bool>(arg_0.x, true, false, false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.e.x)) * _wgslsmith_f_op_f32(-875f - _wgslsmith_f_op_f32(-global1.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b - global1.e.x), 627f)), global1.b, _wgslsmith_f_op_f32(trunc(508f))));
    var var_2 = vec2<i32>(24536i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global1.a, _wgslsmith_add_vec2_i32(~u_input.c, ~vec2<i32>(-2261i, -41463i))), global1.a.x));
    var var_3 = false;
    let var_4 = Struct_2(Struct_1(countOneBits(vec2<i32>(select(-1i, -2147483647i, false), -1i | var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f)), ~_wgslsmith_clamp_u32(6963u, countOneBits(global2.c), func_3(46051u)), global1.d, global1.e));
    return u_input.a.xw;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    global2 = Struct_1(_wgslsmith_sub_vec2_i32(-global1.d.xz, arg_0.ww), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - 1507f)))), countOneBits(global0[_wgslsmith_index_u32(firstTrailingBit(~(~1u)), 12u)]), ~(~vec4<i32>(10692i, _wgslsmith_div_i32(-234i, -2147483647i), u_input.b, global1.d.x)), global2.e);
    var var_0 = _wgslsmith_mult_u32(select(1u, 0u << (_wgslsmith_dot_vec3_u32(u_input.a.zww, max(vec3<u32>(40090u, 32080u, 0u), u_input.a.xyz)) % 32u), any(!select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(1u, 32u)]), vec2<bool>(global3[_wgslsmith_index_u32(arg_1, 32u)], global3[_wgslsmith_index_u32(global1.c, 32u)]), global3[_wgslsmith_index_u32(global1.c, 32u)]))), _wgslsmith_dot_vec2_u32(~vec2<u32>(419u, 4294967295u), u_input.a.wx));
    let var_1 = select(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(~81975u, 32u)], global3[_wgslsmith_index_u32(21265u, 32u)], !global3[_wgslsmith_index_u32(global1.c, 32u)])), !select(vec4<bool>(any(vec3<bool>(true, global3[_wgslsmith_index_u32(global1.c, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)])), !global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)], any(vec3<bool>(global3[_wgslsmith_index_u32(arg_2.x, 32u)], false, false))), select(select(vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(0u, 32u)]), vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(0u, 32u)]), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 12u)], 32u)]), !vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(arg_2.x, 32u)]), !global3[_wgslsmith_index_u32(global1.c, 32u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 32u)], global3[_wgslsmith_index_u32(~6275u, 32u)], true)), !(!select(!vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(global3[_wgslsmith_index_u32(arg_2.x, 32u)], false, global3[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7412u, 12u)], 32u)]), true)));
    global0 = array<u32, 12>();
    let var_2 = Struct_1(global2.a, _wgslsmith_f_op_f32(-global2.e.x), 1u, vec4<i32>(-1i) * -global2.d, _wgslsmith_f_op_vec2_f32(-global2.e));
    return 1949f;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(-_wgslsmith_div_vec2_i32(u_input.c, u_input.c), _wgslsmith_f_op_f32(sign(global2.e.x)), 1u, select(select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-33568i, u_input.c.x, 35996i), vec3<i32>(global1.d.x, 2147483647i, -2147483647i)), -global2.a.x, -13184i, _wgslsmith_add_i32(arg_1.d.x, -12794i)), reverseBits(vec4<i32>(u_input.b, u_input.c.x, 1628i, global1.d.x)), !(!vec4<bool>(false, global3[_wgslsmith_index_u32(arg_1.c, 32u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 32u)]))), vec4<i32>(arg_0, -6021i, global2.d.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.d.x, arg_1.d.x, global2.d.x), arg_1.d.wwx), -vec3<i32>(-9088i, 21763i, -12143i))), vec4<bool>(all(vec2<bool>(false, false)), true, global3[_wgslsmith_index_u32(u_input.a.x, 32u)], any(vec2<bool>(true, global3[_wgslsmith_index_u32(19290u, 32u)])))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.e.x), -920f), global1.e));
    global0 = array<u32, 12>();
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(~global1.c, 1u), ~var_0.c), 14537u);
    var var_2 = !(global3[_wgslsmith_index_u32(45277u, 32u)] && (u_input.a.x > ~1u));
    global3 = array<bool, 32>();
    return Struct_1((~arg_1.d.zx << ((abs(vec2<u32>(24944u, u_input.a.x)) & select(u_input.a.ww, u_input.a.zx, vec2<bool>(global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(global1.c, 32u)]))) % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(u_input.a.yy, vec2<u32>(16731u, ~14935u), firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.a.wz, u_input.a.zz))) % vec2<u32>(32u)), global2.b, _wgslsmith_div_u32(func_2(select(select(vec2<bool>(global3[_wgslsmith_index_u32(arg_1.c, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<bool>(global3[_wgslsmith_index_u32(var_1.x, 32u)], global3[_wgslsmith_index_u32(8881u, 32u)]), global3[_wgslsmith_index_u32(global2.c, 32u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(var_0.c, 32u)], global3[_wgslsmith_index_u32(global1.c, 32u)]), vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(1u, 32u)], false)), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(arg_1.c, 32u)]))).x, ~7890u), ~(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_0, -26934i, global2.a.x), vec4<i32>(arg_0, -25620i, var_0.d.x, global1.a.x)), ~global1.d) & _wgslsmith_mult_vec4_i32(vec4<i32>(1i, global2.d.x, 0i, arg_1.a.x), vec4<i32>(u_input.b, arg_1.a.x, -2147483647i, var_0.a.x) << (vec4<u32>(global0[_wgslsmith_index_u32(var_1.x, 12u)], 1754u, var_1.x, arg_1.c) % vec4<u32>(32u)))), _wgslsmith_div_vec2_f32(global1.e, vec2<f32>(412f, arg_1.b)));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    global0 = array<u32, 12>();
    var var_0 = select(countOneBits(abs(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-13838i, 48845i), global2.a)))), ~abs(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.d.x, arg_2.d.x), -vec2<i32>(arg_2.d.x, 2147483647i))), vec2<bool>(select(any(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(arg_2.c, 32u)], true)), !any(vec2<bool>(true, false)), false), global3[_wgslsmith_index_u32((~global2.c & arg_3.x) & 4294967295u, 32u)]));
    global3 = array<bool, 32>();
    global1 = Struct_1(arg_0.yy, -1128f, 1u, arg_1.d, vec2<f32>(-152f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(arg_2.d, global1.c, arg_3.zz))))));
    let var_1 = _wgslsmith_f_op_f32(-global2.e.x);
    return Struct_2(arg_1);
}

fn func_1() -> vec4<bool> {
    var var_0 = func_6(_wgslsmith_mult_vec3_i32(global1.d.wyy, ~_wgslsmith_mult_vec3_i32(~vec3<i32>(global2.d.x, global2.a.x, u_input.c.x), vec3<i32>(global1.d.x, global1.a.x, u_input.b))), Struct_1(global2.d.wy ^ global2.d.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, global2.e.x))), min(36637u, 8799u), max(countOneBits(-vec4<i32>(u_input.b, 0i, 0i, -1i)), global1.d), _wgslsmith_f_op_vec2_f32(global2.e + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(654f, global1.e.x))))))), func_5(i32(-1i) * -1i, Struct_1(select(~global2.d.zx, vec2<i32>(u_input.c.x, u_input.c.x), !global3[_wgslsmith_index_u32(global1.c, 32u)]), _wgslsmith_f_op_f32(func_4(global2.d >> (u_input.a % vec4<u32>(32u)), ~31125u, func_2(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], true)))), 1u, global2.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2514f, global1.e.x), vec2<f32>(global1.b, global1.b)) * _wgslsmith_f_op_vec2_f32(global2.e - global2.e)))), _wgslsmith_div_vec4_u32(~select(countOneBits(u_input.a), u_input.a << (u_input.a % vec4<u32>(32u)), all(vec2<bool>(global3[_wgslsmith_index_u32(0u, 32u)], false))), vec4<u32>(~abs(1u), 69390u, global0[_wgslsmith_index_u32(global2.c, 12u)], 4294967295u)));
    var var_1 = func_6(var_0.a.d.xzw, var_0.a, var_0.a, vec4<u32>(var_0.a.c, u_input.a.x, min(global0[_wgslsmith_index_u32(global1.c, 12u)] | global0[_wgslsmith_index_u32(1u, 12u)], u_input.a.x), 12620u) | ~(~reverseBits(vec4<u32>(4294967295u, global1.c, global2.c, 27261u))));
    var var_2 = Struct_2(var_0.a);
    var var_3 = vec3<bool>(!(!(-405f < _wgslsmith_f_op_f32(round(global1.e.x)))), all(select(select(vec3<bool>(false, global3[_wgslsmith_index_u32(global2.c, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)]), !vec3<bool>(global3[_wgslsmith_index_u32(var_0.a.c, 32u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11136u, 12u)], 32u)], false), global3[_wgslsmith_index_u32(global1.c, 32u)]), vec3<bool>(343f >= global2.e.x, false, global2.b != 329f), select(vec3<bool>(false, global3[_wgslsmith_index_u32(65953u, 32u)], global3[_wgslsmith_index_u32(var_0.a.c, 32u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(global1.c, 32u)], false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 32u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 32u)], false), vec3<bool>(global3[_wgslsmith_index_u32(5231u, 32u)], global3[_wgslsmith_index_u32(60104u, 32u)], global3[_wgslsmith_index_u32(0u, 32u)])), -1i <= u_input.c.x))), all(select(!vec2<bool>(global3[_wgslsmith_index_u32(69678u, 32u)], false), vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 32u)]), true)) | (var_0.a.d.x < abs(var_1.a.a.x ^ u_input.c.x)));
    var var_4 = global3[_wgslsmith_index_u32(abs((~var_2.a.c ^ var_2.a.c) >> (_wgslsmith_dot_vec2_u32((vec2<u32>(var_2.a.c, var_1.a.c) & u_input.a.yx) << (u_input.a.wx % vec2<u32>(32u)), u_input.a.xy) % 32u)), 32u)];
    return select(select(!(!select(vec4<bool>(false, false, var_3.x, false), vec4<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 32u)], true), vec4<bool>(var_3.x, global3[_wgslsmith_index_u32(global1.c, 32u)], var_3.x, var_3.x))), !(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(18673u, 32u)], true, global3[_wgslsmith_index_u32(global2.c, 32u)])), vec4<bool>(func_6(global2.d.zwy, var_0.a, var_1.a, u_input.a).a.e.x < global1.e.x, all(select(vec2<bool>(global3[_wgslsmith_index_u32(var_2.a.c, 32u)], false), var_3.yy, var_3.x)), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(var_2.a.c)), 12u)], 32u)], global3[_wgslsmith_index_u32(0u, 32u)])), !select(vec4<bool>(global3[_wgslsmith_index_u32(global1.c, 32u)], true, !global3[_wgslsmith_index_u32(1u, 32u)], false | var_3.x), vec4<bool>(!var_3.x, false, !var_3.x, var_3.x), vec4<bool>(any(vec4<bool>(false, false, var_3.x, global3[_wgslsmith_index_u32(u_input.a.x, 32u)])), any(var_3.xz), true, false)), select(select(select(select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(var_1.a.c, 32u)], false), vec4<bool>(global3[_wgslsmith_index_u32(var_0.a.c, 32u)], true, true, true), vec4<bool>(false, false, var_3.x, global3[_wgslsmith_index_u32(global2.c, 32u)])), vec4<bool>(false, global3[_wgslsmith_index_u32(67948u, 32u)], false, var_3.x), false), select(!vec4<bool>(true, true, var_3.x, global3[_wgslsmith_index_u32(126630u, 32u)]), select(vec4<bool>(var_3.x, true, true, false), vec4<bool>(global3[_wgslsmith_index_u32(var_0.a.c, 32u)], var_3.x, global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(global1.c, 32u)]), global3[_wgslsmith_index_u32(16873u, 32u)]), var_3.x & var_3.x), vec4<bool>(select(global3[_wgslsmith_index_u32(global2.c, 32u)], global3[_wgslsmith_index_u32(3849u, 32u)], true), true, true, var_3.x && false)), !select(!vec4<bool>(global3[_wgslsmith_index_u32(global2.c, 32u)], false, global3[_wgslsmith_index_u32(var_1.a.c, 32u)], var_3.x), !vec4<bool>(true, false, var_3.x, true), select(vec4<bool>(false, var_3.x, var_3.x, global3[_wgslsmith_index_u32(global1.c, 32u)]), vec4<bool>(var_3.x, var_3.x, false, global3[_wgslsmith_index_u32(global2.c, 32u)]), vec4<bool>(var_3.x, global3[_wgslsmith_index_u32(93804u, 32u)], global3[_wgslsmith_index_u32(13725u, 32u)], global3[_wgslsmith_index_u32(39834u, 32u)]))), vec4<bool>(false, true, !select(global3[_wgslsmith_index_u32(48770u, 32u)], false, var_3.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = Struct_1(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * global2.b), ~firstLeadingBit(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(31236u, 12u)]) & u_input.a.x), global2.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.e - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.e - vec2<f32>(global1.b, global1.e.x)) * _wgslsmith_f_op_vec2_f32(global1.e * global2.e)))));
    global3 = array<bool, 32>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * global1.e.x) * global1.b));
    let var_3 = select(func_1(), vec4<bool>(true, true, func_1().x, any(!vec3<bool>(true, false, global3[_wgslsmith_index_u32(global2.c, 32u)])) || (_wgslsmith_f_op_f32(538f - -132f) >= var_2)), true);
    let x = u_input.a;
    s_output = StorageBuffer(8730u, ~_wgslsmith_clamp_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(20937u, global2.c, 32992u, global2.c), u_input.a), vec4<u32>(4294967295u, global2.c, 49821u, u_input.a.x), true), vec4<u32>(18631u, 1u, global2.c & u_input.a.x, ~1u), vec4<u32>(61333u, 1u | global0[_wgslsmith_index_u32(4294967295u, 12u)], ~global2.c, 25914u | global1.c)));
}

