struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<vec3<i32>, 4>;

var<private> global3: array<u32, 2>;

var<private> global4: vec4<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec2<bool> {
    global2 = array<vec3<i32>, 4>();
    global4 = -_wgslsmith_mod_vec4_i32(min(-u_input.a, vec4<i32>(-1i) * -vec4<i32>(u_input.d, 2147483647i, arg_0.a, u_input.a.x)), vec4<i32>(arg_0.a, 1i, abs(0i), -41273i));
    let var_0 = all(select(vec4<bool>(true, global0.x, any(vec2<bool>(false, true)), select(true, arg_0.b, false) & arg_0.b), select(vec4<bool>(true, u_input.b.x <= arg_1, false, false), vec4<bool>(false, false, true, select(arg_0.b, true, global0.x)), select(select(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), vec4<bool>(arg_0.b, true, true, false), vec4<bool>(false, arg_0.b, global0.x, arg_0.b)), select(vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, arg_0.b, arg_0.b, global0.x), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, global0.x)), arg_0.b)), !vec4<bool>(arg_0.b, false, true, all(vec2<bool>(arg_0.b, global0.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(1697f * -558f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(249f, 756f), vec2<f32>(1012f, 1000f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1094f, 800f), vec2<f32>(1478f, -374f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1737f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-152f + -684f), _wgslsmith_f_op_f32(f32(-1f) * -490f), global0.x))), _wgslsmith_div_f32(610f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1022f + -900f)))), select(select(select(vec2<bool>(true, false), select(vec2<bool>(global0.x, true), vec2<bool>(true, arg_0.b), false), select(vec2<bool>(true, false), vec2<bool>(global0.x, var_0), global0.x)), vec2<bool>(true, arg_0.b), !(!global0.x)), vec2<bool>(false, true), vec2<bool>(true, true))));
    let var_2 = select(!(!select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), global0.x)), vec2<bool>(global0.x, global0.x), !(!select(vec2<bool>(true, global0.x), vec2<bool>(true, true), vec2<bool>(true, true))));
    return vec2<bool>(any(vec4<bool>(select(var_0, true, all(vec3<bool>(true, false, var_0))), arg_0.b, any(select(vec4<bool>(true, false, var_0, false), vec4<bool>(true, var_0, var_0, false), arg_0.b)), all(vec3<bool>(global0.x, true, false)))), select(true, !(!(global0.x & false)), !(!global0.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global0 = select(!func_3(Struct_4(abs(2147483647i), global0.x), select(_wgslsmith_mod_u32(33150u, arg_2.a), u_input.b.x, global0.x)), !(!arg_2.e.wy), arg_0.c);
    global2 = array<vec3<i32>, 4>();
    global3 = array<u32, 2>();
    var var_0 = vec2<i32>(~(-1i), arg_0.b.x);
    global3 = array<u32, 2>();
    return u_input.a.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    global2 = array<vec3<i32>, 4>();
    var var_0 = Struct_4(~52007i, !any(!select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, false, global0.x, false), global0.x)));
    return 4294967295u;
}

fn func_1() -> Struct_2 {
    let var_0 = 1u;
    let var_1 = !(func_4(vec2<i32>(func_2(Struct_1(global3[_wgslsmith_index_u32(1556u, 2u)], u_input.a, global0.x, true, vec4<bool>(true, global0.x, true, false)), Struct_2(Struct_1(u_input.b.x, u_input.a, true, true, vec4<bool>(false, false, global0.x, global0.x))), Struct_1(var_0, vec4<i32>(global4.x, global4.x, u_input.a.x, global4.x), false, true, vec4<bool>(true, false, false, global0.x))), _wgslsmith_add_i32(u_input.a.x, u_input.d)), 1f, global4.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(413f)))) > var_0);
    var var_2 = -(vec4<i32>(abs(-16867i), ~u_input.d, 1i, 0i) & max(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(16227i, u_input.d, global4.x, u_input.a.x), u_input.a), u_input.a, firstLeadingBit(vec4<i32>(u_input.a.x, 2147483647i, -16977i, u_input.a.x))), vec4<i32>(global4.x << (u_input.b.x % 32u), -global4.x, _wgslsmith_sub_i32(-1i, global4.x), _wgslsmith_add_i32(u_input.a.x, -17542i))));
    let var_3 = vec2<bool>(var_1, false);
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), 20u)];
    return Struct_2(var_4.b.a);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_4 {
    global1 = array<Struct_3, 20>();
    var var_0 = -(~(-_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-22366i, 0i, -1i), global2[_wgslsmith_index_u32(arg_2.a.a, 4u)], global4.xyz), -vec3<i32>(arg_2.a.b.x, -70546i, 25962i), max(vec3<i32>(0i, global4.x, 1i), vec3<i32>(-1i, -2147483647i, 43154i)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-237f, -1890f, -289f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-999f, -347f, -851f)))))));
    let var_2 = -arg_2.a.b.xw;
    var var_3 = global1[_wgslsmith_index_u32((countOneBits(25714u) | arg_2.a.a) >> (arg_1.a.a % 32u), 20u)];
    return Struct_4(arg_1.a.b.x, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), func_1(), Struct_2(Struct_1(_wgslsmith_mod_u32(u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 2u)]) & (0u ^ u_input.b.x), -_wgslsmith_add_vec4_i32(u_input.a, u_input.a), global0.x, true, !vec4<bool>(global0.x, true, true, true))));
    global1 = array<Struct_3, 20>();
    var_0 = Struct_4(var_0.a << (~global3[_wgslsmith_index_u32(46222u, 2u)] % 32u), !any(func_1().a.e.yx) | func_5(Struct_2(func_1().a), func_1(), func_1()).b);
    global1 = array<Struct_3, 20>();
    global1 = array<Struct_3, 20>();
    let var_1 = func_1().a;
    global1 = array<Struct_3, 20>();
    var var_2 = vec3<i32>(func_5(func_1(), func_1(), Struct_2(func_1().a)).a, ~_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, -2147483647i), ~(-1i)), -(_wgslsmith_mult_i32(-var_1.b.x, var_1.b.x) >> (firstLeadingBit(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(25204u, 2u)], 2u)]) % 32u)));
    var var_3 = Struct_4(-20808i, true != all(select(vec4<bool>(false, true, false, false), var_1.e, vec4<bool>(var_0.b, true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2603f, _wgslsmith_f_op_f32(ceil(-2255f))))), _wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_1.a, 4294967295u), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.c, 2u)]), false), u_input.b.yx, u_input.b.yx << (u_input.b.yy % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.c), vec2<u32>(var_1.a, 4294967295u))), reverseBits(min(u_input.b.xx, u_input.b.zx))), firstLeadingBit(select(vec2<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], var_1.a), u_input.b.yz, var_1.c)) | ~u_input.b.zz));
}

