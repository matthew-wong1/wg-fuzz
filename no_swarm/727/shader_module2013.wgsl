struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(42864i, 18844i, 25631i, -1i), vec4<i32>(0i, i32(-2147483648), 22373i, 1i), vec4<i32>(-30324i, 68398i, -9957i, -1i), vec4<i32>(i32(-2147483648), 60916i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 1i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 21625i), vec4<i32>(-15105i, i32(-2147483648), -28058i, -35022i), vec4<i32>(38010i, 2147483647i, 5243i, -1i), vec4<i32>(-27579i, -10328i, 1i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 0i), vec4<i32>(1i, 2147483647i, 2147483647i, 745i), vec4<i32>(1i, i32(-2147483648), 1i, 0i), vec4<i32>(-37735i, 62494i, 0i, 8570i), vec4<i32>(0i, -1i, 29261i, 2147483647i), vec4<i32>(22867i, i32(-2147483648), 1i, -6927i), vec4<i32>(73437i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, -22859i, 2147483647i, 2147483647i), vec4<i32>(-305i, 2147483647i, 0i, 0i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = arg_0.b.a.zy >> (arg_0.b.a.zx % vec2<u32>(32u));
    let var_1 = ~select(vec2<i32>(~_wgslsmith_mult_i32(-30812i, 1i), firstLeadingBit(~60899i)), vec2<i32>(-(~36744i), 7858i), !arg_0.b.b.xz);
    let var_2 = true;
    var var_3 = 0u;
    var var_4 = arg_0.b.b;
    return any(!vec2<bool>(arg_0.b.b.x & select(false, var_2, true), arg_0.b.b.x));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    global0 = array<vec4<i32>, 18>();
    var var_0 = -254f;
    let var_1 = Struct_5(max(vec2<u32>(~4308u, ~(u_input.b & u_input.a)), vec2<u32>(firstLeadingBit(countOneBits(4294967295u)), u_input.a)), arg_0, all(select(vec3<bool>(func_3(Struct_3(-2156f, Struct_1(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<bool>(true, false, false), 767f))), any(vec2<bool>(true, true)), func_3(Struct_3(-403f, Struct_1(vec3<u32>(45765u, u_input.b, u_input.b), vec3<bool>(false, true, true), arg_0)))), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true))), vec4<u32>(countOneBits(u_input.a) << (1946u % 32u), ~(~1u), 4294967295u, _wgslsmith_clamp_u32(u_input.b, ~u_input.b, ~1u)));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-249f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-481f * 1489f), _wgslsmith_div_f32(-267f, -936f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, -814f)))) - 611f)));
    return -(~select(global0[_wgslsmith_index_u32(u_input.b | u_input.b, 18u)], vec4<i32>(i32(-1i) * -1i, i32(-1i) * -36383i, _wgslsmith_mult_i32(-1i, 52719i), 31894i << (0u % 32u)), true));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec3_u32(arg_0.d.wxz, select(arg_1.b.b.a, arg_1.b.b.a, vec3<bool>(arg_0.c, false, any(arg_1.c.b.yy))));
    global0 = array<vec4<i32>, 18>();
    let var_1 = Struct_1(max(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 12228u, 6210u), vec3<u32>(arg_0.d.x, 20347u, 4294967295u))), min(select(vec3<u32>(24632u, 0u, 4294967295u), vec3<u32>(1u, 0u, u_input.b), true), select(var_0, var_0, arg_2))), !(!(!(!vec3<bool>(arg_2.x, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.c.c))));
    let var_2 = 656f;
    global0 = array<vec4<i32>, 18>();
    return Struct_3(_wgslsmith_f_op_f32(exp2(var_2)), arg_1.b.b);
}

fn func_1() -> f32 {
    global0 = array<vec4<i32>, 18>();
    var var_0 = func_4(Struct_5(vec2<u32>(u_input.b, ~(~77273u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(972f))))), false, vec4<u32>(abs(u_input.b | 0u), 4294967295u, ~(~56598u), u_input.a)), Struct_4(vec4<i32>(_wgslsmith_add_i32(5498i << (u_input.a % 32u), 1i), -(i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-37456i, -1i, -39583i, 9175i), vec4<i32>(-12296i, 0i, 0i, 5387i)), func_2(-1000f)), _wgslsmith_clamp_i32(1i, 1i, -6792i)), Struct_3(352f, Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(0u, 1u, 33031u), vec3<u32>(u_input.a, u_input.b, 54455u)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1892f))), Struct_1(reverseBits(~vec3<u32>(0u, 3287u, u_input.b)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2036f)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), ~(-1i));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a, var_0.b.c, -926f), vec3<f32>(1951f, 1000f, var_0.b.c))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 726f, var_0.a) - vec3<f32>(var_0.a, var_0.b.c, var_0.b.c))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.c, -794f, -1811f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(739f, -589f, var_0.a))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-267f, var_0.a, -1389f) + vec3<f32>(var_0.b.c, var_0.b.c, var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2482f, var_0.b.c, var_0.a))) + vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(1550f * var_0.b.c), _wgslsmith_f_op_f32(step(var_0.a, -735f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.b.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(abs(-879f)))))), true));
    global0 = array<vec4<i32>, 18>();
    let var_2 = true;
    return var_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) >= _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-230f, _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -863f) - _wgslsmith_f_op_f32(f32(-1f) * -1512f)))), true);
    global0 = array<vec4<i32>, 18>();
    var var_1 = !select(select(select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x), !var_0.x), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, true, true, var_0.x), select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true)), vec4<bool>(false, 0u > (u_input.b & 0u), var_0.x, false), false);
    let var_2 = Struct_5(vec2<u32>(u_input.b, _wgslsmith_mult_u32(select(75484u, u_input.a, true), u_input.a)) << (~(select(vec2<u32>(2832u, u_input.b), vec2<u32>(u_input.a, 12694u), var_0.x) | _wgslsmith_div_vec2_u32(vec2<u32>(70669u, u_input.a), vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u)), 1f, false, ~(~abs(vec4<u32>(u_input.b, u_input.a, u_input.a, 12469u)) & vec4<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, 89354u, u_input.b), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.b)), _wgslsmith_div_u32(1u, 1u), ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, _wgslsmith_div_f32(var_2.b, -424f)) - 306f))), 1036i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(exp2(var_2.b)))));
}

