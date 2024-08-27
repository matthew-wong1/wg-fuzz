struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5222u;

var<private> global1: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec3<f32>(-466f, 1581f, 329f)), Struct_4(vec3<f32>(-1408f, 673f, 1000f)), Struct_4(vec3<f32>(2633f, 496f, -1256f)), Struct_4(vec3<f32>(139f, 546f, -1000f)), Struct_4(vec3<f32>(-510f, -633f, 789f)), Struct_4(vec3<f32>(-204f, -262f, 180f)), Struct_4(vec3<f32>(1000f, -1342f, -1434f)), Struct_4(vec3<f32>(1495f, 750f, -371f)), Struct_4(vec3<f32>(-1442f, 715f, 2972f)), Struct_4(vec3<f32>(-151f, -857f, -448f)), Struct_4(vec3<f32>(955f, -1717f, -355f)), Struct_4(vec3<f32>(1257f, 2202f, -1000f)), Struct_4(vec3<f32>(233f, 424f, 1243f)), Struct_4(vec3<f32>(1651f, 469f, 397f)), Struct_4(vec3<f32>(-438f, 806f, 726f)));

var<private> global2: array<bool, 22> = array<bool, 22>(false, true, true, false, true, true, false, true, false, false, false, true, false, true, false, false, false, true, true, true, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: bool) -> vec4<u32> {
    global2 = array<bool, 22>();
    let var_0 = Struct_1(~_wgslsmith_sub_vec4_u32(u_input.a, ~(~u_input.a)), !(!vec2<bool>(false, all(vec3<bool>(arg_3, true, arg_3)))));
    let var_1 = Struct_3(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 37326u, u_input.b), vec3<u32>(4294967295u, 88327u, u_input.b)), 27908u) | 0u, vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.e & ~0u, 1u) % vec2<u32>(32u)), var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1530f)))), arg_0);
    let var_2 = Struct_1(vec4<u32>(21758u, 4294967295u, _wgslsmith_mult_u32(41188u, _wgslsmith_clamp_u32(1u, var_1.b.x, 4294967295u)), 1u) >> (firstLeadingBit(vec4<u32>(var_1.a, select(4294967295u, 84621u, arg_3), firstLeadingBit(63889u), ~var_1.b.x)) % vec4<u32>(32u)), var_0.b);
    var var_3 = Struct_3(~0u, vec2<u32>(firstTrailingBit(var_1.b.x), abs(firstTrailingBit(1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(653f, _wgslsmith_f_op_f32(trunc(969f)))) + _wgslsmith_div_f32(-1632f, -282f)) >= -780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d)))), -786f);
    return var_0.a;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global2 = array<bool, 22>();
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(max(vec4<u32>(_wgslsmith_mult_u32(u_input.b, 1u), arg_0.x, u_input.e, 4294967295u), func_3(-355f, ~vec3<i32>(u_input.c, 13407i, 2147483647i), global1[_wgslsmith_index_u32(3725u, 15u)], u_input.d > -17722i)), firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(arg_0.x, 4294967295u), abs(40275u), 37051u, u_input.a.x))), select(vec2<bool>(true, true), select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 22u)], global2[_wgslsmith_index_u32(arg_0.x, 22u)]), vec2<bool>(false, false), global2[_wgslsmith_index_u32(4294967295u, 22u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<bool>(global2[_wgslsmith_index_u32(17136u, 22u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 22u)], global2[_wgslsmith_index_u32(u_input.b, 22u)])), true), select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 22u)], false), select(vec2<bool>(false, true), vec2<bool>(true, global2[_wgslsmith_index_u32(arg_0.x, 22u)]), global2[_wgslsmith_index_u32(60086u, 22u)]), all(vec2<bool>(true, true))), false), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 22u)], true), vec2<bool>(true, true && global2[_wgslsmith_index_u32(4754u, 22u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(firstLeadingBit(u_input.e), 22u)]))));
    global0 = select(_wgslsmith_clamp_u32(~(reverseBits(u_input.a.x) >> (max(arg_0.x, var_0.a.x) % 32u)), reverseBits(_wgslsmith_mod_u32(arg_0.x, 0u) & reverseBits(var_0.a.x)), 4294967295u), func_3(_wgslsmith_f_op_f32(-376f - 1f), vec3<i32>(-1i, u_input.c, 2147483647i), global1[_wgslsmith_index_u32(26532u, 15u)], !any(select(var_0.b, vec2<bool>(false, var_0.b.x), true))).x, all(vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(arg_0.x, 22u)]), vec3<bool>(var_0.b.x, global2[_wgslsmith_index_u32(79577u, 22u)], true))), global2[_wgslsmith_index_u32(7382u << (_wgslsmith_clamp_u32(0u, 0u, 4294967295u) % 32u), 22u)])));
    let var_1 = Struct_2(!(!(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(arg_0.x, 22u)])))), Struct_1(var_0.a, select(var_0.b, vec2<bool>(arg_0.x <= arg_0.x, all(vec2<bool>(false, var_0.b.x))), select(vec2<bool>(true, global2[_wgslsmith_index_u32(14549u, 22u)]), select(var_0.b, vec2<bool>(var_0.b.x, true), false), global2[_wgslsmith_index_u32(arg_0.x & u_input.a.x, 22u)]))));
    let var_2 = vec4<bool>(var_1.b.b.x, false, true, var_1.a.x);
    return Struct_3(func_3(-200f, min(~vec3<i32>(u_input.d, 2147483647i, -30124i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 1i, -34530i), vec3<i32>(-19154i, 37552i, u_input.c), vec3<i32>(u_input.c, -1i, u_input.d))), global1[_wgslsmith_index_u32(5180u ^ arg_0.x, 15u)], false).x | 0u, ~(vec2<u32>(~0u, 4863u) & _wgslsmith_clamp_vec2_u32(var_1.b.a.wy, _wgslsmith_add_vec2_u32(var_0.a.yw, var_1.b.a.yw), vec2<u32>(u_input.b, 10970u))), global2[_wgslsmith_index_u32(3215u, 22u)] | true, _wgslsmith_div_f32(-603f, -1322f), 285f);
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_4 {
    global2 = array<bool, 22>();
    var var_0 = func_2(arg_2.zyz);
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.e, -236f, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), -357f)));
    var var_2 = var_1.a.x;
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(-var_0.e) == arg_1.a.x, ~46905i == (~(u_input.d >> (0u % 32u)) & max(_wgslsmith_mod_i32(u_input.c, u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(26728i, u_input.d)))), !arg_0);
    return Struct_4(vec3<f32>(_wgslsmith_f_op_f32(floor(263f)), 1227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), var_0.e))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = u_input.a;
    let var_2 = arg_0.a.x;
    let var_3 = u_input.b;
    var var_4 = _wgslsmith_sub_vec2_i32((firstTrailingBit(vec2<i32>(u_input.c, u_input.c) | vec2<i32>(u_input.c, 80728i)) ^ _wgslsmith_sub_vec2_i32(min(vec2<i32>(var_0, 68282i), vec2<i32>(var_0, 0i)), vec2<i32>(-23247i, u_input.d))) << (vec2<u32>(4294967295u, var_1.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(max(-abs(vec2<i32>(u_input.d, -2147483647i)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.c, 50048i)), vec2<i32>(u_input.c, u_input.d) >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)))), ~(~(~vec2<i32>(u_input.d, -27909i)))));
    return Struct_1(func_3(_wgslsmith_f_op_f32(step(arg_0.a.x, 758f)), -vec3<i32>(u_input.d, -var_4.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.x, -21572i, -40841i, var_0), vec4<i32>(var_0, 2147483647i, 5311i, var_0))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xxz, ~(vec3<u32>(var_1.x, 32470u, var_1.x) >> (vec3<u32>(0u, 0u, var_1.x) % vec3<u32>(32u)))), 15u)], -1i < _wgslsmith_clamp_i32(var_4.x, 0i, _wgslsmith_mod_i32(var_0, var_4.x))), vec2<bool>(_wgslsmith_mod_u32(1u, 6573u) > u_input.b, 182f == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = ~arg_1.a.zxz;
    let var_1 = Struct_1(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(arg_1.a, vec4<u32>(u_input.e, u_input.e, var_0.x, 0u)), vec4<u32>(1u, arg_1.a.x, 0u, 0u)), arg_1.a), select(arg_1.b, !vec2<bool>(arg_0.b.x & false, true), !arg_1.b));
    global0 = 28562u;
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(46441u, u_input.e, (arg_0.a.x >> (~var_0.x % 32u)) & ~27541u), ~(~_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(0u, 0u, 1u)), vec3<u32>(4294967295u, arg_1.a.x, arg_0.a.x))));
    let var_2 = ~_wgslsmith_sub_u32(var_0.x >> (~var_0.x % 32u), u_input.a.x) ^ u_input.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1121f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-568f, 1377f))))) - _wgslsmith_div_f32(2269f, -1450f)));
}

