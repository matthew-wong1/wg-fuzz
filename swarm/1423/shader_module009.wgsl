struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-6083i, -49791i);

var<private> global1: array<bool, 25>;

var<private> global2: array<vec2<i32>, 12>;

var<private> global3: Struct_4 = Struct_4(false, vec2<i32>(1i, i32(-2147483648)), Struct_1(0i, 17726u), Struct_1(26566i, 63723u));

var<private> global4: Struct_2;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> bool {
    var var_0 = vec3<bool>(global3.a, !all(vec2<bool>(global4.c, false)), true);
    let var_1 = global4.d;
    return true;
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_i32(global3.c.a, global0.x), arg_0.a.x, all(vec2<bool>(false, false)), global3.d);
    var var_1 = arg_0;
    let var_2 = Struct_4(global3.a, ~vec2<i32>(-13099i, reverseBits(2147483647i)), global3.c, Struct_1(~var_0.d.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.c.b >> (var_0.d.b % 32u), global3.d.b, global3.d.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(4768u, global3.d.b, 4294967295u))), ~countOneBits(vec4<u32>(1u, 1u, global4.d.b, 14442u)))));
    global2 = array<vec2<i32>, 12>();
    var var_3 = false;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1495f - 578f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1404f + 524f), 1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(1858f - -465f), true))))));
}

