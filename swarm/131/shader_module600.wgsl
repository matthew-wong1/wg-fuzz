struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, false), vec2<f32>(535f, 358f), 1u), Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(true, true), vec2<f32>(-647f, -2654f), 15966u), vec2<i32>(-1i, 0i));

var<private> global2: array<vec2<u32>, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1958f)), global1.b.c.x, _wgslsmith_f_op_f32(min(1f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.b.c.x, global1.a.c.x)) + _wgslsmith_f_op_f32(-global1.b.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-827f, global1.a.c.x, -448f, global1.b.c.x)))))));
    let var_1 = Struct_1(global1.a.a, select(vec2<bool>(any(global1.a.a), global1.b.b.x), select(!(!vec2<bool>(true, global1.b.b.x)), !select(global1.b.b, global1.b.a.zy, true), true), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.c) * global1.a.c), ~(~global1.a.d) & min(global1.a.d, global1.a.d));
    let var_2 = 4294967295u;
    global2 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 17>();
    return (global1.a.b.x & true) && global1.a.b.x;
}

fn func_2() -> Struct_3 {
    global1 = Struct_2(global1.b, Struct_1(vec4<bool>(true, true, any(select(vec4<bool>(global1.b.b.x, false, true, true), global1.b.a, vec4<bool>(false, global1.a.b.x, global1.a.a.x, false))), func_3()), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-395f, -773f) * global1.a.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.c.x, -111f)))), 1u), global1.c);
    let var_0 = -(~(-global1.c));
    global2 = array<vec2<u32>, 1>();
    let var_1 = global1.a;
    global2 = array<vec2<u32>, 1>();
    return Struct_3((firstTrailingBit(select(vec3<i32>(global1.c.x, var_0.x, var_0.x), vec3<i32>(33156i, 38938i, global1.c.x), global1.a.a.zwz)) | min(abs(vec3<i32>(-62614i, 48440i, global1.c.x)), -vec3<i32>(6193i, var_0.x, 2147483647i))) | _wgslsmith_mult_vec3_i32(select(select(vec3<i32>(var_0.x, -24326i, var_0.x), vec3<i32>(-42524i, -2147483647i, -39979i), vec3<bool>(global1.a.a.x, false, global1.a.b.x)), -vec3<i32>(var_0.x, 0i, var_0.x), select(var_1.a.yyw, var_1.a.ywy, vec3<bool>(var_1.b.x, var_1.b.x, false))), ~vec3<i32>(-2147483647i, var_0.x, var_0.x) & _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_0.x, var_0.x), vec3<i32>(global1.c.x, 37568i, var_0.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, 871f, global1.a.c.x, var_1.c.x), vec4<f32>(-724f, 406f, global1.a.c.x, global1.b.c.x), false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.b.c.x, -800f, global1.b.c.x, 453f)))))), Struct_2(Struct_1(!select(var_1.a, global1.b.a, global1.a.a), vec2<bool>(global1.a.a.x, !var_1.b.x), global1.b.c, _wgslsmith_sub_u32(~1344u, _wgslsmith_div_u32(24592u, u_input.a))), Struct_1(select(global1.b.a, select(vec4<bool>(true, global1.a.b.x, global1.b.a.x, global1.b.a.x), vec4<bool>(var_1.a.x, var_1.a.x, false, true), var_1.b.x), select(vec4<bool>(var_1.b.x, true, global1.a.b.x, var_1.a.x), global1.a.a, var_1.b.x)), !select(global1.a.b, var_1.a.yy, var_1.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c + var_1.c)), ~_wgslsmith_mod_u32(u_input.a, var_1.d)), var_0), global1.a);
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(select(-672f, var_0.c.a.c.x, !(true && func_3())));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1035f) + _wgslsmith_f_op_f32(-global1.a.c.x)), _wgslsmith_f_op_f32(sign(-782f)), 1590f)) + vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -113f))), -117f));
    var var_3 = _wgslsmith_sub_u32(min(~(~(var_0.c.b.d ^ 0u)), 1u | _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.d.d, 1133u, var_0.d.d), reverseBits(1u))), 0u);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, 1139f)))))));
    return func_2().c;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(!func_1().a.a, !vec2<bool>(433i > arg_0.c.x, func_2().c.b.b.x), vec2<f32>(func_2().b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.c.x) * _wgslsmith_f_op_f32(arg_2.c.x * global1.a.c.x))), 0u ^ arg_0.b.d), Struct_1(func_1().b.a, vec2<bool>(all(vec2<bool>(arg_1.a.x, false)), any(func_1().a.b)), global1.b.c, ~global1.a.d), _wgslsmith_div_vec2_i32(global1.c, _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global1.c.x, arg_0.c.x) | vec2<i32>(2147483647i, -712i), arg_0.c & vec2<i32>(global1.c.x, arg_0.c.x)), countOneBits(vec2<i32>(0i, global1.c.x)))));
    let var_1 = ~84559u;
    var var_2 = func_2();
    let var_3 = vec2<u32>(func_2().d.d, ~arg_2.d);
    global2 = array<vec2<u32>, 1>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -722f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-565f, -245f, false)), func_1().a.c.x)) + 869f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 1>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(), Struct_1(!global1.b.a, global1.a.b, vec2<f32>(global1.a.c.x, -206f), min(global1.a.d, 1u)), Struct_1(func_1().b.a, select(global1.b.b, global1.b.b, global1.a.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, -156f)), abs(38849u)), vec3<bool>(all(vec4<bool>(false, false, false, false)), true, false))) - _wgslsmith_f_op_f32(func_1().a.c.x - -258f)), _wgslsmith_f_op_f32(step(global1.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_1().a.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.c.x - 294f) + -1000f) * 298f));
    let var_1 = func_2().c.a;
    global2 = array<vec2<u32>, 1>();
    var var_2 = global1.b.a.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), global1.a.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-637f * _wgslsmith_f_op_f32(abs(global1.b.c.x))))), var_0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, -312f)))), _wgslsmith_f_op_f32(select(933f, _wgslsmith_f_op_f32(-1000f + 1927f), var_1.b.x)), -800f)));
    var var_4 = countOneBits(abs(49856u));
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.a, 0u), ~reverseBits(58774i), vec4<i32>(global1.c.x, 52358i, func_1().c.x, -1i), abs(reverseBits(reverseBits(~global0[_wgslsmith_index_u32(24421u, 17u)]))), global1.c.x);
}

