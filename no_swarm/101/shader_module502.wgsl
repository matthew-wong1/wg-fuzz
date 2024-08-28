struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(3362u, 4294967295u, 64967u), vec3<u32>(4294967295u, 37738u, 89365u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 9283u, 4294967295u), vec3<u32>(30030u, 11987u, 15616u), vec3<u32>(4294967295u, 5739u, 46498u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 29828u, 4294967295u), vec3<u32>(4294967295u, 35718u, 4294967295u), vec3<u32>(40579u, 15269u, 19944u), vec3<u32>(1u, 0u, 96008u), vec3<u32>(83647u, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, 26739u), vec3<u32>(9762u, 41269u, 52673u), vec3<u32>(1u, 76091u, 4294967295u), vec3<u32>(87969u, 67723u, 72884u), vec3<u32>(5527u, 1u, 4294967295u), vec3<u32>(28532u, 4294967295u, 34317u), vec3<u32>(2920u, 50338u, 23184u), vec3<u32>(0u, 0u, 1578u), vec3<u32>(0u, 4294967295u, 31758u), vec3<u32>(0u, 1u, 7630u), vec3<u32>(54371u, 32373u, 27468u), vec3<u32>(56616u, 8527u, 26516u), vec3<u32>(26153u, 0u, 2798u), vec3<u32>(1u, 16819u, 26382u), vec3<u32>(28736u, 57623u, 76931u), vec3<u32>(4294967295u, 82417u, 4294967295u), vec3<u32>(18132u, 4294967295u, 10346u), vec3<u32>(1u, 50924u, 4294967295u), vec3<u32>(12580u, 79183u, 36998u));

var<private> global2: Struct_3 = Struct_3(235f, true, true, Struct_2(vec2<i32>(2147483647i, -29091i), vec2<i32>(0i, i32(-2147483648)), -1000f, Struct_1(921f, 578f, 1109f, 244f, vec2<u32>(1u, 53190u)), Struct_1(675f, 612f, -964f, -1396f, vec2<u32>(197u, 4294967295u))));

var<private> global3: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> f32 {
    global2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1996f)) + 1f), all(!(!(!vec3<bool>(global2.b, false, true)))), global2.b, Struct_2(global2.d.a, -select(max(global2.d.a, global2.d.b), ~vec2<i32>(global2.d.b.x, global2.d.a.x), !vec2<bool>(false, global2.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(335f + 2217f))), global2.d.d, global2.d.d));
    global1 = array<vec3<u32>, 31>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(global3.c)), !all(vec2<bool>(global2.b, global2.b)) || (reverseBits(global2.d.a.x) > _wgslsmith_mod_i32(~0i, _wgslsmith_sub_i32(global2.d.b.x, global2.d.b.x))), !(~(u_input.a & 75644u) < ~1u), Struct_2(_wgslsmith_div_vec2_i32(~_wgslsmith_div_vec2_i32(global2.d.b, global2.d.a), global2.d.a ^ (vec2<i32>(global2.d.a.x, global2.d.b.x) >> (vec2<u32>(4294967295u, 37417u) % vec2<u32>(32u)))), _wgslsmith_div_vec2_i32(global2.d.b, (global2.d.b >> (vec2<u32>(global3.e.x, 1u) % vec2<u32>(32u))) << (global2.d.d.e % vec2<u32>(32u))), _wgslsmith_f_op_f32(-global2.d.c), global2.d.d, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-219f, -983f) - _wgslsmith_f_op_f32(abs(1044f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a * global2.a), _wgslsmith_f_op_f32(-757f * -165f)), global2.d.e.a, global2.d.e.e)));
    global2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a))), !(!all(vec3<bool>(true, true, true)) || true), all(vec3<bool>(false && var_0.b, var_0.c, global2.a < -1000f)) | (!all(vec2<bool>(global2.b, true)) && false), Struct_2(~global2.d.a, global2.d.a, 424f, global2.d.d, var_0.d.e));
    var var_1 = countOneBits(var_0.d.d.e.x);
    return 580f;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global3.c, global3.d)))), _wgslsmith_f_op_f32(global3.c + -1442f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1801f, 793f, -751f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(851f, global3.a, global3.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(515f, global2.a, -1612f))), vec3<bool>(false & global2.c, true, !global2.c))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(exp2(global3.d)), 1290f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, global3.d, 859f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * 577f), global2.d.c, !global2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.d.c) * global3.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(792f)) * _wgslsmith_f_op_f32(f32(-1f) * -443f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), -1074f))), vec3<bool>(true, !(!global2.b), true)));
    let var_2 = global2.d.a.x | global2.d.b.x;
    global3 = global2.d.d;
    var var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(min(vec4<i32>(1i, var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2, global2.d.b.x), vec3<i32>(global2.d.a.x, 2147483647i, 61374i)), abs(var_2)), ~(vec4<i32>(var_2, var_2, 0i, var_2) << (vec4<u32>(global2.d.e.e.x, global2.d.d.e.x, 1u, u_input.a) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_div_i32(69977i, global2.d.a.x) >> (global3.e.x % 32u), 33386i, var_2, var_2)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, reverseBits(global2.d.b.x), global2.d.b.x, _wgslsmith_sub_i32(16934i, var_2) << (select(global2.d.d.e.x, 1u, global2.b) % 32u)), vec4<i32>(-19885i << (0u % 32u), 0i, i32(-1i) * -47195i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(global2.d.b.x, global2.d.b.x), abs(global2.d.a.x)))));
    return global2.d.e.e.x;
}

