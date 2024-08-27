struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec4<u32>, 23>;

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: u32) -> i32 {
    var var_0 = arg_3;
    let var_1 = -arg_0;
    var var_2 = vec2<bool>(all(vec3<bool>(!all(vec4<bool>(true, false, false, false)), all(vec3<bool>(true, true, true)), false)), true || !(arg_0 > arg_0));
    global2 = ~max(arg_1.zy, vec2<u32>(1u, arg_3));
    var var_3 = Struct_1(~(global2.x | 65282u), ~vec4<u32>(39118u, arg_3, 3208u, ~arg_3), ~(max(vec4<u32>(arg_1.x, global2.x, arg_3, global2.x) << (vec4<u32>(arg_3, 58162u, 0u, 4294967295u) % vec4<u32>(32u)), ~global1[_wgslsmith_index_u32(4294967295u, 23u)]) ^ (~vec4<u32>(11358u, arg_3, 20771u, global2.x) << (select(vec4<u32>(4294967295u, arg_3, arg_1.x, arg_1.x), global1[_wgslsmith_index_u32(1362u, 23u)], true) % vec4<u32>(32u)))));
    return -1419i;
}

fn func_3() -> vec4<u32> {
    var var_0 = vec3<i32>(-(i32(-1i) * -(u_input.a << (global2.x % 32u))), u_input.b.x ^ -_wgslsmith_mod_i32(1i, u_input.a), -56041i);
    global1 = array<vec4<u32>, 23>();
    let var_1 = -101f;
    let var_2 = select(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), false, false);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, -234f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-992f))), _wgslsmith_f_op_f32(ceil(-600f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(940f)) + _wgslsmith_f_op_f32(-var_1))));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(~26048u, global2.x, ~0u) ^ vec3<u32>(global2.x, abs(4294967295u), _wgslsmith_add_u32(global2.x, global2.x))) << (vec3<u32>(0u, _wgslsmith_mod_u32(~global2.x, max(global2.x, 4294967295u)), firstTrailingBit(_wgslsmith_mult_u32(32026u, 35884u))) % vec3<u32>(32u)), vec3<u32>(global2.x, firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(global2.x, 1752u), abs(1u), ~global2.x)), _wgslsmith_dot_vec4_u32(~(~global1[_wgslsmith_index_u32(4294967295u, 23u)]), global1[_wgslsmith_index_u32(0u, 23u)]))), 23u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec4<i32>) -> f32 {
    let var_0 = Struct_1(4294967295u, arg_1.b << (~vec4<u32>(~4294967295u, ~global2.x, ~1553u, ~38854u) % vec4<u32>(32u)), ~arg_0.c);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-585f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-728f + -1128f)))), arg_2, _wgslsmith_f_op_f32(1000f * arg_2));
    global1 = array<vec4<u32>, 23>();
    var var_2 = global2.x;
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(min(arg_2, arg_2));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(arg_1.x, ~_wgslsmith_mod_vec4_u32(vec4<u32>(67910u, 1u, 1u, global2.x), vec4<u32>(global2.x, 11673u, arg_1.x, global2.x)) >> (global1[_wgslsmith_index_u32((global2.x & 13622u) << (countOneBits(0u) % 32u), 23u)] % vec4<u32>(32u)), abs(func_3())), Struct_1(~(~global2.x) ^ (firstLeadingBit(arg_1.x) & _wgslsmith_div_u32(75467u, global2.x)), global1[_wgslsmith_index_u32(abs(4294967295u), 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f + -1795f)))), vec4<i32>(u_input.a, u_input.a, u_input.a | 1i, abs(_wgslsmith_div_i32(u_input.b.x, u_input.a))) >> (global1[_wgslsmith_index_u32(firstTrailingBit(global2.x) ^ arg_1.x, 23u)] % vec4<u32>(32u))));
    var var_1 = !vec2<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0.x)), u_input.a < 151i);
    var var_2 = ~(min(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_clamp_i32(u_input.a, -25598i, u_input.b.x)), -u_input.b.x) << (~global2.x % 32u));
    var var_3 = Struct_1(0u, ~vec4<u32>(~(37420u << (global2.x % 32u)), ~arg_1.x ^ ~1u, 4294967295u, 31062u & _wgslsmith_add_u32(global2.x, 1u)), vec4<u32>(arg_1.x, global2.x, ~_wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(8035u, 23u)], _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(53313u, 23u)], global1[_wgslsmith_index_u32(7525u, 23u)])), arg_1.x & global2.x));
    let var_4 = Struct_1(firstTrailingBit(_wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(arg_1.x, global2.x << (38471u % 32u)))), vec4<u32>(_wgslsmith_dot_vec4_u32(~max(var_3.c, vec4<u32>(arg_1.x, 1u, var_3.c.x, 0u)), vec4<u32>(arg_1.x, 0u, var_3.c.x, reverseBits(1u))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, global2.x, 42233u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, global2.x), var_3.b.xyx), arg_0), ~countOneBits(var_3.c.yzy)), select(~(~arg_1.x), 0u, false), 0u), ~var_3.b);
    return Struct_1(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, var_3.b.x, 32879u), ~vec3<u32>(var_3.c.x, 1u, var_3.c.x))), vec4<u32>(1u, 1u, var_3.a, arg_1.x) | (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_4.c.x, global2.x, 1u), vec4<u32>(var_3.b.x, 0u, 9327u, var_3.a)) & vec4<u32>(_wgslsmith_mod_u32(global2.x, var_4.b.x), global2.x & 1u, global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), var_4.b.xz))), ~var_3.b);
}

