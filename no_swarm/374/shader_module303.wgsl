struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-298f), Struct_1(550f), Struct_1(1848f), Struct_1(-280f), Struct_1(528f));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~abs(u_input.a.x), 5u)];
    let var_1 = 76653u;
    var var_2 = 593f;
    var var_3 = any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    return var_1;
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> f32 {
    var var_0 = min(~vec4<u32>(abs(~u_input.a.x), 0u, _wgslsmith_div_u32(abs(u_input.a.x), 22842u), u_input.a.x & ~u_input.a.x), ~(~(countOneBits(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)) & vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))));
    global1 = global0[_wgslsmith_index_u32(u_input.a.x, 5u)];
    global1 = Struct_1(arg_0);
    var var_1 = _wgslsmith_clamp_vec2_i32((_wgslsmith_mod_vec2_i32(vec2<i32>(-18248i, -15119i), vec2<i32>(arg_1.x, arg_1.x)) ^ (abs(arg_1.yz) & arg_1.xz)) & ~arg_1.xz, -vec2<i32>(-26826i ^ _wgslsmith_div_i32(u_input.b, 2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1310i, u_input.b), vec2<i32>(5534i, u_input.b))), ~(-max(arg_1.zz, vec2<i32>(-7183i, 22561i) & arg_1.yx)));
    global0 = array<Struct_1, 5>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1000f)), 813f));
}

fn func_2(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(max(1487f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = array<Struct_1, 5>();
    var var_1 = !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) - _wgslsmith_f_op_f32(-arg_0.x)) > _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(ceil(-745f)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, 898i), vec3<i32>(u_input.b, 2147483647i, 37806i)))), true, !all(vec2<bool>(true, true)));
    var_0 = global1.a;
    global0 = array<Struct_1, 5>();
    return -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -(~u_input.b), 1i, ~u_input.b << (43946u % 32u)), select(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-15435i, -1i, u_input.b, u_input.b)), vec4<i32>(u_input.b, u_input.b, 17120i, 62152i) ^ vec4<i32>(18174i, u_input.b, -35164i, u_input.b)), (vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) | vec4<i32>(-7004i, u_input.b, u_input.b, -1i)) & -vec4<i32>(u_input.b, -1851i, -1i, 2037i), vec4<bool>(true, true, var_1.x, all(vec3<bool>(true, var_1.x, var_1.x)))), ~(~(vec4<i32>(-1i, -34763i, u_input.b, -40883i) & vec4<i32>(u_input.b, 0i, u_input.b, 24525i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-519f, global1.a)), true)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, global1.a))))));
    global1 = Struct_1(1206f);
    let var_2 = global0[_wgslsmith_index_u32(~u_input.a.x, 5u)];
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(40843u, ~30743u ^ _wgslsmith_mult_u32(20241u, u_input.a.x)) | func_1(), 5u)];
    var var_4 = u_input.a.x;
    let var_5 = _wgslsmith_div_u32(~u_input.a.x, u_input.a.x);
    var var_6 = true;
    let var_7 = func_2(vec3<f32>(-447f, _wgslsmith_f_op_f32(f32(-1f) * -1465f), global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(f32(-1f) * -1190f)), var_3.a));
}

