struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 1i, 1i, i32(-2147483648));

var<private> global1: array<vec2<u32>, 17>;

var<private> global2: f32;

var<private> global3: array<f32, 5>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = Struct_3(any(!(!vec3<bool>(arg_1.c.b.x, arg_1.c.a, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(min(1f, 1f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_1.a.x, 5u)])), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(arg_1.a), _wgslsmith_mod_vec2_u32(u_input.a.wz, arg_1.a)), vec2<u32>(25479u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, 45357u))))), 5u)], arg_2.b);
    let var_1 = global3[_wgslsmith_index_u32(select(16980u, select(4294967295u, u_input.a.x, -10898i > reverseBits(-2147483647i >> (arg_1.a.x % 32u))), true), 5u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(max(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~arg_1.a.x), ~(~arg_1.a.x)), 5u)])) - _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~reverseBits(1869u), _wgslsmith_sub_u32(_wgslsmith_div_u32(9492u, arg_1.a.x), 1u)), 5u)], -314f)));
    let var_3 = Struct_3(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-587f, 327f, arg_3) - vec3<f32>(var_2, 507f, arg_0.c))))) + vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(arg_3 - -392f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_div_f32(var_2, -800f), select(arg_0.d, vec2<bool>(!any(vec2<bool>(arg_2.b.x, arg_0.a)), var_0.a), arg_0.d.x));
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 5u)])));
    return u_input.a.x >> (firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, arg_1.a.x) >> (9498u % 32u)) % 32u);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = (~(abs(u_input.a.x) | 4294967295u) ^ firstTrailingBit(39755u | ~u_input.a.x)) ^ ~1u;
    global1 = array<vec2<u32>, 17>();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, u_input.a.x, 1u, var_0), select(vec4<u32>(1u, u_input.a.x, 33342u, 0u), u_input.a, arg_1.a)), 17u)] << (vec2<u32>(~arg_0, (arg_0 >> (u_input.a.x % 32u)) >> (0u % 32u)) % vec2<u32>(32u)), select(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 4294967295u), ~vec2<u32>(53697u, 24986u)), _wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(76220u, 17u)], _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(88039u, var_0))), all(vec3<bool>(true, true, true))) | ~(~_wgslsmith_mod_vec2_u32(u_input.a.xx, u_input.a.xy))), 5u)];
    global1 = array<vec2<u32>, 17>();
    global3 = array<f32, 5>();
    return select(!(!(!(!vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a)))), vec4<bool>(1168f > _wgslsmith_f_op_f32(sign(174f)), any(!(!vec3<bool>(arg_1.b.x, true, arg_1.a))), all(vec2<bool>(arg_1.b.x, true)), true), !arg_1.a);
}

fn func_2() -> vec2<bool> {
    var var_0 = 1u;
    let var_1 = _wgslsmith_add_u32(u_input.a.x, 34865u);
    let var_2 = u_input.a;
    var var_3 = var_2.x;
    var var_4 = func_4(firstTrailingBit(func_3(Struct_3(global3[_wgslsmith_index_u32(u_input.a.x, 5u)] < global3[_wgslsmith_index_u32(4294967295u, 5u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-325f, global3[_wgslsmith_index_u32(u_input.a.x, 5u)], global3[_wgslsmith_index_u32(u_input.a.x, 5u)])), -179f, vec2<bool>(true, true)), Struct_2(vec2<u32>(4294967295u, 77733u), vec2<bool>(true, false), Struct_1(true, vec2<bool>(false, false)), -global0.wzw, vec3<f32>(-193f, global3[_wgslsmith_index_u32(u_input.a.x, 5u)], -144f)), Struct_1(true, vec2<bool>(false, true)), global3[_wgslsmith_index_u32(~var_1, 5u)])), Struct_1(true, !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))));
    return select(select(vec2<bool>(~var_1 <= ~var_2.x, func_4(1u, Struct_1(var_4.x, vec2<bool>(var_4.x, false))).x), func_4(~(~43123u), Struct_1(true, var_4.ww)).wy, func_4(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~1u, 17u)], u_input.a.xz), Struct_1(true, select(vec2<bool>(true, true), vec2<bool>(var_4.x, true), var_4.x))).x), vec2<bool>(select(true, !func_4(0u, Struct_1(true, var_4.zx)).x, any(vec4<bool>(false, var_4.x, var_4.x, var_4.x))), (u_input.b | _wgslsmith_clamp_i32(u_input.b, u_input.b, -2147483647i)) > -8364i), all(var_4.yzy));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, select(u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, u_input.a) | vec4<u32>(5245u, 1u, 0u, 51016u), -44441i != _wgslsmith_dot_vec3_i32(vec3<i32>(-44765i, global0.x, -31334i), global0.xxx)))), 5u)];
    var var_0 = Struct_2(~u_input.a.yz, func_4(64709u | u_input.a.x, Struct_1(all(!vec3<bool>(false, arg_0.b.x, arg_0.a)), vec2<bool>(func_2().x, true))).yy, arg_0, abs(abs(vec3<i32>(global0.x, -1i, 37478i) >> (vec3<u32>(4294967295u, 1u, u_input.a.x) % vec3<u32>(32u)))) >> (u_input.a.zxw % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 5u)], -583f, global3[_wgslsmith_index_u32(1u, 5u)])))))));
    let var_1 = var_0.e.x <= _wgslsmith_f_op_f32(f32(-1f) * -310f);
    let var_2 = any(vec4<bool>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 44921u, u_input.a.x), u_input.a) != ~u_input.a.x, all(!arg_0.b) | (reverseBits(global0.x) <= _wgslsmith_dot_vec4_i32(vec4<i32>(-49535i, var_0.d.x, 2147483647i, 37600i), vec4<i32>(global0.x, -1i, 9003i, 0i))), var_0.b.x, true));
    var var_3 = Struct_2(max(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], ~min(var_0.a, var_0.a)), vec2<bool>(var_2, false | func_4(~7370u, var_0.c).x), arg_0, -vec3<i32>(2147483647i, 2147483647i, var_0.d.x) ^ (var_0.d & global0.wxx), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(803f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-682f, 1441f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1181f)))));
    return var_3.c;
}

