struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32 = 38457u;

var<private> global2: array<vec4<u32>, 28>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>) -> bool {
    global1 = ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), abs(1748u));
    global2 = array<vec4<u32>, 28>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2020f) + _wgslsmith_f_op_f32(select(global0.x, global0.x, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))));
    let var_0 = ~(~4294967295u) ^ _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(~(~u_input.a), u_input.a));
    var var_1 = _wgslsmith_mod_u32(29352u, _wgslsmith_mult_u32(u_input.a, 0u));
    return all(!(!select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), arg_0.x), !vec4<bool>(false, true, arg_0.x, true), true)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> Struct_1 {
    global1 = 12599u;
    let var_0 = vec4<f32>(global0.x, -1077f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1505f + global0.x))))), 3132f);
    let var_1 = Struct_5(u_input.d, var_0.x, !select(arg_0.xzx, arg_0.wzx, !arg_1), _wgslsmith_add_i32((i32(-1i) * -43465i) & u_input.b.x, u_input.b.x) & _wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec3_i32(u_input.b | vec3<i32>(-28099i, u_input.c, -2147483647i), u_input.b)));
    global1 = 4294967295u;
    global0 = var_0.yy;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0))), 53944u, false, var_1.d >> (~68110u % 32u), arg_0.x);
}

