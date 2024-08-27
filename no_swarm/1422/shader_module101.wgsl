struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 25>;

var<private> global3: Struct_4 = Struct_4(vec3<i32>(i32(-2147483648), 2147483647i, -1i));

var<private> global4: array<vec2<i32>, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> i32 {
    global3 = Struct_4(global3.a);
    let var_0 = _wgslsmith_clamp_vec2_u32(u_input.a.zy, firstTrailingBit(u_input.a.xy), u_input.a.yz);
    global4 = array<vec2<i32>, 13>();
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-426f, -617f, -329f, 595f))), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~0u, 25u)])))))));
    let var_2 = countOneBits(~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, var_0.x, 0u, u_input.a.x), select(vec4<u32>(23880u, 0u, 4294967295u, var_0.x), vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, 71167u), true)), ~select(39156u, 1u, arg_0.x), 24247u, _wgslsmith_mod_u32(~u_input.a.x, 27081u)));
    return _wgslsmith_dot_vec4_i32(((-vec4<i32>(-2147483647i, global3.a.x, 1i, global1.b) ^ -vec4<i32>(2147483647i, 0i, global1.b, global0.x)) >> (~vec4<u32>(26001u, 51642u, var_0.x, var_2.x) % vec4<u32>(32u))) | select((vec4<i32>(28712i, global1.b, global1.b, -1i) ^ vec4<i32>(arg_1.a.b, global1.b, global3.a.x, global1.b)) & max(vec4<i32>(-1i, global1.b, arg_1.a.b, 1i), vec4<i32>(-64987i, 1i, global3.a.x, -44880i)), vec4<i32>(0i | global1.b, ~13741i, _wgslsmith_add_i32(8945i, global1.b), global3.a.x), any(!vec3<bool>(arg_1.a.a.x, false, false))), select(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(arg_1.a.b, -2147483647i, global1.b, 30262i)), ~vec4<i32>(-2147483647i, global1.b, 13152i, -13216i)) & firstTrailingBit(firstTrailingBit(vec4<i32>(-65806i, global0.x, arg_1.a.b, -63153i))), ~vec4<i32>(firstTrailingBit(global3.a.x), _wgslsmith_clamp_i32(global1.b, arg_1.a.b, 48539i), _wgslsmith_mult_i32(-1i, 0i), -34178i), !(true | arg_1.a.a.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3) -> i32 {
    global3 = Struct_4(arg_0);
    var var_0 = arg_1.a.a.zx;
    var var_1 = Struct_4(vec3<i32>(i32(-1i) * -(arg_1.a.b | -45481i), 42573i, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global3.a.x, arg_0.x), arg_0) >> (~(~20417u) % 32u)));
    var_0 = select(select(arg_1.a.a.xz, !arg_1.a.a.xw, select(select(select(global1.a.wx, arg_1.a.a.yw, global1.a.zy), select(vec2<bool>(true, true), global1.a.yx, global1.a.zz), global1.a.x), global1.a.zw, arg_1.a.a.zz)), global1.a.yx, !(!vec2<bool>(true, global1.a.x)));
    var var_2 = arg_1.a;
    return global3.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = Struct_3(Struct_1(global1.a, firstLeadingBit(_wgslsmith_add_i32(global1.b, global0.x)) & ~(-46000i)));
    let var_2 = var_1.a.a.x;
    let var_3 = global1.b;
    global1 = Struct_1(vec4<bool>(select(global1.a.x, false, var_1.a.a.x), !(_wgslsmith_mod_u32(4294967295u, u_input.a.x) > ~44566u), true, true), ~_wgslsmith_add_i32(abs(-1i), ~global3.a.x) ^ global1.b);
    return Struct_1(global1.a, min(1725i, func_4(vec3<i32>(-12319i, global3.a.x ^ -1i, func_3(vec2<bool>(true, false), var_1)), Struct_3(var_1.a))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    global2 = array<vec4<f32>, 25>();
    var var_0 = all(select(global1.a.xw, global1.a.yw, global1.a.zz));
    global0 = -(~_wgslsmith_mult_vec3_i32(arg_1.a, vec3<i32>(arg_2.b, -57430i, global0.x)));
    var var_1 = Struct_3(Struct_1(arg_2.a, -arg_2.b));
    global2 = array<vec4<f32>, 25>();
    return u_input.a.x == 0u;
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = ~17220u;
    global2 = array<vec4<f32>, 25>();
    var var_1 = Struct_5(1u);
    var var_2 = arg_0.a;
    var_2 = vec4<bool>(true, !any(global1.a.zy), arg_0.a.x, !func_5(Struct_4(~vec3<i32>(-17544i, -2147483647i, -1i)), Struct_4(-global3.a), func_2(), ~(global3.a | vec3<i32>(global0.x, arg_0.b, global3.a.x))));
    return vec2<i32>(abs(arg_0.b), _wgslsmith_dot_vec4_i32(-min(vec4<i32>(2147483647i, global3.a.x, -1i, -42267i), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.b, -2147483647i, global0.x, global0.x), vec4<i32>(1i, -2147483647i, -16106i, global1.b))), ~vec4<i32>(global3.a.x, global0.x, arg_0.b, arg_0.b) << (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(7687u, var_0, var_1.a, 8633u)), vec4<u32>(var_1.a, var_0, 33862u, var_0)) % vec4<u32>(32u))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_2 {
    global3 = Struct_4(vec3<i32>(-2147483647i, -firstTrailingBit(-global1.b), 0i));
    let var_0 = (1u >> (_wgslsmith_div_u32(arg_1.x, 56465u) % 32u)) ^ 0u;
    let var_1 = global1.a.x;
    global3 = Struct_4(global3.a);
    let var_2 = Struct_1(global1.a, ~(~min(_wgslsmith_mod_i32(arg_0.x, 21917i), _wgslsmith_add_i32(global1.b, arg_0.x))));
    return Struct_2(Struct_1(!func_2().a, -select(firstTrailingBit(2147483647i), arg_0.x & var_2.b, global1.a.x)), vec4<i32>(2147483647i, ~countOneBits(_wgslsmith_sub_i32(global3.a.x, var_2.b)), _wgslsmith_mod_i32(global3.a.x, global3.a.x), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-999f + _wgslsmith_f_op_f32(f32(-1f) * -1504f)), -619f, true))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(Struct_1(global1.a, global0.x)), ~u_input.a);
    var var_1 = !func_2().a.xxz;
    global4 = array<vec2<i32>, 13>();
    var var_2 = Struct_4(vec3<i32>(-2946i, -41919i | -(var_0.b.x | var_0.b.x), global0.x));
    let var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(var_0.b >> (max(select(vec4<u32>(80684u, 66792u, u_input.a.x, u_input.a.x), vec4<u32>(4830u, 55765u, u_input.a.x, u_input.a.x), var_1.x), vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x) >> (vec4<u32>(38075u, 116032u, u_input.a.x, 91625u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 2147483647i), global0.xy & global3.a.xy), -31008i, func_6(-vec2<i32>(1i, -1i), select(u_input.a, vec3<u32>(u_input.a.x, 89860u, u_input.a.x), vec3<bool>(true, global1.a.x, var_0.a.a.x))).b.x, -1i)), vec4<i32>(9296i, reverseBits(-48282i), -1i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_2.a ^ global3.a, global3.a), max(vec3<i32>(global1.b, global1.b, 48507i) & vec3<i32>(global0.x, 32597i, var_2.a.x), firstTrailingBit(var_0.b.zyw)))));
    let var_4 = ~(i32(-1i) * -7849i);
    var var_5 = Struct_4(global3.a >> (~u_input.a % vec3<u32>(32u)));
    let var_6 = var_3.yxy;
    var var_7 = Struct_3(func_6(~var_5.a.xy, ~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 1u, u_input.a.x))).a);
    let x = u_input.a;
    s_output = StorageBuffer(select(global4[_wgslsmith_index_u32(0u, 13u)], ~max(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_2.a.x), vec2<i32>(var_3.x, var_7.a.b)), func_1(Struct_1(vec4<bool>(global1.a.x, true, var_1.x, var_7.a.a.x), 2147483647i))), global1.a.x), ~_wgslsmith_add_vec2_i32(~(-vec2<i32>(2147483647i, var_6.x)), var_6.yx), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), ~u_input.a, countOneBits(vec3<u32>(u_input.a.x, 1u, 1u))) ^ _wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), u_input.a), 1u, var_0.c);
}

