struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<f32, 6> = array<f32, 6>(-1520f, -757f, -798f, -1285f, 709f, -821f);

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> vec3<u32> {
    var var_0 = -1i;
    global2 = array<f32, 6>();
    let var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(arg_0.a, -13772i, -30135i), max(arg_2, -28127i), _wgslsmith_div_i32(10400i, 2147483647i)), ~firstLeadingBit(vec3<i32>(19485i, 0i, arg_2))), vec3<i32>(-2147483647i, arg_0.a, arg_2));
    let var_2 = !select(arg_0.b, select(vec2<bool>(true, arg_1.x >= -1000f), !vec2<bool>(false, global0.x), any(vec4<bool>(false, false, arg_0.b.x, false))), vec2<bool>(false, all(select(vec3<bool>(false, global0.x, arg_0.b.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(arg_0.b.x, global0.x, arg_0.b.x)))));
    let var_3 = Struct_2((~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, -10461i, 2147483647i), vec3<i32>(-19276i, var_1, 1i)) | arg_2) == (~abs(arg_0.a) & _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1, 49721i), vec2<i32>(arg_0.a, arg_2))), global1[_wgslsmith_index_u32(~u_input.a, 30u)], Struct_1(~29072i, select(vec2<bool>(true, true), vec2<bool>(var_2.x && true, true), !arg_0.b), _wgslsmith_add_vec3_u32(arg_0.c, u_input.b | (u_input.b << (vec3<u32>(arg_0.c.x, u_input.a, arg_0.c.x) % vec3<u32>(32u))))), global1[_wgslsmith_index_u32(~0u, 30u)], global1[_wgslsmith_index_u32(37767u, 30u)]);
    return ~vec3<u32>(~1u, ~arg_0.c.x & ~var_3.d.c.x, arg_0.c.x) ^ select(firstTrailingBit(~vec3<u32>(21394u, var_3.d.c.x, 4294967295u)), arg_0.c | vec3<u32>(firstLeadingBit(arg_0.c.x), ~106u, select(4294967295u, 1u, var_3.e.b.x)), all(!vec4<bool>(false, global0.x, var_3.c.b.x, false)) || select(u_input.b.x < u_input.a, var_3.d.b.x, true));
}

