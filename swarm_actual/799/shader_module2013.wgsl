struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_4,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(1i, -21348i, -1i, i32(-2147483648), 0i, 2147483647i, 36117i, 6954i, -5828i, i32(-2147483648), 1i);

var<private> global1: array<f32, 2>;

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, 26952i);

var<private> global3: array<Struct_1, 22>;

var<private> global4: Struct_3;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = firstLeadingBit(~arg_0.x);
    let var_1 = ~select(arg_0.yx, ~arg_0.xy, true);
    global4 = Struct_3(~_wgslsmith_mod_vec2_u32((u_input.c.zx >> (vec2<u32>(arg_2, 16619u) % vec2<u32>(32u))) >> (global4.a % vec2<u32>(32u)), countOneBits(u_input.b.xz)));
    let var_2 = u_input.a;
    global1 = array<f32, 2>();
    return global2.x;
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = 2147483647i | -(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.e, 11u)], 2147483647i, -15649i), u_input.a), ~vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global2.x)));
    let var_1 = ~_wgslsmith_mult_i32(countOneBits(reverseBits(var_0)) | u_input.a.x, -1i);
    global2 = vec2<i32>(_wgslsmith_div_i32(-1i, (i32(-1i) * -17140i) ^ ~(~global2.x)), ~var_1 ^ ~global2.x);
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.zx), func_3(vec4<u32>(arg_0, global4.a.x, 17135u, u_input.c.x) | abs(u_input.c), global3[_wgslsmith_index_u32(~(global4.a.x ^ 1u), 22u)], ~_wgslsmith_mult_u32(arg_0, u_input.c.x)), global2.x), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(1i ^ u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(6950i, -31099i))), 26404i, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, global2.x, var_1, 1i), vec4<i32>(var_1, -2147483647i, u_input.a.x, var_0)))), u_input.a));
    var var_3 = !vec2<bool>(!(!all(vec2<bool>(false, false))), true);
    return Struct_2(arg_0, 645f, Struct_1(~u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(global4.a.x, 2u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global4.a.x, 2u)] - -318f), _wgslsmith_f_op_f32(399f + -793f))), u_input.c.zzw, -10887i), global1[_wgslsmith_index_u32(u_input.c.x, 2u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(global4.a.x, _wgslsmith_div_u32(29390u, _wgslsmith_sub_u32(4294967295u, 0u))), 37861u), 2u)]);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_5(Struct_2(~abs(15069u << (global4.a.x % 32u)), 1374f, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(f32(-1f) * -582f)) + _wgslsmith_div_f32(arg_2.b.x, 268f))), firstLeadingBit(~(-vec4<i32>(global2.x, -10924i, -1i, u_input.a.x))) ^ ~(~vec4<i32>(global0[_wgslsmith_index_u32(arg_0.a.x, 11u)], 1i, -1i, -2147483647i) | (vec4<i32>(22518i, 1i, u_input.a.x, -1i) ^ vec4<i32>(1i, -2147483647i, 15247i, u_input.a.x))), Struct_4(func_2(_wgslsmith_sub_u32(4294967295u, global4.a.x) & (u_input.d & u_input.c.x)), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.d, 2u)])) * _wgslsmith_f_op_f32(-162f * arg_2.b.x))), 912f, _wgslsmith_f_op_f32(abs(-901f)));
    global4 = Struct_3(~vec2<u32>(_wgslsmith_clamp_u32(var_0.c.a.a, 0u, 30593u), _wgslsmith_add_u32(1u, 1u)) | var_0.c.a.c.c.xz);
    var_0 = Struct_5(Struct_2(~firstTrailingBit(88644u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, 503f) - _wgslsmith_f_op_f32(step(var_0.e, -133f))))), func_2(~46548u).c, _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -987f))))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, global0[_wgslsmith_index_u32(arg_0.a.x, 11u)], global2.x), var_0.b.zwx), 0i, -u_input.a.x, u_input.a.x | 2930i), var_0.b, ~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 47451i, 10714i, global2.x)), var_0.c, _wgslsmith_f_op_f32(abs(-1054f)), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(firstTrailingBit(~select(1u, arg_2.a, arg_1.x)), 2u)])));
    let var_1 = arg_1.x;
    let var_2 = vec3<bool>(false, arg_2.d >= _wgslsmith_sub_i32(~21574i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.b, var_0.b), ~var_0.b)), var_1 && true);
    return Struct_3(arg_2.c.xy);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> Struct_2 {
    global4 = Struct_3(~arg_1.c.zy);
    var var_0 = max(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_3.xww, u_input.b), 1u), ~(~(~(~0u))));
    global4 = func_1(arg_0, select(!vec4<bool>(false, arg_2, arg_2, all(vec3<bool>(arg_2, arg_2, arg_2))), vec4<bool>(arg_2, all(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, arg_2, false))), all(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), false)), false), !(!(!vec4<bool>(true, true, false, arg_2)))), func_2(31407u).c);
    var var_1 = Struct_3(~max(_wgslsmith_clamp_vec2_u32(vec2<u32>(165386u, arg_0.a.x), arg_1.c.xz, u_input.b.yz), _wgslsmith_div_vec2_u32(~global4.a, countOneBits(arg_3.zz))));
    var var_2 = any(!vec3<bool>(!(!arg_2), ~var_1.a.x < global4.a.x, max(u_input.e, 15079u) == 0u));
    return func_2(func_2(max(_wgslsmith_div_u32(4294967295u, global4.a.x), 1u)).c.c.x | var_1.a.x);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4) -> Struct_2 {
    return func_4(func_1(func_1(func_1(func_1(Struct_3(arg_1.a.c.c.yy), vec4<bool>(false, true, false, true), arg_1.a.c), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), global3[_wgslsmith_index_u32(arg_0.c.a.a, 22u)]), vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, all(vec4<bool>(false, false, false, true))), arg_0.a.c), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), arg_0.c.a.c), arg_0.a.c, false, reverseBits(max(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(4294967295u, arg_0.a.a, 4294967295u, global4.a.x)), vec4<u32>(0u, 4294967295u, u_input.b.x, 4294967295u))) >> (vec4<u32>(~1u, abs(u_input.c.x), arg_1.a.a, global4.a.x) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_5(Struct_5(func_4(func_1(Struct_3(u_input.b.zz), vec4<bool>(true, true, true, false), Struct_1(44669u, vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 2u)], global1[_wgslsmith_index_u32(u_input.c.x, 2u)], global1[_wgslsmith_index_u32(global4.a.x, 2u)]), u_input.b, global0[_wgslsmith_index_u32(72740u, 11u)])), func_2(u_input.c.x).c, true, u_input.c), firstLeadingBit(abs(vec4<i32>(global0[_wgslsmith_index_u32(1u, 11u)], global2.x, 1i, -2147483647i))), Struct_4(func_4(Struct_3(global4.a), global3[_wgslsmith_index_u32(75241u, 22u)], true, vec4<u32>(global4.a.x, global4.a.x, 14846u, 34074u)), _wgslsmith_div_i32(u_input.a.x, global2.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 2u)] * global1[_wgslsmith_index_u32(7513u, 2u)])), global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(reverseBits(global4.a.x), 2u)]), Struct_4(Struct_2(global4.a.x, -666f, Struct_1(4294967295u, vec3<f32>(-1000f, global1[_wgslsmith_index_u32(u_input.b.x, 2u)], -1892f), vec3<u32>(8879u, u_input.b.x, 42790u), global2.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_f_op_f32(step(497f, -1801f))), 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(14996u, 2u)] - -1000f) - _wgslsmith_f_op_f32(floor(709f))))), _wgslsmith_div_vec4_i32(select(-select(vec4<i32>(-11106i, 0i, -19376i, -1i), vec4<i32>(global2.x, global2.x, 1i, -11271i), true), _wgslsmith_sub_vec4_i32(-vec4<i32>(global0[_wgslsmith_index_u32(global4.a.x, 11u)], -1i, 13110i, -26268i), vec4<i32>(global0[_wgslsmith_index_u32(5608u, 11u)], u_input.a.x, 58440i, global0[_wgslsmith_index_u32(global4.a.x, 11u)])), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_i32(abs(~vec4<i32>(0i, 29624i, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global2.x)), vec4<i32>(global2.x, u_input.a.x & -11592i, ~(-2147483647i), 8428i), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-13190i, 0i, global0[_wgslsmith_index_u32(57522u, 11u)], u_input.a.x), vec4<i32>(u_input.a.x, global2.x, -9864i, -1i)), -1i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(8281u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)])))), Struct_4(Struct_2(global4.a.x, -788f, global3[_wgslsmith_index_u32(global4.a.x, 22u)], 836f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global4.a.x, 2u)], 219f)))), u_input.a.x, _wgslsmith_div_f32(func_2(4294967295u).e, _wgslsmith_f_op_f32(ceil(-1000f)))), global1[_wgslsmith_index_u32(~max(~abs(u_input.c.x), u_input.c.x), 2u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e, 2u)]));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(603f, global1[_wgslsmith_index_u32(4294967295u & _wgslsmith_div_u32(var_0.a.a, u_input.d), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1037f * -752f)), var_0.e)), vec4<f32>(_wgslsmith_f_op_f32(-func_4(Struct_3(vec2<u32>(1571u, global4.a.x)), Struct_1(50779u, vec3<f32>(var_0.c.a.e, 641f, global1[_wgslsmith_index_u32(global4.a.x, 2u)]), u_input.c.zyy, -1i), false, ~vec4<u32>(2545u, 80589u, 1u, var_0.c.a.c.a)).e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)), func_5(Struct_5(Struct_2(global4.a.x, -864f, Struct_1(64968u, var_0.c.a.c.b, vec3<u32>(1u, 86621u, 67221u), var_0.a.c.d), 716f, var_0.d), vec4<i32>(39172i, 1233i, global0[_wgslsmith_index_u32(var_0.a.a, 11u)], 40489i), var_0.c, global1[_wgslsmith_index_u32(global4.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.c.x, 2u)]), var_0.c).b), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(13876u, u_input.b.x, 0u, 28443u), _wgslsmith_sub_vec4_u32(~u_input.c, vec4<u32>(80996u, var_0.c.a.c.a, global4.a.x, 1u))), 2u)], var_0.a.e));
    var_0 = Struct_5(func_5(Struct_5(Struct_2(76746u, _wgslsmith_f_op_f32(select(var_1.x, var_0.a.c.b.x, true)), func_5(Struct_5(var_0.c.a, var_0.b, Struct_4(var_0.a, -14056i, -1137f), 137f, 1466f), Struct_4(Struct_2(u_input.b.x, 520f, Struct_1(u_input.d, var_1.ywz, var_0.c.a.c.c, 202i), 305f, -1000f), 27200i, var_0.c.a.b)).c, -768f, _wgslsmith_f_op_f32(825f + -809f)), vec4<i32>(u_input.a.x, abs(43734i), 15719i, 2147483647i), var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(1458f - global1[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_f_op_f32(f32(-1f) * -404f)), var_0.c), abs(select(-var_0.b, -var_0.b, !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true))), var_0.c, _wgslsmith_f_op_f32(trunc(604f)), _wgslsmith_div_f32(var_0.d, var_1.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1001f, 141f, _wgslsmith_div_f32(-537f, var_0.c.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1229f, var_1.x) * var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.c.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1000f * var_1.x)) - vec4<f32>(2033f, func_2(var_0.c.a.a).c.b.x, _wgslsmith_f_op_f32(-var_0.a.e), _wgslsmith_f_op_f32(sign(-594f)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(490f, -1693f, 406f, global1[_wgslsmith_index_u32(var_0.c.a.a, 2u)]), vec4<f32>(-440f, 1065f, var_1.x, var_1.x), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, var_0.d, -105f, var_0.d))))))));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(60798u, 2u)]))), _wgslsmith_f_op_f32(-692f - _wgslsmith_f_op_f32(-var_0.c.a.e)), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(31244u, 2u)] - var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.c, -128f, var_1.x, var_0.d), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(469f, 1000f, 1364f, -371f)))))), any(!(!vec2<bool>(true, var_3)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, func_2(global4.a.x).c.c.x, 57542u), vec3<u32>(39416u, ~4294967295u, func_4(Struct_3(var_0.c.a.c.c.zy), var_0.c.a.c, global4.a.x != var_0.a.c.a, u_input.c).a)));
}

