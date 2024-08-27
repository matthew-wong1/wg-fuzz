struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: array<Struct_5, 12>;

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5) -> vec3<i32> {
    let var_0 = !(!vec4<bool>(arg_1.a, false, all(select(vec3<bool>(false, false, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), false)), arg_1.a));
    global1 = array<Struct_5, 12>();
    var var_1 = -vec3<i32>(~_wgslsmith_dot_vec2_i32(u_input.c.zw, vec2<i32>(arg_0.x, arg_1.b.a.a.x)) & (u_input.c.x | -1i), _wgslsmith_mult_i32(_wgslsmith_add_i32(firstLeadingBit(-12426i), ~(-49719i)), i32(-1i) * -1i), arg_1.b.a.a.x);
    var var_2 = Struct_4(~u_input.d, Struct_3(arg_1.b.a), firstTrailingBit(arg_1.c));
    var_2 = Struct_4(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 4294967295u, u_input.d), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b.a.b.x, var_2.c.x, 21631u), arg_1.c.wzw)) | _wgslsmith_dot_vec3_u32(select(max(arg_1.c.xww, var_2.c.zyx), ~arg_1.c.zzw, var_0.x | var_0.x), ~arg_1.c.yxz), var_2.b, ~(~(~vec4<u32>(arg_1.c.x, u_input.d, 18407u, u_input.d))));
    return u_input.c.yyz;
}

fn func_2() -> i32 {
    let var_0 = -_wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_div_i32(-54951i, -31725i), min(i32(-1i) * -34153i, ~u_input.b), u_input.b & u_input.c.x), -(vec3<i32>(1i, -45846i, u_input.c.x) | u_input.c.wxx) & func_3(select(u_input.c.xyx, vec3<i32>(-41162i, 11194i, 2147483647i), vec3<bool>(true, false, true)), Struct_5(true, Struct_3(Struct_1(vec2<i32>(u_input.b, u_input.c.x), vec2<u32>(26701u, u_input.d), 2499f)), vec4<u32>(u_input.d, 28719u, u_input.d, u_input.d))));
    global1 = array<Struct_5, 12>();
    global1 = array<Struct_5, 12>();
    var var_1 = true;
    let var_2 = min(u_input.c, u_input.c);
    return _wgslsmith_add_i32(-3847i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(func_3(vec3<i32>(u_input.a.x, -37357i, 0i), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, 22497u), 12u)]).x, _wgslsmith_dot_vec4_i32(abs(u_input.c), abs(vec4<i32>(var_0, 0i, u_input.b, 1i)))), 16721i));
}

fn func_4(arg_0: vec2<bool>) -> bool {
    var var_0 = vec2<f32>(2179f, -1159f);
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(0u, 31u)], Struct_1(u_input.c.yy, vec2<u32>(1u, ~(~0u)), _wgslsmith_f_op_f32(f32(-1f) * -601f)));
    global2 = array<Struct_1, 31>();
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2732f, -1000f)));
    var var_2 = global2[_wgslsmith_index_u32(abs(var_1.a.b.x ^ reverseBits(~u_input.d)), 31u)];
    return !arg_0.x;
}

fn func_1() -> bool {
    var var_0 = vec2<bool>(func_4(vec2<bool>(false, (u_input.c.x >> (u_input.d % 32u)) < func_2())), !(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1583f, -941f, 1256f)));
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(max(select(4294967295u, _wgslsmith_add_u32(1u, ~u_input.d), false & !var_0.x), 33159u), 31u)], global2[_wgslsmith_index_u32(u_input.d & u_input.d, 31u)]);
    var_2 = global0[_wgslsmith_index_u32(var_2.a.b.x, 30u)];
    let var_3 = !any(vec4<bool>(!(!var_0.x), any(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), var_0.x)), var_0.x, func_4(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), vec2<bool>(false, false)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = array<Struct_5, 12>();
    global0 = array<Struct_2, 30>();
    var var_1 = all(vec4<bool>(true, select(any(vec4<bool>(true, true, false, false)) | true, !func_1(), true), !(!(6211u < u_input.d)), func_4(vec2<bool>(true, true))));
    let var_2 = Struct_4(u_input.d, Struct_3(Struct_1(-reverseBits(vec2<i32>(u_input.c.x, u_input.b)), (vec2<u32>(u_input.d, u_input.d) ^ vec2<u32>(u_input.d, u_input.d)) & vec2<u32>(52051u, u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-182f - -561f) * -536f))), reverseBits(min(abs(select(vec4<u32>(4294967295u, 24811u, 34667u, u_input.d), vec4<u32>(13397u, 4294967295u, 37321u, u_input.d), vec4<bool>(false, false, true, true))), vec4<u32>(abs(22525u), 39394u, firstLeadingBit(u_input.d), ~u_input.d))));
    let var_3 = select(_wgslsmith_clamp_vec3_i32(vec3<i32>(func_2(), 13281i, var_2.b.a.a.x), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-26492i, -2147483647i, 2147483647i), vec3<i32>(-64196i, -1i, u_input.a.x)), vec3<i32>(14804i, -19504i, u_input.b)) << (vec3<u32>(0u, var_2.c.x, 1u) % vec3<u32>(32u)), u_input.c.zyx), min(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, firstTrailingBit(2147483647i), u_input.a.x), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 2147483647i, 0i), u_input.c.yzy), vec3<i32>(-19823i, -2147483647i, -1i))), vec3<i32>(-1i, _wgslsmith_div_i32(-1i, u_input.c.x), reverseBits(-u_input.a.x))), func_4(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, false), true), func_1())));
    var_1 = (var_2.c.x == abs(41336u)) && true;
    var var_4 = (~(1u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_2.a, var_2.c.x), var_2.c.xxz)) >> (select(~u_input.d, ~max(u_input.d, 0u), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))) % 32u)) << (0u % 32u);
    let var_5 = _wgslsmith_f_op_f32(-663f - _wgslsmith_f_op_f32(sign(626f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-11037i, -2147483647i, var_2.b.a.a.x), vec3<i32>(38666i, 2147483647i, 18379i)), firstTrailingBit(vec3<i32>(var_3.x, u_input.a.x, 75710i) ^ u_input.c.wzx))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-787f))), var_2.b.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-605f - var_5) - _wgslsmith_f_op_f32(floor(var_5))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f - var_2.b.a.c) + 715f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 651f, var_2.b.a.c, -1191f) * vec4<f32>(-410f, -145f, -930f, -557f)), vec4<f32>(var_5, 632f, var_2.b.a.c, 315f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -412f)) * -937f), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(var_2.c.wwz, var_2.c.xzz), ~(var_2.a ^ u_input.d), 14749u), var_2.c), vec3<i32>(~u_input.a.x, -2147483647i, select(456i, 0i, true)) & (-vec3<i32>(7998i, -55082i, var_3.x) ^ min(vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x), ~vec3<i32>(0i, -3906i, 19982i))));
}

