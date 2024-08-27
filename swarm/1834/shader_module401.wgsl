struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(2147483647i, -1i, 4646i), vec3<i32>(5326i, 1i, i32(-2147483648)));

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<vec2<f32>, 18>;

var<private> global3: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_5) -> vec4<u32> {
    let var_0 = abs(-vec4<i32>(i32(-1i) * -2147483647i, ~(u_input.c.x & 0i), global3.x, u_input.c.x));
    var var_1 = arg_3;
    var var_2 = (var_0.x | 37130i) ^ _wgslsmith_mult_i32(abs(-reverseBits(var_1.b.c)), var_0.x);
    var var_3 = Struct_4(arg_3.a.a, Struct_1(any(vec4<bool>(!arg_3.b.a, true, true, arg_3.a.b.x > -669f)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2455f * arg_3.a.b.x), arg_3.a.b.x), 708f), global3.x), countOneBits(u_input.c.zy), arg_1);
    global3 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_3.b.c, -min(-1382i, 2147483647i)), abs(select(15806i, global3.x, arg_3.a.a))), select(-max(2147483647i, var_1.b.c), var_0.x, any(select(vec4<bool>(arg_3.b.a, var_3.a, var_1.b.a, var_3.a), vec4<bool>(var_1.b.a, false, true, var_3.b.a), arg_3.a.a))) << (_wgslsmith_dot_vec3_u32(~(arg_0 & u_input.a), max(vec3<u32>(52359u, arg_2, u_input.b.x), vec3<u32>(arg_0.x, arg_0.x, u_input.a.x)) >> ((arg_0 ^ arg_0) % vec3<u32>(32u))) % 32u));
    return vec4<u32>(abs(firstLeadingBit(u_input.a.x)), ~(~max(1u, arg_0.x)), ~abs(reverseBits(u_input.b.x)), _wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(~1u, (u_input.a.x >> (47133u % 32u)) & 44676u)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1313f, _wgslsmith_f_op_f32(round(arg_0)), -187f, _wgslsmith_f_op_f32(trunc(arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1418f, 1000f, 1565f, 1066f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 241f, 381f, 233f)))), vec4<bool>(true, true, true, true))))));
    global2 = array<vec2<f32>, 18>();
    global1 = array<Struct_1, 17>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(165f, 293f))), -185f, _wgslsmith_f_op_f32(-367f + _wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 397f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1171f + arg_0))))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-302f - -1005f), func_3(vec3<u32>(arg_0.x, 20694u, arg_0.x), Struct_3(Struct_2(vec4<f32>(891f, -205f, 178f, 226f)), Struct_2(vec4<f32>(1755f, -220f, 1000f, 285f))), 40875u, Struct_5(global1[_wgslsmith_index_u32(52253u, 17u)], global1[_wgslsmith_index_u32(59648u, 17u)])), -1i)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1088f + -1334f)), _wgslsmith_f_op_f32(select(-1404f, _wgslsmith_f_op_f32(-1000f - -1100f), true)), 254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(380f - -2693f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f * -1115f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1569f, -1371f)), -1144f)));
    var var_1 = global1[_wgslsmith_index_u32(~func_3(abs(u_input.a), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -545f, var_0.x, 375f)))), Struct_2(vec4<f32>(-1175f, 508f, -859f, 814f))), arg_0.x, Struct_5(global1[_wgslsmith_index_u32(countOneBits(~u_input.a.x), 17u)], global1[_wgslsmith_index_u32(arg_0.x, 17u)])).x, 17u)];
    var var_2 = 19122u;
    var var_3 = Struct_5(global1[_wgslsmith_index_u32(25890u, 17u)], Struct_1(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.b)))), u_input.c.x));
    global3 = firstLeadingBit(u_input.c.zx & _wgslsmith_sub_vec2_i32(u_input.c.xy, u_input.c.zx));
    return var_3.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<u32>) -> Struct_4 {
    var var_0 = ~(~vec4<u32>(max(reverseBits(0u), ~arg_2.x), arg_3.x | _wgslsmith_sub_u32(arg_3.x, 1u), ~arg_2.x, u_input.b.x ^ 26317u));
    return Struct_4(true, func_2(~(arg_2 ^ _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 22002u), vec2<u32>(1u, var_0.x)))), ~_wgslsmith_mult_vec2_i32(min(u_input.c.yz, arg_0), vec2<i32>(select(-1i, 1i, true), global3.x)), Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), 2007f, _wgslsmith_f_op_f32(f32(-1f) * -400f), 718f)), Struct_2(arg_1.a)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> f32 {
    global2 = array<vec2<f32>, 18>();
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.a.ww), vec2<f32>(-954f, arg_0.d.b.a.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(280f, arg_1.a.a.x), vec2<f32>(arg_1.a.a.x, arg_1.b.a.x))), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(0u, 18u)]))))))));
    var_0 = arg_0.b.b;
    global3 = u_input.c.xz;
    var var_1 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-1475f + var_0.x));
    return _wgslsmith_f_op_f32(step(var_0.x, -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 17>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(298f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(u_input.c.yy, Struct_2(vec4<f32>(765f, 625f, 1251f, 661f)), u_input.b, vec3<u32>(u_input.a.x, 0u, u_input.a.x)), Struct_3(Struct_2(vec4<f32>(-571f, -1069f, -386f, -120f)), Struct_2(vec4<f32>(554f, -1451f, 769f, 916f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-403f, -273f, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(2566f)))))), all(vec3<bool>(true, true, true)))), 600f, 1339f);
    global0 = array<vec3<i32>, 2>();
    let var_1 = vec4<i32>(35647i, abs(u_input.c.x) ^ -483i, -13024i, _wgslsmith_mod_i32(~global3.x, global3.x));
    var var_2 = var_1.zw;
    var var_3 = func_1(_wgslsmith_mod_vec2_i32(var_1.xz, var_1.zw), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-342f + 354f), -762f, -541f, var_0.x) * vec4<f32>(-198f, var_0.x, _wgslsmith_f_op_f32(-1480f - 956f), var_0.x))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(select(u_input.a.zy, u_input.a.zz, false), vec2<u32>(~u_input.b.x, ~0u)), _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 22282u), vec2<u32>(8149u, u_input.b.x)), vec2<u32>(u_input.b.x ^ 97297u, u_input.a.x ^ 1u))), ~reverseBits(u_input.a));
    var var_4 = Struct_5(Struct_1(!var_3.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_0.yx, _wgslsmith_f_op_vec2_f32(-var_0.yz), !vec2<bool>(var_3.a, var_3.b.a))))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.b.c, ~u_input.c.x, global3.x, global3.x << (34445u % 32u)), _wgslsmith_sub_vec4_i32(reverseBits(var_1), vec4<i32>(-32663i, var_2.x, u_input.c.x, var_3.c.x)))), Struct_1(func_1(u_input.c.yx, func_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, -20936i), var_1.zx), Struct_2(var_3.d.b.a), ~vec2<u32>(1u, 0u), vec3<u32>(1u, 26583u, 0u)).d.a, vec2<u32>(45778u << (u_input.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 12407u, 50564u, 4943u), vec4<u32>(4294967295u, 51499u, 15360u, u_input.b.x))), u_input.a).b.a, var_0.ww, _wgslsmith_mult_i32(~_wgslsmith_sub_i32(-11842i, var_1.x), _wgslsmith_dot_vec4_i32(-var_1, countOneBits(vec4<i32>(0i, global3.x, u_input.c.x, global3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mod_vec3_i32(-var_1.wxw, global0[_wgslsmith_index_u32(0u, 2u)]) | vec3<i32>(0i, 2147483647i, func_1(vec2<i32>(global3.x, var_3.b.c), Struct_2(vec4<f32>(-854f, var_0.x, var_0.x, -592f)), vec2<u32>(4294967295u, u_input.a.x), u_input.a).c.x)) | _wgslsmith_mult_vec3_i32(reverseBits(~var_1.xwx), -select(vec3<i32>(var_4.b.c, -25956i, var_4.a.c), vec3<i32>(u_input.c.x, 1i, var_4.b.c), true)), ~var_1, u_input.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(-1074f, 821f, true)), _wgslsmith_f_op_f32(var_0.x + -438f), _wgslsmith_f_op_f32(-var_3.d.a.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.b.b.x, var_3.b.b.x, 464f), var_0.wzx))))))));
}

