struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<i32>(9009i, -12709i, 1i)), Struct_1(vec3<i32>(0i, 1i, -25774i)), Struct_1(vec3<i32>(1i, i32(-2147483648), -14930i)), Struct_1(vec3<i32>(-34464i, 1i, -1i)), Struct_1(vec3<i32>(-11139i, 2147483647i, 1i)), Struct_1(vec3<i32>(15054i, 4615i, -2692i)), Struct_1(vec3<i32>(-24020i, i32(-2147483648), 2147483647i)), Struct_1(vec3<i32>(-79298i, 1i, 23737i)), Struct_1(vec3<i32>(1i, 2147483647i, -40024i)), Struct_1(vec3<i32>(620i, 1i, -1i)), Struct_1(vec3<i32>(-51705i, 2147483647i, -38010i)), Struct_1(vec3<i32>(1i, i32(-2147483648), 17100i)), Struct_1(vec3<i32>(-12326i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(47829i, -23453i, -1i)), Struct_1(vec3<i32>(48378i, 21445i, 23070i)), Struct_1(vec3<i32>(2147483647i, 2147483647i, -1924i)), Struct_1(vec3<i32>(i32(-2147483648), 11453i, 54005i)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 4088i)), Struct_1(vec3<i32>(12192i, 1i, -26340i)), Struct_1(vec3<i32>(-692i, 1i, 2147483647i)), Struct_1(vec3<i32>(-1i, -34953i, -32836i)), Struct_1(vec3<i32>(11396i, -35718i, -15733i)), Struct_1(vec3<i32>(3208i, -27294i, 0i)), Struct_1(vec3<i32>(3174i, -23077i, -54339i)));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-33643i, 0i, -8769i));

var<private> global2: array<vec2<i32>, 31>;

var<private> global3: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = firstTrailingBit(2147483647i);
    let var_1 = Struct_1(vec3<i32>(arg_0.a.x, firstLeadingBit(-_wgslsmith_mod_i32(arg_3.a.x, 18079i)), countOneBits(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, -2147483647i), u_input.b.wx))));
    let var_2 = ~_wgslsmith_mult_vec4_u32(firstLeadingBit(abs(vec4<u32>(48736u, 1u, u_input.e.x, 24145u))) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(u_input.d, 0u, 1u, 4294967295u)) % vec4<u32>(32u)), ~select(select(vec4<u32>(u_input.e.x, u_input.d, u_input.e.x, u_input.e.x), vec4<u32>(8792u, u_input.e.x, 0u, 15848u), vec4<bool>(false, false, true, false)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 32348u), true));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-504f, _wgslsmith_f_op_f32(min(2111f, -781f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1254f + -1000f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(-1587f))), _wgslsmith_f_op_f32(-1f))))));
    global1 = var_1;
    return ~(-27528i);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> vec3<bool> {
    var var_0 = Struct_1(-vec3<i32>(-func_3(arg_2, Struct_1(vec3<i32>(global3.a.x, -31267i, arg_0)), Struct_1(arg_2.a), Struct_1(vec3<i32>(-2147483647i, -1i, u_input.c))), arg_0, max(-33072i, global3.a.x ^ 1555i)));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_3 = max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.x, 1u, u_input.d, arg_1.x) >> (vec4<u32>(u_input.d, 1u, 0u, 1u) % vec4<u32>(32u)), vec4<u32>(firstTrailingBit(arg_1.x), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, arg_1.x), u_input.e), _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(u_input.e.x, 13623u))), reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, u_input.d, 71139u, 1u), vec4<u32>(1190u, 57622u, 39591u, arg_1.x)))) >> (min(~(~vec4<u32>(u_input.a.x, arg_1.x, u_input.e.x, 0u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, u_input.e.x, u_input.e.x, arg_1.x), vec4<u32>(29308u, 31808u, u_input.a.x, 48829u))) % vec4<u32>(32u)), abs(vec4<u32>(~u_input.a.x, arg_1.x, arg_1.x, 1u)));
    global2 = array<vec2<i32>, 31>();
    return vec3<bool>(all(!(!(!vec3<bool>(var_1, true, var_1)))), !var_1, select(false, true, select(false, true, true)));
}

