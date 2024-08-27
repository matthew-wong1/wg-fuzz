struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 21>;

var<private> global2: Struct_2 = Struct_2(Struct_1(0u, 47684u), vec4<u32>(4877u, 4294967295u, 4294967295u, 10168u));

var<private> global3: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(4294967295u), Struct_3(7457u), Struct_3(1u), Struct_3(0u), Struct_3(4294967295u), Struct_3(44229u), Struct_3(14526u), Struct_3(40173u), Struct_3(1u), Struct_3(4294967295u), Struct_3(1u), Struct_3(0u), Struct_3(47565u), Struct_3(0u), Struct_3(27705u), Struct_3(1u), Struct_3(0u), Struct_3(42813u), Struct_3(1u), Struct_3(1u), Struct_3(63538u), Struct_3(106888u), Struct_3(56142u), Struct_3(18089u), Struct_3(22328u), Struct_3(1u), Struct_3(1u), Struct_3(47283u), Struct_3(0u), Struct_3(1u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> bool {
    global3 = array<Struct_3, 30>();
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-700f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-951f + _wgslsmith_f_op_f32(step(559f, -626f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2099f, 853f) * _wgslsmith_f_op_f32(min(-1000f, -1729f))))))));
    global2 = Struct_2(Struct_1(0u, ~u_input.b), max(vec4<u32>(countOneBits(~arg_1), 24475u, arg_1, ~26703u), global2.b));
    let var_0 = Struct_2(global2.a, firstLeadingBit(global2.b));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)))), -2295f));
    return false;
}

fn func_2() -> vec4<f32> {
    let var_0 = -13563i;
    global3 = array<Struct_3, 30>();
    let var_1 = vec4<u32>(max(abs(abs(u_input.b)), ~reverseBits(u_input.a)) >> (~0u % 32u), 73098u, ~(u_input.b >> (37362u % 32u)), u_input.a >> (abs(53967u) % 32u));
    let var_2 = select(vec3<bool>(all(vec4<bool>(true, true, true, true)), func_3(global1[_wgslsmith_index_u32(u_input.a, 21u)], _wgslsmith_div_u32(4294967295u, u_input.b) ^ 4294967295u), any(vec2<bool>(true, var_0 > var_0))), vec3<bool>(true, true, true), select(var_1.x, 4294967295u, false) >= ~(~_wgslsmith_dot_vec2_u32(global2.b.wz, var_1.zw)));
    global0 = -1103f;
    return vec4<f32>(_wgslsmith_f_op_f32(-589f - 1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1222f, 228f, var_2.x))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, 399f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1117f + -418f))))), -208f);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_0.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(max(1000f, 1f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1265f, 748f) * vec3<f32>(574f, -279f, 701f)) * vec3<f32>(-942f, -1238f, arg_0.x)))));
    var var_1 = Struct_3(_wgslsmith_div_u32(global2.b.x, 1u));
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(404f, var_0.x, var_2, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(667f, -1000f, var_0.x, -147f)), true)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2())))))));
    var var_4 = Struct_1(u_input.b, ~global2.b.x);
    return _wgslsmith_f_op_vec3_f32(exp2(var_3.wyw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(vec2<f32>(189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1805f) - _wgslsmith_f_op_f32(floor(-2249f))))), _wgslsmith_add_vec3_i32(~vec3<i32>(_wgslsmith_mult_i32(10517i, -1i), 16740i, abs(-2147483647i)), vec3<i32>(_wgslsmith_add_i32(20974i, _wgslsmith_dot_vec2_i32(vec2<i32>(16243i, 2147483647i), vec2<i32>(1i, 2495i))), i32(-1i) * -1i, -51311i >> (u_input.b % 32u)))));
    var var_1 = Struct_1(firstTrailingBit(0u), ~_wgslsmith_clamp_u32(1u, global2.a.a, global2.b.x));
    var var_2 = Struct_1(~22854u, u_input.b | var_1.a);
    var var_3 = vec2<bool>(true, !(56068u != ~(u_input.b >> (27704u % 32u))));
    var_3 = select(select(select(vec2<bool>(var_3.x, false), select(vec2<bool>(var_3.x, var_3.x), select(vec2<bool>(var_3.x, true), vec2<bool>(var_3.x, false), vec2<bool>(false, true)), vec2<bool>(true, true)), all(!vec3<bool>(true, false, var_3.x))), vec2<bool>(any(!vec2<bool>(var_3.x, var_3.x)), true), !(!select(vec2<bool>(false, false), vec2<bool>(false, var_3.x), vec2<bool>(true, true)))), !select(select(vec2<bool>(true, var_3.x), vec2<bool>(true, var_3.x), var_3.x), vec2<bool>(true, var_3.x), true), vec2<bool>(any(select(vec4<bool>(var_3.x, true, true, var_3.x), !vec4<bool>(var_3.x, true, var_3.x, var_3.x), func_3(vec3<i32>(-10377i, -44637i, -2430i), 11545u))), var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-739f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))) + -1540f)), vec2<i32>(-_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-2147483647i, -1224i, 0i, -13673i)), select(vec4<i32>(1i, -28231i, 54648i, 21066i), vec4<i32>(1i, -27402i, 2147483647i, 1i), false)), 1i));
}

