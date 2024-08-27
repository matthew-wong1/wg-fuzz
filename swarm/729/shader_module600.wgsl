struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    let var_0 = false;
    return _wgslsmith_f_op_f32(f32(-1f) * -1658f);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> vec4<i32> {
    var var_0 = Struct_4(Struct_1(!arg_1.b.a, ~_wgslsmith_mult_u32(u_input.b >> (arg_1.a % 32u), ~arg_1.b.b), vec3<bool>(!any(vec2<bool>(arg_1.b.c.x, false)), true, arg_1.b.c.x)));
    var_0 = Struct_4(Struct_1(vec4<bool>(min(var_0.a.b, 22503u) >= 87773u, false, false, true), 1u, !(!select(vec3<bool>(true, arg_1.b.a.x, arg_1.b.a.x), arg_1.b.a.zzy, vec3<bool>(false, false, arg_1.b.a.x)))));
    var var_1 = vec3<bool>(false, var_0.a.a.x, false);
    let var_2 = vec3<i32>(_wgslsmith_div_i32(-58924i, select(_wgslsmith_div_i32(~(-17436i), i32(-1i) * -1i), 13592i, true)), -2147483647i, -1i);
    var var_3 = var_0.a.a.zx;
    return vec4<i32>(23523i, -var_2.x, ~(-2147483647i), _wgslsmith_dot_vec3_i32(var_2, var_2));
}

fn func_2() -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_f32(func_3()), Struct_2(0u, Struct_1(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), 110025u, vec3<bool>(false, false, false))), -935f);
    var var_1 = true;
    let var_2 = var_0.x;
    var_1 = select(true, false, false);
    global0 = array<vec4<i32>, 8>();
    return _wgslsmith_f_op_f32(1f * 1545f);
}

fn func_1() -> Struct_3 {
    global0 = array<vec4<i32>, 8>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(func_2()), ~(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 7383u, u_input.b, 1u), reverseBits(vec4<u32>(40419u, 66217u, u_input.b, 15655u)))));
    let var_1 = Struct_4(Struct_1(vec4<bool>(!any(vec3<bool>(false, false, false)), true, true, any(vec2<bool>(false, false))), u_input.a, !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))));
    global0 = array<vec4<i32>, 8>();
    var var_2 = !(!var_1.a.c.xx);
    return Struct_3(var_0.a, ~vec4<u32>(~(~100301u), countOneBits(133713u), 11727u, 8007u));
}

fn func_5(arg_0: Struct_3) -> Struct_4 {
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    var var_0 = Struct_3(1003f, arg_0.b);
    let var_1 = select(vec4<bool>(false, arg_0.a > arg_0.a, false, false), vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))) & true, all(vec4<bool>(true, true, true, true)) & (~arg_0.b.x != (1u >> (var_0.b.x % 32u))), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), any(vec3<bool>(true, false, false)))), all(vec2<bool>(true, true))), true);
    let var_2 = Struct_4(Struct_1(var_1, var_0.b.x, !select(select(var_1.wwz, vec3<bool>(false, false, var_1.x), false), select(var_1.yyy, vec3<bool>(true, true, false), true), vec3<bool>(var_1.x, true, true))));
    return Struct_4(Struct_1(var_1, ~1u, vec3<bool>(false, true, true & !var_2.a.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a | 75517u, 8u)];
    var var_1 = vec2<i32>(-29482i, var_0.x);
    var_0 = vec4<i32>(~(~(-_wgslsmith_sub_i32(var_0.x, 6613i))), _wgslsmith_mod_i32(abs(var_1.x), -51577i), var_0.x, 120331i | var_0.x);
    var var_2 = ~20420i;
    var var_3 = Struct_1(!vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, reverseBits(1i) >= var_1.x), 46572u, vec3<bool>(select(true, true, true), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true))), false));
    var var_4 = func_5(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(countOneBits(select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -2147483647i, 17695i), var_0.yzw), var_0.zyz, var_3.c.x)), vec3<i32>(_wgslsmith_div_i32(~var_0.x, -48460i), func_4(_wgslsmith_f_op_f32(func_3()), Struct_2(u_input.a, Struct_1(var_4.a.a, var_4.a.b, vec3<bool>(false, var_3.c.x, var_4.a.a.x))), _wgslsmith_div_f32(300f, 473f)).x, -(i32(-1i) * -1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, 556f, 245f)), vec3<f32>(293f, 970f, 2598f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1042f, 2107f, 334f), _wgslsmith_f_op_vec3_f32(vec3<f32>(110f, 846f, -1061f) * vec3<f32>(1391f, -1514f, -286f)), vec3<bool>(var_4.a.a.x, var_4.a.a.x, var_4.a.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1083f, -902f, 1000f) + vec3<f32>(-1264f, 1265f, 454f))))));
}

