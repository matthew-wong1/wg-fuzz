struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
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

var<private> global0: array<f32, 16> = array<f32, 16>(1562f, 783f, 633f, 1041f, -1010f, 1000f, -231f, 302f, -1745f, 321f, 846f, 1303f, -491f, -101f, -2384f, -1416f);

var<private> global1: bool = false;

var<private> global2: array<Struct_4, 3>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    global2 = array<Struct_4, 3>();
    global1 = arg_1.d;
    let var_0 = global2[_wgslsmith_index_u32(arg_0.a.x, 3u)];
    global0 = array<f32, 16>();
    var var_1 = var_0.d;
    return _wgslsmith_f_op_vec2_f32(sign(var_0.d));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec2<u32> {
    let var_0 = Struct_2(vec4<u32>(reverseBits(62563u | u_input.b), firstLeadingBit(_wgslsmith_add_u32(u_input.b, 1u)), _wgslsmith_mod_u32(countOneBits(10429u), _wgslsmith_add_u32(1u, u_input.c)), _wgslsmith_clamp_u32(1u, ~55382u, 4294967295u)) ^ vec4<u32>(min(u_input.c, 1u), u_input.b & abs(u_input.c), 4294967295u >> (1u % 32u), 68672u), Struct_1(countOneBits(firstLeadingBit(abs(vec3<u32>(14369u, 4294967295u, u_input.c)))), -3487i, _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(7942u), u_input.b, select(10098u, u_input.c, true), ~u_input.b), vec4<u32>(54932u, u_input.b, ~0u, _wgslsmith_add_u32(83673u, u_input.c))), true), !vec4<bool>(any(vec3<bool>(true, false, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), true), false, Struct_1(vec3<u32>(4294967295u, 1u, u_input.b) >> (vec3<u32>(~7330u, 1068u, ~u_input.b) % vec3<u32>(32u)), _wgslsmith_div_i32(1i | u_input.a.x, 1i), vec4<u32>(abs(4294967295u), ~u_input.b | 17474u, u_input.c, ~(u_input.b | 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.x, -305f), -1626f, any(vec2<bool>(false, true)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -968f))));
    var var_1 = arg_2.xx;
    global1 = var_0.b.d;
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(396f, _wgslsmith_f_op_f32(var_1.x * arg_2.x)))))));
    return vec2<u32>(var_0.a.x, ~1u);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_4(false, vec4<i32>(-(~1i), u_input.a.x, ~(~u_input.a.x), -1i), arg_0.xy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<u32>(u_input.b, 61210u, u_input.c), -29442i, vec4<u32>(1u, 1u, 4294967295u, 4294967295u), true), Struct_1(vec3<u32>(u_input.b, 33188u, 27724u), 32970i, vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.c), true))) - _wgslsmith_f_op_vec2_f32(step(arg_1.xy, vec2<f32>(global0[_wgslsmith_index_u32(62396u, 16u)], -1064f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.zw) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.zw, arg_1.zy) * _wgslsmith_div_vec2_f32(arg_1.xx, vec2<f32>(2192f, -1000f)))))), abs(~func_3(_wgslsmith_f_op_f32(-arg_1.x), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<f32>(959f, -2400f, 677f))));
    let var_1 = u_input.c;
    let var_2 = Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1, 0u, var_0.e.x, 3325u), vec4<u32>(26290u, var_1, 71595u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 1u, var_1, 1u), vec4<u32>(var_0.e.x, 36887u, var_1, u_input.c))) << (vec4<u32>(u_input.c, var_1, ~var_1, var_1) % vec4<u32>(32u)), ~countOneBits(firstLeadingBit(vec4<u32>(u_input.c, 19821u, u_input.c, u_input.c)))), Struct_1(vec3<u32>(var_0.e.x, ~62905u, min(countOneBits(var_0.e.x), countOneBits(1u))), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_0.b.x, 1i), var_0.b.zyy), -vec3<i32>(1i, 7999i, -2147483647i)), select(vec4<u32>(var_0.e.x, var_0.e.x, var_1, 4294967295u), ~vec4<u32>(u_input.b, 1u, u_input.c, var_0.e.x), arg_0.x) | (~vec4<u32>(1u, 30290u, u_input.c, 4294967295u) | (vec4<u32>(var_0.e.x, var_0.e.x, 4294967295u, 4294967295u) << (vec4<u32>(52342u, var_0.e.x, u_input.c, 18364u) % vec4<u32>(32u)))), var_0.e.x <= ~(~var_1)), arg_0, true, Struct_1(countOneBits(~vec3<u32>(var_0.e.x, var_0.e.x, var_0.e.x) << ((vec3<u32>(var_1, var_0.e.x, var_0.e.x) | vec3<u32>(u_input.b, 25580u, 22778u)) % vec3<u32>(32u))), -(~22885i), reverseBits(vec4<u32>(0u, u_input.c, 4294967295u, 1u) & vec4<u32>(var_1, var_1, 1u, 10439u)) | ~(~vec4<u32>(var_0.e.x, var_1, var_1, var_1)), any(select(vec3<bool>(arg_0.x, arg_0.x, false), select(arg_0.yzw, arg_0.zww, vec3<bool>(false, true, true)), all(vec4<bool>(arg_0.x, arg_0.x, true, true))))));
    var var_3 = var_2.b;
    var_3 = Struct_1(var_3.a, (var_2.b.b | -2147483647i) & (~0i | reverseBits(~var_0.b.x)), var_2.b.c, !arg_0.x);
    return Struct_3(var_2, u_input.a, var_2.b);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec2<f32>) -> Struct_2 {
    global1 = true;
    var var_0 = func_1(arg_0.a.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, 1272f, 1002f, _wgslsmith_f_op_f32(-arg_3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1979f, arg_2.d.x, -818f, arg_2.d.x), vec4<f32>(-802f, -131f, arg_2.d.x, arg_3.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(1249f, global0[_wgslsmith_index_u32(arg_0.a.e.c.x, 16u)], arg_3.x, -541f), vec4<f32>(755f, 618f, -865f, global0[_wgslsmith_index_u32(37828u, 16u)])))), arg_0.a.c))).a;
    var_0 = Struct_2(firstLeadingBit(~vec4<u32>(16046u, arg_2.e.x, u_input.c, var_0.b.a.x) | vec4<u32>(u_input.c, 1u, 21867u, var_0.b.a.x)) & vec4<u32>(110237u, var_0.e.c.x, _wgslsmith_sub_u32(4294967295u, 0u), ~40465u), func_1(func_1(func_1(arg_0.a.c, vec4<f32>(-454f, -577f, arg_3.x, arg_3.x)).a.c, vec4<f32>(global0[_wgslsmith_index_u32(4089u, 16u)], -2290f, -997f, global0[_wgslsmith_index_u32(15224u, 16u)])).a.c, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.x, -623f, 484f, _wgslsmith_f_op_f32(arg_2.d.x * global0[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, arg_2.d.x, -1002f, 1000f)))))).c, vec4<bool>(!any(var_0.c), true, true, true), func_1(select(!vec4<bool>(true, arg_2.c.x, false, false), func_1(select(arg_0.a.c, vec4<bool>(false, false, arg_0.c.d, false), var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(arg_2.e.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(6133u, 16u)]) * vec4<f32>(1164f, arg_3.x, 577f, global0[_wgslsmith_index_u32(u_input.c, 16u)]))).a.c, !vec4<bool>(true, arg_0.a.e.d, false, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(23475u, 16u)], 546f, -1120f, -128f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, global0[_wgslsmith_index_u32(1u, 16u)], arg_3.x, -1513f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1000f, arg_2.d.x, 164f))))).a.d, arg_0.a.e);
    var var_1 = arg_3.x;
    var_0 = arg_0.a;
    return Struct_2(vec4<u32>(arg_0.a.b.a.x, 4294967295u, arg_2.e.x, select(~u_input.b, func_1(arg_0.a.c, vec4<f32>(global0[_wgslsmith_index_u32(arg_0.a.b.c.x, 16u)], 581f, arg_2.d.x, -362f)).a.b.c.x, !arg_0.c.d)), func_1(!arg_0.a.c, vec4<f32>(_wgslsmith_f_op_f32(sign(1572f)), arg_2.d.x, _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(-449f - 1565f))).c, vec4<bool>(var_0.a.x >= _wgslsmith_div_u32(10638u, ~arg_2.e.x), false, true, (arg_2.e.x == 1u) || var_0.d), true, Struct_1(vec3<u32>(reverseBits(~u_input.c), 1u, func_3(arg_2.d.x, vec4<i32>(var_0.b.b, -36207i, arg_0.b.x, arg_0.a.e.b) ^ vec4<i32>(arg_2.b.x, var_0.b.b, -2147483647i, u_input.a.x), vec3<f32>(1581f, arg_3.x, 1000f)).x), 0i, vec4<u32>(u_input.c, u_input.b, countOneBits(var_0.b.a.x), u_input.c), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 16>();
    let var_0 = Struct_3(func_4(func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(110768u, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)], -311f, -1032f))), Struct_5(1i), global2[_wgslsmith_index_u32(u_input.b, 3u)], _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)]))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)])))))), u_input.a, func_1(func_1(vec4<bool>(true, all(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(4294967295u, 16u)] > global0[_wgslsmith_index_u32(u_input.c, 16u)], any(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 16u)], 905f, 453f, -1613f))).a.c, vec4<f32>(global0[_wgslsmith_index_u32(53541u, 16u)], global0[_wgslsmith_index_u32(max(min(u_input.b, 17942u), ~u_input.b), 16u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(56076u, 16u)] * global0[_wgslsmith_index_u32(u_input.b, 16u)]), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 16u)]))), global0[_wgslsmith_index_u32(func_1(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(54205u, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(70390u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)]) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 16u)], 2030f, global0[_wgslsmith_index_u32(u_input.b, 16u)], 1105f))).c.a.x, 16u)])).c);
    let var_1 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~func_1(var_0.a.c, vec4<f32>(374f, 787f, global0[_wgslsmith_index_u32(u_input.b, 16u)], 761f)).c.a.x), 16u)]));
    global0 = array<f32, 16>();
    global2 = array<Struct_4, 3>();
    global0 = array<f32, 16>();
    var var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(~_wgslsmith_mod_vec3_u32(vec3<u32>(72933u, 39126u, 3096u), vec3<u32>(8637u, var_0.c.c.x, 0u)), abs(min(var_0.a.b.c.www, var_0.c.a)))), (vec4<i32>(1i, ~2147483647i, _wgslsmith_sub_i32(-1i, u_input.a.x), var_0.a.e.b) << (~(~vec4<u32>(4294967295u, 11180u, 86320u, var_0.a.e.c.x)) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(var_0.b.x, 57999i, var_0.a.b.b, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.b, u_input.a.x, -745i, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, var_0.a.b.b, u_input.a.x, var_0.b.x), vec4<i32>(24452i, -1i, var_0.c.b, var_0.a.e.b)))));
}

