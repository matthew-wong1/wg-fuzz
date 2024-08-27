struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2;

var<private> global2: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> vec2<bool> {
    global0 = global1.d;
    global0 = false;
    global1 = Struct_2(_wgslsmith_dot_vec3_i32(-global1.b.a.yyw, vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, 1i), vec3<i32>(arg_0.a.x, arg_2, arg_2)), 1i)) & 37505i, global1.b, _wgslsmith_f_op_vec4_f32(-global1.c), !(arg_0.a.x <= (_wgslsmith_add_i32(43378i, 8080i) | -global1.a)));
    var var_0 = Struct_2(2147483647i, Struct_1(~vec4<i32>(u_input.a, global1.b.a.x, arg_2, 39862i) >> (~(~u_input.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(996f)))), ~_wgslsmith_add_vec2_u32(arg_0.c, ~arg_0.c)), _wgslsmith_f_op_vec4_f32(ceil(global1.c)), !global1.d);
    let var_1 = !(!(!vec2<bool>(all(vec4<bool>(false, var_0.d, global1.d, global1.d)), false)));
    return select(select(vec2<bool>(!global1.d, any(!vec3<bool>(false, false, global1.d))), select(!(!var_1), var_1, vec2<bool>(all(vec4<bool>(global1.d, true, false, true)), all(var_1))), true), vec2<bool>(false, false), var_0.d);
}

fn func_2() -> vec4<i32> {
    global1 = Struct_2(reverseBits(global1.b.a.x), global1.b, global1.c, true);
    var var_0 = u_input.b.x != reverseBits(~1u);
    var var_1 = select(max(countOneBits(-(~vec2<i32>(-7042i, -2147483647i))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-33406i, -1i, 1i, global1.a), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a))), vec2<i32>(global1.a, u_input.a) ^ _wgslsmith_clamp_vec2_i32(global1.b.a.ww, vec2<i32>(2147483647i, u_input.a), global1.b.a.zy))), _wgslsmith_clamp_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.a.x, -23062i, -4579i), global1.b.a.yyx), firstTrailingBit(-1i)), vec2<i32>(_wgslsmith_mod_i32(-global1.b.a.x, -1i), -74210i >> (_wgslsmith_div_u32(105613u, 4294967295u) % 32u)), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -31428i), global1.b.a.zx), -global1.b.a.zx) & vec2<i32>(global1.a, 0i)), !all(vec3<bool>(global1.d, global1.d & global1.d, global1.d)));
    var var_2 = ~firstLeadingBit(select(~u_input.b.ww, ~vec2<u32>(1u, u_input.b.x), !func_3(Struct_1(vec4<i32>(global1.b.a.x, -1i, global1.b.a.x, 19440i), global1.b.b, vec2<u32>(u_input.b.x, 51141u)), 1008f, 2147483647i)));
    let var_3 = _wgslsmith_sub_vec4_u32(u_input.b, ~vec4<u32>(~(1u ^ u_input.b.x), 12134u ^ var_2.x, global1.b.c.x, ~countOneBits(global1.b.c.x)));
    return vec4<i32>(~(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -2147483647i, -2147483647i, -18334i), select(vec4<i32>(u_input.a, global1.a, 27048i, 3957i), global1.b.a, global1.d)) << (_wgslsmith_mult_u32(var_2.x, 26828u) % 32u)), 0i, global1.b.a.x, ~(0i << (var_3.x % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_2.yzx))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1829f, global2.x)) + _wgslsmith_f_op_vec3_f32(-global1.c.xxw))))), vec3<f32>(370f, -892f, 154f)));
    var var_0 = Struct_2(~(-470i), arg_0, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -830f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.b))), 1f), 687f, 456f), global1.d);
    let var_1 = var_0.b;
    global2 = arg_2.wxy;
    global1 = Struct_2(_wgslsmith_add_i32(var_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_3.a.x, -34639i), ~vec3<i32>(-2147483647i, 37281i, -2147483647i)) & -1i), var_0.b, var_0.c, global1.d);
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: bool) -> vec3<bool> {
    var var_0 = func_4(global1.b, firstTrailingBit(_wgslsmith_div_vec4_i32(func_2(), vec4<i32>(abs(arg_2.x), -2147483647i, 1i, 32074i))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-758f)) - _wgslsmith_f_op_f32(f32(-1f) * -573f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(196f - 1433f)) * _wgslsmith_f_op_f32(f32(-1f) * -1761f)), global1.b.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -916f)))), global1.b);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, -111f, 1011f))))));
    let var_1 = u_input.b;
    var_0 = !global1.d;
    var_0 = !arg_3;
    return !vec3<bool>(global2.x <= -900f, all(vec3<bool>(any(vec2<bool>(arg_3, global1.d)), any(vec4<bool>(arg_3, arg_3, arg_3, global1.d)), global1.d & false)), !(!all(vec2<bool>(arg_3, arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    var var_1 = select(!vec3<bool>(any(vec3<bool>(global1.d, var_0.x, var_0.x)), false, var_0.x), func_1(global1.c.zwz, global1.b.c, vec4<i32>(global1.a << (global1.b.c.x % 32u), -1i, u_input.a, -8786i), global1.d), !((any(var_0) && !var_0.x) & all(!vec3<bool>(false, false, global1.d))));
    let var_2 = _wgslsmith_add_vec2_i32(max(countOneBits(global1.b.a.yx), global1.b.a.yz), ~(~vec2<i32>(-global1.b.a.x, global1.b.a.x & 2147483647i)));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.zx), vec2<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c.x))) - 686f)));
    var var_4 = _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -225f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-162f, _wgslsmith_f_op_f32(select(var_3.x, var_3.x, false))))))));
    let var_5 = var_1.zz;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~firstLeadingBit(u_input.b.ywy)), vec3<u32>(~_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_add_u32(global1.b.c.x, 0u)), 0u << (_wgslsmith_mult_u32(1u, ~4294967295u) % 32u), _wgslsmith_div_u32(10502u, ~u_input.b.x)), -734f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - global1.c.x));
}

