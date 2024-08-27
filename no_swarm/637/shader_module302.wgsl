struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(false, 4294967295u, vec3<f32>(-245f, -2052f, -649f)), Struct_4(true, 90906u, vec3<f32>(-383f, -165f, 823f)), Struct_4(false, 1014u, vec3<f32>(1532f, 1959f, -1426f)), Struct_4(true, 4294967295u, vec3<f32>(305f, 1330f, -603f)), Struct_4(true, 50907u, vec3<f32>(-621f, -1059f, 641f)));

var<private> global1: Struct_1;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1u, 0u);

var<private> global3: i32;

var<private> global4: vec3<f32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(~arg_1.a, -2147483647i), u_input.d, global1.d.yy), ~(~(~vec4<u32>(6422u, 4294967295u, arg_0, 4294967295u))), global1.d, firstLeadingBit(countOneBits(1u)));
    let var_1 = u_input.d;
    let var_2 = Struct_3(16504i);
    var var_3 = arg_1;
    var var_4 = ~4294967295u;
    return _wgslsmith_add_u32(0u, global1.c.x);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> vec3<u32> {
    global0 = array<Struct_4, 5>();
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f) + _wgslsmith_f_op_f32(f32(-1f) * -1935f))), abs(vec2<i32>(-1i) * -global1.b), vec4<u32>(1u, ~_wgslsmith_sub_u32(59262u & arg_2.b.x, ~68239u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 83977u, arg_2.b.x), u_input.c.xxx ^ u_input.c.xzy, _wgslsmith_mult_vec3_u32(arg_2.d.c.ywx, u_input.c.wyy)), abs(vec3<u32>(9155u, global2.x, 1u))), abs(35211u)), vec3<i32>(-26371i, u_input.b, countOneBits(~min(1i, arg_2.a))), ~(0u << ((global2.x ^ ~arg_2.b.x) % 32u)));
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.d.a, 1160f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(858f * 585f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) + _wgslsmith_div_f32(global1.a, -399f))))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f * arg_1.x))), arg_2.c);
    global3 = global1.d.x | global1.d.x;
    return ~vec3<u32>(global2.x, 30826u, ~_wgslsmith_sub_u32(firstTrailingBit(48195u), ~20625u));
}

fn func_2() -> f32 {
    let var_0 = u_input.b;
    global0 = array<Struct_4, 5>();
    global2 = ~(~(~(~func_3(vec2<u32>(3821u, u_input.c.x), vec3<f32>(global1.a, global4.x, -527f), Struct_2(-2147483647i, vec3<u32>(103218u, u_input.c.x, global2.x), global4.x, Struct_1(729f, u_input.d, global1.c, vec3<i32>(global1.b.x, u_input.b, 1i), 4294967295u))))));
    global0 = array<Struct_4, 5>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.x))))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2638f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - 502f) * -906f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.x;
    let var_1 = select(select(vec2<bool>(false, true), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), false), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))), !(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true))), any(vec2<bool>(true, -1011f > _wgslsmith_f_op_f32(global1.a + global1.a))));
    let var_2 = select(func_1(_wgslsmith_mod_u32(~1u, ~(u_input.c.x ^ 47449u)), Struct_3(u_input.d.x)), u_input.a, !var_1.x);
    global0 = array<Struct_4, 5>();
    let var_3 = Struct_2(global1.d.x, vec3<u32>(u_input.a, firstTrailingBit(56832u), firstTrailingBit(9714u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), Struct_1(_wgslsmith_f_op_f32(round(global4.x)), firstLeadingBit(vec2<i32>(38101i, 1i)), _wgslsmith_mult_vec4_u32((vec4<u32>(0u, 49603u, 4294967295u, 8073u) << (global1.c % vec4<u32>(32u))) & vec4<u32>(54202u, global2.x, u_input.c.x, var_2), u_input.c), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(0i, 20634i, -5983i)), vec3<i32>(u_input.b, u_input.d.x, u_input.b)), global1.d), ~abs(4294967295u)));
    let var_4 = any(!(!vec3<bool>(false, var_1.x, var_1.x))) & !(!(!select(var_1.x, var_1.x, var_1.x)));
    var var_5 = Struct_2(global1.d.x, ~var_3.d.c.yzw, _wgslsmith_f_op_f32(-global4.x), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(ceil(-657f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1611f)), _wgslsmith_f_op_f32(func_2()))))), var_3.d.b, firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(global1.c, var_3.d.c), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2, global1.c.x, global1.c.x), u_input.c))), countOneBits(global1.d), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(sign(global4.x)), 327f));
}

