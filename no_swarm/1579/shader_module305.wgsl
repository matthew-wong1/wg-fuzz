struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: vec2<u32>;

var<private> global2: Struct_4 = Struct_4(vec4<u32>(142364u, 4294967295u, 11636u, 7454u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> bool {
    global2 = Struct_4(global2.a);
    global1 = vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global2.a.yxz, global2.a.zwx), ~global2.a.zwy), 0u);
    let var_0 = Struct_1(~1u > abs(u_input.a), ~(~(~reverseBits(2701u))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-623f, -1237f, -306f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(395f, 387f, 991f)))), firstLeadingBit(abs(vec3<u32>(1u, countOneBits(85684u), global1.x))));
    let var_1 = Struct_3(Struct_2(var_0.d.zx, min(vec4<i32>(1i, u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b), abs(71599i)), select(vec4<i32>(u_input.b, u_input.b, u_input.b, 40165i), select(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 2888i, -48711i, u_input.b), var_0.c), vec4<bool>(true, global0.x, var_0.c, global0.x)))));
    global1 = vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(67792u, var_0.b, u_input.a)) & vec3<u32>(0u, var_0.b, global1.x), vec3<u32>(4294967295u, u_input.a, global1.x) ^ (vec3<u32>(2990u, 65388u, 69476u) << (vec3<u32>(u_input.a, 1u, 1u) % vec3<u32>(32u)))), abs(u_input.a) | global1.x) & var_0.e.xz;
    return !any(vec3<bool>(global0.x, false, var_0.a));
}

fn func_1() -> f32 {
    global0 = vec3<bool>(!((func_2() && (global2.a.x >= global1.x)) | any(!vec3<bool>(false, true, global0.x))), any(!select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, false, global0.x)), !vec3<bool>(global0.x, global0.x, false), true)), select(!all(!vec3<bool>(global0.x, global0.x, false)), global0.x, any(!vec4<bool>(false, true, global0.x, true))));
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), -firstTrailingBit(-vec2<i32>(u_input.b, 1i))), u_input.b, select(~u_input.b, u_input.b, global0.x), ~((u_input.b | u_input.b) & _wgslsmith_mod_i32(u_input.b << (4294967295u % 32u), 23060i)));
    let var_1 = Struct_4(~(~vec4<u32>(68205u, 11463u >> (u_input.a % 32u), global1.x, 91131u)));
    let var_2 = -29190i >> (var_1.a.x % 32u);
    var var_3 = 40108u;
    return _wgslsmith_f_op_f32(f32(-1f) * -273f);
}

fn func_3(arg_0: Struct_1) -> Struct_4 {
    var var_0 = u_input.b;
    var var_1 = Struct_3(Struct_2(arg_0.d.zx, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, u_input.b), _wgslsmith_div_i32(u_input.b, 17433i)), u_input.b, ~2147483647i, -51128i)));
    var var_2 = arg_0;
    var_2 = Struct_1(!(!any(vec4<bool>(false, arg_0.c, var_2.c, false))) | (-1252f < arg_0.d.x), ~global1.x, true, vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)) * -1386f), _wgslsmith_f_op_f32(func_1())), vec3<u32>(6800u, firstTrailingBit(firstLeadingBit(arg_0.e.x)) | 36478u, countOneBits(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, global1.x)))));
    let var_3 = _wgslsmith_f_op_f32(select(-1106f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.a.a.x)))), true));
    return Struct_4(~vec4<u32>(_wgslsmith_add_u32(select(15610u, 18220u, true), _wgslsmith_add_u32(0u, var_2.b)), 14802u, 23860u, global2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_3(Struct_1(any(vec2<bool>(false, any(vec3<bool>(global0.x, true, true)))), u_input.a, false, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-549f, -517f, 441f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(618f, 107f, -1000f)), true)), vec3<f32>(_wgslsmith_f_op_f32(func_1()), -672f, -713f))), vec3<u32>(1u | ~global1.x, ~global2.a.x, 17469u)));
    global2 = Struct_4(global2.a);
    global2 = func_3(Struct_1((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -69964i, u_input.b), vec3<i32>(u_input.b, -44755i, -37445i)) == -1i) || any(select(vec3<bool>(global0.x, false, false), vec3<bool>(true, true, global0.x), true)), _wgslsmith_mult_u32(~global1.x, ~1u), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(231f, -803f, 316f))))), global2.a.wzw));
    global0 = select(!vec3<bool>(global0.x, !any(vec4<bool>(global0.x, true, true, global0.x)), global0.x), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(global0.x, false, any(vec4<bool>(true, global0.x, false, true))), true == !global0.x), select(!(!vec3<bool>(global0.x, true, true)), vec3<bool>(all(vec4<bool>(global0.x, global0.x, true, global0.x)), !global0.x, global0.x), global0.x), true), true);
    let var_0 = any(global0.yy) & all(!vec3<bool>(true, any(vec4<bool>(global0.x, global0.x, true, global0.x)), global0.x));
    let var_1 = reverseBits(1u);
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1254f, -393f) - vec2<f32>(1155f, -1763f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(519f, -495f))))), ~_wgslsmith_div_vec4_i32(-vec4<i32>(-37379i, u_input.b, u_input.b, 1i), firstTrailingBit(vec4<i32>(u_input.b, -2147483647i, u_input.b, 20582i)))));
    let var_3 = ~vec4<u32>(u_input.a, var_1, (~global2.a.x | 1u) & global1.x, global2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(502f + var_2.a.a.x), _wgslsmith_f_op_f32(exp2(var_2.a.a.x))), vec2<f32>(409f, _wgslsmith_f_op_f32(-847f + var_2.a.a.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.a.a.x, -883f))) * vec2<f32>(-1281f, 182f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-807f, _wgslsmith_f_op_f32(655f + var_2.a.a.x), 1559f, var_2.a.a.x))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.a.x), -1469f, var_2.a.a.x, var_2.a.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(477f, var_2.a.a.x, var_2.a.a.x, -169f) - vec4<f32>(-373f, var_2.a.a.x, var_2.a.a.x, var_2.a.a.x)), vec4<f32>(var_2.a.a.x, var_2.a.a.x, -986f, -1000f))))));
}

