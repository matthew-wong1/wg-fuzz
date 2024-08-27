struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 12>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_3;

var<private> global4: f32 = 565f;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> u32 {
    global1 = array<u32, 12>();
    global4 = _wgslsmith_f_op_f32(ceil(arg_0.a));
    let var_0 = -(~_wgslsmith_mult_i32(i32(-1i) * -11476i, 1i));
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.a * -782f) - _wgslsmith_f_op_f32(411f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(f32(-1f) * -564f)))));
    return global1[_wgslsmith_index_u32(global3.a.b.x, 12u)];
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global3 = Struct_3(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)));
    var var_0 = arg_0.b.d & 2147483647i;
    let var_1 = ~(u_input.c ^ func_3(Struct_2(global3.a.a, Struct_1(1370f, vec3<u32>(4294967295u, 96197u, 0u), global3.a.e.x, 48478i, vec4<bool>(global3.a.e.x, false, false, true))), -43309i, arg_0.b)) & countOneBits(select(0u, 48696u, any(arg_0.b.e)));
    var var_2 = vec4<bool>(!any(!vec3<bool>(true, false, arg_0.b.c)), !global3.a.e.x, true, false);
    var var_3 = _wgslsmith_dot_vec3_u32(~global3.a.b, ~(~vec3<u32>(4294967295u, ~global1[_wgslsmith_index_u32(global2.x, 12u)], 4294967295u)));
    return Struct_1(_wgslsmith_f_op_f32(abs(1f)), vec3<u32>(1u, 4294967295u, ~_wgslsmith_div_u32(0u, 4294967295u)), false, u_input.d.x ^ (i32(-1i) * -2147483647i), select(select(!select(vec4<bool>(arg_0.b.e.x, false, false, global3.a.c), global3.a.e, vec4<bool>(var_2.x, arg_0.b.e.x, var_2.x, var_2.x)), vec4<bool>(var_2.x, !arg_0.b.c, var_2.x & false, true), !global3.a.e), arg_0.b.e, vec4<bool>(all(!global3.a.e), _wgslsmith_f_op_f32(929f + 932f) < _wgslsmith_f_op_f32(-arg_0.a), true, (u_input.a != 25281u) && false)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<f32> {
    global2 = firstLeadingBit(vec3<u32>(global2.x, max(global2.x, global2.x) & ~(u_input.a << (u_input.a % 32u)), ~(~(~4294967295u))));
    var var_0 = -vec4<i32>(-global3.a.d, _wgslsmith_mult_i32(arg_1.d, -(~0i)), min(-1i, arg_1.d), u_input.b);
    global3 = Struct_3(func_2(Struct_2(916f, Struct_1(_wgslsmith_f_op_f32(1072f - arg_1.a), abs(arg_1.b), arg_1.e.x, func_2(Struct_2(global3.b, arg_1)).d, arg_1.e))), _wgslsmith_f_op_f32(-248f - arg_1.a));
    let var_1 = 62323i;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -153f, global3.b, global3.a.a) - vec4<f32>(global3.b, -756f, -171f, arg_1.a))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1170f, arg_1.a, arg_1.a, arg_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, global3.a.a, global3.a.a, 1000f))))))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1239f, var_2.x), _wgslsmith_f_op_f32(trunc(1154f)), _wgslsmith_f_op_f32(var_2.x - arg_1.a), _wgslsmith_f_op_f32(min(var_2.x, -1074f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global3.b, -1279f, 1000f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global3.b, 228f, 1229f), vec4<f32>(-1073f, arg_1.a, -380f, global3.a.a), vec4<bool>(global3.a.e.x, true, global3.a.e.x, global3.a.e.x))))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.a, -1422f, -312f, arg_1.a)), vec4<f32>(global3.a.a, -622f, 195f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_2.x)))), -429f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.x, -266f)), _wgslsmith_f_op_f32(arg_1.a * var_2.x)), _wgslsmith_f_op_f32(1658f - -511f)))), vec4<bool>(arg_1.c, !(_wgslsmith_f_op_f32(min(-1000f, -1545f)) <= _wgslsmith_f_op_f32(trunc(arg_1.a))), arg_1.e.x, false)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = !(!vec4<bool>(global3.a.e.x, !(global3.a.a > global3.a.a), 33894u != _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global2.x, 12u)], global3.a.b.x), global3.a.c));
    global2 = select(global3.a.b, ~global3.a.b, !global3.a.e.wyz);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(reverseBits(vec2<i32>(global3.a.d, u_input.b) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), func_2(Struct_2(-133f, global3.a)))) - vec4<f32>(global3.a.a, _wgslsmith_f_op_f32(-global3.a.a), global3.a.a, global3.b)));
    global2 = global3.a.b;
    global3 = Struct_3(global3.a, -1364f);
    return Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.x, -627f))))), -1629f)), Struct_3(func_2(Struct_2(_wgslsmith_f_op_f32(-1260f + global3.a.a), Struct_1(global3.b, vec3<u32>(u_input.c, 1u, 0u), false, -1970i, vec4<bool>(global3.a.c, global3.a.c, var_0.x, true)))), global3.a.a), abs(vec3<u32>(_wgslsmith_div_u32(4294967295u, arg_2.x), _wgslsmith_sub_u32(arg_2.x, arg_0), global3.a.b.x) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 31809u, 4294967295u), ~vec3<u32>(0u, 4787u, global3.a.b.x))), select(select(var_0.wz, global3.a.e.zy, vec2<bool>(all(vec4<bool>(false, false, global3.a.e.x, false)), global3.a.c)), vec2<bool>(all(vec2<bool>(var_0.x, global3.a.e.x)), !var_0.x & true), global3.a.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(countOneBits(-max(vec3<i32>(4553i, u_input.d.x, u_input.b), -vec3<i32>(306i, global3.a.d, 21024i))), reverseBits(reverseBits(-vec3<i32>(-4755i, u_input.d.x, 4397i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(global3.a.d, -8945i, 10560i), vec3<i32>(u_input.b, u_input.d.x, 2147483647i)))));
    var var_1 = func_1(select(26707u, global1[_wgslsmith_index_u32(~min(1u, 40021u), 12u)], any(select(select(vec2<bool>(true, global3.a.e.x), global3.a.e.yw, true), vec2<bool>(true, global3.a.e.x), !vec2<bool>(global3.a.c, false)))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, min(~var_0.x, 0i), -42045i, _wgslsmith_add_i32(~(-49236i), firstLeadingBit(-10046i))), abs(vec4<i32>(-u_input.b, 51718i, u_input.b ^ var_0.x, -38186i))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(global3.a.b.zy, global3.a.b.zz)), firstLeadingBit(vec2<u32>(global3.a.b.x, 0u)) | (vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(1u, global3.a.b.x))), _wgslsmith_div_vec2_u32(~(~global3.a.b.zz), global3.a.b.xz)));
    global3 = var_1.b;
    let var_2 = var_1.b;
    let var_3 = vec4<f32>(969f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a)) - 1f) * var_1.a))), 1240f);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(~global2.x, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(9059u, 1u), var_2.a.b.yy)), 22366u, func_2(Struct_2(var_3.x, var_2.a)).b.x), countOneBits(select(min(vec4<u32>(0u, 4294967295u, var_1.c.x, 26974u), vec4<u32>(global2.x, 1u, u_input.a, 2464u)), min(vec4<u32>(global1[_wgslsmith_index_u32(global2.x, 12u)], u_input.a, global2.x, 32028u), vec4<u32>(0u, 14517u, var_2.a.b.x, 1u)), select(true, global3.a.c, var_1.b.a.c)))), ~(var_2.a.b.x & countOneBits(69910u)));
}

