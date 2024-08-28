struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 12889u);

var<private> global1: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(-8126i, 2147483647i, -1i), vec3<i32>(19893i, 2147483647i, 11986i), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(i32(-2147483648), 214i, 7000i));

var<private> global2: vec4<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0.a.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(-418f, _wgslsmith_f_op_f32(-arg_3.a.a.x), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-293f)), _wgslsmith_f_op_f32(trunc(-278f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f)), _wgslsmith_div_f32(arg_0.b.b, arg_0.a.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.a.x), _wgslsmith_f_op_f32(-arg_0.b.a.x)))));
    let var_1 = 1u;
    let var_2 = vec2<bool>(any(vec2<bool>((arg_3.b.d.x != true) || (arg_0.b.d.x || false), !(arg_0.b.d.x == arg_3.b.d.x))), true);
    let var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(71420u, ~u_input.a), ~abs(9820u)), firstTrailingBit(vec2<u32>(1u, 1u)));
    global1 = array<vec3<i32>, 4>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-543f * var_0.x))) + arg_0.b.b);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(761f, 1275f, -373f, -651f), -548f, vec4<u32>(0u, 1u, global0.x, arg_1.x), vec2<bool>(arg_0, arg_0)), Struct_1(vec4<f32>(332f, 1304f, -1927f, 1984f), -167f, vec4<u32>(1u, 817u, u_input.a, global2.x), vec2<bool>(arg_0, arg_0))), 73841i, vec3<i32>(-17910i, u_input.c.x, 2147483647i), Struct_2(Struct_1(vec4<f32>(-364f, -334f, 1577f, -1303f), -1724f, vec4<u32>(global0.x, arg_1.x, 40824u, 1u), vec2<bool>(arg_0, false)), Struct_1(vec4<f32>(1055f, -359f, -331f, 1218f), -1479f, vec4<u32>(138319u, 65692u, u_input.a, 0u), vec2<bool>(arg_0, arg_0)))))), _wgslsmith_f_op_f32(trunc(-497f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-955f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1940f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-371f, -2099f))), select(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(75885u, 32843u, 65658u, 4294967295u), vec4<u32>(1u, 0u, 14148u, arg_1.x)), ~vec4<u32>(51166u, 1u, u_input.b, 42059u)), vec4<u32>(global2.x, 36691u, 32651u, 23545u) & ~vec4<u32>(arg_1.x, global0.x, global2.x, u_input.b), arg_0), vec2<bool>(arg_0, false || any(vec3<bool>(arg_0, arg_0, arg_0)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(926f)), _wgslsmith_f_op_f32(1167f - 316f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1032f, -967f)))), 325f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(210f, 580f) - -1200f)), _wgslsmith_f_op_f32(round(-437f)), ~countOneBits(select(vec4<u32>(u_input.a, arg_1.x, global0.x, arg_1.x), vec4<u32>(global0.x, global0.x, 9426u, u_input.b), arg_0)), vec2<bool>(any(!vec3<bool>(true, arg_0, false)), !arg_0)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.b, 1694f))), 1209f, _wgslsmith_f_op_f32(-var_0.a.b), var_0.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)) * _wgslsmith_f_op_f32(1168f + 486f)), ((~var_0.a.c | _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, global2.x, u_input.b, u_input.b), vec4<u32>(arg_1.x, 1u, global0.x, 8482u), var_0.b.c)) ^ max(vec4<u32>(28384u, u_input.b, arg_1.x, var_0.a.c.x) & var_0.a.c, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 1u, global0.x), var_0.a.c))) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(27644u, 41739u, 4294967295u, global2.x), vec4<u32>(0u, 1u, global0.x, u_input.a)), vec4<u32>(_wgslsmith_mod_u32(0u, var_0.b.c.x), ~19077u, ~1u, ~1u)) % vec4<u32>(32u)), var_0.a.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_0.b.a.xyx);
    let var_3 = true;
    var var_4 = vec2<bool>(false, firstTrailingBit(firstLeadingBit(~44623u)) <= (~0u >> (reverseBits(_wgslsmith_mult_u32(var_1.c.x, var_0.a.c.x)) % 32u)));
    return !select(vec3<bool>(!any(vec2<bool>(var_4.x, var_3)), arg_0, !var_0.b.d.x), vec3<bool>(false, true, arg_0), select(!(!vec3<bool>(true, var_4.x, var_0.a.d.x)), !select(vec3<bool>(var_3, var_1.d.x, true), vec3<bool>(arg_0, var_1.d.x, false), true), true));
}

