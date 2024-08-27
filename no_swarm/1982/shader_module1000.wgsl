struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: u32;

var<private> global2: array<i32, 7> = array<i32, 7>(i32(-2147483648), -58581i, 42185i, 2147483647i, -43937i, 0i, 0i);

var<private> global3: Struct_1;

var<private> global4: vec3<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> vec4<i32> {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.x))), 1305f, arg_1.a.x), arg_0.b);
    global0 = array<vec3<i32>, 30>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.x, _wgslsmith_f_op_f32(ceil(arg_2.c.x))), _wgslsmith_f_op_vec2_f32(arg_1.a.zz - vec2<f32>(-891f, var_1.a.x)))))), Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.a.x)), _wgslsmith_f_op_f32(global4.x - arg_0.a.x)), _wgslsmith_f_op_f32(step(global4.x, arg_2.a.x)), arg_0.a.x), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.c) * arg_2.c))), !var_1.b, _wgslsmith_add_u32(~arg_2.e, max(u_input.a.x, u_input.a.x) ^ 60252u) | ~1u);
    global1 = var_2.e;
    return _wgslsmith_mult_vec4_i32(vec4<i32>(~firstTrailingBit(global2[_wgslsmith_index_u32(var_2.e, 7u)]), 12279i, -1i << ((firstTrailingBit(u_input.b) | ~12310u) % 32u), _wgslsmith_mod_i32(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_dot_vec2_i32(vec2<i32>(50644i, global2[_wgslsmith_index_u32(0u, 7u)]), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(3734u, 7u)]))), ~(-2795i))), vec4<i32>(-(i32(-1i) * -20359i), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(43186u, 23758u), 7u)], global2[_wgslsmith_index_u32(~(~(4294967295u | var_2.e)), 7u)], global2[_wgslsmith_index_u32(~(~arg_2.e), 7u)]));
}

