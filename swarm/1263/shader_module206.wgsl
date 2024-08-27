struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-328f, -167f, 648f), vec3<f32>(-1133f, 803f, -184f), vec3<f32>(603f, 934f, -794f), vec3<f32>(532f, 246f, -989f), vec3<f32>(206f, 339f, -2030f), vec3<f32>(872f, -650f, -1655f), vec3<f32>(-793f, 115f, -1126f), vec3<f32>(1000f, 600f, 1000f), vec3<f32>(1000f, 984f, 1000f), vec3<f32>(549f, -1534f, 720f), vec3<f32>(-286f, 567f, -372f), vec3<f32>(-404f, -387f, -999f), vec3<f32>(-1516f, 332f, 336f), vec3<f32>(287f, -1000f, 290f), vec3<f32>(-668f, 738f, 426f), vec3<f32>(-1119f, -1260f, 190f));

var<private> global1: Struct_3 = Struct_3(false, true, 2147483647i, vec4<u32>(32488u, 13902u, 8212u, 1u));

var<private> global2: array<i32, 13>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = !(!(!select(select(vec3<bool>(true, global1.a, true), vec3<bool>(true, true, global1.b), vec3<bool>(false, false, arg_0.b)), vec3<bool>(global1.a, global1.b, global1.a), true)));
    var var_1 = u_input.c << (vec2<u32>(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(arg_0.d.xx, global1.d.xz)), arg_0.d.x), ~9807u) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1814f - -399f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -360f))), any(!select(vec3<bool>(var_0.x, arg_0.b, false), vec3<bool>(global1.b, false, true), false)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-814f - -1000f), _wgslsmith_f_op_f32(round(1238f))))), select(!var_0.xz, !vec2<bool>(any(vec4<bool>(true, global1.b, arg_0.a, global1.b)), true), arg_0.a), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.d.x, ~(global1.d.x ^ global1.d.x), _wgslsmith_mult_u32(~30118u, global1.d.x)), global1.d.wxw), _wgslsmith_add_i32(1i, firstLeadingBit(-_wgslsmith_sub_i32(0i, 1i))));
    var var_4 = vec3<bool>(!global1.a, any(vec2<bool>(false, arg_0.a)), any(select(vec2<bool>(!var_3.b.x, any(vec4<bool>(arg_0.a, global1.a, var_0.x, var_3.b.x))), vec2<bool>(true, var_3.c.x < global1.d.x), vec2<bool>(var_0.x & arg_0.a, true))));
    return ~1u;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    var var_0 = arg_0.c;
    var var_1 = arg_2.x;
    let var_2 = select(-u_input.b, select(-vec3<i32>(global2[_wgslsmith_index_u32(0u, 13u)], 4043i, -1053i), -u_input.a.zwx, true) << (global1.d.yxz % vec3<u32>(32u)), all(vec3<bool>(false, !(!global1.b), (var_0.c.x | 1u) == ~0u)));
    var var_3 = Struct_3(false, arg_0.a.x, 1i, _wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.c.x | ~var_0.c.x, select(1u, 34631u, global1.a), func_3(Struct_3(var_0.b.x, var_0.b.x, u_input.c.x, arg_0.b.c)), reverseBits(arg_0.c.c.x)), _wgslsmith_div_vec4_u32(arg_0.b.c, _wgslsmith_mult_vec4_u32(arg_0.b.c | global1.d, countOneBits(global1.d)))));
    var var_4 = !(!vec4<bool>(false, any(!arg_2), !global1.b, false));
    return 1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    global2 = array<i32, 13>();
    var var_0 = Struct_1(arg_3.zz, select(vec2<bool>(true, arg_0.x >= min(arg_0.x, -1i)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), !vec2<bool>(global1.a, true), select(vec2<bool>(true, global1.b), vec2<bool>(false, global1.b), vec2<bool>(true, false))), select(select(vec2<bool>(false, global1.a), vec2<bool>(global1.a, true), vec2<bool>(global1.a, global1.a)), vec2<bool>(true, true), true), vec2<bool>(global1.b, !global1.b)), any(vec2<bool>(!global1.a, any(vec2<bool>(false, true))))), global1.d.zwx, ~(-1i));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -531f) * vec2<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(133f + -296f) - -1015f))), var_0.b, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(20981u, 21602u), 1u | _wgslsmith_add_u32(4294967295u, global1.d.x), _wgslsmith_mult_u32(var_0.c.x >> (16833u % 32u), countOneBits(global1.d.x))), global1.d.zzw), 0i);
    let var_1 = Struct_3(var_0.b.x, true, ~(i32(-1i) * -1i), global1.d);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2, 529f))) + _wgslsmith_f_op_vec2_f32(select(arg_3.xy, _wgslsmith_f_op_vec2_f32(-var_0.a), select(var_0.b, var_0.b, false))))), !(!vec2<bool>(false, global1.b)), ~vec3<u32>(var_1.d.x, min(func_3(Struct_3(var_1.b, true, -49055i, var_1.d)), var_1.d.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(31136u, 58831u, 1u), func_3(Struct_3(var_0.b.x, false, arg_0.x, vec4<u32>(0u, var_0.c.x, global1.d.x, var_0.c.x))))), ~arg_1);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) - _wgslsmith_div_f32(arg_3.x, var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) - _wgslsmith_f_op_f32(-arg_2))), vec2<bool>(global1.b, (i32(-1i) * -var_1.c) == abs(~arg_1)), countOneBits(var_1.d.wyz), -(~(_wgslsmith_dot_vec2_i32(arg_0.wx, vec2<i32>(var_0.d, var_0.d)) ^ ~11171i)));
}

