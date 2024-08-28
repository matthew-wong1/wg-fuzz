struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(Struct_1(i32(-2147483648), 0u, -1i), 753f, Struct_1(0i, 66285u, 24917i), vec3<bool>(false, true, true), Struct_1(2147483647i, 1u, 19026i));

var<private> global3: bool;

var<private> global4: vec2<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(round(global2.b));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(max(global2.b, _wgslsmith_f_op_f32(f32(-1f) * -625f))), global2.b, _wgslsmith_f_op_f32(-global2.b));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b, var_2.c, global0[_wgslsmith_index_u32(global2.a.b, 26u)]))))));
    let var_3 = all(vec4<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 26u)], true, arg_0, global0[_wgslsmith_index_u32(u_input.c, 26u)])), global4.x, false, all(vec3<bool>(false, !global2.d.x, !global2.d.x))));
    return vec2<u32>(abs(~u_input.c), _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.e.b << (global2.a.b % 32u), global2.a.b), vec2<u32>(min(~1u, ~global2.a.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.b, 16965u, u_input.c, 1u), vec4<u32>(u_input.c, 1u, 11729u, 0u)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    global4 = arg_3.wz;
    var var_0 = ~func_3(global4.x);
    let var_1 = global2.a;
    global0 = array<bool, 26>();
    global1 = _wgslsmith_div_f32(-681f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(min(global2.b, global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-705f)) - _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.b * -1000f)))), _wgslsmith_f_op_f32(func_2(vec2<bool>(any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 26u)], global4.x)), true), _wgslsmith_f_op_f32(444f - 473f), Struct_1(-61539i, u_input.c, max(1i, -1i)), vec4<bool>(false && global0[_wgslsmith_index_u32(global2.a.b, 26u)], global4.x || global4.x, true != global0[_wgslsmith_index_u32(u_input.c, 26u)], global2.d.x)))))));
    let var_1 = Struct_1(-global2.e.a, ~(((4294967295u << (u_input.c % 32u)) ^ ~global2.e.b) >> (global2.a.b % 32u)), select(0i << (global2.c.b % 32u), _wgslsmith_mult_i32(-16220i, 1i) >> (u_input.c % 32u), global0[_wgslsmith_index_u32(3383u, 26u)]));
    var var_2 = select(!vec2<bool>(any(!vec4<bool>(false, global0[_wgslsmith_index_u32(global2.a.b, 26u)], false, false)), select(global4.x, true, false) && global0[_wgslsmith_index_u32(51657u, 26u)]), select(!global2.d.xy, select(select(select(global2.d.yz, global2.d.zz, true), global2.d.zz, false), !global2.d.xx, false), !vec2<bool>(true, !global0[_wgslsmith_index_u32(4294967295u, 26u)])), global2.d.x);
    var var_3 = _wgslsmith_div_u32(global2.a.b, global2.a.b) | 1u;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1076f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.b * 166f)))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + 1677f) - -489f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b;
    global0 = array<bool, 26>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(159f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b + 1415f), _wgslsmith_f_op_f32(753f + 1241f)) - global2.b)), _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-897f)))))), _wgslsmith_f_op_f32(-217f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -987f))));
    let var_2 = vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 41860u, 4294967295u, u_input.c), ~vec4<u32>(global2.e.b, 1u, 69377u, 27019u)) ^ ~_wgslsmith_div_u32(u_input.c, 41970u)), 7466u);
    let var_3 = Struct_2(Struct_1(u_input.d, firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_clamp_u32(13215u, global2.c.b, global2.c.b), 4294967295u)), 0i), 471f, Struct_1(-60243i, 4294967295u, abs(~(-25587i ^ global2.e.a))), select(!global2.d, !select(vec3<bool>(global0[_wgslsmith_index_u32(24321u, 26u)], false, global4.x), select(global2.d, vec3<bool>(true, true, global2.d.x), global2.d), -204f > var_1.c), !global2.d), Struct_1(max(u_input.b, reverseBits(-11294i >> (u_input.c % 32u))), 29532u, -25770i));
    let var_4 = var_1;
    let var_5 = min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u) >> (min(vec3<u32>(4294967295u, var_3.c.b, 1070u), ~vec3<u32>(0u, 0u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(~var_3.a.b, 1u, 1u), firstLeadingBit(reverseBits(vec3<u32>(global2.c.b, var_3.e.b, 1u))))));
    let var_6 = ~min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global2.c.b | 28698u, 1u), vec3<u32>(~u_input.c, 36292u, firstLeadingBit(58870u))), firstLeadingBit(select(~vec3<u32>(var_5, 34692u, 1u), vec3<u32>(global2.a.b, 0u, u_input.c), vec3<bool>(global4.x, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(4294967295u, 4294967295u, ~(4294967295u & var_6.x), ~(~0u))), abs(~(-vec4<i32>(global2.e.c, -30823i, -15239i, global2.e.a) >> ((vec4<u32>(53224u, 4294967295u, u_input.c, var_5) << (vec4<u32>(4294967295u, 64437u, 1u, var_3.c.b) % vec4<u32>(32u))) % vec4<u32>(32u)))), reverseBits(vec3<i32>(1i, u_input.d, 13288i) | vec3<i32>(_wgslsmith_mod_i32(var_3.e.a, var_3.e.a), -50341i, ~2147483647i)));
}

