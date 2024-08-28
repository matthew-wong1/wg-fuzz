struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: vec3<f32> = vec3<f32>(-545f, -1100f, -1127f);

var<private> global2: array<vec4<i32>, 13>;

var<private> global3: array<u32, 4> = array<u32, 4>(19034u, 4294967295u, 4294967295u, 70628u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>) -> i32 {
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(max(~(-2882i), -arg_2.x), -(~43103i)), -arg_2.x), vec2<i32>(~reverseBits(_wgslsmith_sub_i32(0i, arg_1.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.a.yx, vec2<i32>(arg_0.a.x, arg_1.x), arg_0.a.ww), -arg_0.a.xx) & -35638i));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> vec2<i32> {
    var var_0 = 2147483647i;
    let var_1 = -func_3(arg_2, ~vec4<i32>(~arg_0, abs(-2147483647i), -9917i, ~(-2147483647i)), arg_2.a.zxw);
    var_0 = 0i;
    let var_2 = arg_2.c;
    global3 = array<u32, 4>();
    return arg_2.a.xw;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(select(-abs(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 22505i)), -(~(~vec4<i32>(-11337i, arg_1, -1i, 12892i))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), all(vec2<bool>(false, true)))), min(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73296u, 31u)], 31u)], 4u)], 31674u, 25868u), 74146u), ~firstLeadingBit(0u), ~(global0[_wgslsmith_index_u32(u_input.b.x, 31u)] >> (18404u % 32u)), ~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)])), _wgslsmith_mod_vec4_u32(~(~u_input.b), vec4<u32>(60578u, 104978u, ~6076u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.c, 1u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 4u)], 4294967295u))))), ~countOneBits(u_input.b.yzw), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(ceil(1599f)))))))));
    var_0 = Struct_1(-min((vec4<i32>(arg_0.x, -53983i, arg_1, arg_0.x) << (vec4<u32>(var_0.b.x, 28060u, global0[_wgslsmith_index_u32(1103u, 31u)], global3[_wgslsmith_index_u32(u_input.a, 4u)]) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(4294967295u, var_0.c.x, u_input.c, global0[_wgslsmith_index_u32(24542u, 31u)])) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, var_0.a.x, 46886i, var_0.a.x), vec4<i32>(var_0.a.x, 1i, arg_0.x, arg_1)) | (vec4<i32>(var_0.a.x, -1i, var_0.a.x, var_0.a.x) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(695u, 31u)], 31u)], 81985u, 4294967295u, 0u) % vec4<u32>(32u)))), u_input.b, vec3<u32>(_wgslsmith_mod_u32(~abs(u_input.c), max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.b.x, 4294967295u, 58677u), u_input.b), _wgslsmith_mod_u32(4294967295u, 4294967295u))), 33713u, (~u_input.b.x >> (_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 4u)], 4u)], u_input.b.x) % 32u)) << (u_input.b.x % 32u)), 394f);
    var var_1 = -6651i;
    var_0 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(66505i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, arg_0.x, arg_1), ~var_0.a), -1i, arg_1), var_0.a), vec4<u32>(4294967295u, 14117u, 1u, u_input.c), var_0.b.xzw, -505f);
    let var_2 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_1, 17982i), select(var_0.a.wz << (var_0.c.yy % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(var_0.a.xw, vec2<i32>(var_0.a.x, -18505i)), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true))) & (vec2<i32>(arg_0.x, var_0.a.x) << (vec2<u32>(var_0.b.x & 4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(59791u, 9941u), 31u)]) % vec2<u32>(32u))), var_0.a.yw);
    return Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-arg_1, var_0.a.x, 1i, -68114i) & max(vec4<i32>(arg_0.x, -20317i, var_0.a.x, 0i), -global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22497u, 31u)], 13u)]), reverseBits(var_0.a)), ~var_0.b, vec3<u32>(~4294967295u, ~(~67017u), 1u), global1.x);
}

fn func_1() -> vec4<f32> {
    var var_0 = func_4(func_2(_wgslsmith_add_i32(8922i, _wgslsmith_mult_i32(1i, 15940i)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(870f, global1.x, global1.x), vec3<bool>(true, true, false)))))), Struct_1(-vec4<i32>(-36143i, 32951i, 0i, 2147483647i), ~reverseBits(u_input.b), u_input.b.zzz, global1.x), _wgslsmith_f_op_f32(-global1.x)), -min(_wgslsmith_div_i32(2147483647i, 45762i), -_wgslsmith_dot_vec3_i32(vec3<i32>(33158i, -8292i, 7579i), vec3<i32>(0i, 1i, 8037i))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f)), _wgslsmith_div_f32(1614f, _wgslsmith_f_op_f32(-909f - var_0.d)))))), global1.x, global1.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1563f, 1087f, -1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d, var_0.d, -920f))) - vec3<f32>(1144f, -1000f, -807f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-var_0.d), global1.x)))));
    var var_2 = reverseBits(vec4<i32>(-445i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), countOneBits(var_0.a.wy | var_0.a.xz)), 27821i, var_0.a.x));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x * 622f), _wgslsmith_f_op_f32(exp2(global1.x)))), _wgslsmith_f_op_f32(global1.x - -855f)))), -958f, _wgslsmith_f_op_f32(-global1.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-135f * var_1.x) * -1000f), global1.x, global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x * -1171f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(313f - var_1.x))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -174f)), -822f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 4>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(vec2<i32>(35846i, 21418i), 12389i).d, -802f, _wgslsmith_f_op_f32(abs(-496f)), -510f)), any(vec2<bool>(true, true)))));
    var var_1 = abs(~abs(firstTrailingBit(u_input.b.zz) >> (~vec2<u32>(22751u, u_input.b.x) % vec2<u32>(32u))));
    var_1 = _wgslsmith_add_vec2_u32(u_input.b.wz, u_input.b.zx);
    var var_2 = _wgslsmith_mult_u32(var_1.x, max(1u, ~u_input.c)) ^ 4294967295u;
    let var_3 = Struct_2(min(max(reverseBits(~24717i), -_wgslsmith_div_i32(23953i, -17110i)), _wgslsmith_clamp_i32(0i, firstLeadingBit(11021i), 1i) >> (global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~76862u, 4u)], 31u)] % 32u)), ~select(~(~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 31u)]), firstTrailingBit(4294967295u), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-374f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(select(-2147483647i, _wgslsmith_add_i32(var_3.a, 1i), true), countOneBits(~2147483647i)), _wgslsmith_div_i32(_wgslsmith_add_i32(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-26063i, var_3.a, var_3.a, var_3.a), vec4<i32>(var_3.a, var_3.a, var_3.a, 52648i))), -var_3.a), var_3.a), vec3<i32>(-1i, -6530i, var_3.a >> (max(u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 4u)]) % 32u)) ^ _wgslsmith_clamp_vec3_i32(reverseBits(~vec3<i32>(var_3.a, var_3.a, -2147483647i)), max(select(vec3<i32>(var_3.a, var_3.a, var_3.a), vec3<i32>(-23743i, var_3.a, 2147483647i), false), ~vec3<i32>(5152i, -1i, var_3.a)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(34743i, 1i, -3366i)), ~vec3<i32>(var_3.a, var_3.a, -1i))), -vec3<i32>(func_4(firstLeadingBit(vec2<i32>(var_3.a, 2147483647i)), var_3.a).a.x, -25110i, var_3.a));
}

