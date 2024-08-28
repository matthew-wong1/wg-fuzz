struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: i32 = -7879i;

var<private> global2: array<Struct_4, 31>;

var<private> global3: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec2<u32>(29568u, 47093u)), Struct_3(vec2<u32>(4294967295u, 1u)), Struct_3(vec2<u32>(25780u, 1u)), Struct_3(vec2<u32>(1u, 14378u)), Struct_3(vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec2<u32>(15671u, 1u)), Struct_3(vec2<u32>(1u, 35083u)), Struct_3(vec2<u32>(36960u, 68838u)), Struct_3(vec2<u32>(25022u, 1u)), Struct_3(vec2<u32>(4294967295u, 4713u)), Struct_3(vec2<u32>(22045u, 4294967295u)), Struct_3(vec2<u32>(343u, 3741u)), Struct_3(vec2<u32>(0u, 0u)), Struct_3(vec2<u32>(67735u, 121134u)), Struct_3(vec2<u32>(5970u, 71990u)), Struct_3(vec2<u32>(1u, 11626u)), Struct_3(vec2<u32>(67275u, 0u)), Struct_3(vec2<u32>(32230u, 0u)), Struct_3(vec2<u32>(35116u, 0u)), Struct_3(vec2<u32>(4093u, 0u)), Struct_3(vec2<u32>(38583u, 22405u)), Struct_3(vec2<u32>(32830u, 1u)), Struct_3(vec2<u32>(1u, 75605u)), Struct_3(vec2<u32>(0u, 27489u)), Struct_3(vec2<u32>(4294967295u, 1760u)), Struct_3(vec2<u32>(1u, 49800u)), Struct_3(vec2<u32>(1u, 4294967295u)), Struct_3(vec2<u32>(1u, 4294967295u)), Struct_3(vec2<u32>(0u, 11227u)), Struct_3(vec2<u32>(0u, 26427u)), Struct_3(vec2<u32>(4294967295u, 0u)), Struct_3(vec2<u32>(0u, 23848u)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec3<bool>, arg_3: f32) -> bool {
    global3 = array<Struct_3, 32>();
    global1 = reverseBits(~u_input.d.x);
    global3 = array<Struct_3, 32>();
    var var_0 = Struct_5(Struct_2(u_input.a.x, vec4<i32>(u_input.a.x, ~(u_input.d.x >> (0u % 32u)), -u_input.a.x, abs(u_input.d.x)), vec2<f32>(_wgslsmith_div_f32(-149f, 1000f), arg_3), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(931f, arg_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_3) - vec2<f32>(arg_1, arg_3))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1462f, arg_1) - vec2<f32>(-1000f, -1580f)))))), ~(~_wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(-18465i, -2147483647i, u_input.b.x))) ^ vec3<i32>(~(u_input.b.x & u_input.b.x), max(2147483647i, u_input.b.x), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.b.x, 0i)), vec2<i32>(-16301i, -21636i))), global3[_wgslsmith_index_u32(u_input.c, 32u)], select(u_input.b.x, -30591i, arg_2.x));
    global3 = array<Struct_3, 32>();
    return true;
}