fn func_5(arg_0: Struct_1) -> vec4<f32> {
    global2 = arg_0.b.zy;
    var var_0 = vec2<i32>(u_input.a, u_input.b.x);
    global0 = ~reverseBits(arg_0.c.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(985f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(333f, 1714f)) + -1028f) - _wgslsmith_f_op_f32(abs(996f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-263f, 612f)) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(trunc(-474f))));
    var_0 = u_input.b.xy;
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + var_1.x), 1000f), _wgslsmith_f_op_f32(-var_1.x), var_1.x, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(_wgslsmith_sub_i32(func_1(-25598i, ~vec3<u32>(19197u, global2.x, global2.x), _wgslsmith_clamp_vec2_i32(u_input.b.zy, vec2<i32>(u_input.b.x, -1i), vec2<i32>(u_input.b.x, -1i)), ~global2.x), 54554i));
    global1 = array<vec4<u32>, 23>();
    global0 = 4294967295u;
    var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(207f, 295f, 758f, -302f)))) * vec4<f32>(_wgslsmith_f_op_f32(-980f - 819f), -1215f, _wgslsmith_f_op_f32(sign(1147f)), 1783f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_5(func_2(vec3<bool>(true, false, true), vec3<u32>(global2.x, 40869u, global2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-393f, -694f, -2519f, 1207f), vec4<f32>(538f, 859f, -555f, 1000f), vec4<bool>(false, true, false, true)))), false)))));
    var var_2 = func_2(!vec3<bool>(all(vec4<bool>(false, false, true, false)), true, true), ~abs(func_2(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<u32>(25804u, 35236u, global2.x)).c.wyz));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32(-1i, u_input.a), func_1((u_input.a ^ 26137i) >> (global2.x % 32u), func_2(vec3<bool>(true, false, false), var_2.b.xyy).c.zxz ^ abs(vec3<u32>(4294967295u, var_2.a, 36649u)), _wgslsmith_div_vec2_i32(select(u_input.b.yz, u_input.b.yy, true), reverseBits(u_input.b.zx)), _wgslsmith_add_u32(18783u, global2.x)), _wgslsmith_dot_vec3_i32(-u_input.b, vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, 0i, -41307i)), u_input.b.x), _wgslsmith_div_vec2_u32(~var_2.c.yy, vec2<u32>(_wgslsmith_add_u32(4294967295u, ~global2.x), _wgslsmith_div_u32(reverseBits(var_2.a), global2.x & var_2.a))), var_2.b.xzz);
}

