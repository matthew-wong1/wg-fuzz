struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    return _wgslsmith_clamp_vec3_i32(abs(abs(arg_2.b)), arg_2.b, vec3<i32>(0i, arg_3, 1i));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = 6119u;
    var var_1 = !global1[_wgslsmith_index_u32(4294967295u, 24u)];
    var_0 = ~_wgslsmith_dot_vec2_u32(~max(firstLeadingBit(vec2<u32>(u_input.c, u_input.a)), vec2<u32>(u_input.a, 54422u) ^ vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, reverseBits(u_input.c)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(225f, -1000f) * vec2<f32>(-2897f, 538f)))))), firstLeadingBit(func_3(~20543i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-289f, -682f, 2037f, 1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(-1186f, 337f, -506f, -1360f), vec4<f32>(573f, -139f, -1000f, -1393f)))), Struct_1(vec2<i32>(u_input.b, 5390i), vec3<i32>(0i, -40370i, -20045i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-863f, -233f, -926f, -709f))), 2147483647i)), countOneBits(u_input.d), Struct_2(Struct_1(vec2<i32>(0i, -1i), abs(vec3<i32>(u_input.b, u_input.b, -82442i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 492f, 1000f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-248f, -801f, -576f, -852f))))), vec2<i32>(select(-2147483647i, u_input.b, select(true, true, false)), u_input.b)), ~_wgslsmith_div_i32(1120i, reverseBits(u_input.b >> (u_input.c % 32u))));
    var var_3 = var_2.d.a.c.yyy;
    return var_2.a.x;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(false)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(569f, -1000f))))), vec3<i32>(u_input.b, i32(-1i) * -1i, ~u_input.b), 4763u, Struct_2(Struct_1(select(vec2<i32>(u_input.b, 49421i), min(vec2<i32>(1i, u_input.b), vec2<i32>(-1i, u_input.b)), false), firstLeadingBit(vec3<i32>(u_input.b, u_input.b, u_input.b)) << (select(vec3<u32>(arg_0, arg_0, 1u), vec3<u32>(arg_0, 4294967295u, u_input.d), vec3<bool>(false, true, true)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-528f, 1000f, 201f, -1841f)) * vec4<f32>(866f, 421f, -329f, -838f))), max(vec2<i32>(u_input.b, _wgslsmith_mult_i32(-10815i, u_input.b)), -vec2<i32>(u_input.b, -1i) ^ max(vec2<i32>(2147483647i, 22224i), vec2<i32>(0i, u_input.b)))), -1i);
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, ~1i) << (~vec2<u32>(firstLeadingBit(4294967295u), 4294967295u) % vec2<u32>(32u)), var_0.d.a.b.yz);
    var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-622f))), var_0.a.x), func_3(~abs(u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.d.a.c, _wgslsmith_div_vec4_f32(var_0.d.a.c, var_0.d.a.c), false))), var_0.d.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -2147483647i, var_1.x, _wgslsmith_mult_i32(u_input.b, var_1.x)), ~vec4<i32>(-2147483647i, u_input.b, -7215i, var_1.x))), 16447u, Struct_2(var_0.d.a, -var_1), -50869i);
    var var_2 = 1i;
    var var_3 = var_0.d.a;
    return var_0.d;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(arg_0.c, arg_0.c)), ~(~vec2<u32>(u_input.d, u_input.c)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(44557u, 108791u), vec2<u32>(4294967295u, u_input.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(21271u, 0u), vec2<u32>(arg_0.c, 1u))))), vec2<u32>(_wgslsmith_mult_u32(abs(arg_0.c) | u_input.a, u_input.a), 42871u));
    let var_1 = Struct_5(func_1(~arg_0.c).a);
    var var_2 = Struct_5(func_1(~(~u_input.d)).a);
    let var_3 = arg_0;
    var var_4 = vec4<bool>(!any(vec2<bool>(false, true)), (all(vec4<bool>(true, false, false, false)) && (abs(var_2.a.a.x) != select(arg_0.d.b.x, arg_2.b.x, true))) && (all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))) & true), false, !(all(vec2<bool>(true, true)) != any(global1[_wgslsmith_index_u32(u_input.d, 24u)])));
    return Struct_3(arg_2.a.c.xw, var_2.a.b, 102122u, var_3.d, ~(22188i << (_wgslsmith_add_u32(arg_0.c >> (arg_0.c % 32u), 4294967295u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1329f, 296f))), vec2<f32>(1f, 1f)), _wgslsmith_div_vec3_i32(min(~vec3<i32>(u_input.b, 16671i, 0i), vec3<i32>(2147483647i, u_input.b, u_input.b)), firstTrailingBit(vec3<i32>(-32215i, u_input.b, 5064i) >> (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u)))), 0u, func_1(u_input.d), 1i), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1248f * 1179f)))), Struct_2(Struct_1(vec2<i32>(-u_input.b, min(u_input.b, 2147483647i)), vec3<i32>(abs(u_input.b), _wgslsmith_add_i32(u_input.b, u_input.b), 61712i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(177f, -256f, -226f, -978f), vec4<f32>(198f, 1338f, 679f, 1227f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-508f, -273f, -427f, 708f)))))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.b, 12586i), vec4<i32>(-1i, u_input.b, 0i, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 41955i), vec2<i32>(u_input.b, u_input.b))) & vec2<i32>(~u_input.b, u_input.b >> (21581u % 32u))), Struct_4(-895f));
    let var_1 = var_0.d.a.c.wy;
    var var_2 = !global1[_wgslsmith_index_u32(64353u, 24u)];
    var var_3 = select(select(select(~vec4<i32>(-2147483647i, 0i, u_input.b, 0i), select(-vec4<i32>(u_input.b, u_input.b, var_0.b.x, -2147483647i), vec4<i32>(-40911i, u_input.b, 10406i, u_input.b), select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(true, true, true, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), var_2.x != var_2.x), vec4<i32>(reverseBits(abs(var_0.d.a.a.x)), select(var_0.b.x, 14022i, true), ~u_input.b, -u_input.b), select(!vec4<bool>(true, var_2.x, var_2.x, var_2.x), select(vec4<bool>(var_2.x, true, var_2.x, false), !vec4<bool>(true, var_2.x, true, true), true), !(!vec4<bool>(true, var_2.x, var_2.x, false)))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.b.x, -15144i, 37416i, u_input.b), -firstTrailingBit(vec4<i32>(u_input.b, 1i, var_0.d.b.x, -424i)), vec4<i32>(reverseBits(0i), var_0.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-70056i, var_0.b.x), var_0.d.a.b.zx), ~27951i)), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, 1i, -32306i, u_input.b), vec4<i32>(var_0.e, -24573i, var_0.e, u_input.b) << (vec4<u32>(4294967295u, 4294967295u, 44378u, 88451u) % vec4<u32>(32u)))), true);
    let var_4 = false;
    var_3 = vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(func_3(firstTrailingBit(u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1051f, var_0.a.x, var_0.d.a.c.x, 839f)))), func_1(0u).a, 47026i).x, -(var_3.x & var_3.x)), -(~var_0.e) | -_wgslsmith_sub_i32(var_0.e, -2557i), -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, var_0.e, -2147483647i), u_input.b) << ((4125u | countOneBits(var_0.c)) % 32u));
    var_2 = vec2<bool>(true, false);
    var var_5 = min(vec2<u32>(1u, 42365u), max(vec2<u32>(1u, u_input.c), _wgslsmith_mult_vec2_u32(select(~vec2<u32>(var_0.c, 4294967295u), vec2<u32>(u_input.d, 4294967295u), var_2.x), vec2<u32>(1u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_5.x, func_1(13587u).a.b | ~vec3<i32>(~var_3.x, _wgslsmith_clamp_i32(0i, 1i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_3.x, u_input.b, var_0.b.x), vec4<i32>(2066i, var_0.b.x, u_input.b, var_3.x))));
}

