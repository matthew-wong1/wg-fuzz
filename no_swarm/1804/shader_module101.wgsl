struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(-345f, 377f, 1760f, 276f), true, -1000f, vec2<f32>(324f, 621f)));

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<Struct_4, 32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_2 {
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.a)), global1.a.b, arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, -1251f) + _wgslsmith_f_op_vec2_f32(global1.a.a.xz * global1.a.d)) + global1.a.a.zz)));
    global3 = array<Struct_4, 32>();
    return Struct_2(global2[_wgslsmith_index_u32(4294967295u, 29u)]);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = func_2(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, 22253i, -24i), select(u_input.a, u_input.a, global1.a.b)), u_input.a.x, abs(11583i), -(4610i | ~u_input.c.x)), arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.a.x)))) * arg_1.d.x), _wgslsmith_dot_vec4_u32(u_input.b, abs(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)))).a.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-506f, var_0, _wgslsmith_f_op_f32(640f + arg_1.d.x), -1339f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(global1.a.a)))));
    let var_2 = _wgslsmith_f_op_f32(-func_2(~vec4<i32>(0i, 68672i, u_input.a.x, -22901i) & vec4<i32>(u_input.a.x, 25270i, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1121f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(406f))), u_input.b.x).a.d.x) < -737f;
    var var_3 = 9385i;
    var var_4 = func_2((vec4<i32>(countOneBits(u_input.c.x), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(23176i, -82771i, 1264i), vec3<i32>(1i, -1i, -2147483647i)), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)) | abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -3399i, 2147483647i, u_input.c.x), vec4<i32>(-81805i, 1i, 8322i, 1i)))) << (u_input.b % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.d.x * 684f) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1.a.x)), _wgslsmith_f_op_f32(global1.a.d.x * 774f))), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(ceil(-552f))))), 4294967295u);
    return select(select(select(select(select(vec3<bool>(false, global1.a.b, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, global1.a.b, false), vec3<bool>(arg_1.b, var_4.a.b, true), vec3<bool>(false, true, true)), select(vec3<bool>(var_2, false, false), vec3<bool>(false, true, arg_0), arg_0)), vec3<bool>(true, any(vec3<bool>(arg_1.b, var_2, true)), true), !var_2 | all(vec2<bool>(false, global1.a.b))), vec3<bool>(var_2, false, all(select(vec2<bool>(true, false), vec2<bool>(arg_1.b, var_2), var_4.a.b))), !all(select(vec3<bool>(var_2, false, true), vec3<bool>(var_4.a.b, false, global1.a.b), var_2))), !vec3<bool>(true, global1.a.b, all(vec3<bool>(true, var_4.a.b, arg_1.b))), var_2);
}

fn func_1() -> Struct_1 {
    global1 = func_2(u_input.a, 439f, _wgslsmith_f_op_f32(trunc(-1179f)), ~(~34990u));
    var var_0 = Struct_3(vec3<i32>(u_input.a.x, u_input.a.x, ~(i32(-1i) * -u_input.a.x)), all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(global1.a.b, true, global1.a.b), global1.a.b), func_3(global1.a.b, Struct_1(vec4<f32>(global1.a.a.x, global1.a.a.x, 959f, global1.a.d.x), global1.a.b, global1.a.c, global1.a.d)), vec3<bool>(global1.a.b, global1.a.b, true)), !(!vec3<bool>(false, false, global1.a.b)), !(!vec3<bool>(global1.a.b, global1.a.b, false)))), select(4294967295u, countOneBits(select(u_input.b.x << (u_input.b.x % 32u), ~u_input.b.x, true)), func_2(vec4<i32>(u_input.a.x, 1i, 41941i, 17659i), -291f, -135f, 17139u).a.b));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(select(28479i, ~(-1i), select(true, false, false)), _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(var_0.a.x, var_0.a.x, u_input.c.x, u_input.a.x)), var_0.a.x) >> (~vec3<u32>(1u, var_0.c, min(0u, var_0.c)) % vec3<u32>(32u)), abs(~(u_input.a.wxw & _wgslsmith_mult_vec3_i32(var_0.a, vec3<i32>(var_0.a.x, var_0.a.x, -1i)))));
    let var_2 = Struct_4(Struct_3(-firstLeadingBit(vec3<i32>(-2147483647i, var_1.x, var_1.x)) ^ vec3<i32>(1i, _wgslsmith_clamp_i32(2147483647i, -46120i, var_0.a.x), 1i), var_0.b, ~4294967295u), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global1.a.a))), var_0.b, global1.a.a.x, _wgslsmith_f_op_vec2_f32(sign(global1.a.a.wy)))));
    let var_3 = Struct_4(var_2.a, func_2(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a.x ^ var_2.a.a.x, ~var_1.x, i32(-1i) * -2147483647i), min(vec4<i32>(var_0.a.x, u_input.c.x, -1i, -2923i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_0.a.x, 2147483647i, -1i), vec4<i32>(var_1.x, var_1.x, -1i, var_2.a.a.x)))), -228f, var_2.b.a.a.x, select(~var_2.a.c, 4294967295u, var_0.b)));
    return func_2(vec4<i32>(abs(abs(var_3.a.a.x)) ^ _wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, u_input.a.x, var_0.a.x, 1i), u_input.a), ~u_input.a), _wgslsmith_clamp_i32(var_3.a.a.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a.a.x, -2147483647i, 1i, -28180i), u_input.a)), (u_input.a.x << (var_3.a.c % 32u)) & _wgslsmith_clamp_i32(-88376i, 12309i, -24893i)), var_1.x, 39822i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1613f)), _wgslsmith_f_op_f32(-var_2.b.a.c)) * _wgslsmith_f_op_f32(592f - _wgslsmith_f_op_f32(-var_2.b.a.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f))))), 97928u).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1());
    var var_0 = firstLeadingBit(-(~abs(u_input.c)) | u_input.a.zy);
    let var_1 = select(vec4<bool>(false, false, (!global1.a.b & true) || global1.a.b, !global1.a.b), select(!select(vec4<bool>(true, global1.a.b, global1.a.b, global1.a.b), vec4<bool>(false, global1.a.b, global1.a.b, false), true), !vec4<bool>(any(vec2<bool>(global1.a.b, global1.a.b)), true, !global1.a.b, true), !(false || (global1.a.d.x < -234f))), !(!(!vec4<bool>(false, global1.a.b, true, global1.a.b))));
    var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(min(vec2<i32>(u_input.c.x, u_input.a.x), u_input.c) << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zx, vec2<i32>(2147483647i, 1i)))) >> (~vec2<u32>(abs(1u), ~u_input.b.x) % vec2<u32>(32u)), countOneBits(vec2<i32>(reverseBits(_wgslsmith_add_i32(u_input.a.x, var_0.x)), u_input.a.x)));
    var var_2 = false;
    let var_3 = u_input.a << (vec4<u32>(min(1u, _wgslsmith_div_u32(abs(40030u), firstLeadingBit(u_input.b.x))), 1u, 0u, ~(~u_input.b.x)) % vec4<u32>(32u));
    global0 = var_1.x;
    global1 = Struct_2(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(-368f, min(u_input.b.x, _wgslsmith_sub_u32(select(firstTrailingBit(u_input.b.x), u_input.b.x, true), u_input.b.x)), 1i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(463f, global1.a.a.x)), global1.a.c, _wgslsmith_f_op_f32(470f - 821f), _wgslsmith_div_f32(1493f, global1.a.a.x))))));
}

