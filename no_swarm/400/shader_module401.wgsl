struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<f32, 25> = array<f32, 25>(-1800f, -404f, 1828f, -696f, -1992f, -134f, -805f, -401f, 470f, 1718f, -109f, -556f, -985f, 121f, 1640f, 616f, 1425f, -218f, -463f, 364f, 2562f, 197f, 990f, -1785f, 333f);

var<private> global2: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(-15596i, 47075i, -1i), vec3<i32>(-41615i, -4433i, -1i), vec3<i32>(-43639i, -1i, -17519i), vec3<i32>(92090i, 2147483647i, -58419i), vec3<i32>(-47045i, -1i, 33105i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(2405i, -5313i, 1i), vec3<i32>(23647i, 13858i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), -26044i), vec3<i32>(0i, -73333i, -1i), vec3<i32>(i32(-2147483648), 5139i, 8947i), vec3<i32>(i32(-2147483648), -25116i, -32481i), vec3<i32>(i32(-2147483648), 2147483647i, -50026i), vec3<i32>(5263i, -1i, -15556i), vec3<i32>(-29241i, 1i, 1i), vec3<i32>(2147483647i, 2147483647i, -783i), vec3<i32>(0i, -15240i, 64138i), vec3<i32>(2147483647i, 46263i, 1i), vec3<i32>(-37231i, -4371i, 43174i), vec3<i32>(-13221i, -6403i, -29140i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(22293i, 1i, -1i), vec3<i32>(-1i, 33399i, 2147483647i), vec3<i32>(-30062i, -4912i, -4769i));

