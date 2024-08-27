struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<f32, 22> = array<f32, 22>(744f, -124f, -1062f, -241f, -141f, 410f, 1000f, -2837f, 791f, -1000f, 123f, 843f, -136f, -670f, -1784f, -269f, 528f, 680f, -1000f, 954f, -398f, 688f);

var<private> global2: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    var var_0 = !arg_1.b;
    let var_1 = Struct_2(false, ~_wgslsmith_clamp_vec3_i32(~abs(vec3<i32>(u_input.a, 0i, -11967i)), _wgslsmith_div_vec3_i32(min(vec3<i32>(-2147483647i, -1i, -1i), vec3<i32>(0i, -39035i, 7781i)), vec3<i32>(u_input.a, -21634i, u_input.a) ^ vec3<i32>(u_input.a, 0i, 1i)), min(vec3<i32>(u_input.a, u_input.a, 46315i), vec3<i32>(u_input.a, u_input.a, 2147483647i))));
    global1 = array<f32, 22>();
    global2 = false;
    let var_2 = _wgslsmith_div_f32(-572f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1134f, global1[_wgslsmith_index_u32(4294967295u, 22u)]))));
    return _wgslsmith_sub_vec3_i32(-(~var_1.b), ~vec3<i32>(16105i, var_1.b.x, u_input.a));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    global1 = array<f32, 22>();
    var var_0 = _wgslsmith_sub_vec3_i32(func_3(Struct_1(~(~vec2<u32>(4294967295u, arg_0.a.x)), arg_2.a), global0[_wgslsmith_index_u32(arg_0.a.x, 28u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(550f)))))), _wgslsmith_div_vec3_i32(vec3<i32>(-18326i, max(arg_2.b.x | 0i, u_input.a), -21946i), countOneBits(_wgslsmith_sub_vec3_i32(arg_2.b, vec3<i32>(-19985i, u_input.a, -2147483647i) >> (vec3<u32>(arg_0.a.x, 1u, arg_0.a.x) % vec3<u32>(32u))))));
    global1 = array<f32, 22>();
    global1 = array<f32, 22>();
    global2 = any(vec4<bool>(arg_0.b, arg_0.b, !select(arg_0.b, arg_2.a, arg_2.a), !any(select(vec4<bool>(arg_2.a, arg_0.b, false, true), vec4<bool>(arg_0.b, false, arg_0.b, true), arg_2.a))));
    return arg_2;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = !(!select(!select(vec2<bool>(true, true), vec2<bool>(true, arg_3.a), arg_3.a), select(vec2<bool>(true, true), !vec2<bool>(arg_2.b, false), vec2<bool>(true, true)), !any(vec2<bool>(arg_2.b, arg_2.b))));
    var var_1 = true;
    global1 = array<f32, 22>();
    global0 = array<Struct_1, 28>();
    let var_2 = 12204u;
    return Struct_2(!arg_3.a, -vec3<i32>(_wgslsmith_mult_i32(-11936i, max(arg_0.x, -15478i)), -(i32(-1i) * -29119i), _wgslsmith_add_i32(arg_3.b.x, 2147483647i)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> vec2<f32> {
    let var_0 = global0[_wgslsmith_index_u32(~firstLeadingBit(~_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(18193u, 45211u))), 28u)];
    let var_1 = arg_1.xx;
    let var_2 = min(abs(var_0.a) & ~countOneBits(abs(var_0.a)), ~vec2<u32>(select(4294967295u, 4294967295u, true), ~0u) << (select(vec2<u32>(1u, abs(var_0.a.x)), ~(~vec2<u32>(1u, 4294967295u)), !arg_1.zx) % vec2<u32>(32u)));
    var var_3 = vec2<bool>(false, var_0.b);
    var_3 = vec2<bool>(false, (!any(vec3<bool>(true, var_1.x, var_1.x)) && ((arg_0.b.x >> (0u % 32u)) <= _wgslsmith_dot_vec2_i32(arg_0.b.yy, arg_0.b.xy))) & arg_0.a);
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(~65915u, 22u)], global1[_wgslsmith_index_u32(firstTrailingBit(var_0.a.x), 22u)])) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(88870u, 22u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -2367f)))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~min(arg_2.a, ~select(arg_2.a, arg_2.a, vec2<bool>(arg_2.b, arg_0.a))), arg_0.a);
    global2 = arg_0.a;
    var var_1 = arg_0.b.x;
    var var_2 = func_2(Struct_1(var_0.a, select(select(func_2(Struct_1(arg_2.a, arg_0.a), vec4<f32>(116f, -1827f, global1[_wgslsmith_index_u32(4294967295u, 22u)], 1689f), Struct_2(arg_2.b, arg_0.b), -13752i).a, var_0.b, arg_2.a.x >= 0u), all(select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, var_0.b), true)), false)), vec4<f32>(arg_1.x, 492f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(715f, 1520f)), _wgslsmith_f_op_f32(max(-248f, 266f)))))), arg_0, _wgslsmith_mod_i32(func_3(Struct_1(vec2<u32>(24460u, 4294967295u), arg_2.b), Struct_1(var_0.a, true), global1[_wgslsmith_index_u32(var_0.a.x, 22u)]).x | _wgslsmith_dot_vec4_i32(~vec4<i32>(32870i, arg_0.b.x, u_input.a, 1i), ~vec4<i32>(arg_0.b.x, -2147483647i, -2147483647i, -74652i)), -2147483647i));
    global1 = array<f32, 22>();
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_2.a.x, var_0.a.x), 28u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = func_6(Struct_2(!any(!vec3<bool>(false, false, arg_1.b)), ~(~_wgslsmith_add_vec3_i32(vec3<i32>(23391i, u_input.a, u_input.a), vec3<i32>(u_input.a, -4394i, u_input.a)))), _wgslsmith_f_op_vec2_f32(func_5(func_4(vec2<i32>(u_input.a, ~2147483647i), arg_0.a.x, Struct_1(~vec2<u32>(0u, 9122u), true), func_2(Struct_1(vec2<u32>(arg_1.a.x, arg_0.a.x), true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(16653u, 22u)], -457f, global1[_wgslsmith_index_u32(1u, 22u)], -738f), vec4<f32>(-134f, global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<bool>(true, arg_1.b, false, false))), Struct_2(arg_0.b, vec3<i32>(1i, u_input.a, u_input.a)), u_input.a << (29857u % 32u))), !(!(!vec3<bool>(arg_1.b, true, arg_1.b))))), Struct_1(~vec2<u32>(countOneBits(0u), _wgslsmith_mod_u32(4294967295u, 19790u)), arg_1.b));
    let var_1 = !vec4<bool>(!arg_1.b, all(vec4<bool>(false, arg_1.b, all(vec4<bool>(arg_1.b, arg_1.b, false, arg_0.b)), false)), arg_1.b, any(vec4<bool>(var_0.a.x == 44815u, all(vec4<bool>(var_0.b, true, arg_1.b, var_0.b)), true, true)));
    var var_2 = Struct_1(_wgslsmith_mult_vec2_u32(var_0.a, vec2<u32>(~(~4294967295u), _wgslsmith_sub_u32(min(arg_0.a.x, arg_0.a.x), ~0u))), any(select(var_1.yzy, !select(vec3<bool>(var_0.b, arg_0.b, arg_1.b), vec3<bool>(false, true, var_1.x), var_1.zww), select(select(var_1.xyy, vec3<bool>(true, true, false), vec3<bool>(var_1.x, arg_1.b, arg_1.b)), select(vec3<bool>(var_0.b, true, false), var_1.xwx, vec3<bool>(true, arg_0.b, arg_1.b)), func_6(Struct_2(true, vec3<i32>(u_input.a, u_input.a, u_input.a)), vec2<f32>(global1[_wgslsmith_index_u32(arg_0.a.x, 22u)], 440f), arg_1).b))));
    global0 = array<Struct_1, 28>();
    global1 = array<f32, 22>();
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~15902u, 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 22u)]))) - global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, 1u) | (~4294967295u << (_wgslsmith_dot_vec3_u32(vec3<u32>(15896u, 31617u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 1u)) % 32u)), 22u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1221f, -328f)))));
    var var_1 = vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, abs(0u)), 22u)], 349f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1629f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(87974u, 22u)]))))) - global1[_wgslsmith_index_u32(abs(func_1(global0[_wgslsmith_index_u32(select(65414u, 1u, false), 28u)], Struct_1(vec2<u32>(4294967295u, 20640u), true))), 22u)]), _wgslsmith_f_op_vec2_f32(func_5(func_4(func_2(func_6(Struct_2(false, vec3<i32>(-2939i, -1516i, u_input.a)), vec2<f32>(global1[_wgslsmith_index_u32(25994u, 22u)], global1[_wgslsmith_index_u32(18527u, 22u)]), global0[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(15925u, 22u)], 224f, global1[_wgslsmith_index_u32(0u, 22u)], -564f)), Struct_2(true, vec3<i32>(-5649i, 2147483647i, u_input.a)), max(u_input.a, u_input.a)).b.xx, ~1u, Struct_1(vec2<u32>(1u, 1u), true), Struct_2(true, vec3<i32>(u_input.a, u_input.a, -21992i) << (vec3<u32>(97347u, 0u, 111809u) % vec3<u32>(32u)))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(-1798f < global1[_wgslsmith_index_u32(1u, 22u)], u_input.a <= u_input.a, any(vec4<bool>(false, true, true, false)))))).x);
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(~1u, 30600u, _wgslsmith_mult_u32(1u, firstLeadingBit(~15792u))), ~vec3<u32>(select(1u, 4294967295u, true), 1u, ~1u) | vec3<u32>(_wgslsmith_div_u32(1u, ~26789u), firstLeadingBit(_wgslsmith_mult_u32(0u, 31708u)), _wgslsmith_div_u32(0u, ~9369u)));
    let var_3 = Struct_1(countOneBits(abs(select(select(var_2.yx, var_2.yx, vec2<bool>(true, false)), var_2.xz, vec2<bool>(false, true)))), false);
    let var_4 = _wgslsmith_f_op_f32(max(307f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(45913u, 22u)], var_1.x)))));
    let var_5 = reverseBits(~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(0u, 22u)], vec3<u32>(~var_2.x, var_2.x, _wgslsmith_clamp_u32(abs(var_3.a.x), 56841u >> (_wgslsmith_div_u32(var_5, var_2.x) % 32u), var_2.x)));
}

