struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: u32;

var<private> global3: array<vec2<i32>, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    var var_0 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true), select(true, any(vec3<bool>(true, false, true)), false)), vec4<bool>(!(u_input.b.x < 28672i), false, true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, select(false, false, false)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), true), vec4<bool>(true, true, true, true), true));
    global0 = array<u32, 30>();
    var var_1 = 1i;
    var_0 = select(!vec4<bool>(var_0.x, var_0.x | any(var_0.zzz), true, true), select(select(vec4<bool>(select(false, true, var_0.x), var_0.x, var_0.x, false), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x), vec4<bool>(var_0.x, true, true, false), var_0.x == var_0.x), var_0.x), vec4<bool>(!var_0.x, all(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)), any(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), all(vec2<bool>(true, false))), any(select(var_0.zw, var_0.wy, any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))))), false);
    global2 = u_input.a;
    return 791f;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = vec2<f32>(-506f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(arg_3 + -803f))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(arg_0)), -1000f);
    let var_2 = global3[_wgslsmith_index_u32(1u, 7u)];
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_1.x) + vec2<f32>(arg_3, arg_3)), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(arg_3 + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1242f))))));
    var var_3 = abs(_wgslsmith_clamp_u32(u_input.a, 1u, u_input.a));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -331f))), var_0.x));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(step(arg_3.a, arg_3.a));
    global1 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(1047f, u_input.b.x, max(4524u, 0u), _wgslsmith_f_op_f32(func_3())))))));
    let var_2 = _wgslsmith_div_i32(countOneBits(~(-15880i)), _wgslsmith_div_i32(arg_2.x, 2147483647i));
    return arg_1;
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = ~(~func_2(1u, vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 30u)], u_input.a) | vec3<u32>(1u, 63921u, 52u), -vec4<i32>(-53181i, arg_0, 0i, u_input.b.x), Struct_1(121f, vec3<bool>(true, true, true)))) & vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], max(61613u, firstTrailingBit(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 30u)])), 1u);
    global2 = 29534u;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1342f), -318f, _wgslsmith_f_op_f32(round(684f)), -971f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(895f, 389f, 1000f, -477f) * vec4<f32>(-562f, -1000f, -492f, 1371f)), vec4<f32>(-964f, 403f, 728f, -481f), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 406f, 1369f, 1330f), vec4<f32>(282f, -1522f, -137f, 1252f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-349f, 1000f, -234f, -451f)))))));
    return Struct_3(!select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, all(vec2<bool>(true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~0u;
    let var_0 = func_1(i32(-1i) * -1i);
    global2 = _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 0u) >> (vec2<u32>(17338u, 36363u) % vec2<u32>(32u)))), ~(~reverseBits(_wgslsmith_clamp_u32(u_input.a, 20613u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1499f, 184f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-484f, 195f) + vec2<f32>(-885f, 564f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 894f))))), global3[_wgslsmith_index_u32(59395u, 7u)] << (select(vec2<u32>(~global0[_wgslsmith_index_u32(57002u, 30u)], ~u_input.a), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 1u), vec2<u32>(0u, 4294967295u)), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(3839u, 30u)]) ^ vec2<u32>(1u, 4294967295u)), true) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(45820u, global0[_wgslsmith_index_u32(1u, 30u)]), abs(vec2<u32>(21767u, 5519u))), max(vec2<u32>(3414u, u_input.a) >> (vec2<u32>(u_input.a, u_input.c) % vec2<u32>(32u)), vec2<u32>(u_input.c, u_input.a)))));
}

