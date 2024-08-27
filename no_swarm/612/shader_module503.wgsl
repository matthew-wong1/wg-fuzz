struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = u_input.b.x;
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(0i, 6681i), 47790i, 1i);
    var var_1 = Struct_2(Struct_1(~_wgslsmith_clamp_i32(~(-1i), -u_input.c, firstLeadingBit(var_0.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, var_0.x, u_input.c, 23415i), (vec4<i32>(-8639i, 0i, -1i, u_input.c) >> (vec4<u32>(61163u, u_input.b.x, u_input.a.x, 935u) % vec4<u32>(32u))) | firstTrailingBit(vec4<i32>(var_0.x, 2147483647i, var_0.x, 0i))), all(select(select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, true)), !vec2<bool>(true, arg_0), -1i > var_0.x))), ~(-11073i));
    let var_2 = 1773f;
    let var_3 = -2147483647i;
    return Struct_2(var_1.a, max(~max(var_3, var_1.b), u_input.c & ~var_3) >> (u_input.b.x % 32u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    global0 = ~(~(arg_2.x | 48693u));
    global0 = 1u;
    var var_0 = arg_1;
    var var_1 = select(vec3<bool>(!(arg_0.c || !arg_1.a.c), arg_0.c, any(!(!vec3<bool>(arg_0.c, arg_0.c, false)))), vec3<bool>(_wgslsmith_sub_i32(func_2(true).b, 12174i) > reverseBits(0i), any(!vec4<bool>(false, false, true, var_0.a.c)) & true, !all(vec4<bool>(var_0.a.c, true, arg_1.a.c, false))), select(vec3<bool>(!any(vec3<bool>(true, true, var_0.a.c)), 43486u < max(1u, u_input.a.x), true), select(vec3<bool>(all(vec2<bool>(false, true)), var_0.a.c, true), vec3<bool>(true, true, true), true || arg_1.a.c), vec3<bool>((0i < arg_1.a.b.x) && true, any(select(vec3<bool>(arg_0.c, arg_1.a.c, false), vec3<bool>(true, true, var_0.a.c), vec3<bool>(true, true, true))), arg_1.a.c | select(var_0.a.c, false, false))));
    let var_2 = func_2(var_1.x).a;
    return func_2(any(select(!vec4<bool>(var_0.a.c, arg_0.c, arg_0.c, var_1.x), select(vec4<bool>(true, true, true, var_2.c), vec4<bool>(false, false, var_0.a.c, var_1.x), vec4<bool>(arg_1.a.c, true, var_0.a.c, true)), true))).a.c || (((select(1i, -14434i, arg_0.c) > -38835i) | arg_0.c) && false);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    return Struct_2(func_2(false).a, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_1.a.b.zxx, _wgslsmith_add_vec3_i32(arg_0.a.b.xwz, ~vec3<i32>(2147483647i, u_input.c, arg_0.b))), _wgslsmith_mod_vec3_i32(countOneBits(-arg_2.a.b.zzy), countOneBits(~arg_2.a.b.yyx))));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(Struct_2(Struct_1((u_input.c & -64131i) >> (select(u_input.b.x, u_input.b.x, false) % 32u), abs(vec4<i32>(15455i, u_input.c, 41366i, u_input.c)), func_3(Struct_1(u_input.c, vec4<i32>(2147483647i, 13832i, u_input.c, 2147483647i), true), func_2(false), ~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 36600u))), firstTrailingBit(-u_input.c) << ((0u >> ((0u >> (u_input.a.x % 32u)) % 32u)) % 32u)), func_2(any(vec4<bool>(any(vec3<bool>(true, false, false)), true, any(vec2<bool>(true, true)), true))), func_2(all(vec4<bool>(false, true, all(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, false, false))))));
    let var_1 = func_4(var_0, var_0, var_0).a;
    var var_2 = select(_wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(18492i, var_1.a, 46774i, var_0.a.b.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c, var_0.a.b.x, var_0.b, var_0.b), select(vec4<i32>(var_0.b, 0i, -23569i, var_1.a), vec4<i32>(var_1.b.x, -18083i, 75456i, var_0.b), var_1.c))) | 0i, u_input.c, true);
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-876f - -838f) * _wgslsmith_f_op_f32(f32(-1f) * -925f)), 930f, -193f)));
    var_2 = 1i;
    return StorageBuffer(func_4(func_4(func_2(any(vec2<bool>(var_0.a.c, false))), var_0, Struct_2(Struct_1(var_0.b, var_1.b, false), firstTrailingBit(var_0.b))), func_2(false), var_0).a.b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -22499i;
    var var_1 = all(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), u_input.b.x < 0u)));
    var_1 = false;
    let x = u_input.a;
    s_output = func_1();
}

