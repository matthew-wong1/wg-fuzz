struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global2: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-6562i, -17825i), vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), vec2<i32>(43334i, -1i), vec2<i32>(5805i, 69535i), vec2<i32>(0i, -1503i), vec2<i32>(2147483647i, -5312i), vec2<i32>(-7665i, -45017i), vec2<i32>(-1i, 0i), vec2<i32>(-18482i, i32(-2147483648)), vec2<i32>(-15934i, 0i), vec2<i32>(31733i, 0i), vec2<i32>(-15840i, 2147483647i), vec2<i32>(3893i, 19853i), vec2<i32>(i32(-2147483648), 2680i), vec2<i32>(-1i, -21143i), vec2<i32>(44148i, -16034i), vec2<i32>(-1i, 27246i), vec2<i32>(2147483647i, -36726i), vec2<i32>(17954i, 51879i), vec2<i32>(-3411i, -18132i), vec2<i32>(39360i, -42223i));

var<private> global3: vec3<f32>;

var<private> global4: array<i32, 16> = array<i32, 16>(-1i, 2147483647i, i32(-2147483648), -22965i, -28649i, 4524i, 50828i, -28176i, -9852i, 15925i, -1i, 8774i, -29441i, -1i, 1i, -1i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> vec4<u32> {
    global0 = _wgslsmith_f_op_f32(abs(global3.x));
    let var_0 = arg_0.b.a;
    var var_1 = 1i;
    let var_2 = vec4<u32>(abs(firstLeadingBit(14253u)), ~1u, 0u, arg_1.c);
    var var_3 = arg_1.b;
    return vec4<u32>(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.a.x, 22729u, arg_1.c), vec4<u32>(4294967295u, 89272u, 11687u, arg_2.c.a.x))), ~arg_1.a.x, arg_0.a.x ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, arg_0.a.x), arg_0.a.x), var_2.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<f32>) -> vec3<f32> {
    global3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1839f)), 161f)), -296f)), _wgslsmith_f_op_f32(1680f * global3.x))), 353f);
    var var_0 = Struct_4(Struct_1(select(true, true, false)), global1[_wgslsmith_index_u32(0u, 8u)], func_3(Struct_2(vec4<u32>(1u, u_input.a.x, 98423u, 58063u), Struct_1(true), 2418u), Struct_2(u_input.a, global1[_wgslsmith_index_u32(arg_1 | arg_1, 8u)], _wgslsmith_div_u32(4294967295u, 4294967295u)), Struct_3(Struct_1(false), true, Struct_2(vec4<u32>(1u, u_input.a.x, 4294967295u, 0u), Struct_1(false), 0u), vec2<bool>(false, false))) >> (_wgslsmith_clamp_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(6842u, u_input.a.x, 28193u, arg_1), select(vec4<u32>(arg_1, 11512u, 37204u, u_input.a.x), vec4<u32>(56978u, 18140u, arg_1, arg_1), true)), ~(u_input.a ^ u_input.a)) % vec4<u32>(32u)), Struct_2(~(~vec4<u32>(u_input.a.x, arg_1, 1u, u_input.a.x) & ~u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~arg_1), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, arg_1), ~vec3<u32>(arg_1, 29233u, 3455u)), 4294967295u), 8u)], 50206u));
    var var_1 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, ~_wgslsmith_sub_vec4_u32(~var_0.d.a, select(u_input.a, u_input.a, var_0.d.b.a))), 8u)], Struct_1(all(vec2<bool>(var_0.a.a, var_0.d.b.a))), u_input.a, var_0.d);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x)));
    var var_3 = vec3<u32>(arg_1, abs(1u), _wgslsmith_mod_u32(0u, 26111u ^ u_input.a.x));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(263f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * arg_2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-933f, 1055f, arg_0.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global3.x)), arg_0.x));
    let var_1 = Struct_1(all(vec2<bool>(true, true)) != all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    let var_2 = Struct_2(reverseBits(~func_3(Struct_2(u_input.a, global1[_wgslsmith_index_u32(2536u, 8u)], u_input.a.x), Struct_2(vec4<u32>(u_input.a.x, 30198u, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.a.x), Struct_3(global1[_wgslsmith_index_u32(5070u, 8u)], true, Struct_2(vec4<u32>(27804u, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(var_1.a), u_input.a.x), vec2<bool>(var_1.a, var_1.a)))), Struct_1(all(vec4<bool>(all(vec2<bool>(var_1.a, true)), true, !var_1.a, select(true, var_1.a, var_1.a)))), 35442u);
    global4 = array<i32, 16>();
    let var_3 = Struct_1(var_1.a);
    return Struct_2(select(~(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(var_2.c, 1u), ~4294967295u, countOneBits(54578u)) | ~(~vec4<u32>(1u, 62618u, var_2.a.x, u_input.a.x)), ((u_input.c | u_input.c) >= -2147483647i) || !all(vec4<bool>(var_3.a, var_3.a, true, var_2.b.a))), Struct_1(true), max(~countOneBits(4294967295u), _wgslsmith_div_u32(firstTrailingBit(u_input.a.x), _wgslsmith_clamp_u32(var_2.c, var_2.c, u_input.a.x))) << (_wgslsmith_dot_vec2_u32(~var_2.a.xz, ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a.x, var_2.a.x), vec2<u32>(u_input.a.x, var_2.a.x))) % 32u));
}

fn func_1() -> f32 {
    let var_0 = ~(~(~u_input.a.zz));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, _wgslsmith_f_op_f32(global3.x - -1182f), _wgslsmith_f_op_f32(abs(-773f))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, global3.x) * vec3<f32>(-1253f, global3.x, global3.x)), u_input.a.x, vec2<f32>(global3.x, global3.x)))))), u_input.b);
    let var_2 = u_input.c;
    global2 = array<vec2<i32>, 22>();
    global2 = array<vec2<i32>, 22>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(309f))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.x, 1399f, global3.x))) - vec3<f32>(1078f, _wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_f_op_f32(global3.x * global3.x)))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, global3.x, true))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(abs(global3.x))) * vec3<f32>(global3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-248f - 1846f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -382f) + -642f))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, u_input.b, global4[_wgslsmith_index_u32(83796u, 16u)], _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1171f, -204f, global3.x, 708f) * vec4<f32>(-147f, -1925f, 492f, global3.x)) - vec4<f32>(1043f, -195f, global3.x, 1132f)))))));
}

