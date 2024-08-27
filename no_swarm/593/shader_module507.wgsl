struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(1427f, 1371f), vec2<f32>(-545f, -228f)));

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<f32>(-254f, -642f), vec2<f32>(-1175f, -965f)), Struct_1(vec2<f32>(934f, 2084f), vec2<f32>(1017f, 490f)), Struct_1(vec2<f32>(-1874f, -426f), vec2<f32>(632f, -129f)), Struct_1(vec2<f32>(1000f, 340f), vec2<f32>(370f, 1823f)), Struct_1(vec2<f32>(1676f, -311f), vec2<f32>(559f, -650f)), Struct_1(vec2<f32>(-1372f, -1859f), vec2<f32>(944f, 2087f)), Struct_1(vec2<f32>(540f, 229f), vec2<f32>(-490f, -396f)), Struct_1(vec2<f32>(-1921f, 1748f), vec2<f32>(1655f, -1255f)), Struct_1(vec2<f32>(-1000f, -1268f), vec2<f32>(-695f, 157f)), Struct_1(vec2<f32>(-199f, 570f), vec2<f32>(-715f, 1000f)), Struct_1(vec2<f32>(-488f, 329f), vec2<f32>(-1245f, -1000f)), Struct_1(vec2<f32>(-1000f, 1343f), vec2<f32>(901f, -517f)), Struct_1(vec2<f32>(-443f, 1340f), vec2<f32>(601f, -1255f)), Struct_1(vec2<f32>(-1000f, -2072f), vec2<f32>(-1000f, -1477f)), Struct_1(vec2<f32>(749f, -985f), vec2<f32>(1511f, 525f)), Struct_1(vec2<f32>(794f, 729f), vec2<f32>(-1678f, 2136f)), Struct_1(vec2<f32>(-239f, -505f), vec2<f32>(132f, -818f)), Struct_1(vec2<f32>(485f, -133f), vec2<f32>(-2076f, -164f)), Struct_1(vec2<f32>(-637f, -1932f), vec2<f32>(451f, 1264f)));

var<private> global2: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = 511f;
    let var_1 = select(select(all(vec2<bool>(true, true)), !(global0.a.b.x != 189f), true) | !any(vec4<bool>(true, true, true, true)), !(_wgslsmith_mod_i32(57675i, u_input.e) >= _wgslsmith_dot_vec3_i32(u_input.a.zwx, vec3<i32>(-22716i, u_input.c.x, 1i))) && (select(all(vec4<bool>(true, true, true, false)), false, true) | true), any(vec4<bool>(true, true, true, true)));
    var var_2 = vec4<u32>(u_input.b, ~(~4294967295u), ~0u, 0u & reverseBits(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x), _wgslsmith_mod_u32(u_input.d.x, 27701u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1554f, -722f, global0.a.b.x, global0.a.a.x) + vec4<f32>(var_0, 1018f, global0.a.a.x, -644f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, global0.a.b.x, global0.a.b.x, global0.a.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(abs(global0.a.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(599f * 1066f))), _wgslsmith_div_f32(_wgslsmith_div_f32(1609f, global0.a.b.x), _wgslsmith_f_op_f32(100f - -1000f)), _wgslsmith_f_op_f32(-var_0)))));
    let var_4 = !vec2<bool>(!any(vec2<bool>(var_1, var_1)) == var_1, true);
    return vec3<u32>(~11423u, arg_0.x, max(firstTrailingBit(1u), var_2.x) << (u_input.d.x % 32u));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1773f), _wgslsmith_f_op_f32(arg_0.b.x - 1060f)))))), vec2<f32>(global0.a.a.x, -1149f));
    var var_1 = Struct_1(var_0.b, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1135f)))), -558f));
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    var var_2 = min(~vec3<u32>(4294967295u, u_input.d.x | 4294967295u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(0u, 121024u))) & ~(~vec3<u32>(u_input.d.x, u_input.b, u_input.d.x)), ~vec3<u32>(~u_input.d.x, 1u, u_input.d.x) & _wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.d.x, 0u, u_input.b)), func_3(firstLeadingBit(vec4<u32>(u_input.d.x, 4294967295u, 25243u, u_input.b)))));
    return !vec4<bool>(!any(vec3<bool>(true, false, true)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), true, true);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    global2 = -5633i;
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1093f - arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_f_op_f32(global0.a.a.x + arg_0.a.x))) >= _wgslsmith_f_op_f32(global0.a.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(999f * global0.a.b.x))), !all(!func_2(Struct_1(arg_0.b, global0.a.a))));
    global1 = array<Struct_1, 19>();
    let var_1 = u_input.b;
    var_0 = vec2<bool>(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.b, vec2<f32>(315f, 1836f))) + vec2<f32>(arg_0.b.x, -1000f)), _wgslsmith_f_op_vec2_f32(ceil(arg_0.a)))).x, -u_input.e <= (_wgslsmith_dot_vec3_i32(select(arg_1.zzy, vec3<i32>(arg_1.x, -1i, 1i), false), vec3<i32>(arg_1.x, 15889i, u_input.a.x) >> (vec3<u32>(4294967295u, 47671u, u_input.d.x) % vec3<u32>(32u))) & -1i));
    return Struct_2(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(131f, -566f))) * _wgslsmith_f_op_vec2_f32(ceil(global0.a.b))))), global0.a.b), _wgslsmith_add_vec4_i32(u_input.a, u_input.a));
    global2 = -2147483647i;
    let var_0 = ~vec4<u32>(u_input.d.x, ~max(max(45130u, 4294967295u), u_input.d.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, u_input.d.x), u_input.d.x), _wgslsmith_sub_u32(u_input.b, 4294967295u & u_input.d.x)), firstTrailingBit(4294967295u) | u_input.d.x);
    let var_1 = func_1(func_1(func_1(func_1(func_1(Struct_1(vec2<f32>(-1003f, 2130f), vec2<f32>(global0.a.b.x, 1000f)), u_input.a).a, u_input.a << (var_0 % vec4<u32>(32u))).a, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -48426i, u_input.e, u_input.c.x), u_input.a) >> (vec4<u32>(103028u, var_0.x, 4294967295u, 62015u) % vec4<u32>(32u))).a, firstTrailingBit(~u_input.a >> ((var_0 >> (vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, u_input.d.x) % vec4<u32>(32u))) % vec4<u32>(32u)))).a, u_input.a);
    var var_2 = func_1(func_1(global1[_wgslsmith_index_u32(var_0.x, 19u)], firstLeadingBit(~(~vec4<i32>(u_input.e, -2147483647i, u_input.c.x, u_input.c.x)))).a, u_input.a);
    var var_3 = -345f;
    var var_4 = var_1;
    let var_5 = 1i;
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(754f * _wgslsmith_f_op_f32(ceil(var_2.a.b.x))))), 163f)), _wgslsmith_f_op_f32(170f - -234f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(687f, global0.a.a.x, var_4.a.a.x, 319f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(782f, 550f, global0.a.b.x, -1717f), vec4<f32>(-876f, 202f, -567f, 289f))))))), vec2<u32>(u_input.d.x ^ ~u_input.d.x, u_input.b << (1u % 32u)));
}