fn func_1() -> Struct_2 {
    global0 = global2.wz;
    var var_0 = select(vec4<bool>(all(vec4<bool>(true, false, true, true)), true, !(u_input.b <= ~1u), false), vec4<bool>(false, all(func_2(all(vec3<bool>(false, false, false)), global2.yyx)), true, true), (global0.x >= _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global2.x, global0.x, 51305u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b, global0.x), vec4<u32>(global2.x, 1135u, 16147u, 18646u)))) == !(countOneBits(u_input.c.x) != _wgslsmith_mod_i32(u_input.c.x, -2147483647i)));
    global1 = array<vec3<i32>, 4>();
    global1 = array<vec3<i32>, 4>();
    let var_1 = !var_0.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-417f, -808f), -659f, _wgslsmith_f_op_f32(step(-1069f, -858f)), 702f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(687f, -225f, 1295f, -105f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(586f, -598f, -1409f, 604f), -375f, vec4<u32>(1u, 2643u, u_input.b, u_input.b), var_0.zx), Struct_1(vec4<f32>(-131f, 1219f, -151f, 1154f), -1019f, vec4<u32>(4294967295u, 34580u, global0.x, 101365u), var_0.wx)), u_input.c.x, u_input.c, Struct_2(Struct_1(vec4<f32>(-1590f, 972f, -1328f, 815f), 472f, vec4<u32>(u_input.b, 1u, u_input.b, 57535u), vec2<bool>(var_1, var_0.x)), Struct_1(vec4<f32>(-901f, 753f, 251f, -599f), 179f, vec4<u32>(u_input.a, 0u, 0u, global2.x), vec2<bool>(var_0.x, var_1))))), -891f))), select(countOneBits(vec4<u32>(global2.x, 57986u, global0.x, u_input.b)) << (vec4<u32>(u_input.b, 0u, 30967u, global2.x) % vec4<u32>(32u)), vec4<u32>(1u, 4294967295u, u_input.a, ~4294967295u), !select(vec4<bool>(var_1, false, var_1, true), vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_1))), var_0.ww), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-970f, 906f, _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(-108f, 1000f, 1506f, 773f), 312f, vec4<u32>(global0.x, 18363u, global2.x, global0.x), var_0.zy), Struct_1(vec4<f32>(967f, -1169f, 880f, 1756f), -1372f, vec4<u32>(4294967295u, 0u, global2.x, 12693u), vec2<bool>(false, var_0.x))), 8584i, vec3<i32>(u_input.c.x, u_input.c.x, -14121i), Struct_2(Struct_1(vec4<f32>(-423f, 1134f, -2062f, -215f), -1459f, vec4<u32>(1u, global0.x, 34421u, 55393u), vec2<bool>(true, true)), Struct_1(vec4<f32>(-658f, -1557f, 1000f, -377f), 132f, vec4<u32>(global0.x, 64287u, 2727u, 20054u), vec2<bool>(true, true)))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-599f * -309f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-201f, -1547f)))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(global0.x, 1u, u_input.b, global2.x), vec4<u32>(1u, global0.x, global0.x, 35003u)) << (~vec4<u32>(u_input.a, u_input.b, global0.x, global0.x) % vec4<u32>(32u)), vec4<u32>(global0.x, countOneBits(global0.x), ~u_input.a, global0.x), reverseBits(~vec4<u32>(68134u, global2.x, 0u, global2.x))), var_0.wz));
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-860f, 1050f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b.b, 181f))), vec2<f32>(arg_0.b.a.x, -1383f))))) + arg_0.b.a.wx);
    global1 = array<vec3<i32>, 4>();
    return arg_0.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1652f, -741f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1061f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-226f, 2412f, true)) * _wgslsmith_f_op_f32(step(730f, -608f)))), -851f))));
    var var_1 = 1u;
    var var_2 = Struct_1(vec4<f32>(-1112f, -1000f, 167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-757f, _wgslsmith_f_op_f32(step(-900f, -166f)))))), 314f, ~(~vec4<u32>(12980u, global2.x, 38420u, select(1u, global0.x, true))), !func_4(func_1()));
    global0 = func_1().b.c.zy;
    var_1 = 0u;
    global0 = ~firstTrailingBit(global2.ww);
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.c.x), reverseBits(~abs(~var_2.c)), _wgslsmith_sub_u32(~1u, ~(~(4294967295u | global0.x))));
}

