struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 21887u;

var<private> global1: array<bool, 14>;

var<private> global2: array<f32, 10> = array<f32, 10>(1000f, -399f, -213f, 281f, 666f, -1069f, -2066f, -553f, 376f, -1148f);

var<private> global3: array<Struct_2, 12>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(u_input.b, u_input.a, u_input.b))) << (~select(~vec3<u32>(u_input.a, u_input.a, 1u), countOneBits(vec3<u32>(4294967295u, 4294967295u, 1u)), global1[_wgslsmith_index_u32(u_input.b, 14u)] & true) % vec3<u32>(32u)), vec3<u32>(max(1u, 0u), 0u, u_input.b << (firstTrailingBit(u_input.a) % 32u)) << ((_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<u32>(1u, u_input.a, 31959u), vec3<u32>(43788u, 4294967295u, u_input.a)), firstLeadingBit(vec3<u32>(63809u, u_input.b, 55857u))) ^ abs(select(vec3<u32>(u_input.b, 4294967295u, u_input.a), vec3<u32>(u_input.a, 104u, u_input.b), false))) % vec3<u32>(32u)));
    global1 = array<bool, 14>();
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.c, global2[_wgslsmith_index_u32(4294967295u, 10u)], global4.c))))) - vec3<f32>(269f, _wgslsmith_div_f32(1536f, 1248f), global2[_wgslsmith_index_u32(abs(1u), 10u)])))));
    let var_2 = u_input.c;
    global0 = 90425u;
    return vec3<f32>(-822f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-674f, -481f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) + -126f));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    global2 = array<f32, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(arg_0.x, 2147483647i, u_input.c), u_input.c, -1i)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c, -1817f, global4.c) * vec3<f32>(987f, global2[_wgslsmith_index_u32(u_input.b, 10u)], 361f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 795f, -410f) * vec3<f32>(-973f, global4.c, global2[_wgslsmith_index_u32(31641u, 10u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], global2[_wgslsmith_index_u32(1u, 10u)], global4.c))))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.c)) + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -723f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-100f + _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(~1u, 10u)], _wgslsmith_f_op_f32(f32(-1f) * -100f)))), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.a), 10u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(346f + 1415f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 10u)], -743f)) - var_0.zx) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.yx, var_0.xy, true)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(185f, -267f)))))));
    let var_3 = Struct_1(true, -2147483647i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-542f)) * _wgslsmith_f_op_f32(f32(-1f) * -646f)))));
    return abs(firstTrailingBit(u_input.c));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    global2 = array<f32, 10>();
    global1 = array<bool, 14>();
    global1 = array<bool, 14>();
    let var_0 = abs(-_wgslsmith_dot_vec2_i32(arg_1.yx >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(arg_1.zx, min(vec2<i32>(arg_0, global4.b), vec2<i32>(arg_0, 976i)))));
    let var_1 = Struct_1(arg_3, u_input.c, -646f);
    return Struct_1(all(vec4<bool>(arg_0 >= -11171i, arg_3, arg_3, true)), arg_1.x, 1000f);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global4 = func_4(u_input.c, -vec3<i32>(0i, (-2147483647i ^ global4.b) | 1i, -func_2(vec2<i32>(global4.b, -2147483647i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c) + _wgslsmith_f_op_f32(-1000f * global2[_wgslsmith_index_u32(1u, 10u)])), global4.c)), global2[_wgslsmith_index_u32(arg_0 >> (_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 52773u), vec3<u32>(arg_0, u_input.a, 47450u))) % 32u), 10u)])), true);
    var var_0 = global4.b << (firstTrailingBit(~u_input.b) % 32u);
    var var_1 = global3[_wgslsmith_index_u32(u_input.a, 12u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.c, global4.c), vec2<f32>(global4.c, -291f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1296f) * vec2<f32>(global4.c, -808f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1557f, global2[_wgslsmith_index_u32(u_input.b, 10u)])))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 10u)], 534f), vec2<f32>(-945f, global2[_wgslsmith_index_u32(0u, 10u)]), global4.a))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c, global4.c, var_2.x)), vec3<f32>(var_2.x, var_2.x, -1324f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-362f, -836f, global4.c) - vec3<f32>(-1805f, global4.c, global4.c)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4.c, -705f, var_2.x), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global4.c, -1664f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global4.c)), 596f, -1000f) + vec3<f32>(_wgslsmith_f_op_f32(floor(global4.c)), _wgslsmith_f_op_f32(var_2.x - global4.c), _wgslsmith_f_op_f32(ceil(var_2.x)))))));
    return func_4(func_2(vec2<i32>(-46331i, -1i)), max(firstTrailingBit(~(-vec3<i32>(22084i, global4.b, global4.b))), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_1.a, 16245i) >> (vec3<u32>(u_input.b, var_1.b, 0u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-40890i, u_input.c, -23111i), vec3<i32>(-11798i, 12619i, u_input.c)), vec3<i32>(4520i, var_1.a, global4.b)) | ~(-vec3<i32>(global4.b, u_input.c, u_input.c))), _wgslsmith_f_op_f32(ceil(-1788f)), global1[_wgslsmith_index_u32(countOneBits(~_wgslsmith_div_u32(u_input.a, 0u) >> (var_1.c % 32u)), 14u)]);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<u32> {
    global4 = func_4(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-52833i, 40978i), arg_0.b), 0i), ~(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-3243i, u_input.c, -1i), vec3<i32>(49614i, u_input.c, 65031i)), -arg_2.b, -59866i)), 2375f, true);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(1i, 1i, 7243i), u_input.c, arg_2.b)).x + _wgslsmith_f_op_f32(min(644f, arg_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(48200u, 10u)] - global4.c) + _wgslsmith_f_op_f32(select(-699f, arg_2.c, true))) + _wgslsmith_f_op_f32(arg_2.c - arg_0.c)), !(arg_1.x & func_4(arg_0.b, vec3<i32>(2147483647i, arg_0.b, u_input.c), -1499f, arg_2.a).a))));
    let var_1 = Struct_2(i32(-1i) * -((0i >> (u_input.b % 32u)) | _wgslsmith_div_i32(arg_0.b, global4.b)), u_input.a, 0u);
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 1u), ~77043u), u_input.a, u_input.a, ~u_input.a | ~var_1.c) >> (~(~(~vec4<u32>(u_input.a, 1u, u_input.b, var_1.c))) % vec4<u32>(32u)), select(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 15754u, u_input.b, var_1.b), ~vec4<u32>(u_input.a, var_1.c, 4294967295u, var_1.b))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(36151u, u_input.b, u_input.a, u_input.b), vec4<u32>(u_input.a, 0u, u_input.a, var_1.c), vec4<bool>(arg_2.a, true, false, global1[_wgslsmith_index_u32(u_input.a, 14u)])) | select(vec4<u32>(var_1.c, 4294967295u, 0u, u_input.b), vec4<u32>(1u, var_1.c, u_input.b, u_input.a), true), ~vec4<u32>(var_1.c, 1u, 4414u, 21310u) << ((vec4<u32>(u_input.b, u_input.a, var_1.b, var_1.c) & vec4<u32>(var_1.c, 20458u, u_input.b, 0u)) % vec4<u32>(32u))), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], arg_0.a, false, false), vec4<bool>(false, false, false, false), true), !vec4<bool>(global4.a, arg_1.x, arg_2.a, global1[_wgslsmith_index_u32(149106u, 14u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(45867u, 14u)], arg_1.x, global1[_wgslsmith_index_u32(u_input.a, 14u)], true), vec4<bool>(true, true, arg_0.a, arg_0.a), vec4<bool>(arg_2.a, global1[_wgslsmith_index_u32(4078u, 14u)], arg_2.a, arg_1.x))), select(!vec4<bool>(true, true, global4.a, global1[_wgslsmith_index_u32(var_1.c, 14u)]), select(vec4<bool>(arg_2.a, arg_0.a, true, true), vec4<bool>(arg_1.x, true, arg_0.a, false), arg_0.a), vec4<bool>(arg_2.a, false, false, true)), vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_mod_u32(firstTrailingBit(1u << (0u % 32u)), var_1.b);
    return abs(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.c, var_1.c), vec2<u32>(var_1.b, u_input.b) | vec2<u32>(4294967295u, 15191u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 74160u) ^ vec2<u32>(6442u, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, var_1.c), vec2<u32>(0u, 0u)))), 19909u, ~(~_wgslsmith_mod_u32(var_1.c, u_input.a)), u_input.b));
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec3_u32(arg_3.yzy, vec3<u32>(1u, 1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(1482u, 17401u), ~120201u))));
    global2 = array<f32, 10>();
    let var_1 = arg_0.a;
    global2 = array<f32, 10>();
    let var_2 = vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 10u)], -1246f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(min(_wgslsmith_div_u32(~var_0.x, select(1u, u_input.a, true)), _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_3.x, u_input.b), ~21919u)), 10u)]));
    return Struct_2(-arg_1, u_input.b >> (~(~max(1u, u_input.b)) % 32u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstTrailingBit(~4294967295u), u_input.a), max(firstTrailingBit(arg_3.x ^ u_input.a), ~reverseBits(4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(global4.a, select(~0i, 2147483647i, any(vec3<bool>(false, true, global4.a))), _wgslsmith_f_op_f32(global4.c * -621f)), i32(-1i) * -global4.b, u_input.c, _wgslsmith_mult_vec4_u32(func_5(Struct_1(!global1[_wgslsmith_index_u32(u_input.b, 14u)], global4.b, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, u_input.b), 10u)]), vec2<bool>(true, !global1[_wgslsmith_index_u32(31380u, 14u)]), func_1(u_input.b)), ~abs(vec4<u32>(u_input.b, u_input.a, u_input.a, 0u))));
    var var_1 = 0u;
    global2 = array<f32, 10>();
    let var_2 = global4.a;
    var_1 = _wgslsmith_sub_u32(var_0.c, var_0.b);
    var var_3 = abs(vec4<i32>(u_input.c, var_0.a, global4.b, 1i));
    let var_4 = global4.c;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -10441i, global2[_wgslsmith_index_u32(func_6(func_1(var_0.c), abs(~1464i), 1i, ~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 62879u, u_input.b, u_input.a), vec4<u32>(u_input.a, u_input.b, 4294967295u, 42552u)))).b, 10u)], _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(28650u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)], global4.c, -544f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(var_0.c, 10u)], 1071f, global4.c, -657f)))) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(44521u, 10u)] * global4.c), _wgslsmith_f_op_f32(step(1751f, global4.c)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(4294967295u, u_input.a, 4294967295u)), 10u)])))));
}

