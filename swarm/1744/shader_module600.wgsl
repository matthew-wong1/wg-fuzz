struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(2147483647i, i32(-2147483648), -6138i), vec3<i32>(i32(-2147483648), -5954i, 2147483647i), vec3<i32>(i32(-2147483648), -10338i, -33289i), vec3<i32>(21471i, 16469i, 1i), vec3<i32>(-12535i, 4414i, i32(-2147483648)), vec3<i32>(-22034i, 2147483647i, 1i), vec3<i32>(14020i, 2147483647i, 15785i), vec3<i32>(-6226i, 2147483647i, 12176i), vec3<i32>(1i, 67019i, 1i), vec3<i32>(-1i, -10319i, 2732i), vec3<i32>(64075i, i32(-2147483648), 6381i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(67387i, 0i, i32(-2147483648)), vec3<i32>(47212i, 2147483647i, 8692i), vec3<i32>(1i, -12337i, -18946i), vec3<i32>(408i, 0i, -43180i), vec3<i32>(0i, 0i, 0i), vec3<i32>(-10675i, -1i, -1i), vec3<i32>(-32109i, 23054i, -1i), vec3<i32>(1i, 52988i, 0i), vec3<i32>(0i, 55890i, 13879i));

var<private> global1: array<Struct_2, 1>;

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(1i, -34273i, 1i), vec3<i32>(-5411i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, 12909i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(i32(-2147483648), -62584i, 2147483647i), vec3<i32>(0i, 20780i, 2147483647i), vec3<i32>(0i, -1i, 1i), vec3<i32>(1i, 1i, 36896i), vec3<i32>(6617i, -1i, 30690i), vec3<i32>(-42656i, 1i, 2147483647i), vec3<i32>(1i, 1i, 0i), vec3<i32>(1i, -2967i, -23369i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(-1i, -1i, 7963i));

var<private> global4: array<vec2<bool>, 23>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, _wgslsmith_f_op_f32(1912f * -756f), _wgslsmith_f_op_f32(f32(-1f) * -1355f))));
    var var_1 = _wgslsmith_clamp_i32(-52402i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(arg_2.d), -9418i, ~0i, countOneBits(-25455i)) ^ u_input.d, reverseBits(u_input.d)), 0i);
    var var_2 = Struct_1(vec2<f32>(-440f, arg_2.b.a.x), 27486u, 84781u);
    global4 = array<vec2<bool>, 23>();
    let var_3 = var_2.c;
    return var_2.a.x;
}

fn func_2() -> bool {
    global2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(global2.a.x)), _wgslsmith_f_op_f32(-global2.a.x)), ~29676u, global2.b);
    global4 = array<vec2<bool>, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(2732f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_4(false), global2.a.x, Struct_2(32471i, Struct_1(vec2<f32>(global2.a.x, 135f), 1619u, 0u), vec2<i32>(u_input.e.x, -2147483647i), 89696i, false), global1[_wgslsmith_index_u32(9420u, 1u)])))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), 941f)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(676f, _wgslsmith_f_op_f32(global2.a.x + 991f))), ~(~0u), _wgslsmith_sub_u32(19814u, _wgslsmith_mult_u32(0u, ~_wgslsmith_div_u32(1u, 7338u))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-731f)), _wgslsmith_f_op_f32(trunc(var_1.a.x))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2194f, -837f) - vec2<f32>(var_1.a.x, -1529f)))))), var_1.b, abs(78453u));
    return (true & !(all(global4[_wgslsmith_index_u32(var_2.b, 23u)]) & (u_input.e.x != -1i))) && all(select(global4[_wgslsmith_index_u32(var_1.c, 23u)], !select(vec2<bool>(false, true), global4[_wgslsmith_index_u32(0u, 23u)], true), !(!global4[_wgslsmith_index_u32(var_1.b, 23u)])));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> u32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_mult_i32(-abs(u_input.e.x), u_input.b);
    let var_2 = _wgslsmith_clamp_i32(-2147483647i, u_input.b, firstTrailingBit(abs(max(0i, -14788i)) | select(~(-1i), 1i, var_1 != 2147483647i)));
    return 7833u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(-2147483647i, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a + global2.a)), global2.b, global2.b), u_input.d.zw, firstTrailingBit(_wgslsmith_sub_i32(min(2484i, u_input.b), -10253i)), any(vec3<bool>(all(vec4<bool>(false, false, true, false)), true, any(vec3<bool>(true, false, true))))), !(!select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1592f, global2.a.x)))), firstTrailingBit(~_wgslsmith_mult_u32(u_input.a, 35749u)), ~global2.b << (_wgslsmith_mod_u32(min(47628u, 470u), u_input.a) % 32u)));
    global3 = array<vec3<i32>, 14>();
    global0 = array<vec3<i32>, 21>();
    var var_1 = reverseBits(firstLeadingBit(vec3<u32>(func_1(var_0.d.a.x, 1f, -vec3<i32>(0i, u_input.b, var_0.a.a)), ~(~var_0.d.c), _wgslsmith_mod_u32(~u_input.a, ~0u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global2.a))) - var_0.a.b.a);
    global3 = array<vec3<i32>, 14>();
    var var_3 = _wgslsmith_f_op_f32(-184f - 1519f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(1282f * var_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1970f - var_2.x))), _wgslsmith_f_op_f32(abs(-243f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1227f)))), ~(~(~(~var_0.a.b.c))));
}

