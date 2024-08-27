struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
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

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(19382u, 4294967295u, 50025u), vec3<u32>(4294967295u, 1u, 87094u), vec3<u32>(0u, 77995u, 0u), vec3<u32>(4294967295u, 1u, 5589u), vec3<u32>(32313u, 0u, 4294967295u), vec3<u32>(4294967295u, 3941u, 0u), vec3<u32>(28249u, 20151u, 86056u), vec3<u32>(78247u, 4294967295u, 0u), vec3<u32>(310u, 87003u, 53719u), vec3<u32>(1u, 64081u, 19036u), vec3<u32>(4488u, 37670u, 1u), vec3<u32>(4294967295u, 21939u, 4294967295u), vec3<u32>(357u, 9752u, 49440u), vec3<u32>(1233u, 1u, 9217u), vec3<u32>(48260u, 0u, 0u), vec3<u32>(0u, 27418u, 44619u), vec3<u32>(1u, 4294967295u, 24344u), vec3<u32>(0u, 83958u, 4294967295u), vec3<u32>(1u, 35843u, 43167u), vec3<u32>(0u, 22353u, 28958u), vec3<u32>(72050u, 42359u, 0u), vec3<u32>(49533u, 18069u, 74305u), vec3<u32>(122321u, 2695u, 19147u), vec3<u32>(26488u, 64325u, 14964u), vec3<u32>(4294967295u, 16681u, 1u), vec3<u32>(20652u, 4294967295u, 15523u), vec3<u32>(31594u, 1u, 24669u), vec3<u32>(4294967295u, 1u, 39919u), vec3<u32>(64870u, 11863u, 0u), vec3<u32>(49614u, 68270u, 0u), vec3<u32>(12219u, 0u, 20705u), vec3<u32>(1u, 1u, 4294967295u));

var<private> global1: u32;

var<private> global2: vec2<i32> = vec2<i32>(-31313i, -21187i);

var<private> global3: Struct_1 = Struct_1(58304u, true);

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(4294967295u, true), Struct_1(1u, false), Struct_1(4294967295u, false), Struct_1(56u, true), Struct_1(0u, true), Struct_1(0u, true), Struct_1(1u, true), Struct_1(0u, true), Struct_1(7707u, true), Struct_1(33975u, true), Struct_1(0u, true), Struct_1(0u, false), Struct_1(48150u, false), Struct_1(53869u, true), Struct_1(0u, true), Struct_1(64942u, false), Struct_1(44841u, false), Struct_1(4294967295u, true), Struct_1(1u, false), Struct_1(42631u, true), Struct_1(0u, false), Struct_1(4294967295u, false), Struct_1(1u, false), Struct_1(1u, true), Struct_1(1u, false), Struct_1(1u, false), Struct_1(142349u, true), Struct_1(57826u, false), Struct_1(0u, true), Struct_1(1u, false), Struct_1(42788u, false), Struct_1(4294967295u, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    global0 = array<vec3<u32>, 32>();
    let var_0 = select(!select(vec3<bool>(all(vec2<bool>(arg_0.b, true)), true, arg_0.b), !select(vec3<bool>(global3.b, arg_0.b, global3.b), vec3<bool>(true, true, global3.b), false), global3.b), vec3<bool>(all(select(vec3<bool>(true, false, global3.b), vec3<bool>(false, false, arg_0.b), true)) && arg_0.b, reverseBits(u_input.e) >= ~_wgslsmith_sub_i32(u_input.e, 19447i), true || select(arg_0.b, true, !global3.b)), false);
    let var_1 = countOneBits(vec2<i32>(0i, ~u_input.a.x));
    var var_2 = arg_0;
    var_2 = Struct_1(var_2.a, var_2.b);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-580f, arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1, -1528f, var_2.b)), _wgslsmith_f_op_f32(-324f * 2012f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1078f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - 985f) - arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-238f + _wgslsmith_f_op_f32(-arg_1)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec4<f32>) -> vec2<f32> {
    var var_0 = Struct_2(any(!vec2<bool>(all(arg_0.xww), any(vec2<bool>(true, true)))), 446f, global4[_wgslsmith_index_u32(abs(u_input.c | ~global3.a), 32u)], _wgslsmith_sub_u32(~(firstTrailingBit(global3.a) << (~1u % 32u)), arg_1.a.x));
    global2 = ~(~_wgslsmith_div_vec2_i32(u_input.a.xy, -(~u_input.a.zy)));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_3(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-389f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + 731f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x + -1362f))) * var_0.b))));
    var var_2 = u_input.b.zy;
    global0 = array<vec3<u32>, 32>();
    return vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - var_0.b) * var_1.x));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = arg_3.x;
    let var_1 = ~(~(-abs(firstLeadingBit(-5805i))));
    let var_2 = select(!(!(!select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(false, false, arg_1.a), false))), select(!select(select(vec3<bool>(false, true, arg_1.a), vec3<bool>(arg_1.a, false, global3.b), false), !vec3<bool>(global3.b, true, false), true), select(select(vec3<bool>(arg_1.c.b, false, true), vec3<bool>(true, true, arg_1.a), select(vec3<bool>(false, arg_1.c.b, global3.b), vec3<bool>(false, global3.b, true), true)), !select(vec3<bool>(arg_1.c.b, global3.b, global3.b), vec3<bool>(true, arg_1.c.b, global3.b), vec3<bool>(arg_1.a, arg_1.c.b, arg_1.c.b)), !vec3<bool>(arg_1.c.b, global3.b, true)), select(vec3<bool>(-1372f == arg_0, !global3.b, select(true, true, arg_1.a)), !select(vec3<bool>(true, false, global3.b), vec3<bool>(arg_1.a, false, false), true), vec3<bool>(arg_1.a, select(true, global3.b, global3.b), any(vec4<bool>(global3.b, true, arg_1.c.b, arg_1.a))))), vec3<bool>(true, all(select(vec2<bool>(true, true), !vec2<bool>(global3.b, false), !vec2<bool>(arg_1.a, true))), (1u | min(0u, u_input.b.x)) < ~global3.a));
    global1 = 4294967295u;
    let var_3 = Struct_3(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.c, 12084u), select(vec4<u32>(u_input.d, 1u, global3.a, 0u), vec4<u32>(arg_1.c.a, 83813u, u_input.d, arg_1.d), true))), !(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 - arg_1.b)) > 494f), 4294967295u);
    return 1u;
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    let var_0 = vec4<u32>(select(24981u, 15620u, true), _wgslsmith_add_u32(max(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, 4294967295u, 15324u), vec3<u32>(u_input.b.x, arg_1, 1u))), arg_2.x), arg_1, 0u & abs(arg_1)) << (arg_3.a % vec4<u32>(32u));
    global4 = array<Struct_1, 32>();
    var var_1 = _wgslsmith_div_f32(1337f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(false, false, true, arg_0), Struct_3(arg_3.a, arg_3.b, arg_3.a.x), vec4<f32>(-1733f, -1395f, -1177f, -642f))).x)), _wgslsmith_div_f32(-213f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-737f, -627f), _wgslsmith_div_f32(509f, -764f))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1f, 479f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-490f)) - -470f))), _wgslsmith_div_f32(-600f, 1000f), u_input.a.x < _wgslsmith_dot_vec4_i32(u_input.a, u_input.a))));
    global0 = array<vec3<u32>, 32>();
    return 1u;
}