fn func_4(arg_0: vec4<i32>) -> f32 {
    var var_0 = ~(~(~(~u_input.a.x))) & _wgslsmith_dot_vec2_u32(u_input.a.zz, ~u_input.a.xx);
    var_0 = 11113u;
    var var_1 = Struct_1(vec3<f32>(global3.a.x, _wgslsmith_div_f32(global3.a.x, global3.a.x), global3.a.x), true);
    var var_2 = var_1.b;
    var var_3 = var_1.b;
    return global3.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2) -> vec2<f32> {
    global2 = array<i32, 7>();
    let var_0 = _wgslsmith_f_op_f32(func_4(func_3(arg_0, arg_2.b, arg_2, (_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(arg_2.e, 7u)], 2147483647i) <= ~global2[_wgslsmith_index_u32(arg_2.e, 7u)]) & arg_2.b.b)));
    let var_1 = arg_2;
    let var_2 = vec2<i32>(global2[_wgslsmith_index_u32(reverseBits(~(~49371u & ~var_1.e)), 7u)], ~reverseBits(-global2[_wgslsmith_index_u32(var_1.e, 7u)]) & abs(~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(5236u, 7u)], global2[_wgslsmith_index_u32(arg_2.e, 7u)])));
    let var_3 = reverseBits(abs(_wgslsmith_add_vec2_u32(u_input.a.xx, vec2<u32>(~4294967295u, u_input.b))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-221f - _wgslsmith_f_op_f32(-1277f + arg_0.a.x)), 577f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 7u)], -2147483647i, global2[_wgslsmith_index_u32(62257u, 7u)], global2[_wgslsmith_index_u32(3077u, 7u)]), vec4<i32>(var_2.x, -16655i, global2[_wgslsmith_index_u32(arg_2.e, 7u)], var_2.x)))))));
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(global3.a, false), vec3<bool>(global3.b, global3.b, true), Struct_2(vec2<f32>(global3.a.x, 731f), Struct_1(global3.a, false), vec4<f32>(global3.a.x, global4.x, 126f, 1462f), true, u_input.a.x))), vec2<f32>(400f, _wgslsmith_f_op_f32(floor(173f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global3.a.x, 1895f)), 195f, -721f) - _wgslsmith_f_op_vec3_f32(global3.a + _wgslsmith_f_op_vec3_f32(select(global3.a, vec3<f32>(1454f, 829f, -1757f), global3.b)))), !(any(vec4<bool>(global3.b, global3.b, global3.b, global3.b)) || false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.a.x, -1036f, global3.a.x, global3.a.x), vec4<f32>(-1218f, -555f, 283f, global4.x)))))))), false, ~(0u >> (1u % 32u)));
    global0 = array<vec3<i32>, 30>();
    let var_1 = Struct_1(vec3<f32>(1303f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(496f + global3.a.x) + global3.a.x))), -1041f), all(vec2<bool>(all(vec3<bool>(true, true, false)), var_0.d)));
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~1u), 0u, var_0.e) >> (~vec3<u32>(~var_0.e, abs(u_input.a.x), 1u) % vec3<u32>(32u)), vec3<u32>(~7640u, ~var_0.e, _wgslsmith_sub_u32(1u, var_0.e)));
    var var_3 = var_0;
    return _wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(31785u, 7u)], global2[_wgslsmith_index_u32(68453u, 7u)], global2[_wgslsmith_index_u32(var_0.e, 7u)], 1266i), abs(vec4<i32>(-1295i, global2[_wgslsmith_index_u32(4294967295u, 7u)], 26862i, global2[_wgslsmith_index_u32(41064u, 7u)])), ~vec4<i32>(global2[_wgslsmith_index_u32(var_0.e, 7u)], -38579i, global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(var_0.e, 7u)])), firstTrailingBit(~vec4<i32>(-7128i, 14656i, global2[_wgslsmith_index_u32(var_3.e, 7u)], global2[_wgslsmith_index_u32(8221u, 7u)]))), ~(vec4<i32>(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(1u, 7u)], -25028i), global2[_wgslsmith_index_u32(~var_0.e, 7u)], global2[_wgslsmith_index_u32(82942u, 7u)], 27385i) << (~(~vec4<u32>(var_3.e, var_3.e, 0u, var_0.e)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 7u)] << ((var_3.e << (var_3.e % 32u)) % 32u), firstLeadingBit(-38721i & global2[_wgslsmith_index_u32(var_0.e, 7u)]), abs(-56579i << (var_0.e % 32u)), ~(-1i)), ~(vec4<i32>(-1i) * -vec4<i32>(global2[_wgslsmith_index_u32(var_3.e, 7u)], global2[_wgslsmith_index_u32(var_0.e, 7u)], 2147483647i, global2[_wgslsmith_index_u32(var_3.e, 7u)])), min(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_0.e, 7u)], 0i, 32i), vec4<i32>(global2[_wgslsmith_index_u32(var_0.e, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(var_0.e, 7u)], global2[_wgslsmith_index_u32(35534u, 7u)])), -(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 7u)], -10028i, global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(1u, 7u)]) ^ vec4<i32>(-1i, global2[_wgslsmith_index_u32(1u, 7u)], 2147483647i, 6658i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    global2 = array<i32, 7>();
    var var_1 = min(func_1(), countOneBits(max(firstLeadingBit(vec4<i32>(4870i, global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)], -16613i)), abs(select(vec4<i32>(1i, global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(13831u, 7u)], global2[_wgslsmith_index_u32(13938u, 7u)], 0i), false)))));
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global3.a + vec3<f32>(global3.a.x, -961f, _wgslsmith_f_op_f32(global3.a.x * -1000f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + global3.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -146f), -1192f));
    global2 = array<i32, 7>();
    var var_2 = countOneBits((_wgslsmith_clamp_i32(~global2[_wgslsmith_index_u32(0u, 7u)], -var_1.x, _wgslsmith_sub_i32(var_1.x, 18673i)) ^ 1i) & (i32(-1i) * -1i));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(43023u, u_input.a.x), abs(1u)), 1i);
}

