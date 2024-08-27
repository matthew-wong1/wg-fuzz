struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 24> = array<bool, 24>(true, true, false, true, true, true, true, false, true, true, false, false, false, false, false, false, false, false, true, true, true, false, false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = arg_2;
    let var_1 = u_input.d.x;
    let var_2 = min(max(~reverseBits(reverseBits(vec4<u32>(4294967295u, 41636u, global0.c.x, u_input.a))), ~reverseBits(vec4<u32>(u_input.b, u_input.a, 0u, 17761u)) >> (vec4<u32>(~56778u, countOneBits(0u), u_input.a, arg_0.x) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(min(arg_0.x, 2134u), 47900u, ~32720u, select(global0.d, 4294967295u, arg_1.x)) << (vec4<u32>(1u, ~4294967295u, ~global0.c.x, ~22241u) % vec4<u32>(32u))));
    var var_3 = i32(-1i) * -2147483647i;
    var_3 = -firstTrailingBit(u_input.d.x);
    return 1u;
}

fn func_2() -> Struct_2 {
    global1 = array<bool, 24>();
    global0 = Struct_2(global0.a, vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), global0.c, _wgslsmith_sub_u32(4294967295u | ~func_3(vec3<u32>(u_input.b, u_input.a, 30120u), vec3<bool>(global0.a, true, true), global0.b.x, 112f), firstLeadingBit(4294967295u)), !(!(true || global1[_wgslsmith_index_u32(u_input.b, 24u)])) && select(any(vec4<bool>(true, true, global0.e, global1[_wgslsmith_index_u32(0u, 24u)])), true, !(1i <= u_input.d.x)));
    global1 = array<bool, 24>();
    let var_0 = global0.d;
    var var_1 = abs(vec4<u32>(~103184u, u_input.b, ~u_input.b, reverseBits(u_input.b)));
    return Struct_2(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.b))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1748f, 1000f), _wgslsmith_div_vec2_f32(global0.b, global0.b), !global0.e)))), ~reverseBits(var_1.wwz), abs(firstTrailingBit(1u) | ~54270u), true);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = 1456f;
    var_0 = global0.b.x;
    var_0 = _wgslsmith_div_f32(global0.b.x, global0.b.x);
    let var_1 = false;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, global0.b.x) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(334f, global0.b.x, arg_0.b.x), vec3<f32>(arg_0.b.x, -520f, -1120f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-733f, arg_0.b.x, global0.b.x), vec3<f32>(arg_0.b.x, global0.b.x, arg_0.b.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.b.x)), _wgslsmith_f_op_f32(select(-1098f, arg_0.b.x, global0.a)), _wgslsmith_f_op_f32(floor(-351f)))))), _wgslsmith_f_op_f32(abs(arg_0.b.x)), u_input.d.x, !select(vec2<bool>(true, true), !select(vec2<bool>(false, arg_0.a), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_3.x, 24u)]), true), all(!vec3<bool>(false, var_1, arg_0.e))));
    return select(~firstTrailingBit(arg_3 << (arg_3 % vec3<u32>(32u))), vec3<u32>(~121486u, arg_2, ~49637u), select(select(select(vec3<bool>(true, arg_0.a, true), vec3<bool>(true, true, arg_1), var_1), !vec3<bool>(var_2.d.x, var_2.d.x, true), true), !vec3<bool>(true, var_2.d.x, global0.e), vec3<bool>(var_2.d.x | false, arg_0.b.x >= var_2.b, true))) >> (global0.c % vec3<u32>(32u));
}

