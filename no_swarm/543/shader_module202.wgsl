struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global0 = array<f32, 4>();
    var var_0 = Struct_4(Struct_3(select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.a.x, u_input.e, u_input.e), vec3<i32>(2147483647i, -2147483647i, u_input.a.x)), arg_0.c.x, countOneBits(u_input.a.x), _wgslsmith_dot_vec3_i32(arg_0.b.a, vec3<i32>(2147483647i, u_input.e, 2147483647i))), firstTrailingBit(vec4<i32>(2147483647i, 26770i, arg_0.b.a.x, 0i)) ^ (vec4<i32>(arg_0.c.x, arg_0.b.a.x, 1i, 702i) & vec4<i32>(49179i, arg_0.b.a.x, u_input.e, u_input.a.x)), select(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), !vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), vec4<bool>(arg_0.a.x, false, false, true))), arg_0), true, 0i);
    var var_1 = ~((~u_input.d >> (min(firstLeadingBit(u_input.d), ~u_input.c) % 32u)) >> (firstTrailingBit(~(~0u)) % 32u));
    var_0 = Struct_4(Struct_3(reverseBits(vec4<i32>(_wgslsmith_mod_i32(-27011i, -17285i), ~(-1i), 2147483647i, -var_0.c)), Struct_2(var_0.a.b.a, Struct_1(arg_0.b.a, var_0.a.b.b.b), ~(vec2<i32>(2147483647i, var_0.a.b.c.x) | var_0.a.a.yx))), !all(vec4<bool>(any(var_0.a.b.a), true, true, any(vec3<bool>(arg_0.a.x, var_0.a.b.a.x, arg_0.a.x)))), u_input.e);
    var var_2 = min(_wgslsmith_clamp_vec2_u32(~(min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.d)) & _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(56864u, u_input.c))), vec2<u32>(_wgslsmith_clamp_u32(u_input.c, u_input.b, 7960u) | abs(34139u), ~1u), _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.c, ~19533u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.b, u_input.c)) | ~vec2<u32>(u_input.d, u_input.d))), ~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 15073u), firstTrailingBit(vec2<u32>(u_input.c, u_input.c)))));
    return !(!vec4<bool>(all(!var_0.a.b.a), all(arg_0.a), true, var_0.a.b.a.x));
}

fn func_2() -> bool {
    return any(func_3(Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), Struct_1(vec3<i32>(-1i, u_input.e, 8883i), -1170f), ~(vec2<i32>(u_input.e, 0i) | u_input.a))));
}

fn func_1() -> u32 {
    var var_0 = select(vec4<bool>(any(vec3<bool>(true, true, true)), func_2(), func_3(Struct_2(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), Struct_1(vec3<i32>(u_input.e, -3816i, u_input.e), global0[_wgslsmith_index_u32(53453u, 4u)]), u_input.a)).x, true), func_3(Struct_2(vec3<bool>(all(vec4<bool>(true, false, true, true)), true, true), Struct_1(vec3<i32>(u_input.e, 2147483647i, -5010i), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 4u)])), -(vec2<i32>(u_input.e, 8159i) ^ vec2<i32>(u_input.a.x, 2147483647i)))), vec4<bool>(true, u_input.b >= ~(~u_input.b), false && all(vec4<bool>(true, true, true, true)), false));
    return 16379u;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_4, arg_3: i32) -> vec2<i32> {
    let var_0 = select(select(vec4<bool>(!(u_input.d <= u_input.b), any(vec3<bool>(arg_1, true, false)) | (false && arg_2.b), ~1u <= firstTrailingBit(u_input.b), arg_2.a.b.a.x), !(!vec4<bool>(false, true, true, arg_0.x)), vec4<bool>(!select(false, false, arg_0.x), !(u_input.d > u_input.b), 6586u > (69211u ^ u_input.c), firstTrailingBit(1u) < 116515u)), func_3(arg_2.a.b), func_3(Struct_2(arg_2.a.b.a, Struct_1(vec3<i32>(-2147483647i, u_input.a.x, u_input.e), global0[_wgslsmith_index_u32(u_input.d, 4u)]), (vec2<i32>(54915i, 0i) << (vec2<u32>(u_input.d, 1u) % vec2<u32>(32u))) ^ (arg_2.a.b.b.a.xz & arg_2.a.b.c))));
    var var_1 = arg_2;
    global0 = array<f32, 4>();
    var_1 = arg_2;
    return ~vec2<i32>(arg_3, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-486f, -640f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c, 4u)], global0[_wgslsmith_index_u32(u_input.d, 4u)]) - _wgslsmith_f_op_f32(f32(-1f) * -329f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(40556u, 4u)])));
    var var_1 = func_4(vec2<bool>(func_1() != ~4294967295u, true), false, Struct_4(Struct_3(firstLeadingBit(vec4<i32>(u_input.a.x, -1i, 53284i, u_input.a.x)), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<i32>(u_input.e, 1i, 0i), global0[_wgslsmith_index_u32(u_input.b, 4u)]), u_input.a)), false, 49188i), ~u_input.a.x) & countOneBits(reverseBits(max(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(1695i, 2147483647i)), u_input.a)));
    var_1 = abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_1.x, u_input.a.x), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.e, var_1.x) ^ countOneBits(vec2<i32>(var_1.x, u_input.a.x)), ~u_input.a)));
    let var_2 = Struct_2(func_3(Struct_2(vec3<bool>(func_2(), any(vec4<bool>(true, false, false, false)), true), Struct_1(vec3<i32>(var_1.x, -1i, -2147483647i), global0[_wgslsmith_index_u32(~u_input.c, 4u)]), vec2<i32>(-41256i, u_input.a.x))).zyw, Struct_1(vec3<i32>(-2147483647i, 1i, -2147483647i), -684f), ~u_input.a);
    var_1 = vec2<i32>(54447i, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, u_input.c)), firstTrailingBit(vec3<u32>(0u, 7889u, u_input.b)) & (vec3<u32>(17112u, u_input.c, u_input.c) >> (vec3<u32>(76527u, u_input.b, 51168u) % vec3<u32>(32u)))) << (vec3<u32>(u_input.b, ~u_input.c, ~69765u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(980f)) * _wgslsmith_f_op_f32(-153f - global0[_wgslsmith_index_u32(u_input.c, 4u)]))))));
}