fn func_2() -> bool {
    global1 = array<Struct_1, 30>();
    let var_0 = reverseBits(~(select(~vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(0u, u_input.b.x), vec2<bool>(true, global0.x)) | vec2<u32>(u_input.b.x >> (4294967295u % 32u), 4294967295u)));
    global2 = array<f32, 6>();
    var var_1 = Struct_2(true, Struct_1(_wgslsmith_mod_i32(-1i, min(_wgslsmith_clamp_i32(1i, 2147483647i, 53566i), i32(-1i) * -3778i)), vec2<bool>(global0.x, (u_input.a == u_input.a) || global0.x), ~(~(~vec3<u32>(var_0.x, 103486u, 0u)))), Struct_1(-1i, !select(vec2<bool>(true, true), !vec2<bool>(global0.x, global0.x), true), ~(~(vec3<u32>(u_input.b.x, 25177u, 10001u) | vec3<u32>(102977u, var_0.x, 1962u)))), global3[_wgslsmith_index_u32(~17626u, 19u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_3(global1[_wgslsmith_index_u32(~20348u, 30u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], -1000f, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(17889u, 6u)]) + vec4<f32>(-1033f, 1253f, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], -490f)), -2147483647i) ^ select(~u_input.b, vec3<u32>(0u, 0u, u_input.b.x) << (vec3<u32>(u_input.b.x, var_0.x, u_input.b.x) % vec3<u32>(32u)), vec3<bool>(true, true, true)), vec3<u32>(~4294967295u, u_input.b.x, var_0.x)), 30u)]);
    var var_2 = var_1.d.b;
    return false;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = min(-abs(_wgslsmith_div_vec4_i32(vec4<i32>(-114727i, arg_1.x, 1i, arg_1.x), vec4<i32>(arg_1.x, 0i, arg_1.x, arg_1.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_1.x, ~(-20863i), arg_1.x), -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, 5083i, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, arg_1.x, 11336i, arg_1.x)) | _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) ^ vec4<i32>(-1i, arg_1.x, -1i, arg_1.x), vec4<i32>(19395i, arg_1.x, arg_1.x, arg_1.x))));
    let var_1 = Struct_2(!(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, var_0.x, -1i), -1i) > -68047i), Struct_1(-_wgslsmith_dot_vec4_i32(~vec4<i32>(5905i, var_0.x, arg_1.x, arg_1.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, arg_1.x, 10161i), var_0, vec4<i32>(var_0.x, var_0.x, var_0.x, 0i))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, global0.x), true), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, true))), select(select(vec2<bool>(global0.x, false), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)), select(vec2<bool>(false, global0.x), vec2<bool>(true, false), global0.x), true), global0.x), vec3<u32>(_wgslsmith_div_u32(37540u, countOneBits(42949u)), firstTrailingBit(max(4294967295u, u_input.a)), u_input.a)), global1[_wgslsmith_index_u32(~(~(~1u & ~u_input.a)), 30u)], Struct_1(-165i, !select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), vec2<bool>(true, false)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(global0.x, true), true), vec2<bool>(true, arg_0)), ~select(vec3<u32>(0u, 4294967295u, 4294967295u), countOneBits(vec3<u32>(9458u, 61392u, u_input.a)), vec3<bool>(false, global0.x, true))), Struct_1(abs(arg_1.x), vec2<bool>(global0.x, arg_0), u_input.b));
    global2 = array<f32, 6>();
    let var_2 = Struct_1(~(-48057i), !select(select(vec2<bool>(global0.x, false), vec2<bool>(false, false), select(var_1.e.b, var_1.e.b, false)), vec2<bool>(any(vec2<bool>(true, var_1.c.b.x)), arg_0), select(var_1.e.b, vec2<bool>(false, true), var_1.e.b)), vec3<u32>(15552u, 139451u, min(var_1.c.c.x, var_1.c.c.x)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-495f, 1850f, global2[_wgslsmith_index_u32(63267u, 6u)], 909f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1818f, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], arg_2.x, arg_2.x) + vec4<f32>(arg_2.x, -298f, 505f, -883f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, global2[_wgslsmith_index_u32(0u, 6u)], arg_2.x, -1228f) * vec4<f32>(global2[_wgslsmith_index_u32(0u, 6u)], arg_2.x, -736f, arg_2.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2[_wgslsmith_index_u32(16381u, 6u)], arg_2.x, arg_2.x, global2[_wgslsmith_index_u32(44381u, 6u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1856f, -684f, global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1225f, -197f, arg_2.x, arg_2.x), vec4<f32>(-1648f, arg_2.x, 681f, global2[_wgslsmith_index_u32(var_2.c.x, 6u)]), global0.x)), vec4<f32>(arg_2.x, global2[_wgslsmith_index_u32(var_1.b.c.x, 6u)], arg_2.x, global2[_wgslsmith_index_u32(var_1.e.c.x, 6u)]))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_div_f32(-822f, 1048f), _wgslsmith_f_op_f32(-295f + 2117f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, 819f, -1196f, global2[_wgslsmith_index_u32(24923u, 6u)]))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2[_wgslsmith_index_u32(var_2.c.x, 6u)], 367f, -1142f, arg_2.x)))))));
    return Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(var_0.x, 1i, arg_1.x), _wgslsmith_mult_i32(var_2.a, var_1.d.a), var_0.x, max(var_2.a, -36798i)), var_0), var_2.b, vec3<u32>(~1u, 42671u, 8411u));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    let var_0 = Struct_2(true, func_4(func_2(), -(-vec3<i32>(arg_1.a, arg_1.a, arg_1.a) & vec3<i32>(arg_1.a, -1i, -2147483647i)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1390f, 840f) - vec2<f32>(1000f, -931f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1789f, 1104f))))))), global3[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, _wgslsmith_sub_u32(414u, arg_2), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_2, 37986u), vec4<u32>(arg_0.x, arg_2, 13756u, 28618u)), 87422u), ~min(vec4<u32>(40064u, 1u, arg_1.c.x, arg_2), vec4<u32>(arg_1.c.x, arg_0.x, arg_0.x, 61025u))), arg_2), 19u)], Struct_1(func_4(!arg_3.x, -vec3<i32>(arg_1.a, arg_1.a, -18139i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], 1026f) + vec2<f32>(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(arg_1.c.x, 6u)])))).a, vec2<bool>(any(vec3<bool>(global0.x, true, true)), all(vec4<bool>(global0.x, global0.x, false, arg_3.x))), max(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(39230u, 106406u, 1u), arg_1.c), min(vec3<u32>(25677u, 4294967295u, 14119u), vec3<u32>(65723u, arg_1.c.x, arg_2))), firstLeadingBit(vec3<u32>(4294967295u, arg_1.c.x, 46424u)))), global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.x), 30u)]);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(345f, global2[_wgslsmith_index_u32(~39945u, 6u)]) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 897f)))) + global2[_wgslsmith_index_u32(4294967295u, 6u)]);
    var var_2 = var_0;
    var var_3 = !(!vec2<bool>(!(-2147483647i == var_2.b.a), all(vec2<bool>(var_2.c.b.x, false))));
    global0 = var_2.d.b;
    return reverseBits(17671i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(23617i, -func_1(~vec2<u32>(u_input.b.x, 36711u), Struct_1(48257i, vec2<bool>(true, true), u_input.b), ~u_input.b.x, vec3<bool>(true, true, global0.x)), func_4((u_input.b.x | 0u) < min(0u, u_input.a), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-35558i, -43083i, 2147483647i), ~vec3<i32>(18491i, -2147483647i, -59345i), vec3<i32>(1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-754f, 624f) + vec2<f32>(1378f, -1000f))).a, 1i), global2[_wgslsmith_index_u32(u_input.a | 40193u, 6u)], 43788i, -vec2<i32>(~_wgslsmith_sub_i32(2147483647i, 77659i), ~(1i >> (u_input.b.x % 32u))));
}

