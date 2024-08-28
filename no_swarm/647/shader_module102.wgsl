struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: vec2<i32> = vec2<i32>(-54263i, -1i);

var<private> global2: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(1u, 36899u, 24768u, 4294967295u), vec4<u32>(78396u, 32845u, 4294967295u, 0u), vec4<u32>(2167u, 0u, 24102u, 23531u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(72462u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(97877u, 26989u, 17086u, 0u), vec4<u32>(92283u, 25011u, 4294967295u, 8944u), vec4<u32>(1u, 0u, 4294967295u, 22500u), vec4<u32>(4294967295u, 1509u, 5844u, 1u), vec4<u32>(4294967295u, 1u, 61017u, 22623u), vec4<u32>(4294967295u, 81672u, 1u, 47314u), vec4<u32>(110629u, 103737u, 57605u, 0u), vec4<u32>(40110u, 89512u, 0u, 20038u), vec4<u32>(27086u, 11794u, 0u, 1u), vec4<u32>(50068u, 4294967295u, 76829u, 47894u), vec4<u32>(0u, 62313u, 4294967295u, 52449u), vec4<u32>(1u, 17404u, 0u, 34751u), vec4<u32>(99090u, 88270u, 0u, 55896u), vec4<u32>(1u, 117468u, 0u, 80271u), vec4<u32>(1u, 30335u, 19551u, 0u), vec4<u32>(1u, 4294967295u, 0u, 0u));

var<private> global3: Struct_3 = Struct_3(Struct_2(vec3<f32>(171f, -1061f, 327f), Struct_1(vec4<i32>(13540i, 2147483647i, -51797i, 25102i), vec2<bool>(false, false), false)), vec4<i32>(-64004i, -16894i, 39047i, -1719i), Struct_1(vec4<i32>(-2891i, 1i, 1i, 70451i), vec2<bool>(true, true), false));

var<private> global4: array<vec3<u32>, 13>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    let var_0 = ~(~48096u);
    let var_1 = arg_0;
    let var_2 = vec4<bool>(false, arg_0.a.b.c, arg_1.c, true);
    let var_3 = var_2.wzx;
    let var_4 = _wgslsmith_mult_vec3_u32(select(~(~global4[_wgslsmith_index_u32(var_0, 13u)] & (vec3<u32>(1u, var_0, 4294967295u) | vec3<u32>(45521u, 1u, 18176u))), reverseBits(global4[_wgslsmith_index_u32(~0u, 13u)]) << (global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~25988u, 8899u), 13u)] % vec3<u32>(32u)), arg_0.c.b.x), global4[_wgslsmith_index_u32(11328u, 13u)]);
    return _wgslsmith_f_op_f32(sign(var_1.a.a.x));
}

fn func_3() -> f32 {
    global2 = array<vec4<u32>, 21>();
    global1 = countOneBits(-(u_input.a >> (vec2<u32>(1u, _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(0u, 13u)], vec3<u32>(36448u, 4294967295u, 0u))) % vec2<u32>(32u))));
    global4 = array<vec3<u32>, 13>();
    global0 = array<i32, 26>();
    global4 = array<vec3<u32>, 13>();
    return 2517f;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: i32) -> vec4<f32> {
    let var_0 = Struct_4(true, select(select(!global3.a.b.b, select(!vec2<bool>(global3.c.b.x, global3.c.c), !global3.a.b.b, global3.a.a.x != -1109f), global3.c.b), !global3.a.b.b, !global3.c.b), global3.a, Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(732f, global3.a.a.x, arg_0)))), Struct_1(vec4<i32>(-1i, -76064i, -39604i, u_input.a.x), !vec2<bool>(true, global3.a.b.b.x), all(vec2<bool>(false, global3.a.b.b.x)))), global3.b, global3.c), global3.a);
    var var_1 = var_0.d.c.a.x;
    var var_2 = global3.a.b;
    let var_3 = 25354u;
    global4 = array<vec3<u32>, 13>();
    return vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -423f))), var_0.b.x && var_0.e.b.c))), 2071f, -486f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global3.a.a.x, 344f))))))) - -2285f);
    let var_1 = 2947i | -u_input.b.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(global3.a, u_input.b, global3.a.b), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(46820u, 26u)], global0[_wgslsmith_index_u32(15252u, 26u)], 0i, 0i), global3.a.b.b, true))))), abs(vec2<u32>(min(firstLeadingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(57448u, 39294u, 4294967295u), vec3<u32>(1u, 0u, 30781u))), ~_wgslsmith_add_u32(0u, 1u))), -2147483647i, u_input.b.x));
    var var_3 = vec4<bool>(true, global3.a.b.c | all(select(vec4<bool>(global3.c.b.x, global3.c.b.x, false, false), vec4<bool>(true, global3.a.b.b.x, global3.c.b.x, false), !vec4<bool>(global3.c.b.x, true, global3.a.b.c, false))), all(!(!select(vec2<bool>(global3.a.b.b.x, global3.a.b.b.x), global3.c.b, true))), true);
    var var_4 = var_3.x;
    var var_5 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -719f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x - global3.a.a.x)))) < _wgslsmith_f_op_f32(f32(-1f) * -546f)) && true;
    let x = u_input.a;
    s_output = StorageBuffer(16909i, _wgslsmith_sub_vec2_i32(-u_input.a, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, ~(-97595i)), select(vec2<i32>(global3.a.b.a.x, -1i), u_input.b.zy, global3.a.b.b))), ~countOneBits(-(global3.c.a.zyy << (global4[_wgslsmith_index_u32(43327u, 13u)] % vec3<u32>(32u)))));
}

