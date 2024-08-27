struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<u32>(0u, 16471u), vec3<f32>(1000f, -1257f, -717f), 331f, 4294967295u), Struct_2(vec2<u32>(30099u, 4053u), vec3<f32>(1777f, -636f, -270f), 963f, 99537u), Struct_2(vec2<u32>(50366u, 4294967295u), vec3<f32>(264f, 894f, -1016f), 1449f, 0u), Struct_2(vec2<u32>(0u, 18257u), vec3<f32>(124f, -586f, -1051f), -1102f, 1u), Struct_2(vec2<u32>(50991u, 45095u), vec3<f32>(-217f, -787f, 983f), -152f, 26185u), Struct_2(vec2<u32>(21516u, 29328u), vec3<f32>(775f, 277f, -327f), -1544f, 7006u), Struct_2(vec2<u32>(4294967295u, 52971u), vec3<f32>(1579f, 298f, -1000f), 1000f, 1u));

var<private> global1: array<vec4<i32>, 22>;

var<private> global2: f32 = 828f;

var<private> global3: array<Struct_2, 8>;

var<private> global4: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec2<u32>(4294967295u, 0u), vec3<f32>(-1000f, -688f, 1033f), -1270f, 42771u), Struct_2(vec2<u32>(4294967295u, 26016u), vec3<f32>(162f, -676f, -437f), 457f, 4294967295u), Struct_2(vec2<u32>(73844u, 0u), vec3<f32>(745f, 475f, 1064f), 354f, 55315u), Struct_2(vec2<u32>(4294967295u, 0u), vec3<f32>(-1921f, -233f, 2426f), 976f, 88256u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global3 = array<Struct_2, 8>();
    global3 = array<Struct_2, 8>();
    var var_0 = ~(~vec3<i32>(~2147483647i, 2147483647i, ~(-1i))) | (~(~vec3<i32>(u_input.b, 1i, 2147483647i)) >> (vec3<u32>(~(~45508u), _wgslsmith_clamp_u32(u_input.d, ~0u, u_input.a.x), abs(max(6662u, u_input.a.x))) % vec3<u32>(32u)));
    let var_1 = Struct_5(vec4<i32>(abs(u_input.c), 19233i, -1i, u_input.c), 0i);
    let var_2 = true;
    return var_2;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_3 {
    let var_0 = select(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(true, any(vec4<bool>(true, true, true, func_3()))), -1i <= _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, -32859i, -4238i), 1i), 1i));
    global1 = array<vec4<i32>, 22>();
    var var_1 = Struct_2(~(~vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x)), u_input.d)), vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(exp2(arg_0))), arg_1, 4294967295u);
    global0 = array<Struct_2, 7>();
    global2 = 1000f;
    return Struct_3(arg_1);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> i32 {
    return 2147483647i;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_4 {
    var var_0 = arg_0;
    global2 = 1309f;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 32139u, 4294967295u), u_input.a.zwx)), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.a.zw, vec2<u32>(u_input.a.x, u_input.a.x)), countOneBits(~vec2<u32>(17545u, u_input.d))), min(_wgslsmith_add_u32(u_input.d, ~0u), ~u_input.a.x)), ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 43752u), u_input.a.yww), ~4294967295u, firstLeadingBit(17843u)), 4294967295u)), 7u)];
    let var_2 = Struct_1(_wgslsmith_mod_vec2_u32(select((vec2<u32>(var_1.a.x, var_1.a.x) << (u_input.a.yw % vec2<u32>(32u))) >> (~vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), ~(~vec2<u32>(var_1.a.x, 4294967295u)), reverseBits(4294967295u) != _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a.x), vec3<u32>(u_input.d, var_1.d, var_1.d))), vec2<u32>(~u_input.d, firstLeadingBit(0u >> (u_input.a.x % 32u)))));
    var_0 = -min(arg_0, arg_0) << (var_1.a % vec2<u32>(32u));
    return Struct_4(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d, ~_wgslsmith_mult_u32(var_2.a.x, 4294967295u), var_2.a.x), ~u_input.a.zzx), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, var_1.c) - _wgslsmith_f_op_f32(max(-1953f, -843f))) + _wgslsmith_f_op_f32(-113f + var_1.b.x))), arg_1.xz, Struct_2(reverseBits(var_1.a), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, 776f, var_1.b.x) * vec3<f32>(var_1.b.x, var_1.c, var_1.b.x))))), -1037f, countOneBits(max(~var_2.a.x, ~4294967295u))));
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: u32, arg_3: bool) -> vec3<bool> {
    let var_0 = func_5(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, func_4(u_input.c, func_2(-574f, 178f)), _wgslsmith_dot_vec4_i32(arg_1.a, -vec4<i32>(arg_1.a.x, -19319i, -1i, -26083i))), -77984i), select(!select(vec4<bool>(true, arg_3, false, arg_3), !vec4<bool>(arg_3, true, false, false), vec4<bool>(false, false, false, arg_3)), !(!select(vec4<bool>(false, true, arg_3, arg_3), vec4<bool>(true, false, arg_3, false), vec4<bool>(arg_3, arg_3, false, arg_3))), false), _wgslsmith_mod_i32(arg_0, arg_1.b));
    global0 = array<Struct_2, 7>();
    global4 = array<Struct_2, 4>();
    let var_1 = arg_2;
    var var_2 = Struct_5(_wgslsmith_clamp_vec4_i32(min(~(vec4<i32>(2147483647i, arg_1.a.x, arg_1.b, 16616i) | vec4<i32>(42853i, -19492i, arg_0, u_input.b)), vec4<i32>(countOneBits(u_input.b), arg_0, arg_0, 1i)), vec4<i32>(-16761i | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 56467i, -17566i, -44607i), vec4<i32>(arg_0, 22367i, arg_1.a.x, arg_1.b)), -19729i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.b, -1i, 1i), vec3<i32>(10920i, u_input.c, u_input.b)), vec3<i32>(12146i, arg_0, 7928i)), func_4(-15959i, Struct_3(var_0.b.a))), _wgslsmith_div_vec4_i32(arg_1.a, vec4<i32>(-3350i, 1i, arg_1.b, -42343i)) << (((u_input.a << (u_input.a % vec4<u32>(32u))) | (u_input.a >> (vec4<u32>(arg_2, 0u, 51297u, u_input.d) % vec4<u32>(32u)))) % vec4<u32>(32u))), arg_1.b);
    return vec3<bool>(var_0.b.a < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.d.c - _wgslsmith_div_f32(var_0.d.b.x, -463f)))), all(select(vec2<bool>(any(vec3<bool>(var_0.c.x, true, true)), arg_3), !vec2<bool>(var_0.c.x, false), arg_3)), ~(~var_1) == arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(min(~74223u, ~4294967295u) <= ~u_input.a.x, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), func_1(19126i, Struct_5(global1[_wgslsmith_index_u32(u_input.d, 22u)], u_input.b), 0u, true)))));
    var_0 = !(!(!func_3()));
    var var_1 = vec3<bool>(!(!func_3()), func_1(min(2147483647i, u_input.b), Struct_5((vec4<i32>(u_input.b, u_input.b, u_input.c, u_input.c) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 10010u) % vec4<u32>(32u))) << (vec4<u32>(u_input.d, 45682u, u_input.a.x, 0u) % vec4<u32>(32u)), 2147483647i), ~(~u_input.d), any(vec2<bool>(true, true))).x, false);
    var var_2 = vec4<u32>(4294967295u, abs(~_wgslsmith_sub_u32(24530u, 27189u >> (u_input.a.x % 32u))), 45262u, u_input.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -917f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f)), -300f, 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, firstTrailingBit(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(var_2.x, u_input.a.x, u_input.d, 67801u))) ^ _wgslsmith_sub_u32(4294967295u, ~33417u), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, 1i), max(vec3<i32>(u_input.c, -1073i, u_input.b), vec3<i32>(-34049i, 0i, 1i))), -u_input.c));
}

