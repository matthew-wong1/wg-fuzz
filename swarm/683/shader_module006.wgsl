struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: array<bool, 20> = array<bool, 20>(false, false, true, false, false, false, true, false, false, false, true, false, true, true, false, false, true, false, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_2 {
    global0 = array<Struct_2, 1>();
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(_wgslsmith_add_u32(arg_2.x, 1u)), _wgslsmith_add_u32(~arg_2.x, 4294967295u)), 1u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(-489f)), -1584f, _wgslsmith_f_op_f32(-arg_0.x), -1214f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))))), Struct_2(1i, countOneBits(select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xy, true)) | max(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(78470u, 70072u), vec2<u32>(72417u, 51829u)), _wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(79776u, 4294967295u))), Struct_1(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 4294967295u), ~86792u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2525f, -1000f, arg_0.x)))), ~(~u_input.a.x)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.a.xx, ~u_input.a.zx), _wgslsmith_clamp_u32(~21524u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 92663u, u_input.a.x, 9670u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), 45831u), ~(~u_input.a.x)));
    let var_1 = var_0.c;
    let var_2 = func_1(vec4<f32>(var_0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.x)), 866f), var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * var_0.d.x))), Struct_2(_wgslsmith_div_i32(func_1(vec4<f32>(-184f, arg_0.x, arg_0.x, -673f), var_0, var_1.a.zzy).a, _wgslsmith_add_i32(-1i, 1i)) << (~abs(6784u) % 32u), select(vec2<u32>(1u, u_input.a.x) >> (var_1.a.zy % vec2<u32>(32u)), abs(var_0.b), any(vec2<bool>(false, true))) & firstTrailingBit(vec2<u32>(u_input.a.x, 0u)), var_0.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(218f, var_0.d.x, var_0.d.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1036f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.d))), vec3<bool>(global1[_wgslsmith_index_u32(44792u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], true))), max(~1u, 1u)), ~vec3<u32>(~u_input.a.x, ~11179u, ~(var_1.a.x & 0u))).c;
    var var_3 = func_1(vec4<f32>(arg_0.x, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, var_0.d.x, true))))), func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.d.x, var_0.d.x, global1[_wgslsmith_index_u32(var_1.a.x, 20u)])), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -2036f), _wgslsmith_f_op_f32(ceil(arg_0.x))))), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, 172f, arg_0.x, arg_0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(593f, var_0.d.x, arg_0.x, arg_0.x))), Struct_2(-1i, reverseBits(u_input.a.xy), var_2, _wgslsmith_div_vec3_f32(var_0.d, var_0.d), var_2.a.x), min(~vec3<u32>(51384u, 0u, var_2.a.x), vec3<u32>(1u, var_1.a.x, 78804u) | vec3<u32>(51055u, 154097u, 86450u))), var_1.a.zyz), (var_0.c.a.xzz | (~var_0.c.a.xxy ^ u_input.a)) | func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-3703f, -425f, var_0.d.x, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1301f, 1542f, arg_0.x, var_0.d.x)))), Struct_2(-arg_1.x, _wgslsmith_div_vec2_u32(var_2.a.zz, vec2<u32>(91u, u_input.a.x)), var_0.c, var_0.d, select(var_1.a.x, var_2.a.x, false)), firstLeadingBit(var_2.a.zxw)).c.a.zzx).c;
    var var_4 = _wgslsmith_mod_i32(abs(_wgslsmith_add_i32(-1i, arg_1.x | -2147483647i)) ^ _wgslsmith_sub_i32(-52231i, var_0.a), 43873i);
    return vec3<bool>(any(select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(var_2.a.x, 20u)], false, true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_2.a.x, 20u)])), vec3<bool>(true, true, true), all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_2.a.x, 20u)]))), select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.e, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], true, global1[_wgslsmith_index_u32(4294967295u, 20u)])), !select(vec3<bool>(global1[_wgslsmith_index_u32(var_2.a.x, 20u)], false, global1[_wgslsmith_index_u32(var_2.a.x, 20u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(61011u, 20u)]), global1[_wgslsmith_index_u32(62087u, 20u)]))), ~(~(-28499i)) < arg_1.x, false);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    let var_0 = select(!select(vec3<bool>(global1[_wgslsmith_index_u32(5617u, 20u)] & global1[_wgslsmith_index_u32(17354u, 20u)], any(vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 20u)])), global1[_wgslsmith_index_u32(4294967295u, 20u)]), select(!vec3<bool>(global1[_wgslsmith_index_u32(43539u, 20u)], global1[_wgslsmith_index_u32(21514u, 20u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], true, global1[_wgslsmith_index_u32(arg_1.a.x, 20u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(40379u, 20u)], true), global1[_wgslsmith_index_u32(arg_1.a.x, 20u)]), false), vec3<bool>(global1[_wgslsmith_index_u32(18954u, 20u)] && true, u_input.b == u_input.b, false)), vec3<bool>(true, true, true), select(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-738f, 424f) - vec2<f32>(1522f, -1000f))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-18304i, 15312i, 0i), vec3<i32>(1i, 0i, 2147483647i)), vec3<i32>(21145i, u_input.b, 0i), min(vec3<i32>(u_input.b, -23070i, -11016i), vec3<i32>(u_input.b, 0i, u_input.b)))), !func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1159f, 1313f)), select(vec3<i32>(u_input.b, u_input.b, 8178i), vec3<i32>(u_input.b, -34967i, u_input.b), vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_0.a.x, 20u)]))), true));
    var var_1 = global0[_wgslsmith_index_u32(7412u, 1u)];
    return _wgslsmith_mult_u32(countOneBits(u_input.a.x), reverseBits(func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x) * vec4<f32>(var_1.d.x, 1381f, -1606f, var_1.d.x)))), global0[_wgslsmith_index_u32(arg_0.a.x, 1u)], u_input.a).e));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<u32>) -> StorageBuffer {
    global0 = array<Struct_2, 1>();
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 20u)] || (~_wgslsmith_dot_vec3_u32(vec3<u32>(13782u, 1u, 98677u), vec3<u32>(u_input.a.x, 4294967295u, 24519u)) <= abs(arg_1.b.x));
    global0 = array<Struct_2, 1>();
    var var_1 = Struct_2(arg_1.a, vec2<u32>(1u & ~arg_3.x, arg_2.a.x) | (~vec2<u32>(13486u, arg_1.c.a.x) | firstLeadingBit(~vec2<u32>(arg_1.c.a.x, arg_3.x))), func_1(vec4<f32>(315f, _wgslsmith_f_op_f32(round(arg_1.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1825f + arg_1.d.x), arg_1.d.x)), -584f), arg_1, vec3<u32>(74630u, u_input.a.x, ~_wgslsmith_clamp_u32(arg_2.a.x, arg_3.x, arg_3.x))).c, _wgslsmith_f_op_vec3_f32(arg_1.d * arg_1.d), 25125u);
    let var_2 = arg_3.x;
    return StorageBuffer(func_2(Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_u32(arg_2.a, var_1.c.a))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.d.x, -941f, 950f, var_1.d.x))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-520f, 1560f, var_1.d.x, arg_1.d.x)))), Struct_2(reverseBits(u_input.b), ~vec2<u32>(0u, 1u), arg_2, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.x, -1332f, 3152f), var_1.d), select(49487u, 22048u, true)), vec3<u32>(var_1.e, ~3010u, ~4294967295u)).c, arg_2.a), _wgslsmith_mod_vec3_i32(~min(max(vec3<i32>(16529i, -26626i, u_input.b), vec3<i32>(-19159i, var_1.a, 12812i)), vec3<i32>(u_input.b, 0i, u_input.b)), arg_0), vec2<u32>(_wgslsmith_dot_vec4_u32(~arg_2.a, arg_2.a), _wgslsmith_mod_u32(func_2(Struct_1(var_1.c.a), func_1(vec4<f32>(868f, -1464f, 1133f, var_1.d.x), Struct_2(var_1.a, vec2<u32>(0u, 0u), arg_2, arg_1.d, 2899u), u_input.a).c, _wgslsmith_add_vec4_u32(arg_2.a, var_1.c.a)), ~(~1u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-574f, var_1.d.x, -1357f, arg_1.d.x))))))), firstLeadingBit(1u >> (~arg_1.e % 32u)) >> (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 20>();
    global0 = array<Struct_2, 1>();
    let var_0 = _wgslsmith_add_u32(abs(~_wgslsmith_div_u32(~4294967295u, 61055u)), u_input.a.x);
    let x = u_input.a;
    s_output = func_4(abs(vec3<i32>(firstLeadingBit(-10549i), -28130i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(43314i, -2147483647i, u_input.b))))), func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -255f, _wgslsmith_f_op_f32(-571f - _wgslsmith_f_op_f32(652f * 987f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f))), global0[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_sub_vec3_u32(u_input.a, u_input.a)), Struct_1(firstTrailingBit(~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 15988u)))), vec3<u32>(0u, func_2(Struct_1(~vec4<u32>(var_0, var_0, var_0, u_input.a.x)), Struct_1(vec4<u32>(30030u, u_input.a.x, 4294967295u, 69304u)), ~vec4<u32>(u_input.a.x, 8369u, 32085u, u_input.a.x)), u_input.a.x));
}

