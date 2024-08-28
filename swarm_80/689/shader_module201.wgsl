struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 32023u;

var<private> global1: vec4<i32> = vec4<i32>(-59630i, i32(-2147483648), 30537i, i32(-2147483648));

var<private> global2: array<i32, 3>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_3(abs(global1.x) >= _wgslsmith_dot_vec4_i32(~arg_0.a, firstLeadingBit(arg_0.a)));
    global1 = _wgslsmith_sub_vec4_i32(abs(vec4<i32>(firstLeadingBit(0i), -2147483647i, -2147483647i, abs(~arg_0.a.x))), ~countOneBits(firstTrailingBit(arg_2.a)));
    let var_1 = global2[_wgslsmith_index_u32(arg_2.b, 3u)];
    let var_2 = Struct_1(vec3<u32>(0u, arg_0.e, ~(~1u)));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1182f) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-981f, 105f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-976f - 2143f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 107f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-571f)))) - -1000f));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> f32 {
    global2 = array<i32, 3>();
    var var_0 = ~reverseBits(firstTrailingBit(arg_1.e));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-1374f - arg_0))));
    var_1 = -242f;
    let var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(abs(vec4<u32>(0u, u_input.c.x, 9159u, arg_1.d) << (vec4<u32>(71425u, 0u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)))), vec4<u32>(~u_input.c.x & u_input.c.x, arg_1.b, u_input.c.x, (u_input.c.x >> (arg_1.b % 32u)) << (arg_1.c.x % 32u)), vec4<u32>(63013u, 0u << (u_input.c.x % 32u), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 21598u)), ~(vec4<u32>(1u >> (arg_1.b % 32u), arg_1.c.x, abs(u_input.c.x), ~7920u) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, arg_1.b, 1u, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 31360u, arg_1.d) << (vec4<u32>(u_input.c.x, 10235u, 18494u, u_input.c.x) % vec4<u32>(32u)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1699f);
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = vec4<i32>(min(2147483647i, 16580i), -u_input.a.x, 2147483647i, -reverseBits(countOneBits(i32(-1i) * -63265i)));
    global1 = vec4<i32>(global1.x, global2[_wgslsmith_index_u32(u_input.c.x, 3u)] << ((59194u | _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 47971u, u_input.c.x, u_input.c.x), firstLeadingBit(vec4<u32>(33034u, u_input.c.x, u_input.c.x, u_input.c.x)))) % 32u), 1873i, u_input.b << (~22992u % 32u));
    let var_0 = Struct_3(true);
    var var_1 = u_input.c.x;
    var var_2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f) * _wgslsmith_f_op_f32(func_3(Struct_2(vec4<i32>(u_input.a.x, -1i, global1.x, 38369i), 65314u, u_input.c, u_input.c.x, 1u), !arg_0, Struct_2(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], -33013i, 20115i, 2147483647i), 58156u, vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.x, u_input.c.x))))), Struct_2(-abs(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], -2238i, -56707i, -2147483647i)), 69797u, abs(u_input.c), _wgslsmith_add_u32(u_input.c.x, u_input.c.x), u_input.c.x)));
    return Struct_1(_wgslsmith_div_vec3_u32((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) | firstTrailingBit(vec3<u32>(u_input.c.x, 56897u, u_input.c.x))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(22272u, 1u, 53085u), firstLeadingBit(vec3<u32>(u_input.c.x, u_input.c.x, 51008u))) % vec3<u32>(32u)), vec3<u32>(1u, 26876u, 0u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> Struct_2 {
    let var_0 = reverseBits((u_input.c ^ u_input.c) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, arg_0.a.x, arg_0.a.x)), ~(~vec2<u32>(arg_0.a.x, arg_0.a.x))));
    let var_1 = arg_0;
    let var_2 = Struct_3(arg_3);
    let var_3 = vec4<i32>(2147483647i, u_input.a.x, min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(var_1.a.x, 14947u)), select(~arg_0.a.zy, ~vec2<u32>(var_0.x, arg_1.x), !vec2<bool>(true, arg_3))), 3u)], _wgslsmith_div_i32(12381i, ~_wgslsmith_add_i32(arg_2, 1i))), u_input.a.x);
    let var_4 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, ~9428u, max(arg_1.x, 36016u)) << (vec3<u32>(countOneBits(0u), var_0.x, ~47075u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(firstLeadingBit(arg_0.a), vec3<u32>(_wgslsmith_add_u32(38374u, var_1.a.x), 0u | arg_0.a.x, _wgslsmith_add_u32(arg_1.x, 4294967295u)))));
    return Struct_2(var_3 >> (vec4<u32>(_wgslsmith_sub_u32(var_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, arg_0.a.x, var_0.x), vec4<u32>(14310u, 4294967295u, 55473u, var_1.a.x))), var_0.x, 4294967295u, select(min(var_0.x, 0u), max(42257u, 21980u), any(vec2<bool>(arg_3, var_2.a)))) % vec4<u32>(32u)), 18659u, reverseBits(_wgslsmith_add_vec2_u32(select(var_1.a.yz & arg_0.a.zx, ~u_input.c, true), min(func_2(arg_3).a.yz, arg_0.a.xz))), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_1.x, abs(firstLeadingBit(0u))), 47027u), _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(u_input.c.x, 7986u, 0u, 18259u), vec4<u32>(42853u, var_1.a.x, 1u, arg_1.x)), ~vec4<u32>(4294967295u, 123588u, 0u, 1u), vec4<u32>(var_4.a.x, 74562u, 47231u, arg_1.x)), vec4<u32>(_wgslsmith_div_u32(arg_0.a.x, u_input.c.x), 6094u, arg_0.a.x, 45164u) << (vec4<u32>(4294967295u, u_input.c.x, arg_1.x, countOneBits(var_0.x)) % vec4<u32>(32u))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<i32>) -> Struct_2 {
    global2 = array<i32, 3>();
    global2 = array<i32, 3>();
    global0 = arg_1.d;
    let var_0 = Struct_3(any(select(vec2<bool>(false, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))));
    global0 = abs(4294967295u);
    return func_5(func_2(true), abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, ~u_input.c.x, 6957u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, arg_1.b, arg_0.b) >> (vec3<u32>(u_input.c.x, 60233u, 0u) % vec3<u32>(32u)), ~vec3<u32>(arg_0.c.x, u_input.c.x, arg_0.c.x)))), ~arg_1.a.x, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = func_6(arg_2, func_5(func_2(true), ~(_wgslsmith_mod_vec3_u32(arg_3.a, arg_3.a) ^ select(arg_3.a, vec3<u32>(49517u, 0u, 0u), vec3<bool>(true, true, true))), min(global2[_wgslsmith_index_u32(u_input.c.x, 3u)], global1.x >> (~arg_0.x % 32u)), true), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global1.x, 87671i, global1.x), reverseBits(vec4<i32>(2315i, 1i, global1.x, 2147483647i))), -2147483647i >> (arg_2.e % 32u), reverseBits(~global1.x)), vec4<i32>(_wgslsmith_sub_i32(arg_2.a.x, global2[_wgslsmith_index_u32(1u, 3u)]) ^ _wgslsmith_add_i32(-2147483647i, u_input.b), arg_2.a.x, ~_wgslsmith_add_i32(-73777i, arg_2.a.x), ~(-2147483647i | u_input.a.x))), arg_2.a);
    return false;
}