fn func_1() -> f32 {
    let var_0 = Struct_4(!vec2<bool>(_wgslsmith_mod_u32(1u, 1u) != ~global1.d.x, false), Struct_2(global1.b, func_4(~_wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global1.d.x, 13u)], -43627i, global2[_wgslsmith_index_u32(global1.d.x, 13u)], global2[_wgslsmith_index_u32(131873u, 13u)]), vec4<i32>(0i, u_input.c.x, -14492i, global1.c)), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.d.x, 76675u), 13u)], func_2(Struct_4(vec2<bool>(false, global1.b), Struct_2(global1.a, Struct_1(vec2<f32>(-535f, 1440f), vec2<bool>(global1.b, global1.b), global1.d.wwx, u_input.c.x), global1.d), Struct_1(vec2<f32>(-687f, -1000f), vec2<bool>(false, global1.a), global1.d.zww, u_input.c.x)), Struct_1(vec2<f32>(-921f, -1686f), vec2<bool>(global1.b, false), vec3<u32>(global1.d.x, 32514u, global1.d.x), -1i), vec3<bool>(global1.b, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(global1.d.x, 16u)]))))), firstLeadingBit(global1.d)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(1187f - -136f)) * vec2<f32>(-290f, 1549f)), vec2<bool>(global1.a, true), ~global1.d.wwz, 0i));
    let var_1 = 0u ^ (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~var_0.c.c.xz, ~vec2<u32>(0u, global1.d.x)), ~min(global1.d.xx, vec2<u32>(4294967295u, var_0.c.c.x))) | func_4(min(u_input.a, u_input.a) ^ -u_input.a, ~(~global2[_wgslsmith_index_u32(global1.d.x, 13u)]), var_0.b.b.a.x, global0[_wgslsmith_index_u32(~45247u, 16u)]).c.x);
    var var_2 = func_2(Struct_4(select(!var_0.c.b, vec2<bool>(var_0.a.x, false), !var_0.b.b.b), var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.b.b.a, var_0.b.b.a, var_0.b.b.b.x)), select(vec2<bool>(global1.b, true), var_0.c.b, var_0.b.b.b), var_0.b.c.xyy, ~global2[_wgslsmith_index_u32(0u, 13u)])), func_4(u_input.a >> (~global1.d % vec4<u32>(32u)), global2[_wgslsmith_index_u32(var_1, 13u)], var_0.b.b.a.x, global0[_wgslsmith_index_u32(~34858u, 16u)]), select(select(vec3<bool>(var_0.b.a, var_0.a.x, false), !vec3<bool>(false, false, var_0.c.b.x), vec3<bool>(true, true, true)), !(!vec3<bool>(true, var_0.c.b.x, true)), true)) ^ global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(firstLeadingBit(global1.d.x >> (23331u % 32u)), ~var_1), _wgslsmith_dot_vec4_u32(abs(var_0.b.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.d.x, 27283u, 0u, var_1), vec4<u32>(global1.d.x, 1u, var_0.c.c.x, global1.d.x), var_0.b.c)) & _wgslsmith_dot_vec2_u32(global1.d.zy, global1.d.xw)), 13u)];
    let var_3 = var_0.b;
    var var_4 = Struct_1(var_3.b.a, vec2<bool>(var_0.b.a, true), _wgslsmith_mult_vec3_u32(~vec3<u32>(global1.d.x ^ var_3.c.x, global1.d.x, 1u), min(~(vec3<u32>(global1.d.x, global1.d.x, 43783u) ^ vec3<u32>(4294967295u, var_3.c.x, var_3.c.x)), ~vec3<u32>(var_1, 1u, var_1))), var_0.c.d);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1979f)), _wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.a.x) + _wgslsmith_f_op_f32(-var_0.b.b.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 16>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1584f);
    let var_1 = ~(-countOneBits(u_input.b | vec3<i32>(u_input.a.x, -1i, 34806i)));
    var var_2 = _wgslsmith_f_op_f32(sign(-1000f));
    global0 = array<vec3<f32>, 16>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1316f))) + _wgslsmith_f_op_f32(func_1()));
    global1 = Struct_3(all(!(!select(vec4<bool>(global1.b, true, global1.a, global1.b), vec4<bool>(false, global1.b, true, global1.a), global1.a))), all(vec4<bool>(global1.b, func_4(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(global1.d.x, 13u)], u_input.b.x, -19937i), -376f, _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(46858u, 16u)]))).b.x, (1u >= global1.d.x) | any(vec2<bool>(false, global1.a)), 81454u == global1.d.x)), abs(_wgslsmith_mod_i32(u_input.c.x, -2147483647i)), ~countOneBits(vec4<u32>(1u, reverseBits(1u), global1.d.x, ~50591u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1289f, -348f) + vec2<f32>(-476f, 446f))), vec2<f32>(-491f, -1592f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-135f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-177f, -663f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1232f, -1000f)) * vec2<f32>(-568f, 198f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-411f, -344f) + 646f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1000f)), -461f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~54141u), min(_wgslsmith_dot_vec3_u32(global1.d.zxx, global1.d.xwx) & 4294967295u, _wgslsmith_clamp_u32(1u, 1u, abs(16971u)))));
}

