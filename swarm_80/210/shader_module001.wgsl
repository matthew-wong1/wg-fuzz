struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> bool {
    var var_0 = vec4<u32>(~(1u >> (u_input.a.x % 32u)), u_input.a.x, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.yzz >> (u_input.a.wwx % vec3<u32>(32u)), vec3<u32>(1110u, u_input.c, 0u)), ~vec3<u32>(23759u, u_input.c, 4294967295u))), 4294967295u);
    var var_1 = vec3<f32>(845f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-357f, _wgslsmith_f_op_f32(floor(-678f)))) * -496f), _wgslsmith_f_op_f32(min(-834f, 1000f)));
    var var_2 = all(!vec2<bool>(false, 1i == ~u_input.b));
    var_0 = vec4<u32>(8067u, _wgslsmith_mult_u32(~u_input.a.x, u_input.c), 4294967295u, u_input.c);
    var_0 = vec4<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(~(~u_input.a), u_input.a)), select(u_input.a.x, 15151u, true), u_input.c, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(~u_input.a.wwz, u_input.a.yzz), vec3<u32>(var_0.x, ~22974u, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 41564u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 140521u), u_input.a.zyy) % vec3<u32>(32u))));
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> f32 {
    let var_0 = ~1i;
    let var_1 = Struct_2(reverseBits(-vec3<i32>(reverseBits(arg_1.a.x), arg_1.c.c.x, firstLeadingBit(-41115i))), _wgslsmith_f_op_f32(abs(arg_1.b)), Struct_1(arg_1.c.b.zz, arg_1.c.b, arg_1.a));
    var var_2 = abs(~(-(~(~vec4<i32>(2147483647i, -24391i, -2147483647i, var_1.c.c.x)))));
    let var_3 = arg_1.c;
    global1 = !(!(!vec3<bool>(!global1.x, arg_1.b <= -103f, func_3(vec4<bool>(arg_0, global1.x, false, arg_0), Struct_3(var_3.c.x)))));
    return 304f;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1194f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global1.x, Struct_2(vec3<i32>(u_input.b, u_input.b, -2147483647i), -146f, Struct_1(u_input.a.xz, u_input.a.yzy, vec3<i32>(-16921i, u_input.b, u_input.b))))) - _wgslsmith_f_op_f32(trunc(1000f)))));
    var var_1 = Struct_2(~select(-vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-1i, 1i, 1i), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -1005f))) - -789f), var_0.x)), Struct_1(u_input.a.zx, ~firstLeadingBit(abs(vec3<u32>(u_input.a.x, 0u, u_input.a.x))), vec3<i32>(abs(u_input.b), 0i, _wgslsmith_div_i32(u_input.b, _wgslsmith_mult_i32(u_input.b, 2147483647i)))));
    let var_2 = select(select(vec4<bool>(global1.x, !(1u <= u_input.c), global1.x, false), vec4<bool>(abs(1u) > u_input.a.x, !any(global1.zx), select(true, global1.x, global1.x), true), any(!select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x), global1.x))), !(!vec4<bool>(false, !global1.x, any(vec3<bool>(global1.x, false, true)), !global1.x)), !vec4<bool>(all(vec4<bool>(false, true, true, global1.x)), global1.x, any(vec2<bool>(global1.x, global1.x)), all(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), global1.x))));
    let var_3 = vec3<bool>(true, true, all(var_2));
    let var_4 = abs(select(vec2<i32>(1i, u_input.b), -vec2<i32>(-33737i, -1i) & -vec2<i32>(1i, var_1.a.x), !vec2<bool>(!var_3.x, false)));
    return Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, var_4.x | -2147483647i, ~1i, _wgslsmith_mod_i32(0i, firstTrailingBit(var_4.x))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, -54006i, 1448i, -5222i)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(var_4.x, -48769i, u_input.b, var_1.c.c.x), vec4<i32>(8942i, -64304i, var_1.a.x, -24072i), var_2), ~vec4<i32>(0i, var_4.x, var_1.c.c.x, u_input.b)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(43984i, u_input.b, u_input.b, -21861i)), vec4<i32>(u_input.b, 1i, var_1.c.c.x, -6971i) | vec4<i32>(u_input.b, 27293i, -1i, u_input.b)))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 30>();
    var var_0 = select(select(!vec3<bool>(arg_0, true, false), select(select(!vec3<bool>(arg_0, false, global1.x), !vec3<bool>(arg_0, true, true), true), !select(vec3<bool>(true, true, global1.x), vec3<bool>(arg_0, false, global1.x), arg_0), select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, true), true), !vec3<bool>(global1.x, global1.x, arg_0), vec3<bool>(arg_0, false, arg_0))), select(!select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(global1.x, arg_0, false), vec3<bool>(true, global1.x, global1.x)), vec3<bool>(any(vec4<bool>(global1.x, arg_0, false, global1.x)), false, false), true)), vec3<bool>(false, arg_1 > arg_1, !all(!vec4<bool>(global1.x, arg_0, global1.x, global1.x))), !vec3<bool>(any(vec2<bool>(global1.x, true)), u_input.b != u_input.b, !any(vec3<bool>(true, true, false))));
    var var_1 = 10307u;
    global0 = array<vec4<f32>, 30>();
    var var_2 = arg_2;
    return Struct_1(firstLeadingBit(~(~reverseBits(vec2<u32>(arg_3.b.x, u_input.a.x)))), vec3<u32>(~_wgslsmith_mult_u32(23329u, arg_3.b.x), 5178u, arg_1), arg_3.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = u_input.b & u_input.b;
    global1 = vec3<bool>(global1.x, all(select(select(select(vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, global1.x, global1.x)), select(vec3<bool>(true, global1.x, true), vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x)), global1.x & global1.x), !vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(true, global1.x, global1.x))), false);
    let var_1 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32((18716u ^ _wgslsmith_dot_vec3_u32(arg_1.b, u_input.a.yzz)) >> (4294967295u % 32u), 30u)]);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(u_input.b, _wgslsmith_mod_i32(8155i >> (~u_input.c % 32u), abs(firstLeadingBit(-34536i))) | -3671i);
    global1 = vec3<bool>(!func_5(func_4(true, ~1u, func_1(), Struct_1(vec2<u32>(13995u, 8813u), u_input.a.zyx, vec3<i32>(u_input.b, 2147483647i, 75481i))), func_4(!global1.x, u_input.a.x, Struct_3(u_input.b), Struct_1(vec2<u32>(26427u, 0u), u_input.a.xyy, vec3<i32>(u_input.b, u_input.b, -2409i)))), func_3(!(!vec4<bool>(global1.x, global1.x, true, global1.x)), Struct_3(-17916i)), true);
    var var_1 = func_1();
    let var_2 = func_4(all(global1.yz), ~28610u, Struct_3(var_1.a), Struct_1(vec2<u32>(_wgslsmith_mult_u32(u_input.c, u_input.a.x), 26370u), abs(vec3<u32>(func_4(global1.x, 3142u, Struct_3(-1i), Struct_1(vec2<u32>(3314u, u_input.a.x), u_input.a.zwz, vec3<i32>(0i, var_1.a, 43600i))).a.x, 4294967295u, ~u_input.a.x)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b, u_input.b, var_1.a), select(vec3<i32>(var_1.a, u_input.b, -2147483647i), abs(vec3<i32>(var_1.a, -2147483647i, 1i)), true)))).c.x;
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(select(u_input.b, -1i & u_input.b, true), var_2) ^ -43505i, _wgslsmith_dot_vec3_i32(-func_4(false, u_input.c, func_1(), func_4(true, 1u, Struct_3(-12594i), Struct_1(vec2<u32>(u_input.a.x, 36372u), u_input.a.xzz, vec3<i32>(0i, -2147483647i, var_1.a)))).c, _wgslsmith_mult_vec3_i32(~(~vec3<i32>(var_2, 34765i, -40327i)), firstTrailingBit(vec3<i32>(var_1.a, var_1.a, u_input.b)) ^ -vec3<i32>(var_1.a, 56678i, -62486i))));
    global1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1645f, 361f)) + -364f)) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-841f * -216f))), select(global1.x && true, global1.x, true), ~var_2 == reverseBits(_wgslsmith_clamp_i32(~2147483647i, var_2, ~var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(296f, 1f, 505f, _wgslsmith_f_op_f32(min(-205f, _wgslsmith_f_op_f32(f32(-1f) * -1797f)))) * vec4<f32>(_wgslsmith_f_op_f32(-191f + _wgslsmith_f_op_f32(trunc(-2279f))), _wgslsmith_f_op_f32(-184f + _wgslsmith_f_op_f32(-1699f * -130f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -501f)), _wgslsmith_f_op_f32(f32(-1f) * -597f))));
}