fn func_7(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    let var_3 = Struct_3(arg_0.x);
    var var_4 = func_6(func_6(Struct_2(abs(vec4<i32>(global1.x, 2147483647i, global2[_wgslsmith_index_u32(18626u, 3u)], 17845i)), 4294967295u, u_input.c, _wgslsmith_div_u32(u_input.c.x, 1u) ^ (u_input.c.x << (33958u % 32u)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 34617u), vec4<u32>(5894u, 41894u, u_input.c.x, 1u)), firstTrailingBit(vec4<u32>(0u, u_input.c.x, 4294967295u, 1u)))), func_6(Struct_2(func_6(Struct_2(vec4<i32>(17488i, global1.x, -1i, global2[_wgslsmith_index_u32(11209u, 3u)]), u_input.c.x, vec2<u32>(4294967295u, 1u), 75400u, u_input.c.x), Struct_2(vec4<i32>(1i, global1.x, global1.x, 0i), 0u, vec2<u32>(u_input.c.x, 1u), u_input.c.x, u_input.c.x), vec4<i32>(-20138i, 2147483647i, global1.x, -49844i), vec4<i32>(-1i, u_input.b, u_input.a.x, 0i)).a, 46594u, u_input.c, ~u_input.c.x, 1u), Struct_2(vec4<i32>(-12675i, global1.x, global1.x, u_input.b) | vec4<i32>(global1.x, -13096i, 0i, u_input.a.x), u_input.c.x, u_input.c, ~u_input.c.x, ~17309u), vec4<i32>(_wgslsmith_add_i32(0i, global2[_wgslsmith_index_u32(1u, 3u)]), -53585i, _wgslsmith_mod_i32(-1i, 27139i), ~37588i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, -1i)), vec4<i32>(-25582i, func_6(Struct_2(vec4<i32>(-2147483647i, u_input.b, u_input.a.x, global1.x), u_input.c.x, vec2<u32>(u_input.c.x, 28222u), u_input.c.x, u_input.c.x), func_5(Struct_1(vec3<u32>(0u, u_input.c.x, u_input.c.x)), vec3<u32>(4294967295u, u_input.c.x, 10576u), -17097i, var_3.a), max(vec4<i32>(14677i, 2147483647i, global2[_wgslsmith_index_u32(u_input.c.x, 3u)], global1.x), vec4<i32>(u_input.a.x, 13775i, u_input.a.x, 2147483647i)), vec4<i32>(2147483647i, global1.x, global1.x, -2147483647i) & vec4<i32>(global2[_wgslsmith_index_u32(0u, 3u)], -2147483647i, global2[_wgslsmith_index_u32(89512u, 3u)], u_input.a.x)).a.x, ~u_input.b, reverseBits(global2[_wgslsmith_index_u32(u_input.c.x, 3u)]) | global2[_wgslsmith_index_u32(1u, 3u)]), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, global1.x, -1i, 2147483647i), vec4<i32>(-9055i, global1.x, global2[_wgslsmith_index_u32(4294967295u, 3u)], 62117i)), _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, global2[_wgslsmith_index_u32(52241u, 3u)], global2[_wgslsmith_index_u32(110129u, 3u)], global2[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec4<i32>(global2[_wgslsmith_index_u32(51686u, 3u)], -38992i, -2147483647i, global2[_wgslsmith_index_u32(4294967295u, 3u)]))), 9715i, global1.x, -1i)), func_6(Struct_2(vec4<i32>(min(24075i, 39840i), -24851i, abs(global1.x), -global1.x), firstTrailingBit(4294967295u), u_input.c, u_input.c.x, u_input.c.x), Struct_2(func_5(func_2(true), _wgslsmith_sub_vec3_u32(vec3<u32>(17464u, u_input.c.x, 50768u), vec3<u32>(41662u, u_input.c.x, u_input.c.x)), i32(-1i) * -26112i, true || var_3.a).a, u_input.c.x >> (_wgslsmith_clamp_u32(766u, 1u, 12159u) % 32u), firstLeadingBit(u_input.c), 0u, ~func_6(Struct_2(vec4<i32>(1i, -2147483647i, global1.x, global2[_wgslsmith_index_u32(u_input.c.x, 3u)]), u_input.c.x, u_input.c, u_input.c.x, u_input.c.x), Struct_2(vec4<i32>(u_input.a.x, 25634i, global1.x, 38607i), u_input.c.x, u_input.c, 1u, u_input.c.x), vec4<i32>(global2[_wgslsmith_index_u32(45604u, 3u)], -990i, global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(70952u, 3u)]), vec4<i32>(global1.x, u_input.a.x, -38704i, global2[_wgslsmith_index_u32(4294967295u, 3u)])).e), _wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, 2147483647i, -69455i, global2[_wgslsmith_index_u32(39132u, 3u)]), vec4<i32>(0i, global1.x, global2[_wgslsmith_index_u32(u_input.c.x, 3u)], 0i), vec4<i32>(u_input.b, u_input.a.x, 11958i, u_input.a.x)), max(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, global2[_wgslsmith_index_u32(1u, 3u)], global1.x, 1i), vec4<i32>(0i, 1i, global2[_wgslsmith_index_u32(u_input.c.x, 3u)], u_input.b)), -vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(1u, 3u)], 2147483647i, 0i))), reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, 0i, 0i, global1.x), vec4<i32>(0i, global1.x, -1i, -1i)), vec4<i32>(1i, global1.x, global2[_wgslsmith_index_u32(u_input.c.x, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)]) >> (vec4<u32>(u_input.c.x, 35059u, 1u, 1u) % vec4<u32>(32u))))), func_6(Struct_2(~(vec4<i32>(-3326i, u_input.b, 0i, -14148i) | vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 3u)], -1i, -21276i, 2147483647i)), u_input.c.x, u_input.c, u_input.c.x, ~(~4294967295u)), Struct_2(~vec4<i32>(2147483647i, 1i, global2[_wgslsmith_index_u32(1u, 3u)], 2147483647i) << (vec4<u32>(u_input.c.x, 36205u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), min(~u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, 9148u)), vec2<u32>(47352u, 0u >> (u_input.c.x % 32u)), max(~u_input.c.x, u_input.c.x & 8334u), _wgslsmith_mult_u32(23472u, 49481u)), ~(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, global2[_wgslsmith_index_u32(6682u, 3u)], u_input.a.x), vec4<i32>(1i, -1i, global1.x, 21941i)) & ~vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 3u)], global1.x, u_input.b, 36395i)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], -49381i, u_input.a.x, -2147483647i), ~vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 3u)], -8701i, global2[_wgslsmith_index_u32(18703u, 3u)], u_input.b)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, 2147483647i, global1.x, -20873i), ~vec4<i32>(u_input.b, 0i, -19391i, 12312i)))).a, vec4<i32>(2147483647i, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -93844i, global1.x, u_input.a.x), vec4<i32>(u_input.a.x, global1.x, global1.x, 36057i)) | _wgslsmith_sub_i32(11473i, global2[_wgslsmith_index_u32(u_input.c.x, 3u)])), 1i, ~global2[_wgslsmith_index_u32(1u, 3u)] | 2147483647i));
    return Struct_2(-var_4.a, func_6(Struct_2(vec4<i32>(2147483647i, i32(-1i) * -1i, 20612i, _wgslsmith_add_i32(var_4.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 3u)])), var_4.b, vec2<u32>(~1u, 4294967295u), 1u ^ _wgslsmith_add_u32(var_4.d, var_4.c.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_4.b, u_input.c.x), var_4.c)), Struct_2(_wgslsmith_add_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(69939u, 3u)], 11311i, u_input.a.x, 32896i), var_4.a), 54196u, var_4.c, min(func_2(true).a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 22316u, var_4.e), vec4<u32>(4294967295u, 58965u, 4294967295u, var_4.e))), ~1u), abs(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(var_4.b, 3u)], 30431i, var_4.a.x) >> (~vec4<u32>(4294967295u, u_input.c.x, 61626u, var_4.e) % vec4<u32>(32u))), min(var_4.a, var_4.a)).b, _wgslsmith_sub_vec2_u32(vec2<u32>(16922u, var_4.b), ~min(countOneBits(vec2<u32>(var_4.c.x, 121401u)), vec2<u32>(var_4.b, 25280u))), u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~(var_4.b ^ 77543u), u_input.c.x, 0u), ~abs(abs(vec3<u32>(21812u, u_input.c.x, var_4.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(select(vec4<bool>(false, true, func_1(u_input.c, 114f, Struct_2(vec4<i32>(-2147483647i, u_input.b, -41866i, -4623i), 32410u, u_input.c, 4294967295u, u_input.c.x), Struct_1(vec3<u32>(0u, 21765u, 0u))) || true, _wgslsmith_f_op_f32(trunc(121f)) < -732f), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, false, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1333f, _wgslsmith_f_op_f32(floor(1573f))), var_0.c);
}

