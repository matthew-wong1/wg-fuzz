struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, true, false, true, true, false, true);

var<private> global1: bool;

var<private> global2: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(355f), Struct_3(-529f), Struct_3(1061f), Struct_3(-653f), Struct_3(-430f), Struct_3(-301f), Struct_3(634f), Struct_3(-142f), Struct_3(185f), Struct_3(-1499f), Struct_3(-1000f), Struct_3(-1278f), Struct_3(1889f), Struct_3(-1000f), Struct_3(266f), Struct_3(1280f), Struct_3(-1093f));

var<private> global3: Struct_5 = Struct_5(vec4<f32>(-1101f, -860f, -1213f, -2328f), 1u, Struct_1(vec3<u32>(63860u, 1u, 42892u), 6197i, 178f, 1i, 785f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    var var_0 = 0i;
    let var_1 = Struct_4(vec4<f32>(162f, arg_0.x, -173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) + _wgslsmith_f_op_f32(min(arg_1.a, 1606f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(192f * arg_0.x))), global3.a.x), arg_1.a));
    let var_2 = firstLeadingBit(~_wgslsmith_clamp_vec2_u32(global3.c.a.yz, _wgslsmith_mod_vec2_u32(~global3.c.a.yy, global3.c.a.xy), _wgslsmith_sub_vec2_u32(global3.c.a.zx & global3.c.a.zx, global3.c.a.zz)));
    var var_3 = 659f;
    var var_4 = var_1;
    return 1i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>) -> vec4<f32> {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(global3.c.a.x, _wgslsmith_dot_vec4_u32(countOneBits(reverseBits(vec4<u32>(61604u, global3.b, global3.c.a.x, 41688u))), ~(~vec4<u32>(global3.c.a.x, 24603u, 29357u, 0u)))), ~(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24308u, global3.c.a.x, 0u, 42586u), vec4<u32>(4294967295u, 1u, 0u, global3.b)), global3.b) >> (~(global3.c.a.x >> (4294967295u % 32u)) % 32u)), _wgslsmith_add_u32(~1u, min(max(abs(24011u), global3.b), global3.b)));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(global3.a.x, global3.a.x, -433f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global3.a.x, global3.c.c, 1000f))))), var_0.x, global3.c);
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(countOneBits(var_1.c.a.x ^ 0u), global3.b), 17u)];
    var var_3 = vec4<f32>(var_1.c.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(trunc(-1058f)), true))))), var_2.a, _wgslsmith_f_op_f32(ceil(var_1.c.c)));
    let var_4 = _wgslsmith_f_op_f32(466f + _wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(-var_1.a.x), !(-1111f >= var_1.a.x))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.x, -125f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + -2245f) - _wgslsmith_f_op_f32(f32(-1f) * -140f)) - _wgslsmith_f_op_f32(-var_4))), _wgslsmith_f_op_f32(step(global3.c.e, _wgslsmith_f_op_f32(global3.a.x + 664f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(842f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + -2562f), var_4)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.a.x))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global3.a.x, 241f)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-673f, _wgslsmith_div_f32(-1176f, global3.a.x), _wgslsmith_f_op_f32(global3.a.x * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1535f)))), global3.a.x);
    let var_1 = var_0;
    var var_2 = vec3<i32>(0i, -2147483647i, ~(-1i));
    var var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.c.c)) * _wgslsmith_f_op_f32(step(global3.c.e, -276f))), _wgslsmith_f_op_f32(step(-122f, var_0.b)))), ~86797u, Struct_1(~_wgslsmith_mult_vec3_u32(~vec3<u32>(global3.b, 2714u, 0u), global3.c.a | global3.c.a), 0i, var_0.a.x, firstLeadingBit(global3.c.d), _wgslsmith_f_op_f32(-global3.c.c)));
    var var_4 = Struct_5(_wgslsmith_f_op_vec4_f32(func_4(vec2<i32>(func_3(var_0.a, global2[_wgslsmith_index_u32(4294967295u, 17u)]) << (4630u % 32u), -7825i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.c.c, -738f, var_3.a.x, 1554f)))))))), _wgslsmith_dot_vec3_u32(firstTrailingBit(var_3.c.a), ~vec3<u32>(max(0u, 0u), 1u, ~80600u)), Struct_1(global3.c.a, min(-2147483647i, _wgslsmith_mod_i32(var_2.x, -9905i)) | (reverseBits(2147483647i) >> (~var_3.c.a.x % 32u)), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1207f + var_3.a.x))), abs(0i), _wgslsmith_f_op_f32(var_1.a.x - global3.c.c)));
    return global3.c;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: Struct_5) -> Struct_3 {
    global3 = Struct_5(_wgslsmith_div_vec4_f32(global3.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(559f * 1000f), -787f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.e - -658f)), _wgslsmith_f_op_f32(-arg_3.c.e), 1000f)), ~(~_wgslsmith_mod_u32(arg_3.b, max(arg_3.c.a.x, 1u))), func_2());
    var var_0 = arg_3.c.e;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-136f + 753f), 1798f)), arg_3.a.x), 226f, global0[_wgslsmith_index_u32(0u, 7u)])));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_clamp_vec2_i32(arg_2.c.wx, arg_2.c.xw, arg_2.c.wy) | _wgslsmith_div_vec2_i32(vec2<i32>(39557i, 2147483647i), arg_2.c.zy), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1071f, arg_2.b.e, -740f, -208f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(837f, -606f, 234f, arg_3.a.x), vec4<f32>(733f, arg_3.c.e, arg_3.c.e, arg_2.a.c), true)))))).x, _wgslsmith_f_op_f32(sign(2121f))));
    let var_2 = 53360i;
    return global2[_wgslsmith_index_u32(~(~(~global3.c.a.x)), 17u)];
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_5 {
    global2 = array<Struct_3, 17>();
    global3 = Struct_5(global3.a, ~arg_2.e, Struct_1(vec3<u32>(~(arg_1.a.x >> (arg_3 % 32u)), ~(~4294967295u), reverseBits(_wgslsmith_clamp_u32(arg_2.a.a.x, arg_2.e, 44910u))), func_3(_wgslsmith_f_op_vec4_f32(select(global3.a, _wgslsmith_f_op_vec4_f32(func_4(arg_2.c.ww, vec4<f32>(arg_1.c, arg_0.a, arg_1.e, arg_2.a.e))), true)), arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(555f - arg_2.a.e), _wgslsmith_f_op_f32(trunc(arg_1.e)))), _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2.a.d, global3.c.d) << (~global3.b % 32u), arg_2.a.d), -299f));
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(min(_wgslsmith_div_i32(arg_1.b, -1i), ~u_input.a), abs(-global3.c.b), -21313i, -func_2().b), _wgslsmith_clamp_vec4_i32(arg_2.c, ~select(vec4<i32>(arg_1.d, global3.c.d, -18380i, global3.c.d), vec4<i32>(2147483647i, 0i, arg_1.b, -2147483647i), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2.d, 7u)], global0[_wgslsmith_index_u32(global3.c.a.x, 7u)], true)), vec4<i32>(19516i, -7199i, u_input.a, abs(-10061i)))) >> (vec4<u32>(~abs(global3.c.a.x), ~(~func_2().a.x), ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.e, global3.c.a.x, arg_2.b.a.x, arg_2.d), vec4<u32>(global3.b, 1u, 40304u, 1u)), arg_1.a.x), min(_wgslsmith_add_u32(~39508u, global3.b), 1u)) % vec4<u32>(32u));
    let var_1 = arg_0;
    global0 = array<bool, 7>();
    return Struct_5(vec4<f32>(_wgslsmith_f_op_f32(trunc(-2185f)), _wgslsmith_f_op_f32(arg_1.c * -542f), -1000f, _wgslsmith_div_f32(2075f, _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-arg_1.e)))), arg_3, Struct_1(abs(reverseBits(arg_2.b.a)), 2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(345f - _wgslsmith_f_op_f32(trunc(arg_2.a.e))), 1026f), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, arg_1.b, arg_2.a.b, -2279i), _wgslsmith_mult_vec4_i32(vec4<i32>(global3.c.b, 0i, var_0.x, arg_1.d), vec4<i32>(-2147483647i, arg_2.a.b, -15373i, arg_2.c.x))), -1i, func_3(_wgslsmith_f_op_vec4_f32(select(global3.a, global3.a, false)), func_5(true, 2841i, Struct_2(Struct_1(arg_1.a, 1i, 353f, global3.c.b, -1000f), arg_2.b, vec4<i32>(24930i, -2147483647i, 62289i, global3.c.d), arg_3, arg_3), Struct_5(global3.a, 0u, arg_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global3.a.x) * 381f)));
}

