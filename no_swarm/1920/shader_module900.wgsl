struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(1i, 31877i, -52546i, 57171i, 0i, -1819i, 1i, 1i, 23225i, -1i, -30128i, 1i, -1i, 0i, -30788i, i32(-2147483648), -10606i);

var<private> global1: array<vec3<bool>, 13>;

var<private> global2: array<Struct_1, 5>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = abs(arg_1.a);
    var var_1 = global2[_wgslsmith_index_u32(~(~(~4294967295u)), 5u)];
    global2 = array<Struct_1, 5>();
    return Struct_1(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(57904u, arg_2, 24676u, arg_2)), vec4<u32>(var_0.x, ~(~arg_2), 28131u, 71047u), arg_1.a), _wgslsmith_f_op_f32(-var_1.b));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = array<Struct_1, 5>();
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(countOneBits(arg_0.a), _wgslsmith_mod_vec4_u32(arg_0.a, vec4<u32>(_wgslsmith_mod_u32(arg_0.a.x, arg_0.a.x), 0u, 1u, 46804u))), arg_0.b);
    let var_1 = u_input.b.zz;
    global0 = array<i32, 17>();
    var_0 = arg_0;
    return 901f;
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(~(0u << (0u % 32u)), 5u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)))), func_1(-625f, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1309f) * -474f), global2[_wgslsmith_index_u32(min(~1u, 22214u), 5u)], ~1u), 1u), ~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(5857u, 65003u), vec2<u32>(1u, 4294967295u)), ~1u, 76977u));
    var var_1 = global0[_wgslsmith_index_u32(reverseBits(~(~var_0.a.x)), 17u)];
    global1 = array<vec3<bool>, 13>();
    let var_2 = max(_wgslsmith_clamp_vec2_i32(u_input.a.yx, select(u_input.b.zw >> (var_0.a.xy % vec2<u32>(32u)), min(u_input.a.zy, vec2<i32>(-16868i, global0[_wgslsmith_index_u32(4294967295u, 17u)])), any(vec4<bool>(false, true, false, true))) & firstTrailingBit(-vec2<i32>(10110i, global0[_wgslsmith_index_u32(35173u, 17u)])), u_input.b.zw), vec2<i32>(select(-15655i, _wgslsmith_div_i32(u_input.a.x, 2147483647i), var_0.a.x != var_0.a.x), countOneBits(firstLeadingBit(-31647i))) & _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), -u_input.a.yy));
    var var_3 = var_0;
    return _wgslsmith_add_u32(14063u, var_3.a.x << (_wgslsmith_mod_u32(~(~var_3.a.x), (var_0.a.x & var_0.a.x) << (~43091u % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1001f, -1075f)) - -1424f) - -308f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-149f)))))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u << (0u % 32u), 1u, firstLeadingBit(62828u), firstLeadingBit(71147u)), ~(~vec4<u32>(4294967295u, 6088u, 78369u, 1u))), _wgslsmith_div_u32(1u, 19583u)), 5u)], 0u);
    global1 = array<vec3<bool>, 13>();
    var var_1 = var_0;
    let var_2 = !global1[_wgslsmith_index_u32(var_1.a.x, 13u)];
    let var_3 = var_0.b;
    var var_4 = abs(-(~u_input.c.xx));
    var var_5 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, var_1.b) + _wgslsmith_f_op_f32(sign(var_1.b)))) - var_0.b), var_0, ((~12726u << (var_1.a.x % 32u)) >> (~var_1.a.x % 32u)) | 0u);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1475f, var_5.b)), _wgslsmith_f_op_f32(func_1(-947f, Struct_1(vec4<u32>(12u, var_0.a.x, 0u, 0u), 1458f), 0u).b + _wgslsmith_f_op_f32(-var_3)))), var_1.a.x);
}

