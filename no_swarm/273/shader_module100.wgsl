struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7>;

var<private> global1: array<vec2<u32>, 11>;

var<private> global2: bool;

var<private> global3: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = firstLeadingBit(~2147483647i);
    let var_1 = Struct_2(~vec3<u32>(12799u >> ((u_input.a << (u_input.c % 32u)) % 32u), firstTrailingBit(49340u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), ~global1[_wgslsmith_index_u32(u_input.a, 11u)])));
    var var_2 = _wgslsmith_f_op_f32(abs(-1213f));
    global3 = _wgslsmith_f_op_f32(-778f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1000f, true)))));
    let var_3 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~(vec3<i32>(u_input.b, -7994i, 2147483647i) & vec3<i32>(-5134i, u_input.d, -31988i)), max(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, -48359i, var_0), vec3<i32>(2147483647i, -14326i, -2147483647i)), ~vec3<i32>(var_0, u_input.d, 0i))), ~vec3<i32>(u_input.d, _wgslsmith_div_i32(-33154i, 21005i), -26505i)) << ((var_1.a & _wgslsmith_div_vec3_u32(var_1.a, vec3<u32>(u_input.c, var_1.a.x, ~var_1.a.x))) % vec3<u32>(32u));
    return _wgslsmith_div_u32(1u, u_input.c);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -941f)), -270f, 585f))));
    var var_1 = Struct_1(arg_0.yx, false);
    global3 = arg_1.x;
    var var_2 = -460f;
    let var_3 = Struct_2(vec3<u32>(func_3(Struct_1(select(arg_0.xy, vec2<bool>(true, true), vec2<bool>(false, true)), arg_1.x < var_0.x)), u_input.a, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.a), vec3<u32>(u_input.a, 2861u, 0u)), 11u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.c) ^ 1u, 11u)])));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1079f, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1154f))))), var_0.zz)), _wgslsmith_f_op_vec2_f32(-arg_1));
}

fn func_4(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_1(vec2<bool>((u_input.d & (i32(-1i) * -802i)) >= -1i, false), !all(vec3<bool>(select(true, false, true), true, true)));
    var var_1 = max(u_input.b, max(u_input.d, u_input.b));
    var var_2 = Struct_2(~abs(min(vec3<u32>(71338u, u_input.c, 53571u) << (vec3<u32>(0u, u_input.c, 19421u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(4294967295u, 135921u, u_input.a)))));
    var var_3 = ~(~(~(select(var_2.a.xx, global1[_wgslsmith_index_u32(u_input.c, 11u)], var_0.b) << ((global1[_wgslsmith_index_u32(u_input.c, 11u)] >> (global1[_wgslsmith_index_u32(1u, 11u)] % vec2<u32>(32u))) % vec2<u32>(32u)))));
    let var_4 = _wgslsmith_f_op_f32(round(arg_0.x));
    return Struct_2(var_2.a);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = 2147483647i;
    var_0 = _wgslsmith_mod_i32(u_input.d, 1i);
    var var_1 = ~vec3<u32>(u_input.a, ~u_input.a, select(countOneBits(~u_input.c), u_input.a, select(true, false, arg_0.b)));
    var var_2 = u_input.a << ((81401u ^ (u_input.c ^ 24712u)) % 32u);
    var var_3 = true;
    return func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-755f, 131f)) * _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(arg_0.b, true, arg_0.b), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1732f), vec2<f32>(-2062f, 902f))))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = Struct_2(vec3<u32>(u_input.c ^ ((4294967295u | u_input.c) >> (u_input.a % 32u)), _wgslsmith_mult_u32(u_input.a, ~func_1(Struct_1(vec2<bool>(arg_1.x, arg_1.x), true)).a.x), 0u));
    global2 = select(select(arg_1.x, any(arg_1.zy), false), false, select(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -378f))), true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(true, arg_1.x, true), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(580f, 1394f)))))))).x);
    global2 = !arg_1.x;
    global0 = array<vec4<u32>, 7>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(318f, _wgslsmith_div_f32(-662f, 130f), -268f, var_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2552f, var_1, 1513f, 1000f) - vec4<f32>(var_1, 664f, -1000f, -1423f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(526f, 1000f, 1435f, 658f), vec4<f32>(var_1, var_1, -443f, -199f))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-363f, -1554f)), 464f)), var_1, 1081f, var_1), arg_1.x)));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 1223f, arg_0.x) * arg_0) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -1078f, -414f) * arg_0)), _wgslsmith_f_op_vec4_f32(-arg_0))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(-2140f, arg_0.x, -513f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 117f, arg_0.x) - arg_0))))));
    var_0 = arg_0;
    global2 = !select(true, false, true);
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(8972u, ~65478u) | (u_input.a >> (4294967295u % 32u)), ~(~u_input.c), 4294967295u), _wgslsmith_div_vec3_u32(~firstTrailingBit(~vec3<u32>(80559u, u_input.a, 0u)), select(~vec3<u32>(0u, u_input.a, u_input.a), min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)), ~vec3<u32>(u_input.c, 0u, 16347u)), any(vec4<bool>(false, false, false, false)) || all(vec3<bool>(true, true, true)))));
    var var_2 = countOneBits(-max(arg_1.x, max(38893i, -u_input.d)));
    return Struct_1(select(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), _wgslsmith_f_op_f32(130f - var_0.x) >= _wgslsmith_f_op_f32(var_0.x * var_0.x)), vec2<bool>(true, all(vec4<bool>(false, false, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(true, true))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(493f * _wgslsmith_f_op_f32(round(584f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) * 345f)) - var_0);
    var var_2 = func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-677f, var_0, var_0, var_0)))) + _wgslsmith_f_op_vec4_f32(func_5(func_1(Struct_1(vec2<bool>(true, false), false)), vec4<bool>(true, true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -654f), _wgslsmith_f_op_f32(f32(-1f) * -719f), var_0, 1700f), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, all(vec2<bool>(false, false))))), -(~(~countOneBits(vec2<i32>(0i, u_input.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, abs(global0[_wgslsmith_index_u32(27812u, 7u)]), (~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(42278u, 13525u), 11u)] >> (~func_1(Struct_1(vec2<bool>(var_2.b, var_2.a.x), true)).a.zx % vec2<u32>(32u))) & ~global1[_wgslsmith_index_u32(~u_input.a, 11u)], u_input.c);
}

