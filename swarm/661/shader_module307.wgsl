struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> bool {
    var var_0 = !(!(countOneBits(1i) != (u_input.a.x | u_input.a.x))) && all(!vec3<bool>(true, true, all(vec4<bool>(true, true, true, false))));
    let var_1 = Struct_1(u_input.b.zy | _wgslsmith_mod_vec2_u32(u_input.b.zy, firstLeadingBit(u_input.b.xy)), -(~firstLeadingBit(vec2<i32>(u_input.a.x, 270i))) >> (((~vec2<u32>(u_input.b.x, 4294967295u) | u_input.b.zx) >> (u_input.b.xz % vec2<u32>(32u))) % vec2<u32>(32u)), any(vec3<bool>(true, !any(vec2<bool>(true, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))))));
    let var_2 = Struct_1(~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, var_1.a.x, 15875u, 51207u)), _wgslsmith_dot_vec3_u32(vec3<u32>(119234u, u_input.b.x, u_input.b.x), u_input.b))), -(~(~vec2<i32>(u_input.a.x, u_input.a.x))), !all(select(select(vec4<bool>(var_1.c, false, var_1.c, false), vec4<bool>(true, var_1.c, true, var_1.c), vec4<bool>(var_1.c, var_1.c, true, false)), select(vec4<bool>(true, var_1.c, true, false), vec4<bool>(false, var_1.c, true, false), var_1.c), select(vec4<bool>(var_1.c, var_1.c, false, var_1.c), vec4<bool>(var_1.c, var_1.c, true, false), vec4<bool>(true, true, true, true)))));
    var_0 = var_2.c;
    let var_3 = any(select(select(vec2<bool>(false, true), select(select(vec2<bool>(false, var_2.c), vec2<bool>(var_2.c, true), var_2.c), vec2<bool>(var_2.c, false), false & var_1.c), !vec2<bool>(true, var_2.c)), select(!(!vec2<bool>(var_1.c, false)), !vec2<bool>(false, var_1.c), true), true));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<i32, 6>();
    var var_0 = arg_1;
    let var_1 = !vec3<bool>(true, any(!select(vec4<bool>(arg_1.c, arg_1.c, false, false), vec4<bool>(arg_1.c, false, true, var_0.c), false)), !arg_1.c);
    var_0 = arg_1;
    let var_2 = _wgslsmith_mult_vec4_u32(~countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, 60441u), vec4<u32>(37514u, 29079u, arg_1.a.x, u_input.b.x))), ~abs(vec4<u32>(_wgslsmith_sub_u32(arg_1.a.x, var_0.a.x), 68072u, abs(55343u), u_input.b.x)));
    return vec2<bool>(true, true);
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    let var_0 = select(func_4(vec2<bool>(func_3() | all(vec3<bool>(false, false, true)), all(vec3<bool>(true, true, true))), Struct_1(countOneBits(u_input.b.yz), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yz, vec2<i32>(-2147483647i, u_input.a.x)), _wgslsmith_sub_vec2_i32(u_input.a.xz, vec2<i32>(-19060i, global0[_wgslsmith_index_u32(20046u, 6u)]))), all(vec3<bool>(true, true, true)))), vec2<bool>(false, true & any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), select(!vec2<bool>(false, all(vec4<bool>(false, true, true, true))), vec2<bool>(true, true), true));
    var var_1 = Struct_1(select(vec2<u32>(21608u, u_input.b.x), u_input.b.yy, !(!(!vec2<bool>(false, var_0.x)))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.a.x), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]))), u_input.a.x) & max(vec2<i32>(-3439i, u_input.a.x << (u_input.b.x % 32u)), vec2<i32>(i32(-1i) * -1489i, 1i)), false);
    let var_2 = ~u_input.b.x;
    return Struct_1(vec2<u32>(var_1.a.x ^ u_input.b.x, u_input.b.x), -var_1.b & var_1.b, any(vec2<bool>(true, var_0.x)));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_3;
    let var_1 = vec4<u32>(8556u, _wgslsmith_dot_vec4_u32(arg_0, _wgslsmith_mult_vec4_u32(~arg_0 | select(vec4<u32>(4294967295u, 22797u, 32704u, arg_3.a.x), vec4<u32>(var_0.a.x, 24423u, arg_1.a.x, arg_1.a.x), false), arg_0)), arg_0.x, abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.x, var_0.a.x), arg_3.a)) << (_wgslsmith_mod_u32(arg_3.a.x, 1u) % 32u));
    global0 = array<i32, 6>();
    var var_2 = _wgslsmith_mod_vec2_u32(min(abs(min(arg_3.a, vec2<u32>(arg_3.a.x, 0u))) ^ abs(~vec2<u32>(1u, u_input.b.x)), vec2<u32>(abs(firstLeadingBit(arg_3.a.x)), min(_wgslsmith_clamp_u32(arg_0.x, arg_0.x, arg_0.x), arg_3.a.x))), vec2<u32>(_wgslsmith_clamp_u32(firstLeadingBit(1u), 101928u, u_input.b.x), ~_wgslsmith_sub_u32(u_input.b.x, ~var_1.x)));
    let var_3 = ~_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(~var_1.x, 1u, 17046u)), countOneBits(var_1.xwy));
    return vec2<u32>(var_2.x, firstLeadingBit(~(~0u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = false;
    var var_2 = Struct_1(_wgslsmith_sub_vec2_u32(func_5(vec4<u32>(1u, 1u, 0u >> (0u % 32u), 41307u >> (u_input.b.x % 32u)), func_2(), true, arg_0), ~(~(~var_0.a))), u_input.a.zx, !(arg_1.x != true));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(383f, 1160f, -1631f, -326f) + vec4<f32>(-481f, 625f, -1000f, 287f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(443f, 1267f, _wgslsmith_f_op_f32(step(245f, 995f)), _wgslsmith_f_op_f32(f32(-1f) * -928f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(376f, 290f, -951f, -1589f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2139f, 203f, -689f, -571f))))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x)))), var_3.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.wyw + vec3<f32>(_wgslsmith_f_op_f32(sign(var_3.x)), _wgslsmith_f_op_f32(floor(var_3.x)), _wgslsmith_f_op_f32(-150f * var_3.x))) - _wgslsmith_f_op_vec3_f32(var_3.wxx - vec3<f32>(_wgslsmith_f_op_f32(min(-1346f, var_3.x)), _wgslsmith_f_op_f32(max(623f, 1523f)), -730f))));
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    let var_0 = vec2<i32>(-u_input.a.x, ~max(i32(-1i) * -89471i, arg_1.b.x));
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    var var_1 = ~firstLeadingBit(vec2<i32>(11751i, _wgslsmith_clamp_i32(arg_0.b.x, var_0.x, var_0.x)));
    global0 = array<i32, 6>();
    return abs(u_input.b.yy);
}