fn func_1() -> u32 {
    let var_0 = ~(~global3.e & _wgslsmith_add_vec2_u32(reverseBits(global2.d.e.e) << (~vec2<u32>(0u, 17374u) % vec2<u32>(32u)), firstLeadingBit(global2.d.d.e ^ vec2<u32>(864u, 0u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 221f, global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(267f * _wgslsmith_f_op_f32(-global2.d.e.b)))), vec2<u32>(10117u, select(~1u, func_2(), false & !global2.b)));
    let var_2 = global2.d;
    let var_3 = !all(select(select(vec3<bool>(global2.c, true, global2.b), vec3<bool>(global2.c, true, true), !vec3<bool>(false, false, global2.c)), vec3<bool>(true, true, true), true));
    var var_4 = global2.d.b.x;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(global3.e.x, global3.e.x);
    global0 = ~func_1() ^ u_input.a;
    var var_1 = Struct_3(1000f, all(select(!(!vec3<bool>(true, global2.c, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, global2.c), vec3<bool>(false, false, global2.b)), !vec3<bool>(global2.c, false, true), any(vec3<bool>(true, global2.c, global2.c))), vec3<bool>(false, true, false))), _wgslsmith_mod_i32(-global2.d.a.x, 12912i) < global2.d.b.x, Struct_2(vec2<i32>(global2.d.b.x, _wgslsmith_dot_vec2_i32(global2.d.b, vec2<i32>(-21212i, 30052i))) << (vec2<u32>(22613u, 62522u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global2.d.b.x), global2.d.b | global2.d.b), -2187f, global2.d.d, Struct_1(_wgslsmith_div_f32(global2.d.c, -1468f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global3.c, 1082f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(737f - 701f), -482f, all(vec4<bool>(global2.b, global2.b, true, global2.b)))), _wgslsmith_f_op_f32(-1397f + _wgslsmith_f_op_f32(floor(global3.a))), vec2<u32>(max(1u, 0u), global2.d.d.e.x ^ global3.e.x))));
    var_1 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), false, var_1.c, Struct_2(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-6317i, var_1.d.b.x, global2.d.a.x, global2.d.a.x), vec4<i32>(global2.d.a.x, -2147483647i, global2.d.b.x, -6575i)), global2.d.b.x << (1u % 32u)), -global2.d.b, -711f, global2.d.e, var_1.d.d));
    let var_2 = global2.d;
    let var_3 = vec4<i32>(33556i, global2.d.a.x, global2.d.a.x, reverseBits(var_1.d.a.x)) ^ -(~_wgslsmith_mult_vec4_i32(vec4<i32>(16621i, global2.d.b.x, 0i, var_2.b.x) << (vec4<u32>(4294967295u, global3.e.x, 53907u, 0u) % vec4<u32>(32u)), vec4<i32>(var_2.a.x, var_2.b.x, 4967i, 8216i)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, var_1.d.a.x, global2.d.b.x) & vec3<i32>(11053i, var_2.a.x, -25927i), select(var_3.yzw, var_3.xyx, global2.b)), _wgslsmith_add_i32(1i, -1i), reverseBits(abs(-28806i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a - 1000f)));
}

