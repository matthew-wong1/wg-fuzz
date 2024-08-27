struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 23>;

var<private> global2: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(11757u, 1u), vec2<u32>(38769u, 47503u), vec2<u32>(4294967295u, 28613u), vec2<u32>(59883u, 758u), vec2<u32>(0u, 0u));

var<private> global3: u32 = 1u;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    global0 = true | (true & (_wgslsmith_f_op_f32(1000f - -345f) <= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(992f, -716f), _wgslsmith_f_op_f32(-648f * -519f)))));
    global1 = array<u32, 23>();
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(64037u, 7u)], false, vec2<bool>(arg_1.b, any(vec3<bool>(false, any(vec2<bool>(false, arg_1.c.x)), all(vec2<bool>(arg_1.b, true))))), arg_1.e, arg_1.d);
    let var_1 = Struct_2(vec2<u32>(abs(7312u), ~(~(~u_input.a))), arg_0.x >> (countOneBits(arg_1.a.x) % 32u), _wgslsmith_div_vec3_u32(~firstLeadingBit(max(vec3<u32>(0u, 348u, arg_1.a.x), vec3<u32>(u_input.a, 1u, 59206u))), vec3<u32>(0u, arg_1.a.x, u_input.a)), all(vec3<bool>(false, !all(var_0.e), var_0.c.x)), -1i);
    var var_2 = countOneBits(-vec3<i32>(countOneBits(56380i), -_wgslsmith_mod_i32(arg_0.x, -24576i), _wgslsmith_mult_i32(arg_0.x, var_1.b) << (reverseBits(var_1.a.x) % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f + -126f)) * 802f))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec2<i32>(arg_1.b, arg_2.d), Struct_1(global2[_wgslsmith_index_u32(arg_2.c.x, 7u)], arg_1.d, vec2<bool>(arg_1.d, false), arg_2.a.xyx, vec3<bool>(arg_2.b.x, false, false))))))))) - _wgslsmith_f_op_f32(ceil(arg_0)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>) -> vec2<f32> {
    global2 = array<vec2<u32>, 7>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(vec2<i32>(min(-2843i, 0i), -7254i), Struct_1(global2[_wgslsmith_index_u32(~1u, 7u)], true, vec2<bool>(true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), Struct_2(~min(vec2<u32>(global1[_wgslsmith_index_u32(62910u, 23u)], 4294967295u), vec2<u32>(28637u, 28082u)), 2147483647i, ~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 0u, u_input.a) ^ ~vec3<u32>(u_input.a, u_input.a, u_input.a), arg_0.x > arg_0.x, 0i), Struct_3(vec4<bool>(1i > arg_1.x, true, true, any(vec3<bool>(true, true, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 2971u, global1[_wgslsmith_index_u32(u_input.a, 23u)], 4294967295u), ~vec4<u32>(33228u, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_i32(arg_1.x, 24462i)), firstLeadingBit(arg_1.x)))));
    var var_1 = (~_wgslsmith_mod_vec4_u32(vec4<u32>(11061u, 49510u, u_input.a, u_input.a), vec4<u32>(global1[_wgslsmith_index_u32(4035u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44675u, 23u)], 23u)], u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 23u)], 23u)]) << (vec4<u32>(18280u, 0u, 0u, u_input.a) % vec4<u32>(32u))) | (~firstLeadingBit(vec4<u32>(u_input.a, 22379u, u_input.a, 56777u)) & vec4<u32>(~1u, u_input.a, firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 23u)]), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(24111u, global1[_wgslsmith_index_u32(4294967295u, 23u)], 1u), 23u)]))) | firstLeadingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 23u)], u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 23u)], 37353u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1468u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(26416u, 23u)]), vec4<u32>(u_input.a, 1u, u_input.a, 29041u)) | ~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 26275u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 1u)));
    var var_2 = abs(var_1.x);
    let var_3 = Struct_2(var_1.wx, -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, ~(-1i), firstLeadingBit(20799i)), min(57678i, arg_1.x) << (1u % 32u)), min(~abs(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(1u, 23u)], 0u)), _wgslsmith_clamp_vec3_u32(var_1.xyx, vec3<u32>(countOneBits(u_input.a), ~global1[_wgslsmith_index_u32(var_1.x, 23u)], _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], var_1.x)), ~vec3<u32>(var_1.x, global1[_wgslsmith_index_u32(u_input.a, 23u)], u_input.a))), false, abs(1i));
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-738f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-158f, 1183f)) - _wgslsmith_f_op_f32(-1584f * -755f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -822f), 3440f))))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(1i, 1i), ~vec2<i32>(-69981i, 1i)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), -2369f))));
    global2 = array<vec2<u32>, 7>();
    let var_1 = ~vec3<u32>(6296u, firstTrailingBit(~_wgslsmith_mod_u32(arg_0, 0u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 446u, 1u), vec3<u32>(5893u, global1[_wgslsmith_index_u32(u_input.a, 23u)], 4294967295u)), firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 23u)], 0u, 47540u))), 23u)]);
    global0 = any(!vec4<bool>(false || (arg_1.x & arg_1.x), false, arg_1.x, !all(vec2<bool>(false, arg_1.x))));
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(~1u, max(~(~global1[_wgslsmith_index_u32(8094u, 23u)]), var_1.x), 1u, 15127u), ~vec4<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_1.x, global1[_wgslsmith_index_u32(u_input.a, 23u)], 79633u, 50707u), vec4<u32>(0u, u_input.a, u_input.a, 1u)), vec4<u32>(var_1.x, 90624u, var_1.x, u_input.a) << (vec4<u32>(12921u, 1u, 30436u, 90448u) % vec4<u32>(32u))), arg_0, 4294967295u, u_input.a));
    return 1i ^ ~max(countOneBits(max(34402i, 7899i)), firstTrailingBit(-27283i));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    return Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~arg_0.c.yz), ~_wgslsmith_sub_vec2_u32(global2[_wgslsmith_index_u32(1u, 7u)] ^ vec2<u32>(0u, 0u), global2[_wgslsmith_index_u32(abs(u_input.a), 7u)])), false, vec2<bool>(any(select(!vec3<bool>(false, arg_0.b.x, true), vec3<bool>(arg_0.a.x, true, false), arg_0.a.x & true)), false), !(!vec3<bool>(arg_0.a.x, true, true)), !arg_0.a.wyz);
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    let var_0 = select(!(!(!vec4<bool>(false, arg_1, true, arg_1))), !select(!(!vec4<bool>(true, arg_2.b, arg_2.b, arg_1)), !(!vec4<bool>(true, arg_2.c.x, arg_1, true)), vec4<bool>(true, !arg_1, true, false)), any(arg_2.d.xx));
    var var_1 = func_5(Struct_3(select(!vec4<bool>(false, arg_2.d.x, arg_2.d.x, true), !(!var_0), !vec4<bool>(true, arg_1, true, true)), func_5(Struct_3(!var_0, !arg_2.c, max(vec4<u32>(u_input.a, 16073u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.a.x, 23u)], 23u)])), -853i)).d.xz, vec4<u32>(1u, ~firstLeadingBit(4294967295u), 4294967295u, ~u_input.a), 1i));
    var var_2 = ~_wgslsmith_add_i32(arg_0, -20853i);
    var var_3 = Struct_1(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a.x, 23u)], 7u)], any(select(vec4<bool>(!var_1.d.x, !var_0.x, true, false), !vec4<bool>(var_1.d.x, arg_2.d.x, false, var_1.e.x), var_0.x)), select(arg_2.e.xx, vec2<bool>(arg_1, true), var_1.e.x), vec3<bool>(true, _wgslsmith_sub_i32(abs(arg_0), abs(-1i)) != max(min(arg_0, -16384i), countOneBits(20407i)), _wgslsmith_add_u32(reverseBits(global1[_wgslsmith_index_u32(0u, 23u)]), arg_2.a.x | var_1.a.x) != 0u), var_0.wwy);
    let var_4 = Struct_3(select(vec4<bool>(func_5(Struct_3(vec4<bool>(false, arg_1, false, arg_1), arg_2.c, vec4<u32>(var_1.a.x, 0u, global1[_wgslsmith_index_u32(6147u, 23u)], arg_2.a.x), -2147483647i)).b, false, all(vec3<bool>(var_3.d.x, var_0.x, var_3.c.x)), var_3.d.x), !select(var_0, vec4<bool>(true, var_1.c.x, false, false), false), var_0.x | arg_2.b), vec2<bool>(false, false), ~firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(arg_2.a.x, 23u)], 1u, arg_2.a.x, arg_2.a.x), vec4<u32>(1u, 15379u, var_3.a.x, global1[_wgslsmith_index_u32(0u, 23u)]) >> (vec4<u32>(58347u, 4294967295u, 1u, 1u) % vec4<u32>(32u)))), _wgslsmith_sub_i32(1i, 35704i));
    return var_4;
}

