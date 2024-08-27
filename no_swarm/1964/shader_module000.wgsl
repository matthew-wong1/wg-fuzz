struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(-17392i, 1i, 0i, -22738i, 2147483647i, 1i, i32(-2147483648), 0i, 12064i, i32(-2147483648), 2147483647i, -23001i, 1i, 0i, -1i, 3912i, 24760i, i32(-2147483648), -1i, 15694i, i32(-2147483648), -1i, 19768i, 1i, 31406i, 6982i, -1i, 5023i, 1i, 1i, 0i);

var<private> global1: array<f32, 11> = array<f32, 11>(784f, 1170f, -367f, -175f, 271f, 616f, -1164f, -139f, -327f, -1365f, -2598f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(arg_0.a.a.xzz)), arg_0.d.a.zzz)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.a.x), _wgslsmith_f_op_f32(sign(1392f)), _wgslsmith_f_op_f32(-arg_0.d.a.x)))));
    var var_1 = ~vec4<i32>(1i, ~(arg_3.d.e & 1i), _wgslsmith_add_i32(~u_input.b, 25571i), 9973i) | select(u_input.c, vec4<i32>(-13887i, -10317i, 0i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(8983u << (u_input.a % 32u), _wgslsmith_mod_u32(u_input.a, u_input.a)), 31u)]), vec4<bool>(arg_3.d.c.x, !(!arg_3.d.c.x), true && (arg_1.x | true), arg_0.d.c.x));
    var_1 = vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(2531i, var_1.x) << (arg_2 % 32u), ~var_1.x), _wgslsmith_clamp_i32(var_1.x, ~max(-2147483647i, u_input.c.x), ~abs(min(var_1.x, u_input.c.x))), -2147483647i, reverseBits(2147483647i));
    global1 = array<f32, 11>();
    var_1 = (-countOneBits(u_input.c) ^ (firstTrailingBit(-vec4<i32>(1i, arg_0.d.e, -1372i, arg_3.d.e)) | u_input.c)) ^ abs(max(~u_input.c, vec4<i32>(2147483647i, var_1.x, -u_input.b, 0i)));
    return _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(158954u, u_input.a, 1u))) & countOneBits(abs(~vec3<u32>(1u, arg_2, u_input.a))), ~(abs(~vec3<u32>(83791u, u_input.a, u_input.a)) << (firstLeadingBit(~vec3<u32>(0u, arg_2, 39552u)) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec3<u32>) -> vec4<f32> {
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, 2147483647i > u_input.b), true), vec2<bool>(true, true), u_input.b != ~(-2147483647i)), vec2<bool>(true, true), any(vec2<bool>(!all(vec3<bool>(false, true, true)), false)));
    var var_1 = u_input.c.yyz >> (_wgslsmith_mult_vec3_u32(arg_0, func_3(Struct_3(Struct_1(vec4<f32>(-1192f, 984f, 301f, global1[_wgslsmith_index_u32(u_input.a, 11u)]), 40575u, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x, 0i), global1[_wgslsmith_index_u32(9526u, 11u)], ~arg_0.x, Struct_1(vec4<f32>(-367f, global1[_wgslsmith_index_u32(55046u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], 458f), arg_0.x, vec4<bool>(true, true, true, var_0.x), true, -1i)), vec3<bool>(var_0.x, select(var_0.x, var_0.x, var_0.x), var_0.x), ~select(16704u, 28184u, var_0.x), Struct_3(Struct_1(vec4<f32>(-2053f, global1[_wgslsmith_index_u32(arg_0.x, 11u)], 1406f, 444f), u_input.a, vec4<bool>(var_0.x, true, false, true), true, global0[_wgslsmith_index_u32(u_input.a, 31u)]), _wgslsmith_f_op_f32(2711f + 693f), abs(arg_0.x), Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(arg_0.x, 11u)], global1[_wgslsmith_index_u32(9286u, 11u)], 1464f, global1[_wgslsmith_index_u32(0u, 11u)]), u_input.a, vec4<bool>(false, false, var_0.x, var_0.x), true, 0i)))) % vec3<u32>(32u));
    let var_2 = vec3<bool>(false, true, any(vec2<bool>(all(var_0), any(vec3<bool>(var_0.x, false, false)))) | (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 11u)]))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(83993u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], var_0.x)))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], 605f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(5417u, 11u)], global1[_wgslsmith_index_u32(101057u, 11u)])), vec2<bool>(false, var_0.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(770f, 466f) + vec2<f32>(392f, global1[_wgslsmith_index_u32(u_input.a, 11u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(5555u, 11u)], -1000f)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(8453u, 11u)])), _wgslsmith_f_op_f32(select(1000f, global1[_wgslsmith_index_u32(u_input.a, 11u)], var_2.x)))))), -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(u_input.c, vec4<i32>(var_1.x, u_input.c.x, var_1.x, 0i), var_2.x), u_input.c), u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-669f, -532f))))))), !(!var_2), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 11u)] * _wgslsmith_f_op_f32(abs(512f))));
    global1 = array<f32, 11>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.e), _wgslsmith_f_op_f32(f32(-1f) * -1085f), 872f, var_3.e) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-688f, -287f, global1[_wgslsmith_index_u32(arg_0.x, 11u)], global1[_wgslsmith_index_u32(21879u, 11u)])) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1033f, var_3.e, 451f, 639f)))) * vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(6995u, 11u)] + global1[_wgslsmith_index_u32(105456u, 11u)]), _wgslsmith_f_op_f32(940f - var_3.c.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_f_op_f32(step(var_3.c.x, -1000f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(833f - global1[_wgslsmith_index_u32(u_input.a, 11u)]), _wgslsmith_f_op_f32(f32(-1f) * -161f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(9486u, 11u)]), global1[_wgslsmith_index_u32(13693u, 11u)]) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-876f, 952f, 451f, -1646f), vec4<f32>(481f, global1[_wgslsmith_index_u32(0u, 11u)], 459f, 177f))) * vec4<f32>(var_3.a.x, global1[_wgslsmith_index_u32(arg_0.x, 11u)], 998f, global1[_wgslsmith_index_u32(1u, 11u)])))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))));
    let var_1 = Struct_4(467f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1288f, global1[_wgslsmith_index_u32(5953u, 11u)])), _wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(4294967295u, 64930u, 1u))).x, arg_2.b.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1, 11u)] * global1[_wgslsmith_index_u32(u_input.a, 11u)])) + _wgslsmith_f_op_vec4_f32(arg_0.b * arg_2.e.a.a))), any(select(!(!arg_2.e.a.c.yyw), vec3<bool>(true, select(false, arg_0.e.d.c.x, arg_2.e.a.c.x), any(arg_0.e.a.c.wz)), arg_0.e.a.c.xwy)), ~_wgslsmith_dot_vec3_u32((vec3<u32>(30590u, arg_2.e.d.b, 1u) ^ vec3<u32>(u_input.a, arg_2.d, arg_2.e.c)) & ~vec3<u32>(arg_1, 1u, u_input.a), min(vec3<u32>(37672u, 1u, 4294967295u), ~vec3<u32>(47050u, u_input.a, arg_2.e.c))), Struct_3(arg_2.e.a, _wgslsmith_f_op_f32(-531f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-188f, arg_2.b.x)))), 1u, arg_0.e.d));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(var_1.e.d.a.ww))));
    var var_3 = -724f;
    var var_4 = var_1.e.d;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), arg_2.a, 1000f, 1662f), _wgslsmith_f_op_vec4_f32(-var_4.a)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_4.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.e.a.a) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, -260f, global1[_wgslsmith_index_u32(arg_0.d, 11u)], var_1.e.b))))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(375f)), _wgslsmith_f_op_f32(abs(var_4.a.x)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 11u)] * 974f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 11u)] - var_1.e.a.a.x))))));
}