fn func_2(arg_0: u32, arg_1: bool) -> vec2<f32> {
    global0 = !(!select(select(!vec2<bool>(arg_1, true), vec2<bool>(global0.x, true), select(vec2<bool>(global0.x, arg_1), vec2<bool>(global0.x, false), vec2<bool>(arg_1, arg_1))), !select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), vec2<bool>(global0.x, global0.x)), false));
    global0 = select(!select(select(select(vec2<bool>(global0.x, arg_1), vec2<bool>(true, false), true), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, false), vec2<bool>(true, false)), vec2<bool>(global0.x, true)), vec2<bool>(func_3(global3[_wgslsmith_index_u32(u_input.c, 32u)], -600f, vec3<bool>(global0.x, global0.x, arg_1), -864f), false), select(select(vec2<bool>(arg_1, global0.x), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x)), vec2<bool>(true, arg_1), false)), vec2<bool>(arg_1, true), vec2<bool>(global0.x, false));
    let var_0 = Struct_5(Struct_2(1i, _wgslsmith_mod_vec4_i32(min(select(vec4<i32>(u_input.a.x, u_input.b.x, u_input.d.x, 0i), vec4<i32>(u_input.d.x, -43365i, u_input.b.x, u_input.d.x), vec4<bool>(true, arg_1, true, false)), ~vec4<i32>(-41825i, -969i, u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(8664i, 14490i, u_input.a.x, 1i), vec4<i32>(-1i, u_input.b.x, u_input.a.x, u_input.b.x)), vec4<i32>(0i, u_input.d.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(arg_0, 5923u, 4294967295u, 50062u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-220f, 1138f))) - vec2<f32>(-309f, _wgslsmith_f_op_f32(step(1298f, 127f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-288f, -1984f), _wgslsmith_f_op_f32(1057f - -1000f)))), -vec3<i32>(1i, u_input.b.x, -u_input.d.x), Struct_3(vec2<u32>(_wgslsmith_div_u32(27391u, 1u), 51929u)), i32(-1i) * -countOneBits(-10978i ^ u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1061f), 1404f, _wgslsmith_f_op_f32(var_0.a.c.x * var_0.a.c.x), _wgslsmith_f_op_f32(1274f - var_0.a.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1062f, -1131f, var_0.a.c.x, 124f) * vec4<f32>(var_0.a.c.x, -1226f, var_0.a.c.x, -1249f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(682f)), _wgslsmith_f_op_f32(step(var_0.a.d.x, var_0.a.d.x)), _wgslsmith_div_f32(var_0.a.c.x, -1285f), var_0.a.c.x))))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.d.x + var_1.x)))), var_1.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_2 {
    global3 = array<Struct_3, 32>();
    return Struct_2(~u_input.d.x & -firstTrailingBit(~arg_0.x), (max(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 0i, -1i), vec4<i32>(0i, 0i, 19746i, -32145i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-18648i, 0i, u_input.b.x, arg_0.x), vec4<i32>(47844i, 0i, 22315i, u_input.a.x), vec4<i32>(arg_0.x, arg_0.x, u_input.a.x, -2147483647i))) << (max(vec4<u32>(1u, u_input.c, u_input.c, 39194u), select(vec4<u32>(4294967295u, 64214u, 66528u, 22535u), vec4<u32>(u_input.c, u_input.c, 23986u, 4294967295u), vec4<bool>(false, global0.x, false, true))) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.c), firstTrailingBit(u_input.c), u_input.c, ~u_input.c)) % vec4<u32>(32u)), arg_2.zy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zz + vec2<f32>(arg_2.x, 1000f))), arg_2.xx)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> vec4<i32> {
    let var_0 = Struct_4(-(~countOneBits(vec2<i32>(arg_0.b.x, arg_0.b.x))), global3[_wgslsmith_index_u32(~reverseBits(16865u), 32u)]);
    let var_1 = var_0;
    global2 = array<Struct_4, 31>();
    global1 = abs(abs(-1i));
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.c, 4294967295u, 4294967295u, 27401u) | max(vec4<u32>(var_0.b.a.x, 20800u, var_0.b.a.x, u_input.c), vec4<u32>(78599u, 4294967295u, 4294967295u, var_1.b.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(174u, u_input.c, 4294967295u, 4294967295u), max(vec4<u32>(1912u, 56824u, 19910u, var_1.b.a.x), vec4<u32>(u_input.c, 51599u, var_1.b.a.x, u_input.c)))), _wgslsmith_div_vec4_u32(vec4<u32>(892u, _wgslsmith_add_u32(var_0.b.a.x, var_1.b.a.x), u_input.c, 63789u), abs(vec4<u32>(24728u, var_0.b.a.x, 6117u, 0u)))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c, ~0u, 1u), ~max(vec4<u32>(u_input.c, var_1.b.a.x, 4294967295u, 0u), vec4<u32>(u_input.c, u_input.c, 64781u, var_0.b.a.x))), reverseBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(52976u, var_1.b.a.x, 112033u), vec3<u32>(u_input.c, var_1.b.a.x, u_input.c)), var_1.b.a.x, _wgslsmith_mod_u32(u_input.c, var_1.b.a.x), var_1.b.a.x | 4294967295u))), select(_wgslsmith_div_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.a.x, 34618u, 0u, var_0.b.a.x), vec4<u32>(30762u, var_1.b.a.x, 1u, 0u), vec4<u32>(var_0.b.a.x, u_input.c, 0u, u_input.c)), ~vec4<u32>(var_0.b.a.x, var_1.b.a.x, u_input.c, u_input.c), !arg_1), vec4<u32>(u_input.c, var_1.b.a.x, _wgslsmith_sub_u32(u_input.c, 13872u), 0u)), ~abs(vec4<u32>(4294967295u, var_1.b.a.x, u_input.c, u_input.c)), select(vec4<bool>(true, var_0.b.a.x < u_input.c, true, !global0.x), arg_1, _wgslsmith_f_op_f32(-643f + arg_0.d.x) < 534f)));
    return _wgslsmith_sub_vec4_i32(~(arg_0.b << (~firstLeadingBit(vec4<u32>(var_0.b.a.x, var_2.x, var_2.x, 14822u)) % vec4<u32>(32u))), vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(var_1.a, vec2<i32>(1i, var_0.a.x))), ~(7866i << (u_input.c % 32u)), _wgslsmith_mod_i32(-arg_2, -1i), -var_1.a.x ^ abs(arg_0.b.x)) << (var_2 % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_mod_i32(firstTrailingBit(1i), firstTrailingBit(i32(-1i) * -44553i));
    global3 = array<Struct_3, 32>();
    var var_1 = Struct_2(firstLeadingBit(reverseBits(_wgslsmith_dot_vec3_i32(u_input.b, u_input.a >> (vec3<u32>(u_input.c, 4294967295u, 23688u) % vec3<u32>(32u))))), func_5(func_4(firstTrailingBit(vec2<i32>(-42851i, 2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(4294967295u, true))), vec3<f32>(1f, -757f, -655f)), !(!vec4<bool>(arg_1, true, global0.x, global0.x)), -_wgslsmith_div_i32(~u_input.d.x, 21567i)), _wgslsmith_f_op_vec2_f32(func_2(u_input.c, (-1565f > _wgslsmith_f_op_f32(ceil(-488f))) & arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1961f, 1282f))))));
    var var_2 = Struct_1(abs((min(vec2<i32>(45995i, 1i), var_1.b.yw) | -var_1.b.yy) & ~(~vec2<i32>(-18730i, var_1.a))), -72832i << (~u_input.c % 32u));
    var_1 = func_4(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(27075i, u_input.b.x), vec2<i32>(27992i, 2147483647i) << (vec2<u32>(arg_0.a.x, 19309u) % vec2<u32>(32u))), ~(-20730i)) | vec2<i32>(firstLeadingBit(max(-36440i, -1i)), _wgslsmith_div_i32(func_5(Struct_2(var_0, var_1.b, var_1.c, var_1.d), vec4<bool>(true, false, arg_1, global0.x), u_input.a.x).x, 2147483647i << (u_input.c % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.d), vec2<f32>(var_1.c.x, -1244f), !vec2<bool>(false, arg_1))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, var_1.c.x, -1533f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1024f, var_1.d.x, var_1.d.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-750f, var_1.d.x, 1330f), vec3<f32>(-2132f, 730f, -1000f)), true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c.x, 525f, -554f), vec3<f32>(-146f, var_1.c.x, 548f), vec3<bool>(true, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2620f, -1000f, var_1.c.x)), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, global0.x, true)))))))));
    return firstLeadingBit(28371u);
}

