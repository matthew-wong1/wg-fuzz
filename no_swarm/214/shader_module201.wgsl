struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<vec4<i32>, 17>;

var<private> global2: vec3<f32> = vec3<f32>(1076f, 1935f, -538f);

var<private> global3: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = i32(-1i) * -_wgslsmith_sub_i32(u_input.b, min(1584i, _wgslsmith_sub_i32(u_input.b, u_input.b)));
    var var_1 = vec2<i32>(var_0, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(~u_input.a, 17u)], vec4<i32>(23834i, var_0, 0i, var_0), vec4<i32>(var_0, var_0, var_0, u_input.b) >> (vec4<u32>(41347u, 0u, u_input.a, u_input.a) % vec4<u32>(32u))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, -2147483647i, var_0, u_input.b), global1[_wgslsmith_index_u32(u_input.a, 17u)]), global1[_wgslsmith_index_u32(u_input.a, 17u)] ^ global1[_wgslsmith_index_u32(u_input.a, 17u)], select(vec4<bool>(true, false, true, global3.x), vec4<bool>(global3.x, true, global3.x, false), true)))) & _wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(var_0, u_input.b), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 7811i), vec2<i32>(var_0, u_input.b))), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-52866i, var_0)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<i32>(-5301i, _wgslsmith_add_i32(var_0, var_0)), vec2<i32>(-2147483647i, u_input.b)));
    let var_2 = Struct_1(false);
    global3 = !(!select(vec4<bool>(global3.x, true, any(global3.zyz), all(global3.xz)), !(!vec4<bool>(false, false, global3.x, global3.x)), vec4<bool>(true, global3.x, true, var_2.a)));
    var var_3 = select(!select(global3.xw, vec2<bool>(true, true), false), vec2<bool>(true & var_2.a, global3.x), arg_0 <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - -569f) * _wgslsmith_f_op_f32(global2.x + -400f))));
    return ~(firstTrailingBit(~4294967295u) << (0u % 32u)) >> ((abs(firstTrailingBit(_wgslsmith_add_u32(u_input.a, u_input.a))) << (u_input.a % 32u)) % 32u);
}

fn func_2(arg_0: vec4<f32>) -> vec4<bool> {
    global0 = array<Struct_1, 10>();
    global1 = array<vec4<i32>, 17>();
    let var_0 = ~(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -5716i, -48445i), vec3<i32>(2305i, 1299i, u_input.b)))) | vec3<i32>(-13505i << (~u_input.a % 32u), i32(-1i) * 0i, -12461i);
    let var_1 = Struct_3(min(vec3<u32>(u_input.a & ~u_input.a, ~1u, reverseBits(0u)), vec3<u32>((u_input.a >> (45147u % 32u)) | 1u, 23287u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, u_input.a), ~4294967295u))), Struct_2(-2147483647i >> (u_input.a % 32u), ~(~4294967295u), global0[_wgslsmith_index_u32(u_input.a, 10u)], vec4<i32>(-var_0.x, _wgslsmith_add_i32(var_0.x, 1i | var_0.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-27756i, var_0.x, 2147483647i), vec3<i32>(u_input.b, -1i, 42053i)), u_input.b), global0[_wgslsmith_index_u32(select(4294967295u ^ _wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, any(!vec3<bool>(false, global3.x, global3.x))), 10u)]), !global3.x, Struct_2((_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -35572i), vec2<i32>(var_0.x, 2147483647i)) >> (~60162u % 32u)) | _wgslsmith_add_i32(-51866i, 2147483647i << (0u % 32u)), u_input.a, global0[_wgslsmith_index_u32(func_3(global2.x) >> (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u), 10u)], global1[_wgslsmith_index_u32(max(1u, max(_wgslsmith_mod_u32(47741u, 4294967295u), u_input.a)), 17u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]));
    let var_2 = _wgslsmith_clamp_u32(var_1.b.b, 31145u, 40502u);
    return !vec4<bool>(~(u_input.a & var_2) <= ~4294967295u, global3.x && !any(vec2<bool>(false, true)), global3.x, !all(select(vec3<bool>(var_1.d.c.a, false, false), vec3<bool>(var_1.d.e.a, true, global3.x), global3.wzz)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = u_input.b;
    let var_1 = func_2(vec4<f32>(-675f, _wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-748f, 1142f) + 144f)));
    var_0 = min(abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(-53633i, 1i), abs(vec2<i32>(-11340i, -2147483647i)))), _wgslsmith_mult_i32((u_input.b | (u_input.b & 11669i)) | -2097i, 2147483647i));
    let var_2 = Struct_2(1i, _wgslsmith_clamp_u32(70179u, u_input.a, (u_input.a & ~1u) | func_3(_wgslsmith_f_op_f32(round(-1215f)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a, arg_0, u_input.a, 53838u) | select(vec4<u32>(u_input.a, arg_0, 4294967295u, 42254u), vec4<u32>(u_input.a, u_input.a, 17583u, 28141u), var_1)), ~firstLeadingBit(vec4<u32>(1u, 0u, arg_0, 44455u))), 10u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~min(u_input.a, min(6799u, 0u)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_0, 5401u), vec4<u32>(u_input.a, 62192u, arg_0, u_input.a)))), 17u)], Struct_1(true));
    var var_3 = Struct_3(abs(~vec3<u32>(4294967295u, 44134u, min(1u, u_input.a))), var_2, false, var_2);
    return ~(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.a, 31857u, u_input.a)), vec3<u32>(17113u, 73582u, u_input.a) << (vec3<u32>(1u, 0u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(726u, 40148u, 26068u)) ^ ~(select(vec3<u32>(7408u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, 1u), global3.wxy) << (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))), Struct_2(func_1(min(abs(u_input.a), 0u), _wgslsmith_f_op_f32(-global2.x), global0[_wgslsmith_index_u32(1u, 10u)]), ~u_input.a, global0[_wgslsmith_index_u32(u_input.a, 10u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], Struct_1(global3.x)), false, Struct_2(~(~u_input.b) ^ abs(u_input.b | -8188i), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 93521u, u_input.a), vec4<u32>(u_input.a, u_input.a, 7743u, u_input.a))), abs(vec4<u32>(47839u, 53075u, u_input.a, 1u))), Struct_1(false), select(vec4<i32>(-37569i, u_input.b, u_input.b, u_input.b), -global1[_wgslsmith_index_u32(4294967295u, 17u)], select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, global3.x, false), vec4<bool>(true, true, true, true))) | global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 17u)], Struct_1(global3.x)));
    global3 = vec4<bool>(true, !var_0.c | true, global3.x, any(vec3<bool>(true, all(!vec4<bool>(global3.x, var_0.d.e.a, global3.x, var_0.d.c.a)), any(func_2(vec4<f32>(global2.x, global2.x, global2.x, global2.x)).ww))));
    global0 = array<Struct_1, 10>();
    global2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1515f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global2.x, global2.x, false)))), global2.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1000f, _wgslsmith_f_op_f32(global2.x + -1303f))))));
    var var_1 = !global3.zy;
    let var_2 = Struct_2(-35586i, u_input.a, var_0.d.e, -var_0.d.d, Struct_1(true));
    var var_3 = ~abs(abs(_wgslsmith_sub_u32(43392u | u_input.a, 22142u | var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global2.x)))), 1u, var_0.a, _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec3_u32(var_0.a, var_0.a)), u_input.a));
}

