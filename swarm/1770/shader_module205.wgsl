struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(30672u, 104070u, 99099u, 1u, 0u, 4294967295u, 61948u, 1u, 12065u, 100823u, 0u, 73580u, 8116u, 1u, 60307u, 8762u, 1u, 18162u, 44639u, 13421u, 10829u, 41177u, 1u, 79691u, 1u, 0u, 4294967295u);

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-1i, 2147483647i, 9420i, 1i), vec2<f32>(1090f, -205f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> bool {
    var var_0 = ~firstTrailingBit(-countOneBits(_wgslsmith_dot_vec3_i32(global1.a.wyy, global1.a.wzw)));
    return false;
}

fn func_3() -> f32 {
    global0 = array<u32, 27>();
    var var_0 = vec4<bool>(!(~0u >= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 27u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)]) ^ vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13623u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 27350u, global0[_wgslsmith_index_u32(4294967295u, 27u)]), ~vec3<u32>(77107u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48180u, 27u)], 27u)], 27u)], global0[_wgslsmith_index_u32(0u, 27u)])), 27u)]), !select(false, select(true, true, false) == true, false), true, all(vec3<bool>(true, true, false)));
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_sub_i32(-9245i, countOneBits(firstTrailingBit(global1.a.x)))), _wgslsmith_mult_i32(6047i, countOneBits(global1.a.x & 8537i)), u_input.a, reverseBits(-21307i));
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), global1.b.x, _wgslsmith_f_op_f32(round(577f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(159f, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-global1.b.x)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.b.x, global1.b.x, -1000f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.b.x, global1.b.x, -1355f))))))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.x), 1378f));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32) -> vec2<u32> {
    var var_0 = ~(max(global1.a.zz, global1.a.wy) | (_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(10503i, 2147483647i), global1.a.zz), vec2<i32>(arg_2, -19580i)) & _wgslsmith_mod_vec2_i32(-vec2<i32>(2147483647i, -1i), reverseBits(vec2<i32>(2147483647i, global1.a.x)))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(func_3()))), -800f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b.x - 604f))) - _wgslsmith_div_f32(-1549f, arg_0))));
    let var_3 = vec4<u32>(1u ^ global0[_wgslsmith_index_u32(~0u, 27u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(abs(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55570u, 27u)], 27u)])), 27u)]), 27u)], ~(~global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], 4294967295u, 4294967295u), vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]))), 27u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(71303u, global0[_wgslsmith_index_u32(0u, 27u)], 33352u, 1u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11024u, 27u)], 27u)], 27u)], 27u)], 59622u, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(38339u, 27u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 27u)], 23777u, 1u))), vec4<u32>(~select(4294967295u, 0u, false), min(4294967295u >> (0u % 32u), global0[_wgslsmith_index_u32(73789u, 27u)] & 3763u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(10634u)), 27u)])), 27u)], 27u)]);
    let var_4 = 1060f;
    return var_3.ww >> (select(~(~(var_3.yz ^ var_3.zz)), vec2<u32>(~var_3.x | 4294967295u, var_3.x), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true))) % vec2<u32>(32u));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: i32) -> vec2<u32> {
    let var_0 = countOneBits(arg_1);
    var var_1 = _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(31549u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], 31491u, 40671u, global0[_wgslsmith_index_u32(71480u, 27u)]), select(vec4<u32>(60522u, global0[_wgslsmith_index_u32(var_0.x, 27u)], 18847u, var_0.x), vec4<u32>(arg_1.x, arg_1.x, var_0.x, 286u), false))), 54945u), 27u)]);
    global1 = Struct_1(arg_0.c.a, vec2<f32>(588f, 150f));
    var_1 = var_0.x;
    return vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 1u, 0u, 104251u)), vec4<u32>(106727u, global0[_wgslsmith_index_u32(arg_1.x, 27u)], arg_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 27u)], 27u)])), countOneBits(var_0.x) ^ ~80253u) >> ((35247u << (var_0.x % 32u)) % 32u), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(max(-39310i, -(-u_input.a & -global1.a.x)));
    var var_1 = 1u;
    global1 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(-global1.b));
    var var_2 = !select(vec2<bool>(all(vec3<bool>(true, true, true)), select(true, true, true)), vec2<bool>(select(any(vec4<bool>(true, true, true, false)), true, true), func_1()), true);
    let var_3 = Struct_3(~vec3<i32>(-(~29229i), _wgslsmith_dot_vec3_i32(global1.a.xwy, ~vec3<i32>(u_input.a, var_0, global1.a.x)), var_0));
    let var_4 = ~func_4(Struct_2(!(!vec3<bool>(var_2.x, true, var_2.x)), select(!vec4<bool>(false, true, var_2.x, var_2.x), !vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(var_2.x, false, false, true)), Struct_1(~global1.a, _wgslsmith_f_op_vec2_f32(min(global1.b, vec2<f32>(816f, global1.b.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.b.x, global1.b.x, global1.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, 506f) * vec3<f32>(global1.b.x, global1.b.x, 830f))), Struct_1(vec4<i32>(-2147483647i, 13655i, 2147483647i, 4673i) ^ global1.a, _wgslsmith_div_vec2_f32(vec2<f32>(682f, global1.b.x), global1.b))), func_2(global1.b.x, _wgslsmith_div_f32(global1.b.x, -144f), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a, var_3.a.x, var_0), ~global1.a.x)), _wgslsmith_add_i32(u_input.a & -1i, global1.a.x | global1.a.x) ^ _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-47536i, var_0)), firstTrailingBit(var_3.a.yy)));
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(35146u, 18591u, var_4.x, var_4.x), vec4<u32>(17847u, 3911u, 14476u, 85973u) | vec4<u32>(var_4.x, 26149u, 4294967295u, var_4.x)), vec4<u32>(4294967295u, _wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(var_4.x, 27u)]), select(var_4.x, 1u, var_2.x), global0[_wgslsmith_index_u32(abs(43551u), 27u)])), ~min(0u, 1u & var_4.x), ~var_4.x), _wgslsmith_add_vec4_u32(select(max(vec4<u32>(21115u, var_4.x, global0[_wgslsmith_index_u32(var_4.x, 27u)], var_4.x), ~vec4<u32>(4294967295u, var_4.x, global0[_wgslsmith_index_u32(4294967295u, 27u)], 1u)), ~(vec4<u32>(0u, global0[_wgslsmith_index_u32(21243u, 27u)], 30607u, var_4.x) >> (vec4<u32>(8328u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_4.x, 27u)], 27u)], 27u)], 1u, 97072u) % vec4<u32>(32u))), vec4<bool>(var_2.x, true, true, var_2.x)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(6963u, var_4.x, var_4.x, global0[_wgslsmith_index_u32(0u, 27u)]), vec4<u32>(var_4.x, global0[_wgslsmith_index_u32(30624u, 27u)], global0[_wgslsmith_index_u32(var_4.x, 27u)], 71471u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_clamp_vec3_i32(-var_3.a, ~(~(~vec3<i32>(2147483647i, var_3.a.x, 6022i))), vec3<i32>(abs(u_input.a), -59378i, -16440i) | vec3<i32>(firstLeadingBit(4170i), ~var_3.a.x, var_0)), reverseBits(global1.a.yzy));
}

