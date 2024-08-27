struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_add_u32(reverseBits(countOneBits(22911u)), u_input.a.x), ~18035u);
    global1 = array<Struct_1, 3>();
    let var_1 = max(vec4<i32>(-1i, select(max(0i, arg_0.x), _wgslsmith_mod_i32(arg_0.x, arg_0.x), _wgslsmith_sub_i32(arg_0.x, u_input.b) < abs(-2147483647i)), ~abs(-1i), u_input.b), -abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(28191i, -1i, 2147483647i, -1i), vec4<i32>(0i, u_input.b, u_input.b, -72056i))));
    global0 = array<Struct_3, 7>();
    let var_2 = arg_2;
    return arg_1.zwx;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_2(arg_1, global1[_wgslsmith_index_u32(37643u, 3u)], Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_div_f32(1287f, arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -160f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 142f, arg_2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 * vec3<f32>(1068f, arg_2.x, 1000f)))), arg_2.x, _wgslsmith_f_op_f32(-864f - 1000f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.zy + arg_2.xy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-244f, 402f) * _wgslsmith_f_op_vec2_f32(-arg_2.yz)))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, 331f)), arg_2, 1945f, _wgslsmith_f_op_f32(max(-1256f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x) * _wgslsmith_f_op_f32(arg_2.x + arg_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-579f, 633f)), -1000f)));
    var var_1 = Struct_3(Struct_2(vec2<i32>(1i, -firstLeadingBit(-1i)), var_0.d, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_1(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 * vec3<f32>(arg_2.x, -121f, var_0.d.b.x))), -1118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.x) + -1264f), vec2<f32>(-1445f, _wgslsmith_f_op_f32(176f - var_0.d.c)))), vec3<bool>(false, arg_0, all(func_3(vec3<i32>(0i, 52729i, -2147483647i), vec4<bool>(arg_0, false, true, false), countOneBits(37301u)))), ~(~(~max(u_input.a.x, u_input.a.x))), arg_2.zz, arg_2);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2200f)), var_1.d.x, _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_vec3_f32(var_1.a.b.a * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, arg_2.x, _wgslsmith_f_op_f32(ceil(var_0.d.b.x))) + _wgslsmith_f_op_vec3_f32(select(var_0.c.a, _wgslsmith_f_op_vec3_f32(-var_0.d.b), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f) + _wgslsmith_f_op_f32(var_0.c.d + _wgslsmith_f_op_f32(abs(1711f)))), var_1.d.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(903f, 986f) + arg_2.xx))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, var_1.d.x) * _wgslsmith_div_vec2_f32(var_1.d, var_1.e.yy)))));
    let var_3 = true;
    global1 = array<Struct_1, 3>();
    return Struct_2(vec2<i32>(-2147483647i, ~(-32402i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a), _wgslsmith_f_op_vec3_f32(-var_1.a.c.a))), _wgslsmith_div_vec3_f32(vec3<f32>(-1171f, _wgslsmith_f_op_f32(sign(var_1.e.x)), var_2.e.x), _wgslsmith_f_op_vec3_f32(select(var_1.a.b.b, vec3<f32>(arg_2.x, 1913f, 941f), var_1.b))), -375f, _wgslsmith_f_op_f32(round(var_1.d.x)), _wgslsmith_f_op_vec2_f32(-arg_2.zy)), var_1.a.b, var_1.a.b);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_3(func_2(any(vec4<bool>(true, true, true, true)), vec2<i32>(-2147483647i, 25464i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(trunc(-1782f)), _wgslsmith_f_op_f32(step(451f, -1382f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(634f, -231f, 1000f))), vec3<bool>(true, true, false)))), !(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), 43912u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 131f) + vec2<f32>(1821f, -225f)) * _wgslsmith_div_vec2_f32(vec2<f32>(795f, 555f), vec2<f32>(-167f, -897f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-759f, 1000f))))) + vec2<f32>(-646f, 724f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-188f + 1333f)), 1009f)));
    global0 = array<Struct_3, 7>();
    return Struct_1(vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1900f)) + var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-861f)))), _wgslsmith_f_op_vec3_f32(func_2(all(var_0.b) & func_3(vec3<i32>(u_input.b, -37344i, u_input.b), vec4<bool>(var_0.b.x, true, var_0.b.x, true), 41014u).x, var_0.a.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.e * var_0.a.c.b), vec3<f32>(var_0.d.x, var_0.d.x, 401f)))).c.b * vec3<f32>(func_2(var_0.b.x, vec2<i32>(var_0.a.a.x, u_input.b), _wgslsmith_f_op_vec3_f32(-var_0.a.b.b)).c.e.x, var_0.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.d.x, var_0.d.x)))))), _wgslsmith_f_op_f32(step(1535f, func_2(all(var_0.b), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(var_0.c, 0u) % vec2<u32>(32u)), var_0.a.a), vec3<f32>(-1950f, _wgslsmith_f_op_f32(-var_0.a.b.e.x), _wgslsmith_f_op_f32(-var_0.e.x))).c.a.x)), _wgslsmith_div_f32(var_0.d.x, var_0.a.b.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(var_0.d)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-203f, -1084f) * vec2<f32>(var_0.a.b.a.x, var_0.a.d.c)), _wgslsmith_f_op_vec2_f32(var_0.e.yz - var_0.a.c.b.xx))) * vec2<f32>(var_0.a.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-282f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 1u, 4294967295u, 118489u)), u_input.a));
    global0 = array<Struct_3, 7>();
    let var_1 = Struct_2(vec2<i32>(-58673i, -2147483647i), func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 4294967295u), abs(75447u)), u_input.a.yww, vec3<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x & u_input.a.x)), ~(~(u_input.a.x ^ u_input.a.x))), func_1(firstLeadingBit(u_input.a.xyx), 4294967295u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-584f, 312f, 464f)) - vec3<f32>(-2182f, 1847f, 573f))), vec3<f32>(func_2(true, ~vec2<i32>(u_input.b, -2147483647i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-356f, 552f, 666f) - vec3<f32>(-3081f, 539f, 467f))).b.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-987f, -842f) + _wgslsmith_f_op_f32(trunc(-816f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-648f * -289f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1784f - 792f))), _wgslsmith_f_op_f32(1000f + func_2(true, vec2<i32>(-79759i, 16704i) & vec2<i32>(-75718i, u_input.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(554f, 1101f, 445f)))).c.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-945f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(503f, -982f), vec2<f32>(471f, 527f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1797f, -652f))), vec2<bool>(true, true)))));
    var var_2 = global0[_wgslsmith_index_u32(27617u, 7u)];
    var_0 = reverseBits(reverseBits(~(~4133u)));
    var var_3 = Struct_3(func_2(any(select(!var_2.b, func_3(vec3<i32>(var_2.a.a.x, var_2.a.a.x, 1i), vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true), 59637u), select(var_2.b, var_2.b, false))), _wgslsmith_sub_vec2_i32(var_1.a, vec2<i32>(u_input.b, i32(-1i) * -10362i)), var_2.a.d.b), !vec3<bool>(select(false, true, all(vec3<bool>(false, var_2.b.x, false))), false, true), ~firstLeadingBit(u_input.a.x), func_2(false, -abs(vec2<i32>(var_2.a.a.x, -19327i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-444f, -1205f, var_1.b.a.x))).d.a.zy, var_1.b.a);
    var var_4 = (((~var_2.a.a.x & abs(1i)) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_3.c, var_3.c, 91126u), vec4<u32>(var_3.c, 49519u, 60771u, 0u)) ^ ~var_3.c) % 32u)) | -8568i) < var_2.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a.x, select(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(-1i, u_input.b, var_2.a.a.x), vec3<i32>(var_3.a.a.x, -47271i, 0i)), vec3<i32>(var_1.a.x, 0i, 62197i) << (u_input.a.xyw % vec3<u32>(32u))), abs(vec3<i32>(1i, 0i, u_input.b) >> (u_input.a.xww % vec3<u32>(32u))), vec3<i32>(0i, u_input.b, var_1.a.x) >> ((vec3<u32>(1u, 23128u, 1u) << (vec3<u32>(868u, 0u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))), select(vec3<i32>(firstLeadingBit(-8562i), var_1.a.x, min(var_2.a.a.x, var_1.a.x)), vec3<i32>(0i, ~(-26003i), 1i), !(!vec3<bool>(true, var_2.b.x, var_2.b.x))), func_3(vec3<i32>(abs(var_2.a.a.x), 1i, ~u_input.b), !vec4<bool>(var_2.b.x, true, var_3.b.x, false), max(countOneBits(34066u), abs(58828u))).x));
}

