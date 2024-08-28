struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<Struct_4, 23>;

var<private> global2: f32 = 267f;

var<private> global3: array<u32, 21> = array<u32, 21>(44502u, 43845u, 0u, 18230u, 27964u, 3452u, 4294967295u, 16029u, 4294967295u, 1u, 4294967295u, 1u, 1u, 1u, 14928u, 4294967295u, 29969u, 0u, 8669u, 0u, 0u);

var<private> global4: vec4<f32> = vec4<f32>(-222f, -399f, 1000f, 560f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_3.b.a.x);
    global1 = array<Struct_4, 23>();
    global0 = array<u32, 27>();
    var_0 = _wgslsmith_f_op_f32(-arg_1.c.a.x);
    let var_1 = _wgslsmith_clamp_vec3_i32(arg_1.a.zww, arg_3.a.wzw, arg_1.a.wwy);
    return 2147483647i;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = func_3(115f, Struct_2(-vec4<i32>(select(1i, arg_2.a.x, true), -19972i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_2.a.x, -16140i), arg_1.a), i32(-1i) * -2147483647i), arg_2.c, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.b.a, vec3<f32>(721f, -1754f, global4.x))))), abs(vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(73229u, select(47025u, 4294967295u, true)), 21u)], firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 27u)], 2239u, 75624u, 55213u), reverseBits(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(32635u, 21u)], 4294967295u, 20194u))), (4294967295u | global3[_wgslsmith_index_u32(16213u, 21u)]) ^ ~global0[_wgslsmith_index_u32(4294967295u, 27u)])), arg_2);
    global4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.a.x, 602f, -1162f, -1691f) * vec4<f32>(-993f, -2145f, 1000f, -440f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, arg_1.c.a.x, 805f, 603f), vec4<f32>(global4.x, 920f, arg_1.c.a.x, arg_2.b.a.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.b.a.x, 1005f, 1000f, arg_2.c.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1038f, arg_1.b.a.x, 2354f, global4.x)))))));
    var var_1 = _wgslsmith_dot_vec2_i32(select(max(abs(_wgslsmith_mod_vec2_i32(arg_1.a.yx, vec2<i32>(15379i, 2147483647i))), reverseBits(arg_2.a.yw)), ~arg_1.a.xy ^ abs(max(arg_1.a.yz, vec2<i32>(36615i, -2147483647i))), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false)), ~_wgslsmith_sub_vec2_i32(select(vec2<i32>(17115i, -1i) ^ arg_1.a.xx, arg_2.a.xw, true), abs(_wgslsmith_div_vec2_i32(arg_1.a.yz, vec2<i32>(var_0, 13159i)))));
    var var_2 = _wgslsmith_f_op_f32(-1398f + arg_1.b.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_2.b.a)) * _wgslsmith_f_op_vec3_f32(round(global4.yzw)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(global4.xzy, var_3)), _wgslsmith_f_op_vec3_f32(-arg_2.b.a), true)), _wgslsmith_f_op_vec3_f32(-var_3))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1323f, -522f, 331f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.x, 1000f, 134f))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)))))) * vec3<f32>(arg_2.b.a.x, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(ceil(-377f)), true)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<u32, 27>();
    global2 = _wgslsmith_f_op_f32(-arg_0.a.x);
    let var_0 = Struct_2(arg_2.a, arg_2.b, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-213f, 365f, -158f), arg_0.a))) - _wgslsmith_f_op_vec3_f32(arg_0.a + _wgslsmith_f_op_vec3_f32(func_2(arg_2.a.x, arg_2, Struct_2(vec4<i32>(arg_2.a.x, 7114i, 0i, arg_2.a.x), arg_2.c, arg_1)))))));
    let var_1 = Struct_4(vec4<f32>(-586f, -483f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1180f))))), var_0.b.a.x), -926f, var_0);
    var var_2 = _wgslsmith_f_op_vec4_f32(-var_1.a);
    return select(!select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, false, true), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), !any(vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, _wgslsmith_add_i32(arg_2.a.x, 0i) != 21670i, select(all(vec3<bool>(false, false, true)), all(vec4<bool>(true, false, true, false)), var_0.a.x >= var_1.c.a.x)), select(vec4<bool>(false, any(vec4<bool>(false, false, true, true)), all(vec4<bool>(false, false, false, false)), global3[_wgslsmith_index_u32(u_input.a, 21u)] == 0u), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !any(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))), select(vec4<bool>(false, true, false, true), func_1(Struct_1(global4.wwx), Struct_1(global4.wzx), Struct_2(vec4<i32>(-1i, 2277i, -24680i, 0i), Struct_1(vec3<f32>(-1720f, global4.x, global4.x)), Struct_1(vec3<f32>(global4.x, global4.x, global4.x)))), true), true));
    let var_1 = Struct_2(vec4<i32>(1i, 1i, 1i, 1i) << (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(13325u, 27u)], 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<u32>(18689u, u_input.a, 31120u, 15752u))) % vec4<u32>(32u)), Struct_1(global4.ywy), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-2313f, _wgslsmith_f_op_f32(ceil(1000f)), -339f), global4.xyx)));
    let var_2 = var_0.x;
    var var_3 = u_input.a;
    var var_4 = var_1.c;
    var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_4.a + global4.yyw))));
    let x = u_input.a;
    s_output = StorageBuffer(global4.x, var_1.a.x);
}

