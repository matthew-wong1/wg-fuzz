struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30>;

var<private> global1: array<f32, 11> = array<f32, 11>(1500f, -313f, 799f, 1871f, 670f, -656f, -1128f, -604f, -1000f, -200f, -1763f);

var<private> global2: array<Struct_4, 23>;

var<private> global3: bool = false;

var<private> global4: array<u32, 8> = array<u32, 8>(4294967295u, 1u, 62830u, 0u, 4294967295u, 4294967295u, 0u, 21423u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_5 {
    return Struct_5(-43057i);
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = func_2(global1[_wgslsmith_index_u32(85164u, 11u)], -(~54523i));
    var var_1 = !(!(select(any(vec4<bool>(false, false, false, true)), true, true) & false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-831f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-511f, -208f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(5274u, 11u)]))))));
    global0 = array<vec3<u32>, 30>();
    var var_3 = -((vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, arg_0, -1i), vec3<i32>(0i, arg_0, 20392i), vec3<i32>(-2147483647i, 0i, var_0.a))) >> (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, ~11781u), reverseBits(_wgslsmith_sub_u32(4294967295u, 9687u))), 30u)] % vec3<u32>(32u)));
    return global4[_wgslsmith_index_u32(u_input.b.x, 8u)];
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    global3 = arg_0.x;
    let var_0 = vec2<i32>(-(-6782i & max(-5238i, u_input.c)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-37220i, 17393i), vec2<i32>(u_input.a, u_input.a)) | _wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(11265i, u_input.a)), vec2<i32>(0i, -2147483647i)), ~(-(~vec2<i32>(67263i, u_input.a)))));
    global3 = false;
    var var_1 = 203f;
    let var_2 = func_2(1000f, ~countOneBits(_wgslsmith_add_i32(1i, u_input.c ^ var_0.x)));
    return countOneBits(-10785i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.b.zx, vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)], 14867u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))), ~vec2<u32>(0u, u_input.b.x)), vec2<u32>(20039u, _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(u_input.b.x, 8u)], _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)))), 30u)];
    let var_1 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(u_input.b.x, 0u, u_input.b.x), firstLeadingBit(vec3<u32>(0u, 58755u, 0u))), vec3<u32>(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(1u, 8u)], 42828u), global4[_wgslsmith_index_u32(var_0.x, 8u)] >> (global4[_wgslsmith_index_u32(var_0.x, 8u)] % 32u), ~var_0.x)), 28515u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(64120u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 4294967295u, 11633u), select(u_input.b, vec4<u32>(6091u, 17604u, u_input.b.x, 0u), true)), _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(56573u, var_0.x, var_0.x, u_input.b.x))), func_1(u_input.c));
    global1 = array<f32, 11>();
    var var_2 = max(select(~vec4<i32>(2147483647i, 11400i, func_3(vec3<bool>(true, false, false)), ~u_input.a), firstTrailingBit(~(-vec4<i32>(u_input.c, u_input.c, 77950i, -52371i))), any(vec3<bool>(true, false, false)) & true), ~max(-abs(vec4<i32>(45449i, 1i, -1i, -4119i)), vec4<i32>(u_input.c, -24427i, i32(-1i) * -1i, 1i)));
    global3 = u_input.b.x < ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), var_1.zw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(var_2.ww, ~vec2<i32>(_wgslsmith_sub_i32(var_2.x, 1i), 17890i), firstLeadingBit(var_2.zz)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(var_1.x, 11u)]))), _wgslsmith_f_op_f32(min(1703f, 409f))), u_input.b.x);
}

