struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: array<Struct_4, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global1 = array<Struct_4, 32>();
    global1 = array<Struct_4, 32>();
    var var_0 = 37521u;
    global0 = array<i32, 15>();
    var_0 = 32467u;
    return _wgslsmith_f_op_f32(f32(-1f) * -804f);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(arg_0.x, 15u)], 1i, 0i)), -2154f, 1672f), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(arg_0.x, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)])))))), _wgslsmith_div_f32(916f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-151f, -741f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1210f))))), -738f);
    var var_1 = ~u_input.a.x;
    let var_2 = Struct_5(vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 15u)], global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 15u)]), global1[_wgslsmith_index_u32(min(~(~0u | (arg_0.x << (u_input.a.x % 32u))), 106317u), 32u)]);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_2.b.e.c)), _wgslsmith_f_op_f32(sign(var_0.x)))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.e.c * -309f)), var_0.x));
    var var_3 = !select(select(vec2<bool>(any(vec3<bool>(true, true, true)), 13782i != global0[_wgslsmith_index_u32(0u, 15u)]), vec2<bool>(true, true), !all(vec4<bool>(true, true, false, true))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), ~firstLeadingBit(7836u) < arg_0.x);
    return !var_3.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_4 {
    let var_0 = ~(-(~(~(vec3<i32>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(72263u, 15u)], -2147483647i) & vec3<i32>(-1i, global0[_wgslsmith_index_u32(78726u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])))));
    global1 = array<Struct_4, 32>();
    let var_1 = Struct_2(Struct_1(abs(_wgslsmith_mod_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(61350u, 15u)], -2147483647i, global0[_wgslsmith_index_u32(5154u, 15u)]), vec3<i32>(global0[_wgslsmith_index_u32(1u, 15u)], var_0.x, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))), 457f)), 851f);
    global1 = array<Struct_4, 32>();
    let var_2 = Struct_1(var_1.a.a);
    return Struct_4(var_1, var_1.a, Struct_1(abs(vec3<i32>(var_1.a.a.x >> (u_input.a.x % 32u), var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 2147483647i), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 15u)]))))), Struct_3(Struct_2(var_1.a, -1623f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-2000f)), -1225f))), Struct_1(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.a.x, -5223i, var_0.x), var_1.a.a, vec3<i32>(-25707i, var_1.a.a.x, 2147483647i))))), Struct_2(Struct_1(~var_0), -1312f, 1582f));
}

fn func_1() -> Struct_5 {
    global1 = array<Struct_4, 32>();
    var var_0 = func_4(vec3<bool>(!func_2(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a)), !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), !(reverseBits(4294967295u) >= ~u_input.a.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2032f, 695f))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1622f, -768f))))))));
    let var_1 = Struct_4(var_0.e, func_4(vec3<bool>(true, (23667i < global0[_wgslsmith_index_u32(u_input.a.x, 15u)]) == (global0[_wgslsmith_index_u32(u_input.a.x, 15u)] < 5020i), all(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-810f, var_0.d.a.b))))).a.a, var_0.d.b, Struct_3(Struct_2(func_4(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec2<f32>(var_0.e.c, var_0.e.c)).e.a, _wgslsmith_f_op_f32(func_3(var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.b))), func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.e.c, 444f), vec2<f32>(var_0.e.c, var_0.d.a.b))))).e.a), var_0.a);
    var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 32u)];
    let var_2 = Struct_2(var_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.e.b, var_0.e.b), _wgslsmith_div_f32(-155f, 894f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.d.a.b)), var_1.a.c)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(558f)) - var_1.a.c)), var_0.d.a.c);
    return Struct_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, countOneBits(var_1.e.a.a.x)) | reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c.a.x, -15621i), vec2<i32>(var_2.a.a.x, var_1.e.a.a.x))), vec2<i32>(-2147483647i, ~abs(var_2.a.a.x)), _wgslsmith_clamp_vec2_i32(func_4(vec3<bool>(true, false, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c, var_2.c))).a.a.a.yy, vec2<i32>(53990i, _wgslsmith_div_i32(1i, global0[_wgslsmith_index_u32(u_input.a.x, 15u)])), var_1.b.a.zy)), Struct_4(var_0.e, var_1.a.a, func_4(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), u_input.a.x > u_input.a.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.e.c, -928f)))).e.a, func_4(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1403f, var_1.a.b) - vec2<f32>(479f, -936f)))).d, Struct_2(var_1.d.a.a, var_1.a.b, _wgslsmith_f_op_f32(-var_2.b))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_5) -> Struct_4 {
    global1 = array<Struct_4, 32>();
    let var_0 = func_1().b.a.a;
    let var_1 = func_4(select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, false)), false), vec3<bool>(any(vec2<bool>(true, true)), true, func_2(u_input.a >> (u_input.a % vec4<u32>(32u))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.b.e.b, _wgslsmith_f_op_f32(func_3(arg_1.b.d)))))))).c.a;
    var var_2 = func_1().b;
    let var_3 = _wgslsmith_f_op_f32(arg_1.b.e.b + _wgslsmith_f_op_f32(max(-783f, arg_1.b.e.c)));
    return arg_1.b;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: bool) -> u32 {
    let var_0 = _wgslsmith_sub_u32(u_input.a.x, u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.a.c)))));
    global0 = array<i32, 15>();
    var var_2 = firstLeadingBit(_wgslsmith_sub_vec4_u32(arg_2, u_input.a));
    return ~_wgslsmith_sub_u32(0u, var_2.x ^ var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global0[_wgslsmith_index_u32(u_input.a.x >> (~(~0u) % 32u), 15u)];
    var var_1 = ~4294967295u <= func_6(func_5(-(vec3<i32>(var_0, var_0, var_0) ^ vec3<i32>(-2147483647i, -2147483647i, -61473i)), func_1()), Struct_3(Struct_2(func_4(vec3<bool>(false, false, true), vec2<f32>(795f, -843f)).e.a, -194f, _wgslsmith_f_op_f32(f32(-1f) * -941f)), Struct_1(~vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], var_0))), ~(firstTrailingBit(u_input.a) >> (select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), u_input.a, false) % vec4<u32>(32u))), all(vec4<bool>(true, true, select(true, true, false), true)));
    var_1 = false;
    let var_2 = func_1().b.d;
    global0 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1188f, 605f), vec2<f32>(var_2.a.c, -404f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.a.c, var_2.a.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1419f, var_2.a.b))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-110f, var_2.a.b))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.a.c, -1000f))))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - var_2.a.b));
}

