struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<f32> = vec4<f32>(1434f, 173f, -819f, -826f);

var<private> global2: array<Struct_2, 4>;

var<private> global3: Struct_3;

var<private> global4: array<vec2<i32>, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: bool, arg_3: u32) -> i32 {
    let var_0 = any(global3.a.wzy);
    var var_1 = vec2<f32>(-1000f, 575f);
    global1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(588f)), _wgslsmith_f_op_f32(f32(-1f) * -831f)), arg_0, var_1.x)));
    global4 = array<vec2<i32>, 19>();
    var var_2 = global3.b;
    return u_input.c.x;
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.b.x, global3.b.x | -1i, _wgslsmith_div_i32(-25195i, abs(u_input.c.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(u_input.b.x, 19u)], global4[_wgslsmith_index_u32(u_input.a, 19u)]), u_input.c.x, 1i), ~(-u_input.c))), -7030i, ~func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(arg_1 - global1.x))), global3.a, true, u_input.a | ~u_input.b.x));
    let var_1 = reverseBits(reverseBits(min(u_input.b, select(vec3<u32>(u_input.b.x, 49479u, 8600u), u_input.b, global3.a.x) ^ u_input.b)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-563f)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(988f - global1.x), -701f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -908f, 1434f, global1.x) + vec4<f32>(global1.x, -1000f, arg_1, global1.x)), vec4<f32>(arg_1, arg_1, -248f, -1000f), global3.a.x && global3.a.x))))));
    global4 = array<vec2<i32>, 19>();
    var var_2 = u_input.c;
    return Struct_2(Struct_1(reverseBits(vec3<i32>(i32(-1i) * -2147483647i, 13683i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, var_2.x, var_2.x), var_0))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1591f, _wgslsmith_div_f32(-230f, arg_1), _wgslsmith_f_op_f32(global1.x + arg_1), _wgslsmith_f_op_f32(sign(-1267f))), vec4<f32>(_wgslsmith_f_op_f32(-640f * arg_1), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(-769f, arg_1)), 512f))), global3.a), !global3.a.zy, Struct_1(abs(u_input.c | vec3<i32>(-1i, 1i, -1i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, arg_1, -402f, -946f) * vec4<f32>(-1027f, arg_1, global1.x, -322f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -864f, 1610f, global1.x), vec4<f32>(-1344f, arg_1, arg_1, -456f), global3.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-719f, 323f, 1291f, global1.x) + vec4<f32>(1327f, -1487f, 1333f, -579f)))), vec4<bool>(!(!global3.a.x), false, all(!vec4<bool>(global3.a.x, false, false, global3.a.x)), -1i >= ~var_2.x)), arg_1, global1.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec3<f32> {
    global4 = array<vec2<i32>, 19>();
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-117f, global1.x, global1.x, 978f) + vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), 1956f, _wgslsmith_f_op_f32(-838f + _wgslsmith_div_f32(-331f, _wgslsmith_f_op_f32(step(459f, 906f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f)) * _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(ceil(global1.x)), true)))));
    var var_0 = arg_1;
    var var_1 = Struct_4(Struct_3(vec4<bool>(all(vec4<bool>(true, global3.a.x, global3.a.x, arg_1.a.x)), !any(arg_1.a.ywz), arg_1.a.x != any(vec2<bool>(var_0.a.x, false)), false), ~(-_wgslsmith_div_vec2_i32(var_0.b, vec2<i32>(global3.b.x, 1i)))), 533f);
    let var_2 = vec4<u32>(~(u_input.a << (u_input.b.x % 32u)) & _wgslsmith_div_u32(~u_input.b.x, 37205u), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(55010u, u_input.b.x, 37498u, 47531u), vec4<u32>(u_input.a, u_input.a, 1u, u_input.b.x)), ~1u), ~(~reverseBits(u_input.a)), _wgslsmith_mult_u32(firstTrailingBit(u_input.a), u_input.b.x >> (u_input.a % 32u)) ^ min(u_input.b.x, reverseBits(u_input.a))) >> (~(vec4<u32>(reverseBits(1u), abs(u_input.b.x), _wgslsmith_sub_u32(4294967295u, 55341u), u_input.b.x) ^ ((vec4<u32>(u_input.a, u_input.a, u_input.b.x, 100782u) & vec4<u32>(1u, u_input.a, 1u, u_input.b.x)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(50764u, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 0u)))) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)), var_1.b), arg_0.a.b.wyw, vec3<bool>(!(!var_1.a.a.x), true, true)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(688f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(round(arg_2.b.x)))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b) - vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.b.x)), _wgslsmith_div_f32(-422f, 1238f), func_2(2147483647i, -1597f).a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -269f)))) * arg_2.b);
    var var_1 = 0u;
    global2 = array<Struct_2, 4>();
    var var_2 = arg_2.a ^ select(~_wgslsmith_mult_vec3_i32(vec3<i32>(-14066i, arg_2.a.x, -1i), u_input.c) & countOneBits(~u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(u_input.c.x, u_input.c.x)), ~global3.b.x, ~global3.b.x), ~arg_2.a ^ vec3<i32>(u_input.c.x, -1i, u_input.c.x)), global3.a.xxx);
    return arg_2.c.zy;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec4<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.x + arg_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.x)), -997f) - arg_0))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x)));
    return !func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2(15643i, arg_2.x), Struct_3(global3.a, u_input.c.xx)))), 1u, func_2(countOneBits(global3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -2653f)).a);
}

fn func_6(arg_0: vec2<bool>) -> vec4<bool> {
    global0 = false;
    global4 = array<vec2<i32>, 19>();
    let var_0 = ~(~select(vec4<i32>(~global3.b.x, 1i, 50873i, i32(-1i) * -2147483647i), ~(~vec4<i32>(0i, u_input.c.x, 15357i, global3.b.x)), global3.a.x && global3.a.x));
    global2 = array<Struct_2, 4>();
    global3 = Struct_3(global3.a, var_0.xz);
    return !select(vec4<bool>(global3.a.x, true, arg_0.x, global3.a.x), !global3.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(-7145i, -30229i, global3.b.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-710f, global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -598f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2404f * global1.x))), global1.x), !func_6(func_1(_wgslsmith_f_op_f32(-global1.x), true, vec4<f32>(-919f, global1.x, global1.x, global1.x))));
    global2 = array<Struct_2, 4>();
    var var_1 = global3.a.zz;
    var var_2 = var_1.x;
    let var_3 = vec4<f32>(func_2(global3.b.x, -574f).c.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x)))) * _wgslsmith_f_op_f32(474f + _wgslsmith_div_f32(1691f, -1105f))), 1901f, var_0.b.x);
    var var_4 = Struct_4(Struct_3(global3.a, ~(-u_input.c.yx)), _wgslsmith_f_op_f32(select(var_3.x, 348f, global3.a.x)));
    let var_5 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_4.b, 1911f, -2210f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(var_0.b.x)));
}

