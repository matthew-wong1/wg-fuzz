struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32> = vec2<i32>(-30794i, -5798i);

var<private> global2: array<u32, 25> = array<u32, 25>(15139u, 0u, 38815u, 111835u, 24002u, 33694u, 37023u, 37793u, 0u, 7570u, 1u, 1u, 1u, 63206u, 6772u, 4294967295u, 0u, 1u, 4834u, 4294967295u, 32304u, 51518u, 1u, 4294967295u, 4294967295u);

var<private> global3: Struct_3 = Struct_3(vec4<u32>(14945u, 1u, 23403u, 7474u), Struct_1(vec2<i32>(2449i, 0i), 554f, vec3<bool>(true, false, false), 2147483647i, vec2<f32>(-658f, 793f)), Struct_1(vec2<i32>(10500i, 2147483647i), 603f, vec3<bool>(false, false, false), 55161i, vec2<f32>(1647f, -648f)), 1137f);

var<private> global4: array<Struct_2, 15>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = global3.d;
    let var_1 = global4[_wgslsmith_index_u32(~min(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(0u, global2[_wgslsmith_index_u32(global3.a.x, 25u)]), ~global3.a.x, abs(select(6642u, u_input.b.x, global0.c.x))), 58165u), 15u)];
    var var_2 = global3.b;
    global2 = array<u32, 25>();
    var var_3 = ~((~_wgslsmith_div_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(45728u, 25u)], 7362u, 60325u), vec4<u32>(global2[_wgslsmith_index_u32(global3.a.x, 25u)], global3.a.x, u_input.b.x, 4294967295u)) << (min(global3.a, ~vec4<u32>(u_input.b.x, 0u, 0u, 0u)) % vec4<u32>(32u))) >> (~_wgslsmith_clamp_vec4_u32(~global3.a, ~global3.a, global3.a) % vec4<u32>(32u)));
    return 4294967295u;
}

fn func_2() -> u32 {
    return global3.a.x ^ func_3();
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_1 {
    global1 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, global3.c.a), u_input.c.zz << (~vec2<u32>(global3.a.x, u_input.b.x) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(u_input.c.xy, abs(vec2<i32>(-44118i, 49810i)) | ~u_input.a, ~_wgslsmith_add_vec2_i32(vec2<i32>(global1.x, -2147483647i), vec2<i32>(u_input.a.x, u_input.c.x)))), select(-vec2<i32>(-9971i, u_input.a.x), u_input.a, any(select(global3.b.c.zz, global0.c.zx, true))) ^ u_input.c.zx);
    var var_0 = 1u & select(46914u, ~30304u, !all(vec3<bool>(arg_1, true, false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-330f, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(ceil(553f)), -2743f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1365f, -768f, -442f, -969f) + vec4<f32>(global3.c.e.x, global0.e.x, global0.e.x, global0.e.x)))))));
    var var_2 = global3.c.b;
    let var_3 = Struct_3(global3.a, Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(global3.b.a, vec2<i32>(global3.c.d, global3.c.d)), vec2<i32>(-1i, 35457i), abs(vec2<i32>(global1.x, global3.b.a.x))) ^ (global3.c.a ^ _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global0.a.x), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1522f) - _wgslsmith_f_op_f32(-265f * _wgslsmith_f_op_f32(global0.b * 259f))), vec3<bool>(true, global3.c.c.x, true), -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(global3.b.e)), _wgslsmith_f_op_vec2_f32(step(var_1.xx, vec2<f32>(-100f, -1375f))))))), global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.d)) + _wgslsmith_f_op_f32(f32(-1f) * -264f)), !all(vec4<bool>(false, global0.c.x, arg_0, global3.c.c.x))))));
    return var_3.b;
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1496f, _wgslsmith_f_op_f32(global3.c.e.x + global3.c.b))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(633f)))) + global0.e.x), _wgslsmith_sub_u32(func_2(), 73608u) == u_input.b.x);
    var var_1 = func_4(true, true);
    global2 = array<u32, 25>();
    let var_2 = Struct_3(_wgslsmith_mult_vec4_u32(firstLeadingBit(~global3.a << (reverseBits(vec4<u32>(23348u, 0u, 56283u, 1u)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(~max(vec4<u32>(u_input.b.x, 50339u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(508u, 25u)], 25u)], 25u)], 4462u), vec4<u32>(global3.a.x, 39081u, global2[_wgslsmith_index_u32(4294967295u, 25u)], 10364u)), global3.a)), Struct_1(min(_wgslsmith_div_vec2_i32(var_0.a, global3.c.a), vec2<i32>(-6585i, 1i)) & firstTrailingBit(vec2<i32>(global1.x, -20524i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b))), _wgslsmith_f_op_f32(259f * _wgslsmith_f_op_f32(global3.d + global3.b.e.x)))), select(vec3<bool>(false, false, global3.c.c.x), vec3<bool>(true, global3.c.c.x, false), all(!var_0.c.xx)), -1i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.e.x))), var_1.e))), func_4(var_0.c.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.d, -1075f))));
    global1 = vec2<i32>(-1i) * -min(select(var_0.a, global0.a, vec2<bool>(var_0.c.x, global0.c.x)), -vec2<i32>(1i, global3.b.d));
    return _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x >> (global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(global2[_wgslsmith_index_u32(global3.a.x, 25u)], 0u)), 25u)], 1u), 25u)] % 32u), _wgslsmith_add_u32(1u, 7315u)), 25u)]));
    var var_1 = Struct_3(_wgslsmith_clamp_vec4_u32(global3.a, abs(~global3.a), select(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 25u)], u_input.b.x, 14561u, global3.a.x), ~global3.a, true) ^ vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], func_3(), ~u_input.b.x, u_input.b.x)), global3.b, global3.b, _wgslsmith_f_op_f32(-905f - 233f));
    var var_2 = global0.c.x;
    var_2 = all(select(!vec4<bool>(global3.d == -122f, false, var_1.b.c.x & false, var_1.b.c.x), !(!(!vec4<bool>(global3.c.c.x, global0.c.x, global0.c.x, global0.c.x))), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(var_1.b.c.x, true, true, false), var_1.c.c.x))));
    var var_3 = global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(var_1.a.x | 4294967295u, 25u)], 15u)];
    var var_4 = global4[_wgslsmith_index_u32(0u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.xw ^ firstLeadingBit(global3.a.wx), vec4<f32>(global3.d, -263f, _wgslsmith_f_op_f32(-var_3.a.b), _wgslsmith_f_op_f32(global0.e.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(var_1.a.x)))))), abs(~select(vec3<u32>(1u, 58557u, 4294967295u), var_1.a.yyx, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-577f, global0.e.x, 1412f) - vec3<f32>(var_4.b.b, 118f, -416f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1969f, var_3.c.x, var_3.c.x) * vec3<f32>(-582f, var_0, 1000f)))))), var_3.c.x);
}

