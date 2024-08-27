struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: u32;

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(false, vec4<u32>(13721u, 1u, 21846u, 0u), -971f, vec2<i32>(-1617i, -15634i)), Struct_3(false, vec4<u32>(1830u, 1u, 1u, 9291u), -262f, vec2<i32>(28569i, -22267i)), Struct_3(false, vec4<u32>(0u, 41808u, 16557u, 1198u), -426f, vec2<i32>(-14679i, 2147483647i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    global1 = 4294967295u;
    var var_0 = Struct_1(66493i, countOneBits(u_input.d) >> ((~(u_input.c.xz | vec2<u32>(4294967295u, 24161u)) >> (vec2<u32>(arg_0 << (1u % 32u), ~72178u) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(arg_0 << (19742u % 32u)), arg_1.b, true);
    global2 = array<Struct_3, 3>();
    let var_1 = !select(vec4<bool>(global0.x, false, true, arg_1.a), select(vec4<bool>(false, select(false, arg_1.a, var_0.e), false, true), vec4<bool>(global0.x, false, arg_1.a | global0.x, false), arg_1.a), vec4<bool>(arg_1.a, false, !(global0.x || false), any(!vec3<bool>(arg_1.a, arg_1.a, true))));
    global2 = array<Struct_3, 3>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - -1027f));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = false;
    var var_1 = vec4<bool>(!(_wgslsmith_f_op_f32(func_3(firstTrailingBit(1u), global2[_wgslsmith_index_u32(max(u_input.b, u_input.b), 3u)], ~vec4<u32>(82264u, 31283u, u_input.b, u_input.c.x))) == 218f), true, all(vec4<bool>(!global0.x, true, true, false)) || (~firstLeadingBit(47551i) <= _wgslsmith_div_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.d.x))), !(!select(u_input.a.x >= u_input.d.x, false, true)));
    var var_2 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(u_input.d.x, 0i, -3876i, -1i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 17629i, -2147483647i, 1i), vec4<i32>(-37241i, u_input.d.x, -2147483647i, 26788i)), -vec4<i32>(u_input.a.x, 19139i, u_input.a.x, u_input.d.x))), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, -1i, u_input.a.x) & select(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(-67045i, u_input.d.x, 1i), var_1.xww), -min(vec3<i32>(u_input.a.x, u_input.d.x, u_input.a.x), vec3<i32>(1i, -3466i, -2147483647i)))), _wgslsmith_mult_vec2_i32(vec2<i32>(-26584i, -331i) & u_input.d, u_input.d), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), 4294967295u), 26937u), countOneBits(~_wgslsmith_div_vec2_u32(u_input.c.yw, vec2<u32>(4294967295u, 4294967295u)))), vec4<u32>(~(~32865u), abs(min(13765u, u_input.b)), 1u, abs(~u_input.b)) ^ countOneBits(vec4<u32>(~u_input.c.x, _wgslsmith_mod_u32(u_input.b, 73743u), 4294967295u, ~0u)), !all(!select(vec4<bool>(arg_0, var_1.x, var_1.x, arg_0), vec4<bool>(var_1.x, var_1.x, global0.x, true), vec4<bool>(false, true, global0.x, arg_0))));
    global1 = firstLeadingBit(4294967295u);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1064f * -1285f)) * _wgslsmith_f_op_f32(trunc(1f))), 1058f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-591f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(735f, -609f))))))), 137f);
    return global2[_wgslsmith_index_u32(reverseBits(var_2.d.x), 3u)];
}

fn func_1() -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(~(~firstTrailingBit(u_input.b)), 3u)];
    let var_1 = func_2(!all(vec3<bool>(true, true, var_0.a)));
    let var_2 = func_2(!(_wgslsmith_f_op_f32(-func_2(false).c) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c), var_1.c))));
    var var_3 = vec3<bool>(all(select(!(!vec2<bool>(var_0.a, true)), vec2<bool>(any(vec2<bool>(var_2.a, var_0.a)), true), !(!vec2<bool>(var_2.a, false)))), true, true);
    var var_4 = vec2<i32>(-abs(-_wgslsmith_div_i32(-2147483647i, 2147483647i)), u_input.a.x >> (_wgslsmith_mult_u32(firstTrailingBit(~var_0.b.x), var_2.b.x) % 32u));
    return Struct_1(var_4.x, firstLeadingBit(vec2<i32>(abs(_wgslsmith_div_i32(3821i, var_1.d.x)), var_2.d.x)), ~(var_0.b.x << (36118u % 32u)), u_input.c, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~(~(-((vec4<i32>(u_input.a.x, var_0.a, -1832i, 2147483647i) >> (vec4<u32>(u_input.b, var_0.d.x, u_input.c.x, 0u) % vec4<u32>(32u))) | vec4<i32>(-1i, 0i, var_0.a, u_input.d.x))));
    let var_2 = vec4<f32>(-1000f, -547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(522f * -744f))) * 1f)), -1086f);
    let var_3 = vec4<bool>(any(select(!select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), var_0.e), !vec2<bool>(var_0.e, false), true)), true, any(select(!select(vec3<bool>(true, true, false), vec3<bool>(global0.x, false, true), false), !vec3<bool>(global0.x, var_0.e, global0.x), global0.x)), true);
    global1 = 1u;
    let var_4 = u_input.c.x;
    var var_5 = 41406u;
    var var_6 = !(false | var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -615f)) * var_2.xy), abs(~var_4), 0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, -526f), var_2.yz)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_2.wy)))) - _wgslsmith_f_op_vec2_f32(select(var_2.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.yy - var_2.zx) - _wgslsmith_f_op_vec2_f32(abs(var_2.ww))), var_0.e))));
}

