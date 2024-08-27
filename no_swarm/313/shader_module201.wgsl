struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(139f, 160f), vec2<f32>(993f, -739f), vec2<f32>(155f, 1000f), vec2<f32>(1622f, 1098f), vec2<f32>(-516f, -1754f), vec2<f32>(-1071f, 400f), vec2<f32>(-1000f, 405f), vec2<f32>(304f, 728f), vec2<f32>(1092f, -277f));

var<private> global2: Struct_1;

var<private> global3: array<u32, 14> = array<u32, 14>(4294967295u, 1u, 9914u, 71090u, 4294967295u, 1u, 34622u, 31213u, 0u, 4294967295u, 130675u, 0u, 78607u, 45459u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec4<f32>) -> vec3<bool> {
    global0 = array<u32, 16>();
    global0 = array<u32, 16>();
    global2 = Struct_1(arg_1.xzw, arg_1.wwz);
    let var_0 = Struct_2(Struct_1(vec3<bool>(global2.b.x, arg_1.x, !(arg_1.x | true)), arg_1.xwy), arg_1.xw, Struct_1(global2.b, vec3<bool>(true, true, (global2.b.x | global2.b.x) && arg_1.x)));
    var var_1 = _wgslsmith_f_op_f32(floor(-1263f));
    return global2.b;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = max(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(min(global3[_wgslsmith_index_u32(37400u, 14u)], global0[_wgslsmith_index_u32(0u, 16u)]), 16u)], ~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(44242u, 16u)], u_input.b), vec3<u32>(u_input.c, 4294967295u, u_input.b)))), u_input.c);
    var var_1 = vec4<i32>(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -9369i)) << (u_input.c % 32u), 2147483647i), _wgslsmith_mod_i32(select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), -vec3<i32>(u_input.a, 1694i, 1861i)), 14369i, false), u_input.a), u_input.a, _wgslsmith_div_i32(-14236i, ~u_input.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(539f * _wgslsmith_f_op_f32(select(-1923f, _wgslsmith_f_op_f32(f32(-1f) * -1454f), false))) - _wgslsmith_f_op_f32(1f - 118f)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = array<u32, 16>();
    global1 = array<vec2<f32>, 9>();
    global2 = Struct_1(func_2(min(~global3[_wgslsmith_index_u32(53779u, 14u)], u_input.b) | _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(32095u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 14u)], 14u)], 16u)], 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(50381u, 11520u, global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(u_input.b, 14u)]), vec4<u32>(1u, u_input.c, global3[_wgslsmith_index_u32(1u, 14u)], u_input.c))), vec4<bool>(!(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 16u)], 16u)] == global0[_wgslsmith_index_u32(1u, 16u)]), !global2.a.x, global2.a.x, false), vec2<f32>(1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-538f, 392f, 1999f, 484f))))), global2.a);
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-1088f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global2.a, global2.b), vec2<bool>(false, global2.a.x), Struct_1(vec3<bool>(global2.b.x, true, false), vec3<bool>(global2.b.x, global2.b.x, true))), Struct_2(Struct_1(global2.b, global2.b), global2.a.yy, Struct_1(global2.a, vec3<bool>(false, true, global2.a.x)))))))))), vec4<i32>(u_input.a, 1i, 1i, _wgslsmith_mult_i32(~1i, -_wgslsmith_mod_i32(-17873i, 2147483647i))), firstTrailingBit(vec2<i32>(u_input.a, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-859f, 445f, 102f, -272f) - vec4<f32>(-247f, 209f, 129f, 1000f)))));
    var var_1 = select(vec4<bool>(true, !any(global2.b.yy) || select(select(false, global2.a.x, global2.b.x), !global2.b.x, any(vec3<bool>(true, false, global2.b.x))), !(!(var_0.c.x > u_input.a)), all(vec3<bool>(global2.a.x, true, true))), vec4<bool>(true, !any(vec4<bool>(true, global2.b.x, false, true)), any(global2.a.yx), any(select(!vec4<bool>(global2.b.x, global2.a.x, false, false), vec4<bool>(global2.b.x, true, global2.a.x, global2.a.x), select(vec4<bool>(global2.b.x, global2.b.x, global2.b.x, global2.a.x), vec4<bool>(global2.a.x, false, false, true), global2.a.x)))), all(global2.a));
    return Struct_1(select(global2.a, !select(var_1.yyx, var_1.yyy, vec3<bool>(false, true, false)), all(global2.b)), vec3<bool>(false, var_1.x, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global1 = array<vec2<f32>, 9>();
    global2 = func_1(reverseBits(vec2<i32>(u_input.a, max(~36779i, -u_input.a))));
    var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -315f), -467f, select(global2.a.x, true, true))) + _wgslsmith_f_op_f32(f32(-1f) * -323f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(968f, 759f, true)) + _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global2.a, vec3<bool>(global2.b.x, false, global2.a.x)), global2.a.yz, Struct_1(global2.b, global2.b)), Struct_2(Struct_1(global2.a, vec3<bool>(global2.a.x, false, false)), vec2<bool>(global2.a.x, global2.b.x), Struct_1(vec3<bool>(global2.a.x, false, global2.a.x), global2.a))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1639f + -743f), _wgslsmith_div_f32(-385f, -175f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-330f, 1271f, 2208f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1416f, 1997f, 1000f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(119f, 1143f, -968f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -319f, 189f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(2248f, -334f), 301f, _wgslsmith_f_op_f32(f32(-1f) * -1607f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(777f, -1117f, -596f) * vec3<f32>(499f, 719f, 703f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1386f, var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, 403f, var_2.x, var_2.x), vec4<f32>(-873f, 401f, var_2.x, var_2.x))))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -1353f, 248f)))))), abs(u_input.a), vec2<i32>(-1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 58612i, 0i, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, -52979i)) ^ ~_wgslsmith_clamp_i32(u_input.a, 36028i, -27001i)));
}

