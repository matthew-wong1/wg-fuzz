struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 13>;

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<vec2<u32>, 31>;

var<private> global4: array<vec4<f32>, 21>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> f32 {
    var var_0 = firstTrailingBit(global0.c);
    global3 = array<vec2<u32>, 31>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3) - _wgslsmith_f_op_vec2_f32(exp2(arg_3)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_3.x)))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -876f))))), _wgslsmith_f_op_f32(892f + 773f)))));
    return _wgslsmith_f_op_f32(round(arg_2));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = ~58963u;
    global4 = array<vec4<f32>, 21>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.e.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1164f, _wgslsmith_f_op_f32(func_3(arg_1.c.x, Struct_1(global1[_wgslsmith_index_u32(13271u, 13u)], false, u_input.a.zyw, 469f, vec2<f32>(global0.e.x, -657f)), global0.d, vec2<f32>(-107f, global0.e.x))), true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.d, arg_2.e.x, global0.b))))));
    global4 = array<vec4<f32>, 21>();
    global0 = arg_2;
    return arg_2.c;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = global0.d;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d * global0.e.x)) - _wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(-564f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, -432f, global0.e.x))))));
    let var_2 = Struct_1(1u, true, abs(vec3<i32>(global0.c.x, u_input.b, -2147483647i)), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-1627f - 1804f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(357f * -1008f), var_1.x))))), var_1.xz);
    let var_3 = Struct_1(~38659u, !(global0.c.x < 24573i), ~_wgslsmith_mult_vec3_i32(func_2(!arg_0, Struct_1(4294967295u, arg_0.x, var_2.c, -1108f, var_1.zy), Struct_1(1u, global0.b, global0.c, var_2.d, vec2<f32>(var_1.x, var_2.e.x))), -_wgslsmith_sub_vec3_i32(var_2.c, vec3<i32>(u_input.a.x, u_input.b, global0.c.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.x) + _wgslsmith_f_op_f32(f32(-1f) * -682f)), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_2.e.x)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-572f))))))), _wgslsmith_f_op_vec2_f32(-var_2.e));
    var var_4 = Struct_1(global0.a, all(select(select(arg_0, !arg_0, select(arg_0, vec4<bool>(false, arg_0.x, true, true), arg_0)), select(arg_0, vec4<bool>(global0.b, false, var_3.b, false), true), arg_0)), max(abs(vec3<i32>(u_input.b, 31651i, -2147483647i)) << ((vec3<u32>(1u, var_3.a, 0u) & (vec3<u32>(1u, var_2.a, var_2.a) ^ vec3<u32>(39770u, global1[_wgslsmith_index_u32(72265u, 13u)], global1[_wgslsmith_index_u32(var_2.a, 13u)]))) % vec3<u32>(32u)), max(abs(firstLeadingBit(vec3<i32>(1i, var_2.c.x, u_input.b))), ~(var_3.c >> (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a, 13u)], 13u)], var_3.a, 24697u) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(-var_3.d), var_3.e);
    return global2[_wgslsmith_index_u32(select(var_4.a, var_4.a, false && (-2147483647i != global0.c.x)), 31u)];
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<i32> {
    let var_0 = func_1(vec4<bool>(false, ((arg_0 ^ arg_1.c.x) ^ _wgslsmith_mod_i32(1i, arg_1.c.x)) < func_1(!vec4<bool>(false, arg_1.b, true, arg_1.b)).c.x, arg_1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.e.x), 1115f)) >= _wgslsmith_f_op_f32(max(arg_1.d, _wgslsmith_f_op_f32(-arg_1.d)))));
    var var_1 = vec2<bool>(global0.b, arg_1.b || var_0.b);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)))))));
    let var_3 = func_1(select(vec4<bool>((global0.b == false) || global0.b, any(vec4<bool>(true, false, arg_1.b, global0.b)), true, true), !vec4<bool>(true, false, true, !arg_1.b), var_0.b));
    var var_4 = true;
    return countOneBits(firstTrailingBit(arg_1.c));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) + global0.e.x), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1262f)) + arg_1.d), arg_1.e.x), -1101f)));
    let var_1 = arg_1;
    let var_2 = arg_2.x;
    var var_3 = false;
    let var_4 = func_1(select(vec4<bool>(var_1.b, global0.b, true, arg_1.b), select(select(!vec4<bool>(true, false, true, arg_0.b), vec4<bool>(true, false, arg_1.b, var_1.b), any(vec4<bool>(false, arg_0.b, false, true))), !vec4<bool>(arg_0.b, var_1.b, arg_1.b, true), select(!vec4<bool>(false, arg_0.b, true, false), select(vec4<bool>(false, arg_0.b, global0.b, false), vec4<bool>(arg_0.b, false, true, true), true), arg_1.b)), !(all(vec2<bool>(false, arg_0.b)) & (var_1.b == arg_0.b))));
    return -694f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(Struct_1(~(~(~18317u)), false, ~global0.c, -1011f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.e.x, global0.e.x), vec2<f32>(global0.d, 216f), select(vec2<bool>(false, global0.b), vec2<bool>(true, global0.b), true)))))), global2[_wgslsmith_index_u32(0u, 31u)], vec2<u32>(firstTrailingBit(1u) << (global1[_wgslsmith_index_u32(global0.a, 13u)] % 32u), 8301u), _wgslsmith_clamp_vec3_i32(u_input.a.zxz << (_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(global0.a, 13u)], global1[_wgslsmith_index_u32(22473u, 13u)], global1[_wgslsmith_index_u32(global0.a, 13u)])), countOneBits(vec3<u32>(1u, global0.a, global1[_wgslsmith_index_u32(65943u, 13u)]))) % vec3<u32>(32u)), global0.c, func_4(firstTrailingBit(41562i), func_1(vec4<bool>(global0.b, false, true, global0.b)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(124f, 2308f, 1442f)))))));
    global1 = array<u32, 13>();
    let var_1 = vec2<u32>(1u, ~4294967295u);
    global0 = func_1(select(!vec4<bool>(all(vec3<bool>(global0.b, global0.b, global0.b)), global0.b, true, global0.b), select(vec4<bool>(global0.b, !global0.b, any(vec3<bool>(global0.b, false, false)), true), !vec4<bool>(true, false, global0.b, true), !vec4<bool>(global0.b, global0.b, true, true)), !select(!vec4<bool>(global0.b, true, global0.b, true), select(vec4<bool>(global0.b, global0.b, global0.b, global0.b), vec4<bool>(global0.b, global0.b, true, false), global0.b), select(vec4<bool>(global0.b, false, global0.b, true), vec4<bool>(global0.b, true, global0.b, global0.b), global0.b))));
    var var_2 = Struct_1(global0.a, !(!global0.b), reverseBits(global0.c), _wgslsmith_f_op_f32(-global0.d), global0.e);
    global0 = global2[_wgslsmith_index_u32(79484u, 31u)];
    let var_3 = -736f;
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_2.a), 31u)];
    var var_5 = vec2<u32>(global0.a, 1u) | (vec2<u32>(1u, ~var_2.a) & abs(~(~var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(var_1, vec2<u32>(47381u, _wgslsmith_add_u32(4294967295u, 0u))), _wgslsmith_add_vec2_u32(abs(vec2<u32>(global0.a, global1[_wgslsmith_index_u32(14534u, 13u)]) ^ vec2<u32>(0u, 46090u)), ~(~vec2<u32>(var_5.x, 94242u)))), global0.c.x, 74714u);
}

