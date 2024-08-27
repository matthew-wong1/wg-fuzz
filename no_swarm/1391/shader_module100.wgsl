struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<i32>, 8>;

var<private> global2: array<vec2<i32>, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> u32 {
    var var_0 = !vec4<bool>(true, all(vec4<bool>(all(vec2<bool>(true, false)), true, any(vec3<bool>(false, false, false)), false)), true, !all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    global1 = array<vec4<i32>, 8>();
    var var_1 = select(var_0.yzw, var_0.yzz, any(var_0.ww));
    var_1 = vec3<bool>(true, false, !(all(!var_1.yx) || false));
    var_1 = !vec3<bool>(24162i >= _wgslsmith_sub_i32(reverseBits(u_input.a), u_input.c), var_1.x, select(false, false, var_1.x));
    return 45079u;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = Struct_5(global1[_wgslsmith_index_u32(~abs(arg_0.x), 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-335f * -1006f))))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(183f, -2037f), vec2<f32>(-265f, 134f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-344f, 1187f) - vec2<f32>(836f, 379f))), u_input.b), arg_0.x, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-334f - 207f), 1497f), arg_0.x)), ~(~vec3<u32>(func_1(), arg_0.x, func_1())));
    global2 = array<vec2<i32>, 11>();
    global1 = array<vec4<i32>, 8>();
    global2 = array<vec2<i32>, 11>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-990f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-579f - var_0.b)))), _wgslsmith_f_op_f32(f32(-1f) * -1401f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))))))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1228f, 439f) + vec2<f32>(1119f, 199f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(123f, 227f)))) + vec2<f32>(-705f, _wgslsmith_f_op_f32(func_3(arg_0.yx, vec3<i32>(2147483647i, -1i, 51935i), true, 1i)))), vec2<f32>(680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1172f, 181f))))), u_input.b);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(539f, _wgslsmith_f_op_f32(floor(-1262f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_f_op_vec2_f32(-var_0.a)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1264f, 216f))), vec2<f32>(var_0.a.x, -844f)))), vec2<bool>(false, any(vec2<bool>(false, false))))), u_input.b);
    var var_1 = Struct_3(Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(354f - var_0.a.x), _wgslsmith_f_op_f32(max(var_0.a.x, 377f))), 2672u), firstTrailingBit(1u), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), u_input.b)), arg_0, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-527f + _wgslsmith_f_op_f32(abs(var_0.a.x))), -2347f), _wgslsmith_dot_vec2_u32(abs(arg_0.yz), ~arg_0.zx) >> (25969u % 32u)), Struct_1(vec2<f32>(2021f, _wgslsmith_f_op_f32(f32(-1f) * -960f)), _wgslsmith_sub_u32(firstTrailingBit(firstTrailingBit(arg_0.x)), ~0u)));
    var_1 = Struct_3(Struct_2(Struct_1(vec2<f32>(_wgslsmith_div_f32(-799f, 1063f), _wgslsmith_f_op_f32(-var_0.a.x)), 121691u), ~4294967295u, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2430f), _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, var_1.b.x), var_1.b.wx | arg_0.zz))), ~arg_0, var_1.d, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a.a.a.x, var_0.a.x))) * vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(select(var_0.a.x, 585f, false)))), _wgslsmith_clamp_u32(var_1.c.b, var_0.b, ~(~var_0.b))));
    var var_2 = 12600i;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 11>();
    var var_0 = func_2(vec4<u32>(u_input.b, ~(~(~u_input.b)), _wgslsmith_add_u32(110283u, u_input.b) >> (~(~u_input.b) % 32u), func_1()));
    global1 = array<vec4<i32>, 8>();
    var var_1 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(~select(vec4<u32>(var_0.c.b, u_input.b, var_0.a.b, 38865u), vec4<u32>(4294967295u, 0u, 1u, 985u), vec4<bool>(false, false, true, false)), ~vec4<u32>(var_0.a.b, 4294967295u, 32916u, u_input.b), (vec4<u32>(1u, 1u, u_input.b, u_input.b) >> (vec4<u32>(var_0.b, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u))) >> ((vec4<u32>(var_0.c.b, 1u, 114219u, 69586u) >> (vec4<u32>(4294967295u, var_0.c.b, var_0.a.b, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)))) << (vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, 1u), 0u ^ var_0.b) | abs(_wgslsmith_mult_u32(6274u, var_0.c.b)), u_input.b, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b, 1u, u_input.b), select(vec3<u32>(var_0.a.b, u_input.b, var_0.b), vec3<u32>(0u, 1u, var_0.b), vec3<bool>(true, true, false))), ~4294967295u), max(4294967295u, _wgslsmith_sub_u32(u_input.b, var_0.c.b)) & (_wgslsmith_add_u32(u_input.b, var_0.b) >> (~22999u % 32u))) % vec4<u32>(32u));
    let var_2 = vec3<i32>(u_input.a, (-u_input.c & u_input.c) << (_wgslsmith_add_u32(var_0.a.b >> (4294967295u % 32u), u_input.b) % 32u), min(_wgslsmith_div_i32(i32(-1i) * -1i, i32(-1i) * -56456i), _wgslsmith_dot_vec4_i32(select(global1[_wgslsmith_index_u32(u_input.b, 8u)], _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.c), global1[_wgslsmith_index_u32(30333u, 8u)]), vec4<bool>(false, true, true, false)), ~global1[_wgslsmith_index_u32(u_input.b, 8u)] ^ vec4<i32>(-2147483647i, 7710i, -3823i, 82882i))));
    let var_3 = true;
    global0 = 12229u != (_wgslsmith_clamp_u32(~u_input.b & func_1(), var_0.b, _wgslsmith_mult_u32(52069u, var_0.c.b)) | var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-(select(vec3<i32>(var_2.x, 2147483647i, -2987i), var_2, vec3<bool>(false, var_3, var_3)) >> (var_1.xyz % vec3<u32>(32u)))));
}

