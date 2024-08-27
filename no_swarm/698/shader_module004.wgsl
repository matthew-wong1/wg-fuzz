struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: f32;

var<private> global3: bool;

var<private> global4: f32 = -793f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_5(reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(arg_0, u_input.a), select(vec2<u32>(0u, arg_0), vec2<u32>(arg_1, u_input.a), true))), ~vec3<u32>(~(~30873u), _wgslsmith_sub_u32(arg_1, abs(0u)), 19672u));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a))));
    global4 = var_1;
    global2 = _wgslsmith_f_op_f32(ceil(var_1));
    var var_2 = vec4<bool>(false, any(vec3<bool>(true, true, true)), all(vec3<bool>(true, all(vec4<bool>(false, false, false, false)), any(vec4<bool>(false, false, true, false)))) & (true && (-1579f <= _wgslsmith_f_op_f32(-var_1))), true);
    return select(min(arg_2.b, -12501i << (_wgslsmith_add_u32(_wgslsmith_add_u32(arg_0, 1u), u_input.a) % 32u)), _wgslsmith_dot_vec2_i32(-firstLeadingBit(~vec2<i32>(0i, u_input.d)), ~firstTrailingBit(firstTrailingBit(vec2<i32>(arg_2.b, u_input.c)))), false);
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_4(global1[_wgslsmith_index_u32(u_input.a, 21u)]);
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, var_0.a.a)), 723f), i32(-1i) * -18180i);
    var var_2 = Struct_4(Struct_1(-241f, var_0.a.b));
    var var_3 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(~countOneBits(vec4<i32>(-2698i, var_1.b, 6885i, -2147483647i)), -(~vec4<i32>(-19485i, var_2.a.b, -18803i, 1i)), vec4<i32>(var_1.b ^ -1i, 1i ^ var_1.b, ~4704i, _wgslsmith_div_i32(2147483647i, 1i)))) | vec4<i32>(u_input.b, -_wgslsmith_add_i32(func_3(37313u, u_input.a, Struct_1(159f, 0i)), abs(-48445i)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.a.b) >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -25964i, u_input.b)), firstLeadingBit(arg_0));
    return Struct_3(~_wgslsmith_mult_vec2_i32(var_3.xw, _wgslsmith_div_vec2_i32(vec2<i32>(var_3.x, var_3.x), var_3.ww)), Struct_1(1172f, 1i), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)))), _wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b, -1i, var_3.x), vec3<i32>(36773i, 17142i, 18076i)), ~u_input.d)));
}

fn func_4(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_3(arg_0.a, Struct_1(arg_0.c.a, u_input.d), func_2(_wgslsmith_dot_vec2_i32(select(arg_0.a, arg_0.a, var_0) >> (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(~arg_0.a, arg_0.a))).c);
    var var_2 = vec2<u32>(55472u, 1u);
    let var_3 = ~(~20486u);
    var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(abs(var_2.x) >> (~51917u % 32u), 67538u), ~(~(~countOneBits(vec2<u32>(var_3, var_3)))));
    return vec2<f32>(1280f, _wgslsmith_f_op_f32(var_1.c.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(var_1.c.b).c.a))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(_wgslsmith_add_i32(arg_3, -7112i)))) - _wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, arg_1), vec2<i32>(u_input.d, arg_3)), -vec2<i32>(arg_3, 2662i)), func_2(~u_input.c).b, func_2(firstTrailingBit(-25894i)).b))));
    global4 = var_0.x;
    let var_1 = !(true && !(-arg_1 >= 32773i));
    global3 = any(global0[_wgslsmith_index_u32(arg_2, 22u)]);
    var var_2 = global1[_wgslsmith_index_u32(0u, 21u)];
    return arg_2;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(~(~vec2<u32>(45199u, 1u)), vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), 4294967295u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~(~(~vec2<u32>(u_input.a, u_input.a))), firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(2455u, 4294967295u), vec2<u32>(24447u, 13469u)), u_input.a))));
    global0 = array<vec2<bool>, 22>();
    global0 = array<vec2<bool>, 22>();
    var var_1 = ~(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0), vec2<i32>(17056i, arg_0)) << (var_0 % 32u), -(arg_0 ^ arg_0), _wgslsmith_mult_i32(851i, arg_0), _wgslsmith_sub_i32(u_input.c ^ -2147483647i, -arg_1.b)));
    let var_2 = select(!select(vec4<bool>(true, true, true, all(vec2<bool>(false, true))), vec4<bool>(true, true, any(global0[_wgslsmith_index_u32(var_0, 22u)]), false), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false), any(vec2<bool>(false, false)))), vec4<bool>(true, false, _wgslsmith_clamp_i32(abs(-10282i), 38559i >> (u_input.a % 32u), _wgslsmith_sub_i32(u_input.c, arg_1.b)) != countOneBits(1i), true), true);
    return vec2<i32>(74207i, -max(reverseBits(39657i), max(i32(-1i) * -5635i, countOneBits(arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1f))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec3<i32>(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.c, 0i), vec3<i32>(-48185i, u_input.d, 42989i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(0i, 2147483647i))), ~vec3<i32>(-15194i, 2147483647i, u_input.d), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), select(func_5(u_input.d, global1[_wgslsmith_index_u32(func_1(i32(-1i) * -2147483647i, u_input.b & u_input.b, u_input.a, ~33957i), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(9407i, u_input.d)), -vec2<i32>(u_input.c, -4682i) & (vec2<i32>(u_input.b, 2147483647i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), vec2<bool>(true, true)), var_0, u_input.c, var_0);
}

