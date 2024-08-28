struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(0u, 1u, 1u, 5811u, 66376u, 43313u, 0u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>) -> vec3<u32> {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1f))));
    var var_1 = Struct_1(countOneBits(arg_0.zw), arg_0.x, global0[_wgslsmith_index_u32(abs(u_input.a.x), 7u)]);
    global0 = array<u32, 7>();
    return ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, 0u) | (vec3<u32>(4294967295u, 22922u, global0[_wgslsmith_index_u32(var_1.c, 7u)]) ^ vec3<u32>(u_input.a.x, 0u, u_input.a.x)), vec3<u32>(1u ^ var_1.c, select(25533u, 0u, true), ~22733u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>) -> vec2<i32> {
    global0 = array<u32, 7>();
    let var_0 = _wgslsmith_dot_vec3_u32(func_2(~firstTrailingBit(firstTrailingBit(vec4<i32>(0i, 2147483647i, -26052i, -2147483647i)))), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, countOneBits(min(global0[_wgslsmith_index_u32(30838u, 7u)], 13577u)), abs(1u)), arg_1));
    var var_1 = all(vec2<bool>(true, true));
    global0 = array<u32, 7>();
    var var_2 = 2147483647i;
    return arg_0.xz;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    return -(arg_2.a >> (vec2<u32>(~arg_0.c, ~u_input.a.x) % vec2<u32>(32u))) & arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_0 = -1910f;
    global0 = array<u32, 7>();
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 7u)], u_input.a.x), vec2<u32>(global0[_wgslsmith_index_u32(35148u, 7u)], 1u)), ~vec2<u32>(96337u, 71782u)), u_input.a) | ~global0[_wgslsmith_index_u32(~33898u, 7u)], ~0u, ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), ~(~vec3<u32>(48282u, 4294967295u, u_input.a.x))), abs(76652u));
    let var_2 = !(!vec2<bool>(!(var_0 < 1518f), true));
    var var_3 = abs(min(_wgslsmith_mult_vec2_i32(min(vec2<i32>(-21778i, -12517i), firstLeadingBit(vec2<i32>(0i, -8568i))), reverseBits(vec2<i32>(2147483647i, -2147483647i)) >> ((var_1.yw ^ var_1.yx) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(select(abs(vec2<i32>(0i, -1i)), func_1(vec3<i32>(-2147483647i, -27197i, 2147483647i), vec3<u32>(var_1.x, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 7u)], 7u)])), var_2), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 34989i), min(vec2<i32>(1i, 2147483647i) << (vec2<u32>(3949u, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(1i, 20868i)))));
    var_3 = firstTrailingBit(~select(vec2<i32>(var_3.x, _wgslsmith_div_i32(10964i, 1i)), func_3(Struct_1(vec2<i32>(2147483647i, var_3.x), var_3.x, 81668u), vec4<f32>(var_0, var_0, var_0, 2853f), Struct_1(vec2<i32>(-2147483647i, 2147483647i), 39599i, var_1.x), Struct_1(vec2<i32>(var_3.x, var_3.x), 1i, 0u)) | func_3(Struct_1(vec2<i32>(var_3.x, -25769i), var_3.x, 5601u), vec4<f32>(var_0, -1282f, -428f, -1000f), Struct_1(vec2<i32>(var_3.x, 504i), var_3.x, 4294967295u), Struct_1(vec2<i32>(-1i, var_3.x), -2676i, 1u)), all(vec2<bool>(false, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(~var_1.xyx)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-245f, var_0) * -796f))), var_0), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 * 894f), _wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1969f, 463f, 620f, 509f) - vec4<f32>(547f, 159f, -1701f, 2114f)), vec4<f32>(312f, var_0, var_0, var_0))) - vec4<f32>(120f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 * var_0)), var_0)), (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_1.x, var_1.x, u_input.a.x), vec4<u32>(13878u, 1u, 57746u, 0u), vec4<u32>(var_1.x, 4294967295u, 25388u, 6572u) | vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x)) >> (~(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, var_1.x)) % vec4<u32>(32u))) & vec4<u32>(u_input.a.x, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(var_1.x, 7u)], u_input.a.x), vec3<u32>(global0[_wgslsmith_index_u32(var_1.x, 7u)], 20874u, 1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(23796u, 7u)], var_1.x, 50158u, u_input.a.x), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], 4294967295u, 0u)), vec4<u32>(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], u_input.a.x))));
}

