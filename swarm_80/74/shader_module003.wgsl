struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(4382i, -1000f), Struct_1(-35138i, 1252f), Struct_1(16993i, 456f), Struct_1(-73998i, 589f), Struct_1(31608i, 987f), Struct_1(45991i, 195f), Struct_1(2147483647i, -973f), Struct_1(i32(-2147483648), -552f), Struct_1(2147483647i, -680f), Struct_1(-1i, 520f), Struct_1(2147483647i, 1128f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = ~_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, ~u_input.a), -u_input.a);
    let var_1 = arg_3.a;
    global0 = array<Struct_1, 11>();
    var var_2 = Struct_1(~arg_0.a, _wgslsmith_f_op_f32(-arg_3.b));
    var var_3 = _wgslsmith_mod_u32(~1u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(64135u, 1u, 30784u), ~vec3<u32>(63225u, 9235u, 100862u)), 104284u));
    return 1u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    global0 = array<Struct_1, 11>();
    var var_0 = any(vec2<bool>(true, true));
    let var_1 = vec2<i32>(countOneBits(u_input.a.x), -select(_wgslsmith_sub_i32(u_input.a.x, 2147483647i), 22880i, false)) & vec2<i32>(1i, _wgslsmith_add_i32(arg_1.a, -2147483647i));
    var_0 = false;
    global0 = array<Struct_1, 11>();
    return max(vec4<u32>(11744u, firstTrailingBit(select(0u, 0u, true)) >> (0u % 32u), abs(34152u), abs(~7535u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(~57388u, 0u >> (0u % 32u), func_2(Struct_1(u_input.a.x, -1033f), Struct_1(-2716i, arg_0.b), arg_1, arg_0), ~27952u), vec4<u32>(1u, 1u, 1u, 1u)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = firstLeadingBit(~(~vec3<u32>(4294967295u, 4294967295u ^ arg_0, firstTrailingBit(arg_0))));
    let var_1 = global0[_wgslsmith_index_u32(~var_0.x, 11u)];
    let var_2 = ~(func_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_2(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(2341u, 11u)], Struct_1(0i, 264f), global0[_wgslsmith_index_u32(var_0.x, 11u)]), arg_0 >> (0u % 32u)), 11u)], global0[_wgslsmith_index_u32(select(~1u, countOneBits(56934u), any(vec3<bool>(true, false, true))), 11u)], _wgslsmith_sub_i32(36155i << (var_0.x % 32u), firstTrailingBit(u_input.a.x))) ^ ((~vec4<u32>(12059u, 1u, 0u, 0u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(77439u, 4294967295u, var_0.x, 67862u), vec4<u32>(0u, var_0.x, 134841u, arg_0), vec4<u32>(var_0.x, 1u, 4294967295u, arg_0)) % vec4<u32>(32u))) | countOneBits(vec4<u32>(arg_0, arg_0, var_0.x, arg_0))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.b), 1614f, _wgslsmith_f_op_f32(-860f - 1237f), -1105f));
    let var_4 = u_input.a.yz & _wgslsmith_div_vec2_i32(u_input.a.zz, u_input.a.xy);
    return global0[_wgslsmith_index_u32(1u, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(902f)) - 1396f);
    let var_1 = func_1(_wgslsmith_mod_u32(max(73887u, 1u), 58317u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(448f, var_0)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-376f, -1332f), vec2<f32>(var_1.b, -788f))), vec2<f32>(var_0, 363f))))))), _wgslsmith_clamp_vec3_i32(max(_wgslsmith_clamp_vec3_i32(u_input.a, reverseBits(vec3<i32>(-2147483647i, 0i, -22438i)), ~u_input.a), max(vec3<i32>(15655i, 6087i, 1i), reverseBits(u_input.a))), _wgslsmith_add_vec3_i32(vec3<i32>(min(-32150i, u_input.a.x), firstLeadingBit(var_1.a), ~(-1i)), ~u_input.a), u_input.a));
}

