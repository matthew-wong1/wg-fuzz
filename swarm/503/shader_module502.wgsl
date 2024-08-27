struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 8>;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<i32>(55853i, 38062i)), Struct_1(vec2<i32>(-1i, -1i)), Struct_1(vec2<i32>(0i, -49218i)), Struct_1(vec2<i32>(7153i, 77510i)), Struct_1(vec2<i32>(-18365i, 2147483647i)), Struct_1(vec2<i32>(-8694i, 0i)), Struct_1(vec2<i32>(2147483647i, -12533i)), Struct_1(vec2<i32>(-1624i, 11060i)), Struct_1(vec2<i32>(i32(-2147483648), 11019i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(40717i, 2147483647i)), Struct_1(vec2<i32>(-1i, -11086i)), Struct_1(vec2<i32>(2147483647i, 0i)), Struct_1(vec2<i32>(7381i, -1i)), Struct_1(vec2<i32>(52984i, 0i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-33838i, 53533i)), Struct_1(vec2<i32>(-6756i, -14511i)), Struct_1(vec2<i32>(28404i, 28695i)), Struct_1(vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<i32>(44837i, 1i)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<i32>(7102i, 113i)), Struct_1(vec2<i32>(18855i, 1483i)), Struct_1(vec2<i32>(13408i, 1i)), Struct_1(vec2<i32>(0i, -76671i)));

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    let var_0 = -1i;
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2386f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(409f)) + -840f) * arg_3.x)), _wgslsmith_div_f32(arg_2, 237f), false));
    var var_1 = var_0;
    let var_2 = ~vec2<u32>(~30360u, _wgslsmith_dot_vec3_u32(min(~vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(6499u, u_input.b, 56318u)), (vec3<u32>(u_input.b, u_input.b, 4294967295u) & vec3<u32>(4294967295u, 59867u, u_input.b)) ^ (vec3<u32>(23060u, u_input.b, u_input.b) ^ vec3<u32>(u_input.b, 99847u, u_input.b))));
    var var_3 = vec2<bool>(arg_0.x, !(arg_1.x != 0i));
    return _wgslsmith_f_op_f32(max(-1378f, _wgslsmith_f_op_f32(trunc(-1865f))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(~abs(vec2<i32>(arg_0.x, abs(arg_1.a.x))));
    let var_1 = 64506i;
    var var_2 = Struct_1(var_0.a);
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b << (26408u % 32u), u_input.b, u_input.b, ~4964u), _wgslsmith_mult_vec4_u32(vec4<u32>((u_input.b | 1u) ^ u_input.b, select(1u, 4294967295u, true), _wgslsmith_add_u32(u_input.b, 26541u), ~firstTrailingBit(u_input.b)), select(vec4<u32>(select(u_input.b, u_input.b, false), ~41891u, 50060u, ~u_input.b), max(vec4<u32>(u_input.b, 51907u, u_input.b, 4294967295u) >> (vec4<u32>(39787u, u_input.b, 54526u, u_input.b) % vec4<u32>(32u)), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u)), all(vec4<bool>(true, true, true, false)) || all(vec3<bool>(false, false, false)))));
    var var_4 = Struct_1(vec2<i32>(arg_2.a.x, -1909i << (1u % 32u)));
    return vec3<bool>(var_3.x <= 51901u, false || any(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), false);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<bool>) -> StorageBuffer {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~reverseBits(~arg_2) ^ 4294967295u, ~(1u | ~(31770u ^ u_input.b))), 27u)];
    global0 = _wgslsmith_f_op_f32(arg_1.x + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(countOneBits(countOneBits(vec4<u32>(arg_2, 42293u, 50090u, arg_2)))), firstLeadingBit(vec4<u32>(abs(u_input.b), u_input.b, _wgslsmith_add_u32(14106u, 56632u), u_input.b | u_input.b))), 8u)]);
    var var_1 = vec3<bool>(!(u_input.b >= 0u), true, true);
    var var_2 = 21876i;
    global0 = _wgslsmith_f_op_f32(227f * 1296f);
    return StorageBuffer(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2, u_input.b), 8u)])))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global2 = array<Struct_1, 27>();
    global1 = array<f32, 8>();
    var var_0 = firstTrailingBit(u_input.b);
    let var_1 = reverseBits(vec4<i32>(u_input.a, abs(-4157i), u_input.c, _wgslsmith_mult_i32(-6093i, u_input.c)));
    return func_4(-21528i & -u_input.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, false), var_1 | vec4<i32>(-2147483647i, 2147483647i, arg_0, u_input.a), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 8u)], _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2207f, global1[_wgslsmith_index_u32(u_input.b, 8u)], 1598f, -1058f))))), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(54015u, 8u)], -595f, true))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(525f, global1[_wgslsmith_index_u32(4294967295u, 8u)])))))), u_input.b, select(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), select(func_3(var_1 << (vec4<u32>(8487u, 4294967295u, 1u, 39141u) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(abs(u_input.b), 27u)], Struct_1(var_1.yx)), vec3<bool>(true, all(vec4<bool>(true, false, true, true)), true), vec3<bool>(all(vec2<bool>(true, true)), true, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 8>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_clamp_i32(firstTrailingBit(~(~u_input.c)), u_input.a, -2147483647i));
}

