struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_3;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<f32>) -> bool {
    var var_0 = arg_1.a;
    var var_1 = Struct_1(any(select(global1.b.c, select(!vec3<bool>(arg_1.a.a, global1.b.a, true), global1.b.c, !arg_0.c), select(global1.b.c, !arg_0.c, select(vec3<bool>(true, global1.b.c.x, var_0.a), vec3<bool>(true, false, var_0.a), global1.b.c)))), _wgslsmith_f_op_f32(-335f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.c))) * arg_0.b)), vec3<bool>(!all(select(vec2<bool>(false, true), global1.b.c.xz, vec2<bool>(true, true))), false, true));
    let var_2 = global1.b.b;
    var var_3 = _wgslsmith_mod_u32(global0.a.b.x, ~_wgslsmith_add_u32(0u, _wgslsmith_add_u32(~arg_1.d.b.x, firstLeadingBit(arg_1.d.b.x))));
    return arg_0.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec4<bool> {
    return select(!vec4<bool>(all(global1.b.c) & true, global0.a.a, all(vec4<bool>(global0.d.a, global1.b.c.x, global1.b.c.x, global0.e)), false), vec4<bool>(func_3(Struct_1(global0.a.a && global0.b, _wgslsmith_f_op_f32(trunc(global1.b.b)), select(vec3<bool>(false, global0.b, global0.a.a), global1.b.c, global0.b)), Struct_4(global0.a, 4294967295u != u_input.b.x, global0.c, global0.a, true), arg_0.yyx), (global0.d.a & global1.b.a) == global0.d.a, global0.a.a, global1.b.c.x), select(vec4<bool>(true, !func_3(global1.b, Struct_4(global0.a, true, arg_0.x, global0.d, false), vec3<f32>(-368f, arg_0.x, -1154f)), true, (global0.d.b.x <= 1u) | any(vec3<bool>(global0.a.a, global0.e, true))), !vec4<bool>(true, all(vec2<bool>(false, false)), !global0.a.a, !global1.b.c.x), select(select(!vec4<bool>(global0.e, false, global0.e, global0.b), vec4<bool>(false, global0.a.a, false, false), true && global0.d.a), !select(vec4<bool>(true, true, global1.b.c.x, true), vec4<bool>(global1.b.c.x, true, global0.a.a, global1.b.c.x), global1.b.c.x), select(vec4<bool>(true, false, global0.a.a, true), vec4<bool>(false, global0.d.a, true, global1.b.a), !vec4<bool>(global0.d.a, true, false, false)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>) -> Struct_4 {
    global0 = Struct_4(Struct_2(true, vec3<u32>(u_input.e, _wgslsmith_dot_vec2_u32(reverseBits(global1.a), vec2<u32>(34620u, 1u)), ~_wgslsmith_mult_u32(global1.a.x, global0.d.b.x)), _wgslsmith_clamp_vec4_i32(abs(global0.d.c), vec4<i32>(-global0.d.c.x, ~(-1i), -12672i, countOneBits(2147483647i)), abs(vec4<i32>(-1057i, global0.a.c.x, 73514i, u_input.a.x)))), all(vec3<bool>(global1.b.c.x, all(select(vec4<bool>(global1.b.a, global1.b.c.x, true, global1.b.c.x), vec4<bool>(global0.d.a, arg_1.x, false, arg_1.x), arg_1.x)), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-362f)), _wgslsmith_f_op_f32(global1.b.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.b)) - global0.c)), global1.b.c.x)), global0.d, u_input.b.x <= arg_0.x);
    return Struct_4(Struct_2(func_3(Struct_1(true, 1020f, vec3<bool>(global0.b, false, global1.b.a)), Struct_4(global0.d, global0.a.c.x >= u_input.a.x, 1000f, Struct_2(false, vec3<u32>(65960u, 20790u, arg_0.x), global0.a.c), 1883f != global1.b.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(118f, global1.b.b, global0.c))), u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 0i), global0.a.c) ^ firstLeadingBit(~vec4<i32>(2147483647i, 2147483647i, -23556i, u_input.d))), any(select(arg_1, arg_1, false)), _wgslsmith_f_op_f32(ceil(895f)), Struct_2(true, countOneBits(u_input.b), -(global0.d.c >> (vec4<u32>(3106u, global0.a.b.x, global1.a.x, arg_0.x) % vec4<u32>(32u)))), false);
}

