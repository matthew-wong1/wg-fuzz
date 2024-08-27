struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 2147483647i, 2147483647i, -1i);

var<private> global1: array<bool, 17> = array<bool, 17>(true, true, false, false, false, true, true, true, true, false, false, true, false, true, true, true, true);

var<private> global2: array<u32, 8> = array<u32, 8>(0u, 11267u, 0u, 10575u, 0u, 31506u, 1u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    global2 = array<u32, 8>();
    var var_0 = Struct_3(vec2<u32>(_wgslsmith_dot_vec2_u32(max(arg_0.a.a.xx, arg_0.a.c.zz) & ~arg_0.a.a.wz, vec2<u32>(arg_0.c, 1u)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.a.c.x, ~max(4294967295u, arg_0.c)), 8u)]), ~(~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(0u, 8u)], 1u)) & _wgslsmith_add_u32(global2[_wgslsmith_index_u32(arg_1.a.a.x, 8u)], _wgslsmith_dot_vec3_u32(arg_2.a.a.yxz, max(arg_2.a.c, vec3<u32>(78386u, arg_0.a.a.x, arg_1.a.a.x)))), select(~arg_2.c, arg_2.a.a.x, true || all(select(vec2<bool>(arg_0.a.b, arg_2.a.b), vec2<bool>(arg_1.a.b, true), vec2<bool>(true, true)))), Struct_2(arg_1.a, u_input.b.xx, ~(~arg_0.a.c.x), _wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_1.d, 244f, false)))))), ~(5004u | _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(arg_0.a.a.x, 8u)] << (68107u % 32u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)] & 22537u, 8u)])));
    global0 = vec4<i32>(0i, min(-18379i, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, _wgslsmith_clamp_i32(-1i, arg_0.b.x, 1i)), _wgslsmith_div_i32(41883i, ~var_0.d.a.d.x))), abs(global0.x), -11911i);
    var_0 = Struct_3(~vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(arg_1.c), _wgslsmith_mult_u32(12516u, global2[_wgslsmith_index_u32(arg_2.a.a.x, 8u)])), global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(arg_0.a.c.x, 8u)] | arg_2.c), 8u)]), arg_0.a.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.c.x, var_0.b, arg_1.a.c.x), ~arg_1.a.c), select(1u, arg_0.c, false) & 1u, _wgslsmith_dot_vec2_u32(arg_1.a.a.zy, arg_2.a.c.zy), ~_wgslsmith_mult_u32(var_0.e, var_0.a.x)), arg_2.a.a), arg_2, select(~reverseBits(1u), global2[_wgslsmith_index_u32(min(~global2[_wgslsmith_index_u32(93313u, 8u)], arg_1.a.c.x & 0u), 8u)], arg_2.a.b) >> (global2[_wgslsmith_index_u32(21672u, 8u)] % 32u));
    var var_1 = arg_1;
    return arg_2.a.c.x;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2) -> vec3<bool> {
    global2 = array<u32, 8>();
    var var_0 = !(!(!select(!vec3<bool>(arg_2.a.b, arg_2.a.b, arg_2.a.b), vec3<bool>(true, true, true), true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.d))) - arg_0);
    global1 = array<bool, 17>();
    var var_2 = arg_2.a;
    return vec3<bool>(~global0.x <= 2147483647i, _wgslsmith_add_i32(firstLeadingBit(u_input.b.x), -14430i) != 1i, any(select(var_0.yx, !vec2<bool>(var_0.x, var_0.x), var_0.xz)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = all(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f - _wgslsmith_f_op_f32(-arg_0.x))), select(~(u_input.b >> (vec3<u32>(52156u, global2[_wgslsmith_index_u32(72808u, 8u)], global2[_wgslsmith_index_u32(59059u, 8u)]) % vec3<u32>(32u))), abs(max(vec3<i32>(global0.x, 2147483647i, -39347i), global0.wyx)), all(vec3<bool>(global1[_wgslsmith_index_u32(4417u, 17u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 17u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 17u)]))), Struct_2(Struct_1(~vec4<u32>(global2[_wgslsmith_index_u32(62549u, 8u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], global2[_wgslsmith_index_u32(80530u, 8u)]), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33833u, 8u)], 17u)] || false, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)]), vec3<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25669u, 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)]), vec3<u32>(4294967295u, 0u, 89294u)), -u_input.b.xy), arg_1, func_3(Struct_2(Struct_1(vec4<u32>(global2[_wgslsmith_index_u32(1u, 8u)], 4411u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 8u)], 41176u), global1[_wgslsmith_index_u32(12156u, 17u)], vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 14028u, 36309u), vec2<i32>(30163i, global0.x)), vec2<i32>(-9423i, arg_1.x), 0u, arg_0.x), Struct_2(Struct_1(vec4<u32>(global2[_wgslsmith_index_u32(1u, 8u)], 1u, 9359u, global2[_wgslsmith_index_u32(0u, 8u)]), global1[_wgslsmith_index_u32(1u, 17u)], vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 16567u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46482u, 8u)], 8u)], 8u)]), vec2<i32>(-1i, 34180i)), u_input.b.xx, 56148u, arg_0.x), Struct_2(Struct_1(vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(84523u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10711u, 8u)], 8u)], 8u)], 8u)], 8u)]), false, vec3<u32>(global2[_wgslsmith_index_u32(7196u, 8u)], 1u, 4294967295u), vec2<i32>(-192i, u_input.b.x)), arg_1, 31861u, arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1367f, -490f))), -1304f)));
    global1 = array<bool, 17>();
    global2 = array<u32, 8>();
    let var_1 = abs(vec3<i32>(-20767i, _wgslsmith_clamp_i32(firstTrailingBit(arg_1.x), i32(-1i) * -2147483647i, firstTrailingBit(arg_1.x)) | _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, u_input.a, u_input.b.x), global0.zzw, false), vec3<i32>(-4521i, arg_1.x, global0.x)), 1i));
    let var_2 = Struct_2(Struct_1(abs(vec4<u32>(1u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20571u, 8u)], 8u)], 27927u), reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13877u, 8u)], 8u)], 8u)], 8u)], 8u)]), 4294967295u)), false, vec3<u32>(select(5122u, 13888u, true) ^ ~25910u, _wgslsmith_mod_u32(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 8u)], 8u)], 8u)], 1u, false), ~global2[_wgslsmith_index_u32(64532u, 8u)]), ~select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18201u, 8u)], 8u)], 8u)], 8u)], 37363u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47079u, 8u)], 17u)])), abs(firstTrailingBit(vec2<i32>(-29820i, -2147483647i)))), u_input.b.yx, min(~63987u, ~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~51677u, 8u)], 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(95127u, 8u)], 8u)])), _wgslsmith_f_op_f32(-754f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(sign(1889f))) * -594f)));
    return vec4<i32>(_wgslsmith_sub_i32(abs(_wgslsmith_add_i32(global0.x, ~var_2.b.x)), _wgslsmith_add_i32(abs(i32(-1i) * -9951i), -(~var_1.x))), _wgslsmith_div_i32(-31811i, arg_1.x), 36594i, _wgslsmith_mult_i32(var_2.b.x, ~(i32(-1i) * -global0.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> StorageBuffer {
    global0 = _wgslsmith_div_vec4_i32(-_wgslsmith_mult_vec4_i32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(141f, 439f, 765f, -794f) * vec4<f32>(647f, 2582f, 992f, -1146f)), vec2<i32>(-32146i, arg_1)), firstTrailingBit(vec4<i32>(44198i, u_input.b.x, global0.x, global0.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -12061i, arg_1, u_input.b.x), vec4<i32>(3310i, u_input.a, -41485i, global0.x))), vec4<i32>(arg_1, -1i, -25975i, abs(arg_1)));
    global2 = array<u32, 8>();
    let var_0 = Struct_2(Struct_1(select(vec4<u32>(9178u ^ global2[_wgslsmith_index_u32(arg_0.x, 8u)], ~arg_0.x, ~1u, ~arg_0.x), arg_0, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 0u, 4294967295u), arg_0.zxx), arg_0.xzw), 17u)]), true, vec3<u32>(~firstTrailingBit(28414u), ~0u | arg_0.x, _wgslsmith_mult_u32(3368u, 0u)), _wgslsmith_add_vec2_i32(abs(u_input.b.yx), global0.zz)), global0.xz, 60675u, _wgslsmith_f_op_f32(trunc(-287f)));
    let var_1 = firstLeadingBit(~func_3(Struct_2(Struct_1(vec4<u32>(arg_0.x, var_0.a.a.x, arg_0.x, global2[_wgslsmith_index_u32(var_0.a.a.x, 8u)]), false, vec3<u32>(var_0.a.c.x, 38361u, var_0.c), global0.yx), vec2<i32>(2147483647i, u_input.a), countOneBits(12143u), -269f), Struct_2(var_0.a, var_0.a.d, reverseBits(var_0.c), _wgslsmith_f_op_f32(abs(var_0.d))), var_0, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d, var_0.d, -1000f), vec3<f32>(-177f, -249f, var_0.d)))))));
    global1 = array<bool, 17>();
    return StorageBuffer(var_0.d, vec2<i32>(_wgslsmith_mult_i32(-var_0.a.d.x << ((86140u | arg_0.x) % 32u), _wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.b.x, u_input.a), -7599i)), _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1, ~u_input.a), _wgslsmith_mult_i32(-2147483647i, var_0.a.d.x) | reverseBits(global0.x))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 36570u;
    let x = u_input.a;
    s_output = func_1(vec4<u32>(4294967295u, 4294967295u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(var_0, 8u)] << (1u % 32u), ~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(var_0, 8u)], 16249u, var_0)), (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0, 8u)], 8u)] << (1u % 32u)) | _wgslsmith_clamp_u32(0u, 1u, var_0)), -5837i);
}

