struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1 = Struct_1(340f, false);

var<private> global2: array<Struct_1, 32>;

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec2<i32>(-4649i, 45574i), -1056f, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(global3.zy >> (global3.xy % vec2<u32>(32u))), global3.zy), 36942u), ~31660u, abs(min(global3.x, ~global3.x)));
    let var_1 = _wgslsmith_sub_vec2_i32(select(~select(vec2<i32>(u_input.b, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(-50516i, u_input.b), vec2<i32>(u_input.b, u_input.a)), any(vec3<bool>(false, true, global1.b))), firstTrailingBit(vec2<i32>(0i, -34057i)), vec2<bool>(!(global3.x > 1u), true)), ~vec2<i32>(-u_input.a, _wgslsmith_clamp_i32(u_input.a, ~(-2147483647i), i32(-1i) * -2708i)));
    global2 = array<Struct_1, 32>();
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(-global1.a)), true))), all(vec3<bool>(global1.b, all(!vec4<bool>(true, false, global1.b, false)), all(vec3<bool>(true, false, false)))));
    var var_3 = Struct_2(vec2<i32>(~var_1.x, var_1.x), global1.a, false);
    return u_input.a;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = global4[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 25984u, 40073u), select(vec3<u32>(4294967295u, u_input.c, global3.x), vec3<u32>(20379u, global3.x, 13538u), false)), ~(~u_input.c)), ~(~u_input.c))), 1u)];
    let var_1 = _wgslsmith_mod_i32((-(u_input.a & u_input.a) | -43024i) << (~_wgslsmith_div_u32(~0u, ~u_input.c) % 32u), func_3());
    var var_2 = ~abs(var_0.a);
    global4 = array<Struct_2, 1>();
    global1 = Struct_1(1058f, false);
    return select(!(!(!(!vec2<bool>(var_0.c, var_0.c)))), vec2<bool>(global1.b & true, global1.b), true);
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(-2791f, all(!select(vec4<bool>(arg_1.x, true, global1.b, false), vec4<bool>(true, true, arg_3.b, false), select(vec4<bool>(false, arg_3.b, arg_3.b, global1.b), vec4<bool>(false, false, arg_3.b, arg_1.x), vec4<bool>(false, true, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(sign(-548f));
    let var_2 = arg_3;
    var var_3 = vec4<bool>(!any(!vec3<bool>(arg_1.x, arg_1.x, true)), arg_1.x, arg_1.x, any(!select(func_2(u_input.c, vec3<i32>(-57536i, u_input.a, arg_0)), !arg_1, func_2(global3.x, vec3<i32>(25182i, u_input.a, -2147483647i)))));
    var var_4 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(arg_0, arg_0), min(-6850i, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -1197f), all(!(!(!vec4<bool>(var_0.b, true, false, true)))));
    return Struct_2(~var_4.a, 556f, !(!all(select(var_3.zz, arg_1, vec2<bool>(var_2.b, arg_3.b)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_add_vec4_i32(firstTrailingBit((~vec4<i32>(-2147483647i, 0i, u_input.b, u_input.a) ^ min(vec4<i32>(1i, 39362i, 0i, 0i), vec4<i32>(arg_2, -2147483647i, -32918i, u_input.a))) << ((abs(vec4<u32>(57937u, 32535u, 0u, global3.x)) | vec4<u32>(u_input.c, 75922u, 46250u, global3.x)) % vec4<u32>(32u))), countOneBits(-vec4<i32>(35034i | arg_2, _wgslsmith_mult_i32(-8850i, -36859i), -2147483647i, _wgslsmith_div_i32(u_input.a, -54489i))));
    var var_1 = func_4(var_0.x, select(select(func_2(u_input.c, vec3<i32>(u_input.a, arg_2, arg_2)), arg_0, false), arg_0, countOneBits(_wgslsmith_sub_i32(2147483647i, 0i)) == max(_wgslsmith_mult_i32(var_0.x, u_input.a), _wgslsmith_mod_i32(u_input.b, 84409i))), vec3<i32>(arg_2, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_2, arg_2, 33269i, 49731i)), var_0), arg_2), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -558f))), global1.a)), all(arg_0)));
    var var_2 = -29497i;
    global1 = arg_3;
    let var_3 = vec4<bool>(global1.b, arg_0.x, false, true);
    return countOneBits(~select(arg_2, _wgslsmith_mod_i32(-2147483647i, var_1.a.x), any(vec4<bool>(global1.b, false, false, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(global1.a + global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))) * _wgslsmith_f_op_f32(-global1.a)))));
    let var_0 = -vec2<i32>(func_1(select(vec2<bool>(global1.b, global1.b), vec2<bool>(true, global1.b), global1.b), false, 2147483647i << (u_input.c % 32u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, u_input.c, 28167u), vec3<u32>(u_input.c, 4294967295u, 4294967295u)), 32u)]), ~(~u_input.a)) << (~(abs(abs(global3.zx)) << ((~vec2<u32>(u_input.c, 32733u) ^ global3.xz) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = -185f;
    global1 = Struct_1(961f, global1.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global0.x, global1.a, global0.x) + vec4<f32>(212f, 929f, var_1, var_1))))))));
    let var_3 = select(_wgslsmith_mult_vec2_i32(max(vec2<i32>(-36920i, var_0.x >> (global3.x % 32u)), firstTrailingBit(_wgslsmith_sub_vec2_i32(var_0, var_0))), var_0), _wgslsmith_add_vec2_i32(-var_0, vec2<i32>(-_wgslsmith_mod_i32(22445i, var_0.x), min(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(2147483647i, 52718i, var_0.x))))), any(vec3<bool>(!global1.b, any(!vec4<bool>(global1.b, false, global1.b, false)), global1.b)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-var_2.x), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(max(global3.x, abs(1u)), global3.zz, countOneBits(-(~min(vec3<i32>(6704i, var_3.x, u_input.a), vec3<i32>(var_0.x, u_input.a, var_0.x)))), 26479i, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(40856i, var_0.x, var_0.x) ^ abs(vec3<i32>(u_input.a, -25749i, var_3.x)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -35937i, u_input.b), vec3<i32>(3929i, 1i, u_input.a))), select(abs(countOneBits(vec3<i32>(0i, var_0.x, -1i))), vec3<i32>(-var_3.x, _wgslsmith_add_i32(u_input.b, 20206i), 2147483647i), !vec3<bool>(true, true, var_4.b))));
}

