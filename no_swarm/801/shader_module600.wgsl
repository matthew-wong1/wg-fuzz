struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: vec2<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -273f) - -1272f)))));
    let var_1 = u_input.c.x;
    return arg_2;
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = vec4<bool>(all(!vec2<bool>(select(true, global0[_wgslsmith_index_u32(42342u, 14u)], global0[_wgslsmith_index_u32(arg_0.c, 14u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 39889u), 14u)])), any(func_1(abs(u_input.a), firstLeadingBit(vec3<u32>(u_input.e.x, 1u, u_input.e.x)), Struct_1(-1587i | arg_0.b.a, arg_0.a.b)).b.xwy), false, !any(arg_0.a.b.xww));
    var var_1 = select(!(!vec3<bool>(false, func_1(u_input.a, u_input.e, arg_0.a).b.x, global1.x == true)), vec3<bool>(true, u_input.e.x > u_input.e.x, var_0.x), !(!arg_0.b.b.zzw));
    var_1 = select(select(func_1(u_input.a, u_input.e, arg_0.b).b.yzz, vec3<bool>(1u < u_input.e.x, all(func_1(u_input.a, u_input.e, arg_0.b).b.yw), true), select(!select(vec3<bool>(var_0.x, false, var_1.x), arg_0.a.b.xxz, var_0.zzz), !select(var_0.zzx, vec3<bool>(arg_1, global0[_wgslsmith_index_u32(10660u, 14u)], global1.x), vec3<bool>(false, global0[_wgslsmith_index_u32(60591u, 14u)], true)), global0[_wgslsmith_index_u32(67545u, 14u)])), select(select(select(!vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(true, global1.x, false), !var_0.xww), vec3<bool>(all(arg_0.b.b.zx), true, !global1.x), vec3<bool>(global0[_wgslsmith_index_u32(~arg_0.c, 14u)], !var_1.x, global1.x)), var_0.xzx, func_1(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, 0i, u_input.b), vec4<i32>(u_input.b, -2269i, u_input.b, arg_0.b.a)), _wgslsmith_mod_i32(arg_0.a.a, u_input.a.x), arg_0.b.a), firstLeadingBit(~vec3<u32>(arg_0.c, 10760u, arg_0.c)), arg_0.b).b.x), !select(vec3<bool>(global1.x, false, true), vec3<bool>(true, global0[_wgslsmith_index_u32(13360u, 14u)], arg_1 && var_0.x), global0[_wgslsmith_index_u32(arg_0.c, 14u)]));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1632f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2557f))), 1007f);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f), _wgslsmith_f_op_f32(-1f));
    return select(func_1(-u_input.a >> (_wgslsmith_div_vec3_u32(vec3<u32>(6827u, arg_0.c, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(16415u, arg_0.c, 19162u), u_input.e)) % vec3<u32>(32u)), u_input.e, Struct_1(_wgslsmith_dot_vec3_i32(~u_input.c, u_input.a), !(!vec4<bool>(global1.x, var_1.x, global1.x, true)))).b.x, !var_0.x, any(select(select(vec3<bool>(true, var_1.x, arg_0.b.b.x), arg_0.b.b.wzy, func_1(vec3<i32>(-11867i, arg_0.b.a, 1346i), u_input.e, arg_0.a).b.x), select(select(vec3<bool>(global1.x, false, global1.x), var_0.xyw, true), vec3<bool>(true, false, var_1.x), !arg_0.b.b.xzz), arg_0.b.b.xxz)));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(-max(u_input.a.x, -4873i), select(!vec4<bool>(global1.x, all(vec2<bool>(global1.x, true)), all(vec3<bool>(false, global0[_wgslsmith_index_u32(13931u, 14u)], global1.x)), global1.x), !vec4<bool>(func_3(Struct_2(Struct_1(54327i, vec4<bool>(true, global1.x, global0[_wgslsmith_index_u32(u_input.e.x, 14u)], false)), Struct_1(1i, vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 14u)], global1.x, global1.x)), u_input.e.x), true), true, u_input.e.x < 4294967295u, func_1(u_input.c, vec3<u32>(u_input.e.x, 67833u, 4294967295u), Struct_1(u_input.c.x, vec4<bool>(true, false, false, global1.x))).b.x), vec4<bool>(true, true, true | (global0[_wgslsmith_index_u32(1u, 14u)] & false), true)));
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, 2147483647i, 36477i, var_0.a), select(vec4<i32>(-2147483647i, var_0.a, -2147483647i, var_0.a), vec4<i32>(var_0.a, u_input.c.x, u_input.c.x, var_0.a), var_0.b)), abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, u_input.b, 59174i, var_0.a), vec4<i32>(-2147483647i, 15741i, 2147483647i, -18176i)))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-35804i, u_input.d, var_0.a, u_input.b), vec4<i32>(u_input.b, var_0.a, -2147483647i, var_0.a), vec4<i32>(u_input.a.x, var_0.a, 12470i, var_0.a)) & -vec4<i32>(var_0.a, u_input.d, u_input.c.x, var_0.a)) | (vec4<i32>(-1i) * -vec4<i32>(var_0.a, var_0.a, u_input.a.x, u_input.a.x)));
    var var_2 = Struct_2(Struct_1(u_input.d, vec4<bool>(false, !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), 14u)], !(!var_0.b.x), true)), func_1(reverseBits(countOneBits(vec3<i32>(-7437i, 51679i, var_0.a))), select(_wgslsmith_div_vec3_u32(vec3<u32>(59218u, 4294967295u, u_input.e.x), vec3<u32>(26051u, 59600u, 0u)), vec3<u32>(27294u, 14870u, u_input.e.x), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.e.x, 14u)])) << (_wgslsmith_clamp_vec3_u32(u_input.e, u_input.e, u_input.e) % vec3<u32>(32u)), Struct_1(~0i, !(!var_0.b))), ~(4294967295u | _wgslsmith_mod_u32(~1u, u_input.e.x)));
    return Struct_2(func_1(vec3<i32>(~46593i & var_0.a, abs(-28237i), -var_1.x), _wgslsmith_mod_vec3_u32(u_input.e, ~u_input.e), func_1(-_wgslsmith_clamp_vec3_i32(u_input.c, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(firstLeadingBit(u_input.e), ~vec3<u32>(var_2.c, u_input.e.x, var_2.c)), var_2.a)), var_2.b, reverseBits(abs(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 14>();
    let var_0 = func_1(-u_input.a, ~(reverseBits(_wgslsmith_add_vec3_u32(u_input.e, vec3<u32>(4294967295u, 31481u, 21523u))) & _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 4294967295u), u_input.e, vec3<u32>(u_input.e.x, u_input.e.x, 19516u)), firstTrailingBit(vec3<u32>(66403u, 4294967295u, 4294967295u)))), Struct_1(~abs(_wgslsmith_div_i32(-19927i, u_input.d)), !select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e.x, 14u)], true, false), vec4<bool>(global1.x, global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(45112u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), global1.x), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.e.x, 14u)]))));
    var var_1 = vec3<u32>(_wgslsmith_div_u32(72074u, 1u) >> (_wgslsmith_clamp_u32(countOneBits(u_input.e.x), _wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, u_input.e.x), vec2<u32>(11866u, 90446u)), ~vec2<u32>(u_input.e.x, u_input.e.x)), ~u_input.e.x) % 32u), 46303u, 1u);
    let var_2 = func_2();
    let var_3 = !(!(_wgslsmith_f_op_f32(-286f + _wgslsmith_f_op_f32(433f + 2739f)) >= _wgslsmith_f_op_f32(step(452f, -705f))));
    global1 = !vec2<bool>(!(!any(vec2<bool>(false, true))), any(var_2.b.b.wzz));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_2().b.a, var_2.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-237f - _wgslsmith_f_op_f32(sign(-1458f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(trunc(-579f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -128f), -585f)))), -1i);
}

