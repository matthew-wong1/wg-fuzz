struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false));

var<private> global1: array<f32, 16>;

var<private> global2: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-850i, -24500i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(38684i, -2147483647i))), ~vec2<i32>(-1i, -8694i), vec2<i32>(min(13451i, -1i), ~(-24738i))) | vec2<i32>(i32(-1i) * -2147483647i, 2147483647i), vec2<i32>(-1i | _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), ~vec2<i32>(-33359i, 0i)), ~(-33880i)));
    let var_2 = global1[_wgslsmith_index_u32(arg_1, 16u)] >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.a, 16u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(93614u, 16u)], global1[_wgslsmith_index_u32(63341u, 16u)])))));
    global1 = array<f32, 16>();
    let var_3 = arg_2;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-715f * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(17110u, u_input.a), abs(vec2<u32>(25517u, 57650u))), 16u)])), 1f);
}

fn func_2() -> Struct_3 {
    var var_0 = 4193i;
    return Struct_3(Struct_2(Struct_1(global0.a), _wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(false, !global0.a.x), _wgslsmith_sub_u32(~25085u, 4294967295u & u_input.a), Struct_1(vec2<bool>(false, global0.a.x))))));
}

fn func_4(arg_0: Struct_3) -> u32 {
    global2 = array<vec4<bool>, 12>();
    global1 = array<f32, 16>();
    var var_0 = ~reverseBits(~vec3<u32>(~u_input.a, u_input.a, _wgslsmith_add_u32(u_input.a, 4294967295u)));
    var_0 = firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(~var_0.x, 18938u, ~u_input.a), max(vec3<u32>(var_0.x, var_0.x, u_input.a), vec3<u32>(0u, 3368u, u_input.a)) & (vec3<u32>(0u, 58820u, u_input.a) ^ vec3<u32>(80250u, 29429u, 0u))) & countOneBits(~(~vec3<u32>(u_input.a, u_input.a, 1u))));
    var var_1 = arg_0.a.b;
    return ~u_input.a;
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = ~vec3<u32>(68751u, 5948u, ~56501u);
    var var_1 = Struct_1(vec2<bool>(true, _wgslsmith_f_op_f32(ceil(929f)) <= _wgslsmith_f_op_f32(1100f * -1008f)));
    let var_2 = Struct_3(arg_0.a);
    global2 = array<vec4<bool>, 12>();
    let var_3 = var_2.a;
    return ~(var_0.x & (abs(1u) << (func_4(func_2()) % 32u)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_3.b.x, 228f)))), _wgslsmith_f_op_vec2_f32(func_3(func_2().a.a.a, _wgslsmith_div_u32(u_input.a, arg_0), Struct_1(func_2().a.a.a))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(func_4(Struct_3(arg_3)), 16u)])))) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_0, arg_0), 16u)])), global1[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b.x)) + _wgslsmith_f_op_f32(round(-782f))), 109f))));
    var var_2 = any(!global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(16109u, 0u >> (arg_0 % 32u)), 12u)]);
    var var_3 = false;
    let var_4 = arg_3.a;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(countOneBits(u_input.a) | firstLeadingBit(u_input.a)) >> (_wgslsmith_clamp_u32(reverseBits(32927u), abs(func_1(Struct_3(Struct_2(Struct_1(vec2<bool>(false, global0.a.x)), vec2<f32>(global1[_wgslsmith_index_u32(46580u, 16u)], -196f))), global0.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(35488u, 997u, 22609u, u_input.a), vec4<u32>(0u, 0u, 0u, u_input.a), vec4<u32>(0u, u_input.a, 42855u, 4294967295u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) & vec4<u32>(u_input.a, u_input.a, 29784u, 45894u))) % 32u), Struct_2(func_2().a.a, _wgslsmith_f_op_vec2_f32(func_3(!(!vec2<bool>(true, global0.a.x)), u_input.a, func_2().a.a))), firstLeadingBit(~select(vec2<i32>(-49089i, 63566i), vec2<i32>(-2147483647i, 51729i), false)) | vec2<i32>(abs(reverseBits(2147483647i)), ~(i32(-1i) * -11022i)), Struct_2(func_2().a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(28467u, 16u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], -1311f), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], -989f))))));
    var var_1 = _wgslsmith_f_op_f32(-1944f * 465f);
    var var_2 = abs(firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(23112u, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(21150u, 35243u), ~vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)))));
    var_1 = -484f;
    var_1 = _wgslsmith_div_f32(-144f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~countOneBits(0u), 16u)]));
    var var_3 = -(-(~select(-43811i, 1i, true)) | (1i << (firstLeadingBit(var_2.x >> (u_input.a % 32u)) % 32u)));
    let var_4 = Struct_3(Struct_2(func_5(~u_input.a, var_0.a, _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(1960i, -2147483647i)), vec2<i32>(24617i, -892i)), Struct_2(func_2().a.a, _wgslsmith_f_op_vec2_f32(-var_0.a.b))).a.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(3723u, 16u)] - 1018f)), -166f)));
    let var_5 = var_4.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -8582i), vec2<u32>(_wgslsmith_mult_u32(var_2.x, var_2.x | _wgslsmith_add_u32(u_input.a, var_2.x)), ~(~u_input.a | 24420u)), _wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 20987i, 2147483647i), vec3<i32>(-24726i, -1i, 0i)), 29431i), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-11049i, -1i, -1i), vec3<i32>(41422i, 36090i, 52788i)), -2147483647i) << (vec2<u32>(var_2.x, max(var_2.x, var_2.x)) % vec2<u32>(32u))), vec4<u32>(min(1u, 1u), _wgslsmith_clamp_u32(~(~var_2.x), reverseBits(46383u), var_2.x), _wgslsmith_add_u32(select(31640u, min(0u, u_input.a), any(vec2<bool>(false, false))), _wgslsmith_div_u32(var_2.x, 52008u)), 31431u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(104f, var_4.a.b.x, var_4.a.b.x, 1000f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_2.x, 16u)], var_0.a.b.x, var_4.a.b.x, var_4.a.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.b.x, var_0.a.b.x, global1[_wgslsmith_index_u32(var_2.x, 16u)], -268f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.a, 16u)], -590f, var_4.a.b.x)) * vec4<f32>(var_4.a.b.x, 240f, var_4.a.b.x, 195f)))));
}

