struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(vec4<i32>(-u_input.a.x & 1i, (10201i & (u_input.a.x & 1i)) ^ u_input.a.x, 13775i, u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1466f));
    let var_2 = u_input.a.xyw << (_wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(0u, 1u), _wgslsmith_mult_u32(1u, 4294967295u), reverseBits(1u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(55822u, 53084u, 49418u), vec3<u32>(4294967295u, 22726u, 4294967295u)), ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(61841u, 27632u), vec2<u32>(1u, 4294967295u))) & ~(~vec3<u32>(0u, 34466u, 69077u))) % vec3<u32>(32u));
    global1 = !(!select(!vec2<bool>(global1.x, global1.x), !vec2<bool>(false, global1.x), true));
    let var_3 = _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, abs(98921u), select(1u, ~(~1u), all(!vec4<bool>(global1.x, global1.x, true, false)))), firstLeadingBit(firstLeadingBit(vec3<u32>(1u, 87541u, 2871u)) | firstTrailingBit(~vec3<u32>(66829u, 0u, 39283u))));
    return abs(var_3.x);
}

fn func_2() -> vec4<bool> {
    let var_0 = vec3<u32>(func_3(), 1u, _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(15106u, 42726u, 59200u), vec3<u32>(4294967295u, 45931u, 4294967295u)), ~4294967295u)), ~1u));
    global1 = !(!select(!(!vec2<bool>(true, global1.x)), select(!vec2<bool>(global1.x, false), !vec2<bool>(false, global1.x), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, global1.x))), !global1.x));
    let var_1 = ~var_0;
    var var_2 = false;
    var var_3 = ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, 26549i, u_input.a.x), u_input.a)) == 21595i;
    return vec4<bool>(any(vec4<bool>(global1.x, any(!vec2<bool>(false, global1.x)), all(select(vec2<bool>(true, false), vec2<bool>(global1.x, false), global1.x)), true)), false, 1u != var_0.x, true);
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = Struct_1(false);
    let var_1 = countOneBits(-(~(-vec2<i32>(u_input.a.x, arg_0.a.x) | arg_0.a.xy)));
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1393f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-446f + -1000f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))), vec2<f32>(_wgslsmith_f_op_f32(1f - 1000f), 1f)));
    var var_4 = !select(!(!func_2()), vec4<bool>(!global1.x, var_0.a, true, !all(vec4<bool>(var_0.a, global1.x, global1.x, true))), global1.x);
    return var_4.zzx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false);
    var var_1 = !(!(!vec2<bool>(all(vec2<bool>(false, true)), true)));
    var var_2 = select(select(func_1(Struct_3(select(u_input.a, vec4<i32>(3019i, u_input.a.x, 23899i, -2147483647i), false))), !select(vec3<bool>(true, var_1.x, false), vec3<bool>(true, true, true), any(vec4<bool>(false, true, global1.x, var_1.x))), var_1.x), func_2().zzw, vec3<bool>(func_2().x, var_0.a, false));
    let var_3 = Struct_3(select(-u_input.a, _wgslsmith_add_vec4_i32(u_input.a, ~vec4<i32>(0i, 0i, u_input.a.x, u_input.a.x) & ~u_input.a), !vec4<bool>(any(var_2.yz), any(vec3<bool>(var_2.x, global1.x, var_2.x)), var_0.a, 30663i < u_input.a.x)));
    let var_4 = Struct_2(14527i, var_0);
    var_1 = vec2<bool>(var_1.x, var_4.b.a);
    var var_5 = func_2().x;
    var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.zyx, 1408f);
}

