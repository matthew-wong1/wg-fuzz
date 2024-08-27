struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_3) -> f32 {
    global1 = array<Struct_2, 22>();
    return -1658f;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-452f, -1391f)))))), any(vec3<bool>(true, !global0.a, select(u_input.b.x != 4294967295u, global0.a, !global0.a))), any(!select(vec3<bool>(false, false, false), !vec3<bool>(global0.a, global0.a, global0.a), select(true, true, global0.a))), _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(arg_1.x, 13211u, arg_1.x)) << (vec3<u32>(1u, ~arg_1.x, _wgslsmith_clamp_u32(arg_1.x, arg_1.x, u_input.b.x)) % vec3<u32>(32u)), select(vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, arg_1.x), select(arg_1.x, 66410u, global0.a), u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, arg_1.x) & (vec3<u32>(arg_1.x, 14598u, 4294967295u) << (vec3<u32>(arg_1.x, 1u, arg_1.x) % vec3<u32>(32u))), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, global0.a, true), !vec3<bool>(true, true, global0.a)))));
    let var_1 = firstLeadingBit(0u);
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_1.x >> (arg_1.x % 32u), arg_1.x), vec2<u32>(4294967295u, 0u), var_0.b), ~u_input.b));
    var var_4 = ~(~(~reverseBits(vec3<u32>(var_1, u_input.b.x, arg_1.x)) << (countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), vec3<u32>(33577u, 59013u, 4294967295u))) % vec3<u32>(32u))));
    return vec2<i32>(~1i ^ _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a, -10254i, 2147483647i, -36553i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, -5003i, -2147483647i, u_input.a)) >> (vec4<u32>(var_1, u_input.b.x, 1u, 112654u) % vec4<u32>(32u))), -46618i);
}

fn func_2() -> u32 {
    let var_0 = u_input.a;
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    var var_1 = vec3<u32>(4561u, countOneBits(_wgslsmith_div_u32(~10214u, u_input.b.x)), ~u_input.b.x);
    let var_2 = -(vec2<i32>(-22236i, -firstTrailingBit(var_0)) & func_4(_wgslsmith_f_op_f32(func_3(vec2<u32>(16568u, var_1.x), 1u, ~vec4<u32>(u_input.b.x, var_1.x, u_input.b.x, u_input.b.x), Struct_3(Struct_1(vec2<f32>(-583f, -668f), true, false, u_input.b.x), vec2<f32>(482f, 1202f), global1[_wgslsmith_index_u32(1u, 22u)], Struct_1(vec2<f32>(-289f, -332f), global0.a, false, var_1.x), Struct_1(vec2<f32>(-1455f, 1717f), true, true, var_1.x)))), abs(vec2<u32>(25109u, 85988u))));
    return _wgslsmith_mod_u32(1u, abs(0u) ^ u_input.b.x);
}

fn func_1(arg_0: vec4<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - 633f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f))))));
    global0 = global1[_wgslsmith_index_u32(firstLeadingBit(func_2()), 22u)];
    let var_1 = reverseBits(firstTrailingBit(select(u_input.b.x, 11734u, !any(vec2<bool>(global0.a, true)))));
    global1 = array<Struct_2, 22>();
    let var_2 = vec3<u32>(reverseBits(27361u), var_1, reverseBits(~65522u));
    return any(!(!select(!vec3<bool>(global0.a, global0.a, false), select(vec3<bool>(false, global0.a, false), vec3<bool>(true, false, true), vec3<bool>(false, global0.a, global0.a)), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = global0.a;
    var var_2 = _wgslsmith_mult_vec2_i32(~(~countOneBits(-vec2<i32>(u_input.a, -13526i))), ~(-(~firstTrailingBit(vec2<i32>(u_input.a, 2147483647i)))));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(795f, -556f))) * vec2<f32>(-576f, -726f))), true, all(vec3<bool>(false, global0.a, global0.a)) == true, u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(170f, 1000f) + _wgslsmith_f_op_f32(ceil(-2364f))))), _wgslsmith_f_op_f32(min(-237f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-431f)) + _wgslsmith_f_op_f32(-252f - 981f))))), Struct_2(false), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-926f, 1164f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-714f, -985f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-485f)), _wgslsmith_f_op_f32(-671f - 815f))), false, !((false | global0.a) || func_1(vec4<i32>(u_input.a, u_input.a, var_2.x, var_2.x))), ~4294967295u), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(692f, _wgslsmith_f_op_f32(step(-492f, 269f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -291f), -106f)), global0.a || all(select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(true, global0.a, global0.a), global0.a)), global0.a, u_input.b.x));
    var_2 = vec2<i32>(u_input.a, max(9266i, _wgslsmith_add_i32(_wgslsmith_div_i32(10448i, var_2.x) << (_wgslsmith_sub_u32(64681u, 1u) % 32u), -2147483647i)));
    global1 = array<Struct_2, 22>();
    var var_4 = -2147483647i;
    var var_5 = global1[_wgslsmith_index_u32(abs(u_input.b.x), 22u)];
    var_3 = Struct_3(var_3.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(685f)), 538f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.d.a.x, 580f), var_3.e.a)))), var_3.c, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.a.x, -609f)), var_3.d.a, _wgslsmith_f_op_f32(-var_3.b.x) != var_3.e.a.x)), !global0.a, true, abs(0u)), var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec3<u32>(u_input.b.x, u_input.b.x, var_3.e.d)))), ~(~vec4<u32>(1u, 60530u, u_input.b.x, 4294967295u) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 46800u), vec4<u32>(var_3.e.d, u_input.b.x, 4294967295u, var_3.e.d)) % vec4<u32>(32u))));
}

