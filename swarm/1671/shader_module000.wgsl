struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: array<Struct_4, 1>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = arg_0.x;
    let var_1 = Struct_2(~firstTrailingBit(~u_input.c.wyx), Struct_1(_wgslsmith_f_op_f32(trunc(-311f)), vec4<f32>(1f, 1f, 1f, 1f), ~u_input.c, any(vec3<bool>(u_input.b <= 104567u, any(vec3<bool>(false, var_0, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1649f * 199f))))), Struct_1(-1512f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1363f)), _wgslsmith_f_op_f32(max(-1165f, 1792f)), _wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(-1027f * 1145f))), u_input.c, true, _wgslsmith_f_op_f32(795f - 1f)), 104677u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1507f * -709f), -1000f)) - _wgslsmith_f_op_f32(round(-1894f))));
    var var_2 = select(select(!vec2<bool>(any(arg_0), true), !arg_0.zy, arg_0.x), select(!(!select(vec2<bool>(arg_0.x, var_1.c.d), vec2<bool>(false, var_0), var_1.c.d)), arg_0.zx, !select(select(vec2<bool>(false, true), vec2<bool>(arg_0.x, false), var_1.c.d), select(arg_0.zz, arg_0.yz, arg_0.x), vec2<bool>(false, var_1.c.d))), !(!any(select(arg_0, arg_0, var_1.b.d))));
    let var_3 = Struct_4(true, Struct_1(755f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -512f), 664f, var_1.c.a, 1286f) * var_1.c.b), ~u_input.c, (_wgslsmith_f_op_f32(var_1.e * var_1.c.a) < 1f) && var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-674f))) + _wgslsmith_f_op_f32(189f * _wgslsmith_f_op_f32(select(600f, var_1.e, true))))), Struct_3(!vec3<bool>(arg_0.x, true, var_0), vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-24159i, -34747i, -1i), vec3<i32>(2147483647i, 11634i, -21981i)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, 1i), _wgslsmith_add_i32(-26144i, 21073i), 2147483647i), 1i), any(arg_0.zx), 1i | _wgslsmith_dot_vec4_i32(vec4<i32>(17877i, 4719i, -15245i, 2147483647i), reverseBits(vec4<i32>(-1i, -2147483647i, 1266i, -2147483647i)))));
    global1 = array<Struct_4, 1>();
    return false;
}

fn func_2() -> vec4<f32> {
    var var_0 = any(!(!vec2<bool>(func_3(vec3<bool>(true, false, false)), true)));
    var var_1 = Struct_4(all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(1820f * -2211f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(313f, 717f, -950f, _wgslsmith_f_op_f32(f32(-1f) * -591f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1741f, -569f, -691f, 572f)))), vec4<u32>(firstTrailingBit(43391u), _wgslsmith_mult_u32(max(u_input.b, u_input.b), ~0u), _wgslsmith_add_u32(u_input.b, u_input.a) << (28293u % 32u), min(1u, _wgslsmith_mult_u32(u_input.c.x, u_input.a))), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -736f))))), Struct_3(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), vec3<i32>(1i, 1i, ~_wgslsmith_div_i32(1i, -2147483647i)), true, firstTrailingBit(-1i)));
    var var_2 = var_1.c;
    var var_3 = var_1.c.b.x;
    global1 = array<Struct_4, 1>();
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(-1161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f - var_1.b.e)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1149f, _wgslsmith_f_op_f32(-170f - -366f))))), -1356f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.b.x - var_1.b.e))))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: vec3<i32>) -> u32 {
    global1 = array<Struct_4, 1>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1340f, -536f, -1000f, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(300f, -207f, -264f, 539f), vec4<f32>(1056f, -841f, 381f, -545f))), true))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-309f, 1195f, 921f, 1438f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-536f, 249f, 946f, -815f) - vec4<f32>(488f, 723f, 1000f, -756f)))) + _wgslsmith_f_op_vec4_f32(func_2())))));
    let var_1 = var_0.x;
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) + 658f);
    let var_1 = ~2147483647i;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(43543u, func_1(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false)), ~u_input.c.xw << (~vec2<u32>(4294967295u, 57612u) % vec2<u32>(32u)), Struct_3(vec3<bool>(true, true, true), abs(vec3<i32>(0i, 0i, -2147483647i)), var_0 < -1000f, 1i), _wgslsmith_add_vec3_i32(-vec3<i32>(23156i, var_1, var_1), -vec3<i32>(1i, 0i, 0i))), _wgslsmith_f_op_f32(exp2(var_0)) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0)), -788f))), _wgslsmith_mult_u32(u_input.c.x, ~36343u)), 1u)];
    let var_3 = var_2.c.a.xy;
    let var_4 = global1[_wgslsmith_index_u32(select(~((var_2.b.c.x | ~u_input.a) & 4215u), var_2.b.c.x, true), 1u)];
    var var_5 = 23188u;
    global1 = array<Struct_4, 1>();
    var var_6 = -var_2.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4.c.b.xy, vec2<i32>(-1i) * -abs(vec2<i32>(var_1, -16669i))));
}