fn func_1(arg_0: vec3<i32>) -> vec4<f32> {
    global0 = array<i32, 31>();
    var var_0 = any(!(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), false)));
    var var_1 = -38247i;
    global1 = array<f32, 11>();
    global0 = array<i32, 31>();
    return _wgslsmith_f_op_vec4_f32(func_4(Struct_4(global1[_wgslsmith_index_u32(u_input.a, 11u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(22373u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(14502u, 11u)])) * _wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(6066u, u_input.a, u_input.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(5570u, u_input.a, 4294967295u))) - vec4<f32>(201f, 442f, global1[_wgslsmith_index_u32(u_input.a, 11u)], -557f)))), true, ~u_input.a, Struct_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(14672u, 11u)], 718f, -557f, global1[_wgslsmith_index_u32(u_input.a, 11u)]), vec4<f32>(global1[_wgslsmith_index_u32(1u, 11u)], -750f, 1000f, 1000f)), firstLeadingBit(15424u), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), all(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(10418u, 31u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 11u)]))), u_input.a, Struct_1(vec4<f32>(-1668f, 1673f, 362f, 1774f), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), vec4<bool>(false, false, true, true), true, -45404i))), 90519u, Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<u32>(43566u, u_input.a, u_input.a))).x + global1[_wgslsmith_index_u32(select(u_input.a, u_input.a, true), 11u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(778f, 674f, global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(26050u, 11u)]) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 11u)], -466f, -368f, global1[_wgslsmith_index_u32(0u, 11u)]) + vec4<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)])))), true, 1130u, Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(431f, global1[_wgslsmith_index_u32(40992u, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)]) * vec4<f32>(global1[_wgslsmith_index_u32(92154u, 11u)], global1[_wgslsmith_index_u32(8786u, 11u)], -187f, -274f)), u_input.a, select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), any(vec2<bool>(true, false)), -2147483647i), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 11u)] - -1154f), ~0u, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-613f, 741f, -903f, -299f) - vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(112239u, 11u)], -1575f)), select(4294967295u, 0u, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true), any(vec3<bool>(false, false, true)), arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1(u_input.c.xzx))))));
    var var_1 = ~_wgslsmith_sub_u32(u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 66366u, u_input.a, u_input.a), vec4<u32>(4294967295u, 43030u, 1u, u_input.a)), ~(~u_input.a)));
    var_1 = 0u;
    global1 = array<f32, 11>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(-u_input.c.wzw))), u_input.a, vec4<bool>(false, all(vec4<bool>(false, all(vec2<bool>(true, false)), true, u_input.a > 4294967295u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(54819u, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)]), u_input.c.yz) > -(8946i & u_input.b), all(vec2<bool>(true, true))), all(vec4<bool>(all(vec4<bool>(true, false, true, false)) & any(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, true)), false, false)), ~reverseBits(-5621i));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a.x, var_2.a.x) * _wgslsmith_f_op_f32(var_0.x + -594f))), -1680f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec2<u32>(54082u, var_2.b)))), vec3<i32>(global0[_wgslsmith_index_u32(88986u >> (var_2.b % 32u), 31u)], var_2.e, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c) ^ ~u_input.c, ~abs(u_input.c))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_4(232f, vec4<f32>(417f, global1[_wgslsmith_index_u32(1u, 11u)], var_2.a.x, -454f), var_2.c.x, u_input.a, Struct_3(var_2, 637f, 1u, Struct_1(var_0, u_input.a, var_2.c, false, global0[_wgslsmith_index_u32(0u, 31u)]))), 0u, Struct_4(-628f, vec4<f32>(1000f, var_2.a.x, var_2.a.x, var_0.x), false, 5681u, Struct_3(Struct_1(vec4<f32>(1657f, 281f, -1235f, 231f), 1u, var_2.c, var_2.d, global0[_wgslsmith_index_u32(u_input.a, 31u)]), var_0.x, 1u, var_2)))).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_2.b, 11u)], 136f, false)))), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.a, 11u)])), _wgslsmith_f_op_vec4_f32(func_4(Struct_4(_wgslsmith_f_op_f32(var_2.a.x + global1[_wgslsmith_index_u32(u_input.a, 11u)]), _wgslsmith_f_op_vec4_f32(-var_2.a), true, 0u, Struct_3(var_2, global1[_wgslsmith_index_u32(u_input.a, 11u)], var_2.b, var_2)), u_input.a, Struct_4(802f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(926f, global1[_wgslsmith_index_u32(var_2.b, 11u)], global1[_wgslsmith_index_u32(var_2.b, 11u)], global1[_wgslsmith_index_u32(var_2.b, 11u)])), select(var_2.d, var_2.d, true), firstTrailingBit(1u), Struct_3(var_2, var_2.a.x, var_2.b, Struct_1(vec4<f32>(-1662f, global1[_wgslsmith_index_u32(1u, 11u)], var_0.x, 511f), u_input.a, vec4<bool>(false, var_2.d, true, true), false, 18678i))))).x, _wgslsmith_f_op_vec4_f32(func_4(Struct_4(-2157f, vec4<f32>(var_2.a.x, global1[_wgslsmith_index_u32(61986u, 11u)], -381f, var_0.x), select(true, var_2.d, false), 108910u, Struct_3(Struct_1(var_2.a, 4294967295u, var_2.c, false, u_input.c.x), global1[_wgslsmith_index_u32(u_input.a, 11u)], 4294967295u, Struct_1(var_2.a, u_input.a, vec4<bool>(var_2.c.x, true, var_2.d, var_2.c.x), false, 1i))), ~_wgslsmith_mod_u32(1563u, 4294967295u), Struct_4(-198f, _wgslsmith_f_op_vec4_f32(var_2.a + var_0), var_2.d & var_2.c.x, _wgslsmith_mult_u32(u_input.a, 4294967295u), Struct_3(var_2, -2937f, 80048u, var_2)))).x), max(u_input.c.zxy, u_input.c.zyy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(var_2.b, 11u)], -1950f), vec2<f32>(var_0.x, -340f))))), _wgslsmith_f_op_vec2_f32(select(var_0.xx, vec2<f32>(var_2.a.x, var_0.x), var_2.c.wz)), select(vec2<bool>(var_2.d, var_2.c.x), vec2<bool>(false, var_2.c.x), !vec2<bool>(var_2.d, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_2.a.zy)))));
}

