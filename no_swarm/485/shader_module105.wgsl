struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(5250u, 4294967295u);

var<private> global1: array<bool, 30>;

var<private> global2: f32;

var<private> global3: array<f32, 29> = array<f32, 29>(-1110f, 139f, 1601f, 1225f, -198f, -836f, -114f, 290f, -494f, -1682f, 1096f, -1268f, -254f, 337f, 596f, -283f, 1044f, 350f, -167f, 918f, -316f, 1001f, -819f, 503f, -2048f, -218f, 1000f, -846f, 106f);

var<private> global4: Struct_1 = Struct_1(vec4<u32>(0u, 772u, 1u, 49021u), vec4<u32>(1u, 0u, 0u, 0u), 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1362f)));
    global1 = array<bool, 30>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 29u)], _wgslsmith_f_op_f32(1554f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-955f))))), global3[_wgslsmith_index_u32(global4.a.x, 29u)]));
    global4 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.b.x, 29u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-412f * var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -709f))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.b.x, 29u)] * global3[_wgslsmith_index_u32(1u, 29u)])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> vec2<u32> {
    global3 = array<f32, 29>();
    var var_0 = max(abs(abs(~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)) & (firstLeadingBit(vec3<i32>(-30154i, 7209i, -18827i)) << (min(vec3<u32>(4294967295u, global4.c, 4294967295u), arg_0.b.zyz) % vec3<u32>(32u)))), vec3<i32>(36874i, min(-38855i, 0i), select(-1i, 0i, -1i < arg_2)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(299f, -814f)) * _wgslsmith_f_op_f32(arg_1.x * global3[_wgslsmith_index_u32(1u, 29u)])) + global3[_wgslsmith_index_u32(global4.a.x, 29u)]), _wgslsmith_f_op_f32(func_3(arg_0, arg_0, _wgslsmith_clamp_u32(arg_0.a.x, global0.x, arg_0.a.x) <= 4506u)))) + _wgslsmith_f_op_f32(f32(-1f) * -932f));
    var_0 = vec3<i32>(abs(_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(u_input.a.x, -var_0.x))), max(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 2147483647i, var_0.x), vec3<i32>(-2147483647i, arg_2, 16361i)), abs(vec3<i32>(-1i, u_input.a.x, 4034i))), var_0.x) & _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(77083i, -11629i, -44635i), ~arg_2), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(arg_2, arg_2) ^ vec2<i32>(arg_2, var_0.x))), firstTrailingBit(_wgslsmith_div_i32(u_input.a.x, var_0.x)));
    return _wgslsmith_mod_vec2_u32(global4.b.yw, ~global4.b.zz);
}

