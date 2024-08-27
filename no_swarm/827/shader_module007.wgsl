struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_4;

var<private> global2: array<i32, 5> = array<i32, 5>(-33912i, 7416i, -55027i, 34955i, 48749i);

var<private> global3: array<vec2<f32>, 19>;

var<private> global4: array<vec3<bool>, 13>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> u32 {
    let var_0 = ~u_input.d;
    var var_1 = arg_0.a.wz;
    let var_2 = vec4<bool>(global0.x, any(vec4<bool>(arg_0.b.a.x != abs(u_input.e), !any(arg_0.a.xww), var_1.x, global0.x)), all(vec3<bool>(any(vec3<bool>(arg_0.a.x, arg_1, true)), arg_0.c.c.x, any(global1.a.c.yy))), global0.x);
    var_1 = select(arg_0.a.wx, global0.xy, true);
    global1 = Struct_4(arg_0.c, global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(9609u, ~_wgslsmith_clamp_u32(9027u, arg_0.c.a.a, arg_0.c.b)), 5u)], arg_0.b, ~select(countOneBits(vec4<i32>(arg_0.b.a.x, u_input.e, -39772i, arg_0.c.d.x) >> (u_input.d % vec4<u32>(32u))), -global1.a.d, !(!vec4<bool>(false, var_1.x, false, false))));
    return _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mod_u32(arg_0.c.b, firstLeadingBit(3357u))), ~_wgslsmith_clamp_u32(24676u, ~arg_0.c.b, 0u)) & 23513u;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    global4 = array<vec3<bool>, 13>();
    global3 = array<vec2<f32>, 19>();
    global1 = Struct_4(Struct_3(global1.a.a, global1.a.a.a, !select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global1.a.c.x, true, true), global4[_wgslsmith_index_u32(1u, 13u)]), select(vec3<bool>(global0.x, true, true), vec3<bool>(true, global1.a.c.x, true), global0.x), true), _wgslsmith_mult_vec4_i32(vec4<i32>(-8787i, 2147483647i, u_input.e, 0i) << (vec4<u32>(31070u, 1u, 0u, 46092u) % vec4<u32>(32u)), global1.a.d << (u_input.d % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(global1.a.a.a, 1u, arg_0.x, global1.a.a.a)) % vec4<u32>(32u))), _wgslsmith_sub_i32(~2147483647i, arg_1.a.x), Struct_2(-arg_1.a), vec4<i32>(arg_1.a.x >> (u_input.d.x % 32u), global2[_wgslsmith_index_u32(func_3(Struct_5(vec4<bool>(global1.a.c.x, global1.a.c.x, true, true), Struct_2(arg_1.a), Struct_3(global1.a.a, global1.a.b, global4[_wgslsmith_index_u32(arg_0.x, 13u)], vec4<i32>(1i, global1.c.a.x, u_input.a, 60992i))), global1.a.c.x) << (~4294967295u % 32u), 5u)], global1.c.a.x, ~(~(-1839i))) >> (u_input.d % vec4<u32>(32u)));
    global4 = array<vec3<bool>, 13>();
    global1 = Struct_4(Struct_3(global1.a.a, arg_0.x, select(vec3<bool>(false, false, !global1.a.c.x), vec3<bool>(global0.x & global1.a.c.x, global0.x || global0.x, true), global0.x & true), global1.a.d), select(min(~(i32(-1i) * -1i), 6249i >> ((0u ^ u_input.b) % 32u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, 2147483647i, 59431i, u_input.c.x), countOneBits(vec4<i32>(u_input.c.x, u_input.c.x, arg_1.a.x, 124744i))), global1.a.c.x), Struct_2(global1.a.d.xyw & vec3<i32>(0i, -11634i, 1i)), vec4<i32>(12427i, ~(-abs(u_input.e)), _wgslsmith_dot_vec3_i32(select(arg_1.a, arg_1.a, global1.a.c.x), vec3<i32>(-3526i, global1.a.d.x, 69210i)) & abs(1i), arg_1.a.x));
    return 1000f;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: f32) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-851f, arg_0, -802f))))))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(276f - arg_2) + arg_2)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(678f, arg_2, 1007f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, 1187f, -115f), vec3<f32>(-519f, arg_2, arg_2), vec3<bool>(global0.x, global0.x, arg_1.x))), select(global1.a.c, vec3<bool>(true, false, false), vec3<bool>(global1.a.c.x, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(743f, -1028f, arg_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_2, arg_0) * vec3<f32>(arg_2, arg_2, arg_0)))))));
    global2 = array<i32, 5>();
    global1 = Struct_4(Struct_3(global1.a.a, 1u, global1.a.c, global1.d), _wgslsmith_dot_vec4_i32(select(min(vec4<i32>(u_input.e, 12396i, global1.c.a.x, global2[_wgslsmith_index_u32(global1.a.b, 5u)]), global1.a.d), vec4<i32>(-43703i, global1.d.x, u_input.a, u_input.a), true) | vec4<i32>(81751i, -20176i, ~(-2147483647i), 0i), select(~vec4<i32>(global2[_wgslsmith_index_u32(21510u, 5u)], u_input.e, 38068i, global2[_wgslsmith_index_u32(u_input.b, 5u)]), min(vec4<i32>(0i, -16011i, global2[_wgslsmith_index_u32(6423u, 5u)], global2[_wgslsmith_index_u32(global1.a.a.a, 5u)]), ~global1.a.d), any(vec2<bool>(false, arg_1.x)))), Struct_2(vec3<i32>(u_input.a, 24158i, select(u_input.a, global2[_wgslsmith_index_u32(u_input.d.x, 5u)] ^ global2[_wgslsmith_index_u32(1u, 5u)], var_0.x == 469f))), -vec4<i32>(~global2[_wgslsmith_index_u32(global1.a.a.a, 5u)] & select(-21172i, 14430i, global0.x), ~countOneBits(global1.d.x), 1i, abs(1i)));
    global0 = global1.a.c;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, arg_0, arg_2, arg_2))), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, arg_0, var_0.x), vec4<f32>(-709f, var_0.x, var_0.x, arg_0)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_0, arg_2, -889f) * vec4<f32>(-690f, var_0.x, arg_0, -598f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(956f, -1074f, arg_2, 265f)))))))));
    return Struct_4(Struct_3(Struct_1(_wgslsmith_sub_u32(u_input.b, _wgslsmith_sub_u32(global1.a.b, 4294967295u))), global1.a.b, !select(global4[_wgslsmith_index_u32(~20905u, 13u)], global1.a.c, vec3<bool>(false, global0.x, arg_1.x)), min(_wgslsmith_div_vec4_i32(vec4<i32>(global1.d.x, global2[_wgslsmith_index_u32(7626u, 5u)], -2147483647i, -14889i) << (u_input.d % vec4<u32>(32u)), vec4<i32>(global2[_wgslsmith_index_u32(global1.a.a.a, 5u)], -2147483647i, global1.a.d.x, global2[_wgslsmith_index_u32(15506u, 5u)])), countOneBits(vec4<i32>(-2147483647i, u_input.c.x, global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(42748u, 5u)])))), _wgslsmith_mod_i32(-global1.d.x, ~1i), global1.c, _wgslsmith_sub_vec4_i32(global1.d << (vec4<u32>(global1.a.a.a, u_input.d.x, 0u, 48199u) % vec4<u32>(32u)), vec4<i32>(~global2[_wgslsmith_index_u32(global1.a.a.a, 5u)], -2147483647i, -1i, _wgslsmith_mod_i32(-1i, 4459i))) >> (min(u_input.d, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 28307u, 61227u, 4036u), u_input.d), 0u, select(0u, 18616u, false), global1.a.a.a << (u_input.d.x % 32u))) % vec4<u32>(32u)));
}

