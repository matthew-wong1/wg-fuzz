struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(2078f, 1040f, 353f, -1000f));

var<private> global1: vec4<f32> = vec4<f32>(2841f, -1000f, 1816f, 742f);

var<private> global2: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(71643u, 1u, 20045u), vec3<u32>(21772u, 1u, 10087u), vec3<u32>(0u, 0u, 81806u), vec3<u32>(62084u, 60662u, 31144u), vec3<u32>(4568u, 0u, 1u), vec3<u32>(1u, 4294967295u, 650u), vec3<u32>(48181u, 26159u, 4294967295u), vec3<u32>(35976u, 3985u, 0u), vec3<u32>(50878u, 0u, 1u), vec3<u32>(20529u, 1u, 0u));

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-1000f, 172f, 1038f, -412f));

var<private> global4: array<vec4<bool>, 26>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    global4 = array<vec4<bool>, 26>();
    return _wgslsmith_f_op_f32(-global0.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> vec4<f32> {
    let var_0 = abs(u_input.d.yy);
    global2 = array<vec3<u32>, 10>();
    var var_1 = arg_2.xxz;
    global0 = arg_0;
    var var_2 = 631f;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, 1424f, arg_1, global0.a.x), global3.a)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.x, 360f, arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, 175f, global3.a.x, arg_1) - vec4<f32>(131f, -723f, global1.x, -1339f))))))));
}