fn func_1(arg_0: vec3<u32>) -> vec3<u32> {
    var var_0 = Struct_1(global3.a);
    global3 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.d & _wgslsmith_dot_vec2_u32(u_input.a & arg_0.zy, u_input.e.xy), u_input.e.x, u_input.a.x), 24u)];
    global0 = array<Struct_1, 24>();
    let var_1 = select(select(!func_2(global3.a.x, abs(vec2<u32>(arg_0.x, 22859u)), global0[_wgslsmith_index_u32(~48962u, 24u)], true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))) & true, false, all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true))), arg_0.x <= abs(~0u));
    var var_2 = _wgslsmith_mod_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0.x, 0u), vec2<u32>(17831u, arg_0.x), ~u_input.a)), u_input.a);
    return _wgslsmith_sub_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 45198u, var_2.x), vec3<u32>(arg_0.x, 4294967295u, var_2.x)) >> (vec3<u32>(~u_input.a.x, 4294967295u, reverseBits(var_2.x)) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(112984u, 30195u, 1226u), vec3<u32>(1u, ~var_2.x, ~0u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(global1.a);
    let var_1 = Struct_1(abs(~firstLeadingBit(vec3<i32>(u_input.b.x, u_input.c, arg_0.a.x))));
    var var_2 = Struct_1(u_input.b.yzz);
    let var_3 = ~select(~(~arg_1 << (func_1(u_input.e).yy % vec2<u32>(32u))), ~vec2<u32>(72250u, 0u), func_2(func_3(arg_0, Struct_1(var_0.a), global0[_wgslsmith_index_u32(0u, 24u)], Struct_1(vec3<i32>(1i, var_2.a.x, var_1.a.x))), u_input.a, var_1, true).yz);
    let var_4 = true && (true && func_2(func_3(var_1, Struct_1(vec3<i32>(global1.a.x, var_1.a.x, 0i)), var_0, arg_0), _wgslsmith_clamp_vec2_u32(~var_3, u_input.e.yy, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), u_input.a, vec2<u32>(arg_2, 52719u))), global0[_wgslsmith_index_u32(~arg_2, 24u)], true).x);
    return Struct_1(~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(10244i, 0i, 46105i), _wgslsmith_sub_vec3_i32(vec3<i32>(-9724i, 2147483647i, global3.a.x), vec3<i32>(var_1.a.x, var_1.a.x, global1.a.x))), -global3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(Struct_1(~vec3<i32>(31671i, -u_input.c, _wgslsmith_div_i32(global3.a.x, -603i))), u_input.e.xz, ~_wgslsmith_dot_vec3_u32(~u_input.e, _wgslsmith_sub_vec3_u32(func_1(vec3<u32>(0u, 932u, u_input.d)), ~vec3<u32>(1u, u_input.d, 56595u))));
    global0 = array<Struct_1, 24>();
    var var_0 = vec4<i32>(22023i, u_input.b.x, ~global3.a.x, 1i);
    let var_1 = Struct_1(_wgslsmith_sub_vec3_i32(~global3.a, _wgslsmith_add_vec3_i32(min(u_input.b.ywy & global3.a, u_input.b.zyz), vec3<i32>(func_4(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], vec2<u32>(u_input.e.x, 51327u), 0u).a.x, -var_0.x, _wgslsmith_mult_i32(1i, 30895i)))));
    global2 = array<vec2<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(u_input.d | 20862u) & ~_wgslsmith_mod_u32(u_input.d, u_input.e.x), firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) << (69688u % 32u), 102500u, 68654u), var_1.a.x, -373f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(179f, 758f))))));
}

