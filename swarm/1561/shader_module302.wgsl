struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(0u, 1u, 4294967295u, 0u), vec3<u32>(21370u, 22368u, 0u), -1i, false);

var<private> global1: Struct_1;

var<private> global2: u32 = 0u;

var<private> global3: array<u32, 27>;

var<private> global4: array<bool, 17> = array<bool, 17>(false, true, false, false, false, true, true, true, false, false, false, false, false, false, true, true, false);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>) -> i32 {
    let var_0 = -120f;
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_0)), -2684f)))));
    let var_2 = global0.a;
    let var_3 = ~(~((vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, arg_1.x, 116982i)) >> (reverseBits(vec4<u32>(362u, var_2.x, global1.b.x, 7580u)) % vec4<u32>(32u))));
    let var_4 = global0.d;
    return abs(-(i32(-1i) * -1i));
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = -5234i;
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(func_3(!(!global1.a), abs(vec4<i32>(1i, 6373i, var_0, 1i))), -func_3(select(global1.a, vec4<bool>(true, global4[_wgslsmith_index_u32(6312u, 17u)], true, false), vec4<bool>(true, global0.d, global0.d, false)), vec4<i32>(-1i, global0.c, 2147483647i, -7425i)), -abs(global0.c), ~((u_input.a.x & u_input.a.x) >> ((global1.d & 62625u) % 32u))), min(vec4<i32>(firstTrailingBit(u_input.a.x), i32(-1i) * -1i, _wgslsmith_sub_i32(0i, var_0), _wgslsmith_div_i32(var_0, var_0)) | vec4<i32>(~(-2147483647i), -var_0, ~18274i, min(49121i, u_input.a.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, global1.e, -6722i, global0.c) ^ vec4<i32>(global0.c, 1i, 0i, -22108i), vec4<i32>(20910i, global0.c, 3171i, 7352i)), firstLeadingBit(~vec4<i32>(-38583i, -20088i, 56620i, 0i)), vec4<i32>(-2147483647i, 1i, 1i, select(2147483647i, var_0, false)))), vec4<i32>(_wgslsmith_div_i32(select(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -16982i, 2147483647i, -1i), vec4<i32>(global1.c, 1285i, -2438i, 0i)), global0.c, any(global1.a.yw)), max(_wgslsmith_div_i32(41082i, global0.c), ~33734i)), global0.c, _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(14440i, var_0, -10485i), vec3<i32>(1i, var_0, 37340i)), abs(vec3<i32>(global0.c, u_input.a.x, 3243i) << (global0.b % vec3<u32>(32u)))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.e, u_input.a.x, -1i), vec3<i32>(-87269i, global0.c, 1i)), firstTrailingBit(-var_0))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1240f - 1424f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + 715f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-935f)) * arg_0.x)), _wgslsmith_f_op_f32(-722f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 200f)))))));
    global0 = Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(14520u, abs(_wgslsmith_div_u32(global0.a.x, global0.a.x)), _wgslsmith_mult_u32(0u >> (global0.a.x % 32u), ~15564u), global1.d), ~vec4<u32>(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(1u, 27u)], 4294967295u, 8964u), global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(~0u, 27u)], 17497u)), vec3<u32>(global1.b.x, abs(max(select(1u, global3[_wgslsmith_index_u32(1u, 27u)], false), global0.a.x)), ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global0.a.yyz, global0.b), 0u)), global1.c, any(select(global1.a, global1.a, global1.a)));
    var var_3 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.b.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 13342u), ~vec3<u32>(27546u, 7657u, 13534u)))), 27u)], 27u)];
    return Struct_4(global4[_wgslsmith_index_u32(abs(1u), 17u)]);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4) -> vec2<u32> {
    global0 = Struct_3(global0.a, max(~global0.b | _wgslsmith_sub_vec3_u32(vec3<u32>(18553u, global1.d, arg_0.b.x) & vec3<u32>(1u, global1.b.x, 1u), select(vec3<u32>(arg_0.b.x, arg_0.b.x, global0.b.x), vec3<u32>(1u, global3[_wgslsmith_index_u32(63352u, 27u)], arg_0.d), true)), ~firstTrailingBit(vec3<u32>(global1.d, 1u, 55955u)) & ~global0.a.yyz), abs(29478i), !select(false, select(global0.d, true, select(global0.d, arg_2.a, false)), !(global3[_wgslsmith_index_u32(arg_0.d, 27u)] >= global1.b.x)));
    var var_0 = Struct_3(vec4<u32>(~(~arg_0.b.x), ~(~_wgslsmith_mult_u32(118443u, 1u)), ~39090u, 1u), ~min(~(~global0.a.wyy), global0.a.wyw), 19077i ^ -firstLeadingBit(global0.c), (global0.b.x != ~_wgslsmith_dot_vec3_u32(global0.b, vec3<u32>(13105u, global1.b.x, 0u))) || !(!(!arg_0.a.x)));
    global1 = Struct_1(select(vec4<bool>(global1.a.x, true, false, !(!var_0.d)), !vec4<bool>(false, arg_2.a || global0.d, !var_0.d, all(arg_0.a.zxx)), select(select(select(arg_0.a, vec4<bool>(global4[_wgslsmith_index_u32(0u, 17u)], arg_2.a, false, true), arg_0.a), select(vec4<bool>(global0.d, true, global1.a.x, arg_0.a.x), vec4<bool>(true, false, var_0.d, true), false), !global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b.x, 27u)], 17u)]), select(vec4<bool>(true, arg_2.a, global1.a.x, global4[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(false, global1.a.x, var_0.d, global1.a.x), !vec4<bool>(global1.a.x, global1.a.x, true, true)), !global1.a)), vec2<u32>(arg_0.d, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global0.b.x, 27u)], global1.b.x)), global1.c, ~4294967295u, 1i);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(-1000f)), Struct_1(arg_0.a, arg_0.b, abs(0i), _wgslsmith_dot_vec3_u32(max(vec3<u32>(21014u, 4294967295u, 418u), _wgslsmith_div_vec3_u32(global0.b, vec3<u32>(1u, global1.d, global1.d))), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global0.a.x, 27u)], 27u)], 50601u, 1u)), ~(~arg_0.e)));
    let var_2 = Struct_3(vec4<u32>(var_1.b.d, _wgslsmith_dot_vec3_u32(vec3<u32>(43775u, _wgslsmith_mult_u32(96284u, 6601u), ~4294967295u), var_0.a.yzw), _wgslsmith_mod_u32(reverseBits(select(35785u, arg_0.b.x, false)), 0u), var_1.b.b.x), _wgslsmith_mod_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(39064u, 4294967295u, 10580u), ~vec3<u32>(4294967295u, 20248u, global0.b.x)), ~(global0.a.zzx | vec3<u32>(4294967295u, global0.b.x, global3[_wgslsmith_index_u32(var_0.a.x, 27u)])), !all(vec2<bool>(var_0.d, arg_2.a))), reverseBits(var_0.b)), -48893i, true);
    return ~(~global1.b);
}

