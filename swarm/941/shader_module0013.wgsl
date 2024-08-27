struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-610f, 693f, -990f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> f32 {
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_3.a.c.wyx), _wgslsmith_div_vec3_f32(arg_3.a.c.wxy, arg_3.a.c.xzy))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-268f, -1217f))), _wgslsmith_f_op_f32(sign(-1000f)), 1162f)), arg_3.a.c.xwx);
    let var_0 = vec3<bool>(1599f < arg_3.a.c.x, true, false);
    var var_1 = !any(select(select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), vec2<bool>(true, true)), var_0.zx, var_0.xy));
    let var_2 = ~arg_0.a.b;
    var_1 = var_0.x;
    return 914f;
}

fn func_2(arg_0: i32) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-853f, 817f, -1215f), vec3<f32>(global0.x, 500f, global0.x), vec3<bool>(false, true, false))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(sign(658f)), 784f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.b.x, vec3<i32>(-1933i, -34706i, arg_0), vec4<f32>(global0.x, global0.x, global0.x, -978f), -344f)), global0.xx, global0.zx, Struct_2(Struct_1(u_input.a.x, vec3<i32>(u_input.d, arg_0, -12788i), vec4<f32>(global0.x, global0.x, -1059f, global0.x), global0.x)))) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -1171f) + _wgslsmith_div_f32(-1000f, 594f)), _wgslsmith_f_op_f32(998f * _wgslsmith_f_op_f32(ceil(-1984f))))));
    var var_0 = Struct_2(Struct_1(~33505u, vec3<i32>(reverseBits(-20905i), arg_0, -31174i & (u_input.d >> (1u % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-975f, global0.x, global0.x, -761f)))))), 1118f));
    let var_1 = global0.x;
    var var_2 = Struct_2(var_0.a);
    let var_3 = vec2<f32>(var_0.a.d, -1162f);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a.c.x))))) - _wgslsmith_f_op_f32(f32(-1f) * -145f))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> bool {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(max(-984f, _wgslsmith_f_op_f32(func_2(arg_1.b.x))))), 393f)), 1030f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(abs(firstTrailingBit(arg_1.b.x)))) + _wgslsmith_f_op_f32(trunc(227f))));
    let var_0 = arg_1.c;
    var var_1 = 4294967295u == _wgslsmith_add_u32(65694u, arg_1.a);
    let var_2 = true;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.www + _wgslsmith_f_op_vec3_f32(-arg_1.c.xzx)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b.x), vec4<u32>(67230u, u_input.b.x, u_input.b.x, u_input.a.x)) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, u_input.b.x, 0u, u_input.b.x)), vec4<u32>(~(1u << (u_input.b.x % 32u)), u_input.a.x, 22512u, _wgslsmith_sub_u32(abs(1u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x))), vec4<bool>(func_1(~1u, Struct_1(u_input.b.x, vec3<i32>(u_input.d, 2147483647i, -2147483647i), vec4<f32>(-270f, global0.x, global0.x, global0.x), 1763f)), false, !(u_input.d == u_input.d), false)), vec4<u32>(~u_input.b.x, u_input.a.x, _wgslsmith_div_u32(countOneBits(0u), 31356u), 1u));
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_clamp_i32(max(u_input.d, -11701i), abs(u_input.c.x), 28638i >> (u_input.a.x % 32u))), abs(firstLeadingBit(select(u_input.c.x, u_input.c.x, true))), u_input.d, -2147483647i >> (max(u_input.a.x, 1u) % 32u)), firstLeadingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.d, u_input.d, 8383i), firstLeadingBit(vec4<i32>(u_input.c.x, 5518i, u_input.d, -2147483647i)))));
    var var_2 = Struct_2(Struct_1(var_0.x, select(_wgslsmith_mult_vec3_i32(var_1.yxz, reverseBits(var_1.wxw)), var_1.zwx, true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(110f, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -857f, global0.x, -476f) * vec4<f32>(global0.x, global0.x, global0.x, 151f))))), -1218f));
    var_2 = Struct_2(var_2.a);
    var var_3 = ~var_2.a.a;
    let var_4 = var_2.a;
    let var_5 = Struct_2(var_2.a);
    global0 = _wgslsmith_f_op_vec3_f32(select(var_4.c.wzy, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_5.a.c.x + var_5.a.c.x), _wgslsmith_f_op_f32(-1842f * -1000f), _wgslsmith_f_op_f32(func_3(Struct_2(var_5.a), var_4.c.zw, vec2<f32>(var_5.a.d, global0.x), var_5)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, var_2.a.d, 1f))))), !all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yw, reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.x), var_0.yx << (vec2<u32>(1u, 27971u) % vec2<u32>(32u)))));
}

