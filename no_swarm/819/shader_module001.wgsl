struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> bool {
    let var_0 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.a, u_input.b.x)) == ~35766u));
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    var var_1 = ~(~vec2<i32>(global0[_wgslsmith_index_u32(0u & u_input.b.x, 22u)], global0[_wgslsmith_index_u32(41302u, 22u)]) & ~(-(~vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 22u)]))));
    global0 = array<i32, 22>();
    return any(select(var_0.wx, var_0.xz, all(var_0.ywy)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: bool) -> i32 {
    let var_0 = Struct_2(arg_0.c, select(min(abs(vec4<u32>(3198u, 58037u, 1u, 19719u)), min(vec4<u32>(u_input.a, arg_2.a.a, arg_2.a.a, 18425u), ~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.a))), firstLeadingBit(vec4<u32>(arg_2.a.a, arg_0.a, 44357u, u_input.a)) & (abs(vec4<u32>(2269u, 1u, 29545u, 58318u)) | ~vec4<u32>(4294967295u, 41579u, 30911u, arg_2.a.a)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_2.a.d.x, arg_2.a.b), 1i) != firstTrailingBit(arg_0.b)), Struct_1(arg_0.a, -2147483647i, !select(arg_0.c, arg_3, arg_1.x) && !arg_3, select(-select(arg_0.d, vec2<i32>(1i, -2147483647i), arg_1.x), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_0.a, 22u)], global0[_wgslsmith_index_u32(arg_0.a, 22u)]), arg_2.a.d), select(vec2<i32>(2147483647i, arg_2.a.d.x), vec2<i32>(arg_0.d.x, 10244i), arg_1.zy), arg_2.a.d & vec2<i32>(arg_2.a.b, global0[_wgslsmith_index_u32(6289u, 22u)])), !select(vec2<bool>(false, arg_3), arg_1.yz, vec2<bool>(true, arg_0.c)))), -(~vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.a.a, arg_0.a), 22u)], ~global0[_wgslsmith_index_u32(17584u, 22u)])));
    let var_1 = select(!(!(!vec4<bool>(true, arg_3, arg_0.c, true))), vec4<bool>(true, true, !(39351i > _wgslsmith_dot_vec2_i32(vec2<i32>(45383i, global0[_wgslsmith_index_u32(1u, 22u)]), vec2<i32>(-34525i, arg_0.d.x))), all(vec4<bool>(true, 7423i > arg_2.a.b, select(arg_0.c, false, arg_1.x), arg_3 || arg_3))), any(select(select(select(arg_1, vec3<bool>(true, false, false), true), !vec3<bool>(arg_3, false, true), select(vec3<bool>(arg_3, arg_0.c, false), arg_1, arg_2.a.c)), vec3<bool>(true, true, true), select(select(arg_1, vec3<bool>(arg_0.c, true, true), false), arg_1, false))));
    let var_2 = -121f;
    let var_3 = _wgslsmith_f_op_f32(floor(759f));
    var var_4 = -2748f;
    return 0i;
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(max(1350f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(sign(1000f))))))));
    let var_1 = _wgslsmith_sub_vec4_u32(abs(max(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 32988u, 1u), vec4<u32>(u_input.b.x, 53849u, u_input.a, u_input.b.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 0u, 375u, 101512u), ~vec4<u32>(1u, 62179u, u_input.b.x, 39505u)))), max(vec4<u32>(~4294967295u, u_input.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(45987u, u_input.b.x, u_input.a, 124967u), vec4<u32>(u_input.a, 1u, u_input.b.x, u_input.a)), u_input.b.x, abs(u_input.a)), firstTrailingBit(vec4<u32>(u_input.a, 1u, u_input.a, 1u)) << ((_wgslsmith_div_vec4_u32(vec4<u32>(25824u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) >> (vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var var_2 = Struct_1(u_input.b.x, -_wgslsmith_mult_i32(firstLeadingBit(-1773i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_1.x, 22u)], global0[_wgslsmith_index_u32(var_1.x, 22u)], global0[_wgslsmith_index_u32(var_1.x, 22u)]), vec4<i32>(-18832i, global0[_wgslsmith_index_u32(75614u, 22u)], 41960i, global0[_wgslsmith_index_u32(1u, 22u)]))) & ~global0[_wgslsmith_index_u32(49911u, 22u)], func_2() == (true | (~global0[_wgslsmith_index_u32(0u, 22u)] >= func_3(Struct_1(38870u, 1i, true, vec2<i32>(global0[_wgslsmith_index_u32(var_1.x, 22u)], 1i)), vec3<bool>(true, false, true), Struct_4(Struct_1(var_1.x, -1i, true, vec2<i32>(-16504i, -36852i))), true))), -vec2<i32>(-_wgslsmith_add_i32(global0[_wgslsmith_index_u32(16391u, 22u)], 0i), global0[_wgslsmith_index_u32(4760u, 22u)]));
    let var_3 = Struct_3(Struct_2(true, ~var_1 | var_1, Struct_1(~35287u, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(0u, 22u)] ^ -1i, -30349i), var_2.c, ~(var_2.d | var_2.d)), ~var_2.d));
    var var_4 = Struct_3(Struct_2(true, vec4<u32>(select(firstLeadingBit(var_1.x), _wgslsmith_sub_u32(20866u, var_2.a), any(vec4<bool>(var_2.c, var_3.a.a, var_3.a.a, false))), var_2.a, var_3.a.b.x, abs(~var_1.x)), var_3.a.c, var_2.d));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 288f, 144f) - vec3<f32>(487f, var_0, -1227f)))))));
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: u32, arg_3: bool) -> Struct_3 {
    var var_0 = true;
    return Struct_3(arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())))), Struct_2(true, abs(vec4<u32>(35820u, 78059u, u_input.a, 1u) >> (vec4<u32>(1u, u_input.b.x, 49098u, u_input.b.x) % vec4<u32>(32u))), Struct_1(~39262u, -29076i, all(vec2<bool>(true, false)), reverseBits(vec2<i32>(0i, 1i))), -firstLeadingBit(vec2<i32>(-11808i, global0[_wgslsmith_index_u32(u_input.b.x, 22u)]))), Struct_2(true, _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.a), ~vec4<u32>(u_input.a, 21244u, u_input.b.x, 19507u)), Struct_1(0u, ~global0[_wgslsmith_index_u32(15628u, 22u)], all(vec4<bool>(true, true, true, true)), firstLeadingBit(vec2<i32>(-61754i, 26754i))), vec2<i32>(_wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 22u)]), ~global0[_wgslsmith_index_u32(0u, 22u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-918f, 1010f, true))))), 20394u, _wgslsmith_add_u32(74527u, _wgslsmith_mod_u32(max(51289u, 41037u), u_input.a)), all(vec3<bool>(!any(vec3<bool>(false, false, false)), true, true)));
    let var_1 = vec4<i32>(abs(var_0.a.c.b), _wgslsmith_div_i32(~1i | ~var_0.a.c.b, global0[_wgslsmith_index_u32(var_0.a.c.a, 22u)]), _wgslsmith_div_i32(i32(-1i) * -44422i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(var_0.a.c.a, 22u)], -26120i), vec4<i32>(global0[_wgslsmith_index_u32(var_0.a.c.a, 22u)], -2147483647i, var_0.a.d.x, global0[_wgslsmith_index_u32(2629u, 22u)]))), i32(-1i) * -_wgslsmith_add_i32(-4511i, 1i)) >> ((~func_4(Struct_5(vec3<f32>(817f, 596f, 1038f), var_0.a, Struct_2(var_0.a.a, vec4<u32>(u_input.a, 4294967295u, var_0.a.b.x, var_0.a.b.x), var_0.a.c, var_0.a.c.d), 180f), var_0.a.c.a, var_0.a.b.x, var_0.a.a).a.b >> (vec4<u32>(~firstTrailingBit(var_0.a.c.a), 50955u, ~(var_0.a.c.a << (20715u % 32u)), ~(~u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = countOneBits(max(-(_wgslsmith_mod_i32(1i, global0[_wgslsmith_index_u32(var_0.a.c.a, 22u)]) | ~(-2147483647i)), 50090i));
    let var_3 = Struct_3(var_0.a);
    let var_4 = 0i;
    let var_5 = var_3.a.b | vec4<u32>(~_wgslsmith_clamp_u32(u_input.b.x, var_0.a.c.a, 0u) >> (~var_0.a.b.x % 32u), max(max(abs(46113u), _wgslsmith_mod_u32(0u, var_0.a.c.a)), abs(0u)), 1u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_3.a.b.x, 1u), 1u), var_0.a.b.x, u_input.b.x, 29980u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1315f, 1790f, -1003f), vec3<f32>(457f, -568f, -268f), vec3<bool>(var_3.a.a, var_0.a.c.c, var_0.a.a))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1142f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(556f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1683f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1244f)));
}

