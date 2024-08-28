struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(2204f, 308f);

var<private> global1: array<Struct_2, 8>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = abs(firstTrailingBit(vec3<u32>(~firstLeadingBit(36668u), arg_0.a.d.x, _wgslsmith_clamp_u32(~4874u, ~4294967295u, _wgslsmith_dot_vec2_u32(arg_0.a.d.yy, vec2<u32>(25655u, u_input.c))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -124f);
    var var_2 = arg_0.b;
    let var_3 = 39285u & countOneBits(_wgslsmith_sub_u32(~(var_0.x | var_2.x), 0u));
    let var_4 = arg_0.a;
    return vec2<f32>(-1395f, _wgslsmith_f_op_f32(ceil(-244f)));
}

fn func_2() -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(809f, -1316f) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(749f, global0.x) * vec2<f32>(global0.x, -230f)), _wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(u_input.a, 8u)])))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, 545f), vec2<f32>(global0.x, global0.x))), vec2<f32>(-799f, global0.x), vec2<bool>(true, true))))));
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(598f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-652f * global0.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 391f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 252f) * vec2<f32>(global0.x, global0.x))))));
    var var_0 = Struct_1(abs(-46016i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -406f) + vec2<f32>(global0.x, 852f)) + _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(u_input.b, vec2<f32>(global0.x, global0.x), true, vec3<u32>(u_input.a, u_input.d, 0u), -19663i), vec4<u32>(u_input.c, u_input.a, 1u, u_input.d), u_input.b, true)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, -267f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(-1000f, global0.x)), vec2<bool>(true, true)))))), !(!(true || (-1645i > u_input.b))), ~min(min(vec3<u32>(86254u, u_input.a, u_input.c), vec3<u32>(0u, u_input.d, u_input.a)) & ~vec3<u32>(33980u, 1u, u_input.d), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.a, u_input.a), vec4<u32>(50146u, u_input.a, 0u, u_input.d)), max(4294967295u, u_input.c), u_input.c)), u_input.b);
    global1 = array<Struct_2, 8>();
    global1 = array<Struct_2, 8>();
    return _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a) | ~var_0.d.zx, vec2<u32>(var_0.d.x, 39639u) | _wgslsmith_mult_vec2_u32(vec2<u32>(34988u, u_input.c), var_0.d.zz))), var_0.d.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(max(_wgslsmith_add_i32(u_input.b, arg_1), -1i), countOneBits(24020i)), _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, arg_0.x), vec2<f32>(-104f, arg_0.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-306f, 460f) - vec2<f32>(global0.x, arg_0.x))))), select(!(!any(vec3<bool>(false, true, true))), !any(vec3<bool>(true, true, true)), true), vec3<u32>(func_2(), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.d, u_input.a, 1u), vec4<u32>(u_input.c, 34378u, 0u, 17255u)), vec4<u32>(u_input.d, u_input.c, 53843u, 36061u) & vec4<u32>(u_input.a, u_input.c, u_input.c, 4294967295u)), ~1u), u_input.b);
    var var_1 = global1[_wgslsmith_index_u32(var_0.d.x, 8u)];
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b)));
    var_0 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-arg_0), true || var_0.c, _wgslsmith_clamp_vec3_u32(~var_1.a.d, _wgslsmith_div_vec3_u32(var_1.b.wyy << (var_0.d % vec3<u32>(32u)), ~var_1.a.d) | vec3<u32>(_wgslsmith_mult_u32(33268u, var_1.b.x), ~3959u, var_1.b.x ^ var_0.d.x), _wgslsmith_mod_vec3_u32(var_1.a.d, _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.d.x, var_0.d.x, var_0.d.x), var_0.d), var_0.d, ~var_1.a.d))), min(arg_1, -1i));
    var_0 = Struct_1(-2147483647i, var_0.b, true, vec3<u32>(var_0.d.x, ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(33563u, var_1.b.x, 4294967295u, 1u)), var_1.b), _wgslsmith_add_u32(var_1.a.d.x, ~var_1.b.x)), u_input.b);
    return _wgslsmith_div_i32(1014i, _wgslsmith_mod_i32(-3546i, ~abs(abs(2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(219f, 293f))), u_input.b) >> (21721u % 32u), 2147483647i, ~_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, u_input.b), ~firstTrailingBit(-1i)), u_input.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 100f) - vec2<f32>(-2083f, global0.x))), vec2<f32>(1387f, _wgslsmith_f_op_f32(max(global0.x, 1259f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2514f, global0.x), vec2<f32>(-1506f, -1178f))), vec2<f32>(global0.x, global0.x))))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1850f, var_1.x, true))) - _wgslsmith_f_op_f32(min(1176f, _wgslsmith_f_op_f32(f32(-1f) * -280f)))), -997f));
    var var_3 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1512f)), -107f)));
    global0 = _wgslsmith_f_op_vec2_f32(step(var_1, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(2147483647i, vec2<f32>(431f, 340f), true, vec3<u32>(u_input.c, u_input.d, u_input.d), var_0.x), vec4<u32>(42786u, 13681u, 55218u, 6785u), -26158i, true)))), _wgslsmith_f_op_vec2_f32(-var_1))));
    let var_4 = vec2<u32>(13500u, 36107u);
    let var_5 = u_input.d;
    let var_6 = var_0.x;
    let var_7 = _wgslsmith_mod_vec2_u32(vec2<u32>(~(~(~1u)), _wgslsmith_mult_u32(var_4.x, 4294967295u)), vec2<u32>(_wgslsmith_sub_u32(~0u, 44883u), reverseBits(var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1000f - 905f), -var_0.x, 25113u, vec4<f32>(var_1.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-365f))), -1944f));
}