fn func_1() -> Struct_5 {
    global0 = select(select(!global4[_wgslsmith_index_u32(~u_input.b, 13u)], vec3<bool>(global1.a.c.x, _wgslsmith_f_op_f32(943f - 2507f) > _wgslsmith_f_op_f32(trunc(-2196f)), false), global1.a.c), vec3<bool>(all(select(select(vec4<bool>(global1.a.c.x, false, true, true), vec4<bool>(false, global1.a.c.x, global1.a.c.x, global0.x), global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global1.a.c.x), vec4<bool>(true, false, global1.a.c.x, global0.x), global1.a.c.x), select(vec4<bool>(global1.a.c.x, global1.a.c.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, global1.a.c.x, true, global1.a.c.x)))), global1.a.c.x, false), global4[_wgslsmith_index_u32(1u, 13u)]);
    let var_0 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(u_input.d.zw | (vec2<u32>(global1.a.a.a, u_input.b) >> (u_input.d.yy % vec2<u32>(32u))), Struct_2(global1.a.d.wyw ^ global1.a.d.xxw))))), !(!global1.a.c.yx), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2188f))))));
    global3 = array<vec2<f32>, 19>();
    let var_1 = u_input.b;
    global1 = var_0;
    return Struct_5(select(vec4<bool>(false, !(!var_0.a.c.x), true, true), !select(!vec4<bool>(false, false, global0.x, true), select(vec4<bool>(var_0.a.c.x, true, false, true), vec4<bool>(false, global0.x, true, true), true), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(global1.a.c.x, global0.x, global1.a.c.x, true), global0.x)), false), Struct_2(vec3<i32>(func_4(-1241f, vec2<bool>(false, global1.a.c.x), _wgslsmith_f_op_f32(-732f * -1000f)).d.x, 5315i, u_input.c.x)), Struct_3(func_4(1f, vec2<bool>(true, any(global4[_wgslsmith_index_u32(u_input.b, 13u)])), _wgslsmith_f_op_f32(sign(-626f))).a.a, firstLeadingBit(global1.a.a.a), global4[_wgslsmith_index_u32(firstLeadingBit(global1.a.b), 13u)], vec4<i32>(-6548i, -u_input.e, _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(44398u, 5u)], -18452i) >> (u_input.d.xy % vec2<u32>(32u)), vec2<i32>(global1.c.a.x, var_0.d.x)), -global1.d.x)));
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: Struct_4, arg_3: u32) -> f32 {
    global0 = !(!vec3<bool>(func_1().c.c.x, global1.a.c.x, ~arg_2.a.b > arg_1.c.a.a));
    let var_0 = arg_1;
    let var_1 = ~arg_1.c.d.zyz;
    global0 = vec3<bool>(false, var_0.c.c.x, select(!var_0.a.x, !global0.x, all(func_1().a)));
    global4 = array<vec3<bool>, 13>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1016f, _wgslsmith_f_op_f32(f32(-1f) * -1570f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-2128f, _wgslsmith_f_op_f32(func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.x, -56960i), -u_input.c) << (74746u % 32u), func_1(), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-584f))), global1.a.c.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2373f)) * _wgslsmith_f_op_f32(floor(-589f)))), 33453u)));
    var var_1 = true;
    var_1 = false;
    var_1 = global1.a.c.x;
    var var_2 = global1.d;
    var var_3 = -1i;
    let var_4 = _wgslsmith_mult_vec3_u32(select(vec3<u32>(~abs(global1.a.b), _wgslsmith_dot_vec2_u32(reverseBits(u_input.d.ww), select(vec2<u32>(global1.a.a.a, u_input.d.x), u_input.d.zx, global1.a.c.xx)), ~_wgslsmith_mult_u32(0u, 0u)), min(countOneBits(reverseBits(u_input.d.yxz)), u_input.d.wzy), global1.a.c), vec3<u32>(global1.a.b, _wgslsmith_mult_u32(10510u, ~global1.a.a.a), 0u));
    let var_5 = abs(~global1.d.zy);
    let var_6 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(47992u, 4294967295u, 0u, var_4.x)), firstTrailingBit(var_6)) & _wgslsmith_mult_u32(4294967295u, ~4294967295u), ~var_4.x, reverseBits(_wgslsmith_sub_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.c.a.x, 0i, 1207i, global2[_wgslsmith_index_u32(36723u, 5u)]), vec4<i32>(-1i, global2[_wgslsmith_index_u32(31450u, 5u)], u_input.e, var_5.x))), vec4<i32>(1i, -u_input.e, -var_5.x, u_input.c.x))), var_2.xww);
}

