struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global0.b.a), vec4<u32>(4294967295u, min(1u, global0.b.b.x), 6448u, ~920u), all(!(!select(vec3<bool>(global0.a.c, false, global0.a.c), vec3<bool>(false, true, global0.a.c), global0.a.c))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, select(9205i, 0i, false) << (~global0.b.b.x % 32u), ~_wgslsmith_clamp_i32(u_input.b.x, global0.a.d, u_input.d)), _wgslsmith_sub_vec3_i32(abs(abs(vec3<i32>(27341i, 42126i, global0.b.d))), reverseBits(abs(u_input.c)))));
    global1 = -1i;
    let var_1 = global0.b;
    global0 = Struct_2(var_0, global0.b);
    let var_2 = vec2<i32>(~firstLeadingBit(32366i), abs(-((5581i ^ global0.b.d) >> (26777u % 32u))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.b.b, all(select(select(vec4<bool>(var_0.c, false, var_0.c, var_0.c), vec4<bool>(false, false, false, false), vec4<bool>(var_0.c, true, var_1.c, false)), !vec4<bool>(true, false, global0.a.c, false), false)) && (true & var_1.c), u_input.c.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    global0 = Struct_2(func_2(), func_2());
    global1 = ~_wgslsmith_mult_i32(15030i, i32(-1i) * -1i);
    let var_1 = !select(true, -169f > var_0.a, false) || arg_1.c;
    let var_2 = Struct_2(func_2(), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(1002f + -1387f)))), ~(vec4<u32>(global0.b.b.x, arg_0.b.x, 46188u, global0.a.b.x) << (max(var_0.b, vec4<u32>(1u, arg_1.b.x, arg_1.b.x, 6191u)) % vec4<u32>(32u))), true, ~(i32(-1i) * -arg_0.d)));
    return var_2;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> i32 {
    global0 = func_3(func_2(), global0.b);
    let var_0 = _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(2147483647i, _wgslsmith_sub_i32(arg_2.x, 0i), 21910i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a, global0.b.a, 715f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, global0.b.a, global0.a.a) + vec3<f32>(global0.b.a, global0.a.a, 771f)), vec3<f32>(global0.a.a, 1000f, global0.b.a)), any(!vec3<bool>(true, arg_0.x, global0.a.c)))) * vec3<f32>(_wgslsmith_f_op_f32(global0.a.a + -1694f), _wgslsmith_f_op_f32(f32(-1f) * -1107f), global0.b.a)));
    var var_2 = Struct_1(1000f, _wgslsmith_clamp_vec4_u32(global0.a.b, select(vec4<u32>(~52991u, firstTrailingBit(global0.a.b.x), _wgslsmith_sub_u32(global0.b.b.x, global0.b.b.x), global0.b.b.x), global0.b.b, vec4<bool>(global0.b.b.x > global0.b.b.x, global0.b.c, select(true, arg_0.x, arg_0.x), global0.b.b.x >= global0.a.b.x)), ~(~vec4<u32>(20320u, global0.a.b.x, 25390u, global0.a.b.x))), all(vec2<bool>(true, !any(vec4<bool>(true, false, false, false)))), _wgslsmith_mod_i32(-func_3(global0.a, global0.a).a.d, ~global0.a.d & (-1i ^ var_0)) & -14284i);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1424f))), vec4<u32>(1u, _wgslsmith_mod_u32(var_2.b.x, global0.b.b.x), 65726u, _wgslsmith_clamp_u32(4294967295u, 27313u, abs(72525u))), all(vec2<bool>(var_2.c, arg_0.x)), var_0), func_2());
    return -_wgslsmith_mult_i32(~(arg_2.x ^ ~22226i), ~func_3(func_3(Struct_1(981f, vec4<u32>(18265u, 4294967295u, var_2.b.x, 4294967295u), true, arg_1.x), Struct_1(-476f, vec4<u32>(1u, global0.a.b.x, 0u, 173u), var_2.c, 2147483647i)).a, Struct_1(387f, vec4<u32>(4294967295u, global0.a.b.x, var_2.b.x, var_2.b.x), global0.b.c, 2147483647i)).a.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.a.a, global0.b.a))) + 321f)), vec4<u32>(abs(global0.b.b.x >> ((global0.a.b.x << (36527u % 32u)) % 32u)), ~global0.b.b.x, global0.a.b.x, max(global0.b.b.x, global0.a.b.x << (~global0.a.b.x % 32u))), false, abs(func_1(vec2<bool>(global0.b.c, true), u_input.c.zx, reverseBits(u_input.c)) | ((-2147483647i >> (global0.b.b.x % 32u)) << (global0.a.b.x % 32u))));
    let var_1 = global0.a;
    global0 = func_3(func_3(func_2(), Struct_1(1697f, vec4<u32>(global0.a.b.x, 4294967295u, 7992u, 17874u), -847f > global0.a.a, ~var_0.d ^ -2147483647i)).b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a - 467f)))), func_3(func_2(), Struct_1(global0.a.a, _wgslsmith_clamp_vec4_u32(global0.a.b, var_1.b, vec4<u32>(var_1.b.x, 1u, var_0.b.x, var_0.b.x)), true | global0.a.c, u_input.a)).a.b, (-global0.a.d & _wgslsmith_dot_vec2_i32(u_input.c.yx, u_input.b.xy)) < (firstTrailingBit(global0.b.d) & func_1(vec2<bool>(true, var_1.c), vec2<i32>(-62180i, global0.b.d), vec3<i32>(var_0.d, 1i, var_0.d))), abs(global0.a.d << (1u % 32u))));
    let var_2 = 55339u;
    let var_3 = -156f;
    var var_4 = func_3(Struct_1(func_3(global0.b, global0.a).a.a, _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(var_0.b, vec4<u32>(25403u, 33572u, var_2, 1u)), ~var_1.b ^ (var_0.b & vec4<u32>(88166u, var_1.b.x, 86867u, 58530u)), vec4<u32>(var_0.b.x, 31730u, global0.a.b.x, global0.a.b.x)), false, (min(var_0.d, 2147483647i) >> (_wgslsmith_clamp_u32(0u, var_2, var_0.b.x) % 32u)) >> (_wgslsmith_sub_u32(~4294967295u, ~global0.a.b.x) % 32u)), global0.b).a;
    var_0 = func_3(global0.a, global0.b).b;
    let var_5 = _wgslsmith_sub_u32(reverseBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.b.x, firstTrailingBit(4294967295u), var_4.b.x), ~global0.b.b.x)), _wgslsmith_add_u32(_wgslsmith_mod_u32(func_3(global0.a, global0.b).b.b.x, global0.a.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, 14488u, 4294967295u, 23449u), var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(39840u);
}

