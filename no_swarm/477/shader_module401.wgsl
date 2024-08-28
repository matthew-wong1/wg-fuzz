struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<i32, 10>;

var<private> global3: array<u32, 14> = array<u32, 14>(28861u, 39256u, 4627u, 1u, 42274u, 0u, 1u, 75534u, 1u, 4294967295u, 4294967295u, 44991u, 31406u, 25463u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(arg_0.a, arg_0.b, vec2<u32>(0u, 22578u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0.d))), vec4<bool>(any(vec4<bool>(arg_0.e.x, arg_0.e.x, true, arg_0.e.x)), arg_0.e.x, arg_0.e.x, abs(abs(14428i)) <= ~(~arg_0.a.x)));
    let var_1 = arg_0;
    var_0 = Struct_1(_wgslsmith_add_vec3_i32(reverseBits(-_wgslsmith_mod_vec3_i32(var_0.a, vec3<i32>(-1i, var_1.a.x, 41831i))), -select(vec3<i32>(-17208i, 2147483647i, arg_0.a.x), _wgslsmith_mult_vec3_i32(var_1.a, var_0.a), select(arg_0.e.xwx, var_0.e.zxw, arg_0.e.zxy))), arg_0.b, vec2<u32>(~arg_0.c.x, reverseBits(reverseBits(global3[_wgslsmith_index_u32(56296u, 14u)] & 1u))), vec3<f32>(-587f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(429f)) - -424f)), _wgslsmith_f_op_f32(trunc(925f))), !vec4<bool>(false, false, ~u_input.a <= u_input.a, -651f >= _wgslsmith_f_op_f32(min(var_1.d.x, -1769f))));
    global3 = array<u32, 14>();
    var var_2 = var_1;
    return vec3<u32>(~(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 17159u), vec2<u32>(1u, var_1.c.x) >> (arg_0.c % vec2<u32>(32u))) << (1u % 32u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~countOneBits(var_2.c.x), 2715u), var_0.c.x), var_0.c.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<i32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(0u), 14u)], 6u)];
    global3 = array<u32, 14>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_3(arg_1), select(firstLeadingBit(max(~vec3<u32>(u_input.a, 1910u, 4294967295u), vec3<u32>(14927u, global3[_wgslsmith_index_u32(22108u, 14u)], 6683u) | vec3<u32>(var_0.c.x, arg_1.c.x, 3510u))), firstLeadingBit(min(vec3<u32>(arg_1.c.x, global3[_wgslsmith_index_u32(0u, 14u)], 0u) ^ vec3<u32>(var_0.c.x, global3[_wgslsmith_index_u32(4294967295u, 14u)], arg_1.c.x), ~vec3<u32>(var_0.c.x, arg_1.c.x, 1u))), all(var_0.e.zwx))), 6u)];
    let var_2 = var_0.d.yx;
    return 7052u;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    global0 = true;
    var var_0 = Struct_1(vec3<i32>(firstTrailingBit(11602i) ^ -_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(32199u, 10u)], arg_0.a.x), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(reverseBits(u_input.b << (90223u % 32u)), 14u)], 10u)], 32861i), arg_0.b, ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.c, vec2<u32>(28499u, u_input.a)), arg_1.xx), vec2<u32>(~arg_1.x, 1u)), _wgslsmith_f_op_vec3_f32(select(arg_0.d, _wgslsmith_f_op_vec3_f32(arg_0.d * _wgslsmith_f_op_vec3_f32(vec3<f32>(796f, arg_0.b, 152f) + arg_0.d)), vec3<bool>(!all(arg_0.e), arg_0.e.x || arg_0.e.x, true))), !(!arg_0.e));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b * var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x) * arg_0.d.x))), -1235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - _wgslsmith_f_op_f32(1257f + var_0.d.x)) * 1090f)), _wgslsmith_f_op_f32(arg_0.d.x - 356f));
    var var_2 = ~(~(arg_0.a.x & arg_0.a.x));
    var_0 = global1[_wgslsmith_index_u32(~4294967295u, 6u)];
    return arg_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<i32> {
    let var_0 = func_4(global1[_wgslsmith_index_u32(arg_1.c.x, 6u)], select(vec3<u32>(33745u, func_2(-vec4<i32>(global2[_wgslsmith_index_u32(arg_1.c.x, 10u)], global2[_wgslsmith_index_u32(u_input.b, 10u)], 48228i, arg_1.a.x), global1[_wgslsmith_index_u32(arg_1.c.x, 6u)], !vec3<bool>(true, arg_1.e.x, false), arg_1.a), firstTrailingBit(global3[_wgslsmith_index_u32(arg_1.c.x, 14u)])), abs(firstTrailingBit(~vec3<u32>(arg_1.c.x, global3[_wgslsmith_index_u32(u_input.b, 14u)], 49440u))), vec3<bool>(all(arg_1.e.yxy), true, true)));
    global0 = 4294967295u <= arg_1.c.x;
    global3 = array<u32, 14>();
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-countOneBits(select(227i, 22646i, arg_2.x)), -u_input.c, 2147483647i, ~arg_1.a.x), vec4<i32>(1i, 2147483647i, func_4(global1[_wgslsmith_index_u32(var_0.c.x, 6u)], abs(vec3<u32>(var_0.c.x, global3[_wgslsmith_index_u32(4294967295u, 14u)], 21911u))).a.x, var_0.a.x));
    global1 = array<Struct_1, 6>();
    return -func_4(var_0, _wgslsmith_add_vec3_u32(vec3<u32>(~u_input.a, u_input.a, ~global3[_wgslsmith_index_u32(u_input.b, 14u)]), vec3<u32>(1u, ~4294967295u, u_input.b))).a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_2.x;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b, -1000f, arg_0.b, 643f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(396f * -262f) - _wgslsmith_div_f32(arg_2.x, 302f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.b, arg_3.b, arg_3.e.x)))), 137f, 1327f));
    var_0 = 181f;
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(arg_3.b)), arg_0.d.x, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.d.x + var_1.x), _wgslsmith_f_op_f32(min(-449f, 368f)))), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-424f, arg_2.x))), -1637f))));
    var var_2 = -921f;
    return select(vec2<bool>(true, all(arg_3.e.wz)), arg_3.e.zw, arg_0.e.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_5(Struct_1(-abs(vec3<i32>(-13556i, u_input.c, -34865i)), _wgslsmith_f_op_f32(round(-658f)), ~abs(vec2<u32>(30628u, 4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-880f, 502f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(260f, -1000f, 209f))), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), true)), ~(~(~vec2<u32>(24303u, 66264u))), vec2<f32>(1079f, _wgslsmith_f_op_f32(-438f * 2425f)), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, global2[_wgslsmith_index_u32(1u, 10u)], 12529i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, global2[_wgslsmith_index_u32(8315u, 10u)], u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)), func_1(vec4<bool>(false, true, true, true), Struct_1(vec3<i32>(1i, u_input.c, u_input.c), -830f, vec2<u32>(4294967295u, u_input.b), vec3<f32>(525f, -940f, -316f), vec4<bool>(false, true, true, true)), vec2<bool>(true, false))), -504f, min(~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18227u, 14u)], 14u)], 0u), ~vec2<u32>(u_input.a, 38008u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -908f, 141f)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))));
    var var_1 = 73590i;
    var_0 = func_5(func_4(func_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, global3[_wgslsmith_index_u32(~1u, 14u)]), 6u)], max(abs(vec3<u32>(u_input.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(2603u, 0u, 4804u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 14u)], 14u)], 4294967295u, 71013u)))), vec3<u32>(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 14u)], 48262u, u_input.b)), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(~1u, _wgslsmith_mod_u32(4294967295u, u_input.b)), vec2<u32>(~global3[_wgslsmith_index_u32(0u, 14u)], ~global3[_wgslsmith_index_u32(0u, 14u)]))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-672f, -2081f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(-219f)), _wgslsmith_f_op_f32(f32(-1f) * -2485f)))))), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(25962i, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 10u)], 6908i), func_4(func_4(Struct_1(vec3<i32>(0i, -2147483647i, 2147483647i), -942f, vec2<u32>(47531u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)]), vec3<f32>(-164f, 702f, -1511f), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec3<u32>(u_input.a, 33474u, 50272u)), ~vec3<u32>(72466u, global3[_wgslsmith_index_u32(22566u, 14u)], global3[_wgslsmith_index_u32(1u, 14u)])).a, vec3<i32>(1i, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20832u, 14u)], 10u)], 41058i) & ~vec3<i32>(-40209i, u_input.c, -1i)), -281f, min(vec2<u32>(~u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 14u)], 14u)] ^ 32771u, 14u)]), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(30777u, u_input.b), vec2<u32>(55780u, 99264u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.b), vec2<u32>(42287u, u_input.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(211f, 543f, -140f)))), select(vec4<bool>(true, false, !var_0.x, var_0.x), !select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, false, var_0.x, true), var_0.x), true)));
    var var_2 = Struct_1(func_1(vec4<bool>(true | !var_0.x, true, !(!var_0.x), !var_0.x), func_4(func_4(func_4(global1[_wgslsmith_index_u32(1u, 6u)], vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34966u, 14u)], 14u)], 14u)])), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 12389u, 0u), vec3<u32>(66582u, global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(u_input.b, 14u)]))), vec3<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(4294967295u, 14u)]), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 76091u, 43919u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21203u, 14u)], 14u)], u_input.a, u_input.b)))), vec2<bool>(true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(3048f, -1163f), -1000f, all(vec3<bool>(true, var_0.x, var_0.x))))) * 1223f), vec2<u32>(u_input.a, max(u_input.a, 1u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1247f, -378f)), _wgslsmith_f_op_f32(964f + 1000f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f)) - -1307f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f + _wgslsmith_div_f32(718f, -1288f)))), !func_4(Struct_1(-vec3<i32>(-19721i, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 10u)], u_input.c), _wgslsmith_f_op_f32(ceil(836f)), ~vec2<u32>(4294967295u, 90605u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1234f, -103f, 1143f) * vec3<f32>(398f, 430f, -2320f)), func_4(Struct_1(vec3<i32>(-2147483647i, 12585i, 0i), 639f, vec2<u32>(u_input.b, 0u), vec3<f32>(305f, 481f, -1536f), vec4<bool>(false, var_0.x, true, var_0.x)), vec3<u32>(0u, global3[_wgslsmith_index_u32(37185u, 14u)], u_input.b)).e), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(u_input.b, 14u)], global3[_wgslsmith_index_u32(70470u, 14u)]), vec3<u32>(global3[_wgslsmith_index_u32(8117u, 14u)], u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.a, global3[_wgslsmith_index_u32(36730u, 14u)])), firstLeadingBit(vec3<u32>(u_input.a, 64119u, u_input.b)))).e);
    global3 = array<u32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~(~93919u), var_2.d.x, _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(14257u, 14u)], var_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1062f));
}

