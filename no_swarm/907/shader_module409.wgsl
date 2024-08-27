struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: u32 = 1u;

var<private> global2: array<u32, 10>;

var<private> global3: array<bool, 8> = array<bool, 8>(false, false, true, true, false, false, true, true);

var<private> global4: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = global3[_wgslsmith_index_u32(u_input.b.x, 8u)] || !select(true, global3[_wgslsmith_index_u32(~u_input.b.x, 8u)], select(true, true, all(vec3<bool>(arg_0.x, true, arg_0.x))));
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(-7321i, _wgslsmith_mod_i32(min(1i, 20474i), i32(-1i) * -27266i), -u_input.d.x), _wgslsmith_mod_i32(abs(_wgslsmith_clamp_i32(32017i, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1, 10u)], 1u)], u_input.d.x)), arg_2)), _wgslsmith_div_i32(~(u_input.d.x & 23008i) ^ -arg_2, -(~0i >> (0u % 32u))), u_input.a.x);
    global2 = array<u32, 10>();
    global4 = _wgslsmith_div_u32(4294967295u, u_input.a.x);
    var var_2 = vec2<i32>(_wgslsmith_div_i32(-28601i, var_1.b | max(-1i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(0u, 1u)], -65449i))), firstTrailingBit(-2147483647i));
    return _wgslsmith_add_u32(var_1.c, ~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(12587u, 930u))) >= u_input.a.x;
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> vec4<f32> {
    let var_0 = (~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.a), 4294967295u) << (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, 0u, 32889u, 0u)), countOneBits(vec4<u32>(4294967295u, arg_1.e, 18324u, 53287u))) % 32u)) > 0u;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(arg_1.d.a - 308f));
    global3 = array<bool, 8>();
    let var_2 = select(true, var_0, false);
    global1 = u_input.a.x;
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-827f * var_1.a), var_1.a, arg_1.b.a, -462f), vec4<f32>(_wgslsmith_f_op_f32(var_1.a + 2185f), var_1.a, -1408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) - var_1.a))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    global3 = array<bool, 8>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1429f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1240f)))))) - arg_0.d.a);
    global3 = array<bool, 8>();
    let var_1 = vec4<i32>(-21924i, countOneBits(0i), arg_0.c.x, -arg_2.a.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_1);
    return 1i;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_5) -> vec3<bool> {
    var var_0 = Struct_4(!(!select(select(vec3<bool>(arg_3.c, false, true), vec3<bool>(arg_2.x, false, false), arg_2.x), !vec3<bool>(arg_3.e, true, true), true)), Struct_3(arg_3.d), _wgslsmith_mult_vec3_i32(u_input.d.wyy | _wgslsmith_clamp_vec3_i32(u_input.d.zwz & u_input.d.xxz, vec3<i32>(global0[_wgslsmith_index_u32(1u, 1u)], u_input.c, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(6059i, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), vec3<i32>(global0[_wgslsmith_index_u32(arg_3.b, 1u)], u_input.d.x, -46227i))), abs(vec3<i32>(global0[_wgslsmith_index_u32(59008u, 1u)], 2147483647i, 0i)) & select(select(u_input.d.wyw, u_input.d.xxx, vec3<bool>(arg_3.a.x, true, true)), select(u_input.d.ywy, vec3<i32>(88890i, -24415i, global0[_wgslsmith_index_u32(1368u, 1u)]), arg_2.x), true)), arg_0, ~84105u);
    var var_1 = Struct_1(-(vec2<i32>(-1i) * -(~var_0.c.zx)), var_0.c.x, 42143u);
    var var_2 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(countOneBits(1u), 1u)], 2147483647i), var_1.a), func_5(Struct_4(vec3<bool>(var_0.a.x, var_0.a.x, false), arg_0, vec3<i32>(-global0[_wgslsmith_index_u32(u_input.b.x, 1u)], ~u_input.d.x, u_input.c), arg_0, 10176u), _wgslsmith_f_op_vec4_f32(func_4(func_3(vec2<bool>(false, true), 51924u, 1i) | global3[_wgslsmith_index_u32(var_1.c, 8u)], Struct_4(!vec3<bool>(var_0.a.x, arg_3.a.x, arg_3.a.x), var_0.d, ~u_input.d.yxy, Struct_3(arg_3.d), _wgslsmith_mod_u32(43364u, 55106u)))), Struct_1(var_0.c.yy, _wgslsmith_dot_vec2_i32(u_input.d.wx, -var_0.c.xz), max(64169u, ~arg_1))), _wgslsmith_sub_u32(arg_1, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(29012u, 46338u, 0u, 1u), vec4<u32>(var_0.e, global2[_wgslsmith_index_u32(4005u, 10u)], u_input.a.x, global2[_wgslsmith_index_u32(1u, 10u)])))));
    let var_3 = _wgslsmith_div_f32(541f, _wgslsmith_f_op_f32(-arg_3.d));
    var var_4 = var_1.c;
    return var_0.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(230f, 1657f))) * arg_2.yy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.yx, arg_2.xy))) - _wgslsmith_f_op_vec2_f32(-arg_2.xx)))));
    var var_1 = Struct_1(arg_0, -abs(-1i), firstTrailingBit(~u_input.a.x));
    var var_2 = !func_2(Struct_3(var_0.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, u_input.b.x), u_input.a, vec2<bool>(true, global3[_wgslsmith_index_u32(var_1.c, 8u)])), u_input.a), ~21100u), !select(select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(var_1.c, 8u)]), vec2<bool>(global3[_wgslsmith_index_u32(arg_3.x, 8u)], global3[_wgslsmith_index_u32(arg_3.x, 8u)])), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], true), !vec2<bool>(global3[_wgslsmith_index_u32(var_1.c, 8u)], false)), Struct_5(select(vec2<bool>(true, true), select(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 8u)], false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], true)), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(arg_3.x, 8u)])), ~29357u, false, 1408f, true));
    let var_3 = 1u;
    global2 = array<u32, 10>();
    return 1u | global2[_wgslsmith_index_u32(u_input.b.x, 10u)];
}

