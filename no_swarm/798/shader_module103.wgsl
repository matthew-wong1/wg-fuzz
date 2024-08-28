struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: Struct_3;

var<private> global2: Struct_4 = Struct_4(Struct_1(vec2<f32>(1000f, -1874f)), vec3<u32>(4859u, 5241u, 13252u), vec4<u32>(1u, 82660u, 1u, 23077u), vec3<bool>(true, true, true), Struct_3(vec2<f32>(679f, -1344f), Struct_1(vec2<f32>(-1723f, -217f)), vec3<u32>(0u, 0u, 1u), vec4<bool>(true, false, false, true), -727f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = global1.b;
    global2 = Struct_4(Struct_1(arg_2.xx), countOneBits(~vec3<u32>(global2.e.c.x, global1.c.x, global1.c.x) ^ ((vec3<u32>(1u, 48006u, global2.b.x) | vec3<u32>(u_input.b, u_input.a, 40613u)) & (vec3<u32>(1u, global1.c.x, 1u) ^ vec3<u32>(global2.c.x, global1.c.x, global2.b.x)))), vec4<u32>(global2.e.c.x, 1u, ~(~66552u) << (global2.b.x % 32u), 0u), arg_3.zxz, global2.e);
    let var_1 = firstLeadingBit(vec4<u32>(global1.c.x, u_input.a, global1.c.x, ~min(_wgslsmith_dot_vec3_u32(global2.e.c, global1.c), global1.c.x)));
    global2 = Struct_4(arg_1.c, ~select(vec3<u32>(u_input.a, _wgslsmith_add_u32(global1.c.x, var_1.x), global2.b.x), global2.c.yyw, !(!vec3<bool>(global2.e.d.x, false, global2.e.d.x))), var_1, global2.e.d.zww, Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a.x, 697f)))), arg_1.c, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1.c.x, 75236u), vec3<u32>(var_1.x, 1u, 32084u)), vec3<u32>(var_1.x, u_input.a, 1u)) | vec3<u32>(u_input.a, global2.b.x, max(global1.c.x, 0u)), global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.e)))));
    global1 = global2.e;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1160f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-137f * 194f))), 1f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-268f, 641f)), 171f)), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x * -333f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.x) - global1.a.x)));
}