fn func_1() -> Struct_4 {
    global0 = func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(4294967295u, u_input.b.x) ^ ~global1.a.x, 1u), u_input.b.zy), func_2(vec4<f32>(global1.b.b, -1855f, global0.c, 1386f), _wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.a.x, _wgslsmith_dot_vec2_i32(global0.a.c.yz, vec2<i32>(0i, u_input.d))), vec2<i32>(u_input.d, countOneBits(1i)))));
    let var_0 = u_input.d;
    global0 = Struct_4(func_4(vec2<u32>(_wgslsmith_sub_u32(~global1.a.x, ~1u), ~abs(global0.a.b.x)), vec4<bool>(false, !all(vec4<bool>(global1.b.a, global0.b, global1.b.c.x, global0.e)), func_3(Struct_1(true, 770f, global1.b.c), Struct_4(Struct_2(true, global0.a.b, vec4<i32>(var_0, -1i, u_input.a.x, 8885i)), true, -1117f, Struct_2(false, global0.a.b, vec4<i32>(var_0, global0.d.c.x, u_input.c.x, -67711i)), false), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-590f, 807f, global1.b.b)))), !(!global0.a.a))).d, true, _wgslsmith_f_op_f32(-global1.b.b), func_4(~select(~vec2<u32>(16335u, 35688u), global1.a, global1.b.c.zx), select(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-880f, global1.b.b, global0.c, global1.b.b)), vec2<i32>(global0.a.c.x, global0.d.c.x)), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(683f, 926f, global1.b.b, -681f) - vec4<f32>(1578f, 1000f, -341f, -2098f)), select(vec2<i32>(var_0, 31679i), vec2<i32>(56267i, u_input.c.x), false)), select(vec4<bool>(false, false, global0.d.a, true), vec4<bool>(true, false, global0.d.a, false), !vec4<bool>(global0.d.a, false, false, false)))).a, !global1.b.c.x);
    var var_1 = -u_input.a.x;
    global1 = Struct_3(_wgslsmith_mod_vec2_u32(u_input.b.yz, vec2<u32>(~_wgslsmith_div_u32(global0.d.b.x, 13906u), 86107u)), global1.b);
    return Struct_4(func_4(vec2<u32>(global1.a.x, 1u), vec4<bool>(!(!global1.b.c.x), true, !global1.b.c.x, false)).a, false, 2239f, Struct_2((global0.e | true) && global0.a.a, _wgslsmith_mod_vec3_u32(~vec3<u32>(78088u, 31158u, 1u), ~(~vec3<u32>(0u, u_input.e, 8580u))), func_4(vec2<u32>(~49775u, 1u), vec4<bool>(global0.c == 467f, select(global0.b, false, true), true, true)).d.c), global1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b))), global1.b.c);
    var_0 = global1.b;
    let var_1 = !(!select(!select(vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(false, true, global0.e, global1.b.c.x), vec4<bool>(false, global1.b.a, global1.b.a, true)), !select(vec4<bool>(global1.b.a, true, global0.a.a, true), vec4<bool>(true, global1.b.a, global0.e, false), false), vec4<bool>(true, false, false, true)));
    let var_2 = Struct_4(func_4(~(~firstLeadingBit(vec2<u32>(global1.a.x, 1u))), var_1).a, true, _wgslsmith_f_op_f32(round(global0.c)), Struct_2(func_4(global0.d.b.yx, var_1).e, u_input.b, _wgslsmith_mult_vec4_i32(firstLeadingBit(-global0.d.c), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, global0.d.c.x, -42662i, 34534i), vec4<i32>(global0.a.c.x, -2147483647i, global0.d.c.x, u_input.d)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(select(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, global0.a.b.x, 4294967295u, 8770u), vec4<u32>(0u, global1.a.x, var_2.d.b.x, 0u), vec4<u32>(0u, var_2.a.b.x, global0.a.b.x, 4294967295u)), vec4<u32>(global0.d.b.x, 0u, 0u, 38645u)), countOneBits(vec4<u32>(global0.a.b.x, global1.a.x, 0u, var_2.d.b.x)) >> (max(vec4<u32>(u_input.e, 4294967295u, 1u, 7890u), vec4<u32>(0u, u_input.e, u_input.e, 52517u)) % vec4<u32>(32u)), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-868f, -1000f, global0.c, -1389f), vec4<f32>(var_0.b, global0.c, var_0.b, global0.c), false)), vec2<i32>(global0.d.c.x, -1i))), min(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.b.x, global1.a.x, 28676u, global0.d.b.x), ~vec4<u32>(32405u, global1.a.x, global0.d.b.x, global0.a.b.x)), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(49446u, global1.a.x, 4294967295u, 72208u)), vec4<u32>(u_input.e, 84987u, 1u, 84840u)))), vec3<i32>(u_input.d, -global0.d.c.x, ~(var_2.a.c.x ^ _wgslsmith_dot_vec3_i32(global0.d.c.ywy, var_2.a.c.wyy))), vec4<u32>(8199u, u_input.e, global1.a.x, var_2.a.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1982f, global0.c, global0.c)))))));
}

