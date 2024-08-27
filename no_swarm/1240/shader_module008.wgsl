struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(true, true, true, false, true, false, false, false, false, false, false, false, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, false);

var<private> global1: array<Struct_2, 9>;

var<private> global2: bool = true;

var<private> global3: array<bool, 31>;

var<private> global4: array<i32, 13>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    global4 = array<i32, 13>();
    var var_0 = select(~_wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(u_input.c.x, 13u)], arg_0.b, 1i, arg_0.a.x), arg_0.a, vec4<i32>(u_input.a, global4[_wgslsmith_index_u32(u_input.b, 13u)], arg_0.a.x, -53680i))), ~vec4<i32>(-10073i, arg_0.a.x, arg_0.a.x, -21587i)), select(vec4<i32>(1i << (u_input.c.x % 32u), ~u_input.a, -2147483647i, max(2147483647i, i32(-1i) * -2147483647i)), ~(-firstTrailingBit(vec4<i32>(-33787i, 0i, arg_0.c.x, -1i))), vec4<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], false), global0[_wgslsmith_index_u32(u_input.c.x, 29u)])), global3[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(~u_input.b, 29u)] || global3[_wgslsmith_index_u32(u_input.b, 31u)])), true);
    var var_1 = 0i;
    return vec4<u32>(_wgslsmith_dot_vec3_u32(~(u_input.c | vec3<u32>(35121u, 30891u, u_input.c.x)) ^ u_input.c, u_input.c ^ ~(~vec3<u32>(u_input.b, u_input.c.x, u_input.c.x))), u_input.c.x, 0u, u_input.b);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec4<u32> {
    global2 = true;
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-169f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(503f * 1000f)), -131f)))) < 402f;
    global2 = ((_wgslsmith_clamp_i32(-45889i, -2147483647i, i32(-1i) * -1i) & min(_wgslsmith_dot_vec4_i32(arg_1.a, arg_1.a), arg_3)) >= ~(-arg_1.b)) & arg_2;
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~(~u_input.b), 1u, u_input.c.x), u_input.c.x, _wgslsmith_mod_u32(min(~(~u_input.c.x), 18421u), firstTrailingBit(_wgslsmith_mod_u32(max(u_input.c.x, u_input.b), 67252u))));
    global0 = array<bool, 29>();
    return _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(func_3(Struct_1(arg_1.a, arg_1.a.x, arg_1.a.yyw), 381f), ~vec4<u32>(~u_input.b, 4294967295u, u_input.b, u_input.c.x)), select(firstLeadingBit(_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, u_input.c.x, 5635u, u_input.b), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.b), true), vec4<u32>(u_input.c.x, u_input.b, 4294967295u, 0u) << (vec4<u32>(47639u, 51072u, 21739u, 19555u) % vec4<u32>(32u)))), ~vec4<u32>(~58698u, ~u_input.b, 1u, u_input.b), any(vec2<bool>(global0[_wgslsmith_index_u32(12790u, 29u)], false))));
}

fn func_1(arg_0: vec4<bool>) -> vec4<u32> {
    let var_0 = ~_wgslsmith_dot_vec2_i32(select(-vec2<i32>(u_input.a, 49016i), vec2<i32>(global4[_wgslsmith_index_u32(0u, 13u)], u_input.a), true), vec2<i32>(global4[_wgslsmith_index_u32(7802u, 13u)] ^ u_input.a, countOneBits(-1i))) & _wgslsmith_add_i32(firstLeadingBit(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u ^ u_input.c.x, select(4294967295u, u_input.b, false)), 13u)]), min(_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(u_input.b, 13u)], -1i), 1i));
    let var_1 = arg_0;
    return select(vec4<u32>(_wgslsmith_dot_vec4_u32(func_2(var_1.x, Struct_1(vec4<i32>(-19546i, global4[_wgslsmith_index_u32(27154u, 13u)], 2147483647i, u_input.a), -1i, vec3<i32>(var_0, -1i, var_0)), global0[_wgslsmith_index_u32(0u, 29u)], u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 1037u, 47900u, 34681u), vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.b))), u_input.b, 1u, 20501u), max(~vec4<u32>(u_input.c.x, 4294967295u, u_input.b, u_input.c.x) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 92947u, u_input.b, 77116u), vec4<u32>(u_input.b, 1u, 1u, 14818u)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(1u, u_input.c.x, u_input.b, 1u)), vec4<u32>(37637u, 57557u, 19258u, u_input.c.x))), true) | vec4<u32>(u_input.b, ~1u, u_input.b, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 31u)], true, global0[_wgslsmith_index_u32(1u, 29u)]), !vec4<bool>(true, true, global3[_wgslsmith_index_u32(53464u, 31u)], false), true), true)) & firstLeadingBit(max(vec4<u32>(1u ^ u_input.b, _wgslsmith_div_u32(4294967295u, u_input.c.x), u_input.c.x >> (13471u % 32u), ~u_input.b), vec4<u32>(8597u, 4294967295u, 0u, ~28038u)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1163f)) * _wgslsmith_f_op_f32(min(802f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(340f * 128f)))))), global1[_wgslsmith_index_u32(u_input.c.x, 9u)], Struct_1(firstTrailingBit(vec4<i32>(-44524i, u_input.a, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, global4[_wgslsmith_index_u32(1u, 13u)]), vec3<i32>(global4[_wgslsmith_index_u32(17265u, 13u)], -1i, global4[_wgslsmith_index_u32(var_0.x, 13u)])))), _wgslsmith_add_i32(min(u_input.a, ~0i), u_input.a), _wgslsmith_div_vec3_i32(min(max(vec3<i32>(u_input.a, 2147483647i, -2147483647i), vec3<i32>(u_input.a, -29103i, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, global4[_wgslsmith_index_u32(4294967295u, 13u)], 17854i), vec3<i32>(u_input.a, u_input.a, global4[_wgslsmith_index_u32(var_0.x, 13u)]))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, 0i, global4[_wgslsmith_index_u32(u_input.c.x, 13u)]), vec3<i32>(global4[_wgslsmith_index_u32(1u, 13u)], global4[_wgslsmith_index_u32(u_input.c.x, 13u)], u_input.a) & vec3<i32>(u_input.a, 17820i, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(var_0.x, 13u)], u_input.a, 35800i), vec3<i32>(u_input.a, u_input.a, -1i))))));
    var_1 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), global1[_wgslsmith_index_u32(80086u, 9u)], Struct_1(vec4<i32>(_wgslsmith_mult_i32(reverseBits(u_input.a), ~(-66248i)), var_1.b.b.x, 27262i, u_input.a), abs(2147483647i), var_1.b.b.yxy));
    var var_2 = var_1.c;
    let var_3 = global0[_wgslsmith_index_u32(41601u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(55975u, func_1(vec4<bool>(any(select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(0u, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 29u)], true, global3[_wgslsmith_index_u32(var_1.b.a.x, 31u)]), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 31u)], false, true))), global3[_wgslsmith_index_u32(~45186u, 31u)], u_input.a <= _wgslsmith_mult_i32(2147483647i, global4[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_mod_i32(u_input.a, 16326i) >= 40992i)).x, (vec2<i32>(min(0i, -2147483647i), var_2.b) | ~(-vec2<i32>(var_1.c.c.x, global4[_wgslsmith_index_u32(var_0.x, 13u)]))) << (var_0.zx % vec2<u32>(32u)), u_input.a, firstLeadingBit(-2147483647i));
}

