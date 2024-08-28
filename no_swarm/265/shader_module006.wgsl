struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: array<vec3<u32>, 7>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(7863u, 52419u, 10826u, 49607u), 18238i, 0i);

var<private> global3: array<bool, 21>;

var<private> global4: array<u32, 22> = array<u32, 22>(58020u, 1u, 1u, 0u, 4294967295u, 0u, 1u, 15080u, 60896u, 0u, 138826u, 4294967295u, 4294967295u, 4294967295u, 0u, 103630u, 0u, 999u, 1u, 25685u, 0u, 18042u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = ~(~u_input.b);
    var var_1 = arg_1;
    var var_2 = arg_1;
    global0 = array<vec2<bool>, 20>();
    global3 = array<bool, 21>();
    return vec3<u32>(0u, ~var_2.a.x, arg_1.a.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-140f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f - 909f))))), Struct_1(u_input.a << (~u_input.a % vec4<u32>(32u)), select(32121i, -29049i, true), abs(arg_0.x) & 0i));
    let var_1 = arg_1;
    let var_2 = vec3<bool>(all(vec2<bool>(false, global3[_wgslsmith_index_u32(~1u, 21u)])), false, any(select(global0[_wgslsmith_index_u32(firstLeadingBit(reverseBits(14153u)), 20u)], !select(vec2<bool>(false, global3[_wgslsmith_index_u32(15592u, 21u)]), vec2<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 22u)], 21u)], global3[_wgslsmith_index_u32(75053u, 21u)]), global3[_wgslsmith_index_u32(var_0.x, 21u)]), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~var_1.a.x), 21u)])));
    let var_3 = ~firstTrailingBit(73625u);
    let var_4 = vec2<u32>(global2.a.x, select(firstLeadingBit(arg_1.a.x), arg_1.a.x, global3[_wgslsmith_index_u32(1u, 21u)])) >> (reverseBits(u_input.a.zx & global2.a.xx) % vec2<u32>(32u));
    return Struct_1(~arg_1.a, -2147483647i, 0i);
}

fn func_3() -> f32 {
    global4 = array<u32, 22>();
    global4 = array<u32, 22>();
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-104f, -527f))))))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 7>();
    var var_0 = func_1(~_wgslsmith_add_vec3_i32(u_input.b, -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -32481i, 2147483647i), vec3<i32>(0i, u_input.b.x, u_input.b.x))), Struct_1(~firstLeadingBit(global2.a) ^ u_input.a, -abs(max(u_input.b.x, global2.c)), u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    let var_2 = vec3<i32>(2147483647i >> (~abs(func_2(270f, Struct_1(vec4<u32>(global4[_wgslsmith_index_u32(global2.a.x, 22u)], global4[_wgslsmith_index_u32(global2.a.x, 22u)], u_input.a.x, var_0.a.x), global2.b, var_0.b)).x) % 32u), select((firstLeadingBit(var_0.c) >> (var_0.a.x % 32u)) | _wgslsmith_sub_i32(38251i, u_input.b.x), i32(-1i) * -_wgslsmith_clamp_i32(var_0.b, -2147483647i, 62094i), true), -6679i >> ((_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(~global2.a.x, 7u)], ~vec3<u32>(var_0.a.x, global4[_wgslsmith_index_u32(global2.a.x, 22u)], global2.a.x)) | u_input.a.x) % 32u));
    global2 = Struct_1(_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(23138u, 4294967295u, 30570u, global4[_wgslsmith_index_u32(var_0.a.x, 22u)]) ^ min(var_0.a, u_input.a), min(vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(0u, 22u)], 58119u, 4294967295u), u_input.a), false), abs(global2.a << (global2.a % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(var_0.a, reverseBits(~vec4<u32>(64279u, global4[_wgslsmith_index_u32(u_input.a.x, 22u)], var_0.a.x, 70052u)))), abs(_wgslsmith_div_i32(u_input.b.x, i32(-1i) * -40995i)), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 53087u, 23433u), global2.a.xyy), _wgslsmith_f_op_f32(1000f - -1657f));
}

