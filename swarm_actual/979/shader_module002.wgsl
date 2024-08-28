struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 12>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> u32 {
    return ~(~(max(~3425u, u_input.d.x) & u_input.d.x));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    global1 = array<vec4<i32>, 12>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1230f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(143f)))), _wgslsmith_div_f32(-302f, _wgslsmith_div_f32(535f, -536f)))))));
    let var_1 = !(!select(select(!vec3<bool>(arg_0.a, true, false), select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(false, arg_0.a, true), arg_0.a), false | arg_0.a), !select(vec3<bool>(false, false, false), vec3<bool>(true, arg_0.a, true), arg_0.a), !(!vec3<bool>(false, false, arg_0.a))));
    var var_2 = _wgslsmith_div_i32(u_input.b.x, -arg_3);
    var var_3 = ~((arg_2 << (~(~vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u))) & max(u_input.b.yx, _wgslsmith_mult_vec2_i32(u_input.b.yx, _wgslsmith_mult_vec2_i32(arg_2, u_input.b.yx))));
    return firstTrailingBit(78031u);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(29971u << (u_input.c % 32u), countOneBits(arg_1.x)), func_3(Struct_2(arg_0), _wgslsmith_mult_vec3_u32(u_input.d, u_input.d), reverseBits(arg_2), u_input.b.x)), u_input.c));
    global0 = ~1u;
    var var_1 = _wgslsmith_mod_vec3_u32(abs(~((vec3<u32>(82720u, 37377u, u_input.c) << (u_input.d % vec3<u32>(32u))) ^ ~u_input.d)), select(max(~u_input.d, vec3<u32>(56708u, 61816u, 4294967295u)), ~u_input.d, vec3<bool>(arg_0, arg_0, !arg_0)) << (u_input.d % vec3<u32>(32u)));
    global1 = array<vec4<i32>, 12>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * vec3<f32>(-448f, _wgslsmith_f_op_f32(-1401f + -1338f), 854f)), !vec2<bool>(any(!vec2<bool>(false, arg_0)), all(vec4<bool>(false, arg_0, arg_0, true)) | true), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1149f), vec2<f32>(-671f, -213f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1770f, -1000f) * vec2<f32>(-210f, -331f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-263f, 510f)))))), !all(vec3<bool>(false, arg_0, false)) | !(!arg_0));
    return Struct_2(var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, true, u_input.a.x > 1u, abs(_wgslsmith_dot_vec2_u32(u_input.d.yy, abs(vec2<u32>(0u, 1u)))) >= func_1());
    let var_1 = ~4294967295u;
    var var_2 = func_2(true, u_input.d.zx, max(vec2<i32>(u_input.b.x, -1i), vec2<i32>(42324i, -2147483647i)));
    let var_3 = 64835i;
    var var_4 = func_1();
    let var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-174f, 373f, 148f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(787f, -520f, 1014f), vec3<f32>(485f, -836f, 1000f), false))))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f)))), !vec2<bool>(var_0.x, any(select(vec3<bool>(var_2.a, true, true), var_0.www, var_0.yzx))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1320f, -1243f) - vec2<f32>(-396f, 861f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, 1066f)))))), var_0.x);
    let var_6 = 1i ^ ~(~2147483647i >> (u_input.a.x % 32u));
    var var_7 = Struct_1(var_5.a, var_0.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2318f, _wgslsmith_f_op_f32(var_5.c.x * 2386f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1194f, var_5.c.x), var_5.a.yz) * _wgslsmith_f_op_vec2_f32(select(var_5.c, var_5.a.xy, vec2<bool>(false, var_2.a))))) + var_5.a.yx), false);
    var var_8 = ~var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.x, firstTrailingBit(vec2<u32>(u_input.d.x, var_1) | _wgslsmith_add_vec2_u32(~vec2<u32>(var_1, 22601u), reverseBits(vec2<u32>(51242u, var_1)))), _wgslsmith_clamp_i32(-2147483647i, var_6, -countOneBits(-var_3)), -1i);
}

