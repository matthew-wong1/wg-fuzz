struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    return global0[_wgslsmith_index_u32(1u, 1u)];
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> i32 {
    var var_0 = arg_2;
    var var_1 = -2147483647i;
    let var_2 = Struct_1(var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-2147483647i), _wgslsmith_sub_i32(arg_0, _wgslsmith_add_i32(-10684i, arg_0))), ~(~firstTrailingBit(var_0.d.zx))), 30094u, vec3<i32>(abs(-2147483647i), arg_0, _wgslsmith_mod_i32(24870i, -2147483647i) & u_input.a.x) & reverseBits(abs(~arg_2.d)), u_input.b);
    global1 = false;
    let var_3 = var_2;
    return var_2.b;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: i32, arg_3: vec2<f32>) -> bool {
    global1 = false;
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(~1u, 1u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.x))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(u_input.c.x), 4294967295u), 1u)])), ~(~(~arg_2)), u_input.c.x, u_input.a.yww, func_4(arg_2, select(~select(vec4<u32>(u_input.c.x, 14670u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 1933u, 26375u), false), ~(~vec4<u32>(15269u, 51631u, u_input.c.x, 20u)), select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, false, true), true)), Struct_1(vec3<f32>(arg_0, _wgslsmith_f_op_f32(func_3(64973u, vec4<u32>(u_input.c.x, 0u, 29300u, u_input.c.x), false)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(16379u, 1u)])), 1i, ~(~u_input.c.x), vec3<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), ~23605i, 1i), -2147483647i), vec4<bool>(!arg_1.x, arg_1.x, !(40861u >= u_input.c.x), !all(vec2<bool>(false, true)))));
    global0 = array<f32, 1>();
    let var_1 = arg_2;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(1u >> (var_0.c % 32u), vec4<u32>(31790u, 4294967295u, var_0.c, 1989u) >> (vec4<u32>(var_0.c, 1u, u_input.c.x, var_0.c) % vec4<u32>(32u)), false)), global0[_wgslsmith_index_u32(~(20983u >> (1u % 32u)), 1u)]))), arg_3.x);
    return any(!select(!(!arg_1), arg_1, arg_1));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_2;
    var var_1 = arg_2;
    let var_2 = vec4<bool>(any(vec3<bool>(arg_2, !(u_input.b < 42658i), true)), arg_2, true, !select(func_2(arg_3.a.x, !vec3<bool>(arg_0.x, false, arg_0.x), ~5268i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-997f, global0[_wgslsmith_index_u32(arg_3.c, 1u)]))), _wgslsmith_f_op_f32(arg_1.a.x * -255f) > _wgslsmith_f_op_f32(arg_1.a.x - global0[_wgslsmith_index_u32(74505u, 1u)]), !any(vec4<bool>(false, true, arg_2, arg_0.x))));
    var_0 = false;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_3.a.xx * arg_1.a.zz))));
    return _wgslsmith_div_vec2_u32(~u_input.c << (u_input.c % vec2<u32>(32u)), vec2<u32>(0u, arg_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.c.x | _wgslsmith_dot_vec2_u32(max(~u_input.c, func_1(vec2<bool>(false, false), Struct_1(vec3<f32>(-2071f, -958f, global0[_wgslsmith_index_u32(44655u, 1u)]), 29076i, 10898u, vec3<i32>(1i, 1i, 42494i), -6698i), false, Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(47446u, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)]), u_input.a.x, 0u, vec3<i32>(25751i, -2147483647i, 11117i), u_input.a.x))), vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 4294967295u)));
    let var_1 = vec2<i32>(~(u_input.b << (27615u % 32u)), _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(u_input.a.x, 2147483647i, 16499i))) ^ ~(-u_input.a.x)) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(u_input.c.x, 1u)])), vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(41926u, 1u)])))))), -18274i, u_input.c.x, reverseBits(vec3<i32>(-u_input.a.x, countOneBits(var_1.x) ^ _wgslsmith_mod_i32(32265i, u_input.b), 58965i)), _wgslsmith_dot_vec3_i32(u_input.a.xwx >> (_wgslsmith_add_vec3_u32(select(vec3<u32>(68058u, 1u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<bool>(true, false, false)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))) % vec3<u32>(32u)), ~vec3<i32>(-1i, u_input.b, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(22457i << (min(~u_input.c.x, u_input.c.x ^ 0u) % 32u), var_1.x), _wgslsmith_f_op_f32(floor(var_2.a.x)), ~var_1.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 2581f, -1000f, global0[_wgslsmith_index_u32(var_2.c, 1u)]))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 1u)])), -1673f, 1199f, 505f))), reverseBits(vec2<u32>(_wgslsmith_mult_u32(~1u, 1u), _wgslsmith_div_u32(max(1u, 1u), _wgslsmith_clamp_u32(6465u, u_input.c.x, 59098u)))));
}

