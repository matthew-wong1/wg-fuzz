struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec3<f32> = vec3<f32>(-953f, 998f, 479f);

var<private> global2: Struct_4 = Struct_4(vec3<bool>(false, true, true), -1251f, Struct_3(vec2<f32>(-296f, -372f), false, vec4<u32>(4294967295u, 1002u, 64548u, 33602u), Struct_1(-1305f, vec3<i32>(-1i, 17917i, -21570i), vec3<u32>(1u, 17397u, 4294967295u), vec3<f32>(-483f, -1587f, 300f), vec3<u32>(4294967295u, 25341u, 4294967295u)), Struct_1(-2711f, vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<u32>(4294967295u, 4294967295u, 68070u), vec3<f32>(-676f, -534f, 1737f), vec3<u32>(0u, 10741u, 1u))));

var<private> global3: array<i32, 24>;

var<private> global4: Struct_4;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = true;
    global4 = Struct_4(select(vec3<bool>(any(vec4<bool>(true, global2.c.b, global2.c.b, true)), _wgslsmith_f_op_f32(global2.b + -961f) < _wgslsmith_f_op_f32(round(global4.c.d.a)), !global2.a.x), !(!(!global4.a)), abs(0i) < global2.c.d.b.x), _wgslsmith_f_op_f32(ceil(global2.c.e.d.x)), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1817f), _wgslsmith_f_op_f32(exp2(global2.c.d.d.x))) - global1.xz), var_0 && all(select(vec4<bool>(false, false, global4.c.b, true), vec4<bool>(false, false, global2.a.x, global2.a.x), true)), _wgslsmith_sub_vec4_u32(max(_wgslsmith_div_vec4_u32(global4.c.c, vec4<u32>(1u, global4.c.d.e.x, global2.c.d.e.x, 17259u)), vec4<u32>(1u, global4.c.e.e.x, global4.c.d.e.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global4.c.e.c.x, global2.c.c.x, 4294967295u, u_input.a.x), global2.c.c)), global4.c.e, Struct_1(-837f, vec3<i32>(1576i >> (arg_0.x % 32u), _wgslsmith_mod_i32(2147483647i, 25605i), -257i), ~vec3<u32>(global4.c.c.x, global4.c.d.e.x, 0u) << (u_input.a % vec3<u32>(32u)), vec3<f32>(global4.c.a.x, global4.b, _wgslsmith_f_op_f32(ceil(global2.b))), vec3<u32>(~1u, _wgslsmith_mult_u32(225u, global2.c.c.x), ~4294967295u))));
    var var_1 = abs(firstLeadingBit(2147483647i));
    var_1 = firstLeadingBit(69219i);
    var_1 = -1i;
    return select(!(!select(global4.a.xx, global2.a.xy, 4294967295u > arg_0.x)), vec2<bool>(true, true), !select(global2.a.yx, !(!global2.a.yx), vec2<bool>(var_0, global2.c.b != global2.a.x)));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global3 = array<i32, 24>();
    let var_0 = vec2<i32>(_wgslsmith_div_i32(global2.c.d.b.x, global2.c.d.b.x), u_input.c.x);
    let var_1 = _wgslsmith_sub_vec2_i32(global2.c.d.b.zx, vec2<i32>(2147483647i, min(min(global2.c.e.b.x, var_0.x), global2.c.d.b.x)));
    var var_2 = !(!select(global2.a.zy, func_3(vec3<u32>(global4.c.d.c.x, 4294967295u, 1u)), vec2<bool>(true, global2.a.x)));
    var_2 = vec2<bool>(true || global4.c.b, !((global4.c.d.c.x >> (global4.c.d.c.x % 32u)) == _wgslsmith_sub_u32(u_input.a.x, ~5471u)));
    return _wgslsmith_mod_vec3_u32(global2.c.e.c, select(vec3<u32>(global4.c.c.x, 4294967295u, 6767u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 48809u), reverseBits(vec3<u32>(global4.c.c.x, 0u, global4.c.d.c.x))), !global4.a) >> (~_wgslsmith_clamp_vec3_u32(abs(u_input.a), vec3<u32>(global2.c.c.x, 1u, u_input.b.x), u_input.b.xxy) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<f32>) -> u32 {
    global3 = array<i32, 24>();
    global0 = ~(global2.c.c.x << (~41526u % 32u));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.c.d.d), vec3<f32>(1757f, arg_2.x, -167f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global1.x)), 1316f, _wgslsmith_f_op_f32(floor(arg_1.d.d.x))) + arg_1.d.d));
    var var_0 = Struct_1(726f, u_input.c, arg_1.e.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4.c.e.d.x, -566f, global4.c.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(global4.c.e.d.x, global2.c.e.a, global4.c.d.a), arg_1.d.d))), global2.c.d.d)), select(~func_2(_wgslsmith_div_f32(131f, global4.c.d.a)), vec3<u32>(arg_1.c.x, _wgslsmith_dot_vec2_u32(~arg_1.c.wz, ~global2.c.c.wz), ~(~19377u)), global4.a.x | true));
    let var_1 = global2.c;
    return min(u_input.a.x, var_1.c.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = vec4<bool>(-arg_2.c.d.b.x == ~1440i, true, global4.a.x, global4.c.b);
    global2 = arg_2;
    let var_1 = arg_2.c.e.b.x;
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 39725u, arg_3.x, arg_1.x), arg_2.c.c | arg_2.c.c), arg_2.c.c << (_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c.d.e.x, 2511u, arg_3.x, arg_2.c.d.e.x), vec4<u32>(25961u, 68456u, global4.c.e.e.x, 0u), vec4<u32>(10202u, 1u, arg_3.x, 4294967295u)), _wgslsmith_add_vec4_u32(global2.c.c, global4.c.c), vec4<u32>(u_input.b.x, u_input.b.x, arg_2.c.c.x, arg_2.c.c.x)) % vec4<u32>(32u))), select(min(vec4<u32>(21014u, arg_3.x, 31310u, 51518u), vec4<u32>(522u, 4294967295u, global4.c.c.x, 0u)), ~vec4<u32>(global4.c.d.e.x, global2.c.e.e.x, global4.c.d.e.x, u_input.b.x), !arg_2.a.x | arg_2.a.x) ^ global2.c.c);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.c.d.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.e.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.c.a.x * _wgslsmith_f_op_f32(sign(global4.c.e.d.x))))), arg_2.c.a.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~vec4<i32>(_wgslsmith_mult_i32(u_input.c.x | u_input.c.x, global3[_wgslsmith_index_u32(min(45728u, global4.c.d.e.x), 24u)]), global2.c.d.b.x, reverseBits(-global4.c.d.b.x), global3[_wgslsmith_index_u32(global2.c.d.e.x, 24u)]), vec2<u32>(_wgslsmith_sub_u32(1u ^ _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(28694u, global2.c.c.x, 38192u, u_input.a.x)), select(func_1(vec2<u32>(0u, global2.c.c.x), global4.c, global4.c.d.d), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), vec2<u32>(global2.c.e.e.x, 4294967295u)), global4.a.x)), countOneBits(58273u)), Struct_4(global2.a, global1.x, Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(879f, 762f))), global2.a.x)), global4.a.x, ~(~global4.c.c), Struct_1(-242f, vec3<i32>(2147483647i, -2147483647i, 1i) >> (global2.c.d.e % vec3<u32>(32u)), ~vec3<u32>(global4.c.c.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(-global2.c.d.d), _wgslsmith_div_vec3_u32(global4.c.e.c, global4.c.d.c)), global2.c.e)), vec3<u32>(abs(firstLeadingBit(4294967295u)), ~_wgslsmith_dot_vec4_u32(reverseBits(global4.c.c), _wgslsmith_clamp_vec4_u32(global4.c.c, global2.c.c, global2.c.c)), global2.c.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(~(-global2.c.d.b), firstTrailingBit(vec3<i32>(-30651i, global4.c.e.b.x, u_input.c.x)) >> (vec3<u32>(1u, u_input.a.x, global4.c.d.e.x) % vec3<u32>(32u)), global4.c.b)));
}

