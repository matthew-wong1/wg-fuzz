struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13>;

var<private> global1: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false));

var<private> global2: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global3: Struct_3 = Struct_3(0u, -39492i, 5078i, Struct_1(vec3<u32>(23282u, 4294967295u, 64276u), 453f), i32(-2147483648));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_4(~countOneBits(countOneBits(vec2<u32>(global3.a, global3.a))), _wgslsmith_div_vec3_i32(-global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_0.a.x, u_input.a.x), 13u)], vec3<i32>(_wgslsmith_mult_i32(53593i, _wgslsmith_dot_vec3_i32(vec3<i32>(7552i, u_input.b, u_input.b), vec3<i32>(u_input.b, 24302i, 0i))), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global3.e, -33292i, 8062i), vec4<i32>(u_input.b, u_input.b, global3.b, 0i))), reverseBits(_wgslsmith_mult_i32(0i, -2897i)))), 0u);
    let var_1 = select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(76513u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, var_0.c) << (18964u % 32u), arg_0.a.x)), 13u)], global1[_wgslsmith_index_u32(~global3.a, 13u)], false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d.b))))) + _wgslsmith_f_op_f32(-1041f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(296f))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.d.b, 259f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), 1032f), _wgslsmith_f_op_f32(global3.d.b * _wgslsmith_f_op_f32(-539f + arg_0.b)));
    global0 = array<vec3<i32>, 13>();
    return firstTrailingBit(firstTrailingBit(reverseBits(vec3<u32>(firstLeadingBit(var_0.c), _wgslsmith_mod_u32(4294967295u, 47031u), 4294967295u ^ global3.a))));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: i32) -> Struct_4 {
    global0 = array<vec3<i32>, 13>();
    var var_0 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(u_input.a.yxw, func_3(arg_0.d)), u_input.a.wzx), _wgslsmith_mult_u32(~abs(0u), arg_0.a.c.x));
    global0 = array<vec3<i32>, 13>();
    global1 = array<vec4<bool>, 13>();
    global3 = Struct_3(~20451u, -2147483647i, -2147483647i, Struct_1(vec3<u32>(~max(u_input.e, 54505u), ~reverseBits(arg_1.x), ~(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(566f))))), _wgslsmith_div_i32(-47144i, _wgslsmith_mod_i32(-84535i, arg_0.b.b.x) & arg_2));
    return arg_0.b;
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> u32 {
    var var_0 = ~(~vec4<u32>((0u & u_input.c) << (_wgslsmith_div_u32(u_input.c, arg_1.a.x) % 32u), max(func_3(global3.d).x, 1u), abs(~14524u), u_input.e));
    var_0 = firstLeadingBit(~_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(4294967295u, u_input.e, 0u, global3.a)), u_input.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.d.b, 528f)), _wgslsmith_f_op_f32(min(-134f, global3.d.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.b + -356f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1730f, -366f))));
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(413f, 314f)) * _wgslsmith_f_op_f32(abs(var_1.x))))), -1076f), vec3<u32>(u_input.e, countOneBits(min(15243u, 1u)), 23701u), ~_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a.x, 59141u, 64802u), u_input.a.wxz), firstLeadingBit(vec2<i32>(arg_0, _wgslsmith_mod_i32(-14837i, global3.c))) << (~var_0.xx % vec2<u32>(32u)), vec2<u32>(54603u, func_3(Struct_1(u_input.a.zyx, global3.d.b)).x));
    let var_3 = global1[_wgslsmith_index_u32(71615u, 13u)];
    return ~var_2.b.x;
}

fn func_1() -> vec3<bool> {
    global2 = array<vec2<bool>, 25>();
    global0 = array<vec3<i32>, 13>();
    global0 = array<vec3<i32>, 13>();
    let var_0 = Struct_4(vec2<u32>(func_4(-1i, func_2(Struct_5(Struct_2(vec2<f32>(global3.d.b, 562f), u_input.a.xxy, u_input.a.xwz, vec2<i32>(global3.c, 25536i), vec2<u32>(1u, global3.d.a.x)), Struct_4(vec2<u32>(1u, 1u), vec3<i32>(global3.b, -35869i, global3.b), 4294967295u), u_input.b, global3.d), vec2<u32>(0u, 4294967295u), u_input.b)), 12992u) | reverseBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, 20269u), vec2<u32>(1u, 1u), global3.d.a.zx)), abs(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~func_3(Struct_1(global3.d.a, 1000f)).x, ~(global3.a & 27392u)), 13u)]), u_input.c);
    var var_1 = Struct_4(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(global3.d.a.x, u_input.d), global3.a), _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c, var_0.c), ~50144u)), global3.d.a.xy), var_0.b, 12772u);
    return !vec3<bool>(!(_wgslsmith_f_op_f32(-global3.d.b) < 430f), ~(i32(-1i) * -2147483647i) > firstLeadingBit(var_0.b.x), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(!func_1(), select(func_1(), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), func_1())), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false))), (global3.d.b > _wgslsmith_f_op_f32(-global3.d.b)) | any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false))), !vec3<bool>(21363i > global3.c, any(global2[_wgslsmith_index_u32(0u, 25u)]), any(select(vec4<bool>(false, false, false, false), global1[_wgslsmith_index_u32(1u, 13u)], true))), select(!vec3<bool>(global3.d.b >= -107f, true, true), !vec3<bool>(true, select(false, true, false), true), vec3<bool>(true, true, true)));
    let var_1 = false;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2396f, 1492f), vec2<f32>(-835f, global3.d.b)))))))), ~_wgslsmith_mult_vec3_u32(~(vec3<u32>(4294967295u, 1u, 4294967295u) << (global3.d.a % vec3<u32>(32u))), ~(~vec3<u32>(u_input.a.x, 53192u, 4294967295u))), ~(~global3.d.a), vec2<i32>(1i, global3.c) & abs(vec2<i32>(-u_input.b, ~u_input.b)), vec2<u32>(0u, _wgslsmith_mult_u32(~(~15789u), u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_clamp_u32(1u, 1u, global3.a), ~u_input.d) | func_2(Struct_5(var_2, func_2(Struct_5(var_2, Struct_4(vec2<u32>(1u, u_input.a.x), vec3<i32>(-2147483647i, var_2.d.x, 2147483647i), var_2.e.x), -2147483647i, global3.d), vec2<u32>(u_input.d, 52127u), 34868i), select(var_2.d.x, -1i, true), global3.d), vec2<u32>(u_input.e, ~u_input.a.x), 56524i).a, -u_input.b);
}

