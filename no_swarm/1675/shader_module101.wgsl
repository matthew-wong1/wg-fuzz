struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2;

var<private> global2: i32;

var<private> global3: array<i32, 15>;

var<private> global4: f32 = 1264f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global2 = -u_input.a;
    global1 = Struct_2(Struct_1(all(vec3<bool>(all(vec3<bool>(arg_0.a, true, true)), all(vec2<bool>(arg_0.a, false)), true)), arg_0.b), Struct_1(true, _wgslsmith_sub_u32(arg_0.b, countOneBits(u_input.b))), _wgslsmith_sub_vec3_i32(global1.c, global1.c), arg_0, ~(vec4<u32>(firstLeadingBit(1u), 1u, _wgslsmith_dot_vec4_u32(global1.e, global1.e), u_input.b ^ 21213u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 98418u, 0u, 4294967295u), reverseBits(vec4<u32>(4786u, u_input.b, 55630u, global1.d.b)), ~global1.e) % vec4<u32>(32u))));
    let var_0 = Struct_2(Struct_1(all(select(vec4<bool>(arg_0.a, arg_0.a, true, true), vec4<bool>(false, global1.b.a, true, arg_0.a), vec4<bool>(true, false, false, global1.b.a))) && true, ~(~1u)), global1.b, firstTrailingBit(min(vec3<i32>(global3[_wgslsmith_index_u32(88359u, 15u)], 12190i, u_input.a), countOneBits(vec3<i32>(-1i, u_input.a, 54680i)))) >> (global1.e.yzz % vec3<u32>(32u)), arg_0, (_wgslsmith_add_vec4_u32(global1.e, global1.e) >> (global1.e % vec4<u32>(32u))) ^ vec4<u32>(_wgslsmith_sub_u32(~62041u, global1.e.x), _wgslsmith_div_u32(22206u, u_input.c.x), abs(arg_0.b), ~(u_input.c.x & 99033u)));
    let var_1 = select(vec3<bool>(false, true, true), vec3<bool>(global1.d.a, 1f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + 1187f), false & arg_0.a), !(!any(!vec4<bool>(false, arg_0.a, false, true))));
    return vec2<i32>(25063i, u_input.a);
}

fn func_2() -> f32 {
    global4 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(256f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -116f))), -1000f)), _wgslsmith_f_op_f32(trunc(-159f))));
    var var_0 = Struct_3(Struct_1((51026u & u_input.c.x) >= ~min(global1.b.b, u_input.c.x), global1.e.x), global1.d, func_3(global1.d));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1049f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2202f, 307f), -192f)) - 1008f), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(u_input.c.x, 14531u, 74846u), vec3<u32>(1u, 32501u, 29933u), global1.a.a) >> (reverseBits(u_input.c) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_sub_u32(global1.a.b, u_input.b), ~global1.e.x, ~4294967295u) | ~(u_input.c & u_input.c)));
    global0 = true;
    let var_2 = Struct_1(all(select(vec3<bool>(var_0.b.a, var_1.a, all(vec4<bool>(var_0.a.a, true, true, global1.d.a))), select(!vec3<bool>(var_1.a, var_1.a, global1.b.a), vec3<bool>(var_0.b.a, true, true), any(vec3<bool>(var_1.a, true, var_0.a.a))), vec3<bool>(any(vec3<bool>(var_1.a, global1.a.a, var_0.a.a)), var_1.a, !var_1.a))), 4294967295u);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -633f))))));
}

fn func_1() -> Struct_2 {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_0 = 5578i | ((-_wgslsmith_sub_i32(2147483647i, global1.c.x) | u_input.a) | global1.c.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-853f + 707f), _wgslsmith_f_op_f32(abs(2121f)), global1.d.a))) - _wgslsmith_f_op_f32(trunc(-1118f))), _wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1131f), -853f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f * -315f)) + 250f)));
    var var_2 = select(_wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(global1.c.x, 0i, u_input.a, 1i)) >> (global1.e % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(2147483647i, 41097i, 10401i, -15087i) ^ vec4<i32>(-36176i, global1.c.x, -2147483647i, -17680i)), vec4<i32>(-1i) * -vec4<i32>(u_input.a, -42493i, -2147483647i, global3[_wgslsmith_index_u32(global1.d.b, 15u)]))), vec4<i32>(global1.c.x, -_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, -29554i), u_input.a), ~(~_wgslsmith_div_i32(6772i, global3[_wgslsmith_index_u32(global1.d.b, 15u)])), u_input.a), !(!(!select(vec4<bool>(global1.a.a, global1.d.a, false, global1.b.a), vec4<bool>(true, global1.d.a, false, global1.b.a), false))));
    var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) * var_1.x))));
    return Struct_2(Struct_1(global1.a.a, _wgslsmith_div_u32(~(~0u), 1u)), global1.a, global1.c, global1.d, vec4<u32>(20486u, 2169u, global1.a.b, 4294967295u) & ~abs(vec4<u32>(1u, global1.a.b, 4294967295u, global1.d.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, -vec2<i32>(2147483647i, ~0i >> ((u_input.b & 0u) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1608f, 579f), _wgslsmith_f_op_f32(-1355f + 232f)))), ~vec4<u32>(u_input.c.x, ~0u, u_input.b, global1.d.b));
}

