struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 14>;

var<private> global2: Struct_4;

var<private> global3: vec3<u32>;

var<private> global4: array<bool, 29> = array<bool, 29>(true, true, true, false, true, false, true, false, false, true, false, false, true, false, true, true, false, true, false, true, true, false, false, false, false, false, true, true, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: i32, arg_3: bool) -> bool {
    let var_0 = ~(~(~(~reverseBits(global2.c.a.b))));
    var var_1 = Struct_4(-1447f, -global2.b, Struct_2(global2.c.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_div_f32(arg_1.x, global2.a), _wgslsmith_f_op_f32(trunc(322f)), _wgslsmith_f_op_f32(f32(-1f) * -1378f))), Struct_1(vec4<u32>(~58545u, countOneBits(global2.c.c.e.x), 0u, _wgslsmith_dot_vec3_u32(global2.c.a.a.xxy, global2.c.a.a.xyz)), 1u, 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global2.a, -2528f, -740f))), max(global2.c.a.e, global2.c.d.a) | global2.c.c.e), global2.c.c));
    global2 = Struct_4(_wgslsmith_div_f32(arg_0.x, arg_0.x), var_1.b, var_1.c);
    var var_2 = select(!vec4<bool>(abs(global1[_wgslsmith_index_u32(global0.x, 14u)]) == _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 21109i, -44031i), vec4<i32>(-1i, -2147483647i, global2.b.x, global2.b.x)), all(select(vec2<bool>(false, false), vec2<bool>(true, arg_3), vec2<bool>(true, true))), true, all(!vec4<bool>(global4[_wgslsmith_index_u32(global0.x, 29u)], true, true, true))), vec4<bool>(any(select(!vec4<bool>(arg_3, true, true, arg_3), select(vec4<bool>(false, true, false, global4[_wgslsmith_index_u32(1u, 29u)]), vec4<bool>(true, arg_3, false, false), arg_3), global4[_wgslsmith_index_u32(~u_input.b, 29u)])), arg_3, all(vec3<bool>(!global4[_wgslsmith_index_u32(0u, 29u)], all(vec4<bool>(global4[_wgslsmith_index_u32(global0.x, 29u)], false, true, false)), global4[_wgslsmith_index_u32(1u, 29u)])), !global4[_wgslsmith_index_u32(u_input.b, 29u)]), !arg_3);
    var var_3 = -var_1.b.x;
    return !(any(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 29u)], var_2.x, arg_3, false)) & true);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_3(global2.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_2.zx, vec2<u32>(35763u, 45212u)) ^ ~global3.zz, arg_2.zx), ~(~global2.c.c.a.x)), vec4<bool>(false, !(func_3(global2.c.b, vec3<f32>(arg_1, 1000f, -572f), -2147483647i, false) && !global4[_wgslsmith_index_u32(global3.x, 29u)]), all(select(!vec3<bool>(false, global4[_wgslsmith_index_u32(global2.c.a.c, 29u)], false), !vec3<bool>(global4[_wgslsmith_index_u32(global3.x, 29u)], global4[_wgslsmith_index_u32(global3.x, 29u)], global4[_wgslsmith_index_u32(arg_2.x, 29u)]), vec3<bool>(false, false, global4[_wgslsmith_index_u32(0u, 29u)]))), !(_wgslsmith_f_op_f32(arg_1 - -109f) >= -289f)));
    var var_1 = min(1i, max(-_wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 14u)], global2.b.x), ~8201i)) | max(-(~(~global2.b.x)), -33607i);
    var var_2 = var_0;
    var var_3 = -((vec4<i32>(-1i) * -(vec4<i32>(1i, global2.b.x, 2639i, 33679i) >> (var_2.a.c.a % vec4<u32>(32u)))) << (vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_2.a.c.a.zx, vec2<u32>(global3.x, var_2.a.d.b)), 1u), _wgslsmith_dot_vec3_u32(min(var_2.a.c.a.yyw, vec3<u32>(u_input.b, 110828u, 15115u)), ~var_2.a.c.e.yxy), 40773u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, global0.x), vec2<u32>(var_2.b, 0u)) >> (reverseBits(var_0.a.c.a.x) % 32u)) % vec4<u32>(32u)));
    var var_4 = -select(reverseBits(firstTrailingBit(var_3.zz)), ~(~vec2<i32>(0i, global1[_wgslsmith_index_u32(global3.x, 14u)])), any(var_2.c));
    return Struct_2(global2.c.d, vec4<f32>(2074f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1989f)))), 1989f, var_0.a.b.x), var_0.a.c, var_2.a.d);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: f32) -> Struct_4 {
    let var_0 = arg_1.xyw;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -310f), var_0, func_2(-min(-vec2<i32>(5193i, -2147483647i), vec2<i32>(arg_1.x, u_input.d) >> (vec2<u32>(u_input.b, global0.x) % vec2<u32>(32u))), 282f, min(~vec3<u32>(1u, 82028u, global3.x), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, global2.c.d.c, global2.c.c.b), ~global2.c.c.a.xzw))));
    var var_2 = Struct_3(global2.c, 1u, select(!arg_0, vec4<bool>(select(true, false, false) && true, global4[_wgslsmith_index_u32(20345u, 29u)] & true, !global4[_wgslsmith_index_u32(1u & global2.c.c.b, 29u)], any(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 29u)], global4[_wgslsmith_index_u32(15242u, 29u)], true))), vec4<bool>(arg_0.x, any(arg_0.zy), false, global4[_wgslsmith_index_u32(~(~global0.x), 29u)])));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(global2.c.b.zzx, _wgslsmith_f_op_vec3_f32(-var_2.a.a.d.xwx)));
    var var_4 = u_input.a;
    return Struct_4(914f, ~vec3<i32>(var_1.b.x, global2.b.x << (u_input.b % 32u), 2147483647i) << (func_2(var_1.b.xz, -2270f, ~vec3<u32>(0u, var_2.b, 23440u) & vec3<u32>(var_1.c.d.e.x, var_2.a.a.c, global3.x)).c.a.yyy % vec3<u32>(32u)), Struct_2(var_1.c.c, _wgslsmith_f_op_vec4_f32(trunc(global2.c.d.d)), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 63008u, global0.x, 0u) & vec4<u32>(4294967295u, 1u, global0.x, 9529u), var_1.c.c.e & vec4<u32>(global2.c.d.b, var_2.a.c.a.x, 59167u, 13542u)), max(max(33137u, u_input.b), global3.x), u_input.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, var_3.x, global2.c.c.d.x, arg_2)))), ~abs(vec4<u32>(var_2.a.a.a.x, 1u, global0.x, 26483u))), global2.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.d >> ((_wgslsmith_dot_vec3_u32(global2.c.a.e.wxy, global2.c.c.a.yyy) & u_input.b) % 32u), select(-45447i, countOneBits(~(9285i >> (global3.x % 32u))), false));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(max(global2.c.c.d.x, global2.c.b.x)), -vec3<i32>(_wgslsmith_div_i32(abs(2147483647i), firstLeadingBit(var_0.x)), u_input.a, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.x, u_input.c), vec2<i32>(-1i, 21598i)))), global2.c);
    var var_2 = ((i32(-1i) * -2147483647i) ^ var_1.b.x) & global1[_wgslsmith_index_u32(~24573u, 14u)];
    global3 = ~global2.c.d.e.zzw;
    let var_3 = func_1(!select(!select(vec4<bool>(true, global4[_wgslsmith_index_u32(var_1.c.d.e.x, 29u)], false, global4[_wgslsmith_index_u32(var_1.c.c.a.x, 29u)]), vec4<bool>(global4[_wgslsmith_index_u32(31492u, 29u)], false, global4[_wgslsmith_index_u32(var_1.c.d.c, 29u)], false), vec4<bool>(false, true, global4[_wgslsmith_index_u32(42338u, 29u)], global4[_wgslsmith_index_u32(0u, 29u)])), select(vec4<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 29u)], true, global4[_wgslsmith_index_u32(51369u, 29u)]), vec4<bool>(false, true, global4[_wgslsmith_index_u32(var_1.c.d.b, 29u)], false), select(vec4<bool>(false, global4[_wgslsmith_index_u32(12551u, 29u)], global4[_wgslsmith_index_u32(16400u, 29u)], false), vec4<bool>(true, true, false, global4[_wgslsmith_index_u32(13721u, 29u)]), global4[_wgslsmith_index_u32(1u, 29u)])), vec4<bool>(global4[_wgslsmith_index_u32(0u, 29u)] & global4[_wgslsmith_index_u32(12798u, 29u)], false, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(36585u, global3.x), 29u)], !global4[_wgslsmith_index_u32(global2.c.d.c, 29u)])), vec4<i32>(global2.b.x, 0i >> (var_1.c.c.c % 32u), _wgslsmith_add_i32(reverseBits(-1i), min(_wgslsmith_mod_i32(var_1.b.x, var_0.x), 0i)), var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.c.b.x))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(step(-634f, _wgslsmith_f_op_f32(trunc(-305f)))))));
    global4 = array<bool, 29>();
    let var_4 = Struct_3(Struct_2(var_1.c.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(global2.b.zz, var_3.a, var_3.c.a.e.wxw).b.x, var_3.c.c.d.x, -873f, -1130f)), func_1(select(!vec4<bool>(global4[_wgslsmith_index_u32(var_1.c.c.b, 29u)], global4[_wgslsmith_index_u32(var_3.c.d.e.x, 29u)], global4[_wgslsmith_index_u32(var_3.c.c.e.x, 29u)], false), select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(1u, 29u)], global4[_wgslsmith_index_u32(u_input.b, 29u)], global4[_wgslsmith_index_u32(global2.c.a.b, 29u)]), vec4<bool>(global4[_wgslsmith_index_u32(var_1.c.c.b, 29u)], global4[_wgslsmith_index_u32(31845u, 29u)], true, global4[_wgslsmith_index_u32(1u, 29u)]), vec4<bool>(global4[_wgslsmith_index_u32(var_3.c.a.b, 29u)], global4[_wgslsmith_index_u32(2693u, 29u)], global4[_wgslsmith_index_u32(25343u, 29u)], global4[_wgslsmith_index_u32(var_1.c.d.a.x, 29u)])), all(vec2<bool>(true, false))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.a, -44206i), vec4<i32>(0i, global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(global3.x, 14u)], global2.b.x)), ~vec4<i32>(0i, global2.b.x, u_input.d, var_3.b.x), !global4[_wgslsmith_index_u32(1u, 29u)]), var_1.c.a.d.x).c.a, func_1(select(!vec4<bool>(global4[_wgslsmith_index_u32(var_1.c.a.b, 29u)], true, true, false), vec4<bool>(false, false, true, false), var_3.b.x < u_input.a), abs(max(vec4<i32>(2147483647i, 61235i, var_0.x, u_input.a), vec4<i32>(u_input.a, u_input.d, 0i, 1i))), 641f).c.c), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 5061u, ~_wgslsmith_add_u32(var_3.c.a.e.x, var_1.c.a.e.x), var_3.c.c.e.x), global2.c.d.a), select(!select(select(vec4<bool>(false, global4[_wgslsmith_index_u32(var_1.c.c.c, 29u)], true, global4[_wgslsmith_index_u32(30099u, 29u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(global3.x, 29u)], global4[_wgslsmith_index_u32(18869u, 29u)], false), vec4<bool>(false, global4[_wgslsmith_index_u32(global0.x, 29u)], false, true)), select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 29u)], true, global4[_wgslsmith_index_u32(var_3.c.c.e.x, 29u)], global4[_wgslsmith_index_u32(var_1.c.d.b, 29u)]), vec4<bool>(false, global4[_wgslsmith_index_u32(27941u, 29u)], true, true), vec4<bool>(false, global4[_wgslsmith_index_u32(17877u, 29u)], true, false)), !vec4<bool>(true, false, true, global4[_wgslsmith_index_u32(global3.x, 29u)])), !(!select(vec4<bool>(global4[_wgslsmith_index_u32(global2.c.a.c, 29u)], global4[_wgslsmith_index_u32(60207u, 29u)], false, global4[_wgslsmith_index_u32(var_3.c.c.b, 29u)]), vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(0u, 29u)]), false)), vec4<bool>(global4[_wgslsmith_index_u32(1u, 29u)], false, true && !global4[_wgslsmith_index_u32(var_3.c.d.e.x, 29u)], global4[_wgslsmith_index_u32(var_1.c.d.c, 29u)])));
    var_2 = abs(_wgslsmith_dot_vec4_i32(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(74762i, global2.b.x, global2.b.x, 2147483647i), vec4<i32>(-12497i, u_input.a, -27797i, var_1.b.x))), firstTrailingBit(countOneBits(vec4<i32>(0i, var_3.b.x, u_input.c, global2.b.x) & vec4<i32>(2147483647i, u_input.a, 20821i, u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_4.a.d.d.x)) - _wgslsmith_f_op_f32(step(var_3.c.d.d.x, -139f))), global2.a, -582f, 950f))), ~(-31932i), ~_wgslsmith_add_u32(min(~global0.x, ~global2.c.a.c), 4294967295u >> (var_1.c.c.c % 32u)), firstTrailingBit(_wgslsmith_div_vec2_i32(var_1.b.zz, max(global2.b.xx, var_3.b.yy))) & -vec2<i32>(1589i, global2.b.x), global2.c.c.a);
}