fn func_6(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1051f, arg_1)))))));
    let var_1 = arg_3;
    let var_2 = ~u_input.a.xwx;
    var var_3 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec4_u32(arg_3.a, vec4<u32>(var_1.a.x, arg_3.a.x, 46883u, 2849u)))), 15u)];
    var var_4 = Struct_2(vec3<bool>(true, var_2.x >= ~(arg_3.a.x >> (arg_3.a.x % 32u)), false), Struct_1(max(abs(~arg_3.a), vec4<u32>(_wgslsmith_sub_u32(arg_3.a.x, var_1.a.x), abs(4294967295u), ~var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.x, 1u, arg_3.a.x), var_1.a))), var_1.b));
    return Struct_3(~_wgslsmith_div_u32(arg_3.a.x, arg_3.a.x), vec2<u32>(4294967295u >> (_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 12734u), arg_3.a.x) % 32u), ~_wgslsmith_dot_vec2_u32(var_2.xz | vec2<u32>(u_input.a.x, var_4.b.a.x), vec2<u32>(arg_3.a.x, 102957u))), !all(var_4.a), _wgslsmith_f_op_f32(step(arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(vec4<u32>(51067u, var_4.b.a.x, 1u, var_1.a.x), var_1.b), Struct_1(u_input.a, arg_3.b), u_input.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))))), 872f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 22>();
    let var_0 = -10522i;
    let var_1 = u_input.e > u_input.b;
    let var_2 = func_6(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(u_input.a, select(vec2<bool>(var_1, var_1), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 22u)], true), vec2<bool>(true, var_1))), func_4(func_1(false, global1[_wgslsmith_index_u32(29996u, 15u)], vec4<u32>(4294967295u, 26905u, u_input.e, 4294967295u))), min(-26835i & u_input.d, firstLeadingBit(0i)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-309f, func_1(true, global1[_wgslsmith_index_u32(u_input.b, 15u)], vec4<u32>(u_input.a.x, u_input.e, u_input.a.x, u_input.e)).a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-868f * 115f) * _wgslsmith_div_f32(-976f, 1843f)))), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(u_input.a.xzy).d, -1219f, 1247f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1208f, -163f, -1419f)))), Struct_1(~(~vec4<u32>(u_input.a.x, 19957u, 81991u, 4294967295u) & countOneBits(vec4<u32>(38228u, u_input.e, u_input.a.x, u_input.a.x))), select(!vec2<bool>(var_1, global2[_wgslsmith_index_u32(1u, 22u)]), func_4(func_1(true, global1[_wgslsmith_index_u32(u_input.b, 15u)], u_input.a)).b, func_4(Struct_4(vec3<f32>(266f, -1084f, 795f))).b)));
    global2 = array<bool, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.c, -1i, 6314i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.c, -2147483647i)), ~(-2147483647i), firstLeadingBit(var_0)), _wgslsmith_div_i32(7512i, var_0))), 2147483647i, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e) - var_2.d), select(-vec3<i32>(-1i, -2147483647i, 0i), abs(vec3<i32>(32724i, var_0, u_input.c)), true), func_1(var_2.c, Struct_4(vec3<f32>(529f, 781f, var_2.e)), u_input.a), var_2.c).yw << (~u_input.a.zz % vec2<u32>(32u)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 20251i, u_input.c), vec3<i32>(var_0, var_0, 2147483647i)), -vec3<i32>(2147483647i, 2147483647i, u_input.c)) >> (vec3<u32>(u_input.a.x, var_2.b.x, select(var_2.b.x, u_input.e, false)) % vec3<u32>(32u)), ~(abs(vec3<i32>(-6697i, -21123i, var_0)) << (~vec3<u32>(4294967295u, 49817u, 4294967295u) % vec3<u32>(32u)))));
}

