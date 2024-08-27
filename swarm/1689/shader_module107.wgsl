struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_4;

var<private> global3: array<u32, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-138f, _wgslsmith_f_op_f32(exp2(arg_1.x)), global2.c.b.b.b.x, _wgslsmith_f_op_f32(ceil(1067f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, global2.d.b.x, 1259f)))))))));
    var var_1 = global2.a;
    let var_2 = global2.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, arg_0.b.x, _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(round(-1243f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.b.b.b.x * _wgslsmith_f_op_f32(ceil(var_0.x))) + _wgslsmith_f_op_f32(min(-600f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-542f, _wgslsmith_f_op_f32(var_2.a.b.b.x + var_2.b.a.b.x), global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.a.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -1223f)))), false));
    let var_4 = var_2.a.b.c >= ~var_2.b.a.c;
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(vec3<bool>(func_3(global2.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1640f, 684f), global2.c.a.a.b)), global2.c.a.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -493f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-137f))), true), select(select(!vec3<bool>(global2.a, global2.a, false), !select(vec3<bool>(global2.a, false, global2.a), vec3<bool>(false, true, global2.a), global2.a), vec3<bool>(!global2.a, false, true)), vec3<bool>(true, true, true), true), !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), global2.a), !(!vec3<bool>(global2.a, global2.a, true)), select(vec3<bool>(global2.a, false, global2.a), select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(false, global2.a, global2.a), global2.a), !global2.a)));
    let var_1 = global2.d.c & _wgslsmith_add_i32(-21145i, arg_0);
    var var_2 = Struct_2(Struct_1(global1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.c.b.b.b, arg_1.b, var_0.zz)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.d.b.x, -505f), arg_1.b))) * arg_1.b), arg_0), global2.c.b.a);
    var var_3 = global2.b.b;
    let var_4 = global1.wwy;
    return var_2.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: u32) -> vec2<f32> {
    var var_0 = firstLeadingBit(i32(-1i) * -1i);
    var var_1 = func_2(global2.c.b.a.c, global2.c.a.a);
    global1 = ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2, u_input.b), u_input.a) << (_wgslsmith_div_u32(global3[_wgslsmith_index_u32(var_1.a, 21u)], 40936u) % 32u), 4294967295u, 25742u), _wgslsmith_dot_vec4_u32((vec4<u32>(arg_2, 0u, 50545u, var_1.a) ^ vec4<u32>(4294967295u, 4294967295u, arg_2, 1u)) | countOneBits(vec4<u32>(u_input.a.x, 4294967295u, 0u, global3[_wgslsmith_index_u32(431u, 21u)])), ~(vec4<u32>(1u, 0u, 4294967295u, global2.d.a) & vec4<u32>(var_1.a, 4294967295u, 14005u, global1.x))), select(_wgslsmith_add_u32(70179u, global2.b.a.a.a) >> (~18958u % 32u), ~(global2.b.a.b.a & global2.c.b.b.a), func_2(-1i, Struct_1(4294967295u, arg_0, 1i)).b.x > 422f), _wgslsmith_mod_u32(~var_1.a, ~(~var_1.a)));
    global3 = array<u32, 21>();
    global3 = array<u32, 21>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), 510f))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * global2.d.b.x), _wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(-768f, -651f), vec2<i32>(global2.c.a.b.c, 1i), global2.b.b.b.a)).x), _wgslsmith_f_op_f32(-func_2(-25168i, Struct_1(global1.x, global2.c.b.b.b, 6130i)).b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-224f)), _wgslsmith_div_f32(-563f, global2.c.a.b.b.x)))));
    var var_1 = 1u;
    var var_2 = Struct_4(true, Struct_3(global2.b.a, Struct_2(global2.b.b.a, global2.d)), global2.b, global2.b.b.a, _wgslsmith_f_op_f32(-1055f * 1574f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1560f, global2.d.b.x)) * 1754f));
    var var_3 = var_2.b.b;
    return Struct_2(Struct_1(global2.c.a.b.a, arg_0, var_2.b.b.a.c), func_2(~_wgslsmith_dot_vec3_i32(~vec3<i32>(-58521i, var_3.a.c, global2.b.b.b.c), vec3<i32>(2147483647i, 37363i, var_2.c.a.b.c)), Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(424f, arg_0.x)), _wgslsmith_mult_i32(-2147483647i, var_3.a.c) | -global2.d.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(global2.b.b.b.b, firstTrailingBit(abs(vec2<i32>(7809i, global2.d.c))), 10921u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.d.b.x, global2.d.b.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.d.b.x, global2.d.b.x), global2.b.a.a.b)))), global2.a)));
    var var_1 = -2147483647i;
    var var_2 = !(!vec3<bool>(true, global2.a, true));
    global2 = Struct_4(select(var_2.x, !var_2.x, global2.a) == ((i32(-1i) * -28932i) != abs(select(-87537i, 0i, var_2.x))), Struct_3(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.c.b.b.b)))), func_4(vec2<f32>(_wgslsmith_f_op_f32(global2.b.b.b.b.x - -921f), -659f))), Struct_3(Struct_2(Struct_1(firstLeadingBit(42261u), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.e, -610f) * vec2<f32>(456f, global2.e)), 1i), func_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-527f, var_0.b.b.x)))).b), Struct_2(Struct_1(global3[_wgslsmith_index_u32(2806u, 21u)] | u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b.x, global2.d.b.x)), 1i), global2.d)), global2.c.a.b, 521f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b.x, global2.b.a.b.a, u_input.a.yz, firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~18158u, global3[_wgslsmith_index_u32(u_input.b, 21u)] | 44643u, ~44073u), ~vec4<u32>(1u, global3[_wgslsmith_index_u32(global2.b.a.b.a, 21u)], var_0.a.a, 1u))));
}

