struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 11> = array<bool, 11>(true, false, true, true, true, false, true, true, false, true, false);

var<private> global2: u32 = 0u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-597f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-529f - -152f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1069f, 874f))))))));
    global2 = _wgslsmith_div_u32(arg_2.e, _wgslsmith_div_u32(arg_2.e, arg_1.x));
    return var_0.x;
}

fn func_2(arg_0: u32) -> u32 {
    global0 = 10816u;
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(false, global1[_wgslsmith_index_u32(41470u, 11u)]), ~vec4<u32>(u_input.b.x, 4294967295u, arg_0, 1u), Struct_2(u_input.c.x, Struct_1(u_input.e, global1[_wgslsmith_index_u32(arg_0, 11u)], u_input.a.yy, vec3<u32>(arg_0, u_input.b.x, 3868u)), u_input.c.x, true, 4294967295u), Struct_1(1u, false, u_input.b.xy, vec3<u32>(arg_0, u_input.e, u_input.a.x))))), true);
    return reverseBits(1u);
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    return Struct_1(~_wgslsmith_sub_u32(func_2(_wgslsmith_sub_u32(u_input.b.x, 5212u)), _wgslsmith_mult_u32(~37171u, arg_0.x)), global1[_wgslsmith_index_u32(arg_0.x ^ _wgslsmith_add_u32(~u_input.b.x, arg_0.x), 11u)], _wgslsmith_add_vec2_u32(u_input.b.zz, u_input.a.zy), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, abs(4294967295u), u_input.d | 61869u), vec3<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.d), arg_0.x, ~u_input.e))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = 2147483647i;
    let var_1 = Struct_1(u_input.b.x, select(false, arg_2.b, true), ~vec2<u32>(abs(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(24145u, 7442u, u_input.d, 7905u))), 1u), vec3<u32>(arg_0.e, 16261u, 52938u));
    let var_2 = !((1000f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -627f)))) & arg_3);
    let var_3 = !(!(!(!select(vec2<bool>(true, var_1.b), vec2<bool>(arg_3, false), global1[_wgslsmith_index_u32(var_1.a, 11u)]))));
    let var_4 = Struct_1(0u, true, var_1.d.xy, select(select(vec3<u32>(~1u, arg_0.b.c.x, _wgslsmith_dot_vec3_u32(arg_1.www, vec3<u32>(1u, arg_1.x, arg_0.b.d.x))), ~(vec3<u32>(4294967295u, 0u, arg_1.x) & vec3<u32>(arg_2.c.x, var_1.c.x, var_1.c.x)), true), _wgslsmith_add_vec3_u32(~func_4(vec4<u32>(arg_0.b.a, 1u, arg_0.b.a, 1u)).d, ~arg_1.wwz), !select(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 11u)], false, true), vec3<bool>(false, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(20628u, 11u)], arg_2.b, global1[_wgslsmith_index_u32(arg_0.b.d.x, 11u)]))));
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<u32> {
    global1 = array<bool, 11>();
    global1 = array<bool, 11>();
    var var_0 = func_5(Struct_2(u_input.c.x, func_4(vec4<u32>(u_input.a.x | 4294967295u, ~arg_0.a, 1u, func_2(0u))), u_input.c.x, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], ~u_input.a.x), vec4<u32>(~58444u, u_input.d, ~1u, u_input.d) & vec4<u32>(firstLeadingBit(~arg_0.a), u_input.a.x, arg_0.d.x, arg_0.c.x), Struct_1(arg_0.c.x, any(select(vec4<bool>(true, true, arg_0.b, true), !vec4<bool>(false, global1[_wgslsmith_index_u32(6546u, 11u)], global1[_wgslsmith_index_u32(arg_0.d.x, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]), select(vec4<bool>(arg_0.b, global1[_wgslsmith_index_u32(arg_0.d.x, 11u)], false, global1[_wgslsmith_index_u32(arg_0.a, 11u)]), vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), false))), vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.d), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 24861u, 12987u, arg_0.c.x), vec4<u32>(4294967295u, u_input.b.x, 978u, arg_0.a)), 0u)), arg_0.d), any(select(vec3<bool>(func_4(vec4<u32>(arg_0.c.x, arg_0.d.x, 1u, 0u)).b, true, all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 11u)], false, true))), vec3<bool>(true, true, true), !(!vec3<bool>(arg_0.b, false, arg_0.b)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x);
    var_0 = func_5(Struct_2(-_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, u_input.c.x, 27483i, 35603i)), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), arg_0, ~(u_input.c.x ^ ~42807i), _wgslsmith_mult_i32(-u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, 1i)) >= _wgslsmith_add_i32(u_input.c.x, i32(-1i) * -16120i), 0u), ~min(~vec4<u32>(29098u, u_input.b.x, arg_0.d.x, 35751u), vec4<u32>(40741u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 118743u), vec2<u32>(var_0.a, var_0.c.x)), arg_0.c.x, var_0.c.x)), func_5(Struct_2(33413i, func_4(vec4<u32>(105773u, 0u, u_input.a.x, var_0.c.x)), min(-1i, u_input.c.x), all(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 11u)], var_0.b)), _wgslsmith_div_u32(u_input.a.x ^ u_input.b.x, arg_0.d.x)), vec4<u32>(~(~arg_0.a), 1u, var_0.c.x, 74060u), arg_0, func_5(Struct_2(u_input.c.x >> (1u % 32u), Struct_1(11197u, global1[_wgslsmith_index_u32(arg_0.d.x, 11u)], arg_0.d.zy, var_0.d), countOneBits(u_input.c.x), true, var_0.a), vec4<u32>(~u_input.a.x, _wgslsmith_add_u32(var_0.d.x, 4294967295u), _wgslsmith_sub_u32(arg_0.d.x, var_0.c.x), var_0.c.x), Struct_1(arg_0.c.x >> (4294967295u % 32u), !arg_0.b, arg_0.c >> (arg_0.c % vec2<u32>(32u)), vec3<u32>(arg_0.d.x, 15102u, 0u)), -203f == _wgslsmith_f_op_f32(arg_1.x * arg_1.x)).b), any(vec3<bool>(!var_0.b, !(!global1[_wgslsmith_index_u32(var_0.c.x, 11u)]), global1[_wgslsmith_index_u32(1u, 11u)])));
    return vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(var_0.c.x, 63299u), var_0.a | (4294967295u | arg_0.d.x), ~firstLeadingBit(var_0.d.x)), u_input.b.x) & firstLeadingBit(vec2<u32>(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, var_0.c.x, 10704u), arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(u_input.d >> (u_input.b.x % 32u));
    global2 = _wgslsmith_add_u32(_wgslsmith_add_u32(min(2064u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 57784u, 48926u), vec4<u32>(u_input.a.x, u_input.d, 4294967295u, u_input.a.x))), ~(~u_input.a.x)) | ~16444u, _wgslsmith_div_u32(~(~4294967295u), _wgslsmith_mult_u32(49628u >> (u_input.a.x % 32u), ~31236u)) | u_input.d);
    let var_0 = select(abs(_wgslsmith_dot_vec2_u32(func_1(Struct_1(66182u, global1[_wgslsmith_index_u32(20885u, 11u)], u_input.b.yz, vec3<u32>(u_input.a.x, 31642u, u_input.d)), vec2<f32>(458f, -1250f)), vec2<u32>(1u, u_input.a.x))), 1u, true) ^ (reverseBits(~(~u_input.a.x)) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(36958u, 0u, u_input.d, u_input.a.x), vec4<u32>(0u, 21559u, u_input.d, u_input.b.x)), _wgslsmith_clamp_u32(func_1(Struct_1(u_input.d, global1[_wgslsmith_index_u32(u_input.d, 11u)], vec2<u32>(u_input.b.x, 1u), u_input.b), vec2<f32>(1590f, 1657f)).x, ~13807u, 1u)));
    let var_1 = -u_input.c;
    let var_2 = vec3<u32>(var_0, 64606u, _wgslsmith_clamp_u32(firstTrailingBit(func_2(29435u)), _wgslsmith_clamp_u32(min(u_input.b.x, var_0), ~74035u, _wgslsmith_mult_u32(33481u, 0u)), ~(~45893u))) >> (~abs(func_4(vec4<u32>(u_input.e, 4294967295u, 49389u, var_0)).d & abs(vec3<u32>(u_input.e, var_0, var_0))) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1103f, _wgslsmith_f_op_f32(f32(-1f) * -720f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2181f, -883f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1890f, 845f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(1u >> (1u % 32u), func_2(73511u), ~var_0, var_0)), -(~(~vec4<i32>(var_1.x, -4802i, 19958i, 0i)) << (~(~vec4<u32>(4294967295u, u_input.b.x, var_0, var_0)) % vec4<u32>(32u))));
}

