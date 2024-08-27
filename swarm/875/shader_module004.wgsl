struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false));

var<private> global1: array<vec2<bool>, 8>;

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = any(select(vec2<bool>(all(vec3<bool>(global2.x, false, false)), global2.x), !global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b.x, 3339u), 8u)], !select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, false), false)));
    var var_1 = 4294967295u;
    var var_2 = 102943u;
    var var_3 = firstLeadingBit(u_input.a);
    var var_4 = vec3<i32>(1i >> (var_3.x % 32u), 36484i, 1i) & ~vec3<i32>(~(~(-1i)), -2147483647i, countOneBits(23588i));
    return -(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mod_i32(var_4.x, var_4.x), abs(1i), ~var_4.x));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: f32) -> bool {
    global1 = array<vec2<bool>, 8>();
    var var_0 = func_3(_wgslsmith_f_op_f32(-arg_3));
    var var_1 = ~4294967295u;
    global0 = array<vec4<bool>, 28>();
    let var_2 = !(!select(!vec3<bool>(global2.x, true, false), vec3<bool>(select(true, false, true), global2.x & global2.x, global2.x), !vec3<bool>(false, global2.x, global2.x)));
    return !(!(global2.x & var_2.x) && ((var_0.x <= var_0.x) || all(var_2))) | any(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_1), u_input.b.zx)), 8u)]);
}

fn func_1(arg_0: i32) -> u32 {
    global1 = array<vec2<bool>, 8>();
    var var_0 = Struct_1(abs(-2147483647i));
    var_0 = Struct_1(max(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 2147483647i, arg_0) << (u_input.b.yww % vec3<u32>(32u)), vec3<i32>(0i, -1i, var_0.a) << (vec3<u32>(0u, u_input.a.x, 1u) % vec3<u32>(32u))), select(6685i, 16813i, global2.x) | 0i), 1i ^ var_0.a));
    var var_1 = Struct_2(vec3<bool>(global2.x, func_2(_wgslsmith_add_u32(u_input.a.x, firstTrailingBit(u_input.b.x)), abs(~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(584f, -1566f))), 694f), true), -vec4<i32>(-18967i, 0i, firstLeadingBit(-90707i | var_0.a), firstLeadingBit(arg_0 ^ arg_0)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-301f, -1211f))), vec2<f32>(_wgslsmith_f_op_f32(-1917f + -1986f), _wgslsmith_f_op_f32(-1082f + -1257f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1405f, -1348f)), vec2<f32>(-672f, 393f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(246f, -566f) * vec2<f32>(-573f, 248f))))), vec4<u32>(~_wgslsmith_mod_u32(u_input.a.x, u_input.b.x), u_input.b.x, ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(u_input.b.x, 60077u)), max(u_input.a.x & (u_input.b.x & u_input.b.x), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) | u_input.b.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-632f - 152f) + _wgslsmith_f_op_f32(-688f - -1000f))), 1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(-770f, -696f), _wgslsmith_f_op_f32(-1f))));
    return var_2.b.x << (~var_2.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~1u, ~func_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(25769i, 47181i, 0i, -2927i), vec4<i32>(2147483647i, -10307i, 0i, 2147483647i))));
    let var_1 = Struct_1(_wgslsmith_mod_i32(i32(-1i) * -6050i, abs(firstTrailingBit(-1i))) & ~_wgslsmith_mod_i32(~(-1i), 1i));
    global1 = array<vec2<bool>, 8>();
    global2 = global1[_wgslsmith_index_u32(~0u | min(~_wgslsmith_sub_u32(u_input.b.x, reverseBits(1u)), var_0.x), 8u)];
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-751f, 821f)) * vec2<f32>(-1126f, 1000f))))), vec4<u32>(0u, _wgslsmith_sub_u32(var_0.x, ~reverseBits(var_0.x)), 1u, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1751f, 1000f)))), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1478f))))));
    var var_3 = var_0.x;
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.c.x + var_2.c.x), var_2.c.x))), var_2.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(697f))))), ~vec2<u32>(~_wgslsmith_dot_vec2_u32(var_4.zz, vec2<u32>(u_input.a.x, 12677u)), var_4.x >> (func_1(-16815i) % 32u)));
}

