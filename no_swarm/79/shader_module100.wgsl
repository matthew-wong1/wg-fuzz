struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 39358i;

var<private> global1: array<Struct_1, 1>;

var<private> global2: vec2<f32>;

var<private> global3: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(68762u, 0u, 4294967295u), vec3<u32>(23066u, 1u, 4294967295u), vec3<u32>(4294967295u, 77654u, 56695u), vec3<u32>(0u, 4294967295u, 19187u), vec3<u32>(36753u, 1u, 11747u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(81882u, 62735u, 4294967295u), vec3<u32>(44515u, 16523u, 1u), vec3<u32>(109248u, 92430u, 75117u), vec3<u32>(4294967295u, 16037u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(0u, 82515u, 0u), vec3<u32>(0u, 1u, 24169u));

var<private> global4: Struct_1 = Struct_1(37481i, vec4<i32>(i32(-2147483648), i32(-2147483648), 32579i, 46350i), vec4<i32>(3851i, i32(-2147483648), i32(-2147483648), -77937i), vec3<i32>(-1i, i32(-2147483648), 13656i), vec4<f32>(-1106f, -540f, -244f, 466f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    return 4294967295u;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> vec2<bool> {
    global3 = array<vec3<u32>, 13>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-623f - _wgslsmith_f_op_f32(-global2.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(floor(-294f)))) + -1023f));
    global2 = global4.e.yz;
    var var_2 = Struct_2(_wgslsmith_mod_u32(reverseBits(~101808u), ~min(25664u, 53774u)), true);
    return !vec2<bool>(var_2.b, any(select(vec4<bool>(true, var_2.b, var_2.b, var_2.b), vec4<bool>(var_2.b, var_2.b, var_2.b, false), !vec4<bool>(var_2.b, var_2.b, var_2.b, false))));
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = any(vec2<bool>(false, !all(vec4<bool>(true, false, true, false)))) == !(~1i > u_input.a.x);
    global0 = i32(-1i) * -32916i;
    var var_1 = Struct_2(0u, !all(func_3(arg_0.a, arg_0.e)) & false);
    var var_2 = vec3<bool>(_wgslsmith_mod_u32(firstTrailingBit(~81633u), ~var_1.a) <= ~27701u, select(all(vec4<bool>(true, var_1.b, false, var_1.b)), var_1.b, !(!var_0)) | var_0, true);
    var var_3 = Struct_3(Struct_2(~var_1.a, -707f >= global2.x), arg_0.b, !(!(!vec4<bool>(true, false, var_2.x, var_0))));
    return _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_3.a.a, ~var_3.a.a), ~66684u), ~vec2<u32>(21835u >> (var_1.a % 32u), var_1.a << (var_3.a.a % 32u)) << ((~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a, 73383u), vec2<u32>(63705u, 11982u)) & _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a, 4294967295u), vec2<u32>(7587u, 43535u))) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec2<u32>) -> Struct_3 {
    global4 = Struct_1(57106i, max(~max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 45273i, 60618i, global4.c.x), global4.b), countOneBits(vec4<i32>(-1i, u_input.b.x, u_input.b.x, 0i))), max(~_wgslsmith_div_vec4_i32(global4.c, global4.c), -countOneBits(vec4<i32>(-1i, u_input.a.x, 0i, -1i)))), global4.b, firstTrailingBit(abs(u_input.a)), vec4<f32>(global4.e.x, _wgslsmith_f_op_f32(floor(-1503f)), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(round(1498f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(551f + _wgslsmith_f_op_f32(global2.x + global4.e.x)))));
    global3 = array<vec3<u32>, 13>();
    global0 = reverseBits(-2147483647i);
    let var_0 = global4.e.x;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global4.e.yw, global4.e.xy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.e.yz))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.e.yw)), vec2<f32>(_wgslsmith_f_op_f32(-global4.e.x), _wgslsmith_f_op_f32(-global2.x)), func_3(_wgslsmith_mult_i32(-1i, u_input.b.x), vec4<f32>(global2.x, -1233f, global4.e.x, global4.e.x)))), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), !func_3(u_input.b.x, global4.e), vec2<bool>(true, true)))));
    return Struct_3(Struct_2(arg_0.x >> (arg_0.x % 32u), true), vec4<i32>(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(global4.c.zw, vec2<i32>(u_input.c, u_input.c)), _wgslsmith_mod_i32(global4.c.x, global4.a) | select(60479i, u_input.b.x, true)), ~(~global4.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -24037i, 0i), u_input.a.yz), global4.d.x), vec4<bool>(all(vec3<bool>(true, true, true)), func_3(u_input.b.x, global4.e).x, true, true));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_0.a;
    global3 = array<vec3<u32>, 13>();
    let var_1 = _wgslsmith_div_f32(-541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    global4 = Struct_1(-u_input.a.x, ~(-arg_2.b) >> (~(~abs(vec4<u32>(0u, 0u, 1u, 2440u))) % vec4<u32>(32u)), vec4<i32>(arg_0.b.x, abs(global4.a), 41245i, arg_2.d.x), firstTrailingBit(~arg_2.c.zzx), _wgslsmith_f_op_vec4_f32(global4.e * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-260f)), _wgslsmith_f_op_f32(min(arg_2.e.x, -379f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -245f))), 707f, arg_1)));
    let var_2 = -1646f;
    return func_4(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(arg_0.a.a, 63687u)), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a, 44720u), vec2<u32>(4294967295u, arg_0.a.a)), vec2<u32>(var_0.a, 0u))), ~(~(~vec2<u32>(28823u, var_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 13>();
    let var_0 = func_5(func_4(_wgslsmith_div_vec2_u32(vec2<u32>(27414u, func_1(global1[_wgslsmith_index_u32(0u, 1u)], Struct_4(Struct_3(Struct_2(0u, false), vec4<i32>(0i, 2147483647i, 0i, 2147483647i), vec4<bool>(false, true, false, true)), global4.e.xww, vec4<bool>(true, true, true, true), true))), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(0u, 6447u)), func_2(global1[_wgslsmith_index_u32(1u, 1u)])))), _wgslsmith_f_op_f32(561f * 1000f), global1[_wgslsmith_index_u32(1u, 1u)]);
    global4 = Struct_1(max(abs(_wgslsmith_mult_i32(-9778i, _wgslsmith_div_i32(u_input.c, var_0.b.x))), global4.b.x), vec4<i32>(-1i) * -var_0.b, vec4<i32>(abs((u_input.a.x | -11538i) ^ func_4(vec2<u32>(4294967295u, 4247u)).b.x), ~(-firstTrailingBit(-24872i)), 2147483647i, ~(-(global4.a ^ -51200i))), global4.b.yyx, vec4<f32>(_wgslsmith_f_op_f32(round(896f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(global4.e.x + 1175f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-314f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.e.x - 1000f)), _wgslsmith_f_op_f32(step(-1682f, _wgslsmith_f_op_f32(min(813f, global2.x))))), _wgslsmith_f_op_f32(-global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~min(global4.c.x, 0i), u_input.b.x);
}

