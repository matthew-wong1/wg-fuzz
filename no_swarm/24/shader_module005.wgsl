struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<f32> = vec3<f32>(673f, 655f, 807f);

var<private> global2: array<vec2<u32>, 17>;

var<private> global3: u32 = 28910u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32) -> bool {
    global2 = array<vec2<u32>, 17>();
    let var_0 = Struct_1(u_input.b);
    global3 = 29760u;
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(u_input.a.x), _wgslsmith_dot_vec3_i32(select(-global0.yyz, global0.zyw, vec3<bool>(true, true, false)), ~global0.yzw), countOneBits(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-15406i, var_0.a, arg_0)), -vec3<i32>(-61575i, var_0.a, 2147483647i))), _wgslsmith_sub_i32(var_0.a, ~1i) << (~min(14097u, 4294967295u) % 32u)), min(vec4<i32>(var_0.a, u_input.a.x, global0.x, _wgslsmith_clamp_i32(-18087i ^ var_0.a, -global0.x, global0.x)), -countOneBits(vec4<i32>(1i, u_input.b, var_0.a, arg_0))));
    var var_2 = _wgslsmith_f_op_f32(-global1.x) > global1.x;
    return true;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: i32) -> f32 {
    var var_0 = global0.xzy;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1008f) - _wgslsmith_f_op_f32(floor(global1.x)));
    var var_2 = Struct_1(19210i);
    let var_3 = select(_wgslsmith_div_vec3_u32(select(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0, 0u), vec3<u32>(arg_0, arg_0, arg_0)), vec3<u32>(arg_0, arg_0, arg_0) & vec3<u32>(31437u, 1u, arg_0)), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, arg_0, 40146u), select(vec3<u32>(57373u, 13893u, arg_0), vec3<u32>(0u, 76292u, arg_0), vec3<bool>(true, false, true))), all(vec2<bool>(true, false))), firstLeadingBit(~vec3<u32>(110319u, arg_0, 4294967295u) >> (firstTrailingBit(vec3<u32>(arg_0, arg_0, arg_0)) % vec3<u32>(32u)))), vec3<u32>(arg_0, _wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(arg_0, 17u)], vec2<u32>(arg_0, arg_0) ^ vec2<u32>(arg_0, arg_0)) >> (~1u % 32u), 4294967295u), vec3<bool>(true, true, func_3(var_2.a)));
    let var_4 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(false, true), !select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), true)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(select(false, false, false), all(vec4<bool>(false, false, true, true))), vec2<bool>(global1.x < global1.x, func_3(var_2.a))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), _wgslsmith_sub_i32(global0.x, -1i) == -19169i), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false))), !(!vec2<bool>(select(true, false, true), all(vec3<bool>(true, true, false)))));
    return _wgslsmith_f_op_f32(1097f - global1.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_div_i32(arg_1.a, global0.x);
    var_0 = 25531i;
    let var_1 = 1u;
    global2 = array<vec2<u32>, 17>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-196f, global1.x, _wgslsmith_f_op_f32(func_2(var_1 >> (var_1 % 32u), vec2<f32>(-737f, global1.x), -global0.x))), vec3<f32>(_wgslsmith_f_op_f32(1857f - _wgslsmith_f_op_f32(select(-1000f, 522f, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.x)), -1237f), _wgslsmith_f_op_f32(func_2(countOneBits(23576u), vec2<f32>(-113f, 372f), global0.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, 2437f, -1186f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(405f, 701f, -1000f))))));
    return min(~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 1u, var_1, var_1), vec4<u32>(1u, 4294967295u, var_1, 83165u)), ~(var_1 << (1u % 32u)), ~var_1, var_1), abs(~select(vec4<u32>(1u, 26008u, var_1, 0u), vec4<u32>(18751u, 0u, var_1, 0u), vec4<bool>(false, false, false, true)) ^ reverseBits(~vec4<u32>(1u, 44093u, 4294967295u, 84883u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~(~func_1(Struct_1(global0.x), Struct_1(u_input.a.x))), abs(vec4<u32>(1u, ~0u, ~49348u, abs(6733u)))), ~(~abs(vec4<u32>(4294967295u, 0u, 24866u, 42170u))) << (_wgslsmith_sub_vec4_u32(~func_1(Struct_1(-61564i), Struct_1(-8711i)), ~(~vec4<u32>(4090u, 1u, 80644u, 1u))) % vec4<u32>(32u)));
    global2 = array<vec2<u32>, 17>();
    global0 = firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, global0.x, -11227i, 49788i) ^ vec4<i32>(_wgslsmith_div_i32(u_input.a.x, 20995i), u_input.a.x, global0.x, -u_input.b), ~min(vec4<i32>(u_input.b, 1i, 33416i, global0.x) ^ vec4<i32>(1i, -2147483647i, -14397i, -2147483647i), ~vec4<i32>(u_input.b, 833i, 58741i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-1281f)));
}

