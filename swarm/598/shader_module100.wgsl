struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = vec3<bool>(false || arg_0.x, true, select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1574f), _wgslsmith_f_op_f32(abs(arg_1.a.b.x))) >= arg_1.a.d, !arg_0.x, !arg_0.x));
    var_0 = vec3<bool>(true || arg_2, var_0.x, arg_0.x);
    var var_1 = !vec4<bool>(true, true & all(select(var_0.zy, vec2<bool>(true, true), vec2<bool>(false, var_0.x))), arg_0.x, !(!any(vec4<bool>(var_0.x, true, arg_2, var_0.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.d))));
    var var_3 = Struct_1(vec3<u32>(~25149u, arg_1.a.a.x, ~arg_1.a.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d.e.zww), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.e.x, -1000f, -153f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.d.b + arg_1.a.b)))), _wgslsmith_mult_vec4_i32(abs(abs(arg_1.b.c & arg_1.d.c)), vec4<i32>(11504i, _wgslsmith_div_i32(1i, 43154i), u_input.c, (i32(-1i) * -33370i) >> ((0u | arg_1.a.a.x) % 32u))), arg_1.b.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a.e - vec4<f32>(-1080f, arg_1.b.d, 616f, 158f)) + _wgslsmith_f_op_vec4_f32(ceil(arg_1.d.e))))));
    return true;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = !(func_3(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_2(Struct_1(vec3<u32>(0u, 36957u, 0u), arg_0.ywx, vec4<i32>(39571i, -9025i, 1i, 10352i), arg_0.x, vec4<f32>(arg_0.x, 932f, -148f, arg_0.x)), Struct_1(vec3<u32>(4294967295u, 31672u, 4590u), arg_0.yww, vec4<i32>(-1i, u_input.c, -3637i, 20743i), arg_0.x, vec4<f32>(-1264f, arg_0.x, -172f, -2532f)), vec3<i32>(u_input.b.x, u_input.c, -1i) | u_input.b, Struct_1(vec3<u32>(52625u, 1u, 0u), arg_0.xyz, vec4<i32>(-2147483647i, u_input.a.x, u_input.c, u_input.c), -341f, arg_0), u_input.c << (0u % 32u)), true) && false);
    let var_1 = true && func_3(vec2<bool>(true, any(vec3<bool>(var_0, false, var_0))), Struct_2(Struct_1(~vec3<u32>(0u, 29151u, 4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1441f, 345f) + arg_0.zxx), -vec4<i32>(u_input.a.x, -1i, u_input.c, u_input.b.x), _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(450f, -280f, -664f, arg_0.x))), Struct_1(vec3<u32>(1u, 20908u, 109011u), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -1102f) - arg_0.wwz), vec4<i32>(u_input.c, u_input.c, 44192i, -20934i), arg_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1104f, arg_0.x, arg_0.x) - vec4<f32>(-1259f, -1000f, 535f, -1088f))), firstLeadingBit(-vec3<i32>(u_input.b.x, -12802i, u_input.a.x)), Struct_1(reverseBits(vec3<u32>(1u, 70840u, 26424u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-168f, arg_0.x, arg_0.x)), select(vec4<i32>(1i, u_input.a.x, 2147483647i, 51958i), vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, u_input.a.x), true), -507f, _wgslsmith_f_op_vec4_f32(-arg_0)), 22712i), var_0);
    let var_2 = !vec4<bool>(false, true != var_1, true, !any(!vec4<bool>(var_0, var_1, var_0, var_1)));
    let var_3 = u_input.c;
    let var_4 = Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(12086u, _wgslsmith_dot_vec4_u32(vec4<u32>(29489u, 0u, 139419u, 4294967295u), vec4<u32>(29714u, 48837u, 1u, 0u)), ~22656u), _wgslsmith_clamp_vec3_u32(max(firstLeadingBit(vec3<u32>(22176u, 38640u, 4294967295u)), ~vec3<u32>(1u, 31003u, 1u)), abs(vec3<u32>(28976u, 4294967295u, 1u)), ~vec3<u32>(1u, 1u, 1u))), arg_0.zzw, ~(~(~vec4<i32>(567i, u_input.b.x, u_input.a.x, u_input.c))), arg_0.x, arg_0);
    return Struct_1(max(reverseBits(var_4.a), var_4.a), var_4.e.zwz, vec4<i32>(firstLeadingBit(u_input.b.x), ~(-(var_3 << (var_4.a.x % 32u))), _wgslsmith_add_i32(reverseBits(u_input.a.x), ~_wgslsmith_clamp_i32(var_3, var_4.c.x, var_4.c.x)), -var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.x + arg_0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(arg_0, vec4<f32>(376f, -706f, -289f, var_4.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4.e.x, arg_0.x, var_4.b.x, var_4.d), var_4.e)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * -852f), -1345f, _wgslsmith_div_f32(arg_0.x, -1137f), _wgslsmith_f_op_f32(-1000f * arg_0.x)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    let var_0 = Struct_2(func_2(arg_1.e), func_2(_wgslsmith_f_op_vec4_f32(select(arg_1.e, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(228f, arg_1.b.x, -605f, arg_1.e.x) + arg_1.e), _wgslsmith_f_op_vec4_f32(exp2(arg_1.e))), arg_1.a.x < arg_1.a.x))), ~(~(-arg_2.xyx)), Struct_1(vec3<u32>(select(arg_1.a.x >> (1u % 32u), 14286u, true), ~15164u & arg_1.a.x, 0u), arg_1.e.xxw, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1183f)))), arg_1.e), _wgslsmith_dot_vec2_i32(abs(-_wgslsmith_div_vec2_i32(arg_1.c.zy, u_input.b.zx)), vec2<i32>(_wgslsmith_sub_i32(arg_0, _wgslsmith_clamp_i32(54021i, u_input.c, u_input.c)), 46181i | arg_2.x)));
    var var_1 = select(vec3<bool>(0i < ~func_2(vec4<f32>(-1000f, arg_1.e.x, arg_1.e.x, 564f)).c.x, true, true), vec3<bool>(true, true, !(-var_0.a.c.x >= ~var_0.e)), vec3<bool>(true, any(vec2<bool>(true, false)), true));
    var_1 = select(!vec3<bool>(all(vec4<bool>(false, var_1.x, var_1.x, true)), any(vec3<bool>(var_1.x, var_1.x, false)), true), select(vec3<bool>(any(vec3<bool>(var_1.x, true, var_1.x)) != var_1.x, var_1.x, true), select(!(!vec3<bool>(var_1.x, false, var_1.x)), vec3<bool>(true, var_1.x, var_1.x), var_1.x), select(any(vec2<bool>(false, var_1.x)) & (var_1.x && var_1.x), func_3(var_1.zx, var_0, func_3(var_1.zx, Struct_2(var_0.d, arg_1, arg_1.c.yxx, arg_1, 6732i), var_1.x)), !func_3(var_1.xz, Struct_2(var_0.b, var_0.d, arg_2.zxw, arg_1, arg_0), false))), !var_1.x);
    let var_2 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_1.c.x, -2147483647i, firstLeadingBit(abs(var_0.c.x)), arg_0)), select(arg_2, reverseBits(arg_1.c), var_1.x));
    var var_3 = !var_1.zz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(firstTrailingBit(~reverseBits(vec3<u32>(55156u, 13158u, 1u))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(296f, -1000f, 469f) - vec3<f32>(1228f, 316f, -814f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(293f, 784f, 891f)))))), firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(u_input.a.x, 5718i), -6270i, 0i, abs(29701i))), -400f, vec4<f32>(1125f, -394f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f + -1330f) - _wgslsmith_f_op_f32(func_1(u_input.a.x, Struct_1(vec3<u32>(1u, 0u, 36577u), vec3<f32>(-1161f, 844f, 475f), vec4<i32>(22300i, 0i, 2147483647i, u_input.b.x), -860f, vec4<f32>(1253f, 356f, 590f, -1329f)), vec4<i32>(u_input.b.x, u_input.a.x, u_input.c, 2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(814f, -186f) - 1000f))), func_2(vec4<f32>(_wgslsmith_f_op_f32(-691f + _wgslsmith_f_op_f32(f32(-1f) * -405f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-492f * -680f) + func_2(vec4<f32>(-1000f, 1169f, -414f, 365f)).e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-656f + 485f) * -670f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-640f + -503f), _wgslsmith_f_op_f32(abs(-662f)))))), ~(-(~(vec3<i32>(u_input.b.x, 29995i, 1i) & u_input.a))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(637f, 1138f, 649f, 727f) + vec4<f32>(-2795f, 147f, -1473f, -344f))) + func_2(vec4<f32>(2140f, -2380f, -881f, -3148f)).e)), _wgslsmith_dot_vec4_i32(~(~(vec4<i32>(2147483647i, u_input.b.x, u_input.a.x, 3280i) << (vec4<u32>(1u, 57572u, 0u, 20484u) % vec4<u32>(32u)))), ((vec4<i32>(1i, u_input.b.x, u_input.c, 1i) >> (vec4<u32>(74296u, 1u, 1u, 4294967295u) % vec4<u32>(32u))) ^ abs(vec4<i32>(-1i, u_input.a.x, u_input.c, u_input.c))) & -vec4<i32>(-52982i, u_input.b.x, u_input.c, u_input.a.x)));
    var var_1 = vec3<bool>(true, true, !all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))));
    var_0 = Struct_2(Struct_1(vec3<u32>(var_0.a.a.x, reverseBits(firstTrailingBit(42119u)), ~9193u), vec3<f32>(_wgslsmith_f_op_f32(func_1(0i, func_2(var_0.a.e), vec4<i32>(var_0.e, var_0.c.x, u_input.b.x, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.x) * _wgslsmith_f_op_f32(func_1(u_input.b.x, var_0.d, var_0.a.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.d), _wgslsmith_f_op_f32(abs(-678f)))), select(var_0.b.c, vec4<i32>(~12484i, var_0.c.x, var_0.a.c.x & u_input.b.x, -2147483647i), vec4<bool>(var_1.x, var_1.x, false, true)), -1410f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.d.d, -794f)), _wgslsmith_f_op_f32(-var_0.b.e.x), _wgslsmith_f_op_f32(max(var_0.d.d, -1517f)), -685f) * var_0.b.e)), Struct_1(vec3<u32>(_wgslsmith_sub_u32(var_0.a.a.x, 0u) << (select(5464u, 70053u, var_1.x) % 32u), 0u, ~var_0.d.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(658f, 2226f, var_1.x)), 1200f, _wgslsmith_f_op_f32(exp2(var_0.d.e.x)))), var_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - 200f), var_0.b.e), firstLeadingBit(-select(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.b.x), var_0.c), var_0.b.c.yxw ^ vec3<i32>(u_input.b.x, u_input.b.x, -14799i), false)), var_0.d, ~(~(2147483647i | u_input.b.x)));
    var_1 = !select(!select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), !vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x), select(!select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_1.x, false), var_1.x), vec3<bool>(true, func_3(var_1.zy, Struct_2(Struct_1(vec3<u32>(15070u, var_0.d.a.x, 10894u), vec3<f32>(var_0.d.d, var_0.b.d, var_0.a.e.x), vec4<i32>(-27446i, 1i, 2147483647i, var_0.c.x), -920f, var_0.a.e), var_0.d, vec3<i32>(u_input.c, u_input.a.x, u_input.c), var_0.d, 1i), var_1.x), true), var_1.x), true);
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.d, var_0.a.e.x, -1230f, -780f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~(~var_2.a.x), _wgslsmith_add_i32(0i, -1i), func_2(_wgslsmith_f_op_vec4_f32(-func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.e.x, -423f, 1530f, var_0.a.d), vec4<f32>(1756f, var_2.e.x, var_0.b.d, var_2.e.x)))).e)).d);
}