fn func_6(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = u_input.d.wx;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-906f - _wgslsmith_f_op_f32(round(510f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1367f, 860f) - -1567f))));
    let var_2 = vec3<u32>(abs(_wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a.x), u_input.b)), _wgslsmith_add_u32(52694u, ~4294967295u))), 14946u, ~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 1439u));
    global0 = array<i32, 1>();
    global0 = array<i32, 1>();
    return Struct_2(Struct_1(var_0, 1i, abs(0u)), true, Struct_1(firstTrailingBit(var_0), abs(-1i), ~var_2.x), Struct_1(firstTrailingBit(vec2<i32>(var_0.x, 45592i)) & (var_0 >> (u_input.b.xx % vec2<u32>(32u))), -1i, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(abs(0u), ~u_input.a.x), _wgslsmith_mod_u32(~var_2.x, u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_2.x, u_input.a.x), global2[_wgslsmith_index_u32(u_input.b.x, 10u)]))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(step(151f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-690f - -2745f)))))));
    let var_1 = _wgslsmith_f_op_f32(-661f - _wgslsmith_div_f32(-2206f, var_0.a));
    global0 = array<i32, 1>();
    var var_2 = func_6(select(vec2<bool>(all(select(vec2<bool>(global3[_wgslsmith_index_u32(31908u, 8u)], true), vec2<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(65695u, 10u)], 8u)], true), true)), func_1(u_input.d.wz, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], vec3<f32>(var_0.a, var_1, var_1), vec4<u32>(1u, 48892u, 4294967295u, 47330u)) < _wgslsmith_div_u32(34107u, global2[_wgslsmith_index_u32(70701u, 10u)])), vec2<bool>(true, func_3(vec2<bool>(global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(71904u, 8u)]), global2[_wgslsmith_index_u32(firstLeadingBit(1u), 10u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], 2147483647i))), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.b.x << (~global2[_wgslsmith_index_u32(4294967295u, 10u)] % 32u)), 8u)]));
    global0 = array<i32, 1>();
    var var_3 = var_2.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_2.d.c, min(0u >> (_wgslsmith_add_u32(0u, u_input.a.x) % 32u), _wgslsmith_sub_u32(~u_input.b.x, 1u)), min(~(~9133u), var_2.d.c), 4294967295u >> (0u % 32u)), select(~vec2<i32>(i32(-1i) * -43154i, 14211i), firstLeadingBit(~(var_2.d.a << (u_input.a % vec2<u32>(32u)))), false), var_2.d.a.x, firstTrailingBit(u_input.d.yz), -1i);
}

