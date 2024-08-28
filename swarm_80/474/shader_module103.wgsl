struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

var<private> global2: bool;

var<private> global3: array<vec3<i32>, 26>;

var<private> global4: array<Struct_1, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> i32 {
    let var_0 = arg_0.x;
    global4 = array<Struct_1, 19>();
    let var_1 = Struct_3(1i, arg_2.b, reverseBits(arg_2.c));
    let var_2 = (arg_2.b.c & 2147483647i) == (firstTrailingBit(_wgslsmith_div_i32(-1i >> (var_1.b.b.x % 32u), abs(arg_1))) ^ (-2147483647i ^ (arg_1 | min(arg_1, arg_2.a))));
    var var_3 = arg_0;
    return -abs(0i ^ arg_2.c);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: bool) -> vec2<u32> {
    var var_0 = Struct_3(u_input.b.x, Struct_1(arg_2, firstTrailingBit(arg_0.b.b), _wgslsmith_dot_vec3_i32(abs(firstLeadingBit(global3[_wgslsmith_index_u32(u_input.c, 26u)])), ~global3[_wgslsmith_index_u32(abs(65146u), 26u)]), _wgslsmith_f_op_f32(-2265f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1000f)), arg_1, false))), select(vec3<bool>(true, arg_2, !arg_2), arg_0.b.e, !select(arg_0.b.e, arg_0.b.e, arg_0.b.e))), countOneBits((arg_0.c ^ _wgslsmith_mult_i32(1i, arg_0.c)) | firstLeadingBit(max(u_input.a, u_input.a))));
    var var_1 = ~abs(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.b.wxw | vec3<i32>(-1i, 16538i, var_0.b.c), ~u_input.b.zxx), i32(-1i) * -6848i));
    let var_2 = firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, ~4294967295u, 13041u, _wgslsmith_sub_u32(5330u, u_input.c)), firstLeadingBit(~vec4<u32>(47145u, 4294967295u, 11374u, 0u))), ~(~vec4<u32>(u_input.c, var_0.b.b.x, 59896u, arg_0.b.b.x)), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.c, 0u, 1u, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.b.b.x, u_input.c, 74371u), vec4<u32>(u_input.c, 30314u, 5989u, u_input.c))) | min(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 42707u, 4294967295u, 1u), vec4<u32>(var_0.b.b.x, 62540u, u_input.c, 4294967295u), vec4<u32>(arg_0.b.b.x, 13893u, 1u, var_0.b.b.x)), firstLeadingBit(vec4<u32>(u_input.c, u_input.c, 70937u, 22055u)))));
    let var_3 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(566f * arg_1)), all(select(vec2<bool>(false, arg_0.b.e.x), vec2<bool>(var_0.b.e.x, arg_2), var_0.b.e.xx))))));
    var var_4 = ~(vec3<i32>(abs(_wgslsmith_mod_i32(arg_0.c, u_input.b.x)), _wgslsmith_div_i32(u_input.b.x, arg_0.a) >> (58922u % 32u), -(~var_0.b.c)) << (countOneBits(~var_2.wwz ^ abs(var_2.xxx)) % vec3<u32>(32u)));
    return vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(~6098u, var_0.b.b.x, _wgslsmith_add_u32(61201u, arg_0.b.b.x)), 0u), var_0.b.b.x);
}

fn func_2(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = arg_0.a;
    let var_1 = reverseBits(~u_input.a);
    return StorageBuffer(_wgslsmith_add_u32(u_input.c, abs(u_input.c)), _wgslsmith_add_vec2_u32(vec2<u32>(~abs(4294967295u), _wgslsmith_dot_vec2_u32(func_3(Struct_3(var_1, Struct_1(arg_0.b.x, vec2<u32>(u_input.c, 73670u), -1i, 796f, arg_0.b.wzw), var_1), arg_0.a.x, false), _wgslsmith_div_vec2_u32(vec2<u32>(31353u, u_input.c), vec2<u32>(u_input.c, u_input.c)))), select(~vec2<u32>(42930u, 41202u), ~vec2<u32>(4294967295u, 1u), !(!arg_0.b.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 19>();
    let var_0 = -594f;
    var var_1 = ~func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1000f, -618f, var_0))), vec4<f32>(-875f, _wgslsmith_f_op_f32(round(1134f)), -1000f, -151f)), 23799i, Struct_3(_wgslsmith_div_i32(~u_input.a, 0i << (u_input.c % 32u)), Struct_1(false, _wgslsmith_mult_vec2_u32(vec2<u32>(26263u, u_input.c), vec2<u32>(u_input.c, u_input.c)), u_input.b.x, _wgslsmith_f_op_f32(-var_0), vec3<bool>(true, true, true)), ~u_input.b.x), ~(~14345u));
    let x = u_input.a;
    s_output = func_2(Struct_2(vec3<f32>(677f, 1201f, var_0), vec4<bool>(!all(vec3<bool>(true, true, true)), var_0 <= var_0, !any(vec3<bool>(false, false, false)), any(vec4<bool>(true, false, false, false)))));
}

