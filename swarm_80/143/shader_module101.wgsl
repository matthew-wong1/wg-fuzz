struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, true, false, false));

var<private> global1: array<Struct_3, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = vec2<i32>(-_wgslsmith_mult_i32(arg_2.c.e, 0i), firstTrailingBit(-1i << (1u % 32u)));
    var var_1 = arg_2.b.e;
    var var_2 = vec3<bool>(false, ~_wgslsmith_dot_vec2_u32(vec2<u32>(67442u, arg_2.d) ^ var_1.a.yy, _wgslsmith_sub_vec2_u32(arg_0.c.a.xz, vec2<u32>(arg_2.c.a.x, 4294967295u))) > 0u, false);
    var var_3 = _wgslsmith_f_op_f32(-arg_2.b.a);
    global0 = array<vec4<bool>, 1>();
    return arg_0.b.d.yz;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = arg_2.b;
    var var_1 = arg_2.e.d;
    let var_2 = Struct_5(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.c.x, select(arg_2.e.a.x, u_input.c.x, arg_0)), ~(~vec3<u32>(0u, 1u, 4294967295u))), ~(~(~u_input.b)), true == !any(var_0.yx)));
    var var_3 = !((~arg_2.e.e | -2147483647i) > _wgslsmith_dot_vec2_i32(func_3(Struct_3(vec3<f32>(-1189f, arg_2.e.c, arg_2.a), arg_2, arg_2.e, 0u, var_0), countOneBits(arg_1.x), global1[_wgslsmith_index_u32(u_input.c.x, 26u)]), arg_1));
    var var_4 = 71673u;
    return select(vec3<bool>(var_1.x, var_0.x, var_0.x), !arg_2.e.d, false);
}

fn func_1(arg_0: f32) -> Struct_5 {
    let var_0 = u_input.b;
    let var_1 = vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(arg_0 - -1739f));
    let var_2 = !vec4<bool>(true, any(vec3<bool>(true, all(vec4<bool>(true, false, true, true)), all(vec3<bool>(false, true, false)))), all(select(func_2(true, vec2<i32>(2411i, -1871i), Struct_2(126f, vec3<bool>(false, false, true), vec2<bool>(false, false), vec3<i32>(-79502i, 1i, -46349i), Struct_1(vec4<u32>(4294967295u, 61339u, 31444u, u_input.b.x), 0i, arg_0, vec3<bool>(true, false, true), -1i))), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))), true);
    global1 = array<Struct_3, 26>();
    global0 = array<vec4<bool>, 1>();
    return Struct_5(vec3<u32>(max(u_input.c.x << (0u % 32u), reverseBits(31823u)) | var_0.x, ~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c.x), firstTrailingBit(0u), reverseBits(u_input.c.x), var_0.x), ~vec4<u32>(8887u, 4294967295u, 1u, 11272u))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_5) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(max(reverseBits(u_input.c.x), 1u), 26u)];
    global1 = array<Struct_3, 26>();
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, var_0.c.b), countOneBits(-24544i));
    var var_2 = arg_0.x;
    global0 = array<vec4<bool>, 1>();
    return var_0.b;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    global1 = array<Struct_3, 26>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-275f)))), arg_1.a))), _wgslsmith_f_op_f32(arg_1.a + -374f), _wgslsmith_f_op_f32(sign(arg_1.e.c)));
    global0 = array<vec4<bool>, 1>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.zz);
    global0 = array<vec4<bool>, 1>();
    return func_4(arg_1.d.zy, func_1(arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -33095i;
    var var_1 = func_5(true, func_4(select(vec2<i32>(0i, ~1i), vec2<i32>(1i, 1i), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec3<bool>(false, false, true)))), func_1(-2096f)), false);
    var var_2 = 4294967295u ^ ~u_input.b.x;
    var var_3 = Struct_4(-(i32(-1i) * -_wgslsmith_sub_i32(48575i, u_input.a)), vec4<bool>(false, any(vec3<bool>(true, true, true)), any(!(!vec4<bool>(true, var_1.e.d.x, false, var_1.c.x))), var_1.e.d.x), -func_5(all(global0[_wgslsmith_index_u32(~var_1.e.a.x, 1u)]), Struct_2(_wgslsmith_f_op_f32(-280f - var_1.e.c), vec3<bool>(true, true, true), !vec2<bool>(true, var_1.c.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-14638i, u_input.a, var_1.d.x), vec3<i32>(-17014i, 2147483647i, var_1.e.e)), var_1.e), true).d.xy, Struct_3(vec3<f32>(var_1.a, var_1.e.c, _wgslsmith_div_f32(1238f, _wgslsmith_div_f32(var_1.a, 202f))), func_5(var_1.b.x, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), !vec3<bool>(var_1.b.x, true, false), var_1.b.zz, ~var_1.d, func_4(vec2<i32>(u_input.a, 2147483647i), Struct_5(u_input.c)).e), !func_4(var_1.d.xz, Struct_5(u_input.b)).c.x), var_1.e, u_input.c.x, var_1.b), var_1.b.x);
    global0 = array<vec4<bool>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(func_5(var_1.b.x, func_5(var_1.e.d.x, var_3.d.b, false), u_input.a <= 2147483647i).e.a.x, ~(~var_1.e.a.x), ~var_3.d.b.e.a.x, ~_wgslsmith_dot_vec2_u32(var_3.d.c.a.ww, var_3.d.b.e.a.yw))), _wgslsmith_f_op_f32(floor(func_5(!(2147483647i <= var_1.d.x), var_3.d.b, func_5(var_1.b.x, func_4(vec2<i32>(u_input.a, u_input.a), Struct_5(var_1.e.a.yyx)), false).c.x).a)), ~(~vec4<u32>(abs(var_3.d.b.e.a.x), ~17784u, ~0u, u_input.b.x)), var_1.e.c);
}