fn func_7(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global0 = array<i32, 6>();
    var var_0 = arg_0.b;
    var var_1 = !(!((u_input.b.x > firstTrailingBit(4294967295u)) | all(select(vec4<bool>(arg_0.c, true, true, arg_0.c), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), vec4<bool>(false, arg_0.c, arg_0.c, true)))));
    var_0 = u_input.a.yy;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, arg_1))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 348f))), vec2<f32>(1465f, 1f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 327f) * vec2<f32>(1000f, 108f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 2108f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2421f, arg_1) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(2050f, 139f)))), vec2<bool>(true, arg_0.c))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = func_7(Struct_1(func_6(func_1(Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), u_input.a.zz, false), vec3<bool>(true, true, true), Struct_1(u_input.b.zx, vec2<i32>(6398i, u_input.a.x), true), true), func_1(Struct_1(u_input.b.xx, vec2<i32>(global0[_wgslsmith_index_u32(12671u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), true), vec3<bool>(true, true, true), func_2(), u_input.b.x == u_input.b.x), u_input.a.x), -abs(vec2<i32>(-1i, global0[_wgslsmith_index_u32(22676u, 6u)])), true), _wgslsmith_f_op_f32(299f - -1399f));
    var var_2 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1312f, -585f, -1463f)))))), ~countOneBits(~reverseBits(u_input.b.xy)), vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec4<i32>(var_1.b.x, 2147483647i, var_1.b.x, global0[_wgslsmith_index_u32(4294967295u, 6u)])), func_7(var_1, 578f).b.x), func_7(Struct_1(var_1.a, -vec2<i32>(2147483647i, 84313i), false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-623f, -1000f) + _wgslsmith_div_f32(-377f, 938f))).b.x, var_1.b.x, _wgslsmith_add_i32(-(-17998i ^ u_input.a.x), -max(var_1.b.x, global0[_wgslsmith_index_u32(var_1.a.x, 6u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1153f, -196f)), 1000f), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1817f)) - _wgslsmith_f_op_f32(f32(-1f) * -555f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1583f, 414f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(565f)), _wgslsmith_div_f32(-1608f, _wgslsmith_f_op_f32(round(-1544f))), 2067f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-968f + -1711f)))));
}

