struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(i32(-2147483648), vec2<f32>(-763f, 643f)), Struct_1(-9720i, vec2<f32>(-819f, -149f)), Struct_1(-53188i, vec2<f32>(-806f, 811f)), Struct_1(34178i, vec2<f32>(-588f, 1207f)), Struct_1(1i, vec2<f32>(-930f, 1000f)), Struct_1(-20396i, vec2<f32>(624f, -1267f)), Struct_1(1i, vec2<f32>(-1126f, 1262f)), Struct_1(-47728i, vec2<f32>(1400f, 533f)), Struct_1(-1i, vec2<f32>(-353f, -667f)), Struct_1(8203i, vec2<f32>(1676f, -742f)), Struct_1(i32(-2147483648), vec2<f32>(486f, 432f)), Struct_1(1i, vec2<f32>(676f, 449f)), Struct_1(-1i, vec2<f32>(192f, 1313f)), Struct_1(-11843i, vec2<f32>(380f, 817f)), Struct_1(0i, vec2<f32>(291f, 685f)), Struct_1(-10944i, vec2<f32>(-1865f, 436f)), Struct_1(0i, vec2<f32>(-477f, -1692f)));

var<private> global2: array<vec4<i32>, 13>;

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, -40406i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.yy;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mod_u32(max(~var_0.x, ~var_0.x), u_input.c), _wgslsmith_mod_u32(~(~_wgslsmith_div_u32(u_input.c, var_0.x)), u_input.c >> ((~1u ^ _wgslsmith_dot_vec3_u32(u_input.a.ywx, u_input.a.xzy)) % 32u))), 17u)];
    global0 = array<i32, 15>();
    global1 = array<Struct_1, 17>();
    var var_2 = 1u;
    return global1[_wgslsmith_index_u32(~(~var_0.x), 17u)];
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(min(vec4<i32>(8955i, -1i, u_input.b.x, 26116i), vec4<i32>(2147483647i, global3.x, u_input.b.x, u_input.b.x))), ~(vec4<i32>(u_input.b.x, -2147483647i, 19920i, -2147483647i) & global2[_wgslsmith_index_u32(u_input.a.x, 13u)])), vec4<i32>(abs(1i), _wgslsmith_clamp_i32(u_input.b.x, 0i, u_input.b.x) >> (u_input.c % 32u), global0[_wgslsmith_index_u32(~u_input.a.x, 15u)], _wgslsmith_mod_i32(-8586i, 1i) << (~4294967295u % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(380f, -458f)), vec2<f32>(-525f, 480f)))));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zy, (vec2<i32>(var_0.a, var_0.a) ^ vec2<i32>(u_input.b.x, var_0.a)) & u_input.b.xy), ~(_wgslsmith_clamp_i32(-38058i, -66991i, -38601i) >> (_wgslsmith_div_u32(30666u, 101701u) % 32u))), u_input.b.zy);
    global1 = array<Struct_1, 17>();
    let var_2 = abs(9983i);
    global2 = array<vec4<i32>, 13>();
    return reverseBits(firstLeadingBit(u_input.a.x ^ 29336u)) | u_input.c;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global2 = array<vec4<i32>, 13>();
    var var_0 = _wgslsmith_mod_vec2_u32(~(~(~arg_3.zx) ^ ~u_input.a.xz), arg_3.xy);
    let var_1 = vec2<bool>(true, true);
    var var_2 = !(!select(!vec3<bool>(var_1.x, false, var_1.x), !(!vec3<bool>(var_1.x, true, var_1.x)), select(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, true, true)), vec3<bool>(var_1.x, true, var_1.x), all(vec4<bool>(false, true, var_1.x, false)))));
    global1 = array<Struct_1, 17>();
    return Struct_1(-global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.b))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2221f, -116f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_2.x)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f - arg_2.x), _wgslsmith_f_op_f32(-604f - -498f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.yy, vec2<f32>(arg_2.x, arg_0.b.x))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_2.wz))), vec2<f32>(_wgslsmith_div_f32(arg_2.x, arg_0.b.x), _wgslsmith_f_op_f32(exp2(arg_0.b.x))), any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), true)))));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-57822i, abs(min(global3.x, 11681i)), (i32(-1i) * -35342i) & ~u_input.b.x, global3.x), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)] & select(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 39080i, false), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(u_input.b.x, global3.x)), ~(-30357i)), _wgslsmith_dot_vec4_i32(~global2[_wgslsmith_index_u32(u_input.c, 13u)], _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.b.x, 10178i, global3.x), vec4<i32>(2147483647i, 6847i, 0i, 8749i))), select(7184i, _wgslsmith_mod_i32(2147483647i, 31853i), all(vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_vec2_f32(func_5(func_4(81349u ^ (44297u >> (u_input.c % 32u)), func_2(), global1[_wgslsmith_index_u32(~func_3(), 17u)], u_input.a.zxz | vec3<u32>(u_input.c, 67705u, u_input.a.x)), u_input.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(600f, 120f), _wgslsmith_f_op_f32(ceil(-179f)), _wgslsmith_f_op_f32(abs(-727f)), -341f) * vec4<f32>(_wgslsmith_f_op_f32(915f - -973f), _wgslsmith_f_op_f32(ceil(-951f)), 571f, 303f)), ~min(global2[_wgslsmith_index_u32(19562u, 13u)] | vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global3.x, global3.x, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), global2[_wgslsmith_index_u32(u_input.a.x, 13u)]))));
    global3 = min(vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(max(u_input.b, vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global3.x, 1i))), vec3<i32>(_wgslsmith_mult_i32(global3.x, 13714i), -52346i, u_input.b.x)), func_2().a), ~_wgslsmith_div_vec2_i32(vec2<i32>(24740i, 22774i) & vec2<i32>(18721i, global3.x), _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], 57156i), vec2<i32>(0i, -1i))) & u_input.b.yy);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1576f, var_0.b.x, _wgslsmith_f_op_f32(1264f - 643f), var_0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1036f, var_0.b.x, 482f, var_0.b.x) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, 482f, var_0.b.x, 1027f), vec4<f32>(var_0.b.x, 1296f, -1106f, -700f)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.x, -2357f, var_0.b.x, -402f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, var_0.b.x, -330f, var_0.b.x), vec4<f32>(var_0.b.x, -1207f, 368f, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1654f, -1753f, -1954f, -1222f))))));
    var var_2 = var_0.b.x;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_0.b.x, _wgslsmith_f_op_f32(854f * var_0.b.x), 970f);
    return (u_input.c << (_wgslsmith_sub_u32(~u_input.c, u_input.c) % 32u)) & u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(func_1(), 17u)];
    global3 = u_input.b.yy;
    global1 = array<Struct_1, 17>();
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~u_input.a, abs(~u_input.a)), u_input.b.xy, abs(reverseBits(-20218i << (0u % 32u))));
}

