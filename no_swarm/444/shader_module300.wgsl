struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    var var_1 = -reverseBits(vec2<i32>(firstTrailingBit(~(-2147483647i)), max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 65683i, 50515i, 0i), vec4<i32>(31706i, 2147483647i, -2147483647i, 42036i)), 1i)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_0.d.wxz, vec3<f32>(var_0.d.x, arg_0.b.x, -482f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(var_0.b.x, arg_0.d.x, -337f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(arg_0.d.zx)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.x, -116f))))));
    let var_4 = 12045i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.x)));
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = !(!vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -619f) > _wgslsmith_f_op_f32(func_3(Struct_1(false, vec3<f32>(1000f, -1971f, -1892f), false, vec4<f32>(-804f, 393f, -1111f, 1745f)))), !any(vec4<bool>(true, true, false, false)), !all(vec4<bool>(false, false, true, true)), false));
    global0 = array<vec2<u32>, 31>();
    global0 = array<vec2<u32>, 31>();
    var var_1 = ~u_input.a.x;
    var_1 = _wgslsmith_mult_u32(~(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) >> (0u % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), abs(u_input.a.yw)));
    return _wgslsmith_f_op_f32(floor(2233f));
}

fn func_1() -> i32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2032f, _wgslsmith_f_op_f32(-388f * -1348f), -352f, -276f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-247f - 1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(2147483647i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(-1i)), _wgslsmith_f_op_f32(func_2(-42628i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(252f, -187f)) - -1000f)))));
    let var_2 = Struct_1(all(select(!(!vec4<bool>(var_0, true, var_0, var_0)), select(vec4<bool>(true, true, var_0, var_0), select(vec4<bool>(var_0, false, false, true), vec4<bool>(var_0, var_0, true, false), vec4<bool>(false, false, false, var_0)), var_0), any(vec3<bool>(false, true, var_0)) | var_0)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_1.zyy, _wgslsmith_f_op_vec3_f32(-var_1.xyx)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.zwz, var_1.xxy), var_1.xxy))))), !(!all(vec3<bool>(var_0, var_0, true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_1))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)))) - -1000f) * -789f);
    var var_4 = countOneBits(global0[_wgslsmith_index_u32(1u, 31u)]);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 31>();
    let var_0 = vec3<i32>(~reverseBits(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 20404i, -345i, -1i), vec4<i32>(-10268i, 1i, 31024i, 1i)))), _wgslsmith_div_i32(-18513i, -(func_1() | -1i)), countOneBits(1i));
    var var_1 = ~12219i;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_1(any(vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1171f, 696f, -119f)), true, vec4<f32>(-1015f, 569f, 936f, 782f)))), _wgslsmith_f_op_f32(func_2(-1i)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1449f, 828f)) * -985f)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_div_f32(-412f, 1659f));
    let var_4 = Struct_1(~u_input.a.x != ~51504u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -218f), _wgslsmith_f_op_f32(func_3(Struct_1(true, vec3<f32>(358f, var_2.x, var_2.x), false, vec4<f32>(770f, 2645f, var_3.x, 1430f)))), var_2.x))), select(true, false, any(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-975f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(722f, 1403f, true)))), 549f, _wgslsmith_f_op_f32(select(-404f, -388f, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.x, _wgslsmith_div_f32(527f, var_2.x), -502f), -firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, var_0.x, -1i, var_0.x), ~vec4<i32>(-1i, -2147483647i, -28i, var_0.x))), var_0.x, ~max(_wgslsmith_mod_vec4_u32(firstLeadingBit(u_input.a), ~vec4<u32>(u_input.a.x, u_input.a.x, 6108u, u_input.a.x)), u_input.a));
}

