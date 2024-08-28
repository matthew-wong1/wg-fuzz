struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec2<u32>;

var<private> global2: bool = false;

var<private> global3: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(1000f, 1591f, -688f), vec3<f32>(-156f, 397f, 1465f), vec3<f32>(318f, -1000f, -733f), vec3<f32>(-1889f, -770f, -863f), vec3<f32>(-364f, -1284f, 956f), vec3<f32>(-404f, -579f, 2394f), vec3<f32>(-993f, 249f, 1267f), vec3<f32>(669f, -2263f, -227f), vec3<f32>(-539f, -1162f, 311f), vec3<f32>(-1256f, -1024f, -790f), vec3<f32>(-909f, 470f, -1208f), vec3<f32>(1081f, -330f, -662f), vec3<f32>(-235f, 1365f, 1304f), vec3<f32>(531f, -892f, -663f), vec3<f32>(723f, 1000f, 793f), vec3<f32>(-163f, -191f, 1648f), vec3<f32>(-1819f, 1196f, -404f), vec3<f32>(-134f, -1732f, 1000f), vec3<f32>(1000f, 776f, 637f), vec3<f32>(341f, -635f, -326f), vec3<f32>(173f, 1000f, 101f), vec3<f32>(309f, -245f, -289f));

var<private> global4: Struct_5 = Struct_5(vec3<u32>(0u, 5330u, 1u), true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_5, arg_3: Struct_1) -> bool {
    var var_0 = 1u;
    var var_1 = true;
    var_1 = arg_2.b;
    return !(!(!(!(arg_3.a.x < arg_0))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec4<i32>, arg_3: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(arg_3.e.x + -943f);
    global0 = Struct_5(vec3<u32>(global1.x, u_input.c, ~(~u_input.c)), any(arg_3.d));
    var var_1 = !global4.b;
    global3 = array<vec3<f32>, 22>();
    let var_2 = global4.a.x;
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    var var_0 = -1i;
    var var_1 = true;
    let var_2 = -711f;
    global2 = (false == any(arg_0.a.wyw)) == all(!(!vec2<bool>(true, global4.b)));
    return min(~1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(23611i, u_input.a.x, 14291i), vec3<i32>(u_input.b.x, 0i, u_input.a.x)), vec3<i32>(u_input.a.x, 0i, -1i) ^ vec3<i32>(-68786i, -990i, u_input.b.x)), vec3<i32>(-6609i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, 1i), vec3<i32>(u_input.b.x, 42624i, 0i)), u_input.b.x))) | u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(!vec4<bool>(false, global0.b, global4.b, true), select(vec4<bool>(global4.b, global0.b, global0.b, global4.b), vec4<bool>(true, false, global0.b, global0.b), false), true)) && any(vec2<bool>(!global4.b, global0.b));
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(abs(u_input.a.x), u_input.a.x), 1i, firstLeadingBit(1i), -2147483647i);
    var var_2 = countOneBits(func_3(Struct_2(vec4<bool>(global4.b, func_1(1000f, 68909u, Struct_5(vec3<u32>(global0.a.x, global1.x, 20438u), false), Struct_1(vec3<f32>(-315f, 479f, -1465f), var_1.x)), true, func_2(global4.a.xx, Struct_5(vec3<u32>(8386u, global1.x, global4.a.x), global4.b), vec4<i32>(39649i, var_1.x, var_1.x, -42859i), Struct_4(Struct_3(vec4<f32>(-2277f, -1000f, -1219f, -607f)), -400f, u_input.a.x, vec2<bool>(global4.b, true), vec2<f32>(1333f, -1490f)))), true && func_1(246f, 1u, Struct_5(global0.a, true), Struct_1(global3[_wgslsmith_index_u32(global4.a.x, 22u)], var_1.x)), _wgslsmith_mult_u32(~4470u, ~global4.a.x), vec2<f32>(_wgslsmith_div_f32(-1000f, 337f), _wgslsmith_f_op_f32(abs(1194f)))), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1761f, -2686f, -103f, 589f) - vec4<f32>(-153f, 406f, -1530f, -1480f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-740f, -1056f, -185f, 404f))))));
    var var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(285f)) * _wgslsmith_f_op_f32(trunc(1773f))) * 1f), _wgslsmith_f_op_f32(floor(358f)), 1792f, -213f));
    let var_4 = Struct_2(select(select(select(vec4<bool>(global4.b, true, false, global4.b), select(vec4<bool>(global0.b, global0.b, false, global4.b), vec4<bool>(false, global0.b, global4.b, global4.b), vec4<bool>(global0.b, false, global4.b, false)), select(vec4<bool>(global0.b, global4.b, global0.b, true), vec4<bool>(global0.b, false, true, false), true)), select(select(vec4<bool>(true, false, global4.b, global4.b), vec4<bool>(global0.b, global0.b, global4.b, true), global0.b), select(vec4<bool>(global4.b, true, true, true), vec4<bool>(false, global4.b, false, false), global4.b), select(vec4<bool>(global4.b, false, true, global4.b), vec4<bool>(global0.b, global0.b, global4.b, global0.b), global0.b)), true | all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(select(global0.b, global4.b, var_3.a.x < 214f), true, (global4.b && global0.b) & global0.b, any(vec3<bool>(false, global4.b, true)))), !any(!(!vec2<bool>(global0.b, true))), ~abs(global1.x & _wgslsmith_dot_vec2_u32(vec2<u32>(global4.a.x, global0.a.x), vec2<u32>(global1.x, u_input.c))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_3.a.xx, _wgslsmith_f_op_vec2_f32(vec2<f32>(892f, 262f) + var_3.a.yz)))))));
    let var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3.a.x)), var_3.a.x, -1009f, -1074f)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-1i), -abs(abs(~vec4<i32>(var_1.x, 2147483647i, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(step(var_3.a, vec4<f32>(var_4.d.x, 484f, _wgslsmith_f_op_f32(step(var_3.a.x, _wgslsmith_f_op_f32(var_5.a.x - var_5.a.x))), -185f))), 0u);
}

