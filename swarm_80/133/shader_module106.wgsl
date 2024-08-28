struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_5) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.yy, countOneBits(max(arg_2.b.a.yx, vec2<u32>(arg_2.b.a.x, 10493u)) << (arg_1.yy % vec2<u32>(32u)))), ~arg_1.x), 17u)];
    let var_1 = u_input.b;
    var_0 = -1000f;
    global0 = array<f32, 17>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0, global0[_wgslsmith_index_u32(4294967295u, 17u)])))))));
    return 1085u;
}

fn func_2(arg_0: vec3<i32>) -> Struct_5 {
    var var_0 = true;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(1222f + _wgslsmith_f_op_f32(1022f * global0[_wgslsmith_index_u32(0u, 17u)])))))) > global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~max(vec2<u32>(u_input.e, 1u), ~vec2<u32>(u_input.e, u_input.d.x)), ~u_input.c.yw), 17u)];
    var var_1 = vec3<i32>(-1i, arg_0.x, u_input.b & (-1i << (u_input.e % 32u)));
    global0 = array<f32, 17>();
    let var_2 = _wgslsmith_clamp_u32(30279u, u_input.e, ~func_3(_wgslsmith_f_op_f32(-741f + _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 17u)]))), select(u_input.c.zxx, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 2005u), u_input.c.yzx, u_input.d.zyw), vec3<bool>(true, true, true)), Struct_2(arg_0.x >= -15361i, Struct_1(vec3<u32>(60307u, 32326u, 4294967295u), vec3<bool>(true, true, true)), vec4<bool>(true, true, true, true), firstLeadingBit(u_input.d.x)), Struct_5(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))));
    return Struct_5(vec3<bool>(true, true, true));
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_div_vec3_i32(select(~vec3<i32>(-25481i, u_input.b, 926i) ^ select(vec3<i32>(u_input.b, u_input.b, 13134i), vec3<i32>(u_input.b, u_input.b, -35981i), vec3<bool>(false, true, false)), vec3<i32>(~2147483647i, u_input.b, 33914i), vec3<bool>(true, true, true)) | abs(-_wgslsmith_sub_vec3_i32(vec3<i32>(37597i, 55196i, 27015i), vec3<i32>(u_input.b, -1i, 1i))), _wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, 0i, ~u_input.b), abs(vec3<i32>(_wgslsmith_add_i32(24781i, u_input.b), min(u_input.b, u_input.b), u_input.b | -11414i))));
    var var_1 = func_2(var_0 | firstTrailingBit(vec3<i32>(-36480i, 1i, ~u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1574u, 17u)] * global0[_wgslsmith_index_u32(1u, 17u)]), global0[_wgslsmith_index_u32(1u, 17u)]), global0[_wgslsmith_index_u32(u_input.d.x, 17u)])))));
    let var_3 = var_0.x;
    var_1 = Struct_5(var_1.a);
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(abs(1u), 17u)]))))), global0[_wgslsmith_index_u32(0u, 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1018f) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(22994u, 0u), vec2<u32>(u_input.d.x, u_input.c.x) ^ vec2<u32>(u_input.d.x, 1u)) ^ abs(72141u), 17u)]), _wgslsmith_f_op_f32(-1233f + global0[_wgslsmith_index_u32(39946u, 17u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 615f;
    var var_1 = !any(vec4<bool>(all(vec2<bool>(false, true)), true, !all(vec2<bool>(false, true)), true));
    var var_2 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(324f, global0[_wgslsmith_index_u32(~8330u, 17u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 17u)]), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 17u)])) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1771f, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(42473u, 17u)], global0[_wgslsmith_index_u32(u_input.d.x, 17u)]))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(u_input.e, 17u)], global0[_wgslsmith_index_u32(u_input.e, 17u)], 606f)))))));
}

