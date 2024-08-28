struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(2560f, -296f, 434f);

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(-80540i, -9145i), vec2<bool>(false, false), 64786u, 26439i);

var<private> global3: array<f32, 26>;

var<private> global4: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-1000f, -368f, -792f, -394f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(~vec2<i32>(-(arg_1.x ^ -2147483647i), -1i), vec2<bool>(all(!select(global2.b, vec2<bool>(false, global2.b.x), global2.b)), global2.b.x), ~global2.c, 1i);
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.c, 3u)] - global0[_wgslsmith_index_u32(arg_1.c, 3u)]) - _wgslsmith_f_op_f32(select(1562f, global3[_wgslsmith_index_u32(20300u, 26u)], true)))))), -949f, global0[_wgslsmith_index_u32(~4294967295u, 3u)]);
    let var_1 = select(~(-vec3<i32>(global2.d >> (global2.c % 32u), u_input.a.x ^ u_input.a.x, ~2147483647i)), u_input.a, vec3<bool>(!(true & global2.b.x) | true, arg_0.b.x, !arg_1.b.x));
    global3 = array<f32, 26>();
    var var_2 = ~arg_0.d;
    global1 = -max(1i, reverseBits(firstTrailingBit(var_1.x) | _wgslsmith_mod_i32(12376i, 2147483647i)));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-15108i, 0i, ~min(firstTrailingBit(0i), 2147483647i), u_input.a.x), -vec4<i32>(-2147483647i, _wgslsmith_add_i32(firstTrailingBit(arg_0.d), 1i), _wgslsmith_clamp_i32(var_1.x, var_1.x, min(arg_0.a.x, 0i)), max(_wgslsmith_dot_vec2_i32(vec2<i32>(29731i, -2147483647i), vec2<i32>(var_1.x, arg_0.a.x)), -12670i)));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_1(vec2<i32>(-func_3(func_1(vec4<f32>(-1064f, -1513f, global0[_wgslsmith_index_u32(u_input.b, 3u)], 1046f), vec4<i32>(-13567i, 16434i, global2.d, global2.a.x)), Struct_1(u_input.a.zz, global2.b, 110542u, -1i)), select(_wgslsmith_add_i32(-1i, u_input.a.x) & -39948i, _wgslsmith_mult_i32(70200i, global2.d) << (select(2094u, global2.c, false) % 32u), true)), select(!vec2<bool>(global2.b.x, true), global2.b, global2.b), max(4755u, 79964u), -(~(i32(-1i) * -global2.a.x)));
    let var_1 = Struct_1(u_input.a.zz, !(!vec2<bool>(true, var_0.b.x)), max(global2.c, 0u), -1i);
    var var_2 = _wgslsmith_sub_u32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(global4[_wgslsmith_index_u32(65754u, 1u)], vec4<f32>(899f, 375f, -343f, global0[_wgslsmith_index_u32(35482u, 3u)]))))) - global4[_wgslsmith_index_u32(45161u, 1u)]), -(~(-vec4<i32>(global2.a.x, var_1.d, var_0.d, -2147483647i)))).c, abs(1u));
    let var_3 = (func_3(Struct_1(var_0.a, vec2<bool>(true, false), arg_0.x, _wgslsmith_sub_i32(var_1.d, global2.d)), var_1) ^ ((countOneBits(u_input.a.x) ^ (var_1.a.x >> (90244u % 32u))) >> (_wgslsmith_div_u32(var_0.c & var_1.c, 1u) % 32u))) & _wgslsmith_mod_i32(min(var_0.d, -_wgslsmith_clamp_i32(var_0.a.x, u_input.a.x, 41174i)), global2.a.x);
    var_0 = Struct_1(_wgslsmith_mult_vec2_i32(~vec2<i32>(min(var_0.d, global2.d), ~(-20399i)), min(~max(vec2<i32>(var_3, 18548i), global2.a), -var_0.a)), select(select(!vec2<bool>(global2.b.x, var_1.b.x), global2.b, func_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3[_wgslsmith_index_u32(1u, 26u)], -583f, global3[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(arg_0.x, 3u)]))), ~vec4<i32>(global2.d, u_input.a.x, 54449i, 1i)).b), vec2<bool>(var_0.b.x, global2.b.x), true), var_0.c, -(~36463i) >> (func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(4294967295u, 1u)])), global4[_wgslsmith_index_u32(~67638u, 1u)])), vec4<i32>(u_input.a.x & -1i, abs(u_input.a.x), global2.a.x << (arg_0.x % 32u), 1i)).c % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(79164u, 26u)])))), global3[_wgslsmith_index_u32(122229u, 26u)], !(!global2.b.x))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.a.zx, select(vec2<bool>(true, true), global2.b, global2.b.x), ~abs(global2.c), 1i);
    let var_1 = _wgslsmith_f_op_f32(floor(362f));
    let var_2 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(abs(var_0.d), -4860i), global2.b, _wgslsmith_add_u32(~min(var_0.c | 42048u, ~var_0.c), u_input.b), ~_wgslsmith_add_i32(-16246i, var_0.a.x));
    global0 = array<f32, 3>();
    var_0 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(-1i, var_2.d >> (var_2.c % 32u)) << (~var_0.c % 32u), 63980i), global2.b, global2.c, -2147483647i);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~0u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, ~5751u, 0u), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(global2.c, u_input.b, u_input.b)), ~vec3<u32>(global2.c, 1u, 98584u))), abs(u_input.b), u_input.b);
    let var_1 = vec3<i32>(2147483647i, 35432i, _wgslsmith_clamp_i32(~u_input.a.x, u_input.a.x, 5148i));
    var var_2 = func_1(vec4<f32>(-499f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.c, 26u)]), 675f), -143f, global0[_wgslsmith_index_u32(var_0.x, 3u)]), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~firstLeadingBit(vec4<i32>(global2.d, -36117i, u_input.a.x, 1i)), _wgslsmith_div_vec4_i32(select(vec4<i32>(global2.d, u_input.a.x, global2.a.x, 0i), vec4<i32>(-12957i, var_1.x, var_1.x, global2.a.x), vec4<bool>(global2.b.x, false, true, global2.b.x)), vec4<i32>(0i, -1i, u_input.a.x, global2.d))), select(~(vec4<i32>(60053i, 15699i, global2.d, var_1.x) >> (vec4<u32>(1u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), -vec4<i32>(55968i, var_1.x, global2.a.x, u_input.a.x), !select(vec4<bool>(global2.b.x, global2.b.x, true, global2.b.x), vec4<bool>(false, false, true, false), false))));
    var var_3 = true;
    let var_4 = Struct_1(~var_2.a, var_2.b, 1u, -11048i);
    let var_5 = func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(493f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(func_2(vec2<u32>(47528u, 0u) & var_0.xx))), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(14685u, var_4.c, global2.c), vec3<u32>(1u, 0u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(global2.c, 129696u, var_2.c), vec3<u32>(10350u, 1u, var_2.c))), 26u)])), global0[_wgslsmith_index_u32(33384u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f) - vec2<f32>(500f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, var_2.c), 3u)]))));
    var var_6 = -1114f;
    let var_7 = _wgslsmith_f_op_f32(func_2(vec2<u32>(firstLeadingBit(var_0.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(31562u, 1u, var_4.c), vec3<u32>(4294967295u, var_5.c, var_0.x)), ~18707u) | ~var_5.c)));
    var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_5.c, 3u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-239f - _wgslsmith_f_op_f32(-728f - var_7)) * var_7), vec2<u32>(select(1u, ~var_2.c ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_4.c, global2.c, var_5.c), vec4<u32>(u_input.b, 4294967295u, u_input.b, var_4.c)), false), ~0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(var_5.c, 1u)])) * global4[_wgslsmith_index_u32(0u, 1u)])), global2.c);
}