fn func_2(arg_0: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), global0.a.x)))), global1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global0.a.x) * _wgslsmith_f_op_f32(trunc(global3.a.x)))))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(min(global3.a, vec4<f32>(global3.a.x, global0.a.x, 165f, var_0.x)))), _wgslsmith_f_op_f32(950f * _wgslsmith_f_op_f32(func_3(vec4<i32>(arg_0, u_input.b.x, arg_0, 23376i), Struct_1(vec4<f32>(-1214f, 202f, -318f, -949f))))), select(!global4[_wgslsmith_index_u32(28692u, 26u)], global4[_wgslsmith_index_u32(u_input.c.x, 26u)], all(vec4<bool>(true, true, true, false)))))));
    var var_1 = firstLeadingBit(global2[_wgslsmith_index_u32(abs(u_input.a | 0u), 10u)]) ^ abs(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(13309u, 19125u), u_input.c)), select(abs(vec2<u32>(u_input.c.x, 71047u)), countOneBits(u_input.c), any(vec3<bool>(true, false, true)))), 10u)]);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global3.a))));
    var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(reverseBits(var_1.xx), vec2<u32>(4294967295u, 0u) << (u_input.c % vec2<u32>(32u))), select(1u, _wgslsmith_sub_u32(u_input.c.x, countOneBits(4294967295u)), (u_input.a <= var_1.x) | true)), 45584u, 0u);
    return ~_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, 21153u), vec2<u32>(~var_1.x, firstTrailingBit(0u) | 60881u));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_1 {
    global2 = array<vec3<u32>, 10>();
    var var_0 = min(select(vec2<i32>(-1i) * -select(vec2<i32>(u_input.b.x, -1i), vec2<i32>(-2732i, u_input.b.x), vec2<bool>(arg_1.x, arg_1.x)), _wgslsmith_div_vec2_i32(min(-vec2<i32>(16888i, u_input.d.x), -u_input.b), u_input.b), arg_1.yz), vec2<i32>(u_input.b.x, abs(u_input.d.x) << (~4294967295u % 32u)) >> (max(abs(~u_input.c), ~func_2(24684i)) % vec2<u32>(32u)));
    return Struct_1(vec4<f32>(1f, arg_2.x, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.x, global1.x))), -526f));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = reverseBits(u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(func_4(arg_1, _wgslsmith_f_op_f32(ceil(global0.a.x)), !global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(0u, 4294967295u, 42420u, 1u)), reverseBits(vec4<u32>(u_input.c.x, arg_0.x, u_input.c.x, 1123u) ^ arg_0)), 26u)])).x;
    var var_2 = u_input.d;
    var var_3 = arg_1;
    var var_4 = func_1(var_3.a, vec3<bool>(!(any(vec4<bool>(false, false, false, true)) & true), any(vec3<bool>(false, var_2.x > var_2.x, true)), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(94671u, 10u)] << (vec3<u32>(1u, 1u, 68556u) % vec3<u32>(32u)), vec3<u32>(0u, arg_0.x, 79841u)) > 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_3.a.xw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global3.a.xw)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a.xw * vec2<f32>(global3.a.x, -355f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(var_3.a.zz, vec2<f32>(-323f, arg_2.a.x), false)))))));
    return Struct_1(vec4<f32>(var_4.a.x, 1652f, _wgslsmith_f_op_vec4_f32(func_4(arg_2, _wgslsmith_f_op_f32(func_3(-vec4<i32>(2147483647i, u_input.b.x, var_0, var_0), Struct_1(vec4<f32>(var_4.a.x, global3.a.x, -1380f, var_3.a.x)))), global4[_wgslsmith_index_u32(~14113u, 26u)])).x, arg_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global3.a * global3.a)));
    global0 = func_5(~vec4<u32>(_wgslsmith_clamp_u32(~u_input.c.x, 38848u & u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), u_input.c)), ~(~31951u), ~1u, select(18089u << (0u % 32u), select(10358u, 4294967295u, true), true)), func_1(global3.a, vec3<bool>(select(true, true, true), true, _wgslsmith_f_op_f32(global1.x * 565f) <= global0.a.x), _wgslsmith_f_op_vec2_f32(-global0.a.zy)), func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a), _wgslsmith_div_vec4_f32(vec4<f32>(global3.a.x, 660f, -1288f, -2035f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global1.x, global3.a.x, 253f)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), global3.a.yx), global0.a.xy);
    global3 = func_5(~min(select(vec4<u32>(9115u, 0u, u_input.c.x, u_input.a), vec4<u32>(4294967295u, 2610u, u_input.c.x, 4294967295u), global4[_wgslsmith_index_u32(65149u, 26u)]), reverseBits(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.c.x))) ^ select(firstLeadingBit(vec4<u32>(u_input.c.x, 45584u, u_input.c.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 16422u, 0u), vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x) << (vec4<u32>(u_input.c.x, 47709u, u_input.a, u_input.a) % vec4<u32>(32u)), countOneBits(vec4<u32>(36534u, 4294967295u, 45451u, u_input.a))), select(global4[_wgslsmith_index_u32(reverseBits(23035u), 26u)], vec4<bool>(true, false, true, false), global1.x > 404f)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<i32>(-23952i, u_input.d.x, u_input.b.x, 23370i), Struct_1(vec4<f32>(global3.a.x, global0.a.x, 1595f, 1292f)))), _wgslsmith_f_op_f32(2170f + global3.a.x), _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(434f + global0.a.x)) * _wgslsmith_f_op_vec4_f32(-global0.a))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global3.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -665f), global0.a))))), vec2<f32>(-734f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_4(func_5(vec4<u32>(0u, 49696u, u_input.a, 3049u), Struct_1(global3.a), Struct_1(vec4<f32>(1975f, -837f, -130f, -918f)), vec2<f32>(global3.a.x, global1.x)), 1f, vec4<bool>(true, false, false, false))).x, 234f))));
    let var_0 = func_5(~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(41350u, u_input.c.x, 0u, 1u) << (vec4<u32>(34467u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), ~vec4<u32>(13358u, u_input.a, 0u, 0u))), func_5(~vec4<u32>(u_input.c.x, u_input.a, 0u, u_input.c.x), Struct_1(global3.a), func_1(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-1000f - global3.a.x), _wgslsmith_f_op_f32(110f - global1.x), global3.a.x), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1361f, global3.a.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, 1009f)))), global1.zy), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-538f - global1.x), global1.x)), vec3<bool>(any(vec2<bool>(true, false)), !(u_input.d.x <= u_input.d.x), false), global0.a.zx), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(func_1(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(global3.a), -1461f, vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, global0.a.x)))).a.x, -1065f))));
    var var_1 = all(select(select(vec3<bool>(1388f >= global0.a.x, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1780i, -51026i), u_input.b) < ~(i32(-1i) * -2147483647i)));
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_div_i32(_wgslsmith_div_i32(1i, 27283i), -33402i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(select(min(u_input.a >> (u_input.a % 32u), ~u_input.a), 19520u, any(vec2<bool>(true, true))), firstTrailingBit(min(u_input.c.x >> (0u % 32u), u_input.a ^ u_input.c.x))), u_input.c.x);
}

