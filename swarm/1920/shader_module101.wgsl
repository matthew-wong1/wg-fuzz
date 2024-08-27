struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(30130i, 1i, -14914i), vec4<u32>(4294967295u, 0u, 1u, 76320u));

var<private> global1: vec2<i32>;

var<private> global2: Struct_3;

var<private> global3: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(44109u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(87283u, 4294967295u), vec2<u32>(0u, 55259u), vec2<u32>(0u, 79357u), vec2<u32>(19740u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(84015u, 8372u), vec2<u32>(46953u, 8883u), vec2<u32>(13525u, 1u), vec2<u32>(19327u, 135u), vec2<u32>(69614u, 27365u), vec2<u32>(47203u, 0u), vec2<u32>(68239u, 146u), vec2<u32>(52490u, 41883u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 37759u), vec2<u32>(55577u, 0u), vec2<u32>(4294967295u, 22517u), vec2<u32>(35489u, 0u), vec2<u32>(61129u, 45551u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: f32) -> f32 {
    let var_0 = arg_0.zxx;
    global2 = Struct_3(-20712i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_2))))) + arg_2), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(-52669i, global2.d.b.x & 1i)), -2147483647i), global2.d, ~vec3<u32>(abs(global2.d.c.x & 10246u), 29301u, ~(~1u)));
    global1 = vec2<i32>(u_input.b.x, global0.b.x);
    let var_1 = max(~global2.e.x, arg_1.x);
    var var_2 = !global0.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f));
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = countOneBits(global2.d.c.x);
    let var_1 = global0.b.x;
    global0 = Struct_1(global0.a, ~global2.d.b, vec4<u32>(global0.c.x ^ ~41047u, global2.e.x, global0.c.x & 36084u, 34629u));
    var var_2 = Struct_3(global1.x, _wgslsmith_f_op_f32(func_3(vec4<f32>(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-global2.b))), global2.b, _wgslsmith_f_op_f32(f32(-1f) * -1161f), global2.b), global0.c.zxw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_0))))))), _wgslsmith_dot_vec2_i32(countOneBits(~global2.d.b.yx), abs(~u_input.b.xz >> (abs(vec2<u32>(global0.c.x, 1u)) % vec2<u32>(32u)))), Struct_1(!global0.a, _wgslsmith_clamp_vec3_i32(u_input.b, max(vec3<i32>(-43137i, global0.b.x, -2147483647i), global2.d.b) & -u_input.b, u_input.b), vec4<u32>(global2.e.x, ~_wgslsmith_add_u32(19549u, 1u), global0.c.x, ~1u)), ~max(countOneBits(~vec3<u32>(4294967295u, 62847u, 95531u)), select(global2.e, ~vec3<u32>(global2.d.c.x, 19648u, 36724u), false)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, global2.b, global2.b))))))));
    return global2.d.a.x;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = global2.d;
    global0 = Struct_1(var_0.a, vec3<i32>(8634i, 2147483647i, -2147483647i), _wgslsmith_div_vec4_u32(vec4<u32>(~(~1u), 4294967295u, ~_wgslsmith_mod_u32(0u, global2.e.x), 28200u), ~_wgslsmith_div_vec4_u32(var_0.c, vec4<u32>(var_0.c.x, var_0.c.x, 0u, 35427u)) | vec4<u32>(global2.d.c.x, ~5791u, ~1u, _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(42970u, 24u)], vec2<u32>(var_0.c.x, 69409u)))));
    global0 = global2.d;
    let var_1 = Struct_3(73038i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2027f, _wgslsmith_div_f32(arg_0, global2.b)))), ~(-u_input.b.x), global2.d, vec3<u32>(var_0.c.x, _wgslsmith_div_u32(~29406u, global0.c.x ^ 84573u), global2.d.c.x) ^ var_0.c.zyy);
    global1 = -_wgslsmith_sub_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(global1.x, 28001i), reverseBits(global0.b.x)), select(var_0.b.xy, reverseBits(global2.d.b.zz) ^ firstLeadingBit(vec2<i32>(global0.b.x, -39999i)), select(vec2<bool>(true, true), !vec2<bool>(var_1.d.a.x, false), vec2<bool>(true, var_1.d.a.x))));
    return var_1;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<u32>, arg_3: bool) -> Struct_3 {
    global1 = max(global0.b.xx, ~select(abs(~u_input.b.yz), ~(-u_input.b.zx), arg_3));
    var var_0 = func_4(arg_0, select(vec4<bool>(false, !(arg_3 & global0.a.x), any(!global2.d.a.xy), true), vec4<bool>(select(any(global0.a.wyy), !arg_3, func_2(1211f)), (true && arg_3) && all(global2.d.a.zxz), false, func_2(_wgslsmith_f_op_f32(ceil(global2.b)))), !any(vec3<bool>(false, global0.a.x, global2.d.a.x))));
    let var_1 = Struct_3(12846i, _wgslsmith_f_op_f32(-var_0.b), -10725i, func_4(global2.b, !global2.d.a).d, countOneBits(global2.d.c.wwx));
    global3 = array<vec2<u32>, 24>();
    var var_2 = 1i << ((~(~var_1.e.x) ^ 28512u) % 32u);
    return var_1;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    global2 = func_4(-766f, vec4<bool>(select(!(false == global0.a.x), func_1(_wgslsmith_f_op_f32(max(arg_1.b, arg_1.b)), arg_1.b, vec2<u32>(1u, global0.c.x), global0.a.x).d.a.x, arg_1.d.a.x), false, arg_1.b == arg_0, true));
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a, -2147483647i, 7892i) ^ vec3<i32>(global1.x, 16378i, global0.b.x)), global0.b), -(~_wgslsmith_div_i32(arg_2.a, u_input.b.x)), -2147483647i, firstLeadingBit(-global2.d.b.x & (-39255i & u_input.b.x))), vec4<i32>(-_wgslsmith_clamp_i32(countOneBits(global2.c), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c, global0.b.x, global2.a, global1.x), vec4<i32>(-1i, 14989i, arg_1.c, arg_2.a)), ~global1.x), _wgslsmith_div_i32(~(-global2.a), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2.c, -16386i), ~vec3<i32>(global1.x, -2147483647i, arg_1.d.b.x))), u_input.a, ~1i));
    global2 = Struct_3(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, func_1(arg_1.b, 1601f, vec2<u32>(81991u, arg_2.e.x), false).a)), arg_2.d.b.zz), -872f, _wgslsmith_dot_vec2_i32(max(vec2<i32>(_wgslsmith_clamp_i32(global1.x, global2.a, -1i), -global1.x), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global2.c), vec2<i32>(global1.x, -1i))), _wgslsmith_add_vec2_i32(reverseBits(arg_2.d.b.xz), ~_wgslsmith_div_vec2_i32(vec2<i32>(global0.b.x, var_0.x), vec2<i32>(global0.b.x, global2.a)))), func_4(-1283f, func_4(_wgslsmith_f_op_f32(f32(-1f) * -634f), func_1(_wgslsmith_f_op_f32(-arg_2.b), -1387f, global3[_wgslsmith_index_u32(abs(6173u), 24u)], true).d.a).d.a).d, vec3<u32>(_wgslsmith_div_u32(~global2.d.c.x, arg_1.e.x), func_1(global2.b, arg_2.b, vec2<u32>(4294967295u, 28501u), global0.a.x).e.x | 4294967295u, _wgslsmith_mod_u32(0u, 3098u)) << (arg_2.e % vec3<u32>(32u)));
    var var_1 = arg_1;
    var var_2 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -409f)), _wgslsmith_f_op_f32(sign(-240f))), select(select(select(global0.a, vec4<bool>(global2.d.a.x, false, false, true), !vec4<bool>(var_1.d.a.x, arg_2.d.a.x, arg_1.d.a.x, true)), select(select(arg_2.d.a, global2.d.a, var_1.d.a), !vec4<bool>(global2.d.a.x, true, false, false), vec4<bool>(global0.a.x, global0.a.x, false, false)), func_4(arg_0, vec4<bool>(true, var_1.d.a.x, false, var_1.d.a.x)).d.a), !vec4<bool>(true, func_1(arg_0, global2.b, vec2<u32>(1u, 1u), arg_2.d.a.x).d.a.x, global2.d.a.x, -350f >= global2.b), global2.d.a.x));
    return Struct_1(var_2.d.a, arg_2.d.b, var_2.d.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-2545f, func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1603f, -913f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-295f - -890f) * global2.b)), ~global2.e.yy, !(global2.b == global2.b)), func_1(_wgslsmith_f_op_f32(abs(-268f)), -1010f, global0.c.xx, false));
    var_0 = global2.d;
    var_0 = global2.d;
    var var_1 = vec2<i32>(-1i) * -reverseBits(-max(global2.d.b.yy, global2.d.b.zy));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global2.b), -773f)));
    global1 = u_input.b.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(round(global2.b)), 487f, var_2.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global2.b + global2.b), var_2.x, global2.b, global2.b)))));
}

