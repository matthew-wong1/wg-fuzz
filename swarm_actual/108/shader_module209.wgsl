struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 31>;

var<private> global2: vec4<f32> = vec4<f32>(1000f, 112f, 173f, 1000f);

var<private> global3: array<i32, 6>;

var<private> global4: Struct_4;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> vec2<i32> {
    var var_0 = Struct_4(global4.a, -reverseBits(u_input.c.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global4.d.a))) * global4.c.a)), global4.d);
    var_0 = Struct_4(var_0.a, _wgslsmith_clamp_i32(u_input.a.x, arg_0.x, arg_0.x), var_0.c, Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(674f, global2.x, global2.x)))), all(vec4<bool>(var_0.d.b, false, var_0.a.b, global4.d.b)) & false, i32(-1i) * -2147483647i));
    let var_1 = Struct_2(countOneBits(u_input.d));
    global1 = array<Struct_3, 31>();
    var var_2 = var_0.a.b;
    return ~(~arg_0);
}

fn func_2() -> bool {
    global4 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(36517u, ~6024u, u_input.d), vec3<u32>(~1u, u_input.d, min(_wgslsmith_sub_u32(u_input.b, u_input.d), u_input.b ^ u_input.b))), 31u)], 1032i, global4.c, Struct_3(_wgslsmith_f_op_vec3_f32(global4.d.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.a.x, 120f, 805f) + global4.c.a))), !(!(!global4.d.b)), ~global4.a.c));
    let var_0 = Struct_5(func_3(vec2<i32>(~u_input.a.x, reverseBits(-2147483647i)), ~vec4<u32>(21464u, countOneBits(0u), ~u_input.d, min(u_input.d, 4294967295u))), 1u);
    var var_1 = Struct_5(var_0.a, _wgslsmith_div_u32(u_input.b, max(_wgslsmith_mod_u32(0u, 89578u) << (~u_input.d % 32u), reverseBits(~0u))));
    let var_2 = global4.c;
    var var_3 = vec2<bool>(true, true);
    return true;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec2<f32>) -> Struct_4 {
    var var_0 = func_2();
    var var_1 = (u_input.c >> (min(vec2<u32>(4294967295u, u_input.b), countOneBits(~vec2<u32>(76584u, 21959u))) % vec2<u32>(32u))) ^ vec2<i32>(global3[_wgslsmith_index_u32(5198u, 6u)], i32(-1i) * -_wgslsmith_mod_i32(14606i, 37626i));
    var var_2 = Struct_2(u_input.b);
    var_2 = Struct_2(31680u);
    var var_3 = arg_2.x;
    return Struct_4(Struct_3(global4.d.a, !(!(!global4.d.b)), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, u_input.c.x, 0i), u_input.a.xzz), var_1.x)), global4.b, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, -1829f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-191f, global2.x, -788f), vec3<f32>(arg_2.x, -214f, -562f), vec3<bool>(false, false, global4.a.b))) + _wgslsmith_f_op_vec3_f32(round(global4.c.a))))), Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.xxx + vec3<f32>(global4.d.a.x, -2065f, -1000f)) + vec3<f32>(global4.a.a.x, 304f, -1066f)), global2.wwz, global4.d.b)), false, _wgslsmith_mult_i32(i32(-1i) * -global4.a.c, -reverseBits(2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(min(-2147483647i, max(i32(-1i) * -26916i, 22066i)), ~((0i ^ -u_input.a.x) ^ 2147483647i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(f32(-1f) * -799f))))));
    let var_2 = ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, u_input.d, 4294967295u), ~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 2305u), vec2<u32>(0u, 7710u)) | 23188u), 19172u, u_input.d);
    var var_3 = func_1(u_input.b, ~(-global3[_wgslsmith_index_u32(20728u, 6u)] >> (firstTrailingBit(80965u) % 32u)), global2.wy);
    let var_4 = all(select(vec4<bool>(719f > _wgslsmith_f_op_f32(-global4.a.a.x), select(var_3.d.b, any(vec3<bool>(var_3.d.b, false, var_3.a.b)), true), true, false), select(select(vec4<bool>(var_3.a.b, var_3.a.b, global4.a.b, global4.a.b), select(vec4<bool>(global4.d.b, true, global4.d.b, var_3.a.b), vec4<bool>(false, true, false, var_3.a.b), vec4<bool>(false, global4.d.b, global4.d.b, var_3.d.b)), true), vec4<bool>(var_3.d.b, var_3.a.b, true, var_3.a.b), !vec4<bool>(var_3.d.b, true, true, false)), all(!(!vec3<bool>(false, global4.d.b, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-46491i, countOneBits(~var_0), 50444i, -24359i), var_2.x, -vec3<i32>(_wgslsmith_clamp_i32(-global3[_wgslsmith_index_u32(u_input.b, 6u)], global3[_wgslsmith_index_u32(var_2.x, 6u)] >> (0u % 32u), var_3.b), 20572i, 17593i));
}

