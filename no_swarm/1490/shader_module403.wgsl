struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: i32,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20>;

var<private> global1: array<i32, 4>;

var<private> global2: array<vec2<u32>, 15>;

var<private> global3: array<bool, 27> = array<bool, 27>(false, false, false, true, true, true, true, true, true, false, true, false, false, true, true, true, false, true, false, false, false, true, false, true, false, true, false);

var<private> global4: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> u32 {
    global0 = array<vec2<u32>, 20>();
    let var_0 = Struct_5(arg_0.a, false, -_wgslsmith_div_vec2_i32(abs(arg_0.c), vec2<i32>(global1[_wgslsmith_index_u32(51705u, 4u)], reverseBits(global1[_wgslsmith_index_u32(4294967295u, 4u)]))), select(arg_0.d, select(arg_0.d, !arg_0.d, select(!arg_0.d, arg_0.d, !arg_0.d)), false), vec3<i32>(-((12846i | global1[_wgslsmith_index_u32(21669u, 4u)]) >> (u_input.a % 32u)), -_wgslsmith_mod_i32(5262i, _wgslsmith_div_i32(arg_0.e.x, arg_0.e.x)), 1i));
    return 66369u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 20u)];
    let var_1 = any(vec2<bool>(global3[_wgslsmith_index_u32(~u_input.a >> (~(var_0.x >> (0u % 32u)) % 32u), 27u)], all(select(!vec4<bool>(global4.x, false, arg_1.x, arg_1.x), vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(u_input.a, 27u)]), vec4<bool>(global4.x, global4.x, arg_1.x, false)))));
    var var_2 = any(vec4<bool>(true, global3[_wgslsmith_index_u32(func_3(Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-843f, 1011f, arg_0.x, arg_0.x)), true, reverseBits(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 4u)], 2147483647i)), select(vec4<bool>(true, false, global4.x, true), vec4<bool>(false, arg_1.x, global3[_wgslsmith_index_u32(5804u, 27u)], global4.x), global3[_wgslsmith_index_u32(0u, 27u)]), select(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], 2147483647i, global1[_wgslsmith_index_u32(1u, 4u)]), vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), true))), 27u)], false, all(!vec4<bool>(global4.x, global3[_wgslsmith_index_u32(var_0.x, 27u)], arg_1.x, true))));
    global4 = arg_1;
    let var_3 = Struct_1(min(u_input.a, _wgslsmith_div_u32(var_0.x, 61922u)) > (16093u >> (var_0.x % 32u)), arg_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1421f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(388f))), _wgslsmith_f_op_f32(-204f * arg_0.x))), arg_1.x);
    return all(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(3616u, 4u)] <= ~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.a, 4u)], -23883i)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = -3213i >> ((abs(~29997u) >> (u_input.a % 32u)) % 32u);
    global1 = array<i32, 4>();
    var var_1 = -2147483647i;
    var var_2 = arg_3.d;
    var_1 = 6859i;
    return Struct_2(arg_3, arg_3, Struct_1(true, false == func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.c.x, 294f, arg_1), arg_3.c.zxy)), vec3<bool>(false, arg_3.a, true)), arg_3.c, any(vec4<bool>(global4.x, true, true, !global4.x))), Struct_1(all(!(!global4.xy)), ~reverseBits(u_input.a) > reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(69326u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(arg_3.c - arg_3.c), vec4<f32>(-1175f, -1324f, arg_2, arg_2))))), true), !select(!select(vec4<bool>(false, false, arg_3.d, global4.x), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 27u)], arg_3.a, global3[_wgslsmith_index_u32(u_input.a, 27u)], global3[_wgslsmith_index_u32(u_input.a, 27u)]), false), select(!vec4<bool>(false, global3[_wgslsmith_index_u32(40275u, 27u)], arg_3.d, arg_3.a), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 27u)], true, false, global4.x), true), global4.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1146f, -186f) * vec2<f32>(-1814f, 433f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(956f, -642f), vec2<f32>(1308f, 1596f)))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(1000f, 834f), _wgslsmith_div_f32(-812f, -1558f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-371f, -466f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -414f)))))), vec2<f32>(482f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -803f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1709f) * -1726f))));
    let var_1 = func_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~max(0u, 4294967295u), u_input.a), 4u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1107f * 585f), -507f)), var_0.x, Struct_1(!(72042u > u_input.a), global4.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1665f + -1000f) - _wgslsmith_f_op_f32(-1000f * 264f)), 609f, var_0.x, _wgslsmith_div_f32(-1129f, _wgslsmith_f_op_f32(-var_0.x))), true));
    let var_2 = select(~vec2<i32>(1i, max(global1[_wgslsmith_index_u32(31566u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)])), vec2<i32>(global1[_wgslsmith_index_u32(~u_input.a, 4u)], global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(63295u, u_input.a), countOneBits(u_input.a), 1375u), 4u)]), vec2<bool>(!global3[_wgslsmith_index_u32(~(~u_input.a), 27u)], !var_1.d.d));
    var var_3 = _wgslsmith_f_op_f32(1452f - var_1.d.c.x);
    var var_4 = var_1.e.xzw;
    var var_5 = Struct_5(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.d.c.x, 1965f)) * -1738f), func_1(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x, func_1(var_2.x, var_1.b.c.x, -880f, Struct_1(global3[_wgslsmith_index_u32(73654u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], vec4<f32>(var_0.x, var_1.a.c.x, var_1.c.c.x, 726f), var_4.x)).c).c.c.x, var_0.x, var_0.x))), false, (vec2<i32>(global1[_wgslsmith_index_u32(abs(4294967295u), 4u)], -1i) | vec2<i32>(-26481i >> (u_input.a % 32u), global1[_wgslsmith_index_u32(1u, 4u)] | 40792i)) << (vec2<u32>(u_input.a, ~0u) % vec2<u32>(32u)), var_1.e, vec3<i32>(1i | var_2.x, 2147483647i ^ reverseBits(-1i ^ global1[_wgslsmith_index_u32(1u, 4u)]), ~abs(-1i)));
    let var_6 = Struct_3(_wgslsmith_div_vec2_i32(-(-var_5.e.zz | _wgslsmith_div_vec2_i32(vec2<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a, 4u)]), var_2)), var_5.c));
    var var_7 = vec4<bool>(true, false, all(!(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 27u)], var_1.c.a, global4.x, global4.x))), func_1(-18619i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.c.x * var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(539f)) * var_1.a.c.x))), 1137f, func_1(var_5.c.x, func_1(global1[_wgslsmith_index_u32(~u_input.a, 4u)], _wgslsmith_f_op_f32(-var_5.a.x), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), Struct_1(global4.x, var_5.b, var_5.a, global4.x)).b.c.x, -703f, Struct_1(var_5.d.x, true, vec4<f32>(873f, -1524f, -1449f, 503f), func_2(var_5.a.wyy, var_1.e.xyx))).c).e.x);
    let var_8 = 841f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i >> (max(u_input.a, u_input.a) % 32u), _wgslsmith_div_i32(-12640i, ~var_6.a.x), select(1i, max(2147483647i, 6490i), true), ~global1[_wgslsmith_index_u32(u_input.a, 4u)] ^ 1i), ~_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(var_5.c.x, -24221i, global1[_wgslsmith_index_u32(1u, 4u)], var_2.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(58696i, global1[_wgslsmith_index_u32(u_input.a, 4u)], 29394i, global1[_wgslsmith_index_u32(1u, 4u)]), vec4<i32>(-9633i, var_2.x, 2147483647i, 1i))), reverseBits(vec4<i32>(~0i, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.a, 4u)], 14006i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -7096i, 17496i, global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<i32>(1i, var_2.x, var_2.x, var_6.a.x)), -5081i))), -269f, var_6.a.x, _wgslsmith_div_vec2_i32(countOneBits(var_5.c ^ vec2<i32>(32056i, global1[_wgslsmith_index_u32(u_input.a, 4u)])), var_6.a), func_1(-_wgslsmith_mult_i32(var_5.e.x, var_6.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.c.x - _wgslsmith_f_op_f32(floor(1019f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_8 + var_1.d.c.x)))), Struct_1(-var_5.e.x < var_5.e.x, false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2323f, -656f, 625f, -740f)) - _wgslsmith_f_op_vec4_f32(-var_5.a)), func_2(vec3<f32>(-932f, 1000f, var_8), select(vec3<bool>(false, global3[_wgslsmith_index_u32(59017u, 27u)], false), var_1.e.wzx, vec3<bool>(var_5.d.x, var_5.d.x, true))))).a.c);
}

