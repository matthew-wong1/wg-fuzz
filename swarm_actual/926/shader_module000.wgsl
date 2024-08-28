struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(25125u, 45333u);

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(2564f, -414f), vec2<f32>(-204f, 751f), vec2<f32>(-2102f, 334f), vec2<f32>(-1000f, 282f), vec2<f32>(1000f, 1000f), vec2<f32>(-2511f, 738f), vec2<f32>(476f, 565f), vec2<f32>(795f, -1396f), vec2<f32>(-609f, 515f), vec2<f32>(1534f, 134f), vec2<f32>(1000f, -122f), vec2<f32>(404f, 1172f), vec2<f32>(186f, -1189f), vec2<f32>(1000f, 1174f), vec2<f32>(803f, -934f), vec2<f32>(1797f, 2281f));

var<private> global3: array<bool, 15> = array<bool, 15>(false, false, false, false, true, false, false, false, false, false, false, false, true, true, true);

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>) -> bool {
    var var_0 = vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(0i >= u_input.c, any(vec3<bool>(true, false, false)), true | global3[_wgslsmith_index_u32(global0.x, 15u)], true), vec4<bool>(true, all(vec3<bool>(true, true, global3[_wgslsmith_index_u32(global0.x, 15u)])), true, true))), all(!select(vec2<bool>(global4.a.b.x, false), global4.a.b, all(global4.a.b))), any(!(!vec4<bool>(true, true, global3[_wgslsmith_index_u32(global4.a.a.x, 15u)], false))), global0.x > _wgslsmith_mod_u32(select(firstLeadingBit(global0.x), ~12966u, true || global3[_wgslsmith_index_u32(0u, 15u)]), global1.x));
    let var_1 = global4.a;
    var var_2 = _wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-172f))))));
    global4 = Struct_2(Struct_1(vec2<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 33591u, 71003u), arg_1)), ~1u), global4.a.b, vec2<i32>(u_input.b.x & max(u_input.b.x, u_input.c), reverseBits(firstTrailingBit(28190i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), 1000f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-472f, 1410f, global4.a.d, var_1.d)) * vec4<f32>(global4.a.d, var_1.d, -536f, 2284f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(409f, 618f, -210f, global4.a.d))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(341f, -524f, global4.a.d, 1340f) * vec4<f32>(-543f, global4.a.d, arg_0.x, -1439f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(-395f, global4.a.d, -1218f, global4.a.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1472f, global4.a.d, var_1.d) - vec4<f32>(229f, 1382f, arg_0.x, 1126f)))), !(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 15u)], var_0.x, true))))));
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = select(!select(!(!vec3<bool>(arg_2.b.x, arg_1.a.b.x, arg_1.a.b.x)), !select(vec3<bool>(arg_2.b.x, false, arg_0), vec3<bool>(arg_0, false, arg_2.b.x), arg_1.a.b.x), vec3<bool>(1u <= global0.x, true, arg_0)), select(vec3<bool>(true, !global4.a.b.x, false), vec3<bool>(arg_0, !global4.a.b.x | !arg_1.a.b.x, !(!arg_1.a.b.x)), vec3<bool>(false, !(!global3[_wgslsmith_index_u32(u_input.a.x, 15u)]), any(arg_2.b))), select(false, true, any(vec3<bool>(!arg_0, arg_2.b.x, func_3(vec3<f32>(arg_1.a.d, -841f, -533f), u_input.a)))));
    var var_1 = -1i;
    var var_2 = false & !all(vec4<bool>(!var_0.x, any(vec3<bool>(arg_0, global4.a.b.x, arg_0)), !global4.a.b.x, u_input.c <= 69171i));
    global1 = ~abs(~(u_input.a.zy << (vec2<u32>(u_input.a.x, arg_2.a.x) % vec2<u32>(32u))) & abs(abs(vec2<u32>(global1.x, 6526u))));
    let var_3 = arg_1;
    return global4.a.c;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global1 = u_input.a.xx;
    global3 = array<bool, 15>();
    global4 = arg_2;
    var var_0 = Struct_1(vec2<u32>(~firstTrailingBit(global1.x), 0u), select(!select(select(vec2<bool>(global4.a.b.x, global4.a.b.x), vec2<bool>(global4.a.b.x, arg_1), arg_2.a.b), arg_2.a.b, global4.a.b), !vec2<bool>(global3[_wgslsmith_index_u32(~0u, 15u)], global3[_wgslsmith_index_u32(max(u_input.a.x, arg_2.a.a.x), 15u)]), !all(vec3<bool>(arg_1, arg_1, global4.a.b.x)) && true), ~(select(max(arg_0, arg_0), u_input.b, vec2<bool>(false, arg_2.a.b.x)) << (global4.a.a % vec2<u32>(32u))), -933f);
    let var_1 = global4.a;
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_0.b.x;
    var var_1 = -vec4<i32>(1i, _wgslsmith_add_i32(u_input.c, -56343i), _wgslsmith_div_i32(-1i, reverseBits(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x))), ~2147483647i | global4.a.c.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(abs(-1212f))) + -1521f)));
    global4 = arg_2;
    let var_3 = vec4<bool>(any(vec3<bool>(!any(vec4<bool>(global4.a.b.x, arg_0.b.x, global4.a.b.x, arg_0.b.x)), global4.a.b.x, !arg_1.a.b.x)), !any(!(!vec4<bool>(true, arg_2.a.b.x, true, arg_1.a.b.x))), false & !all(select(vec3<bool>(arg_2.a.b.x, arg_2.a.b.x, arg_1.a.b.x), vec3<bool>(arg_1.a.b.x, arg_1.a.b.x, global3[_wgslsmith_index_u32(global4.a.a.x, 15u)]), arg_1.a.b.x)), true);
    return func_4(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a.c.x, arg_0.c.x), u_input.b) >> (vec2<u32>(u_input.a.x, 63247u) % vec2<u32>(32u))) & min(firstTrailingBit(~vec2<i32>(28865i, 28931i)), _wgslsmith_div_vec2_i32(global4.a.c, arg_2.a.c << (arg_2.a.a % vec2<u32>(32u)))), arg_1.a.b.x, arg_2);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = func_5(global4.a, func_4(func_2(!global3[_wgslsmith_index_u32(~63499u, 15u)], Struct_2(global4.a), global4.a), _wgslsmith_clamp_u32(abs(0u), ~101803u, 0u) < 7005u, Struct_2(global4.a)), func_4(global4.a.c ^ ~vec2<i32>(1329i, global4.a.c.x), _wgslsmith_f_op_f32(max(-1147f, _wgslsmith_div_f32(1823f, global4.a.d))) <= 501f, func_4(_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(-1i, global4.a.c.x)) & vec2<i32>(2147483647i, global4.a.c.x), global3[_wgslsmith_index_u32(4212u, 15u)], func_4(firstTrailingBit(global4.a.c), true, func_4(u_input.b, false, Struct_2(Struct_1(u_input.a.zy, global4.a.b, global4.a.c, arg_0.x)))))));
    var var_1 = Struct_1(vec2<u32>(4294967295u, 7485u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 60495u, 13292u), vec3<u32>(0u, 4294967295u, 47206u))), var_0.a.b, u_input.b, 1000f);
    var var_2 = func_4(select(global4.a.c, func_2(all(!vec3<bool>(true, var_1.b.x, false)), func_5(func_4(var_1.c, false, Struct_2(Struct_1(var_1.a, vec2<bool>(false, true), vec2<i32>(2147483647i, 19172i), -188f))).a, func_4(var_0.a.c, global4.a.b.x, Struct_2(var_0.a)), func_4(vec2<i32>(var_1.c.x, 0i), true, Struct_2(global4.a))), func_5(Struct_1(var_0.a.a, global4.a.b, vec2<i32>(global4.a.c.x, var_0.a.c.x), var_0.a.d), Struct_2(global4.a), Struct_2(Struct_1(u_input.a.xx, global4.a.b, var_1.c, 100f))).a), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-385f)))) == _wgslsmith_f_op_f32(round(var_0.a.d)), Struct_2(global4.a));
    let var_3 = select(select(!(!vec3<bool>(false, var_1.b.x, var_1.b.x)), vec3<bool>(202f <= arg_0.x, !global3[_wgslsmith_index_u32(0u, 15u)], func_5(func_4(var_1.c, var_0.a.b.x, Struct_2(global4.a)).a, func_5(Struct_1(vec2<u32>(u_input.a.x, 4294967295u), vec2<bool>(var_2.a.b.x, global4.a.b.x), var_0.a.c, -1376f), Struct_2(global4.a), Struct_2(global4.a)), Struct_2(Struct_1(u_input.a.xy, var_1.b, vec2<i32>(-2147483647i, var_0.a.c.x), var_0.a.d))).a.b.x), !select(vec3<bool>(var_0.a.b.x, var_1.b.x, false), !vec3<bool>(false, global4.a.b.x, false), vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 15u)], true))), select(vec3<bool>(any(vec3<bool>(false, var_2.a.b.x, var_2.a.b.x)) || true, func_5(func_5(Struct_1(vec2<u32>(53852u, u_input.a.x), var_0.a.b, vec2<i32>(global4.a.c.x, global4.a.c.x), var_1.d), Struct_2(Struct_1(vec2<u32>(u_input.a.x, 35696u), vec2<bool>(false, true), var_2.a.c, arg_0.x)), Struct_2(var_2.a)).a, Struct_2(var_2.a), Struct_2(global4.a)).a.b.x, true), !vec3<bool>(!global4.a.b.x, var_1.b.x || true, true), !vec3<bool>(any(vec4<bool>(false, global4.a.b.x, false, true)), false & global3[_wgslsmith_index_u32(1u, 15u)], var_1.b.x | true)), true);
    global1 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(19650u, countOneBits(~var_0.a.a.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(41703u, global1.x), global4.a.a)), reverseBits(u_input.a.zx ^ vec2<u32>(~23634u, 4294967295u)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, ~u_input.a.x, 49152u), vec3<u32>(countOneBits(4294967295u), ~4294967295u, _wgslsmith_mod_u32(33942u, 47063u))), 16u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b);
}

