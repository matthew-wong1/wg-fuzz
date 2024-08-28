struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: vec3<f32> = vec3<f32>(-1028f, 714f, -824f);

var<private> global3: u32 = 1u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: u32) -> u32 {
    global0 = array<Struct_1, 27>();
    var var_0 = !select(vec2<bool>(-14955i > arg_1.b.b, !(!arg_1.d.d)), select(select(select(vec2<bool>(true, arg_0.b.d), vec2<bool>(arg_1.b.d, true), arg_1.b.d), select(vec2<bool>(true, true), vec2<bool>(arg_0.b.d, false), vec2<bool>(arg_0.d.d, arg_1.b.d)), false | arg_1.d.d), !select(vec2<bool>(true, arg_0.b.d), vec2<bool>(false, arg_0.d.d), vec2<bool>(arg_1.b.d, true)), vec2<bool>(arg_0.d.d, true)), !vec2<bool>(arg_0.b.d, select(false, arg_0.b.d, false)));
    return 34148u;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: u32) -> vec2<u32> {
    var var_0 = arg_0.d;
    var var_1 = Struct_1(var_0.d.a, -12217i | firstTrailingBit(~0i), ~vec3<u32>(max(11965u, ~u_input.a), 50482u, ~arg_3 << (_wgslsmith_mod_u32(13438u, 11886u) % 32u)), any(vec3<bool>(true, arg_0.c.d, all(!vec4<bool>(var_0.b.d, arg_0.d.b.d, false, var_0.b.d)))));
    let var_2 = true;
    global0 = array<Struct_1, 27>();
    let var_3 = arg_0.d;
    return var_3.b.c.xx;
}

fn func_2() -> Struct_4 {
    global3 = countOneBits(4294967295u);
    var var_0 = func_4(Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1971f, 805f) - vec2<f32>(global2.x, global2.x)) + global2.zy) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-323f, global2.x)))), vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 310f)), _wgslsmith_f_op_f32(-global2.x)), global1[_wgslsmith_index_u32(u_input.a, 27u)], Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1997f)), _wgslsmith_div_f32(-1648f, global2.x)), global0[_wgslsmith_index_u32(u_input.a, 27u)], _wgslsmith_add_u32(u_input.a, func_3(Struct_2(global2.x, global1[_wgslsmith_index_u32(6440u, 27u)], 4294967295u, Struct_1(-1i, -21849i, vec3<u32>(32889u, 41329u, 4294967295u), false)), Struct_2(-774f, Struct_1(-17860i, 0i, vec3<u32>(u_input.a, u_input.a, u_input.a), false), u_input.a, global1[_wgslsmith_index_u32(u_input.a, 27u)]), vec2<u32>(u_input.a, u_input.a), u_input.a)), global0[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 956f, -430f))), _wgslsmith_mod_vec2_u32(countOneBits(reverseBits(~vec2<u32>(1u, u_input.a))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, 5436u))), max(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, 68883u, u_input.a, u_input.a), firstLeadingBit(vec4<u32>(u_input.a, 27928u, 3771u, u_input.a)), vec4<bool>(true, true, true, true)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 3361u), vec4<u32>(33623u, 74221u, 1u, u_input.a), vec4<u32>(31283u, 48254u, 15478u, u_input.a))), ~(~(vec4<u32>(u_input.a, u_input.a, 56709u, 14147u) ^ vec4<u32>(12377u, u_input.a, 0u, 10972u)))), ~0u);
    let var_1 = false;
    var var_2 = firstTrailingBit(select(select(-vec2<i32>(-2147483647i, -37860i), vec2<i32>(5111i, 2147483647i), var_1), firstLeadingBit(vec2<i32>(-24456i, 1i)), vec2<bool>(any(vec2<bool>(var_1, var_1)), true)) | ~vec2<i32>(2147483647i, 2147483647i));
    var var_3 = !(!(!select(vec4<bool>(true, var_1, var_1, true), select(vec4<bool>(var_1, var_1, true, true), vec4<bool>(var_1, var_1, true, false), var_1), !vec4<bool>(var_1, var_1, var_1, false))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, -1039f), global2.xz, false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)), global2.x, global2.x)), Struct_1(var_2.x, var_2.x, vec3<u32>(_wgslsmith_mod_u32(u_input.a, 1u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(u_input.a, 4294967295u)), ~var_0.x, 1u), !(!any(var_3.zx))), Struct_2(_wgslsmith_f_op_f32(-619f * global2.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~u_input.a, _wgslsmith_sub_u32(firstLeadingBit(u_input.a), 1u)), 27u)], _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 357u), vec2<u32>(36934u, u_input.a)) & 24255u, var_0.x), global0[_wgslsmith_index_u32(u_input.a, 27u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1775f, 1199f, global2.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, 1904f, 1611f, global2.x), vec4<f32>(global2.x, 955f, 626f, global2.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, -1085f, 537f, global2.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(533f, global2.x, 1162f, -503f))))));
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = func_2();
    var var_1 = any(select(!vec2<bool>(arg_0.b.d, var_0.d.d.d), vec2<bool>(!arg_0.b.d, true), var_0.d.b.d));
    var var_2 = true;
    let var_3 = Struct_1(firstLeadingBit(0i), -2147483647i, _wgslsmith_div_vec3_u32(reverseBits(var_0.c.c) >> (~(~vec3<u32>(var_0.c.c.x, var_0.d.b.c.x, 0u)) % vec3<u32>(32u)), ~arg_0.d.c), (~arg_0.d.b << (1u % 32u)) != arg_0.d.b);
    global2 = var_0.b;
    return var_0.d.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~_wgslsmith_div_u32(abs(func_1(Struct_2(-1000f, Struct_1(-2147483647i, 15566i, vec3<u32>(u_input.a, u_input.a, 44616u), false), u_input.a, Struct_1(49319i, -36966i, vec3<u32>(1u, u_input.a, u_input.a), false)))), 0u);
    var var_0 = 4294967295u;
    global1 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~u_input.a), min(vec4<u32>(20977u, u_input.a, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 1u), vec4<u32>(26208u, u_input.a, u_input.a, 2042u)) & u_input.a), min(vec4<u32>(_wgslsmith_add_u32(5786u, 16610u), 4294967295u, 78977u, 13382u), vec4<u32>(u_input.a | u_input.a, 4294967295u, u_input.a, _wgslsmith_div_u32(u_input.a, 46394u)))), _wgslsmith_div_i32(_wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(-45045i, -2147483647i)) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, -1775i, 12875i, 5167i), ~vec4<i32>(0i, 1i, 2147483647i, 8868i)), _wgslsmith_dot_vec3_i32(-select(vec3<i32>(51711i, 0i, 0i), vec3<i32>(30150i, -812i, -2147483647i), true), -vec3<i32>(1i, 1i, 1i))), i32(-1i) * -1i);
}

