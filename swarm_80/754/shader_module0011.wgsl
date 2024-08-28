struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: bool,
    e: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7>;

var<private> global1: array<bool, 3> = array<bool, 3>(false, true, true);

var<private> global2: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: u32) -> Struct_4 {
    let var_0 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(~1u, ~arg_3) & reverseBits(arg_1.x), arg_1.x);
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    let var_1 = !select(arg_2, vec4<bool>(_wgslsmith_f_op_f32(max(arg_0, -2037f)) == arg_0, true, true, false), true);
    global1 = array<bool, 3>();
    return Struct_4(min(~32364u, _wgslsmith_dot_vec3_u32(~vec3<u32>(23218u, var_0, arg_1.x), vec3<u32>(arg_3, 1u, arg_1.x)) | firstTrailingBit(~4294967295u)), ~arg_1.x, Struct_3(_wgslsmith_div_i32(-2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(61930i, global2.a), u_input.c.yy)), (_wgslsmith_div_i32(u_input.b, -14475i) >> (1u % 32u)) >> (0u % 32u)), 48978u <= u_input.a.x, select(!vec2<bool>(select(global1[_wgslsmith_index_u32(4294967295u, 3u)], false, true), false), select(vec2<bool>(true, any(vec4<bool>(var_1.x, global1[_wgslsmith_index_u32(0u, 3u)], var_1.x, false))), !var_1.yx, var_1.yx), 402f > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0)))));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec2<f32> {
    let var_0 = Struct_4(~1u, 4294967295u, func_2(476f, u_input.a.xy, select(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(30189u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], true), vec4<bool>(global1[_wgslsmith_index_u32(89686u, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], true, false), global1[_wgslsmith_index_u32(0u, 3u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(20533u, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], false), true), true), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]), true), all(!vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]))), firstTrailingBit(~4294967295u)).c, false, vec2<bool>(!global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, 39544u), 3u)], !(!any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)])))));
    global2 = arg_0;
    let var_1 = ~select(~(~u_input.a), ~(~u_input.a), vec3<bool>(true, global1[_wgslsmith_index_u32(21470u, 3u)], !global1[_wgslsmith_index_u32(var_0.a, 3u)])) & ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, var_0.b, var_0.a), ~vec3<u32>(var_0.b, 0u, 0u), var_0.d), firstLeadingBit(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(1u, u_input.a.x, 44497u))));
    let var_2 = _wgslsmith_f_op_f32(floor(-1000f));
    var var_3 = ~(~vec4<u32>(firstTrailingBit(9754u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.a, var_1.x, var_0.a), vec4<u32>(39441u, var_1.x, u_input.a.x, 0u)), ~(~16753u), var_0.a));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-173f, var_2, false)) + _wgslsmith_f_op_f32(exp2(var_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), var_2)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(797f, 697f) - vec2<f32>(-1931f, 1495f)))))));
}

fn func_1() -> i32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(1946f - -923f), vec2<u32>(~u_input.a.x, ~(~(~u_input.a.x))), vec4<bool>(all(vec2<bool>(any(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], false)), true)), global1[_wgslsmith_index_u32(1u, 3u)], false, any(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], true)))), 0u);
    let var_1 = 7147i << (~u_input.a.x % 32u);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(563f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(-149f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-607f, 886f) + _wgslsmith_f_op_vec2_f32(func_3(var_0.c, var_0.c.a))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f * _wgslsmith_div_f32(-770f, -1253f))), _wgslsmith_f_op_f32(exp2(1f))));
    let var_3 = -1188f;
    let var_4 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(8139u, 0u, var_0.a) | firstLeadingBit(u_input.a)), vec3<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, var_0.a, 6572u, 0u), vec4<u32>(var_0.a, u_input.a.x, 61789u, u_input.a.x)), vec4<u32>(4294967295u, 80096u, var_0.b, 43766u) << (vec4<u32>(u_input.a.x, 6114u, var_0.a, 4294967295u) % vec4<u32>(32u))), var_0.a, ~var_0.b >> ((4294967295u & u_input.a.x) % 32u))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x, var_0.b, ~37645u), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, var_0.b, 4294967295u, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0.a, var_0.a, 9186u), vec4<u32>(23015u, var_0.a, u_input.a.x, 28383u), vec4<u32>(var_0.a, u_input.a.x, 4294967295u, var_0.b)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.b, 138399u, u_input.a.x), vec4<u32>(var_0.a, var_0.b, u_input.a.x, var_0.b)) % vec4<u32>(32u))), ~(vec4<u32>(u_input.a.x, 65082u, 4294967295u, 77403u) << (abs(vec4<u32>(29581u, 2875u, var_0.b, 0u)) % vec4<u32>(32u)))));
    return func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1130f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))), vec2<u32>(4294967295u, ~firstTrailingBit(~0u)), !select(!(!vec4<bool>(false, var_0.d, true, false)), select(select(vec4<bool>(false, var_0.d, var_0.d, global1[_wgslsmith_index_u32(var_4, 3u)]), vec4<bool>(var_0.d, false, false, global1[_wgslsmith_index_u32(6254u, 3u)]), global1[_wgslsmith_index_u32(0u, 3u)]), !vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(40765u, 3u)]), !var_0.d), any(!vec2<bool>(global1[_wgslsmith_index_u32(1471u, 3u)], var_0.e.x))), 62601u).c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(func_1(), -(~_wgslsmith_sub_i32(global2.a, global2.b) << (~(~4294967295u) % 32u)), 2147483647i);
    var var_1 = select(vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(42780u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(4294967295u, 32761u, 0u, 0u)), 3u)], 17966u == abs(u_input.a.x)), vec2<bool>(false, global1[_wgslsmith_index_u32(34368u, 3u)]));
    let var_2 = _wgslsmith_div_i32(-4831i, reverseBits(_wgslsmith_add_i32(-_wgslsmith_sub_i32(53786i, var_0.x), -20501i)));
    global2 = Struct_3(var_0.x, u_input.b);
    let var_3 = true;
    let var_4 = Struct_4(countOneBits(u_input.a.x >> (1u % 32u)), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(27015u, 7u)]), -global0[_wgslsmith_index_u32(4294967295u, 7u)]) ^ (_wgslsmith_div_i32(7402i, var_0.x) ^ _wgslsmith_clamp_i32(global2.b, global2.a, -2147483647i)), func_2(222f, reverseBits(vec2<u32>(u_input.a.x, 15977u)), select(vec4<bool>(false, var_3, true, false), vec4<bool>(var_1.x, var_3, var_3, var_1.x), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(4557u, 3u)], true, false), vec4<bool>(var_1.x, var_3, var_1.x, false), vec4<bool>(var_3, false, false, false))), u_input.a.x).c.b), var_3, !func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(630f, 1435f))), select(u_input.a.xz, ~u_input.a.yz, !var_3), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], true, global1[_wgslsmith_index_u32(50504u, 3u)], false)), ~4294967295u).e);
    let var_5 = ~countOneBits(_wgslsmith_clamp_vec2_u32(abs(u_input.a.zz), vec2<u32>(u_input.a.x ^ 60199u, var_4.b), ~vec2<u32>(u_input.a.x, var_4.a)));
    var_1 = vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], all(!(!vec3<bool>(false, var_1.x, var_3))));
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, 593f, 626f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(775f, 1314f, -1185f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~firstTrailingBit(u_input.a.x));
}