fn func_7(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(func_5(Struct_3(vec4<bool>(true, true, false, arg_2.a.x), vec2<bool>(false, arg_2.a.x), arg_2.c, 17571i)).a.x, 23u)]), 23u)], 0u, 7142u), ~(func_6(arg_1, all(arg_2.a), Struct_1(vec2<u32>(u_input.a, 55136u), arg_2.a.x, vec2<bool>(false, arg_2.b.x), arg_2.a.xzx, arg_2.a.zzz)).c.xzz | arg_2.c.xwx));
    global2 = array<vec2<u32>, 7>();
    global1 = array<u32, 23>();
    global1 = array<u32, 23>();
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(arg_2.c.x), reverseBits(_wgslsmith_add_u32(~u_input.a, max(15394u, u_input.a)))), 7u)], arg_1, _wgslsmith_add_vec3_u32(vec3<u32>(~var_0, arg_0, ~82960u), vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.c.zy, vec2<u32>(1u, 44515u)), 23u)], abs(u_input.a), arg_2.c.x)) | ~(~arg_2.c.yww), arg_2.b.x, 0i);
    return Struct_2(~vec2<u32>(0u, ~4294967295u), _wgslsmith_mod_i32(max(var_1.b, -2147483647i), arg_2.d), firstLeadingBit(arg_2.c.yyx) ^ min(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 12154u, arg_0), var_1.c), select(var_1.c, vec3<u32>(21393u, 0u, 4294967295u), false)), select(vec3<u32>(22297u, 4186u, arg_0) | var_1.c, var_1.c, var_1.d || var_1.d)), var_1.d, var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a), 23u)] >> (firstLeadingBit(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 23u)])) % 32u), ~17991u), 23u)], _wgslsmith_div_i32((1i << (u_input.a % 32u)) >> (global1[_wgslsmith_index_u32(0u, 23u)] % 32u), 46768i), func_6(abs(_wgslsmith_add_i32(-43262i, 1i)), select(!all(vec4<bool>(true, false, true, false)), true, true), func_5(Struct_3(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), true), ~vec4<u32>(1u, 11788u, 17051u, u_input.a), func_1(u_input.a, vec2<bool>(false, false))))));
    let var_1 = Struct_2(var_0.c.zy, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(81082i, var_0.b), countOneBits(vec2<i32>(var_0.e, var_0.e)))), vec3<u32>(~_wgslsmith_add_u32(u_input.a, func_7(3868u, -35307i, Struct_3(vec4<bool>(var_0.d, false, var_0.d, false), vec2<bool>(true, var_0.d), vec4<u32>(1u, 4294967295u, 1u, global1[_wgslsmith_index_u32(var_0.a.x, 23u)]), var_0.e)).a.x), min(u_input.a, firstTrailingBit(~global1[_wgslsmith_index_u32(var_0.a.x, 23u)])), ~abs(u_input.a) << (var_0.c.x % 32u)), false, _wgslsmith_mult_i32(34215i, ~var_0.e));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_2(~abs(vec2<i32>(-var_1.b, ~(-9154i))), reverseBits(vec2<i32>(func_7(1u, var_1.e >> (4294967295u % 32u), Struct_3(vec4<bool>(false, var_1.d, var_0.d, var_1.d), vec2<bool>(var_0.d, true), vec4<u32>(var_1.c.x, 0u, var_1.c.x, u_input.a), var_0.e)).b, var_1.b)))).x;
    var var_3 = Struct_2(~(~vec2<u32>(~var_0.a.x, 9916u)), ~func_1(~_wgslsmith_mod_u32(21054u, global1[_wgslsmith_index_u32(var_1.a.x, 23u)]), !(!vec2<bool>(var_0.d, true))), vec3<u32>(var_1.c.x, _wgslsmith_mult_u32(0u, u_input.a), 1u), var_0.d, 25890i);
    let var_4 = func_7(~(firstTrailingBit(var_3.a.x) << (12625u % 32u)), _wgslsmith_mod_i32(-51501i, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -40189i, -2147483647i), vec3<i32>(15498i, var_0.e, 22622i))) | min(var_3.e, -2147483647i)), func_6(((i32(-1i) * -2147483647i) << (var_0.a.x % 32u)) ^ ~(-1i), var_3.d && true, Struct_1(select(var_1.c.xx, ~vec2<u32>(58874u, var_1.a.x), select(vec2<bool>(var_3.d, var_0.d), vec2<bool>(var_1.d, var_3.d), vec2<bool>(false, true))), var_1.d, vec2<bool>(true, func_6(1i, var_1.d, Struct_1(var_0.a, var_0.d, vec2<bool>(var_1.d, var_3.d), vec3<bool>(var_1.d, var_3.d, false), vec3<bool>(var_3.d, true, var_1.d))).b.x), vec3<bool>(true, var_0.d, !var_3.d), !vec3<bool>(var_3.d, true, var_1.d))));
    var var_5 = ~var_1.a.x;
    global1 = array<u32, 23>();
    var var_6 = func_6(_wgslsmith_clamp_i32(var_1.b, ~0i << (var_1.a.x % 32u), func_1(_wgslsmith_clamp_u32(u_input.a, var_3.c.x, 4294967295u), select(vec2<bool>(var_3.d, var_3.d), vec2<bool>(false, false), vec2<bool>(var_3.d, false)))) ^ 1i, true, func_5(func_6(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_4.e, var_4.e), 0i), false, func_5(func_6(2147483647i, false, Struct_1(vec2<u32>(var_4.c.x, 4294967295u), true, vec2<bool>(true, false), vec3<bool>(var_1.d, var_1.d, var_4.d), vec3<bool>(true, var_0.d, false)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