fn func_2() -> i32 {
    global2 = Struct_4(global1.b, vec3<u32>(global2.e.c.x, _wgslsmith_mod_u32(abs(97523u), min(_wgslsmith_div_u32(96942u, global2.c.x), _wgslsmith_add_u32(0u, 4294967295u))), global1.c.x), global2.c, vec3<bool>(_wgslsmith_f_op_f32(-global1.a.x) != global2.e.e, true, !(!global1.d.x)), Struct_3(_wgslsmith_f_op_vec2_f32(global2.e.a * vec2<f32>(_wgslsmith_f_op_f32(392f - global2.e.e), _wgslsmith_f_op_f32(-global1.e))), Struct_1(vec2<f32>(global1.a.x, -1156f)), vec3<u32>(global1.c.x, 0u, 0u), !global2.e.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(vec4<bool>(false, false, false, global2.d.x)), Struct_2(vec2<i32>(u_input.c.x, -30859i), true, global1.b, vec3<f32>(global2.e.e, global2.a.a.x, 540f)), vec3<f32>(1000f, global1.e, 260f), global1.d)))))));
    global2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(step(global2.e.b.a, _wgslsmith_div_vec2_f32(vec2<f32>(global1.e, -1000f), vec2<f32>(global1.b.a.x, global1.b.a.x))))), ~(~vec3<u32>(global2.c.x, global1.c.x, u_input.a << (4294967295u % 32u))), countOneBits(firstLeadingBit(vec4<u32>(0u, global1.c.x, 10869u, 4294967295u) ^ global2.c)), !vec3<bool>((41658i << (global2.e.c.x % 32u)) >= (1i & u_input.c.x), (global1.d.x && false) != global1.d.x, global1.d.x), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(451f)) * _wgslsmith_f_op_f32(round(475f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a.x))), Struct_1(global1.a), ~(~global1.c), !(!vec4<bool>(global1.d.x, true, global2.d.x, global2.e.d.x)), global1.e));
    global2 = Struct_4(global1.b, vec3<u32>(u_input.a, global1.c.x, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global2.b.xz, global2.e.c.xx), ~4294967295u)), global2.c, global2.d, global2.e);
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(select(global2.e.b.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1041f, global2.a.a.x) * global1.b.a)))), select(global1.d.wy, !(!vec2<bool>(false, global1.d.x)), (u_input.c.x >> (u_input.a % 32u)) != ~u_input.c.x))), global2.e.b, global1.c, global2.e.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + global1.e))));
    global0 = array<vec3<bool>, 31>();
    return min(0i, firstTrailingBit(-_wgslsmith_clamp_i32(max(-6586i, u_input.c.x), -u_input.c.x, abs(45983i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_4 {
    global2 = Struct_4(global1.b, ~(~vec3<u32>(_wgslsmith_mod_u32(1u, arg_3.c.x), 59689u, 4294967295u)), vec4<u32>(~_wgslsmith_div_u32(global2.c.x | 40683u, 34654u), _wgslsmith_dot_vec2_u32(~arg_3.c.xx, global1.c.xx), _wgslsmith_clamp_u32(global1.c.x, 37771u, _wgslsmith_mod_u32(4294967295u, global2.c.x)) << (~1u % 32u), 0u), vec3<bool>(false, true, false), arg_3);
    let var_0 = arg_3.d;
    let var_1 = Struct_5(select(global2.e.d, vec4<bool>(u_input.a > _wgslsmith_clamp_u32(88201u, u_input.b, 9065u), all(vec4<bool>(var_0.x, true, global2.d.x, global2.e.d.x)), true, global1.d.x), !select(!global2.e.d, !global2.e.d, global2.e.d)));
    global1 = Struct_3(arg_3.b.a, global2.e.b, vec3<u32>(~1u, u_input.b, min(9688u, ~_wgslsmith_dot_vec2_u32(global1.c.zy, vec2<u32>(4294967295u, 32370u)))), vec4<bool>(any(var_1.a), arg_3.d.x, arg_3.d.x, true), global1.a.x);
    let var_2 = !global1.d.x;
    return Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_div_f32(arg_3.b.a.x, 826f))), -1506f)), vec3<u32>(_wgslsmith_div_u32(global1.c.x, 0u), 1u, ~firstLeadingBit(_wgslsmith_dot_vec3_u32(global1.c, global2.c.yxw))), global2.c, global1.d.wzx, Struct_3(arg_0.a, Struct_1(global2.a.a), global1.c, vec4<bool>(!arg_3.d.x, all(!vec2<bool>(global1.d.x, arg_3.d.x)), true | !global1.d.x, all(!vec2<bool>(false, arg_3.d.x))), global1.e));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_4) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.e, _wgslsmith_f_op_f32(sign(arg_2.e.b.a.x))));
    global1 = global2.e;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, _wgslsmith_div_f32(958f, var_0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(971f, 691f) - _wgslsmith_f_op_vec2_f32(min(arg_2.a.a, global1.b.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) - global1.a))));
    var var_2 = 2147483647i;
    global1 = func_4(global1.b, u_input.c, select(u_input.c.zy, u_input.c.zx, arg_1.x), func_4(Struct_1(vec2<f32>(global2.e.e, -484f)), _wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.c.x), u_input.c), u_input.c), _wgslsmith_div_vec2_i32(u_input.c.xz, vec2<i32>(u_input.c.x, 0i)), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -531f), var_1, vec2<bool>(global1.d.x, false)))), vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 0i), vec3<i32>(u_input.c.x, 1i, u_input.c.x)), ~u_input.c.x), _wgslsmith_div_vec2_i32(-vec2<i32>(-48354i, 39469i), ~vec2<i32>(u_input.c.x, 933i)), Struct_3(vec2<f32>(global2.a.a.x, arg_2.e.a.x), global2.e.b, _wgslsmith_mod_vec3_u32(arg_2.c.ywy, vec3<u32>(30636u, global1.c.x, 0u)), vec4<bool>(arg_1.x, false, arg_2.e.d.x, false), arg_2.e.b.a.x)).e).e).e;
    return vec2<f32>(2375f, _wgslsmith_f_op_f32(arg_2.e.e + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1285f, 338f)) - 1220f)));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: u32, arg_3: i32) -> Struct_4 {
    var var_0 = func_4(func_4(global2.a, reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.x, 0i, -2147483647i), vec4<i32>(arg_0.x, -71422i, arg_3, arg_0.x)), reverseBits(32602i), _wgslsmith_mod_i32(-8739i, -5718i))), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 1i, arg_3)), -2147483647i), Struct_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(global1.a)), global2.e.a)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1082f, global2.e.e))), ~vec3<u32>(u_input.a, u_input.a, 1u), global2.e.d, global1.a.x)).a, firstTrailingBit(u_input.c), _wgslsmith_mult_vec2_i32(-firstTrailingBit(firstLeadingBit(vec2<i32>(arg_3, -43433i))), u_input.c.yx), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1148f)), Struct_1(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(round(-389f)))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.c.x, global1.c.x, 63145u), vec3<u32>(global1.c.x, global1.c.x, 1u)), vec4<bool>(!all(vec3<bool>(global2.e.d.x, global2.e.d.x, false)), global2.e.d.x, !any(vec4<bool>(global2.d.x, true, global2.d.x, global1.d.x)), true), 702f)).e.b;
    let var_1 = Struct_2(arg_0, any(global2.e.d.xz), Struct_1(var_0.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_5(vec4<bool>(true, global1.d.x, global2.d.x, global2.e.d.x)), Struct_2(arg_0, false, global1.b, vec3<f32>(var_0.a.x, var_0.a.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1769f, arg_1.x, -313f))), global2.e.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f) * 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(global1.d, select(vec4<bool>(global2.e.d.x, global2.e.d.x, false, global1.d.x), vec4<bool>(global2.e.d.x, global1.d.x, false, global1.d.x), global1.d.x), Struct_4(Struct_1(vec2<f32>(1000f, 307f)), vec3<u32>(95588u, 0u, 63144u), global2.c, global1.d.xzy, global2.e))).x)));
    var var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.a.a, _wgslsmith_f_op_vec2_f32(global2.a.a - _wgslsmith_f_op_vec2_f32(-var_2.c.a)), !global1.d.zy))));
    global1 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.a * global1.a))))), ~vec3<i32>(1i, abs(arg_3), firstLeadingBit(arg_0.x)) << (vec3<u32>(min(arg_2, max(u_input.a, 0u)), ~1u, 1u) % vec3<u32>(32u)), -_wgslsmith_div_vec2_i32(u_input.c.xx, var_1.a) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a.x, -arg_3), _wgslsmith_add_vec2_i32(var_2.a, _wgslsmith_div_vec2_i32(arg_0, vec2<i32>(31457i, -1i))), _wgslsmith_mod_vec2_i32(u_input.c.xy, var_1.a ^ var_1.a)), func_4(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(global1.a - vec2<f32>(var_2.d.x, 181f))), ~_wgslsmith_sub_vec3_i32(u_input.c, u_input.c), ~(~vec2<i32>(var_2.a.x, arg_0.x)), Struct_3(var_2.c.a, func_4(Struct_1(vec2<f32>(var_0.a.x, global2.e.e)), u_input.c, vec2<i32>(u_input.c.x, arg_3), global2.e).a, ~global1.c, func_4(global2.a, u_input.c, var_1.a, global2.e).e.d, _wgslsmith_f_op_f32(186f - arg_1.x))).a, ~max(~vec3<i32>(var_2.a.x, 2172i, 0i), countOneBits(u_input.c)), vec2<i32>(-1i) * -(vec2<i32>(arg_0.x, -17929i) | vec2<i32>(2147483647i, -1i)), global2.e).e).e;
    return Struct_4(global2.e.b, select(~(~global2.c.xzy), global1.c >> (abs(vec3<u32>(global1.c.x, 28079u, 4294967295u)) % vec3<u32>(32u)), vec3<bool>(false, arg_3 > 1i, var_2.b)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, u_input.a, 1u, arg_2), countOneBits(vec4<u32>(4294967295u, 67437u, global1.c.x, 12558u))), u_input.b), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_2), global2.c.yy), arg_2), !global2.e.d.wzx, Struct_3(_wgslsmith_f_op_vec2_f32(-var_1.d.zy), global1.b, ~global1.c, global2.e.d, var_1.c.a.x));
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = false || !((global1.c.x | _wgslsmith_clamp_u32(1u, 0u, arg_0.x)) >= ~firstLeadingBit(u_input.a));
    global0 = array<vec3<bool>, 31>();
    global2 = func_6(abs(~reverseBits(-vec2<i32>(u_input.c.x, -2147483647i))), _wgslsmith_f_op_vec2_f32(func_5(global1.d, select(!(!vec4<bool>(true, false, var_0, global2.d.x)), vec4<bool>(true, global2.e.d.x, any(vec4<bool>(false, var_0, global2.e.d.x, false)), all(global1.d)), select(vec4<bool>(var_0, global2.e.d.x, true, global1.d.x), select(global2.e.d, vec4<bool>(global1.d.x, false, true, false), global1.d.x), true)), func_4(Struct_1(global1.a), vec3<i32>(-1i, 37056i, _wgslsmith_add_i32(28968i, u_input.c.x)), vec2<i32>(u_input.c.x, func_2()), global2.e))), abs(16646u), _wgslsmith_sub_i32(-1i, ~(~_wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(832i, u_input.c.x)))));
    var var_1 = var_0;
    global1 = func_6(~vec2<i32>(u_input.c.x, -2147483647i), global1.b.a, ~(10897u << (abs(_wgslsmith_sub_u32(global2.b.x, 74964u)) % 32u)), _wgslsmith_div_i32(1i, -36882i)).e;
    return Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a * global1.a))), arg_0 << (_wgslsmith_div_vec3_u32(~reverseBits(global1.c), arg_0) % vec3<u32>(32u)), firstLeadingBit(global2.c), !func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a.x, global2.a.a.x))), vec3<i32>(firstLeadingBit(2147483647i), 17238i, 16320i), u_input.c.yz, global2.e).e.d.wwz, func_4(global2.a, -max(u_input.c >> (global2.e.c % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(u_input.c, u_input.c)), u_input.c.yx, Struct_3(_wgslsmith_div_vec2_f32(global1.a, _wgslsmith_f_op_vec2_f32(select(global2.e.a, vec2<f32>(global2.e.a.x, 1510f), global2.e.d.xx))), Struct_1(global1.b.a), ~vec3<u32>(u_input.b, 2949u, arg_0.x), vec4<bool>(global1.d.x, global2.e.d.x, any(vec3<bool>(false, false, global1.d.x)), u_input.c.x <= u_input.c.x), -1276f)).e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(min(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(global2.c.yyw, max(global1.c, global1.c)), _wgslsmith_add_vec3_u32(global2.c.yyy, global2.c.xxx) << (global1.c % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(global2.c.wxz, ~global1.c)));
    let var_0 = Struct_2(_wgslsmith_add_vec2_i32(u_input.c.xy, min((u_input.c.zy | u_input.c.xy) ^ u_input.c.yy, select(_wgslsmith_clamp_vec2_i32(u_input.c.yx, vec2<i32>(-2147483647i, u_input.c.x), u_input.c.yz), vec2<i32>(46715i, u_input.c.x), vec2<bool>(true, global2.d.x)))), true, func_1((~global2.b ^ func_1(vec3<u32>(global2.c.x, 63028u, 0u)).e.c) | _wgslsmith_mult_vec3_u32(vec3<u32>(global2.e.c.x, global2.c.x, 1u), global2.e.c)).e.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global2.a.a.x)), _wgslsmith_f_op_f32(1757f - _wgslsmith_f_op_f32(global1.a.x + 1425f)), global2.a.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.e, global2.e.e, -2811f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1895f, -1000f, global1.b.a.x)) + vec3<f32>(global1.a.x, 679f, -175f)))));
    var var_1 = _wgslsmith_clamp_u32(1u, u_input.a & ~(~global1.c.x | 1u), ~func_4(func_1(countOneBits(vec3<u32>(0u, global1.c.x, global2.b.x))).a, _wgslsmith_add_vec3_i32(u_input.c | vec3<i32>(var_0.a.x, 749i, u_input.c.x), u_input.c), _wgslsmith_mod_vec2_i32(var_0.a >> (vec2<u32>(27247u, 4610u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(var_0.a, u_input.c.yy)), Struct_3(_wgslsmith_f_op_vec2_f32(-global1.a), func_1(global1.c).a, select(vec3<u32>(global2.e.c.x, 0u, 0u), global1.c, global0[_wgslsmith_index_u32(global2.b.x, 31u)]), global2.e.d, _wgslsmith_f_op_f32(f32(-1f) * -1230f))).c.x);
    global2 = Struct_4(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a.a + global2.a.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(-var_0.c.a)))), global2.c.www, firstTrailingBit(vec4<u32>(~_wgslsmith_dot_vec3_u32(global1.c, vec3<u32>(global2.c.x, 78246u, 0u)), 0u, ~u_input.a | 1u, global2.c.x)), select(func_1(global1.c).d, vec3<bool>(false, !(137f >= global2.a.a.x), any(global1.d)), func_1((vec3<u32>(0u, 33751u, 32u) >> (vec3<u32>(global2.b.x, 0u, u_input.b) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, global1.c.x), global1.c)).e.d.wyy), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global2.e.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b.a) + global1.b.a)), global1.b, vec3<u32>(_wgslsmith_dot_vec4_u32(func_6(var_0.a, vec2<f32>(378f, -1000f), 0u, -899i).c, vec4<u32>(global1.c.x, 12207u, u_input.b, u_input.a)), func_4(global1.b, vec3<i32>(var_0.a.x, u_input.c.x, 1i) & u_input.c, _wgslsmith_mod_vec2_i32(vec2<i32>(6035i, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)), Struct_3(vec2<f32>(864f, var_0.c.a.x), Struct_1(global1.a), vec3<u32>(4294967295u, u_input.a, u_input.a), vec4<bool>(false, var_0.b, var_0.b, true), -1124f)).e.c.x, ~(~global1.c.x)), global1.d, _wgslsmith_div_f32(_wgslsmith_div_f32(-423f, _wgslsmith_f_op_f32(f32(-1f) * -580f)), _wgslsmith_f_op_f32(min(global2.a.a.x, global1.e)))));
    let var_2 = Struct_5(vec4<bool>(!global2.d.x, var_0.b, any(select(vec2<bool>(var_0.b, var_0.b), global2.d.xz, vec2<bool>(true, global1.d.x))), !var_0.b));
    var var_3 = global1.c.zz;
    var var_4 = -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, -1i, 56197i), u_input.c);
    let var_5 = Struct_4(var_0.c, (vec3<u32>(global1.c.x, 0u, ~global2.c.x) & vec3<u32>(~24315u, 33704u, abs(u_input.a))) ^ ~vec3<u32>(_wgslsmith_mult_u32(3152u, 864u), firstLeadingBit(var_3.x), ~u_input.b), vec4<u32>(global1.c.x, func_4(func_6(var_4.xx, var_0.c.a, 0u, var_0.a.x).e.b, u_input.c, ~var_4.xz, func_6(var_0.a, global1.a, global2.b.x, -2147483647i).e).b.x ^ 14248u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1.c.x, var_3.x, global1.c.x), global2.c) | 1u, global1.c.x), vec3<bool>(var_2.a.x, false, var_0.b), func_1(global2.e.c).e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e.a.x + _wgslsmith_f_op_f32(-global2.a.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e.e), _wgslsmith_div_f32(628f, var_5.e.b.a.x)))), min(vec4<i32>(-2147483647i, countOneBits(_wgslsmith_dot_vec2_i32(var_4.yz, var_4.zz)), _wgslsmith_clamp_i32(var_0.a.x, func_2(), _wgslsmith_mod_i32(-2147483647i, var_0.a.x)), 0i), _wgslsmith_clamp_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(22716i, var_0.a.x, u_input.c.x, -1i), vec4<i32>(-2147483647i, 2878i, 14167i, -1i)), ~vec4<i32>(12400i, -2147483647i, -29721i, var_0.a.x), true), -vec4<i32>(var_0.a.x, -1i, var_4.x, 2147483647i), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_4.x, 16824i, var_4.x, -31777i), vec4<i32>(0i, var_0.a.x, var_4.x, var_4.x)))));
}

