struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: f32;

var<private> global2: f32;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 1u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> u32 {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, _wgslsmith_mult_u32(23207u, u_input.d)), max(~_wgslsmith_div_vec2_u32(~u_input.e.xy, u_input.c.xz), u_input.a.zy)), 22u)];
    global0 = array<f32, 22>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -123f);
    global1 = 1000f;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-222f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(global3.x, 22u)], global0[_wgslsmith_index_u32(global3.x, 22u)])))) * _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1000f))))))));
    return _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(1u, (global3.x << (4294967295u % 32u)) | 4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a) ^ reverseBits(1u)), min(global3.x, min(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, global3.x), global3.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<u32>(u_input.d, min(_wgslsmith_clamp_u32(func_3(2147483647i), u_input.e.x, _wgslsmith_sub_u32(u_input.d, 4294967295u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.e, u_input.a.yzy), vec3<u32>(46778u, global3.x, 4294967295u))), countOneBits(global3.x)) >> (select(~vec3<u32>(~1u, ~16526u, 0u), u_input.e, vec3<bool>(true, false, true)) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -568f)));
    let var_2 = ~(0u ^ ~countOneBits(_wgslsmith_clamp_u32(64247u, global3.x, u_input.a.x)));
    var var_3 = Struct_1(_wgslsmith_clamp_vec3_i32(-(abs(arg_2.wyx) | vec3<i32>(1i, 43750i, 31805i)), select(-vec3<i32>(arg_2.x, arg_2.x, -42948i), arg_2.zyw, vec3<bool>(true, true, true)) | max(arg_2.www, vec3<i32>(arg_2.x, u_input.b, u_input.b) << (vec3<u32>(u_input.c.x, 0u, var_2) % vec3<u32>(32u))), arg_2.yxw), var_0.xy);
    var var_4 = Struct_3(Struct_1(select(~(-vec3<i32>(arg_2.x, -37349i, -18655i)), countOneBits(select(var_3.a, var_3.a, false)), vec3<bool>(any(vec2<bool>(true, true)), true, 51005i == u_input.b)), firstTrailingBit(vec2<u32>(35920u, arg_1))), Struct_1(select(var_3.a, vec3<i32>(firstLeadingBit(arg_2.x), -2147483647i, var_3.a.x >> (21944u % 32u)), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, false))), var_0.yx ^ abs(u_input.c.yx)));
    return var_4.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> StorageBuffer {
    var var_0 = Struct_3(func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1455f, global0[_wgslsmith_index_u32(global3.x >> (u_input.c.x % 32u), 22u)], _wgslsmith_f_op_f32(sign(1318f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-957f, 304f, global0[_wgslsmith_index_u32(0u, 22u)]) * _wgslsmith_f_op_vec3_f32(vec3<f32>(883f, global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]) + vec3<f32>(-794f, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(global3.x, 22u)]))))), 31211u, select(~vec4<i32>(0i, arg_2.x, -30086i, 752i), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 66144i), vec4<i32>(2147483647i, arg_1.x, arg_1.x, u_input.b))), !(!vec4<bool>(false, arg_0.x, arg_0.x, true)))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(994f, -1648f, global0[_wgslsmith_index_u32(global3.x, 22u)])) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 122f, 960f) + vec3<f32>(-601f, -242f, 1566f))))), ~(19400u >> (_wgslsmith_add_u32(global3.x, global3.x) % 32u)), vec4<i32>(max(~arg_2.x, _wgslsmith_div_i32(arg_2.x, 1i)), -1i, -8322i, ~_wgslsmith_clamp_i32(arg_1.x, arg_1.x, arg_1.x))));
    var var_1 = -3604i;
    var var_2 = 0i;
    global3 = ~(~vec2<u32>(firstLeadingBit(0u), 78201u));
    var_1 = max(~(-2147483647i) ^ -func_2(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global3.x, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], 547f), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 193f)), ~global3.x, vec4<i32>(arg_1.x, -38104i, arg_2.x, var_0.a.a.x)).a.x, -arg_1.x);
    return StorageBuffer(~(~(~(~0u))), var_0.a.a.xz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1907f, global0[_wgslsmith_index_u32(u_input.a.x, 22u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-704f, global0[_wgslsmith_index_u32(var_0.b.b.x, 22u)]))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 22u)], global0[_wgslsmith_index_u32(u_input.d, 22u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)])), arg_0)), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global3.x, 22u)], -309f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1507f, global0[_wgslsmith_index_u32(0u, 22u)])))))), _wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.c.x, global3.x), ~global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, abs(30194i)), _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b, u_input.b & u_input.b), -(~(~vec2<i32>(u_input.b, 0i))), vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(-2147483647i, 19814i))));
    let x = u_input.a;
    s_output = func_1(vec2<bool>((~global3.x >> ((4294967295u << (global3.x % 32u)) % 32u)) != abs(_wgslsmith_dot_vec4_u32(vec4<u32>(56825u, 21678u, global3.x, 1u), vec4<u32>(0u, 6802u, 35554u, 40682u))), true), _wgslsmith_clamp_vec2_i32(abs(var_0), -vec2<i32>(countOneBits(var_0.x), 21982i), min(countOneBits(_wgslsmith_sub_vec2_i32(var_0, var_0)), var_0 | _wgslsmith_mult_vec2_i32(var_0, vec2<i32>(u_input.b, 73156i)))), vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(select(vec3<i32>(2147483647i, 2147483647i, var_0.x), vec3<i32>(2147483647i, u_input.b, -29443i), vec3<bool>(true, false, true)), -vec3<i32>(u_input.b, u_input.b, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, var_0.x, 1i), vec3<i32>(1i, 0i, u_input.b))));
}