fn func_6(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    global3 = array<Struct_3, 32>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1877f)))))));
    global2 = array<Struct_4, 31>();
    var var_1 = Struct_4(arg_3.a, Struct_3(arg_0.xz << (vec2<u32>(4294967295u, ~arg_0.x) % vec2<u32>(32u))));
    global2 = array<Struct_4, 31>();
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(global0.x, firstTrailingBit(u_input.a.x) <= func_6(vec4<u32>(func_1(global3[_wgslsmith_index_u32(0u, 32u)], global0.x, u_input.d.x), u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(u_input.c, u_input.c, 90636u)), u_input.c), u_input.b.x, select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), global0.x), vec2<bool>(global0.x, global0.x)), Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 63670i), u_input.d.yx), 42052i)));
    let var_0 = global3[_wgslsmith_index_u32(~u_input.c, 32u)];
    global3 = array<Struct_3, 32>();
    var var_1 = Struct_5(func_4(_wgslsmith_div_vec2_i32(vec2<i32>(func_5(Struct_2(0i, vec4<i32>(4140i, u_input.a.x, u_input.b.x, -2147483647i), vec2<f32>(968f, 1049f), vec2<f32>(-838f, -160f)), vec4<bool>(global0.x, true, false, global0.x), 2147483647i).x, u_input.a.x), u_input.d.zy), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2(u_input.c, false)))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1935f)), _wgslsmith_f_op_f32(max(-790f, -689f))), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-823f)))))), u_input.b, Struct_3(vec2<u32>(~max(u_input.c, u_input.c), u_input.c)), -1i);
    let var_2 = Struct_3(firstTrailingBit(min(abs(vec2<u32>(var_1.c.a.x, var_0.a.x) << (vec2<u32>(var_0.a.x, var_0.a.x) % vec2<u32>(32u))), vec2<u32>(abs(var_0.a.x), ~u_input.c))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(var_1.a.d, vec2<f32>(2194f, var_1.a.c.x))), vec2<f32>(var_1.a.d.x, 426f), vec2<bool>(global0.x, true))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.c) - vec2<f32>(var_1.a.c.x, _wgslsmith_f_op_f32(select(1304f, var_1.a.c.x, global0.x))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(456f * var_1.a.c.x), var_1.a.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_f_op_f32(trunc(var_1.a.d.x)), _wgslsmith_f_op_f32(min(-1982f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x))), -624f))));
}