fn func_1() -> vec2<bool> {
    let var_0 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(max(1i, -2131i)), firstLeadingBit(~(-47700i)), u_input.c, u_input.d.x), vec4<i32>(2147483647i, firstTrailingBit(abs(-18834i)), 2147483647i | u_input.e.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.e.x, u_input.c), -u_input.d)));
    var var_1 = _wgslsmith_dot_vec3_u32(func_4(func_2(), any(!vec2<bool>(global0.e, false)), u_input.a, vec3<u32>(1u, global0.c.x ^ 4294967295u, 47824u)), vec3<u32>(~u_input.a | 1u, ~global0.c.x | _wgslsmith_dot_vec2_u32(global0.c.yx, vec2<u32>(1u, global0.c.x)), global0.d)) << (abs(max(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 0u), ~global0.c.x), 55060u)) % 32u);
    var var_2 = vec2<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * global0.b.x) == global0.b.x), false);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, global0.b.x), vec3<f32>(1426f, global0.b.x, 1251f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-256f, global0.b.x, global0.b.x) * vec3<f32>(1598f, 114f, 1000f))))), 402f, 1i, vec2<bool>(select(all(select(vec3<bool>(true, global0.a, global1[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(var_2.x, false, global0.e), vec3<bool>(var_2.x, global0.e, global1[_wgslsmith_index_u32(12561u, 24u)]))), any(!vec2<bool>(true, global0.a)), false), all(!vec3<bool>(false, global0.e, false))));
    return var_3.d;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = reverseBits(_wgslsmith_mod_vec4_i32(arg_1, vec4<i32>(u_input.d.x, -85829i, countOneBits(-u_input.d.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.e.xy, u_input.d), countOneBits(u_input.c), arg_0.c))));
    global0 = func_2();
    global1 = array<bool, 24>();
    var var_1 = (select(-1i, -(var_0.x ^ arg_1.x), false) | firstLeadingBit(arg_0.c)) & _wgslsmith_dot_vec2_i32(select(vec2<i32>(~1i, _wgslsmith_mod_i32(arg_1.x, 0i)), -max(u_input.e.yx, arg_1.wx), any(arg_0.d)), select(_wgslsmith_add_vec2_i32(vec2<i32>(-75769i, -21434i) >> (global0.c.xx % vec2<u32>(32u)), -vec2<i32>(-48670i, arg_0.c)), arg_1.zz, select(vec2<bool>(arg_0.d.x, arg_0.d.x), !arg_0.d, global0.a)));
    let var_2 = Struct_2(true, vec2<f32>(732f, _wgslsmith_div_f32(559f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-872f)))))), ~_wgslsmith_add_vec3_u32(~func_4(Struct_2(false, vec2<f32>(-342f, -1370f), vec3<u32>(0u, global0.c.x, global0.d), global0.d, global0.e), global0.e, 14307u, global0.c), global0.c), func_3(~global0.c, !vec3<bool>(global1[_wgslsmith_index_u32(9808u, 24u)], !arg_0.d.x, u_input.a < u_input.a), global0.b.x, _wgslsmith_f_op_f32(989f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)))), !((abs(global0.c.x) > 1u) & false));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.x;
    let var_1 = _wgslsmith_f_op_f32(trunc(global0.b.x));
    var var_2 = Struct_2(true, vec2<f32>(_wgslsmith_f_op_f32(var_1 + 2769f), global0.b.x), vec3<u32>(max(~0u, _wgslsmith_clamp_u32(u_input.a, global0.c.x, u_input.b) ^ 1u), ~(25033u ^ select(4294967295u, 66722u, global1[_wgslsmith_index_u32(0u, 24u)])), u_input.a), ~0u, false & !any(vec4<bool>(true, true, true, true)));
    let var_3 = Struct_1(vec3<f32>(1422f, -1223f, -853f), global0.b.x, 1181i, !func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -189f, 560f)), _wgslsmith_f_op_f32(-168f + 906f), -u_input.c, func_1()), ~vec4<i32>(u_input.e.x, u_input.d.x, u_input.e.x, 2147483647i)));
    let var_4 = _wgslsmith_add_u32(39721u, _wgslsmith_dot_vec3_u32(global0.c, global0.c));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -u_input.e.x, 29014u, min(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 56181u, var_2.d), vec3<u32>(global0.d, 4294967295u, var_2.d), var_2.c), vec3<u32>(69097u, 37802u, var_2.c.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 4235u, var_4), vec3<u32>(u_input.a, 122990u, 0u))) | global0.c);
}

