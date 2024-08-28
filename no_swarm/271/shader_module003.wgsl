struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = u_input.c;
    global0 = array<vec3<bool>, 8>();
    global0 = array<vec3<bool>, 8>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, 109f)) - arg_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    let var_2 = Struct_3(Struct_1(vec4<bool>(true, true, true, true), select(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(4294967295u, arg_0)), 8u)], select(vec3<bool>(true, true, true), !global0[_wgslsmith_index_u32(arg_0, 8u)], true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-179f, var_1, arg_1)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, -884f, 710f), vec3<f32>(-368f, var_1, var_1))), select(global0[_wgslsmith_index_u32(4294967295u, 8u)], vec3<bool>(true, true, false), vec3<bool>(false, false, true))))), -(_wgslsmith_div_vec2_i32(vec2<i32>(-199i, 35305i), vec2<i32>(u_input.c, var_0)) & -vec2<i32>(u_input.c, 26666i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-683f, _wgslsmith_f_op_f32(f32(-1f) * -506f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
    return var_2.a.c.x;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: i32) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(-259f, _wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(abs(-1709f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1011f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(342f * -147f), _wgslsmith_f_op_f32(min(1000f, 566f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2858f * -797f))), 1411f);
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = vec4<f32>(-119f, _wgslsmith_f_op_f32(203f * -1000f), _wgslsmith_f_op_f32(func_3(u_input.e.x, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(func_3((~3824u & firstLeadingBit(u_input.d)) << (firstTrailingBit(0u) % 32u), _wgslsmith_f_op_f32(var_1 + var_0.x))));
    var var_3 = ~(~_wgslsmith_div_u32(min(~u_input.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_2.x), vec2<u32>(arg_2.x, u_input.b))), _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, u_input.b), ~u_input.d)));
    var var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 - var_0) + _wgslsmith_f_op_vec3_f32(-var_0))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(var_2.x, -1856f)), _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(abs(var_1))))))));
    return Struct_2(Struct_1(select(select(vec4<bool>(arg_0, true, false, arg_0), !vec4<bool>(false, arg_0, true, arg_0), select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(false, true, true, arg_0), arg_0)), vec4<bool>(arg_0, false, true, all(vec2<bool>(arg_0, arg_0))), !vec4<bool>(true, false, false, arg_0)), !(!global0[_wgslsmith_index_u32(u_input.d, 8u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(791f, -512f, var_0.x) * vec3<f32>(var_2.x, var_4.x, 882f)), var_0)) * vec3<f32>(_wgslsmith_f_op_f32(var_0.x * 917f), _wgslsmith_f_op_f32(-var_2.x), 950f)), -(-arg_1.yy >> (abs(vec2<u32>(36088u, 5844u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(abs(var_4.x))), Struct_1(select(vec4<bool>(false, arg_0, true, arg_0 & arg_0), select(!vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(true, false, true, arg_0), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0))), var_1 == -495f), select(global0[_wgslsmith_index_u32(u_input.d, 8u)], !select(vec3<bool>(false, true, arg_0), vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, true, false)), vec3<bool>(!arg_0, true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, _wgslsmith_f_op_f32(f32(-1f) * -2195f)) - vec3<f32>(_wgslsmith_div_f32(-1120f, var_2.x), var_0.x, -362f)), arg_1.zx, var_1));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<u32>) -> u32 {
    return abs(~21689u) << (_wgslsmith_mult_u32(select(arg_3.x, min(countOneBits(1u), 0u ^ arg_3.x), true), ~_wgslsmith_sub_u32(countOneBits(34598u), u_input.e.x | arg_3.x)) % 32u);
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_4(_wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(1u), _wgslsmith_div_u32(u_input.a, 5884u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.e.zw)), ~vec3<u32>(4294967295u, 70444u, 4294967295u)) & vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.e.xw, vec2<u32>(66211u, 44675u)), func_4(func_2(true, vec4<i32>(u_input.c, -61232i, -35705i, u_input.c), u_input.e.zz, 0i), func_2(false, vec4<i32>(u_input.c, -39111i, -58613i, -2147483647i), vec2<u32>(1u, 0u), -17117i).a, Struct_4(u_input.e.xzw), _wgslsmith_clamp_vec3_u32(u_input.e.yxy, vec3<u32>(4294967295u, 10375u, 48982u), vec3<u32>(61228u, u_input.b, 0u))), u_input.e.x));
    global0 = array<vec3<bool>, 8>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-691f + -1006f), -1638f))));
    var var_2 = (u_input.b >> (1u % 32u)) << (var_0.a.x % 32u);
    var var_3 = 351f;
    return StorageBuffer(-1i, vec4<i32>(~u_input.c, reverseBits(u_input.c), ~(~u_input.c), u_input.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_f_op_f32(trunc(-285f))))))), select(vec3<u32>(~(~var_0.a.x), u_input.d, 54777u), vec3<u32>(1u, var_0.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 17054u), vec2<u32>(u_input.a, var_0.a.x))), _wgslsmith_add_i32(select(u_input.c, 2147483647i, true), i32(-1i) * -16873i) > _wgslsmith_mod_i32(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, -3351i, u_input.c), vec4<i32>(u_input.c, -748i, u_input.c, 42832i)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1661f, var_1, var_1) - vec3<f32>(1139f, var_1, -150f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