fn func_2() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-267f, 1000f, 282f, 1489f), vec4<f32>(-428f, -1656f, -530f, 348f))))))) * vec4<f32>(-191f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1259f, -637f)), _wgslsmith_f_op_f32(abs(1f)), -468f)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -2692f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-481f, _wgslsmith_f_op_f32(func_3(Struct_3(vec3<i32>(0i, global4.d.a, 1i))))), 1f, any(vec2<bool>(false, global1[_wgslsmith_index_u32(global3.c.b, 25u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(-1975f + _wgslsmith_f_op_f32(-993f + 1276f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(857f * -428f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(1095f + -1421f)), -1814f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1061f * var_0.x), var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1466f, var_0.x)), _wgslsmith_f_op_f32(select(var_0.x, -858f, global4.c))))) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(func_3(Struct_3(vec3<i32>(-7147i, global4.d.a, -2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(abs(var_0.x))))));
    global2 = array<vec2<i32>, 12>();
    let var_1 = Struct_4(true, countOneBits(~(vec2<i32>(1835i, 4926i) << (vec2<u32>(0u, global3.d.b) % vec2<u32>(32u)))) & -vec2<i32>(~global3.c.a, -global3.c.a), Struct_1(8850i, ~1u), Struct_1(~(-select(-2147483647i, 0i, global1[_wgslsmith_index_u32(u_input.a, 25u)])), ~(_wgslsmith_div_u32(34421u, global4.d.b) << (max(1u, 33007u) % 32u))));
    let var_2 = abs(var_1.b.x & ((7802i ^ global4.a) | 3839i));
    return ~(~vec4<u32>(0u, 59251u, min(_wgslsmith_add_u32(7266u, u_input.a), var_1.c.b), ~(global3.c.b << (var_1.c.b % 32u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = abs(_wgslsmith_mult_i32(global3.b.x, (i32(-1i) * -2147483647i) | -global4.d.a) << (_wgslsmith_add_u32(firstTrailingBit(44555u), ~u_input.a) % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1)))))));
    var var_2 = arg_2.a;
    global0 = -global2[_wgslsmith_index_u32(arg_0.x, 12u)];
    var var_3 = Struct_1(~global0.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 16913u), vec3<u32>(arg_0.x, global3.c.b, global4.d.b)), u_input.a ^ u_input.a), global3.c.b, _wgslsmith_add_u32(arg_0.x, global3.c.b)), 11312u));
    return arg_0.xzz;
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = 27331i | global0.x;
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, max(_wgslsmith_add_i32(1i, 8297i), arg_1) | -global4.b), -select(-global2[_wgslsmith_index_u32(global4.d.b, 12u)], global3.b, arg_0) | ~firstTrailingBit(vec2<i32>(global0.x, global3.b.x)));
    let var_2 = _wgslsmith_div_vec4_u32(~(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, global4.d.b, 14803u, 0u), ~vec4<u32>(47713u, 29497u, global4.d.b, 3976u)) ^ ~select(vec4<u32>(1u, 0u, 19916u, u_input.a), vec4<u32>(global3.c.b, arg_2.x, 1u, 0u), false)), ~min(max(~vec4<u32>(arg_2.x, 66008u, 52581u, 48984u), _wgslsmith_div_vec4_u32(vec4<u32>(global3.d.b, 0u, 0u, global3.d.b), vec4<u32>(2586u, 4294967295u, global3.d.b, 45116u))), ~select(vec4<u32>(0u, 0u, global3.d.b, 8384u), vec4<u32>(global4.d.b, 6561u, 4294967295u, 1u), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], arg_0.x, global1[_wgslsmith_index_u32(global3.d.b, 25u)], false))));
    let var_3 = ~min(vec3<i32>(17714i, -63094i, ~(-13624i)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(7462u, global3.d.b, 4294967295u), vec3<u32>(global4.d.b, 4294967295u, global4.d.b)) % vec3<u32>(32u)), vec3<i32>(~(-912i), select(global3.d.a, 0i, true), -15943i) >> (func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 76497u, global3.d.b), vec4<u32>(12429u, arg_2.x, global4.d.b, 1u)), _wgslsmith_f_op_f32(f32(-1f) * -677f), Struct_2(global0.x, global3.b.x, true, Struct_1(0i, arg_2.x))) % vec3<u32>(32u)));
    global4 = Struct_2(~25470i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_3, min(vec3<i32>(-1i, global4.d.a, global0.x), vec3<i32>(arg_1, 25500i, var_3.x)), var_3) << (select(~vec3<u32>(arg_2.x, 67261u, 0u), firstTrailingBit(var_2.zyx), vec3<bool>(global1[_wgslsmith_index_u32(global4.d.b, 25u)], arg_0.x, global1[_wgslsmith_index_u32(0u, 25u)])) % vec3<u32>(32u)), var_3), any(select(!vec4<bool>(false, arg_0.x, global3.a, false), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(46246u, 25u)]), !vec4<bool>(false, true, false, arg_0.x))), global3.c);
    return Struct_2(reverseBits(-1i), i32(-1i) * -(global0.x ^ (0i | global4.d.a)), arg_0.x != global3.a, global3.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(!(!select(vec2<bool>(false, false), vec2<bool>(false, global3.a), vec2<bool>(global1[_wgslsmith_index_u32(25557u, 25u)], false))), !vec2<bool>(true, all(vec3<bool>(global3.a, global3.a, true))), select(vec2<bool>(any(vec2<bool>(global3.a, global4.c)), u_input.a > 1u), vec2<bool>(func_1(global3.c, Struct_3(vec3<i32>(-13306i, 2147483647i, -10955i)), 22371u, global4.b), global4.c), !(!vec2<bool>(global4.c, false)))), max(global3.c.a, -9987i), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(global3.d.b, u_input.a, 1u), vec3<u32>(32623u, u_input.a, u_input.a), global3.a), vec3<u32>(global3.d.b, 4294967295u, 4294967295u) ^ vec3<u32>(global4.d.b, 4294967295u, global4.d.b)), u_input.a, u_input.a | ~68732u), vec3<u32>(_wgslsmith_sub_u32(1u, global3.d.b | u_input.a), reverseBits(~4294967295u), global4.d.b), func_4(~func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1067f))), Struct_2(-2147483647i, 1i, true, global4.d))));
    var var_1 = func_5(select(vec2<bool>(global1[_wgslsmith_index_u32(global4.d.b, 25u)], all(!vec3<bool>(true, false, global3.a))), !select(select(vec2<bool>(global3.a, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), !vec2<bool>(global3.a, true)), var_0.c), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-15888i, var_0.d.a, global0.x, global4.a), vec4<i32>(-2147483647i, 2147483647i, 23143i, -13230i)), vec4<i32>(global3.c.a, 16581i, -4610i, -4477i) ^ vec4<i32>(global3.b.x, global3.c.a, 37797i, global4.d.a)), ~global0.x | 0i), global2[_wgslsmith_index_u32(~(~43512u) | global3.c.b, 12u)]), firstTrailingBit(vec3<u32>(global4.d.b, abs(global4.d.b), firstTrailingBit(var_0.d.b)))).d;
    let var_2 = 1051f;
    global1 = array<bool, 25>();
    var_1 = Struct_1(~_wgslsmith_sub_i32(var_0.d.a, var_1.a >> (var_1.b % 32u)) >> (countOneBits(~(global4.d.b | 10603u)) % 32u), ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(44990u, u_input.a), vec2<u32>(131653u, u_input.a)) | 1u, 1090u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(~max(vec4<u32>(global3.d.b, global4.d.b, 58442u, 0u), vec4<u32>(13453u, var_1.b, var_1.b, 54648u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, global3.c.b, 31011u, var_0.d.b), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global4.d.b, 1u, 4294967295u), vec4<u32>(4294967295u, global4.d.b, 4294967295u, 4489u))), global3.a)), 1u, vec2<u32>(~4294967295u, ~(4294967295u << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.b, var_1.b), vec2<u32>(1u, 26710u)) % 32u))));
}

