struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<f32, 8>;

var<private> global2: array<vec3<u32>, 23>;

var<private> global3: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true));

var<private> global4: array<u32, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~u_input.d.x, 8u)], global1[_wgslsmith_index_u32(0u, 8u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~72545u, 8u)] * -1454f) * global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d.x, 21717u, 65710u, u_input.a)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.a, global4[_wgslsmith_index_u32(1u, 8u)], 1u), vec4<u32>(11727u, 1u, 24397u, 0u))), 8u)])), u_input.c.xxx);
    global4 = array<u32, 8>();
    var var_1 = var_0.b.x;
    global1 = array<f32, 8>();
    global2 = array<vec3<u32>, 23>();
    return _wgslsmith_div_f32(-892f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~(~u_input.d.x), 8u)])));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_2(vec3<i32>((-u_input.c.x >> (~67438u % 32u)) & arg_0, u_input.b, arg_0), ~global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(45204u, ~(~global4[_wgslsmith_index_u32(48660u, 8u)]), ~_wgslsmith_dot_vec4_u32(vec4<u32>(64346u, 0u, global4[_wgslsmith_index_u32(u_input.a, 8u)], 6020u), vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 8u)], 41359u, 1u, 1u))), 8u)], Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.yw)))), vec3<i32>(u_input.c.x, -(u_input.c.x ^ arg_0), 1i)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-146f, 121f))))), vec3<i32>(_wgslsmith_mult_i32(select(16813i, 1i, false), -34853i), 30317i, -28814i)), vec2<bool>(any(vec2<bool>(true, true)), false));
    let var_1 = var_0.e.x;
    var_0 = global0[_wgslsmith_index_u32(0u, 27u)];
    var var_2 = var_0.d.b;
    var_2 = ~vec3<i32>(20518i, -select(21199i << (var_0.b % 32u), 1i, arg_2), var_2.x);
    return Struct_2(vec3<i32>(-28934i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(arg_0, u_input.b, u_input.b, 0i)), ~select(u_input.c, vec4<i32>(arg_0, var_2.x, u_input.b, 4477i), vec4<bool>(var_0.e.x, false, arg_2, arg_2))), -50092i), reverseBits(select(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, u_input.d.x, global4[_wgslsmith_index_u32(1u, 8u)]), var_0.b), select(select(var_0.b, u_input.a, arg_2), ~var_0.b, true), 585f >= _wgslsmith_f_op_f32(194f + var_0.d.a.x))), var_0.c, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1447f * 1816f), _wgslsmith_f_op_f32(min(-1469f, -1022f))) * arg_1.wx), _wgslsmith_mult_vec3_i32(var_0.d.b, var_0.d.b) >> ((firstTrailingBit(vec3<u32>(58525u, 70144u, var_0.b)) & max(vec3<u32>(var_0.b, 129523u, global4[_wgslsmith_index_u32(4294967295u, 8u)]), u_input.d)) % vec3<u32>(32u))), select(var_0.e, var_0.e, !vec2<bool>(select(var_0.e.x, false, arg_2), false)));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = func_3(26668i, vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1046f), -214f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d.x, 8u)], 8u)]), 8u)]))), false);
    let var_1 = reverseBits(vec2<i32>(var_0.a.x, arg_0));
    var var_2 = vec3<u32>(global4[_wgslsmith_index_u32(select(~(~var_0.b) & abs(u_input.d.x), var_0.b, var_0.e.x), 8u)], u_input.a & u_input.d.x, 5196u);
    global0 = array<Struct_2, 27>();
    var var_3 = vec3<u32>(~_wgslsmith_div_u32(1u, var_2.x), _wgslsmith_add_u32(u_input.a, global4[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_sub_u32(var_0.b, var_0.b)), 8u)]), min(var_2.x, (_wgslsmith_dot_vec2_u32(u_input.d.xz, var_2.yx) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.b, u_input.a), vec3<u32>(var_2.x, var_2.x, global4[_wgslsmith_index_u32(4294967295u, 8u)]))) >> (_wgslsmith_mod_u32(var_2.x >> (4294967295u % 32u), 4294967295u) % 32u)));
    return StorageBuffer(-1i, vec4<f32>(_wgslsmith_f_op_f32(trunc(1804f)), _wgslsmith_f_op_f32(379f + var_0.d.a.x), global1[_wgslsmith_index_u32(18321u, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(499f - _wgslsmith_f_op_f32(select(var_0.c.a.x, global1[_wgslsmith_index_u32(0u, 8u)], var_0.e.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~(global4[_wgslsmith_index_u32(u_input.a, 8u)] ^ 4209u), 8u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(63678u, 8u)], 8u)])) > -984f, select((u_input.c.x | max(u_input.c.x, 1i)) >= u_input.b, true & (_wgslsmith_mod_i32(u_input.c.x, -2147483647i) >= -u_input.c.x), !all(global3[_wgslsmith_index_u32(u_input.a, 28u)])));
    let var_1 = 1u & global4[_wgslsmith_index_u32(1u, 8u)];
    let x = u_input.a;
    s_output = func_1(0i);
}

