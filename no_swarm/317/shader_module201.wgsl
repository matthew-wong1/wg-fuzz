struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: vec3<i32> = vec3<i32>(7119i, 0i, -32779i);

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(34636u, -2970f, i32(-2147483648)));

var<private> global3: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<u32>) -> i32 {
    let var_0 = false;
    var var_1 = global1.x;
    global1 = u_input.c;
    global1 = u_input.c;
    var_1 = _wgslsmith_mult_i32(firstLeadingBit(u_input.c.x << (53292u % 32u)), _wgslsmith_mod_i32(max(_wgslsmith_div_i32(-44080i, firstTrailingBit(global3.c)), global1.x), global1.x | arg_1.c));
    return -2147483647i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~(~63629u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(421f * global3.b))))), _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(firstTrailingBit(arg_0.c), _wgslsmith_add_i32(2522i, global3.c) | _wgslsmith_mod_i32(global3.c, -1i))));
    global0 = array<u32, 13>();
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(reverseBits(var_0.a), 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.b, 3085f), _wgslsmith_f_op_f32(f32(-1f) * -222f)), _wgslsmith_f_op_f32(abs(arg_0.b)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(min(arg_0.b, 295f))))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) * global3.b) - arg_0.b), global2[_wgslsmith_index_u32(global3.a, 1u)], vec2<f32>(_wgslsmith_div_f32(-529f, _wgslsmith_f_op_f32(global3.b * global3.b)), _wgslsmith_f_op_f32(596f * -1135f)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u, 40258u), vec4<u32>(1u, u_input.b.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.a, 13u)], 13u)]) | vec4<u32>(var_0.a, global0[_wgslsmith_index_u32(44844u, 13u)], global0[_wgslsmith_index_u32(var_0.a, 13u)], global3.a)), ~(vec4<u32>(0u, arg_0.a, 13572u, var_0.a) >> (vec4<u32>(35577u, 0u, 22443u, global0[_wgslsmith_index_u32(global3.a, 13u)]) % vec4<u32>(32u))), vec4<u32>(global3.a, 1u, 13406u, var_0.a) >> (vec4<u32>(global3.a, 1u, 232u, global0[_wgslsmith_index_u32(arg_0.a, 13u)]) % vec4<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.b + arg_0.b))), 1396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(154f + var_0.b))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1751f, arg_0.b, arg_0.b, var_0.b), vec4<f32>(global3.b, var_1.b, 1694f, var_0.b))), vec4<f32>(_wgslsmith_div_f32(arg_0.b, 1012f), _wgslsmith_f_op_f32(arg_0.b * global3.b), 835f, _wgslsmith_div_f32(-237f, arg_0.b)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -1910f, -1283f, var_1.b) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b, 1300f, arg_0.b, 498f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, global3.b, var_1.b, arg_0.b) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b, 1902f, -618f, 762f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, _wgslsmith_f_op_f32(ceil(global3.b)), 1505f, _wgslsmith_f_op_f32(var_0.b + arg_0.b)))));
    var var_3 = global2[_wgslsmith_index_u32(4570u, 1u)];
    return Struct_1(select((firstTrailingBit(44595u) | min(0u, 0u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.a, u_input.a, 1u) ^ vec4<u32>(1u, 1u, var_1.a, 101968u), ~vec4<u32>(0u, 0u, 4294967295u, global3.a)) % 32u), u_input.a, true), _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_clamp_i32(firstLeadingBit(arg_0.c), -arg_0.c, -_wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.zz) & ~var_1.c));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(select(0u, ~countOneBits(_wgslsmith_div_u32(0u, 4741u)), true), u_input.b.x), 1u)];
    var var_1 = func_2(Struct_1(_wgslsmith_dot_vec2_u32(~(~u_input.b), vec2<u32>(~u_input.b.x, ~var_0.a)), global3.b, _wgslsmith_mod_i32(-(16367i << (global3.a % 32u)), reverseBits(abs(38301i)))));
    var var_2 = !vec2<bool>(true, arg_0);
    global0 = array<u32, 13>();
    var var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.b, var_0.b))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1118f))))) * 685f), ~(~min(2147483647i, _wgslsmith_mult_i32(global1.x, -1410i))));
    return func_2(Struct_1(1u, 1610f, global3.c));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> bool {
    global3 = Struct_1(12456u, global3.b, 1i);
    global2 = array<Struct_1, 1>();
    let var_0 = 1u;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(true).a, reverseBits(_wgslsmith_sub_u32(u_input.b.x, 0u) ^ arg_0.a)), 1u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_2(Struct_1(1u, -628f, u_input.c.x)).b))) - 1275f);
    return all(!(!vec3<bool>(any(vec2<bool>(true, false)), true, true)));
}

fn func_5(arg_0: vec2<bool>) -> i32 {
    global2 = array<Struct_1, 1>();
    let var_0 = Struct_1(abs(4294967295u) | ~func_2(global2[_wgslsmith_index_u32(~1u, 1u)]).a, 1251f, ~0i ^ _wgslsmith_mod_i32(-1i, -_wgslsmith_dot_vec2_i32(global1.zx, vec2<i32>(u_input.c.x, global3.c))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -606f);
    var var_2 = func_2(Struct_1(1u, var_1, 2147483647i));
    var var_3 = func_1(true);
    return _wgslsmith_div_i32(~func_2(global2[_wgslsmith_index_u32(var_2.a, 1u)]).c, -55659i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 60706u, global3.a, 4294967295u)), vec4<u32>(~4294967295u, 1u, u_input.a, ~1u)), 8659u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b * global3.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b, -136f, false))))), func_5(vec2<bool>(all(vec3<bool>(false, true, true)), func_4(func_1(false), -915f, vec4<u32>(global0[_wgslsmith_index_u32(66047u, 13u)], 4294967295u, u_input.b.x, 1u) << (vec4<u32>(global3.a, global0[_wgslsmith_index_u32(1u, 13u)], global3.a, global3.a) % vec4<u32>(32u))))));
    var var_1 = func_2(Struct_1(0u, -1000f, global1.x));
    var var_2 = vec2<bool>(-2147483647i >= (~(-24171i & var_0.c) ^ var_0.c), any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))) && ((-971f == _wgslsmith_f_op_f32(var_0.b - var_1.b)) | false));
    var_1 = Struct_1(~u_input.a | _wgslsmith_div_u32(var_1.a, 0u), var_0.b, _wgslsmith_clamp_i32(var_0.c, -(~_wgslsmith_dot_vec3_i32(u_input.c, u_input.c)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.x, var_0.c, var_1.c), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-453f * _wgslsmith_f_op_f32(f32(-1f) * -1239f)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(408f + var_1.b))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-1387f * 1739f), _wgslsmith_f_op_f32(var_0.b - 759f), var_0.b), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-781f, 986f, -181f) * vec3<f32>(var_1.b, global3.b, var_1.b)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-227f, var_0.b, global3.b)))))))), ~(~vec4<i32>(-2147483647i ^ var_1.c, -u_input.c.x, 17048i, _wgslsmith_mult_i32(u_input.c.x, var_1.c))), global3.b);
}

