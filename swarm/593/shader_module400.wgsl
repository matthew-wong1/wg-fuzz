struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 11>;

var<private> global3: vec2<f32>;

var<private> global4: array<bool, 31> = array<bool, 31>(true, false, true, true, true, true, true, true, false, true, true, false, false, false, false, true, true, true, true, true, true, false, false, false, true, false, true, false, false, false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<bool> {
    return arg_0.b.b;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    global3 = _wgslsmith_f_op_vec2_f32(select(arg_2.b.c.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-507f, _wgslsmith_f_op_f32(267f + arg_2.b.c.x)))), global1.b.b.xy));
    let var_0 = Struct_1(arg_2.b.a, func_2(Struct_2(4294967295u, Struct_1(119816i, !vec4<bool>(true, true, arg_2.d.x, arg_1), arg_2.b.c), !select(vec3<bool>(arg_3.b.b.x, arg_2.c.x, true), vec3<bool>(arg_1, false, true), true), !arg_3.b.b.zw), u_input.a, vec4<f32>(arg_3.b.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-635f, 728f)))), _wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(f32(-1f) * -1272f)), Struct_1(_wgslsmith_add_i32(~arg_3.b.a, arg_3.b.a), select(!vec4<bool>(true, false, arg_2.c.x, true), func_2(arg_3, vec3<u32>(7291u, 4294967295u, global1.a), vec4<f32>(global1.b.c.x, 663f, 1298f, global1.b.c.x), global1.b), !arg_3.b.b), arg_3.b.c)), global1.b.c);
    global1 = Struct_2(~(~(firstTrailingBit(u_input.a.x) & ~133237u)), global2[_wgslsmith_index_u32((arg_0 | arg_3.a) & arg_2.a, 11u)], func_2(Struct_2(firstTrailingBit(~arg_0), Struct_1(global1.b.a | global1.b.a, !arg_2.b.b, vec4<f32>(var_0.c.x, 339f, arg_2.b.c.x, arg_3.b.c.x)), vec3<bool>(true, !var_0.b.x, true), vec2<bool>(true, true)), select(vec3<u32>(0u, arg_0, arg_0), ~vec3<u32>(global1.a, 50505u, 0u), any(var_0.b)) & u_input.a, arg_3.b.c, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3.a, abs(0u >> (u_input.a.x % 32u))), 11u)]).zyw, func_2(Struct_2(21415u, arg_2.b, vec3<bool>(func_2(arg_2, vec3<u32>(4294967295u, 0u, 46056u), vec4<f32>(arg_2.b.c.x, 442f, 1000f, var_0.c.x), global2[_wgslsmith_index_u32(20348u, 11u)]).x, all(arg_2.d), false), !(!arg_2.d)), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 41297u)), ~vec3<u32>(u_input.a.x, arg_0, 26637u), u_input.a), global1.b.c, arg_3.b).zy);
    global2 = array<Struct_1, 11>();
    var var_1 = Struct_3(Struct_2(114618u, var_0, arg_3.b.b.xzz, select(!arg_2.c.xy, vec2<bool>(any(arg_3.d), true), _wgslsmith_sub_i32(var_0.a, arg_2.b.a) >= ~1i)), arg_3.b.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.a.b.c.zw)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = true;
    global3 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, arg_0.a.a))), u_input.a), true, Struct_2(1u, Struct_1(0i, arg_0.a.b.b, _wgslsmith_f_op_vec4_f32(-global1.b.c)), vec3<bool>(arg_1.b.b.x, false, any(!global1.c.zz)), select(select(arg_0.a.c.zx, arg_0.a.d, select(vec2<bool>(true, false), global1.c.xy, vec2<bool>(true, true))), arg_0.a.c.yy, _wgslsmith_f_op_f32(select(arg_0.a.b.c.x, arg_0.a.b.c.x, arg_0.a.d.x)) < _wgslsmith_f_op_f32(round(global3.x)))), Struct_2(~(96887u & arg_0.a.a) >> (u_input.a.x % 32u), Struct_1(-1i, select(func_2(arg_1, u_input.a, vec4<f32>(arg_0.a.b.c.x, -1000f, global1.b.c.x, arg_1.b.c.x), Struct_1(arg_1.b.a, global1.b.b, arg_0.a.b.c)), func_2(arg_1, u_input.a, arg_0.a.b.c, arg_0.a.b), !global1.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global1.b.c, global1.b.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(206f, 1249f, 228f, arg_1.b.c.x) * arg_1.b.c))), vec3<bool>(select(false, all(arg_1.b.b), all(global1.b.b)), arg_1.c.x, arg_0.a.a > arg_1.a), vec2<bool>(!(arg_0.a.b.b.x != true), all(vec4<bool>(arg_0.a.b.b.x, false, arg_1.b.b.x, true))))));
    global2 = array<Struct_1, 11>();
    global1 = arg_1;
    let var_1 = ~(~reverseBits(firstTrailingBit(firstTrailingBit(vec4<u32>(arg_0.a.a, arg_1.a, 0u, arg_0.a.a)))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(countOneBits(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 6645u), global1.a)), firstLeadingBit(u_input.a.x)) << ((_wgslsmith_sub_vec2_u32(vec2<u32>(func_1(Struct_3(Struct_2(1u, Struct_1(global1.b.a, global1.b.b, vec4<f32>(186f, global1.b.c.x, -400f, global1.b.c.x)), global1.b.b.wwz, vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 31u)])), global1.b.a), Struct_2(75117u, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global1.c, global1.c.yy)), 1u << (global1.a % 32u)), firstTrailingBit(u_input.a.xy)) ^ _wgslsmith_sub_vec2_u32(abs(u_input.a.zz & vec2<u32>(0u, global1.a)), u_input.a.zz)) % vec2<u32>(32u));
    var var_1 = Struct_2(func_1(Struct_3(Struct_2(firstTrailingBit(80232u), global1.b, global1.c, select(global1.c.yy, global1.c.zz, global1.c.xy)), -global1.b.a), Struct_2(~_wgslsmith_clamp_u32(1u, var_0.x, var_0.x), global1.b, !vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 31u)], false, global1.b.b.x), vec2<bool>(global4[_wgslsmith_index_u32(func_1(Struct_3(Struct_2(55717u, global1.b, global1.c, vec2<bool>(true, global1.c.x)), global1.b.a), Struct_2(var_0.x, global0[_wgslsmith_index_u32(1u, 12u)], vec3<bool>(true, true, global1.c.x), global1.b.b.ww)), 31u)], func_2(Struct_2(global1.a, Struct_1(0i, global1.b.b, vec4<f32>(527f, global3.x, -1620f, -158f)), global1.c, global1.c.yx), vec3<u32>(66827u, 53168u, var_0.x), global1.b.c, Struct_1(global1.b.a, vec4<bool>(global1.c.x, global4[_wgslsmith_index_u32(1u, 31u)], false, global4[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec4<f32>(-1467f, -464f, global3.x, -571f))).x))), Struct_1(-2352i, !func_2(Struct_2(0u, Struct_1(global1.b.a, vec4<bool>(false, global1.d.x, global4[_wgslsmith_index_u32(global1.a, 31u)], false), global1.b.c), vec3<bool>(global1.c.x, global4[_wgslsmith_index_u32(global1.a, 31u)], global1.b.b.x), vec2<bool>(global4[_wgslsmith_index_u32(40780u, 31u)], false)), u_input.a, _wgslsmith_f_op_vec4_f32(-global1.b.c), Struct_1(global1.b.a, vec4<bool>(global1.c.x, true, false, global4[_wgslsmith_index_u32(1u, 31u)]), global1.b.c)), vec4<f32>(global1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c.x)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))))), func_2(Struct_2(~1u, global1.b, global1.b.b.xyw, select(vec2<bool>(false, global4[_wgslsmith_index_u32(var_0.x, 31u)]), !global1.d, global1.b.a <= -2147483647i)), u_input.a, global1.b.c, Struct_1(firstLeadingBit(global1.b.a), !vec4<bool>(true, true, global4[_wgslsmith_index_u32(u_input.a.x, 31u)], true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 394f, 1504f, 589f) - global1.b.c)))).yxy, vec2<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_3(u_input.a.x, false, Struct_2(global1.a, global0[_wgslsmith_index_u32(global1.a, 12u)], vec3<bool>(global1.d.x, global1.c.x, false), global1.b.b.wy), Struct_2(51194u, global1.b, vec3<bool>(true, global1.b.b.x, global4[_wgslsmith_index_u32(var_0.x, 31u)]), global1.b.b.xw))).x, 1510f, global3.x <= global3.x)) <= global1.b.c.x, !all(global1.b.b)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.b.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global1.b.c.x, global3.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1490f, -1000f, global3.x, var_1.b.c.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b.c.x * var_1.b.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(1u, true, Struct_2(22814u, global1.b, global1.b.b.zzx, vec2<bool>(false, false)), Struct_2(var_0.x, Struct_1(-33659i, vec4<bool>(false, global1.c.x, global4[_wgslsmith_index_u32(u_input.a.x, 31u)], false), vec4<f32>(2202f, var_1.b.c.x, -1067f, 887f)), global1.c, global1.d))).x), -355f, _wgslsmith_f_op_f32(-global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.a, -1i, var_1.b.a, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(global1.b.a, -2147483647i, var_1.b.a, 1i), vec4<i32>(global1.b.a, 17960i, global1.b.a, -2147483647i))), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.a, global1.b.a), vec2<i32>(var_1.b.a, var_1.b.a)) << (_wgslsmith_sub_u32(u_input.a.x, 4294967295u) % 32u)));
}

