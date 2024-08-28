struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(vec4<i32>(i32(-2147483648), 30381i, 1i, -25992i), 186f, 48392u, vec2<i32>(2147483647i, 1i)), Struct_4(vec4<i32>(i32(-2147483648), 2147483647i, -1i, i32(-2147483648)), -2329f, 0u, vec2<i32>(1i, -52864i)), Struct_4(vec4<i32>(54639i, -1i, -6033i, 0i), 203f, 0u, vec2<i32>(-24413i, i32(-2147483648))), Struct_4(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 7132i), -1984f, 1u, vec2<i32>(i32(-2147483648), 0i)), Struct_4(vec4<i32>(-1i, -1i, i32(-2147483648), -20679i), 508f, 0u, vec2<i32>(8879i, i32(-2147483648))), Struct_4(vec4<i32>(-8566i, 0i, 7773i, 0i), -900f, 0u, vec2<i32>(0i, 0i)), Struct_4(vec4<i32>(-25660i, 2147483647i, -1i, 1i), 2077f, 1u, vec2<i32>(-1i, -21865i)));

var<private> global1: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global2: array<i32, 16> = array<i32, 16>(i32(-2147483648), -1i, 0i, 4636i, 1i, 16949i, i32(-2147483648), 923i, 1i, -9265i, -9844i, i32(-2147483648), 0i, -1i, i32(-2147483648), i32(-2147483648));

var<private> global3: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(0u, 68086u, 1u, 34288u), vec4<u32>(3244u, 10512u, 7792u, 40738u), vec4<u32>(0u, 31233u, 48784u, 0u), vec4<u32>(1u, 0u, 0u, 26152u), vec4<u32>(1u, 36618u, 0u, 1u));