fn func_1() -> Struct_5 {
    global2 = array<Struct_3, 17>();
    var var_0 = -global3.c.d ^ -2147483647i;
    var_0 = reverseBits(2147483647i);
    global3 = func_6(func_5(true, u_input.a, Struct_2(func_2(), global3.c, vec4<i32>(2147483647i, abs(0i), abs(global3.c.d), u_input.a), 0u, 16833u), Struct_5(vec4<f32>(-618f, global3.a.x, _wgslsmith_f_op_f32(global3.c.c - global3.c.c), _wgslsmith_f_op_f32(abs(global3.c.c))), global3.c.a.x, Struct_1(vec3<u32>(global3.c.a.x, global3.c.a.x, 1u), ~0i, -893f, u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -481f)))), Struct_1(vec3<u32>(abs(countOneBits(12127u)), global3.b << (global3.c.a.x % 32u), 6419u), ~reverseBits(u_input.a) << (~global3.c.a.x % 32u), _wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.c.c)) - global3.a.x)), ~((u_input.a >> (8733u % 32u)) | -57484i), -482f), Struct_2(Struct_1(~global3.c.a, select(1i, _wgslsmith_mult_i32(8572i, -1i), global0[_wgslsmith_index_u32(9186u, 7u)]), global3.a.x, u_input.a, global3.c.c), func_2(), ~vec4<i32>(0i, u_input.a | -1i, -14504i, u_input.a), 98172u, 4089u), 11225u);
    var var_1 = select(select(vec3<bool>(true, !(!global0[_wgslsmith_index_u32(global3.c.a.x, 7u)]), false), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(33826u, 7u)], true, global0[_wgslsmith_index_u32(4294967295u, 7u)])), vec3<bool>(!global0[_wgslsmith_index_u32(global3.c.a.x, 7u)], true, global0[_wgslsmith_index_u32(4294967295u >> (global3.b % 32u), 7u)]), !(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(global3.b, 7u)]))), true), vec3<bool>(global0[_wgslsmith_index_u32(func_6(Struct_3(417f), global3.c, Struct_2(global3.c, global3.c, ~vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), global3.c.a.x, global3.b), global3.b | 1u).c.a.x, 7u)], false, false), all(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(global3.b, 7u)], global0[_wgslsmith_index_u32(global3.b, 7u)]), vec2<bool>(false, false), global0[_wgslsmith_index_u32(4294967295u, 7u)]))));
    return func_6(Struct_3(global3.a.x), global3.c, Struct_2(Struct_1(vec3<u32>(1u, firstLeadingBit(global3.b), global3.c.a.x), _wgslsmith_add_i32(u_input.a, u_input.a) << (1u % 32u), 596f, 1i, global3.a.x), global3.c, select(firstLeadingBit(vec4<i32>(0i, -17230i, 12586i, -75942i)), vec4<i32>(66781i, 2415i, 10031i, global3.c.d), !vec4<bool>(true, true, false, var_1.x)) ^ vec4<i32>(global3.c.b, u_input.a, -global3.c.d, u_input.a), global3.b, 1u), global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.a.x;
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-907f)) + _wgslsmith_f_op_vec4_f32(func_4(abs(vec2<i32>(-1i, global3.c.b)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.c.c, -803f, global3.c.e, var_0.c.e), var_0.a)))))).x), min(~firstLeadingBit(~vec4<i32>(var_0.c.d, global3.c.d, var_0.c.d, global3.c.b)), -vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-38288i, -11008i, 54006i, -2147483647i), vec4<i32>(2147483647i, -25821i, var_0.c.d, u_input.a)), u_input.a, var_0.c.b)), vec3<i32>(u_input.a, _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(-34485i, global3.c.b) << (0u % 32u)), u_input.a | var_0.c.b));
}

