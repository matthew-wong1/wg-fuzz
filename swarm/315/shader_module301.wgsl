struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false));

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(1u, vec4<i32>(-1i, i32(-2147483648), -39238i, 1i))), Struct_2(Struct_1(0u, vec4<i32>(2198i, 2147483647i, 27936i, 1i))), Struct_2(Struct_1(33394u, vec4<i32>(0i, i32(-2147483648), 16720i, 29947i))), Struct_2(Struct_1(1u, vec4<i32>(-26591i, -1i, -1i, 1i))), Struct_2(Struct_1(1u, vec4<i32>(25456i, 1i, -29558i, 0i))), Struct_2(Struct_1(38710u, vec4<i32>(24196i, 1i, -47221i, 35425i))), Struct_2(Struct_1(1u, vec4<i32>(i32(-2147483648), -1i, -23738i, -26324i))), Struct_2(Struct_1(1u, vec4<i32>(0i, -42584i, -1i, 0i))), Struct_2(Struct_1(1u, vec4<i32>(623i, 0i, 1i, -42374i))), Struct_2(Struct_1(131389u, vec4<i32>(29079i, -1i, -1i, i32(-2147483648)))), Struct_2(Struct_1(1u, vec4<i32>(0i, 5789i, 2147483647i, 17726i))), Struct_2(Struct_1(24005u, vec4<i32>(24738i, 1i, 15769i, i32(-2147483648)))), Struct_2(Struct_1(40992u, vec4<i32>(1i, 2147483647i, 16158i, 0i))), Struct_2(Struct_1(12974u, vec4<i32>(-12361i, i32(-2147483648), -18555i, i32(-2147483648)))), Struct_2(Struct_1(83050u, vec4<i32>(1i, i32(-2147483648), 17895i, -27033i))));

var<private> global2: array<Struct_3, 25>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = arg_1.a;
    var var_1 = u_input.d.x;
    global1 = array<Struct_2, 15>();
    let var_2 = Struct_3(arg_1.a, ((abs(4294967295u) | u_input.d.x) << (~_wgslsmith_div_u32(2031u, var_0.a) % 32u)) | (var_0.a << (_wgslsmith_dot_vec2_u32(u_input.d.zz, ~u_input.d.zy) % 32u)));
    let var_3 = _wgslsmith_mod_vec4_u32(select(~(~u_input.d), u_input.d, true), u_input.d);
    return global2[_wgslsmith_index_u32(u_input.d.x, 25u)];
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>, arg_3: f32) -> vec3<bool> {
    let var_0 = arg_0.b.x;
    var var_1 = u_input.d.wyw;
    var var_2 = arg_2;
    var var_3 = func_2(arg_0.b.yy, Struct_3(func_2(select(!arg_0.b.yx, arg_0.b.yy, vec2<bool>(var_0, false)), global2[_wgslsmith_index_u32(4294967295u, 25u)]).a, 0u)).a;
    global2 = array<Struct_3, 25>();
    return arg_0.b;
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    let var_0 = ~u_input.d.xwx;
    let var_1 = Struct_4(func_2(arg_0.b.zz, arg_0.a), func_3(Struct_4(Struct_3(arg_0.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.a.a.a, 36932u, arg_0.a.b), u_input.d)), vec3<bool>(arg_0.b.x, !arg_0.b.x, false || arg_0.b.x)), arg_0.a.b, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-290f - 296f))), _wgslsmith_f_op_f32(ceil(-1223f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1095f - 111f))), _wgslsmith_f_op_f32(f32(-1f) * -1653f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-563f * -506f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-603f))))));
    let var_2 = arg_0.a.b;
    let var_3 = global0[_wgslsmith_index_u32(abs(4294967295u), 10u)];
    var var_4 = ~arg_0.a.b;
    return arg_0.a.a;
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    var var_0 = true;
    global2 = array<Struct_3, 25>();
    let var_1 = func_2(arg_3.b.yy, func_2(!(!(!arg_3.b.yx)), Struct_3(Struct_1(_wgslsmith_clamp_u32(1188u, 4294967295u, arg_2.a), vec4<i32>(arg_2.b.x, arg_3.a.a.b.x, arg_1.a.a.b.x, arg_2.b.x)), 78513u))).a;
    var var_2 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_div_f32(199f, arg_0))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 - -814f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0)));
    return arg_1.a.b;
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_3) -> vec4<bool> {
    global0 = array<vec4<bool>, 10>();
    global2 = array<Struct_3, 25>();
    var var_0 = Struct_1(~countOneBits(~firstLeadingBit(20138u)), _wgslsmith_add_vec4_i32(select(func_1(Struct_4(arg_3, vec3<bool>(false, false, false)), arg_1.x).b, vec4<i32>(arg_2.a.b.x, arg_3.a.b.x, -2897i, -u_input.e.x), select(select(vec4<bool>(false, true, false, false), global0[_wgslsmith_index_u32(4294967295u, 10u)], vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(countOneBits(u_input.d.x), 10u)])), -vec4<i32>(arg_3.a.b.x, 35483i, ~33589i, 2147483647i)));
    var_0 = Struct_1(arg_3.b, u_input.e & ~firstTrailingBit(~var_0.b));
    var var_1 = true;
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~u_input.d, u_input.d), reverseBits(u_input.d)), 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, 27399u, 4379u, 1u) ^ ~u_input.d, u_input.d), u_input.d, func_5(0u, -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, -1022i, 1i), vec4<i32>(-9148i, u_input.c.x, -2147483647i, u_input.b.x)), global1[_wgslsmith_index_u32(func_4(_wgslsmith_div_f32(1071f, 813f), Struct_4(Struct_3(Struct_1(34540u, vec4<i32>(0i, -2147483647i, -19528i, u_input.b.x)), u_input.d.x), vec3<bool>(true, false, true)), func_1(Struct_4(global2[_wgslsmith_index_u32(31254u, 25u)], vec3<bool>(false, true, true)), 27279i), Struct_4(Struct_3(Struct_1(u_input.d.x, vec4<i32>(u_input.a.x, 14656i, 0i, 0i)), u_input.d.x), vec3<bool>(false, false, true))), 15u)], func_2(vec2<bool>(true, true), global2[_wgslsmith_index_u32(~4294967295u, 25u)]))) & u_input.d;
    let var_1 = vec3<f32>(-114f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-164f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 633f)) + -1638f)), -996f);
    let var_2 = firstTrailingBit(~vec2<u32>(1u, ~0u));
    var var_3 = false;
    global1 = array<Struct_2, 15>();
    var var_4 = ~(~(~(vec2<u32>(20056u, 20295u) | (var_0.xz << (var_2 % vec2<u32>(32u))))));
    var var_5 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(sign(-280f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(var_1.x, 737f))), 1000f)));
    var var_6 = var_1;
    var var_7 = var_6.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, -220f, var_6.x, var_5.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_6.x, -2936f, var_7.x, var_1.x), vec4<f32>(var_5.x, var_1.x, -2211f, 1000f), false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_5.x, var_5.x, 365f, var_5.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1349f, -209f, var_7.x, var_1.x))))));
}

