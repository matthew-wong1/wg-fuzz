struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-37318i, 18209i, 2147483647i), vec3<i32>(27502i, 49498i, 2147483647i), vec3<i32>(-21773i, 57214i, 54624i), vec3<i32>(32462i, -28093i, i32(-2147483648)), vec3<i32>(27521i, -52428i, 0i), vec3<i32>(13271i, -1i, -11182i), vec3<i32>(27756i, -1i, 2147483647i), vec3<i32>(-846i, 33688i, -36692i), vec3<i32>(-47714i, 1i, 0i), vec3<i32>(-17171i, 2147483647i, -16931i), vec3<i32>(2147483647i, 2147483647i, -24129i), vec3<i32>(-35852i, -39588i, 1i), vec3<i32>(-37140i, -9425i, 0i), vec3<i32>(20740i, 21796i, 2022i), vec3<i32>(0i, i32(-2147483648), 28162i), vec3<i32>(44410i, 1i, -1i), vec3<i32>(1i, 29242i, 7202i), vec3<i32>(-18875i, -32207i, 31012i), vec3<i32>(2147483647i, -61951i, 0i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(36226i, -6938i, -24959i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(-1i, -1i, 0i));

var<private> global1: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: f32) -> bool {
    global0 = array<vec3<i32>, 23>();
    var var_0 = u_input.e;
    let var_1 = abs(vec2<i32>(abs(var_0.x), global1.b.b));
    return all(select(vec2<bool>(global1.b.a, false), select(select(!vec2<bool>(arg_2, arg_2), select(vec2<bool>(arg_2, global1.a.c), vec2<bool>(arg_2, true), vec2<bool>(global1.b.c, arg_2)), global1.b.a), vec2<bool>(true, true), global1.a.c), select(!vec2<bool>(arg_2, global1.a.a), select(!vec2<bool>(arg_2, arg_2), select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2)), !global1.b.c), vec2<bool>(arg_2, !global1.c.c))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> Struct_4 {
    global0 = array<vec3<i32>, 23>();
    global1 = Struct_2(Struct_1(any(select(vec4<bool>(true, global1.a.c, arg_1.x, true), vec4<bool>(arg_1.x, true, true, arg_0), arg_0)), u_input.c.x, select(arg_0, u_input.d <= global1.a.e, false) & (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 2136u, global1.a.d.x, 72233u), vec4<u32>(global1.a.e, global1.a.d.x, 39756u, u_input.d)) == global1.a.d.x), ~vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.d), global1.a.e, _wgslsmith_dot_vec3_u32(vec3<u32>(30708u, global1.a.d.x, 39122u), vec3<u32>(u_input.d, 10845u, global1.a.d.x))), 0u), Struct_1(global1.d.x == -388f, -1i, arg_1.x, reverseBits(_wgslsmith_clamp_vec3_u32(global1.c.d, firstTrailingBit(global1.c.d), global1.c.d)), _wgslsmith_dot_vec3_u32(global1.c.d, global1.a.d)), Struct_1(true, u_input.a.x, arg_0, global1.c.d, u_input.d), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.d.x))), 176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.d.x, _wgslsmith_f_op_f32(-520f - -819f))) * 158f)));
    let var_0 = Struct_1(any(arg_1.yy), abs(global1.b.b), any(!(!(!vec4<bool>(false, false, true, global1.b.c)))), global1.c.d, global1.b.d.x);
    global0 = array<vec3<i32>, 23>();
    let var_1 = -vec3<i32>(_wgslsmith_div_i32(global1.c.b, reverseBits(_wgslsmith_mult_i32(0i, u_input.e.x))), var_0.b, -u_input.a.x);
    return Struct_4(Struct_1(!var_0.c, var_0.b, func_3(var_0.d.x, _wgslsmith_mult_i32(-19450i, u_input.e.x), var_0.c, global1.d.x), var_0.d, global1.c.d.x), _wgslsmith_f_op_f32(step(1000f, 302f)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.b, global1.c.b, global1.c.b, -reverseBits(reverseBits(arg_0.a.b))), ~min(vec4<i32>(~arg_1.a.b, arg_1.a.b, _wgslsmith_clamp_i32(global1.c.b, global1.c.b, arg_1.a.b), -1848i), vec4<i32>(max(0i, -1i), -global1.c.b, u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, arg_1.a.b), vec2<i32>(arg_0.a.b, arg_1.a.b)))));
    global1 = Struct_2(Struct_1(_wgslsmith_div_u32(u_input.d, 0u & arg_0.a.e) > func_2(arg_1.a.a, vec3<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.a)).a.e, _wgslsmith_sub_i32(-var_0.x, -28883i) & -arg_0.a.b, arg_0.a.c, ~(firstLeadingBit(vec3<u32>(0u, 0u, global1.a.e)) << ((arg_1.a.d << (arg_0.a.d % vec3<u32>(32u))) % vec3<u32>(32u))), func_2(any(vec4<bool>(true, false, false, arg_1.a.a)) || !arg_0.a.a, !select(vec3<bool>(arg_0.a.a, global1.a.c, false), vec3<bool>(false, global1.a.c, false), vec3<bool>(true, arg_0.a.a, false))).a.d.x), arg_1.a, Struct_1(arg_0.a.a, ~(-1i), global1.a.a, vec3<u32>(global1.c.d.x, ~select(1u, 64248u, arg_1.a.c), 53090u), arg_1.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1.d))));
    global0 = array<vec3<i32>, 23>();
    var var_1 = Struct_2(global1.b, func_2(all(!select(vec2<bool>(true, false), vec2<bool>(arg_0.a.c, arg_0.a.a), arg_0.a.c)), vec3<bool>(!any(vec3<bool>(arg_1.a.c, false, arg_1.a.c)), select(any(vec2<bool>(true, arg_0.a.a)), !global1.a.a, arg_1.a.a || true), true)).a, func_2(arg_1.a.c, !vec3<bool>(global1.c.c | true, all(vec3<bool>(false, true, arg_1.a.c)), true)).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.b, -640f, global1.d.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, -340f, arg_0.b) - vec3<f32>(global1.d.x, arg_0.b, global1.d.x))))));
    let var_2 = firstTrailingBit(u_input.c);
    return func_2(!(arg_1.a.a | true), vec3<bool>(false, !func_2(arg_1.a.c, select(vec3<bool>(arg_1.a.a, var_1.a.c, arg_0.a.c), vec3<bool>(false, var_1.b.a, false), true)).a.c, all(vec3<bool>(false, false, all(vec3<bool>(true, global1.b.c, true)))))).a;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<f32>) -> vec3<u32> {
    var var_0 = arg_0.x;
    let var_1 = Struct_2(arg_1.a, func_4(func_2(true, !select(vec3<bool>(global1.a.c, arg_1.a.a, true), vec3<bool>(arg_1.a.c, false, true), false)), arg_1), Struct_1(false, arg_1.a.b, arg_2.a.a, _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(arg_2.c.e, arg_2.c.d.x, arg_2.a.d.x)), vec3<u32>(4294967295u, ~arg_2.b.d.x, arg_0.x), ~(~vec3<u32>(arg_1.b, arg_1.a.d.x, 4294967295u))), ~arg_2.c.d.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-830f - arg_2.d.x))), global1.d.x, 137f));
    let var_2 = func_2(select(all(select(vec2<bool>(false, false), vec2<bool>(global1.a.a, true), vec2<bool>(false, arg_1.a.c))), !(arg_1.a.a || var_1.b.a), all(select(vec3<bool>(arg_2.c.a, global1.c.c, true), vec3<bool>(arg_1.a.a, false, var_1.b.a), vec3<bool>(arg_2.a.a, var_1.b.c, arg_1.a.a)))) == !arg_2.b.c, !(!(!vec3<bool>(var_1.c.a, global1.a.a, global1.b.a))));
    var_0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, var_2.a.d.x), 16516u);
    var var_3 = Struct_2(func_2(select(true, (u_input.c.x | var_1.a.b) > _wgslsmith_add_i32(global1.a.b, global1.c.b), select(var_2.a.c & true, var_2.a.a, global1.a.c)), !select(vec3<bool>(false, arg_1.a.a, global1.c.c), !vec3<bool>(arg_2.a.c, true, true), true)).a, func_4(Struct_4(Struct_1(arg_3.x > var_1.d.x, 8040i << (global1.a.e % 32u), global1.a.c, abs(arg_1.a.d), var_1.b.e), _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_f_op_f32(floor(702f))))), Struct_3(Struct_1(global1.c.c, max(global1.b.b, u_input.e.x), arg_2.b.c, vec3<u32>(40879u, 96348u, var_1.a.d.x), func_2(true, vec3<bool>(arg_2.b.c, true, arg_2.c.c)).a.e), firstTrailingBit(arg_1.a.e & var_1.b.d.x))), Struct_1(func_3(~arg_0.x, ~global1.c.b, arg_1.a.a, arg_3.x), -1i, var_1.b.a, select((arg_2.b.d & vec3<u32>(arg_2.c.e, 4294967295u, 4294967295u)) & func_4(var_2, Struct_3(arg_1.a, 5988u)).d, ~global1.c.d, true), 45070u), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(select(var_1.d.x, var_1.d.x, true))) - _wgslsmith_f_op_f32(-arg_2.d.x)), arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_2.b.c, vec3<bool>(var_1.b.c, var_2.a.c, true)).b * -676f))));
    return _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(global1.c.d, vec3<u32>(~arg_1.b, ~arg_2.c.e, 1u)), func_2(all(vec2<bool>(global1.c.a, false)) & false, !vec3<bool>(false, true, var_1.a.c)).a.d) ^ abs(~_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(var_2.a.d.x, 9431u, var_2.a.d.x)), arg_2.c.d & arg_2.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1010f - global1.d.x), -1586f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(-global1.d.x))))), vec3<f32>(global1.d.x, global1.d.x, -1000f), global1.b.a));
    var var_1 = vec2<i32>(~(global1.c.b | -(~1i)), 2147483647i);
    var var_2 = ~global1.b.d ^ _wgslsmith_sub_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global1.a.e), vec3<u32>(865u, 47787u, u_input.d))), ~(~func_1(global1.b.d.yz, Struct_3(Struct_1(true, var_1.x, true, global1.c.d, global1.b.d.x), global1.a.e), Struct_2(global1.b, global1.a, Struct_1(global1.a.a, var_1.x, true, global1.a.d, global1.b.e), vec3<f32>(1141f, -583f, var_0.x)), global1.d)));
    var var_3 = func_2(global1.a.a, !vec3<bool>((-1i != u_input.b) != all(vec3<bool>(global1.c.a, false, true)), true, global1.a.c));
    global1 = Struct_2(func_2(false, vec3<bool>(true, true, true)).a, var_3.a, func_4(Struct_4(func_4(func_2(global1.c.a, vec3<bool>(false, var_3.a.c, global1.a.c)), Struct_3(Struct_1(var_3.a.c, 0i, true, global1.b.d, global1.a.e), 6875u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.b)))), Struct_3(func_2(true, !vec3<bool>(var_3.a.c, true, true)).a, 70438u)), _wgslsmith_f_op_vec3_f32(global1.d * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(700f, 1125f, global1.d.x), _wgslsmith_f_op_vec3_f32(-var_0)))))));
    let var_4 = Struct_3(func_2(any(select(select(vec2<bool>(global1.b.c, false), vec2<bool>(global1.c.a, global1.b.a), true), vec2<bool>(true, true), vec2<bool>(global1.b.a, global1.c.a))), !(!select(vec3<bool>(var_3.a.c, false, var_3.a.a), vec3<bool>(false, true, false), false))).a, func_2(!var_3.a.a, !select(!vec3<bool>(true, global1.c.a, global1.c.a), vec3<bool>(true, false, false), true)).a.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(~((firstLeadingBit(global1.b.d.xy) & vec2<u32>(var_4.b, var_3.a.e)) >> (~countOneBits(var_3.a.d.zx) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, countOneBits(~89025i)), _wgslsmith_mult_vec2_i32(u_input.c.zy, _wgslsmith_div_vec2_i32(vec2<i32>(40807i, var_1.x), firstTrailingBit(u_input.c.xz)))));
}

