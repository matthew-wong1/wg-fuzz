struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-759f, -657f, -675f);

var<private> global1: vec3<i32> = vec3<i32>(8708i, 0i, -1i);

var<private> global2: array<i32, 11> = array<i32, 11>(22737i, 62859i, 37997i, 1i, 0i, i32(-2147483648), -1i, 2147483647i, -30944i, 0i, i32(-2147483648));

var<private> global3: vec2<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_4) -> i32 {
    var var_0 = ~4987i;
    var var_1 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2873f), arg_1.b), -290f)));
    var var_2 = Struct_1(vec3<i32>(1i, -(i32(-1i) * -12274i), 2147483647i) ^ ~select(select(vec3<i32>(0i, 5049i, -5218i), u_input.d.zyx, vec3<bool>(arg_1.c.a, arg_1.c.a, arg_1.a.a)), vec3<i32>(global3.x, -2147483647i, -16563i), select(vec3<bool>(false, arg_1.a.a, arg_1.a.a), vec3<bool>(arg_1.a.a, arg_1.c.a, false), false)), (all(select(vec2<bool>(arg_1.c.a, arg_1.c.a), vec2<bool>(false, arg_1.a.a), false)) && any(!vec4<bool>(arg_1.c.a, arg_1.c.a, false, arg_1.c.a))) != select(arg_1.a.a, arg_1.a.a, true), _wgslsmith_f_op_f32(floor(global0.x)), arg_1.a.a);
    var_2 = Struct_1(max(-vec3<i32>(~u_input.d.x, var_2.a.x, 29565i), vec3<i32>(select(_wgslsmith_mult_i32(global3.x, 25853i), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d), true), 0i, var_2.a.x)), !(!(!arg_1.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1668f * global0.x)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-478f + _wgslsmith_f_op_f32(f32(-1f) * -550f))))), true);
    var_0 = 1397i;
    return select(_wgslsmith_mult_i32(1i, global1.x), 2147483647i, !((_wgslsmith_sub_u32(arg_0.x, 9868u) << (1u % 32u)) == u_input.e.x));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = arg_0.a.a;
    global3 = _wgslsmith_add_vec2_i32(-abs(~u_input.d.xx), abs(~(vec2<i32>(-61969i, global2[_wgslsmith_index_u32(1u, 11u)]) >> (vec2<u32>(u_input.c.x, u_input.e.x) % vec2<u32>(32u)))) & u_input.d.xw);
    let var_1 = vec2<f32>(1f, 1000f);
    var var_2 = reverseBits(vec3<i32>(-func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 94897u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.e.x)), Struct_4(Struct_2(false), 443f, Struct_2(false))), _wgslsmith_mult_i32((-21696i | u_input.a) & -global1.x, _wgslsmith_dot_vec3_i32(u_input.d.zyy, u_input.d.wwx)), _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(13786u, 11u)], global1.x), global2[_wgslsmith_index_u32(~0u, 11u)], u_input.b.x & -1i, global3.x))));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -598f, -151f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_1.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1192f, global0.x, 1394f)), vec3<bool>(var_0, false, arg_0.a.a)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), -732f, _wgslsmith_f_op_f32(abs(var_1.x)))));
    return Struct_2(false);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> bool {
    global3 = u_input.b;
    let var_0 = true;
    var var_1 = global1.x;
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global3.x), 0i) << ((firstLeadingBit(u_input.e.x) ^ arg_2) % 32u), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(~arg_2, 11u)], global1.x) ^ -51747i), abs(firstTrailingBit(global1.x)));
    let var_3 = _wgslsmith_dot_vec2_i32(~(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(-70300i, 1i), u_input.d.yz))), u_input.d.wz);
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x), global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))))));
    let var_0 = !select(select(arg_2, arg_2, all(vec4<bool>(arg_2.x, arg_1.b.a, arg_1.a.a, false)) && true), arg_2, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 1000f, _wgslsmith_f_op_f32(trunc(1408f)), global0.x), vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(select(global0.x, global0.x, arg_0.a)), _wgslsmith_f_op_f32(select(-1471f, -304f, arg_2.x)), _wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-745f, global0.x, global0.x, global0.x))))))));
    var var_2 = var_1.yzy;
    var var_3 = -1000f;
    return Struct_4(func_1(Struct_3(func_1(arg_1), Struct_2(true))), _wgslsmith_f_op_f32(-global0.x), func_1(arg_1));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4) -> Struct_4 {
    global1 = abs(_wgslsmith_div_vec3_i32(max(vec3<i32>(-1i) * -u_input.d.zwx, -max(vec3<i32>(37960i, 1i, -16341i), u_input.d.wyx)), u_input.d.ywx));
    var var_0 = !(!(!(!vec3<bool>(arg_2.a.a, arg_2.a.a, false))));
    let var_1 = -2612i;
    var var_2 = ~_wgslsmith_sub_u32(u_input.e.x, u_input.c.x) >= ~abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(108424u, u_input.c.x), _wgslsmith_mult_u32(u_input.e.x, u_input.e.x)));
    var var_3 = Struct_1(u_input.d.wzz >> (u_input.c % vec3<u32>(32u)), var_0.x, _wgslsmith_f_op_f32(ceil(-1000f)), true);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], Struct_3(Struct_2(true), Struct_2(true)), func_4(Struct_2(func_3(_wgslsmith_f_op_vec2_f32(select(global0.yz, global0.zx, true)), Struct_4(Struct_2(true), global0.x, Struct_2(true)), u_input.e.x, func_1(Struct_3(Struct_2(false), Struct_2(false))))), Struct_3(Struct_2(true), Struct_2(true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, all(vec4<bool>(false, true, false, false)), func_3(global0.yx, Struct_4(Struct_2(true), -1042f, Struct_2(true)), 4294967295u, Struct_2(false))))));
    var var_1 = -627f;
    var var_2 = ~(_wgslsmith_div_vec3_u32(abs(u_input.c << (vec3<u32>(47581u, u_input.c.x, 0u) % vec3<u32>(32u))), abs(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, 7366u)))) >> (vec3<u32>(1u >> (~u_input.c.x % 32u), ~4294967295u, ~reverseBits(u_input.e.x)) % vec3<u32>(32u)));
    let var_3 = Struct_2(var_0.c.a);
    let var_4 = ~4294967295u;
    let var_5 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(func_5(global1.x, Struct_3(var_3, var_0.c), Struct_4(Struct_2(var_0.c.a), global0.x, var_0.a)).c, Struct_3(var_0.c, Struct_2(var_3.a)), vec4<bool>(var_3.a, var_3.a, true, false)).b, 232f, var_0.b, -787f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), 694f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + -1000f)))))));
    let var_6 = vec2<bool>(var_3.a, var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(min(var_5.x, -2058f)), false)), vec4<u32>(var_2.x, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_2.x, var_4, 18095u), u_input.c, vec3<bool>(false, var_6.x, var_0.a.a)), ~vec3<u32>(77159u, var_4, 33542u)), 1u, ~_wgslsmith_mod_u32(u_input.e.x, _wgslsmith_div_u32(var_4, 49495u))));
}

