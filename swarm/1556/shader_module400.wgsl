struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, true);

var<private> global1: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(-1000i, 27076i, i32(-2147483648), 0i), vec4<i32>(-4610i, -20211i, 2147483647i, -1i), vec4<i32>(27077i, -16437i, 15825i, -100605i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 0i), vec4<i32>(57394i, -1i, 21406i, 0i), vec4<i32>(i32(-2147483648), -1i, 27313i, 2147483647i), vec4<i32>(2147483647i, 31307i, -4710i, 1i), vec4<i32>(-40089i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-34630i, 2147483647i, 27403i, -23794i), vec4<i32>(19585i, -2973i, -5936i, i32(-2147483648)), vec4<i32>(60409i, 38475i, 0i, i32(-2147483648)), vec4<i32>(1i, 1912i, i32(-2147483648), -6578i), vec4<i32>(43867i, -73255i, 2147483647i, -61915i), vec4<i32>(-3754i, -1i, i32(-2147483648), -1i), vec4<i32>(0i, -2231i, -1i, 1i), vec4<i32>(-7214i, 22987i, 34505i, 1i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(-74200i, -11284i, i32(-2147483648), 24487i), vec4<i32>(0i, 1i, 6049i, 45954i), vec4<i32>(77691i, -1i, -18041i, 45582i), vec4<i32>(2229i, -1i, 1i, 2147483647i), vec4<i32>(-12731i, 1i, -33976i, -70691i), vec4<i32>(0i, -1i, 35470i, -42543i), vec4<i32>(-24329i, 35628i, 0i, -5509i), vec4<i32>(-5944i, 0i, 0i, 2147483647i), vec4<i32>(21710i, -5571i, 35564i, 8468i), vec4<i32>(-18559i, -14918i, 3447i, 21024i));

