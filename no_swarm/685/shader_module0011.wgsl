struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<Struct_1, 10>;

var<private> global2: array<bool, 9> = array<bool, 9>(true, true, false, false, false, false, true, false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> vec2<u32> {
    let var_0 = vec2<u32>(~reverseBits(abs(min(4294967295u, u_input.a))), ~abs(u_input.a));
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(~u_input.b ^ -2147483647i, -(i32(-1i) * -2147483647i)), i32(-1i) * -(arg_0.x << (51788u % 32u))), -(~arg_0));
    global0 = array<Struct_1, 28>();
    let var_2 = var_1.x < 18606i;
    global2 = array<bool, 9>();
    return ~var_0;
}

fn func_2(arg_0: bool) -> f32 {
    global1 = array<Struct_1, 10>();
    let var_0 = Struct_1(~(~u_input.a ^ _wgslsmith_div_u32(firstLeadingBit(u_input.a), u_input.a ^ 8920u)), vec4<f32>(-830f, -593f, -3124f, -1110f), ((countOneBits(vec2<u32>(4294967295u, 1u)) ^ func_3(vec2<i32>(u_input.b, u_input.b))) & reverseBits(vec2<u32>(u_input.a, u_input.a))) << ((~(~vec2<u32>(0u, u_input.a)) & vec2<u32>(1u, firstTrailingBit(u_input.a))) % vec2<u32>(32u)), all(vec4<bool>(!any(vec4<bool>(arg_0, global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)])), true && !arg_0, !arg_0, all(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(43991u, 9u)], true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2103f)))));
    global0 = array<Struct_1, 28>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e))))), var_0.e, _wgslsmith_f_op_f32(-var_0.e), var_0.e);
    global1 = array<Struct_1, 10>();
    return var_0.b.x;
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    global1 = array<Struct_1, 10>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-443f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1454f))), _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.x)))) * 489f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + arg_0.b.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-250f, 1000f)), arg_0.b.yy))), vec2<f32>(-820f, _wgslsmith_f_op_f32(func_2(arg_0.d))), select(true, true, arg_0.d))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1530f) * vec2<f32>(var_0.x, arg_0.b.x))))));
    global0 = array<Struct_1, 28>();
    let var_2 = global1[_wgslsmith_index_u32(0u, 10u)];
    return min(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -29344i, firstLeadingBit(u_input.b)), vec3<i32>(_wgslsmith_mult_i32(-50946i, u_input.b), 0i, ~u_input.b)) >> (select(~vec3<u32>(u_input.a, arg_0.a, 0u) >> (select(vec3<u32>(42889u, 38747u, 7646u), vec3<u32>(1u, 4294967295u, arg_0.a), var_2.d) % vec3<u32>(32u)), firstTrailingBit(~vec3<u32>(u_input.a, arg_0.c.x, 1u)), var_2.d) % vec3<u32>(32u)), ~firstTrailingBit(vec3<i32>(0i, -67916i, 10424i)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_2.c.x, 4294967295u) & select(vec3<u32>(27845u, 4294967295u, var_2.c.x), vec3<u32>(1u, 4294967295u, u_input.a), global2[_wgslsmith_index_u32(4294967295u, 9u)]), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a, 18714u, 16488u), vec3<u32>(1u, arg_0.c.x, 9307u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    var var_0 = abs(~func_1(Struct_1(u_input.a, vec4<f32>(-625f, -754f, -223f, -337f), vec2<u32>(u_input.a, 23783u), global2[_wgslsmith_index_u32(u_input.a, 9u)], -299f))) | ~_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-62032i, u_input.b), ~u_input.b, u_input.b), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(14069i, u_input.b, 3314i) ^ vec3<i32>(-1i, u_input.b, u_input.b), ~vec3<i32>(u_input.b, u_input.b, 1i)));
    var_0 = select(_wgslsmith_div_vec3_i32(vec3<i32>(23850i, _wgslsmith_dot_vec2_i32(var_0.xx, var_0.yx), -u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, var_0.x, var_0.x)) ^ ~vec3<i32>(var_0.x, u_input.b, var_0.x)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 6340i, 6895i), vec3<i32>(var_0.x, -2147483647i, var_0.x)), select(vec3<bool>(true, false, true), !vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 9u)], true), !any(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 9u)])))) >> (vec3<u32>(~17591u, max(~(~13201u), u_input.a), ~_wgslsmith_div_u32(~u_input.a, ~52624u)) % vec3<u32>(32u));
    let var_1 = global0[_wgslsmith_index_u32(~0u, 28u)];
    global0 = array<Struct_1, 28>();
    global2 = array<bool, 9>();
    let var_2 = max(countOneBits(~(~(vec4<i32>(u_input.b, -47250i, 21701i, var_0.x) ^ vec4<i32>(63046i, u_input.b, u_input.b, 0i)))), (vec4<i32>(abs(u_input.b), ~u_input.b, i32(-1i) * -2147483647i, var_0.x) ^ countOneBits(vec4<i32>(-55445i, -2147483647i, u_input.b, var_0.x))) | vec4<i32>(-(i32(-1i) * -69229i), 5216i, u_input.b, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 29741i, 2147483647i, -var_0.x), var_2), u_input.b >> (select(~1u, _wgslsmith_mult_u32(33864u, 1u), all(vec2<bool>(var_1.d, global2[_wgslsmith_index_u32(var_1.a, 9u)]))) % 32u)), var_1.a);
}