fn func_6(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = true;
    let var_1 = Struct_3(all(vec3<bool>(true || arg_3.a, all(vec2<bool>(false, true)), global3[_wgslsmith_index_u32(select(arg_2.x, 1u, arg_3.a), 5u)] > _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 5u)]))), vec3<f32>(_wgslsmith_div_f32(-363f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -533f)))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(u_input.a.x ^ arg_2.x), 5u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 5u)]) * _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.x, arg_2.x), 5u)]))) - _wgslsmith_f_op_f32(min(-1037f, global3[_wgslsmith_index_u32(arg_2.x, 5u)]))), vec2<bool>(true, true));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -537f))))));
    global1 = array<vec2<u32>, 17>();
    global0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.b, 2147483647i, arg_1), vec4<i32>(2147483647i, u_input.b, 2147483647i, -16425i)) << (select(vec4<u32>(0u, 0u, 71592u, 4294967295u), u_input.a, false) % vec4<u32>(32u)), firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.b, arg_1, 1i, 2147483647i))))) & _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b, 2147483647i, -13901i, 17736i) << (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(-1i, arg_1, arg_0.x & u_input.b, 1i), var_1.d.x), select(~abs(vec4<i32>(u_input.b, arg_0.x, 1i, -12604i)), abs(vec4<i32>(arg_1, 1i, u_input.b, 28444i)), vec4<bool>(0i == u_input.b, !arg_3.a, func_5(Struct_1(true, var_1.d)).a, var_1.a != var_1.a)));
    return var_1;
}

fn func_7(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = vec4<u32>(firstLeadingBit(4294967295u) ^ u_input.a.x, ~1u, 0u, ~(~(4294967295u << ((u_input.a.x | u_input.a.x) % 32u))));
    let var_1 = Struct_2(var_0.wz, !vec2<bool>(true, any(!arg_2.d)), func_5(func_5(Struct_1(true, func_5(Struct_1(arg_2.a, arg_2.d)).b))), _wgslsmith_add_vec3_i32(vec3<i32>(~1i, 1i, ~_wgslsmith_add_i32(global0.x, u_input.b)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, arg_1.x), global0.yzx), global0.yxx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b) - arg_2.b)));
    var var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.b.x - -554f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)))))));
    return vec4<i32>(~max(_wgslsmith_sub_i32(arg_1.x, ~0i), 1i), 1i ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-44377i, 1i, 0i), ~vec3<i32>(2147483647i, u_input.b, u_input.b)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(11012i, 14466i, var_1.d.x, var_1.d.x), vec4<i32>(-24446i, global0.x, u_input.b, -1i)), select(global0.x, 0i, arg_2.d.x), arg_1.x)), -26980i, -2147483647i);
}

fn func_1() -> StorageBuffer {
    global0 = func_7(true, global0.xw, func_6(reverseBits(global0.zz), global0.x, min(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), select(u_input.a.zyx, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(false, true, true))) & vec3<u32>(48139u << (0u % 32u), u_input.a.x, 4294967295u), func_5(Struct_1(select(true, true, true), func_2()))));
    var var_0 = ~u_input.a.x;
    let var_1 = Struct_1(func_2().x, vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), !(!any(vec3<bool>(false, true, false)))));
    let var_2 = Struct_2(~vec2<u32>(0u, _wgslsmith_clamp_u32(u_input.a.x, countOneBits(8354u), 11149u)), var_1.b, func_5(Struct_1(true & (true & var_1.b.x), var_1.b)), func_7(!var_1.b.x, abs(countOneBits(vec2<i32>(-40146i, global0.x))), Struct_3(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-182f, global3[_wgslsmith_index_u32(27079u, 5u)], 890f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3[_wgslsmith_index_u32(58023u, 5u)], -991f, -345f), vec3<f32>(global3[_wgslsmith_index_u32(0u, 5u)], -1114f, global3[_wgslsmith_index_u32(26128u, 5u)])))), -2273f, select(!vec2<bool>(var_1.a, var_1.b.x), !var_1.b, true))).yxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(36446u, 5u)], global3[_wgslsmith_index_u32(u_input.a.x, 5u)], global3[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(9140u, 5u)], global3[_wgslsmith_index_u32(u_input.a.x, 5u)], -635f))))));
    var var_3 = Struct_3(all(var_2.c.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_2.e))) * _wgslsmith_f_op_vec3_f32(-var_2.e)), _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(~u_input.a.x << (_wgslsmith_dot_vec2_u32(~var_2.a, ~vec2<u32>(4294967295u, 14966u)) % 32u), 5u)])), vec2<bool>(global0.x < -39576i, func_4(0u, var_2.c).x));
    return StorageBuffer(~global0.x, ~vec2<u32>(~1u, abs(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-(~(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global0.x, global0.x, u_input.b), vec4<i32>(u_input.b, -25116i, u_input.b, global0.x)) << (countOneBits(vec4<u32>(1u, 229u, u_input.a.x, 5u)) % vec4<u32>(32u)))));
    global1 = array<vec2<u32>, 17>();
    let x = u_input.a;
    s_output = func_1();
}

