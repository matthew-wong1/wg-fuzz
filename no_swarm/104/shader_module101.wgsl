struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 16> = array<bool, 16>(false, false, true, false, false, true, false, true, true, true, true, true, true, true, false, true);

var<private> global2: vec2<f32>;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(12769u, 4294967295u), vec2<u32>(0u, 13245u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = ~_wgslsmith_clamp_i32(u_input.a, 36436i, u_input.a);
    global1 = array<bool, 16>();
    let var_1 = Struct_1(global0.b, vec2<u32>(_wgslsmith_div_u32(68443u, _wgslsmith_mult_u32(1u, 4294967295u)), ~select(global3.b.x >> (global3.a.x % 32u), 49378u, global1[_wgslsmith_index_u32(global0.a.x, 16u)])));
    var var_2 = Struct_1(~vec2<u32>(_wgslsmith_add_u32(~arg_1.a.x, 1u), _wgslsmith_dot_vec2_u32(abs(global3.b), var_1.b)), vec2<u32>(_wgslsmith_div_u32(61682u ^ arg_1.b.x, firstTrailingBit(116221u)) | _wgslsmith_add_u32(arg_1.a.x, _wgslsmith_clamp_u32(74244u, global0.b.x, arg_1.b.x)), _wgslsmith_dot_vec4_u32(select(~vec4<u32>(35065u, 1u, var_1.a.x, global3.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 28666u, arg_1.b.x, 27856u), vec4<u32>(0u, global3.a.x, global3.a.x, 1u)), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(global1[_wgslsmith_index_u32(41119u, 16u)], arg_0, false, global1[_wgslsmith_index_u32(var_1.a.x, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(43894u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], true, arg_0))), min(vec4<u32>(8943u, global3.a.x, 1u, global3.b.x), vec4<u32>(arg_1.a.x, 77968u, 40190u, global3.a.x)) >> (countOneBits(vec4<u32>(var_1.a.x, arg_1.b.x, 1u, arg_1.a.x)) % vec4<u32>(32u)))));
    let var_3 = -(~_wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(u_input.a), reverseBits(2147483647i)), vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), i32(-1i) * -929i)));
    return -_wgslsmith_dot_vec2_i32(var_3, vec2<i32>(-1i) * -var_3) & (~0i >> (var_2.a.x % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<bool>(-u_input.a == func_3(true, Struct_1(global0.b, select(global0.b, vec2<u32>(global0.b.x, global3.a.x), true)), global2.x), !(!(true & any(vec2<bool>(true, global1[_wgslsmith_index_u32(global0.a.x, 16u)])))));
    let var_1 = vec2<i32>(~_wgslsmith_mult_i32(-2147483647i, 1i), -(-(~(-1i)) >> (1u % 32u)));
    global2 = vec2<f32>(global2.x, global2.x);
    let var_2 = firstLeadingBit(79593u) == abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.x, 0u, 4294967295u, 54740u) >> (vec4<u32>(global0.b.x, 14719u, global3.a.x, 0u) % vec4<u32>(32u)), countOneBits(vec4<u32>(4294967295u, 1u, 16865u, global0.a.x))), ~(global0.b.x & 3092u)));
    global0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(global3.a.x, global0.a.x) >> (global0.b % vec2<u32>(32u)), max(global3.b, ~global0.b)) ^ global3.a, _wgslsmith_div_vec2_u32(global3.a, global3.b));
    return Struct_1(_wgslsmith_div_vec2_u32(firstLeadingBit(~select(global3.a, global3.b, vec2<bool>(var_2, true))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global3.a.x), vec2<u32>(91634u, 21353u))), _wgslsmith_div_vec2_u32(global0.a, ~global0.a) | select(vec2<u32>(firstTrailingBit(4294967295u), ~1u), ~global3.a, var_0));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec2<u32> {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-978f))), global2.x);
    let var_0 = ~_wgslsmith_sub_u32(~(countOneBits(global0.a.x) >> (~30034u % 32u)), ~reverseBits(global3.b.x));
    global3 = func_2();
    var var_1 = Struct_1(global0.b, vec2<u32>(70659u, ~25176u));
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(364f, _wgslsmith_div_f32(573f, arg_1.x)), arg_1.xx, !(!arg_0))), arg_1.yx)), arg_1.zw);
    return vec2<u32>(15918u, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec2<u32>(~(~33150u), global3.b.x), ~(~global0.a) ^ firstTrailingBit(vec2<u32>(1u, 1u)), (_wgslsmith_f_op_f32(select(global2.x, global2.x, global1[_wgslsmith_index_u32(31939u, 16u)])) <= _wgslsmith_f_op_f32(select(global2.x, global2.x, false))) & (28150i > _wgslsmith_mod_i32(-11680i, u_input.a))), global3.a);
    global0 = var_0;
    global0 = Struct_1(_wgslsmith_add_vec2_u32(firstTrailingBit(global3.a), ~func_1(any(vec3<bool>(global1[_wgslsmith_index_u32(global3.b.x, 16u)], false, false)), vec4<f32>(global2.x, -874f, global2.x, 813f))), global3.b);
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.x + 1983f), _wgslsmith_f_op_f32(global2.x + 699f)) * vec2<f32>(_wgslsmith_f_op_f32(global2.x * global2.x), 1465f))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(countOneBits(_wgslsmith_mod_u32(global0.a.x, var_1.b.x)), _wgslsmith_sub_u32(global0.a.x, ~var_1.a.x), func_1(global1[_wgslsmith_index_u32(46437u, 16u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1304f, global2.x, 738f, 170f), vec4<f32>(-117f, var_2.x, var_2.x, global2.x), vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(88258u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], false)))).x), vec3<u32>(17333u, var_1.a.x, min(func_1(true, vec4<f32>(-219f, global2.x, 782f, -718f)).x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 1u, var_1.b.x), vec3<u32>(var_0.a.x, var_0.b.x, 1u))))), vec2<f32>(global2.x, _wgslsmith_f_op_f32(round(-2412f))));
}