fn func_1() -> Struct_2 {
    let var_0 = global4[_wgslsmith_index_u32(0u, 32u)];
    let var_1 = Struct_2(!global3.b, _wgslsmith_f_op_f32(-1093f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(trunc(-1000f))))), global4[_wgslsmith_index_u32(134427u, 32u)], 1u);
    global1 = func_5(!var_0.b, ~u_input.b.x, vec4<u32>(reverseBits(~39243u | select(0u, u_input.b.x, true)), func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b), -1000f)), Struct_2(!var_0.b, -114f, Struct_1(var_1.c.a, false), global3.a), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, var_1.c.a, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.c, 1u, u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(var_1.c.b, var_1.c.b, false, true), Struct_3(vec4<u32>(u_input.d, global3.a, 0u, var_1.c.a), false, 4294967295u), vec4<f32>(var_1.b, 1000f, var_1.b, var_1.b))))), _wgslsmith_sub_u32(~1u, ~(0u ^ global3.a)), countOneBits(u_input.d)), Struct_3(~(~(vec4<u32>(var_1.c.a, 8003u, 1u, 22685u) << (vec4<u32>(0u, u_input.d, global3.a, var_1.d) % vec4<u32>(32u)))), var_1.c.b, global3.a | ~global3.a));
    global3 = Struct_1(~(var_0.a >> (~59688u % 32u)), all(!(!(!vec3<bool>(var_1.a, false, var_1.c.b)))));
    let var_2 = Struct_3(vec4<u32>(reverseBits(10045u), ~_wgslsmith_mod_u32(~global3.a, 20358u), var_1.d, _wgslsmith_add_u32(global3.a, 0u)), select(var_0.b, true, var_1.a), 1791u);
    return Struct_2(any(vec4<bool>(var_2.b, true, !var_2.b, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, 1449f) * var_1.b) - 1856f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(_wgslsmith_div_u32(~var_2.c, ~21840u), var_0.b), ~_wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(var_2.a.yzw, u_input.b), global0[_wgslsmith_index_u32(1u, 32u)], all(vec2<bool>(true, var_1.c.b))), u_input.b));
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> vec2<u32> {
    var var_0 = u_input.a.wx;
    let var_1 = vec3<bool>(any(!(!(!vec2<bool>(true, arg_0.c.b)))), true, _wgslsmith_f_op_vec3_f32(func_3(func_1().c, -158f)).x != arg_0.b);
    var var_2 = Struct_3(~vec4<u32>(arg_0.c.a, arg_0.d, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.c.a, 4294967295u), arg_0.c.a), ~abs(global3.a)), all(vec4<bool>(global3.b, -202f > arg_0.b, all(!vec4<bool>(true, arg_0.a, global3.b, arg_0.a)), var_1.x)), arg_0.c.a);
    let var_3 = reverseBits(var_2.a);
    let var_4 = _wgslsmith_div_vec3_u32(var_3.www, ~(~reverseBits(abs(vec3<u32>(0u, 4294967295u, 1u)))));
    return firstLeadingBit(vec2<u32>(u_input.b.x & 64518u, func_1().d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 32>();
    global2 = _wgslsmith_add_vec2_i32(vec2<i32>(global2.x ^ -1i, _wgslsmith_div_i32(u_input.a.x, 2147483647i)), select(_wgslsmith_add_vec2_i32(u_input.a.xw, vec2<i32>(u_input.a.x, 9524i)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~u_input.a.zz, select(vec2<bool>(true, true), !vec2<bool>(global3.b, global3.b), global3.a > u_input.d)) | -abs(~u_input.a.wy));
    let var_0 = ~(-(~(~u_input.e)));
    global1 = ~global3.a;
    global2 = _wgslsmith_mod_vec2_i32(u_input.a.wx >> (func_6(func_1(), global2.x, -792f) % vec2<u32>(32u)), vec2<i32>(var_0, _wgslsmith_mod_i32(global2.x, var_0) << (abs(0u) % 32u)) ^ u_input.a.zy);
    global0 = array<vec3<u32>, 32>();
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

