struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<bool>, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    global1 = array<vec4<bool>, 16>();
    var var_0 = Struct_2(arg_0.a, u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-243f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.a.x))))))));
    return vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) >= arg_0.a.a.x, arg_1);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>) -> bool {
    var var_0 = ~u_input.c.x & ~4294967295u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) + _wgslsmith_f_op_vec3_f32(-arg_1)), false, u_input.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.a);
    var_0 = u_input.c.x;
    var var_3 = u_input.b.x;
    return all(select(!select(vec2<bool>(var_1.b, var_1.b), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, false)), vec2<bool>(true, false)), func_2(Struct_2(Struct_1(arg_1, var_1.b, vec4<u32>(105315u, 1u, 0u, 1u)), vec3<i32>(-43264i, u_input.d, u_input.d) | u_input.b), var_1.b, Struct_1(_wgslsmith_div_vec3_f32(var_1.a, vec3<f32>(484f, arg_0.x, var_2.x)), select(false, var_1.b, true), vec4<u32>(10188u, 55546u, u_input.c.x, 1u))), var_1.b));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = array<vec4<bool>, 16>();
    var var_0 = vec4<i32>(-u_input.b.x, u_input.b.x, 1i, u_input.d);
    var_0 = vec4<i32>(firstTrailingBit(var_0.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b.x, _wgslsmith_sub_i32(70316i, var_0.x), arg_0.b.x, ~var_0.x), abs(vec4<i32>(u_input.d, -10177i, arg_0.b.x, u_input.d))), select(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, -813i, -13865i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, -1i, 14598i)), vec4<i32>(13453i, abs(-309i), arg_0.b.x & -1i, ~1i), select(!vec4<bool>(arg_0.a.b, arg_0.a.b, true, arg_0.a.b), vec4<bool>(arg_0.a.b, false, arg_0.a.b, arg_0.a.b), select(global1[_wgslsmith_index_u32(35492u, 16u)], global1[_wgslsmith_index_u32(arg_0.a.c.x, 16u)], arg_0.a.b)))), 0i, -8077i);
    let var_1 = Struct_2(arg_0.a, u_input.b);
    var var_2 = any(!(!global1[_wgslsmith_index_u32(arg_0.a.c.x & 11703u, 16u)]));
    return _wgslsmith_mod_u32(var_1.a.c.x, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -u_input.d;
    let var_0 = any(!vec2<bool>(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(855f, -771f, -578f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1127f, -648f, -203f))), func_3(Struct_2(Struct_1(vec3<f32>(-274f, -2073f, -1272f), true, u_input.c), u_input.b)) < ~u_input.c.x));
    let var_1 = 0i;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1121f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-370f + -190f), _wgslsmith_f_op_f32(f32(-1f) * -465f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(246f + -745f) + _wgslsmith_f_op_f32(575f - -2068f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2078f))))));
    var var_3 = ~(~countOneBits(select(u_input.a.x, _wgslsmith_mod_u32(4294967295u, u_input.c.x), any(vec2<bool>(var_0, true)))));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -300f, -320f) - vec4<f32>(var_2.x, var_2.x, var_2.x, -940f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(360f, 306f, var_2.x, var_2.x), vec4<f32>(var_2.x, var_2.x, 172f, 2028f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1146f, var_2.x, -1154f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -2176f, 822f, -190f) * vec4<f32>(-1786f, 1737f, 1000f, var_2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 386f, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1000f, 676f, var_2.x) - vec4<f32>(-778f, var_2.x, var_2.x, var_2.x)))), true)))), u_input.c);
}

