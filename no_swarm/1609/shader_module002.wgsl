struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 36512u, 0u)), Struct_1(vec2<bool>(true, false), vec3<u32>(15974u, 149927u, 36830u)), Struct_1(vec2<bool>(true, false), vec3<u32>(25412u, 28658u, 46593u)), Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 12877u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 53542u, 10319u)), Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 33824u, 0u)), Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 25277u, 18999u)), Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 87468u, 73013u)), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 852u, 0u)), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 85670u, 1u)), Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 1u, 0u)), Struct_1(vec2<bool>(false, false), vec3<u32>(73528u, 21656u, 45500u)), Struct_1(vec2<bool>(true, false), vec3<u32>(21493u, 4294967295u, 0u)), Struct_1(vec2<bool>(true, false), vec3<u32>(16482u, 0u, 0u)), Struct_1(vec2<bool>(true, false), vec3<u32>(9618u, 10202u, 28143u)), Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 4294967295u, 2431u)), Struct_1(vec2<bool>(true, true), vec3<u32>(29662u, 0u, 17588u)), Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 4294967295u, 29472u)), Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 110550u, 3057u)), Struct_1(vec2<bool>(true, false), vec3<u32>(36688u, 4442u, 34425u)), Struct_1(vec2<bool>(true, false), vec3<u32>(74358u, 0u, 1u)), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 19443u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 4294967295u, 16718u)), Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 0u, 0u)), Struct_1(vec2<bool>(true, false), vec3<u32>(32319u, 0u, 47877u)), Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 20755u, 0u)), Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 21063u, 60328u)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~(~4294967295u), 29u)];
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-925f + _wgslsmith_div_f32(1143f, 332f)), 1f)), global1[_wgslsmith_index_u32(arg_3.x, 29u)], Struct_1(!select(var_0.a, arg_0.a, !var_0.a), vec3<u32>(~_wgslsmith_clamp_u32(arg_1, 4464u, 4294967295u), ~40657u, arg_1 >> (~var_0.b.x % 32u))));
    let var_2 = var_1;
    let var_3 = var_1.b;
    var_0 = Struct_1(vec2<bool>(-_wgslsmith_add_i32(u_input.a.x, -1i) == 1i, !any(vec3<bool>(false, arg_0.a.x, true))), _wgslsmith_div_vec3_u32(min(firstLeadingBit(~arg_3), min(arg_0.b, var_3.b >> (vec3<u32>(0u, arg_0.b.x, 19394u) % vec3<u32>(32u)))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 32167u, 3508u), vec3<u32>(var_2.b.b.x, 0u, 1u))));
    return Struct_1(var_1.c.a, max(~vec3<u32>(arg_3.x, var_0.b.x, var_2.b.b.x), ~var_0.b));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(false, arg_0, arg_0.a.x | true, reverseBits(~min(~vec2<i32>(u_input.b, 1i), ~vec2<i32>(29008i, 57097i))), vec4<u32>(abs(_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 4294967295u), func_2(Struct_1(arg_0.a, arg_0.b), arg_0.b.x, vec3<i32>(u_input.a.x, -2147483647i, u_input.b), arg_0.b).b.x)), ~arg_0.b.x, arg_0.b.x, ~2462u));
    let var_1 = global1[_wgslsmith_index_u32((var_0.e.x ^ arg_0.b.x) & ~47636u, 29u)];
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(449f - -632f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2360f), _wgslsmith_f_op_f32(select(198f, _wgslsmith_f_op_f32(f32(-1f) * -359f), arg_0.a.x)), func_2(Struct_1(vec2<bool>(true, true), vec3<u32>(var_1.b.x, 1u, var_0.e.x)), _wgslsmith_dot_vec3_u32(arg_0.b, var_0.b.b), ~vec3<i32>(u_input.a.x, 14260i, 17384i), ~vec3<u32>(var_1.b.x, 1u, 58968u)).a.x))));
    global0 = !func_2(func_2(global1[_wgslsmith_index_u32(~min(var_1.b.x, 51376u), 29u)], 0u, _wgslsmith_mod_vec3_i32(select(vec3<i32>(-1i, -12268i, u_input.a.x), vec3<i32>(var_0.d.x, -2147483647i, -1i), vec3<bool>(var_1.a.x, true, false)), -vec3<i32>(-24620i, u_input.b, -29368i)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), func_2(arg_0, 1u, vec3<i32>(-2147483647i, u_input.b, u_input.b), arg_0.b).b)), reverseBits(~61936u), firstLeadingBit(-vec3<i32>(16610i, -30481i, -16676i)), firstTrailingBit(_wgslsmith_clamp_vec3_u32(var_0.e.xxy, vec3<u32>(0u, 49275u, arg_0.b.x), var_1.b) ^ countOneBits(var_0.b.b))).a;
    let var_3 = Struct_2(any(vec3<bool>(all(vec4<bool>(var_0.c, var_1.a.x, arg_0.a.x, var_1.a.x)), global0.x, var_1.a.x | true)), func_2(func_2(var_0.b, 1u, ~vec3<i32>(5043i, u_input.a.x, 23292i), arg_0.b), arg_0.b.x, select(countOneBits(-vec3<i32>(34677i, -24394i, -2147483647i)), vec3<i32>(-1i, var_0.d.x, 22806i) << (func_2(global1[_wgslsmith_index_u32(30126u, 29u)], 31554u, vec3<i32>(-1i, var_0.d.x, u_input.a.x), vec3<u32>(var_0.e.x, arg_0.b.x, var_0.b.b.x)).b % vec3<u32>(32u)), false), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.e.zxw, _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.b.x, 4294967295u), arg_0.b)), ~(~var_1.b))), all(vec4<bool>(any(!vec3<bool>(false, true, arg_0.a.x)), true, true & var_0.c, (4294967295u > var_1.b.x) || var_1.a.x)), u_input.a, abs(var_0.e));
    return var_3.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    var var_0 = arg_0.b.a.x;
    var_0 = arg_2.a.x;
    var_0 = true;
    return Struct_2(true, Struct_1(vec2<bool>(true, true), ~arg_2.b), true, (max(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -26965i), u_input.a), u_input.a ^ vec2<i32>(u_input.b, u_input.b)) << (abs(arg_0.b.b.zy) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(~25359u, countOneBits(4294967295u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_3, 9603u) >> (arg_2.b.xy % vec2<u32>(32u)), arg_0.b.b.zz)) % vec2<u32>(32u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_3, arg_3, arg_3, arg_2.b.x)), select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3, 1u, arg_0.b.b.x, 1u), vec4<u32>(arg_3, arg_3, arg_2.b.x, 1u), vec4<u32>(arg_0.b.b.x, arg_3, 34792u, arg_2.b.x)), firstLeadingBit(vec4<u32>(arg_0.c.b.x, arg_2.b.x, arg_3, arg_0.c.b.x)), !select(true, false, false)), firstLeadingBit(abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b.x, arg_2.b.x, 24167u, arg_2.b.x), vec4<u32>(0u, arg_0.c.b.x, arg_0.b.b.x, arg_2.b.x))))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = func_4(Struct_3(arg_2.a, global1[_wgslsmith_index_u32(arg_3.b.x, 29u)], func_3(func_2(arg_1, _wgslsmith_mult_u32(arg_3.b.x, 5207u), ~vec3<i32>(arg_0, -1i, 2147483647i), countOneBits(arg_1.b)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1536f)))), arg_3, 12469u);
    let var_1 = var_0.b;
    global0 = func_3(func_3(Struct_1(!func_2(arg_3, 6528u, vec3<i32>(u_input.a.x, 0i, arg_0), arg_2.c.b).a, ~vec3<u32>(var_0.b.b.x, 29433u, var_1.b.x) | ~vec3<u32>(4294967295u, 4294967295u, arg_3.b.x)))).a;
    var var_2 = arg_2;
    let var_3 = var_2.a;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = arg_1.x;
    let var_1 = Struct_2(global0.x, func_3(Struct_1(func_3(Struct_1(vec2<bool>(global0.x, global0.x), vec3<u32>(4294967295u, 44850u, arg_2.x))).a, vec3<u32>(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_add_u32(arg_2.x, arg_2.x), _wgslsmith_mod_u32(arg_2.x, arg_2.x)))), all(select(select(vec4<bool>(false, false, false, global0.x), vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x), global0.x)), !select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, true, global0.x, global0.x)), true)), u_input.a, vec4<u32>(select(4294967295u, _wgslsmith_mod_u32(52u, arg_2.x), false), arg_2.x, _wgslsmith_mod_u32(arg_2.x & arg_2.x, arg_2.x), _wgslsmith_mod_u32(arg_2.x, ~arg_2.x)));
    global0 = select(vec2<bool>(global0.x, true), func_3(func_3(global1[_wgslsmith_index_u32(26476u, 29u)])).a, false);
    var var_2 = -1476f;
    global1 = array<Struct_1, 29>();
    return var_1.b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = !arg_0.a.x;
    let var_1 = vec4<u32>(func_2(Struct_1(!select(vec2<bool>(arg_1.c.a.x, arg_1.c.a.x), vec2<bool>(var_0, false), true), ~vec3<u32>(arg_0.b.x, 51354u, arg_1.b.b.x)), ~arg_0.b.x ^ 34755u, reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, 0i) ^ vec3<i32>(u_input.b, u_input.b, 1i)), arg_1.c.b).b.x, ~arg_1.c.b.x, arg_1.c.b.x, arg_0.b.x);
    let var_2 = 1u;
    global1 = array<Struct_1, 29>();
    global0 = !select(vec2<bool>(_wgslsmith_f_op_f32(1819f + arg_1.a) < _wgslsmith_f_op_f32(exp2(arg_1.a)), global0.x), select(select(vec2<bool>(arg_0.a.x, false), arg_0.a, select(arg_1.c.a, arg_1.c.a, vec2<bool>(var_0, false))), arg_1.b.a, arg_0.a), global0.x);
    return StorageBuffer(reverseBits(~abs(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(0i, global1[_wgslsmith_index_u32(4294967295u, 29u)], Struct_3(1000f, global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(4433u, 29u)]), global1[_wgslsmith_index_u32(45905u, 29u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1466f, 774f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-792f, -1036f), -130f, -620f, _wgslsmith_f_op_f32(min(1000f, -255f)))), countOneBits(vec3<u32>(12156u, 1u, 1u)) | select(abs(vec3<u32>(4294967295u, 25088u, 1u)), ~vec3<u32>(0u, 12987u, 28022u), !global0.x)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f) + _wgslsmith_f_op_f32(-256f - 836f)) + _wgslsmith_f_op_f32(-1f)), Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 10186u, _wgslsmith_clamp_u32(4294967295u, 73490u, 2068u))), func_2(global1[_wgslsmith_index_u32(61078u, 29u)], min(0u, ~0u), reverseBits(vec3<i32>(u_input.b, -32i, u_input.b)), vec3<u32>(_wgslsmith_div_u32(146308u, 1u), 75007u, abs(287u)))));
}