fn func_1() -> i32 {
    global1 = 0u;
    var var_0 = Struct_3(firstLeadingBit(max(vec4<i32>(23600i, abs(u_input.b.x), u_input.c, _wgslsmith_clamp_i32(-2147483647i, u_input.c, u_input.c)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.b.x, u_input.c), vec4<i32>(u_input.b.x, u_input.c, 1i, 49896i), vec4<i32>(u_input.b.x, u_input.c, 1i, u_input.c)))), _wgslsmith_clamp_vec3_i32(-select(u_input.b, u_input.b, all(vec2<bool>(true, false))), vec3<i32>(abs(i32(-1i) * -52511i), ~(i32(-1i) * -1i), 1i), ~u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -1000f) - -794f))), func_3(!vec4<bool>(false, true, true, func_2(vec3<bool>(true, true, true))), true));
    let var_1 = 4294967295u;
    var_0 = Struct_3(select(var_0.a, firstLeadingBit(var_0.a), var_0.d.e), -var_0.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a.x - 974f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(select(-126f, 1072f, var_0.d.c))))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d.a, vec4<f32>(global0.x, 1838f, 1000f, -549f)) - var_0.d.a)), var_0.d.b, true, max(1i, firstTrailingBit(u_input.b.x)) | var_0.a.x, true));
    global2 = array<vec4<u32>, 28>();
    return u_input.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    global2 = array<vec4<u32>, 28>();
    global2 = array<vec4<u32>, 28>();
    var var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.xx, _wgslsmith_mult_vec2_u32(abs(select(vec2<u32>(15651u, u_input.a), vec2<u32>(arg_2.a.b, 4294967295u), false)), ~countOneBits(arg_0.zw))), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.d.b, arg_2.c >> (0u % 32u)), vec2<u32>(_wgslsmith_add_u32(~5117u, _wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.d.xy)), _wgslsmith_div_u32(11581u, _wgslsmith_div_u32(arg_1.d.b, 21321u)))), ~max(min(max(vec2<u32>(arg_0.x, 0u), arg_0.zy), vec2<u32>(1u, arg_2.b)), ~(arg_0.ww >> (u_input.d.xy % vec2<u32>(32u)))));
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), arg_2.d.a.x)));
    var_0 = ~reverseBits(~(~(~u_input.d.zx)));
    return func_3(select(vec4<bool>(arg_2.d.e & arg_2.d.c, arg_1.d.e, true, arg_1.d.e), select(vec4<bool>(!arg_2.d.e, true, 9058u <= arg_1.d.b, arg_1.d.c), select(vec4<bool>(arg_2.a.e, true, true, true), !vec4<bool>(false, arg_2.d.e, false, arg_2.a.c), select(vec4<bool>(true, true, true, arg_1.d.c), vec4<bool>(arg_1.d.c, arg_2.d.e, arg_2.d.c, true), vec4<bool>(arg_1.d.e, false, true, arg_1.d.c))), all(vec3<bool>(arg_2.a.e, false, arg_2.a.e)) || (arg_1.d.e & false)), select(!(!vec4<bool>(arg_2.d.c, arg_1.d.e, false, true)), !select(vec4<bool>(arg_2.d.c, arg_1.d.e, false, arg_2.d.e), vec4<bool>(arg_2.a.c, arg_1.d.e, false, arg_2.a.e), arg_1.d.e), arg_1.d.c)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~(~firstTrailingBit(6875u << (u_input.a % 32u))));
    var var_0 = func_4(~(~_wgslsmith_div_vec4_u32(~global2[_wgslsmith_index_u32(u_input.a, 28u)], ~global2[_wgslsmith_index_u32(40372u, 28u)])), Struct_3(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.c, u_input.b.x, 2147483647i, 76022i), vec4<i32>(func_1(), 30789i, u_input.c, -2147483647i)), vec3<i32>(u_input.c, u_input.b.x, u_input.c), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1234f, -1278f))))), func_3(vec4<bool>(true, true, true, true), true)), Struct_2(func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true)), true), reverseBits(~select(u_input.a, 1u, true)), ~_wgslsmith_add_u32(~0u, 0u), func_3(vec4<bool>(func_2(vec3<bool>(true, false, false)), true, true, u_input.a <= u_input.d.x), _wgslsmith_f_op_f32(trunc(global0.x)) >= _wgslsmith_f_op_f32(sign(383f)))));
    var var_1 = vec4<bool>(var_0.e, func_2(!select(!vec3<bool>(var_0.c, var_0.e, true), select(vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(var_0.e, true, var_0.e), var_0.c), u_input.a >= 1u)), _wgslsmith_f_op_f32(min(-270f, var_0.a.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))), false);
    var var_2 = select(vec4<bool>(!(!var_0.c), true, var_0.c, true), select(select(select(vec4<bool>(var_1.x, true, var_0.e, var_0.c), select(vec4<bool>(var_0.c, false, var_1.x, var_0.c), vec4<bool>(var_1.x, true, var_0.c, var_0.e), var_0.e), true), select(!vec4<bool>(var_0.c, false, true, var_1.x), select(vec4<bool>(var_1.x, var_0.e, var_1.x, var_0.e), vec4<bool>(true, var_1.x, false, true), vec4<bool>(true, var_1.x, true, false)), select(false, true, var_0.c)), vec4<bool>(u_input.a == 2581u, select(var_1.x, var_1.x, var_0.e), true || var_1.x, func_2(vec3<bool>(var_1.x, var_1.x, false)))), !(!select(vec4<bool>(var_1.x, true, var_0.c, false), vec4<bool>(true, var_0.e, false, var_0.e), vec4<bool>(var_1.x, true, var_0.e, var_1.x))), ~(~31982i) == abs(var_0.d)), !select(vec4<bool>(false, true, any(vec3<bool>(true, var_1.x, true)), var_0.e), !(!vec4<bool>(false, true, var_1.x, var_1.x)), !select(vec4<bool>(var_0.e, var_1.x, true, var_1.x), vec4<bool>(var_0.e, var_1.x, false, true), vec4<bool>(false, true, false, false))));
    var_1 = select(!(!vec4<bool>(true, var_2.x, var_1.x, var_0.b < u_input.a)), !select(!vec4<bool>(var_1.x, var_0.e, var_2.x, var_0.e), !select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(false, var_1.x, var_0.c, false), var_0.c), select(select(vec4<bool>(true, var_0.c, var_1.x, false), vec4<bool>(true, true, true, false), vec4<bool>(var_0.e, var_2.x, var_0.e, var_1.x)), select(vec4<bool>(var_2.x, var_2.x, var_0.c, true), vec4<bool>(false, false, var_1.x, var_1.x), var_2.x), var_2.x)), vec4<bool>(var_1.x, var_0.c && var_1.x, var_2.x, all(!var_2.xwz) && true));
    var var_3 = Struct_5(firstLeadingBit(u_input.d), global0.x, !vec3<bool>(true, false, var_1.x), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec2_u32(countOneBits(~vec2<u32>(0u, 0u)), select(vec2<u32>(var_3.a.x, 23104u), firstTrailingBit(vec2<u32>(var_0.b, 3780u)), var_3.c.x))));
}