fn func_1() -> Struct_1 {
    global1 = array<bool, 30>();
    let var_0 = -1000f;
    global0 = _wgslsmith_div_vec2_u32(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global4.c), vec2<u32>(global4.a.x, global4.c) & global4.a.xy, vec2<u32>(46458u, 4294967295u))) & ((func_2(Struct_1(global4.b, vec4<u32>(global0.x, 54892u, 1u, 18366u), global0.x), vec3<f32>(1000f, -564f, var_0), 2029i) ^ _wgslsmith_add_vec2_u32(vec2<u32>(global4.b.x, 67855u), vec2<u32>(global0.x, global0.x))) ^ countOneBits(~global4.a.zy)), ~vec2<u32>(_wgslsmith_sub_u32(1u, global0.x), ~58457u & _wgslsmith_clamp_u32(global0.x, 38198u, 4294967295u)));
    global1 = array<bool, 30>();
    global1 = array<bool, 30>();
    return Struct_1(~(~global4.a), abs(countOneBits(select(global4.a, vec4<u32>(2426u, global0.x, global0.x, 4294967295u), global1[_wgslsmith_index_u32(3430u, 30u)]) ^ ~global4.b)), abs(global4.b.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<u32> {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(global4.b, global4.b), max(15205u, 4294967295u), arg_2.b.x, ~arg_0), vec4<u32>(80400u, 84828u, 33109u, _wgslsmith_clamp_u32(arg_2.a.x, 1u, arg_0))), func_1().b.x, ~arg_1.c, func_1().b.x << (~_wgslsmith_mult_u32(global0.x, global4.c) % 32u)), ~select(~(~vec4<u32>(0u, global0.x, 20352u, 48647u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a.x, global0.x, 48577u, global4.c) ^ vec4<u32>(37510u, 1u, arg_0, 4294967295u), ~vec4<u32>(32985u, arg_2.a.x, 4294967295u, arg_2.a.x)), !(!arg_3.x)), arg_0);
    let var_1 = arg_3;
    var var_2 = Struct_1(vec4<u32>(22600u, arg_2.a.x, arg_0, 1u), ~vec4<u32>(min(6949u, arg_1.a.x) << (4294967295u % 32u), 26679u, ~(var_0.a.x ^ global0.x), 4294967295u), 1u);
    var_2 = arg_1;
    var var_3 = select(var_1, vec3<bool>(false, global1[_wgslsmith_index_u32(~global0.x, 30u)], !any(vec3<bool>(var_1.x, global1[_wgslsmith_index_u32(4294967295u, 30u)], false))), !select(vec3<bool>(true, arg_3.x, arg_3.x), select(select(var_1, vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 30u)]), global1[_wgslsmith_index_u32(0u, 30u)]), var_1, false), select(select(vec3<bool>(var_1.x, arg_3.x, arg_3.x), arg_3, arg_3.x), arg_3, false && arg_3.x)));
    return vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(arg_1.a) & global4.b, firstLeadingBit(var_2.a)), (_wgslsmith_mult_u32(var_0.b.x, arg_2.b.x ^ var_0.b.x) >> (reverseBits(_wgslsmith_sub_u32(0u, global0.x)) % 32u)) << (var_2.a.x % 32u), 13728u, ~min(reverseBits(~arg_0), ~arg_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, global0.x, 58444u, 86667u), global4.b), func_1(), Struct_1(vec4<u32>(38301u, ~42967u, func_1().b.x, select(global4.b.x, global0.x, global1[_wgslsmith_index_u32(global0.x, 30u)])), global4.a, 1u), select(!vec3<bool>(true, global1[_wgslsmith_index_u32(global4.c, 30u)], global1[_wgslsmith_index_u32(global0.x, 30u)]), !(!vec3<bool>(global1[_wgslsmith_index_u32(global4.b.x, 30u)], global1[_wgslsmith_index_u32(global0.x, 30u)], false)), !select(vec3<bool>(true, false, true), vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 30u)], global1[_wgslsmith_index_u32(global4.c, 30u)], false), false))), global4.b, firstLeadingBit(4294967295u));
    var var_1 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~countOneBits(1u), 29u)] - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2464f * global3[_wgslsmith_index_u32(56070u, 29u)]) + _wgslsmith_f_op_f32(f32(-1f) * -173f)) + global3[_wgslsmith_index_u32(~global4.c & 15836u, 29u)]))));
    let var_2 = true;
    let var_3 = var_0.a.wzw;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-786f, _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(var_3.x, var_3.x, 0u, 26503u), vec4<u32>(global0.x, var_3.x, global0.x, 1u), var_3.x), func_1(), all(vec3<bool>(var_2, var_2, var_2))))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.c, 29u)] + global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_3.x), vec2<u32>(global0.x, 4294967295u)), 1u, _wgslsmith_clamp_u32(global4.c, 61277u, var_0.a.x)), 29u)])));
    global4 = func_1();
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-1568f, 334f), _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(abs(var_0.c), 29u)]))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-711f, -688f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.x, -1000f), vec2<f32>(var_4.x, var_4.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(global0.x, 29u)], global3[_wgslsmith_index_u32(78860u, 29u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(11436u, 29u)], -1000f) - vec2<f32>(var_4.x, 1027f))))), vec2<bool>(select(-361f >= var_4.x, !var_2, true), false))));
    global1 = array<bool, 30>();
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -_wgslsmith_mult_i32(2147483647i, u_input.a.x), _wgslsmith_sub_i32(22716i, ~(i32(-1i) * -1i)), 18977i, -2147483647i), min(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(0i, -1i, u_input.a.x), vec3<i32>(2147483647i, -1i, u_input.a.x), true), abs(vec3<i32>(u_input.a.x, 0i, u_input.a.x))), abs(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))), ~vec3<i32>(u_input.a.x, reverseBits(2587i), countOneBits(770i))));
}

