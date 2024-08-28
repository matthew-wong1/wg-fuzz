struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: vec4<f32> = vec4<f32>(-394f, -243f, 1873f, -737f);

var<private> global2: array<u32, 26>;

var<private> global3: Struct_4;

var<private> global4: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, global4.x, global3.b.x) * global4.xzx))))))), _wgslsmith_add_u32(firstLeadingBit(15779u), ~arg_0.x));
    global1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(max(var_0.a.x, 692f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.x, -1014f))), -185f)))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-602f * var_0.a.x) - _wgslsmith_f_op_f32(floor(global4.x))), _wgslsmith_f_op_f32(floor(-1004f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1857f))))) * vec4<f32>(_wgslsmith_f_op_f32(-global4.x), -2000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - -1000f), _wgslsmith_f_op_f32(1913f - _wgslsmith_f_op_f32(-global4.x)))));
    let var_1 = ~global0[_wgslsmith_index_u32(countOneBits(abs(_wgslsmith_mult_u32(4294967295u, u_input.c.x))), 23u)] & ~max(41801u, firstTrailingBit(var_0.b));
    var var_2 = select(global3.a.wyz, global3.a.xyz, vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * global1.x) - _wgslsmith_div_f32(global3.b.x, global3.b.x)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), global1.x), all(vec4<bool>(all(global3.a.xx), global3.a.x | global3.a.x, true, var_0.a.x == 154f)), global3.a.x | global3.a.x));
    return vec4<i32>(~countOneBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, u_input.b.x), -u_input.b.x)), ~reverseBits(u_input.b.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(-u_input.b.x, 0i & u_input.b.x, u_input.b.x << (var_0.b % 32u)), ~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-46151i, u_input.b.x, 8540i), vec3<i32>(u_input.b.x, 18116i, u_input.b.x)), ~vec3<i32>(-2593i, u_input.b.x, u_input.b.x))), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    global0 = array<u32, 23>();
    var var_0 = abs(arg_0.e.a);
    global3 = arg_1;
    let var_1 = arg_0.e;
    var var_2 = ~func_3(vec2<u32>(var_1.d.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41466u, 23u)], 23u)])) << (~(select(select(arg_0.c, vec4<u32>(arg_0.c.x, arg_0.c.x, u_input.c.x, 35047u), arg_1.a), arg_0.c >> (vec4<u32>(1424u, 4294967295u, 90103u, 69633u) % vec4<u32>(32u)), true) >> (max(abs(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 9434u, global2[_wgslsmith_index_u32(0u, 26u)], var_1.e.b)), ~vec4<u32>(1u, arg_0.a.x, var_1.b.b, global0[_wgslsmith_index_u32(1u, 23u)])) % vec4<u32>(32u))) % vec4<u32>(32u));
    return _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(60158u, arg_0.a.x, 1u, 32188u), arg_0.c)), global2[_wgslsmith_index_u32(~(~1u), 26u)] << (global2[_wgslsmith_index_u32(u_input.a.x, 26u)] % 32u));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: u32) -> f32 {
    global0 = array<u32, 23>();
    let var_0 = Struct_3(vec3<u32>(_wgslsmith_mod_u32(~40328u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_3, global0[_wgslsmith_index_u32(15757u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], 0u), u_input.c, arg_0.x), select(vec4<u32>(global2[_wgslsmith_index_u32(1u, 26u)], 21343u, 25728u, 43672u), vec4<u32>(70689u, 86988u, 31651u, 45726u), false))), ~arg_3, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_3, global2[_wgslsmith_index_u32(20475u, 26u)], global2[_wgslsmith_index_u32(23217u, 26u)]), u_input.c.yzw, arg_0), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(arg_3, 23u)], arg_2))), u_input.c.zz, u_input.c >> ((u_input.c & (min(vec4<u32>(2920u, arg_2, u_input.a.x, u_input.a.x), u_input.c) << (u_input.c % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(global4.x)), false)))), Struct_2(func_3(vec2<u32>(global0[_wgslsmith_index_u32(arg_3, 23u)] >> (arg_3 % 32u), 63409u)).zzw, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.x, 375f, -444f)))), 41539u), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1623f - global4.x), -193f, _wgslsmith_f_op_f32(2404f + global3.b.x)), 1u), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1, -882f)), 65130u), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1172f - global1.x), global3.b.x, _wgslsmith_f_op_f32(304f + 3114f)), ~u_input.a.x)));
    global4 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-807f - -532f), -417f, any(arg_0.yy))), -551f), -294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.b.x, 622f, true)) * _wgslsmith_f_op_f32(700f - 1034f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(775f, _wgslsmith_div_f32(530f, 845f), _wgslsmith_f_op_f32(f32(-1f) * -1222f), -245f), vec4<f32>(_wgslsmith_f_op_f32(var_0.e.e.a.x - -202f), 1239f, _wgslsmith_f_op_f32(max(var_0.e.c.a.x, global4.x)), _wgslsmith_f_op_f32(trunc(global1.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global4.x, global1.x, arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, -202f, var_0.d.x, arg_1) * vec4<f32>(-238f, 1522f, global3.b.x, global3.b.x)))))));
    var var_1 = var_0.e;
    var_1 = Struct_2(-_wgslsmith_clamp_vec3_i32(-vec3<i32>(11297i, u_input.b.x, -110201i), ~vec3<i32>(var_0.e.a.x, -548i, var_1.a.x), func_3(u_input.c.yx).xzw), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(var_1.b.a)), func_2(var_0, Struct_4(select(vec4<bool>(arg_0.x, global3.a.x, false, arg_0.x), global3.a, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1314f, var_0.e.d.a.x, -352f))))), var_0.e.d, Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, -625f, global3.b.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, var_0.e.c.a.x, -718f), vec3<f32>(367f, 750f, arg_1)), _wgslsmith_div_vec3_f32(global4.yzx, vec3<f32>(117f, 706f, -973f)), !vec3<bool>(arg_0.x, arg_0.x, global3.a.x))))), ~(~(~var_1.b.b))), Struct_1(vec3<f32>(2718f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f)), 140f), 1u));
    return _wgslsmith_div_f32(702f, 1287f);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>) -> f32 {
    global0 = array<u32, 23>();
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(141f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x)))), _wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(func_4(global3.a.yww, global3.b.x, arg_1.c.x, global0[_wgslsmith_index_u32(func_2(arg_1, Struct_4(vec4<bool>(global3.a.x, global3.a.x, arg_0, arg_0), global4.xyx)), 23u)]))), _wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_div_f32(arg_1.d.x, -2295f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-228f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-431f, global4.x) - _wgslsmith_f_op_f32(global4.x + 511f)), _wgslsmith_f_op_f32(f32(-1f) * -248f), _wgslsmith_f_op_f32(trunc(-1693f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(707f, global1.x, global4.x, -328f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(206f, global3.b.x, global3.b.x, global4.x)))))), true)));
    return _wgslsmith_f_op_f32(select(global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1184f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1926f, 1208f)))))), !(!(0i < _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.e.a.x, -1i, 2147483647i), vec4<i32>(0i, u_input.b.x, -62900i, 2147483647i))))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4) -> vec4<f32> {
    global0 = array<u32, 23>();
    var var_0 = vec3<u32>(firstTrailingBit(u_input.c.x), _wgslsmith_mod_u32(~abs(9207u) | max(select(54918u, 4294967295u, global3.a.x), func_2(Struct_3(u_input.c.wwz, u_input.a, vec4<u32>(global2[_wgslsmith_index_u32(10195u, 26u)], u_input.a.x, 30431u, global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), arg_0.b.yy, Struct_2(vec3<i32>(-2147483647i, 1i, 2147483647i), Struct_1(vec3<f32>(916f, arg_1.b.x, global3.b.x), global2[_wgslsmith_index_u32(2546u, 26u)]), Struct_1(vec3<f32>(global1.x, -824f, -1059f), 4294967295u), Struct_1(global1.wyx, u_input.a.x), Struct_1(vec3<f32>(1527f, 1000f, arg_1.b.x), 45793u))), arg_0)), ~25553u), ~(~(~100817u)));
    var var_1 = u_input.c;
    global0 = array<u32, 23>();
    global3 = Struct_4(vec4<bool>(true, false, all(!select(vec3<bool>(false, arg_0.a.x, true), vec3<bool>(arg_0.a.x, false, arg_0.a.x), true)), false), vec3<f32>(-884f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(198f + global1.x) * -242f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global3.b.x)))), arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global4.x, global3.b.x)), _wgslsmith_f_op_f32(func_4(vec3<bool>(false, true, false), global4.x, var_1.x, 18058u))) + global3.b.x)));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.x, global3.b.x, -2182f, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.b.x, 190f, global3.b.x, global1.x))), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-858f, 713f, -1096f, -599f)), vec4<f32>(177f, arg_1.b.x, -367f, global3.b.x), select(vec4<bool>(false, arg_0.a.x, arg_1.a.x, global3.a.x), arg_0.a, arg_1.a))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, 2397f)), -134f, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(565f * global4.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1512f, 1174f, 394f, 861f), vec4<f32>(-646f, 204f, -283f, arg_1.b.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, arg_1.b.x, -1065f, global1.x) + vec4<f32>(global1.x, global3.b.x, 777f, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.b.x, global3.b.x, global3.b.x, 116f), vec4<f32>(global1.x, arg_0.b.x, arg_0.b.x, 355f))) + vec4<f32>(arg_1.b.x, 508f, 417f, arg_0.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global3.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_5(Struct_4(global3.a, vec3<f32>(-894f, global3.b.x, _wgslsmith_f_op_f32(func_1(global3.a.x, Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(71879u, 23u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35825u, 23u)], 23u)], 26u)], 23u)], 0u), u_input.a, u_input.c, vec2<f32>(743f, 114f), Struct_2(vec3<i32>(-2147483647i, u_input.b.x, -1i), Struct_1(global4.wzz, u_input.a.x), Struct_1(global3.b, global2[_wgslsmith_index_u32(15020u, 26u)]), Struct_1(vec3<f32>(global3.b.x, -457f, global3.b.x), 0u), Struct_1(vec3<f32>(global4.x, global3.b.x, global3.b.x), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], 26u)]))), vec2<u32>(75075u, 12984u))))), Struct_4(select(select(vec4<bool>(global3.a.x, false, false, global3.a.x), vec4<bool>(global3.a.x, global3.a.x, true, global3.a.x), global3.a), !vec4<bool>(global3.a.x, global3.a.x, false, global3.a.x), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 1855f, -1000f) * vec3<f32>(1259f, -512f, -1225f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(421f, global3.b.x, global1.x) * global1.ywx)))))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i | firstTrailingBit(reverseBits(-u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1322f, _wgslsmith_f_op_f32(trunc(1408f)), _wgslsmith_f_op_f32(-964f + global1.x)))), _wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f))), reverseBits(abs(select(func_3(vec2<u32>(0u, 125174u)).xzx, vec3<i32>(10788i, u_input.b.x, -2147483647i), false))));
}

