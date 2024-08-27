struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(61867u, 21191u, 86028u, 38306u, 4294967295u, 40540u, 23755u, 38355u, 0u, 0u, 0u, 54842u, 1u, 1u, 47104u, 48341u, 18237u, 0u, 10469u, 69747u);

var<private> global1: array<bool, 20>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * -582f)))), _wgslsmith_f_op_f32(655f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)))), _wgslsmith_clamp_u32(~(global2.c & 1u), 1u, 1u), select(global2.d, !global2.d, false));
    global1 = array<bool, 20>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -704f) + vec2<f32>(global2.a, 679f))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-132f, _wgslsmith_f_op_f32(min(-1922f, 802f))))));
    let var_2 = u_input.b.zx;
    global0 = array<u32, 20>();
    return -9573i;
}

fn func_2() -> Struct_1 {
    let var_0 = global2.b;
    global0 = array<u32, 20>();
    let var_1 = Struct_1(-182f, -394f, ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~(u_input.d.x & u_input.c.x)), 20u)], global2.d);
    var var_2 = !any(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], true));
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, 0i), func_3(0u)), i32(-1i) * -min(u_input.a, u_input.a)), _wgslsmith_mult_i32(_wgslsmith_add_i32(countOneBits(abs(u_input.a)), _wgslsmith_mod_i32(u_input.a, -9865i)), (1i >> (1u % 32u)) >> (reverseBits(u_input.d.x) % 32u)), 1i, _wgslsmith_dot_vec4_i32(~(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, -1i, u_input.a), vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, -11549i))), firstLeadingBit(reverseBits(vec4<i32>(u_input.a, 1i, -41858i, -2147483647i) >> (vec4<u32>(u_input.c.x, 4294967295u, u_input.d.x, global2.c) % vec4<u32>(32u))))));
    return Struct_1(_wgslsmith_f_op_f32(trunc(-1029f)), 877f, 69149u, global2.d);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1, 1000f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, -323f, global2.a) * vec3<f32>(-1465f, 1289f, 802f))))));
    var var_1 = global2.a;
    global2 = func_2();
    let var_2 = global2.d.x;
    var var_3 = vec3<i32>(u_input.a, -16140i, 1i);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1f, 340f)), 1260f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 20>();
    var var_0 = Struct_1(163f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-4075f + global2.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_1(-212f, 553f, 4294967295u, vec2<bool>(global1[_wgslsmith_index_u32(3816u, 20u)], global1[_wgslsmith_index_u32(34519u, 20u)])), global2.b, vec2<f32>(1596f, 284f))))))), global2.c, !global2.d);
    global2 = Struct_1(_wgslsmith_f_op_f32(-156f * var_0.b), _wgslsmith_f_op_f32(func_1(Struct_1(var_0.a, -218f, global2.c, func_2().d), _wgslsmith_div_f32(global2.a, var_0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -418f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(279f, -602f), vec2<f32>(133f, var_0.b), false)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-567f, -1067f), vec2<f32>(851f, -416f), true)))))), var_0.c, !global2.d);
    var var_1 = vec4<bool>(true, global2.d.x, false, u_input.a == u_input.b.x);
    var var_2 = func_2();
    var_2 = func_2();
    let var_3 = u_input.b.x;
    var_2 = func_2();
    var_1 = vec4<bool>(true, select(87225u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.d.x, global0[_wgslsmith_index_u32(var_0.c, 20u)]), global0[_wgslsmith_index_u32(64992u, 20u)]), !var_0.d.x) >= 13716u, var_1.x, var_2.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, u_input.b.yy, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(760f)), global2.b, _wgslsmith_f_op_f32(-348f + var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a))), vec4<f32>(1056f, 552f, -1258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-178f, 207f)))), var_1.x | true)));
}