var<private> global2: Struct_4 = Struct_4(Struct_3(Struct_2(49023u, 2206f, Struct_1(-277f)), Struct_1(-673f), Struct_2(38537u, -1000f, Struct_1(537f)), vec4<u32>(45769u, 11728u, 12023u, 18386u)), -296f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_4(Struct_3(global2.a.a, Struct_1(_wgslsmith_f_op_f32(-global2.a.b.a)), global2.a.a, _wgslsmith_mult_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(71761u, u_input.b, 4294967295u, global2.a.c.a), vec4<u32>(56312u, u_input.b, u_input.b, 4294967295u))), global2.a.d ^ vec4<u32>(36066u, global2.a.c.a, u_input.b, global2.a.c.a))), -2007f);
    global0 = array<bool, 3>();
    global2 = Struct_4(Struct_3(Struct_2(var_0.a.c.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b))), Struct_1(163f)), Struct_1(global2.b), Struct_2(~32167u, _wgslsmith_f_op_f32(f32(-1f) * -144f), global2.a.a.c), global2.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * 833f)));
    global1 = array<vec4<i32>, 27>();
    var var_1 = var_0.a.d.x;
    return Struct_2(~(u_input.b << (((57238u | var_0.a.d.x) << ((67774u | u_input.b) % 32u)) % 32u)), -1114f, global2.a.a.c);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = !(all(vec3<bool>(u_input.b < global2.a.a.a, all(vec4<bool>(global0[_wgslsmith_index_u32(28939u, 3u)], global0[_wgslsmith_index_u32(global2.a.a.a, 3u)], global0[_wgslsmith_index_u32(arg_1.a, 3u)], false)), !global0[_wgslsmith_index_u32(56496u, 3u)])) || (arg_0.x <= _wgslsmith_f_op_f32(-1602f + -1874f)));
    let var_1 = 1i;
    var var_2 = arg_1;
    var var_3 = 1f;
    let var_4 = countOneBits(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(1i, 11708i, -28620i)), vec3<i32>(arg_2 | arg_2, reverseBits(var_1), i32(-1i) * -2147483647i)) << (_wgslsmith_mod_u32(~abs(global2.a.c.a), _wgslsmith_dot_vec2_u32(~global2.a.d.wz, vec2<u32>(arg_1.a, global2.a.d.x))) % 32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(min(var_2.c.a, 359f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(420f))), -145f))) + _wgslsmith_f_op_f32(ceil(global2.a.b.a)));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = global2.a.d;
    let var_1 = Struct_4(Struct_3(global2.a.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1154f) * _wgslsmith_f_op_f32(global2.b - arg_0.x))), func_2(select(~(-1i), ~u_input.c.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, u_input.b), 3u)])), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global2.a.c.a, var_0.x, 7534u), vec4<u32>(global2.a.c.a, global2.a.c.a, var_0.x, global2.a.c.a)) & vec4<u32>(35024u, u_input.b, u_input.b, 0u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-arg_0.xy), global2.a.a, _wgslsmith_dot_vec3_i32(u_input.c.yyz, u_input.c.yxx)))) * _wgslsmith_f_op_f32(-arg_0.x)));
    var var_2 = global2.a.d;
    let var_3 = firstTrailingBit(countOneBits(_wgslsmith_sub_u32(1u << (_wgslsmith_add_u32(global2.a.d.x, 47488u) % 32u), reverseBits(reverseBits(4294967295u)))));
    global1 = array<vec4<i32>, 27>();
    return reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_1.a.d.zzx ^ var_1.a.d.zyy, vec3<u32>(u_input.b, 1u, 1u)) >> (~_wgslsmith_sub_u32(4294967295u, u_input.b) % 32u), _wgslsmith_sub_u32(~19074u, var_3) << (firstLeadingBit(var_1.a.a.a | var_3) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.c.c;
    global2 = Struct_4(Struct_3(Struct_2(func_1(vec3<f32>(global2.a.c.c.a, global2.a.a.b, var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(~u_input.c.x).c), Struct_1(_wgslsmith_f_op_f32(632f - _wgslsmith_f_op_f32(-var_0.a))), func_2(-firstTrailingBit(2147483647i)), global2.a.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a.b, var_0.a))), func_2(~u_input.c.x), _wgslsmith_clamp_i32(-u_input.c.x, -u_input.c.x, u_input.a.x))), _wgslsmith_f_op_f32(-var_0.a)));
    global2 = Struct_4(Struct_3(func_2(-select(47280i, u_input.c.x, global0[_wgslsmith_index_u32(1u, 3u)])), func_2(-2147483647i).c, Struct_2(4294967295u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1142f * 1439f))), global2.a.c.c), ~min(vec4<u32>(27129u, 1u, 4294967295u, u_input.b), _wgslsmith_div_vec4_u32(global2.a.d, vec4<u32>(u_input.b, global2.a.c.a, u_input.b, u_input.b)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a.a.b, -1265f)) + global2.b), _wgslsmith_f_op_f32(-1657f + -680f)) - _wgslsmith_f_op_f32(-431f + var_0.a)));
    var var_1 = Struct_4(Struct_3(global2.a.a, global2.a.b, global2.a.a, vec4<u32>(1u | _wgslsmith_sub_u32(global2.a.a.a, 41926u), u_input.b, ~u_input.b, u_input.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-102f, global2.b, false)) - -384f) - _wgslsmith_f_op_f32(ceil(-217f))))));
    var_1 = Struct_4(var_1.a, _wgslsmith_div_f32(-829f, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.b.a, var_1.b)) * 357f))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-func_2(2147483647i).c.a), var_1.a.a.c.a);
    var var_3 = ((20455i < ((2147483647i >> (u_input.b % 32u)) & _wgslsmith_mod_i32(-1i, u_input.a.x))) & true) && !(_wgslsmith_dot_vec2_i32(u_input.a.zz, -vec2<i32>(u_input.a.x, -2147483647i)) <= u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(countOneBits(global2.a.d)) & (global2.a.d & vec4<u32>(u_input.b, 0u, 43797u, 79836u)), u_input.a.x | firstTrailingBit(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.a.x & 13615i)));
}

