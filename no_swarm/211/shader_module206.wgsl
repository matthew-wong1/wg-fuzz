struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
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

var<private> global0: array<i32, 14> = array<i32, 14>(-25147i, 2147483647i, i32(-2147483648), i32(-2147483648), -4165i, 0i, 31437i, -45585i, 1i, 2147483647i, 0i, 2147483647i, 1i, i32(-2147483648));

var<private> global1: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    let var_0 = all(vec4<bool>(arg_2, any(!vec3<bool>(arg_2, true, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), arg_3.x) > _wgslsmith_f_op_f32(-arg_3.x), arg_2));
    global0 = array<i32, 14>();
    global1 = ~select(-2147483647i, u_input.d.x, true);
    var var_1 = abs(select(-reverseBits(vec4<i32>(-28632i, u_input.b, global0[_wgslsmith_index_u32(1u, 14u)], -2147483647i)), countOneBits(vec4<i32>(-1233i, arg_1.x, 0i, global0[_wgslsmith_index_u32(30563u, 14u)])), any(select(vec2<bool>(false, var_0), vec2<bool>(arg_2, false), vec2<bool>(true, arg_2)))) | vec4<i32>(_wgslsmith_dot_vec3_i32(~arg_1.wwx, vec3<i32>(29631i, global0[_wgslsmith_index_u32(u_input.a, 14u)], arg_1.x)), reverseBits(-3758i), -1i, reverseBits(_wgslsmith_div_i32(28388i, global0[_wgslsmith_index_u32(4294967295u, 14u)]))));
    let var_2 = _wgslsmith_add_i32(-var_1.x, arg_1.x);
    return u_input.a;
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<i32>) -> vec3<i32> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_clamp_i32(~(_wgslsmith_mod_i32(arg_1.x, 5016i) ^ ((i32(-1i) * -1i) | -global0[_wgslsmith_index_u32(u_input.a, 14u)])), countOneBits(var_0.x), var_0.x);
    var_0 = countOneBits(~arg_1);
    var var_2 = min(min(~min(vec2<u32>(u_input.a, 70653u), vec2<u32>(u_input.a, 4294967295u)), ~countOneBits(vec2<u32>(13979u, 4294967295u))), vec2<u32>(u_input.a, ~arg_0)) | min(~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(51893u, arg_0)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, u_input.a), vec2<u32>(arg_0, arg_0))), vec2<u32>(abs(select(4294967295u, arg_0, false)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(21308u, u_input.a, arg_0, u_input.a), vec4<u32>(u_input.a, u_input.a, 68436u, 75666u))));
    var var_3 = 1u;
    return ~_wgslsmith_mod_vec3_i32(~arg_2, select(vec3<i32>(-23411i, 10212i, arg_1.x), arg_2, vec3<bool>(true, true, true)) << (abs(_wgslsmith_mod_vec3_u32(vec3<u32>(33918u, 1u, arg_0), vec3<u32>(0u, u_input.a, arg_0))) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    global1 = _wgslsmith_div_i32(0i, _wgslsmith_div_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(arg_0, -arg_0)) & 9838i);
    let var_0 = ~(-(func_4(func_3(vec2<f32>(arg_1, -198f), vec4<i32>(arg_0.x, global0[_wgslsmith_index_u32(12713u, 14u)], 2147483647i, -799i), true, vec4<f32>(764f, -1646f, arg_1, 1000f)), arg_0, arg_0.www) & reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(19503i, arg_0.x, u_input.c), vec3<i32>(-14937i, 19724i, 1i), vec3<i32>(2147483647i, -2147483647i, -45607i)))));
    let var_1 = -1746f;
    global0 = array<i32, 14>();
    global1 = _wgslsmith_div_i32(var_0.x, -29628i);
    return Struct_1(arg_0.zxw, abs(max(vec4<i32>(arg_0.x, arg_0.x, _wgslsmith_mult_i32(arg_0.x, 1i), ~global0[_wgslsmith_index_u32(0u, 14u)]), abs(countOneBits(vec4<i32>(11433i, arg_0.x, var_0.x, -32586i))))), select(vec3<u32>(~u_input.a, 0u ^ u_input.a, 37097u), _wgslsmith_sub_vec3_u32(~vec3<u32>(19577u, u_input.a, 50687u), vec3<u32>(74107u, u_input.a, 0u)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), u_input.a <= 0u)) >> (~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(45528u, u_input.a, 1u), vec3<u32>(4294967295u, 4294967295u, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(29435u, 1u, 4294967295u), vec3<u32>(u_input.a, 36019u, u_input.a))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, arg_1)));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = func_2(vec4<i32>(1i, firstLeadingBit(u_input.b), _wgslsmith_mod_i32(abs(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-1i, -2147483647i))), 1i), global0[_wgslsmith_index_u32(u_input.a, 14u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f + -127f))));
    var var_1 = ~var_0.c;
    var var_2 = !select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), vec3<bool>(true, true, true), select(vec3<bool>(all(vec4<bool>(true, false, true, true)), false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), false)));
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    return _wgslsmith_f_op_f32(231f + -468f);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<i32, 14>();
    let var_0 = func_2(countOneBits(_wgslsmith_mod_vec4_i32(max(abs(vec4<i32>(arg_1.x, u_input.d.x, arg_2.a.x, 17256i)), vec4<i32>(-41048i, arg_1.x, 7492i, -6824i)), vec4<i32>(func_2(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], arg_1.x, arg_2.a.x, -9333i), -1000f).b.x, 2147483647i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(0u, 14u)], 2147483647i), -1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -309f))), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + 442f), 335f)))));
    var var_1 = Struct_1(var_0.a & var_0.b.ywy, reverseBits(min(vec4<i32>(_wgslsmith_sub_i32(arg_1.x, -1i), ~(-4647i), abs(2147483647i), global0[_wgslsmith_index_u32(func_3(vec2<f32>(188f, 562f), vec4<i32>(-13334i, 2147483647i, -4745i, arg_2.a.x), false, vec4<f32>(-914f, arg_2.d.x, -806f, -210f)), 14u)]), vec4<i32>(reverseBits(-2147483647i), firstLeadingBit(u_input.d.x), 1923i, arg_1.x | var_0.a.x))), ~var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, 574f) * var_0.d))))));
    let var_2 = func_2(~var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1065f))) - _wgslsmith_f_op_f32(f32(-1f) * -675f)));
    var var_3 = func_2(var_1.b, arg_3.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -4770i;
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-329f, 1331f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(839f, 1319f)))))) + vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_sub_i32(1i, u_input.b))), -1872f)), u_input.d, Struct_1((firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(2233u, 14u)], u_input.d.x, -23917i)) & min(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 14u)], 0i), vec3<i32>(41886i, u_input.c, u_input.b))) >> (vec3<u32>(4996u, u_input.a, u_input.a) % vec3<u32>(32u)), vec4<i32>(21965i, u_input.d.x, -global0[_wgslsmith_index_u32(u_input.a, 14u)] << (func_2(vec4<i32>(63954i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]), -944f).c.x % 32u), abs(-2147483647i) & (-2525i ^ global0[_wgslsmith_index_u32(u_input.a, 14u)])), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a, 38677u), 1u), ~(~vec3<u32>(22342u, 38202u, 0u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-848f, _wgslsmith_f_op_f32(f32(-1f) * -466f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-657f, -1103f) - vec2<f32>(-1000f, -1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-371f, 390f, 851f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1122f, -653f, -109f))))))));
    var var_1 = var_0.c.x;
    let var_2 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d);
}