fn func_1(arg_0: Struct_3) -> Struct_4 {
    var var_0 = Struct_1(global1.a, _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(firstLeadingBit(arg_0.b.zy), vec2<u32>(global0.b.x, global3[_wgslsmith_index_u32(arg_0.a.x, 27u)])), func_4(Struct_1(vec4<bool>(global0.d, false, true, false), global0.a.yy, i32(-1i) * -44039i, 1u, 30955i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1102f * 554f))), func_2(vec2<f32>(-1502f, 1063f))), ~(~(~vec2<u32>(global3[_wgslsmith_index_u32(1u, 27u)], 0u)))), ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c, 30193i, global1.e), -vec3<i32>(global1.e, -2147483647i, arg_0.c)), abs(vec3<i32>(arg_0.c, 0i, 80807i))), 13468u, -_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 0i, -1i, 6470i), vec4<i32>(1i, global1.c, 1i, global1.c)), vec4<i32>(min(u_input.a.x, 1i), reverseBits(global1.c), global1.e & u_input.a.x, 0i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1258f)), _wgslsmith_div_vec2_f32(vec2<f32>(1022f, -197f), vec2<f32>(1000f, 380f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1322f, -1000f))))) - vec2<f32>(-1158f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1757f + 267f) - _wgslsmith_f_op_f32(max(351f, 1681f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))));
    let var_2 = arg_0;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -241f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-569f, -994f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 198f))))));
    global1 = Struct_1(select(!(!(!var_0.a)), vec4<bool>(false, true, true, any(var_0.a) && true), false | var_0.a.x), vec2<u32>(14034u, _wgslsmith_clamp_u32(4294967295u, min(global1.b.x, global0.a.x), 0u)) | global1.b, -firstTrailingBit(global1.e), ~global3[_wgslsmith_index_u32(func_4(Struct_1(global1.a, arg_0.a.yw, global1.c, 10776u, 1i), _wgslsmith_div_f32(-212f, -153f), func_2(vec2<f32>(114f, -895f))).x ^ ~abs(0u), 27u)], ~global1.c);
    return Struct_4(any(select(vec3<bool>(true, true, all(vec4<bool>(var_0.a.x, false, global4[_wgslsmith_index_u32(var_0.d, 17u)], false))), !global1.a.wyz, (var_1.x > 1299f) & global1.a.x)));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4, arg_3: vec2<u32>) -> bool {
    global1 = Struct_1(global1.a, ~_wgslsmith_mult_vec2_u32(~(~global0.a.yz), arg_0.b.yy), _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-arg_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.e, global0.c, global0.c, -1i), vec4<i32>(-26911i, 13920i, global1.c, -2147483647i)), abs(u_input.a.x), -1i), -vec4<i32>(14544i, -2147483647i, 0i, u_input.a.x))), ~4294967295u, -(0i | _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -47034i, -55521i), vec3<i32>(-36973i, 2147483647i, u_input.a.x)))));
    var var_0 = Struct_1(global1.a, vec2<u32>(~(~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global0.a.x), 27u)]), 1u), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-39232i, u_input.a.x, -37505i, -33823i), vec4<i32>(11460i, -20516i, -1i, arg_0.c)), _wgslsmith_sub_i32(13888i, 44374i), i32(-1i) * -1i), 1i), u_input.a), min(_wgslsmith_add_u32(global0.b.x, _wgslsmith_div_u32(arg_3.x, 15809u) & _wgslsmith_add_u32(1u, 32144u)), reverseBits(~(~0u))), -global1.e);
    global2 = 1u;
    var var_1 = Struct_2(355f, Struct_1(!select(vec4<bool>(arg_2.a, false, global0.d, true), global1.a, !vec4<bool>(arg_0.d, false, var_0.a.x, false)), firstLeadingBit(arg_0.a.zz), 1i, 76985u, 13156i >> (~(~global0.a.x) % 32u)));
    global2 = func_4(Struct_1(select(select(!var_0.a, vec4<bool>(true, true, true, true), select(global1.a, var_1.b.a, vec4<bool>(arg_2.a, global0.d, true, false))), !select(var_0.a, global1.a, vec4<bool>(arg_2.a, arg_2.a, false, true)), select(!vec4<bool>(global4[_wgslsmith_index_u32(var_1.b.b.x, 17u)], true, true, false), var_0.a, all(vec2<bool>(false, false)))), _wgslsmith_div_vec2_u32(select(vec2<u32>(global1.d, global0.a.x), select(arg_3, vec2<u32>(var_0.d, var_0.b.x), var_0.a.ww), select(vec2<bool>(false, global1.a.x), vec2<bool>(var_1.b.a.x, global0.d), var_1.b.a.xy)), ~(~vec2<u32>(var_1.b.b.x, 96072u))), firstLeadingBit(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(118734i, arg_0.c, 0i, -2147483647i)), firstTrailingBit(vec4<i32>(var_1.b.c, 1i, -25319i, 1i)))), ~(arg_3.x & global1.d) << (_wgslsmith_mod_u32(27587u, global0.a.x) % 32u), -3268i), -522f, arg_2).x;
    return (i32(-1i) * -2147483647i) > ((firstLeadingBit(arg_0.c) | func_3(vec4<bool>(false, arg_0.d, false, var_0.a.x), countOneBits(vec4<i32>(0i, var_1.b.c, 1i, u_input.a.x)))) | ~(-2871i));
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: vec4<bool>, arg_3: vec4<f32>) -> Struct_2 {
    global2 = ~global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(global1.b, vec2<u32>(arg_1, global1.b.x))), 27u)];
    let var_0 = abs(16726i) | (40628i | global0.c);
    let var_1 = vec3<u32>(~global0.a.x, arg_0, _wgslsmith_sub_u32(max(~global1.b.x, global3[_wgslsmith_index_u32(1u, 27u)]) >> (_wgslsmith_dot_vec4_u32(select(global0.a, global0.a, global1.a), vec4<u32>(4294967295u, arg_0, global3[_wgslsmith_index_u32(arg_1, 27u)], global1.b.x)) % 32u), firstTrailingBit(_wgslsmith_add_u32(arg_1, _wgslsmith_div_u32(4294967295u, 7444u)))));
    let var_2 = Struct_1(vec4<bool>(arg_2.x, select(u_input.a.x >= _wgslsmith_div_i32(global1.e, var_0), global1.a.x | true, _wgslsmith_f_op_f32(f32(-1f) * -858f) <= arg_3.x), 1000f <= arg_3.x, (func_4(Struct_1(arg_2, global1.b, global0.c, global0.a.x, -7402i), arg_3.x, Struct_4(false)).x >> (_wgslsmith_dot_vec3_u32(global0.b, global0.a.xyw) % 32u)) == ((arg_0 | arg_1) << (1u % 32u))), var_1.yy, -26959i, _wgslsmith_clamp_u32(1u, global3[_wgslsmith_index_u32(select(firstTrailingBit(8651u), _wgslsmith_mod_u32(arg_0, global0.a.x), global1.a.x & true), 27u)] ^ _wgslsmith_sub_u32(global0.a.x, ~var_1.x), ~arg_1), i32(-1i) * -var_0);
    let var_3 = Struct_2(arg_3.x, var_2);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.e;
    let var_1 = func_6(23274u, global1.b.x, select(vec4<bool>(true, true, func_5(Struct_3(global0.a, global0.b, -2147483647i, global4[_wgslsmith_index_u32(9507u, 17u)]), _wgslsmith_f_op_f32(max(-1000f, -2216f)), func_1(Struct_3(global0.a, global0.b, 16586i, global4[_wgslsmith_index_u32(global0.a.x, 17u)])), global0.b.yx), select(global4[_wgslsmith_index_u32(firstLeadingBit(58708u), 17u)], any(vec4<bool>(global4[_wgslsmith_index_u32(1u, 17u)], false, global4[_wgslsmith_index_u32(global0.b.x, 17u)], true)), !global1.a.x)), global1.a, ~(~global1.b.x) > _wgslsmith_dot_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], global3[_wgslsmith_index_u32(global1.b.x, 27u)], 0u, global3[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a.x, 27u)], 27u)], 42159u, global3[_wgslsmith_index_u32(9986u, 27u)], global0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-487f, 1151f, 2288f, 2066f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, 1146f, 316f, 332f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(250f, -678f, 876f, 982f), vec4<f32>(1000f, -440f, -773f, -309f))))))));
    let var_2 = var_1;
    global1 = Struct_1(vec4<bool>(any(select(select(vec4<bool>(true, false, true, var_2.b.a.x), global1.a, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.b.x, 27u)], 17u)]), select(global1.a, global1.a, var_2.b.a), !global4[_wgslsmith_index_u32(1u, 17u)])), all(!select(global1.a.wx, var_2.b.a.yx, vec2<bool>(true, global4[_wgslsmith_index_u32(28689u, 17u)]))), global4[_wgslsmith_index_u32(var_2.b.b.x, 17u)], false), _wgslsmith_mod_vec2_u32(firstTrailingBit(func_4(Struct_1(vec4<bool>(false, global1.a.x, global4[_wgslsmith_index_u32(var_1.b.d, 17u)], false), var_1.b.b, global1.e, global0.b.x, 0i), var_1.a, func_1(Struct_3(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec3<u32>(global1.d, global0.b.x, var_2.b.d), 2147483647i, false)))), firstLeadingBit(var_2.b.b)), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.c, -1i, 20475i, -2147483647i) ^ vec4<i32>(-1i, -51260i, 1i, var_1.b.e), firstTrailingBit(vec4<i32>(-1i, global0.c, 27313i, global0.c)))), -vec4<i32>(min(2957i, -12276i), var_1.b.e, 1i, ~global1.c)), reverseBits(~4294967295u), max(-1i, firstTrailingBit(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_clamp_u32(func_4(Struct_1(vec4<bool>(true, false, false, global4[_wgslsmith_index_u32(var_2.b.b.x, 17u)]), vec2<u32>(global0.b.x, 1u), 1i, var_2.b.b.x, 1i), 321f, Struct_4(true)).x, global3[_wgslsmith_index_u32(46392u, 27u)], 1u) << (global1.d % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a, var_1.a))) * vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.a)), var_2.a) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, 401f), vec2<f32>(var_1.a, var_1.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_2.a) + vec2<f32>(-1000f, -500f))))));
}

