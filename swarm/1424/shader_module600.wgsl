struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: vec4<f32>;

var<private> global2: vec4<bool>;

var<private> global3: array<bool, 10> = array<bool, 10>(true, false, false, false, false, false, true, true, false, true);

var<private> global4: array<Struct_2, 28>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> u32 {
    var var_0 = -select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.c.x, u_input.a, u_input.a, u_input.c.x) >> (vec4<u32>(u_input.e, 0u, u_input.e, 44933u) % vec4<u32>(32u))), -u_input.c.x, u_input.a, u_input.d), countOneBits(reverseBits(-vec4<i32>(u_input.a, -9366i, 7000i, u_input.d))), !(!global3[_wgslsmith_index_u32(u_input.e | u_input.e, 10u)]));
    var var_1 = select(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.b, 47063u)), min(min(vec2<u32>(0u, u_input.e), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, u_input.b)))), vec2<u32>(_wgslsmith_add_u32(1u, ~u_input.b), 12956u), !all(select(global2.ww, vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 10u)]), global0[_wgslsmith_index_u32(1u, 17u)]))) & vec2<u32>(1u, u_input.b);
    let var_2 = Struct_1(!global2.x);
    let var_3 = countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, max(0i, u_input.d), -16442i, -1i), (vec4<i32>(u_input.d, -68277i, 2147483647i, u_input.d) & vec4<i32>(u_input.d, var_0.x, 91i, var_0.x)) >> (vec4<u32>(25420u, var_1.x, 0u, var_1.x) % vec4<u32>(32u))), min(select(reverseBits(vec4<i32>(-84166i, 16525i, -4991i, -2147483647i)), -vec4<i32>(-8206i, -73330i, 2147483647i, var_0.x), vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 5017i, var_0.x, 2147483647i) >> (vec4<u32>(73166u, u_input.b, 0u, u_input.b) % vec4<u32>(32u)), vec4<i32>(1i, var_0.x, var_0.x, 2147483647i)))));
    let var_4 = select(~max(abs(select(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, 1u), global0[_wgslsmith_index_u32(var_1.x, 17u)])), select(vec2<u32>(23890u, var_1.x), ~vec2<u32>(var_1.x, 1u), any(global2.yxw))), (vec2<u32>(7398u, 0u) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(u_input.e, u_input.b, var_1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 15212u, var_1.x), vec4<u32>(0u, 4294967295u, 31833u, 18579u))) % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_u32(max(~vec2<u32>(var_1.x, 4294967295u), countOneBits(vec2<u32>(29417u, var_1.x))), vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(45554u, u_input.e)) << (vec2<u32>(107112u, 63818u) % vec2<u32>(32u))), !select(global2.xy, vec2<bool>(true, false), global2.xw));
    return var_1.x | 4294967295u;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = arg_0.b;
    var var_1 = vec2<u32>(_wgslsmith_dot_vec2_u32(abs(reverseBits(vec2<u32>(19210u, arg_0.a))), ~(~vec2<u32>(arg_0.a, 57389u))) | 20405u, abs(4294967295u));
    let var_2 = select(~vec4<u32>(var_1.x, _wgslsmith_mult_u32(arg_0.a, min(arg_0.a, 46464u)), 10850u, ~firstTrailingBit(128291u)), abs(vec4<u32>(88266u, _wgslsmith_dot_vec4_u32(vec4<u32>(73532u, 30408u, u_input.e, var_1.x), vec4<u32>(31722u, var_1.x, 0u, u_input.e) >> (vec4<u32>(18001u, u_input.e, 36010u, u_input.e) % vec4<u32>(32u))), 1u, func_3())), any(vec4<bool>(false, false, !arg_0.b.a, all(vec4<bool>(false, arg_0.b.a, arg_0.b.a, false)))));
    var var_3 = Struct_2((~_wgslsmith_dot_vec2_u32(var_2.yw, var_2.wx) >> (1337u % 32u)) << ((u_input.e ^ 4294967295u) % 32u), arg_0.b);
    let var_4 = ~u_input.e;
    return Struct_2(87518u >> (1u % 32u), var_3.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(u_input.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5402i, 0i, u_input.c.x, -2147483647i) | vec4<i32>(u_input.d, -38203i, 0i, 26061i), -vec4<i32>(u_input.a, -11507i, 22390i, 27703i)), firstTrailingBit(0i & u_input.d))), ~(-2147483647i), u_input.c.x, -36305i);
    global0 = array<vec2<bool>, 17>();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), global1.x)))))) != global1.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-837f, _wgslsmith_f_op_f32(max(326f, 1000f))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(-360f * -413f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.zy)))));
    let var_3 = !vec4<bool>(global3[_wgslsmith_index_u32(arg_0.a, 10u)], arg_0.b.a, true, arg_0.b.a);
    return func_2(Struct_2(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, ~71029u), ~u_input.e), Struct_1(arg_0.b.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.x + global1.x), global1.x)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(618f * _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-424f)), global1.x)))), global1.x, global1.x);
    var var_1 = arg_0.xy;
    let var_2 = 32122u;
    let var_3 = true;
    var var_4 = func_4(func_2(Struct_2(var_1.x, arg_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.zw - vec2<f32>(-1450f, var_0.x))))), !global2.zwz);
    return func_2(Struct_2(31192u, Struct_1(var_3)), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * 1000f))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = ~0u ^ ~(arg_2.a << (arg_2.a % 32u));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_div_u32(u_input.b, var_1.a);
    var_0 = func_3();
    let var_3 = ~(-2147483647i);
    return !(!(!(!select(vec4<bool>(arg_1.x, true, arg_2.b.a, arg_2.b.a), vec4<bool>(global3[_wgslsmith_index_u32(arg_2.a, 10u)], true, false, arg_1.x), arg_2.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 10>();
    global2 = !(!(!vec4<bool>(global2.x, !global2.x, false & global3[_wgslsmith_index_u32(11949u, 10u)], global2.x & true)));
    var var_0 = ~(-10071i);
    global2 = select(select(func_5(_wgslsmith_clamp_vec2_i32(u_input.c.xx, vec2<i32>(-1i, 14739i), -u_input.c.zy), global2.yyx, func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.e, u_input.e), vec3<u32>(96235u, u_input.b, u_input.e)), Struct_1(true))), !(!select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 10u)], global2.x, global3[_wgslsmith_index_u32(1u, 10u)], true), vec4<bool>(global3[_wgslsmith_index_u32(40394u, 10u)], global2.x, false, false), vec4<bool>(global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)], global2.x, false))), any(global2.yxz) & (global1.x >= _wgslsmith_f_op_f32(f32(-1f) * -546f))), vec4<bool>((u_input.e > _wgslsmith_add_u32(4294967295u, u_input.b)) & true, false, false, !func_1(vec3<u32>(u_input.b, 0u, 1u) >> (vec3<u32>(0u, 4294967295u, u_input.b) % vec3<u32>(32u)), func_2(global4[_wgslsmith_index_u32(0u, 28u)], global1.yz).b).b.a), vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 10u)], false, func_5(u_input.c.xx, !(!global2.xxy), func_2(global4[_wgslsmith_index_u32(54083u, 28u)], _wgslsmith_f_op_vec2_f32(global1.yx - global1.xx))).x));
    global2 = !(!vec4<bool>(true, false, global2.x, true));
    var var_1 = -(~(~u_input.a) ^ 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(644f, global1.x) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global1.x)), vec2<f32>(global1.x, 275f), u_input.c.zx);
}

