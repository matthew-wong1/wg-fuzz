struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10>;

var<private> global1: array<vec3<i32>, 1>;

var<private> global2: f32;

var<private> global3: array<vec2<bool>, 27>;

var<private> global4: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-1i, 10973i), vec2<i32>(-20620i, i32(-2147483648)), vec2<i32>(1i, 1i), vec2<i32>(5678i, 19888i), vec2<i32>(i32(-2147483648), -42160i), vec2<i32>(-1i, 56133i), vec2<i32>(0i, -21044i), vec2<i32>(-49330i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1149i, i32(-2147483648)), vec2<i32>(47734i, 1i), vec2<i32>(48541i, -3838i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-13868i, -46228i), vec2<i32>(3455i, 33947i), vec2<i32>(22940i, 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-1i, 16619i), vec2<i32>(1i, 1964i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-6560i, -38568i), vec2<i32>(43735i, -10874i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-8575i, -1837i), vec2<i32>(-14513i, i32(-2147483648)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: u32) -> i32 {
    var var_0 = Struct_4(arg_0.a);
    global0 = array<Struct_4, 10>();
    global1 = array<vec3<i32>, 1>();
    global1 = array<vec3<i32>, 1>();
    let var_1 = arg_2.x;
    return _wgslsmith_sub_i32(13885i, 1i >> (1u % 32u));
}

fn func_3() -> i32 {
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-831f, -838f) - _wgslsmith_f_op_f32(336f - -670f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -533f)) * 1f)), -198f));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(111f, 833f)), -553f), vec2<f32>(1f, 1f))), _wgslsmith_f_op_f32(abs(-969f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 525f, 109f, 1233f)))), vec3<i32>(abs(u_input.d.x & u_input.d.x) & -35752i, u_input.d.x, -4964i));
    global4 = array<vec2<i32>, 27>();
    let var_1 = 2147483647i;
    global0 = array<Struct_4, 10>();
    return var_1;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> vec4<i32> {
    global0 = array<Struct_4, 10>();
    global1 = array<vec3<i32>, 1>();
    var var_0 = 13019u;
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~u_input.b) ^ 66896u, 27u)];
    let var_2 = u_input.d ^ _wgslsmith_sub_vec2_i32(~vec2<i32>(-1i, func_2(Struct_4(Struct_3(Struct_1(vec2<f32>(-586f, -1000f), -1578f, vec4<f32>(1748f, 717f, arg_2, 1025f), arg_1.c.d), Struct_2(173f, arg_1.b, arg_1.c))), global3[_wgslsmith_index_u32(u_input.b, 27u)], vec4<bool>(true, true, arg_0.x, true), u_input.b)), ((arg_1.c.d.yx >> (u_input.e % vec2<u32>(32u))) & u_input.d) & select(vec2<i32>(30531i, u_input.c), abs(u_input.d), arg_0.x));
    return reverseBits(min(vec4<i32>(_wgslsmith_mod_i32(-var_2.x, u_input.c), 1i, var_2.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_1.x, arg_1.c.d.x), func_3())), -reverseBits(arg_1.b) & arg_1.b));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_mod_u32(~(~u_input.a), min(~(~_wgslsmith_mult_u32(19353u, 0u)), ~(~(u_input.b & u_input.b))));
    global3 = array<vec2<bool>, 27>();
    var var_1 = ~26176i;
    let var_2 = select(vec3<bool>(!(u_input.c == -21211i) | false, !any(vec3<bool>(true, true, false)), !(!all(vec3<bool>(true, false, false)))), vec3<bool>(!all(vec2<bool>(true, false)), true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, select(false, true, false), true), any(select(global3[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(66375u, 27u)], global3[_wgslsmith_index_u32(1u, 27u)]))), vec3<bool>(!all(vec3<bool>(false, true, false)), all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true)));
    global3 = array<vec2<bool>, 27>();
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-892f, 1000f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(808f, -143f) + vec2<f32>(-415f, -209f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1158f, 1223f)))))), _wgslsmith_f_op_f32(-251f * -2396f), vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2723f - 1184f) - _wgslsmith_f_op_f32(trunc(1440f))), _wgslsmith_f_op_f32(-264f - _wgslsmith_f_op_f32(f32(-1f) * -571f))), select(min(reverseBits(global1[_wgslsmith_index_u32(412u, 1u)]), vec3<i32>(0i, 0i, arg_0.x)), abs(arg_0.yxz), var_2)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1877f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), abs(-firstLeadingBit(arg_0)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-804f, 808f)), -844f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-314f, 1249f, -987f, -1672f)))), -arg_0.yzz)));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec2<bool>) -> f32 {
    var var_0 = u_input.e.x;
    global3 = array<vec2<bool>, 27>();
    let var_1 = false;
    global3 = array<vec2<bool>, 27>();
    global1 = array<vec3<i32>, 1>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1019f + -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_5(_wgslsmith_f_op_f32(func_5(func_4(-func_1(vec4<bool>(var_0, true, false, false), Struct_2(-1142f, vec4<i32>(u_input.d.x, 21348i, u_input.c, u_input.d.x), Struct_1(vec2<f32>(-251f, -1426f), -743f, vec4<f32>(483f, 225f, 149f, -2484f), vec3<i32>(14363i, u_input.d.x, u_input.c))), 1969f, 935f), countOneBits(global1[_wgslsmith_index_u32(~1u, 1u)])), false, func_4(vec4<i32>(1i, u_input.c, 1i, select(u_input.c, -1i, true)), global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<bool>(any(!vec4<bool>(var_0, true, false, true)), var_0))), _wgslsmith_add_i32(u_input.c, u_input.c), select(~vec4<u32>(u_input.a, 1826u & u_input.a, u_input.b, _wgslsmith_sub_u32(u_input.b, 1u)), vec4<u32>(17162u, _wgslsmith_dot_vec3_u32(~vec3<u32>(60970u, u_input.e.x, 4294967295u), ~vec3<u32>(4294967295u, u_input.b, 93387u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(u_input.a, 1u)), firstTrailingBit(35906u)), ~_wgslsmith_add_u32(u_input.e.x, u_input.e.x)), var_0));
    global1 = array<vec3<i32>, 1>();
    global2 = 317f;
    global0 = array<Struct_4, 10>();
    global4 = array<vec2<i32>, 27>();
    global3 = array<vec2<bool>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -606f)), select(countOneBits(firstTrailingBit(vec2<u32>(8215u, 37188u))), vec2<u32>(1u, ~var_1.c.x), !var_0), vec3<u32>(~(~firstTrailingBit(2897u)), 1u, u_input.b));
}