var<private> global3: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    global2 = array<vec3<i32>, 24>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(global3.c.e.x, 25u)], 909f, -330f, -544f), vec4<f32>(554f, 1536f, global1[_wgslsmith_index_u32(25992u, 25u)], global3.c.d))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(0u, 25u)], 209f, global3.c.a.x, global3.c.d)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, 745f, global3.c.a.x, -1054f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1149f, global1[_wgslsmith_index_u32(global3.c.e.x, 25u)], 1152f, -487f))))), Struct_2(select(true, true, -1126f < global3.c.a.x) && global3.c.b, vec2<i32>(-1i) * -(vec2<i32>(arg_0, 2147483647i) << (global3.c.e % vec2<u32>(32u))), global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(4294967295u, 1u, 24681u))), 6u)]));
    var var_1 = ~vec4<u32>(~_wgslsmith_mult_u32(0u, 17537u), max(global3.c.e.x, var_0.b.c.e.x), ~global3.c.e.x, ~(~(global3.c.e.x ^ u_input.d)));
    global0 = array<Struct_1, 6>();
    let var_2 = Struct_2(_wgslsmith_div_i32(arg_0, ~global3.b.x) > firstTrailingBit(_wgslsmith_add_i32(select(var_0.b.c.c, 794i, var_0.b.a), 0i)), vec2<i32>(min(_wgslsmith_mult_i32(arg_1, _wgslsmith_div_i32(40844i, -48908i)), min(-21660i, abs(arg_0))), arg_1), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(228f * global1[_wgslsmith_index_u32(548u, 25u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(692f * global1[_wgslsmith_index_u32(0u, 25u)])), 566f), (i32(-1i) * -arg_0) == _wgslsmith_sub_i32(countOneBits(arg_1), _wgslsmith_div_i32(var_0.b.b.x, 0i)), _wgslsmith_div_i32(0i, -(var_0.b.c.c | 32466i)), _wgslsmith_div_f32(-936f, var_0.b.c.d), reverseBits(var_1.yx)));
    return false;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec4<f32>) -> bool {
    global0 = array<Struct_1, 6>();
    var var_0 = Struct_1(arg_1.a.xwx, all(vec3<bool>(func_3(-arg_0.b.b.x, ~u_input.b.x), true, (true & arg_0.b.c.b) && true)), arg_0.b.c.c, arg_0.b.c.a.x, arg_1.b.c.e);
    let var_1 = arg_0.a.x;
    global0 = array<Struct_1, 6>();
    let var_2 = ~(~firstLeadingBit(vec2<u32>(abs(0u), ~var_0.e.x)));
    return arg_0.b.c.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec4<bool>) -> u32 {
    var var_0 = 374f;
    var var_1 = !(!vec3<bool>(global3.c.b, false, all(!arg_3)));
    global0 = array<Struct_1, 6>();
    var var_2 = ~global3.b;
    var var_3 = !(!(!arg_0.x));
    return select(4294967295u, ~select(87970u, _wgslsmith_sub_u32(~19290u, u_input.d & 29018u), true), false);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<i32>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-955f * global3.c.a.x)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * _wgslsmith_f_op_f32(-global3.c.d))))), _wgslsmith_f_op_f32(-global3.c.d), -338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.d)));
    global0 = array<Struct_1, 6>();
    let var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(~global3.c.e.x, _wgslsmith_mult_u32(28691u, global3.c.e.x)), global3.c.e)), 6u)];
    var var_2 = vec4<u32>(0u, countOneBits(48468u), ~(~global3.c.e.x), 4480u);
    let var_3 = Struct_1(var_1.a, global3.a, global3.c.c & u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-562f))))) + var_1.d), vec2<u32>(countOneBits(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_1.e), vec2<u32>(70615u, 40441u))), _wgslsmith_sub_u32(u_input.d, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_1.e.x, global3.c.e.x), ~54548u))));
    return func_4(!vec3<bool>(false, global3.a, true), vec2<bool>(true, var_3.b), -2147483647i, select(select(select(vec4<bool>(var_1.b, var_1.b, true, true), vec4<bool>(var_3.b, false, global3.a, true), vec4<bool>(false, false, false, false)), !vec4<bool>(true, false, arg_0.x, true), func_2(Struct_3(vec4<f32>(717f, 617f, 1467f, var_0.x), Struct_2(arg_1.x, arg_2, var_3)), Struct_3(vec4<f32>(-909f, var_1.d, 328f, 404f), Struct_2(var_3.b, arg_2, Struct_1(var_1.a, true, -1i, -1333f, global3.c.e))), vec4<f32>(var_3.d, 1460f, -362f, 229f), vec4<f32>(global3.c.d, global1[_wgslsmith_index_u32(70612u, 25u)], -1000f, 1000f))), !select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(var_1.b, false, arg_1.x, arg_1.x), vec4<bool>(var_3.b, false, false, false)), any(!vec3<bool>(arg_1.x, arg_1.x, false)))) & 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(0u ^ reverseBits(func_1(select(vec2<bool>(true, global3.a), vec2<bool>(global3.c.b, false), vec2<bool>(global3.a, false)), select(vec2<bool>(global3.a, false), vec2<bool>(false, global3.c.b), true), vec2<i32>(global3.b.x, -8059i)))), 25u)];
    let var_1 = Struct_2(!(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~47298u, 25u)], global3.c.a.x)) <= _wgslsmith_f_op_f32(select(1095f, _wgslsmith_f_op_f32(global3.c.d * 418f), true))), vec2<i32>(-20137i, 1i), Struct_1(global3.c.a, true, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.e.x, global3.c.c), 0i, i32(-1i) * -2147483647i), _wgslsmith_sub_vec3_i32(~u_input.b, vec3<i32>(2147483647i, -83370i, u_input.e.x) ^ vec3<i32>(-6437i, 2147483647i, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.c.a.x))), _wgslsmith_add_vec2_u32(global3.c.e, ~vec2<u32>(1u, 4294967295u))));
    let var_2 = abs(vec4<i32>(-1i) * -(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_1.b.x, -26857i, 1i), vec4<i32>(u_input.b.x, u_input.e.x, -32917i, 2147483647i))));
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d << (~(~26759u) % 32u), global3.c.e.x & global3.c.e.x, global3.c.e.x), ~(~(~(vec4<u32>(var_1.c.e.x, u_input.d, u_input.d, 4294967295u) & vec4<u32>(0u, var_1.c.e.x, 51397u, u_input.d)))));
    var var_4 = vec4<i32>(firstLeadingBit(~((i32(-1i) * -15752i) ^ var_1.c.c)), u_input.c, -22777i, 0i);
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.d), _wgslsmith_f_op_f32(f32(-1f) * -616f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(var_3.zz, var_3.yy), vec4<f32>(var_5, 330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.d) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(40853u, 25u)]))), _wgslsmith_f_op_f32(-global3.c.d)), -1000f, var_3.x);
}

