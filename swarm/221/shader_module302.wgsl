struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(-1271f, vec4<u32>(1u, 1u, 35908u, 35745u)), Struct_5(-1022f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), Struct_5(-755f, vec4<u32>(0u, 0u, 0u, 4294967295u)), Struct_5(-1170f, vec4<u32>(9682u, 120923u, 11897u, 27631u)), Struct_5(685f, vec4<u32>(4663u, 10038u, 0u, 1u)), Struct_5(-651f, vec4<u32>(4294967295u, 4294967295u, 5343u, 4294967295u)), Struct_5(641f, vec4<u32>(4294967295u, 0u, 0u, 65668u)));

var<private> global1: array<Struct_4, 17>;

var<private> global2: array<f32, 2> = array<f32, 2>(-705f, 304f);

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global3 = vec3<bool>(!(-791f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 2u)] * global2[_wgslsmith_index_u32(16158u, 2u)]), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), true))), false, !all(select(vec2<bool>(false, global3.x), vec2<bool>(true, global3.x), global3.yz)));
    global3 = !vec3<bool>(false, countOneBits(-2147483647i & u_input.a) < _wgslsmith_div_i32(0i, reverseBits(u_input.b)), global3.x);
    var var_0 = select(global3.zx, !global3.xx, vec2<bool>(true, (true || (u_input.a < 12413i)) & false));
    var_0 = vec2<bool>(any(global3.yy), any(!(!(!vec3<bool>(var_0.x, false, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(527f, -1457f) + _wgslsmith_f_op_f32(f32(-1f) * -500f)), -1423f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 2u)] * 213f) - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(28910u, 2u)], arg_0.x))))));
    return ~(~u_input.b ^ u_input.a);
}

fn func_2(arg_0: vec4<bool>) -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(194f, ~abs(vec3<i32>(14822i, 2147483647i, -4167i)) | vec3<i32>(1i, _wgslsmith_mult_i32(u_input.b, -24334i), -u_input.c), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-953f, global2[_wgslsmith_index_u32(7931u, 2u)], -235f, global2[_wgslsmith_index_u32(1u, 2u)]))), firstLeadingBit(u_input.a), ~29288u, arg_0.zxx), _wgslsmith_clamp_i32(1i, 1i, abs(func_3(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(3746u, 2u)], -1000f)))), -24259i));
    let var_1 = vec4<i32>(1i, u_input.a, u_input.c, var_0.a.e);
    return reverseBits(firstLeadingBit(vec4<u32>(var_0.a.c.c, ~29340u, 28910u, var_0.a.c.c)));
}

fn func_1() -> StorageBuffer {
    global2 = array<f32, 2>();
    var var_0 = Struct_4(21588i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 2u)], -220f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(6636u, 2u)], 1298f, 1151f, 381f), vec4<f32>(827f, global2[_wgslsmith_index_u32(29156u, 2u)], global2[_wgslsmith_index_u32(50886u, 2u)], 187f))))));
    var var_2 = Struct_5(global2[_wgslsmith_index_u32(1u, 2u)], func_2(vec4<bool>(true, select(false, !global3.x, global3.x), ~var_0.a > 1i, true)));
    let var_3 = 1u;
    return StorageBuffer(-vec2<i32>(~(-36418i << (1u % 32u)), var_0.a), vec4<i32>(countOneBits(reverseBits(~(-2147483647i))), u_input.a, -select(33655i, u_input.c, var_2.a <= var_2.a), u_input.c), vec4<i32>(8439i << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_2.b.zzw, var_2.b.wxx), 0u, 113469u) % 32u), 14574i, -1i, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global3.x, (global3.x || global3.x) == global3.x);
    global3 = vec3<bool>(any(select(vec2<bool>(var_0.x, any(vec4<bool>(true, var_0.x, var_0.x, global3.x))), vec2<bool>(var_0.x || false, true), 31024i <= abs(u_input.b))), 538f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(38963u, 2u)], -498f)))), any(select(vec2<bool>(any(vec2<bool>(global3.x, var_0.x)), !var_0.x), global3.xy, global3.yy)));
    var var_1 = max(-_wgslsmith_add_i32(-firstLeadingBit(-2147483647i), ~(~15719i)), abs(u_input.b));
    global2 = array<f32, 2>();
    var_1 = -55393i;
    global0 = array<Struct_5, 7>();
    global2 = array<f32, 2>();
    global3 = vec3<bool>(true, global3.x, false);
    let x = u_input.a;
    s_output = func_1();
}

