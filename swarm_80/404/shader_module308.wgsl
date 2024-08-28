struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, false, false, false, true, true, true, true, true, false, true, true, true, true);

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 31>;

var<private> global3: array<u32, 16> = array<u32, 16>(0u, 0u, 0u, 4294967295u, 0u, 31916u, 1u, 12503u, 7229u, 0u, 9683u, 43571u, 4294967295u, 58918u, 4294967295u, 17499u);

var<private> global4: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    global1 = Struct_1(~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global3[_wgslsmith_index_u32(4294967295u, 16u)], global1.a.x, u_input.b.x) & global1.a, vec4<u32>(1u, 4294967295u, 1u, 4294967295u) >> (global1.a % vec4<u32>(32u)))), 2270f, ~1i, global1.c);
    let var_0 = u_input.a.x;
    let var_1 = select(vec4<u32>(16736u, ~countOneBits(~6131u), ~_wgslsmith_dot_vec4_u32(global1.a, min(vec4<u32>(32384u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 16u)], 4294967295u, 43378u), global1.a)), abs(63549u)), ~(vec4<u32>(~108003u, global1.a.x, 26591u, 25781u) & vec4<u32>(global1.a.x, 2280u, ~64880u, global1.a.x)), vec4<bool>(true & global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x) >> (14151u % 32u), 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(17751u << (global1.a.x % 32u), 14u)], true));
    global3 = array<u32, 16>();
    let var_2 = Struct_1(_wgslsmith_sub_vec4_u32(~(~select(global1.a, vec4<u32>(58326u, 9881u, u_input.b.x, 1u), global0[_wgslsmith_index_u32(global1.a.x, 14u)])), ~vec4<u32>(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(68218u, 16u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.x, 16u)], 16u)], global3[_wgslsmith_index_u32(global1.a.x, 16u)]), _wgslsmith_div_u32(global1.a.x, var_1.x), ~44117u, u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(f32(-1f) * -488f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))), ~(-8366i), countOneBits(~firstTrailingBit(0i)) ^ countOneBits(-1i));
    return !(!vec3<bool>(any(vec2<bool>(true, true)), -1054f == var_2.b, _wgslsmith_f_op_f32(step(-167f, 1833f)) >= -1569f));
}

fn func_2() -> u32 {
    global2 = array<vec3<f32>, 31>();
    let var_0 = u_input.c.x;
    var var_1 = global1.b;
    let var_2 = func_3();
    global0 = array<bool, 14>();
    return _wgslsmith_add_u32(global1.a.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1.a & (reverseBits(global1.a) | (vec4<u32>(38485u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], 73579u, 4294967295u) ^ vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 16u)], u_input.b.x, 81271u, u_input.b.x))), firstLeadingBit(global1.a)), 16u)]);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = arg_0.wzw;
    let var_1 = _wgslsmith_div_u32(func_2(), _wgslsmith_mult_u32(0u, max(global3[_wgslsmith_index_u32(~u_input.b.x, 16u)], u_input.b.x)));
    var var_2 = vec4<i32>(1i, min(-1i, -(i32(-1i) * -2147483647i)), -_wgslsmith_div_i32(-var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-24246i, 60512i, arg_0.x, 0i), arg_0)), -var_0.x) & _wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(u_input.c, ~vec4<i32>(arg_0.x, -1i, var_0.x, arg_0.x)), min(abs(vec4<i32>(var_0.x, var_0.x, -4547i, -36198i)), vec4<i32>(1i, ~u_input.a.x, countOneBits(var_0.x), -1i)));
    var var_3 = global1.a;
    global0 = array<bool, 14>();
    return Struct_1(min(global1.a, ~global1.a), global1.b, ~abs(max(1i, var_2.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-1i), global1.d, reverseBits(-2147483647i)), select(abs(var_0), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, var_2.x, var_0.x), vec3<i32>(global1.c, 0i, var_0.x), countOneBits(vec3<i32>(-19409i, -1i, u_input.a.x))), vec3<bool>(global0[_wgslsmith_index_u32(~global1.a.x, 14u)], true, all(global4[_wgslsmith_index_u32(global1.a.x, 32u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~min(vec4<i32>(-1i, 20368i, global1.d, 0i), firstTrailingBit(u_input.c))));
    var var_1 = _wgslsmith_f_op_f32(var_0.b * var_0.b);
    global1 = Struct_1(~(~global1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), var_0.b), ~2147483647i, -1i);
    var var_2 = !global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(global1.a.x | _wgslsmith_add_u32(var_0.a.x, global3[_wgslsmith_index_u32(89029u, 16u)])), 0u), 32u)];
    let var_3 = Struct_1(abs(abs(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * -1456f) * func_1(u_input.c).b)) + _wgslsmith_div_f32(_wgslsmith_div_f32(-434f, 355f), _wgslsmith_f_op_f32(floor(-1003f)))), global1.d >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(global3[_wgslsmith_index_u32(38288u, 16u)], u_input.b.x), vec2<u32>(var_0.a.x, var_0.a.x)), abs(var_0.a.xz)), ~var_0.a.x) % 32u), u_input.a.x ^ _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.c), _wgslsmith_sub_vec4_i32(u_input.c, _wgslsmith_mult_vec4_i32(u_input.c, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global1.a.x, ~(~14475u)) & min(~u_input.b.xy, firstLeadingBit(vec2<u32>(global3[_wgslsmith_index_u32(103437u, 16u)], var_3.a.x))), vec2<u32>(0u, var_3.a.x));
}

