struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(49840u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_4, arg_3: vec2<u32>) -> u32 {
    var var_0 = Struct_2(arg_2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1603f)), countOneBits((arg_2.b.c ^ ~arg_2.b.c) ^ ~vec3<u32>(4294967295u, 66829u, u_input.a.x)), vec3<bool>(all(vec2<bool>(true, !arg_0.x)), true, false), vec2<i32>(u_input.c.x, min(_wgslsmith_add_i32(-54128i, ~u_input.b), -arg_2.b.e.x)));
    var_0 = arg_2.b;
    var var_1 = var_0.a;
    var_1 = Struct_1(firstTrailingBit(firstTrailingBit(_wgslsmith_add_u32(~var_1.a, select(0u, 0u, true)))));
    global1 = var_0.a;
    return _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(~1u | (select(global1.a, 1u, var_0.d.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 20479u, 57734u, global1.a), vec4<u32>(1u, 1u, 4294967295u, 0u))), 0u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<u32>) -> vec2<f32> {
    var var_0 = 63911u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-553f, 1287f)))))));
    var_1 = 418f;
    var_0 = ~abs(1u) << (~(~0u) % 32u);
    let var_2 = all(select(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), arg_2.x > u_input.a.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, all(vec2<bool>(true, true)), true, true), true | (0i >= _wgslsmith_div_i32(-8966i, u_input.c.x))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1246f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-859f, _wgslsmith_f_op_f32(floor(-1395f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(224f, -353f))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: u32, arg_3: bool) -> vec2<f32> {
    var var_0 = Struct_4(arg_2, Struct_2(Struct_1(arg_2), -1000f, vec3<u32>(_wgslsmith_sub_u32(72462u, 1u), firstTrailingBit(27038u << (arg_2 % 32u)), 32863u), !(!(!vec3<bool>(arg_3, false, arg_3))), -(arg_0 ^ _wgslsmith_mult_vec2_i32(arg_0, vec2<i32>(u_input.b, arg_0.x)))));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(floor(var_1))));
    var var_3 = _wgslsmith_add_u32(_wgslsmith_mod_u32(2289u, _wgslsmith_mod_u32(0u, ~u_input.a.x | (u_input.a.x | 132409u))), u_input.a.x);
    let var_4 = Struct_3(var_0.b.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(var_0.b.c, Struct_3(Struct_1(func_3(vec4<bool>(true, true, arg_3, arg_3), true, Struct_4(4294967295u, Struct_2(Struct_1(arg_2), 716f, var_0.b.c, vec3<bool>(arg_3, var_0.b.d.x, true), vec2<i32>(52032i, arg_0.x))), var_0.b.c.xx))), firstLeadingBit(vec4<u32>(~var_0.b.a.a, ~arg_2, var_4.a.a, 1u)))));
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1091f, 1147f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(973f, -367f) + _wgslsmith_div_vec2_f32(vec2<f32>(-148f, 454f), vec2<f32>(663f, -419f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(50231i, u_input.c.x), -771f, 6753u, false))))));
    global1 = Struct_1(4294967295u);
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(~0i, 2147483647i), u_input.c.zz);
    var var_2 = true;
    global1 = Struct_1(abs(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global1.a, 1u), vec2<u32>(u_input.a.x, global1.a), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), ~max(u_input.a, u_input.a))));
    return Struct_4(4294967295u, Struct_2(Struct_1(~abs(31366u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1267f)), ~(select(vec3<u32>(1457u, 1u, 4294967295u), vec3<u32>(9758u, 16184u, u_input.a.x), false) | vec3<u32>(1u, global1.a, 1u)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, all(vec4<bool>(false, false, false, false)), true), any(vec2<bool>(true, true))), vec2<i32>(1i, _wgslsmith_sub_i32(u_input.b, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.b;
    var var_2 = vec4<bool>(!(!(!var_0.b.d.x)), true, !((var_0.b.e.x != var_0.b.e.x) | false), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(896f * var_1.b)) > var_0.b.b));
    var_2 = select(vec4<bool>(var_2.x, var_2.x, var_1.d.x, all(!vec4<bool>(var_2.x, false, true, false))), !vec4<bool>((var_1.c.x | 3620u) < 93596u, var_1.d.x, false, !(!var_0.b.d.x)), !vec4<bool>(all(vec4<bool>(false, var_2.x, var_1.d.x, var_2.x)), true, var_1.b > _wgslsmith_f_op_f32(var_0.b.b - -847f), true));
    let var_3 = var_1.d.x;
    var var_4 = vec2<bool>(!(all(vec4<bool>(true, var_0.b.d.x, false, var_1.d.x)) && var_2.x), !var_2.x);
    global0 = var_1.d.x;
    var var_5 = reverseBits(~(~53542i));
    let var_6 = select(select(vec4<bool>(4294967295u > global1.a, !all(vec4<bool>(true, false, var_4.x, true)), var_0.b.d.x, var_0.b.d.x), vec4<bool>(true, var_1.d.x, _wgslsmith_f_op_f32(min(1606f, -1081f)) <= _wgslsmith_f_op_f32(-var_0.b.b), any(!var_2.xz)), var_2.x), select(select(!(!vec4<bool>(true, var_1.d.x, var_4.x, false)), !(!vec4<bool>(false, var_2.x, var_1.d.x, var_0.b.d.x)), ~4294967295u == reverseBits(var_1.c.x)), vec4<bool>(~var_1.e.x != -var_1.e.x, !(-312f <= var_1.b), var_2.x, var_1.d.x), !(!select(vec4<bool>(var_2.x, var_4.x, true, var_4.x), vec4<bool>(var_0.b.d.x, true, var_1.d.x, var_0.b.d.x), var_2.x))), !vec4<bool>(var_1.d.x, true, select(false, false, var_0.b.d.x) || true, all(select(vec4<bool>(var_4.x, var_4.x, true, var_2.x), vec4<bool>(var_4.x, true, true, false), var_0.b.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_div_vec3_u32(var_0.b.c, vec3<u32>(u_input.a.x, 0u, 0u)))), abs(firstTrailingBit(vec4<i32>(var_1.e.x, ~(-4474i), _wgslsmith_sub_i32(var_1.e.x, 1i), -1i))));
}