var<private> global4: u32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_4, 7>();
    let var_0 = u_input.d.x;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1866f) * 1505f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(236f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1541f))))));
    global0 = array<Struct_4, 7>();
    let var_2 = !all(vec2<bool>(true, any(vec4<bool>(true, true, true, true))));
    return Struct_1(~_wgslsmith_add_vec4_u32(~global3[_wgslsmith_index_u32(1u, 5u)] & (vec4<u32>(u_input.c.x, 36157u, u_input.c.x, u_input.c.x) & global3[_wgslsmith_index_u32(u_input.c.x, 5u)]), global3[_wgslsmith_index_u32(abs(~u_input.c.x), 5u)]), global3[_wgslsmith_index_u32(19950u, 5u)], -2105f, ~vec4<u32>(95542u, ~u_input.c.x, _wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 3748u, u_input.c.x), vec3<u32>(14585u, 57012u, 4294967295u))), u_input.c.x));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> Struct_5 {
    global4 = u_input.c.x;
    global2 = array<i32, 16>();
    global3 = array<vec4<u32>, 5>();
    let var_0 = u_input.c.x;
    var var_1 = false;
    return Struct_5(Struct_2(~34742u, Struct_1(vec4<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), ~1u, _wgslsmith_div_u32(0u, var_0), arg_0.a.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, var_0), ~vec2<u32>(var_0, u_input.c.x)), 5u)], _wgslsmith_f_op_f32(floor(arg_0.c)), countOneBits(~arg_0.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0.c, -1528f)), -964f))));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_5 {
    let var_0 = func_3(func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1343f - -188f)), arg_1, arg_2.b, _wgslsmith_f_op_f32(f32(-1f) * -2347f))), !(1u <= min(_wgslsmith_add_u32(u_input.c.x, arg_0.x), arg_3.x)));
    let var_1 = func_3(func_3(func_3(var_0.a.b, !(arg_2.d.x < 17563i)).a.b, true).a.b, all(!select(global1[_wgslsmith_index_u32(~4294967295u, 7u)], vec2<bool>(true, true), true))).a;
    global4 = ~arg_0.x;
    global1 = array<vec2<bool>, 7>();
    let var_2 = arg_2;
    return Struct_5(func_3(Struct_1(var_1.b.b, vec4<u32>(select(38609u, arg_3.x, false), var_1.b.d.x, func_3(var_1.b, false).a.a, _wgslsmith_mod_u32(var_1.a, arg_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1895f * 716f)), global3[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_1.b.c, -983f, 1016f) + vec4<f32>(var_1.c, var_2.b, var_1.c, -558f))).a.x, 5u)]), all(vec4<bool>(true, true, true, true))).a);
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> vec4<f32> {
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(func_1(arg_0.a.b.b.wzx, _wgslsmith_f_op_f32(max(-958f, arg_0.a.b.c)), Struct_4(vec4<i32>(1i, -42737i, -8429i, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]), arg_0.a.b.c, arg_0.a.b.a.x, u_input.a.wx), u_input.c.xz).a.b.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.c), _wgslsmith_f_op_f32(-arg_0.a.b.c)), _wgslsmith_f_op_f32(arg_0.a.c * func_3(arg_0.a.b, false).a.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b.c, arg_0.a.c, arg_0.a.b.c)))), !any(vec2<bool>(true, true)))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.c), func_3(func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(727f, 345f, arg_0.a.b.c, arg_0.a.b.c)))), !all(vec2<bool>(false, true))).a.b.c, _wgslsmith_f_op_f32(arg_0.a.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c) * _wgslsmith_f_op_f32(-arg_0.a.b.c)))));
    let var_1 = vec4<i32>(u_input.a.x, 0i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), ~u_input.a), 1i);
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(430f, 1524f, arg_0.a.b.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c, -1199f, var_0.x))))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_f_op_f32(func_1(arg_0.a.b.b.yxx | u_input.c, _wgslsmith_f_op_f32(trunc(209f)), Struct_4(vec4<i32>(0i, -6743i, global2[_wgslsmith_index_u32(1u, 16u)], -1i), -1000f, arg_0.a.a, var_1.wx), max(vec2<u32>(0u, u_input.c.x), u_input.c.zy)).a.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), 2612f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_1(arg_0.a.b.a.yxw, arg_0.a.b.c, global0[_wgslsmith_index_u32(19164u, 7u)], vec2<u32>(u_input.c.x, 9402u)).a.c), arg_0.a.b.c, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(func_1(_wgslsmith_div_vec3_u32(abs(firstLeadingBit(u_input.c)), u_input.c), 1068f, global0[_wgslsmith_index_u32(23523u, 7u)], ~u_input.c.yy), -5035i & _wgslsmith_dot_vec3_i32(min(select(vec3<i32>(44237i, -9723i, u_input.d.x), vec3<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], u_input.a.x, -47434i), false), u_input.a.wwx >> (u_input.c % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(u_input.b, u_input.a.xxy & u_input.d))));
    global3 = array<vec4<u32>, 5>();
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    var var_1 = ~(~u_input.c.x) >= 21262u;
    var var_2 = Struct_4(vec4<i32>(u_input.b.x, countOneBits(_wgslsmith_dot_vec3_i32(select(u_input.b, u_input.d, true), max(vec3<i32>(u_input.a.x, 2147483647i, -6612i), u_input.a.xyx))), min(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x | 79415u, ~3586u), 16u)], -u_input.a.x), 6106i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, -33263i) >> (u_input.c % vec3<u32>(32u)), reverseBits(u_input.b))), var_0.x, func_3(Struct_1(global3[_wgslsmith_index_u32(33612u, 5u)], vec4<u32>(u_input.c.x, 1u, ~0u, 1u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(Struct_5(Struct_2(89260u, Struct_1(vec4<u32>(1u, u_input.c.x, u_input.c.x, 0u), vec4<u32>(u_input.c.x, 0u, 16166u, 83761u), var_0.x, vec4<u32>(u_input.c.x, 0u, 40739u, 19312u)), var_0.x)), u_input.d.x)).x)), firstTrailingBit(~global3[_wgslsmith_index_u32(42481u, 5u)])), true).a.b.b.x, ~(_wgslsmith_mult_vec2_i32(u_input.d.zx << (vec2<u32>(2801u, u_input.c.x) % vec2<u32>(32u)), -vec2<i32>(1i, u_input.a.x)) << (abs(vec2<u32>(0u, 28482u)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 561f)), 123f)))), min(~var_2.d, firstTrailingBit(firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(var_2.c, 16u)], -2147483647i)))) >> (firstLeadingBit(abs(u_input.c.xx)) % vec2<u32>(32u)));
}

