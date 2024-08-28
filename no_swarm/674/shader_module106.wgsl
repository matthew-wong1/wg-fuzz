struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: Struct_1 = Struct_1(0u, 21885i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_3(Struct_2(Struct_1(u_input.a, ~_wgslsmith_mult_i32(arg_2.x, 2147483647i)), Struct_1(~1u, abs(2147483647i | arg_1.x)), max(~u_input.b, ~(vec2<u32>(u_input.b.x, u_input.b.x) & vec2<u32>(72452u, u_input.b.x))), Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), 4294967295u), u_input.d >> (~0u % 32u))), select(!vec4<bool>(arg_0.x, false, arg_0.x, any(vec4<bool>(false, true, false, arg_0.x))), select(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), arg_0.x), vec4<bool>(arg_1.x != 18065i, arg_0.x, arg_0.x, arg_0.x), select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), true)), vec4<bool>(arg_0.x, arg_0.x, _wgslsmith_mod_i32(-20445i, u_input.e) >= -19577i, !(u_input.b.x == 8949u))));
    return global1.a;
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(1u, -17762i >> (func_3(vec3<bool>(false, false, false), vec2<i32>(global1.b, global1.b), vec4<i32>(0i, -1i, 25562i, -1i)) % 32u)), Struct_1((global1.a & 32161u) | 1u, _wgslsmith_mult_i32(min(u_input.d, -32865i), ~2147483647i)), ~arg_0, Struct_1(arg_0.x, 0i)), vec4<bool>(true, _wgslsmith_mod_u32(global1.a, 12876u) > 2003u, u_input.d == global1.b, u_input.a != min(1u, _wgslsmith_sub_u32(4294967295u, global1.a))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_3(func_2(_wgslsmith_mult_vec2_u32(arg_1.xx >> (vec2<u32>(13608u, global1.a) % vec2<u32>(32u)), arg_3.a.c) | func_2(countOneBits(arg_1.yz)).a.c).a, arg_3.b);
    global1 = func_2(_wgslsmith_sub_vec2_u32(arg_3.a.c, vec2<u32>(~0u | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.c.x, arg_1.x), vec2<u32>(arg_1.x, arg_3.a.a.a)), func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.b.a, global1.a), arg_3.a.c)).a.d.a))).a.a;
    var_0 = arg_3;
    var_0 = Struct_3(arg_3.a, !vec4<bool>(true, arg_3.b.x, all(arg_2) | true, any(vec4<bool>(false, true, var_0.b.x, false))));
    let var_1 = arg_3.b.x;
    return func_2(_wgslsmith_mod_vec2_u32(~min(~vec2<u32>(var_0.a.c.x, arg_3.a.d.a), vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1.a, 0u), vec2<u32>(arg_3.a.a.a, arg_1.x)), select(vec2<u32>(arg_1.x, var_0.a.d.a), vec2<u32>(global1.a, arg_3.a.b.a), vec2<bool>(true, var_0.b.x))), vec2<u32>(4294967295u, ~global1.a)))).a.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_1 {
    global1 = func_4(vec4<i32>(~max(-1i, global1.b), -(~(-44873i)), ~u_input.d, _wgslsmith_mod_i32(global1.b & -9640i, -u_input.e)) ^ (select(~vec4<i32>(global1.b, -32047i, u_input.d, u_input.d), vec4<i32>(-888i, 64325i, 1i, 31659i) ^ vec4<i32>(1113i, global1.b, 56954i, global1.b), global0[_wgslsmith_index_u32(u_input.a, 28u)] > 1026f) >> (vec4<u32>(4294967295u ^ global1.a, 0u, global1.a, u_input.b.x) % vec4<u32>(32u))), max(~(vec3<u32>(0u, global1.a, 0u) ^ ~vec3<u32>(43237u, 1u, u_input.b.x)), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.a, 27038u, 80201u), vec3<u32>(global1.a, 1u, u_input.b.x)) ^ vec3<u32>(u_input.c, 1u, global1.a))), arg_2, func_2(vec2<u32>(u_input.b.x, min(~47062u, abs(8219u)))));
    let var_0 = vec4<i32>(-(~2147483647i), u_input.d, -2147483647i, -1i);
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    global1 = func_2(u_input.b).a.a;
    return Struct_1(~0u, (_wgslsmith_dot_vec2_i32(var_0.zw, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.e), var_0.zz)) | _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, var_0.x, 36367i), var_0.xxw), 13219i)) >> (~(_wgslsmith_clamp_u32(26041u, 10043u, 4294967295u) << ((u_input.c ^ global1.a) % 32u)) % 32u));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = func_2(abs(u_input.b));
    global0 = array<f32, 28>();
    var_0 = func_2(u_input.b);
    var var_1 = ~vec2<u32>(u_input.b.x, countOneBits(29758u | global1.a)) ^ (_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0.b.a, u_input.c), select(var_0.a.c, var_0.a.c, var_0.b.x), vec2<u32>(var_0.a.d.a, arg_0.d.a)), ~var_0.a.c) | arg_0.c);
    var_1 = var_0.a.c;
    return func_2(var_0.a.c ^ func_2(vec2<u32>(_wgslsmith_mod_u32(global1.a, 104008u), _wgslsmith_sub_u32(var_0.a.b.a, u_input.a))).a.c).a.b;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    global1 = Struct_1(u_input.b.x, arg_0.a.d.b);
    let var_0 = any(!select(!arg_0.b.xx, vec2<bool>(!arg_0.b.x, all(arg_0.b)), false));
    var var_1 = u_input.a;
    let var_2 = func_2(select(_wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, u_input.b), vec2<u32>(~1u, ~4294967295u), true)).a;
    let var_3 = Struct_1(func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(24592u, 28u)] * -724f))), vec4<f32>(global0[_wgslsmith_index_u32(5283u, 28u)], global0[_wgslsmith_index_u32(min(func_5(Struct_2(var_2.d, var_2.d, vec2<u32>(global1.a, var_2.a.a), arg_0.a.b), global0[_wgslsmith_index_u32(4294967295u, 28u)]).a, ~27432u), 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 28u)])), func_2(~arg_0.a.c).b.yxy).a, select(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(0i, var_2.a.b, global1.b, -1i)), vec4<i32>(_wgslsmith_sub_i32(-1i, u_input.e), 59512i, 1i, -2147483647i & u_input.e)), ~firstTrailingBit(func_2(arg_0.a.c).a.a.b), global0[_wgslsmith_index_u32(~var_2.c.x, 28u)] <= 1000f));
    return countOneBits(_wgslsmith_clamp_i32(-func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], -849f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(var_3.a, 28u)], 2162f, -835f))), !arg_0.b.yyw).b, ~max(-1i, global1.b) ^ ~(~var_2.a.b), _wgslsmith_mod_i32(arg_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, global1.b, arg_1.b), abs(vec4<i32>(1684i, var_3.b, 40531i, 1i))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b ^ func_6(Struct_3(Struct_2(Struct_1(0u, -39152i), Struct_1(22690u, global1.b), select(u_input.b, u_input.b, vec2<bool>(false, true)), Struct_1(global1.a, 38420i)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true)), func_5(Struct_2(Struct_1(u_input.c, 8457i), func_1(vec2<f32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), vec4<f32>(-809f, global0[_wgslsmith_index_u32(global1.a, 28u)], global0[_wgslsmith_index_u32(30967u, 28u)], global0[_wgslsmith_index_u32(15561u, 28u)]), vec3<bool>(true, false, true)), ~u_input.b, Struct_1(0u, u_input.e)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 28u)])))));
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    let var_1 = func_2(_wgslsmith_add_vec2_u32(u_input.b, max(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global1.a), vec2<u32>(global1.a, global1.a), u_input.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(67417u, 19884u), vec2<u32>(global1.a, 1u) ^ u_input.b)))).a.a;
    var var_2 = func_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(581f - 529f))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1.a >> (1u % 32u), 28u)], _wgslsmith_f_op_f32(step(768f, global0[_wgslsmith_index_u32(30204u, 28u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global1.a), 28u)])))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(2300u, 28u)], -117f, 1136f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(272f, -1000f, global0[_wgslsmith_index_u32(global1.a, 28u)], 121f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-837f, global0[_wgslsmith_index_u32(var_1.a, 28u)], global0[_wgslsmith_index_u32(8658u, 28u)], global0[_wgslsmith_index_u32(var_1.a, 28u)]))))))), !(!select(func_2(vec2<u32>(4294967295u, var_1.a)).b.wzy, vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-935f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.a, 28u)])) - vec2<f32>(_wgslsmith_f_op_f32(1540f * 1508f), _wgslsmith_f_op_f32(step(-251f, global0[_wgslsmith_index_u32(4294967295u, 28u)]))))), firstLeadingBit(max(max(vec2<i32>(1i, u_input.d), vec2<i32>(1i, u_input.e)), select(vec2<i32>(2147483647i, var_0), vec2<i32>(var_2.b, -1i), vec2<bool>(false, false)))) ^ -abs(~vec2<i32>(-26024i, -526i)));
}

