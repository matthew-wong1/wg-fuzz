struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 14>;

var<private> global2: Struct_3 = Struct_3(vec2<i32>(21021i, -52034i), Struct_2(Struct_1(vec2<u32>(25997u, 4294967295u), 77178u, vec4<u32>(4294967295u, 0u, 93180u, 0u)), Struct_1(vec2<u32>(0u, 58128u), 0u, vec4<u32>(60893u, 0u, 1u, 7189u)), true));

var<private> global3: Struct_4 = Struct_4(-1i, false, -5698i, Struct_2(Struct_1(vec2<u32>(104565u, 0u), 1u, vec4<u32>(39497u, 13796u, 52954u, 0u)), Struct_1(vec2<u32>(6518u, 22580u), 1u, vec4<u32>(20686u, 0u, 41442u, 14262u)), true));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<bool>) -> bool {
    let var_0 = Struct_3(max(-_wgslsmith_sub_vec2_i32(global2.a, vec2<i32>(global3.c, -19527i)), vec2<i32>(global2.a.x, _wgslsmith_mult_i32(global2.a.x, global3.a))) | global2.a, Struct_2(Struct_1(u_input.b.xy, u_input.b.x, _wgslsmith_mod_vec4_u32(global2.b.b.c, vec4<u32>(1u, 1u, global3.d.b.a.x, 0u)) ^ abs(global2.b.b.c)), Struct_1(~firstLeadingBit(global2.b.a.a), 22398u, reverseBits(global2.b.b.c)), true));
    let var_1 = global2.b.b.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-573f, -891f, -1330f) * vec3<f32>(-397f, -313f, -501f)), vec3<f32>(1000f, -910f, 270f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(527f, 1000f, 238f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-685f, 389f, -1000f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(222f, -1000f, -1258f) * vec3<f32>(447f, -471f, -1044f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 117f, -618f) * vec3<f32>(-1938f, 2131f, -275f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(493f, 209f, -199f))) - vec3<f32>(-871f, -1017f, -765f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1624f, 583f, 692f))))));
    global1 = array<u32, 14>();
    global0 = 886f;
    return var_0.b.c;
}

fn func_3() -> vec2<u32> {
    let var_0 = reverseBits(~((1u >> (~4294967295u % 32u)) | _wgslsmith_div_u32(72311u ^ global1[_wgslsmith_index_u32(0u, 14u)], 4294967295u)));
    return ~abs(~global2.b.b.c.ww);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_2) -> f32 {
    var var_0 = vec4<bool>(global3.c <= -1i, global3.b, (false || func_2(!arg_0.b.yy)) != arg_0.a.c, abs(-global2.a.x) < ~global3.c);
    let var_1 = Struct_1(~func_3() >> (~select(vec2<u32>(arg_0.a.b.a.x, arg_1.a.c.x), vec2<u32>(4294967295u, 1u) & vec2<u32>(u_input.b.x, arg_0.a.a.a.x), arg_0.b.yy) % vec2<u32>(32u)), 39066u, ~_wgslsmith_sub_vec4_u32(max(vec4<u32>(global3.d.b.a.x, 35577u, 0u, 47198u), vec4<u32>(4294967295u, global2.b.a.a.x, global2.b.a.b, 53564u)), vec4<u32>(0u, 5854u, 25604u, 10978u)) ^ arg_1.a.c);
    let var_2 = _wgslsmith_div_i32(global3.a, global2.a.x | (firstTrailingBit(-2147483647i) | max(71313i, max(global3.a, global3.a))));
    global2 = Struct_3(_wgslsmith_add_vec2_i32(global2.a >> (~(~vec2<u32>(61614u, arg_1.b.a.x)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(abs(firstLeadingBit(vec2<i32>(-29437i, 0i))), global2.a, -vec2<i32>(global2.a.x, 917i))), Struct_2(global2.b.b, Struct_1(~global2.b.a.c.xw, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.c.x, 0u) >> (~35736u % 32u), 14u)], var_1.c), true));
    let var_3 = arg_0.a.a;
    return -798f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -820f;
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-252f * _wgslsmith_f_op_f32(abs(-391f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-398f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_5(global2.b, vec3<bool>(global3.d.c, global3.d.c, true), global2.b.c, -2685f), global2.b)) - _wgslsmith_f_op_f32(f32(-1f) * -535f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1092f - -1000f) + _wgslsmith_f_op_f32(round(430f))) * -1339f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -443f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(-2173f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 2193f, _wgslsmith_f_op_f32(select(-356f, _wgslsmith_f_op_f32(-3611f + 1214f), true)))))));
    var var_1 = global2.a.x & ((_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global3.c, 37693i, 2147483647i), vec3<i32>(global2.a.x, global3.c, -1i)), vec3<i32>(global3.c, global2.a.x, global3.c) & vec3<i32>(-1i, global2.a.x, 15378i)) | _wgslsmith_clamp_i32(~global2.a.x, global3.a, global2.a.x)) >> ((_wgslsmith_clamp_u32(abs(u_input.b.x), 4294967295u, ~113811u) >> (~(~37302u) % 32u)) % 32u));
    var var_2 = Struct_4(0i, true, 1i, global3.d);
    var var_3 = vec4<u32>(global2.b.a.c.x, ~(43767u << (firstTrailingBit(~36607u) % 32u)), 48058u, abs(~6854u));
    global3 = Struct_4(~_wgslsmith_mult_i32(global3.c, ~(-90759i)), var_2.b, abs(select(~1i, global3.a, true)), global3.d);
    let var_4 = vec2<i32>(reverseBits(2147483647i), abs(_wgslsmith_clamp_i32(firstTrailingBit(-8895i), _wgslsmith_mod_i32(43855i, 13274i), ~(-2147483647i)))) >> (vec2<u32>(global3.d.a.c.x, global1[_wgslsmith_index_u32(global2.b.a.a.x, 14u)]) % vec2<u32>(32u));
    let var_5 = vec2<i32>(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-17618i, 33786i, 1i, var_4.x), vec4<i32>(global3.a, global3.a, 2147483647i, 2147483647i)), 1i, -9553i), 801i), global2.a.x | _wgslsmith_clamp_i32(var_4.x | ~(-2147483647i), global3.c, global2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(global3.c, 1i)), ~var_5, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(var_4, global2.a ^ vec2<i32>(global2.a.x, global3.c), var_4 >> (var_2.d.a.a % vec2<u32>(32u))), select(vec2<i32>(1i, 0i), vec2<i32>(0i, 1i), true))), ~(global2.b.b.c.zyy >> (~(vec3<u32>(53610u, 52693u, global2.b.b.c.x) | u_input.b) % vec3<u32>(32u))), ~var_2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(945f, var_0.x, -1401f, -209f), vec4<f32>(-369f, 661f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(791f, -673f, var_0.x, var_0.x), var_0) - vec4<f32>(-700f, var_0.x, -1442f, var_0.x)))), -41636i);
}

