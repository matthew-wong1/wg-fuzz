struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<f32>(1073f, -545f, -400f), vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec3<f32>(-122f, 752f, 1348f), vec2<i32>(2147483647i, 34928i)), Struct_1(vec3<f32>(1776f, -1526f, 1072f), vec2<i32>(-53654i, 2147483647i)));

var<private> global2: vec2<i32> = vec2<i32>(55194i, 2147483647i);

var<private> global3: array<f32, 20>;

var<private> global4: Struct_1 = Struct_1(vec3<f32>(-1244f, -725f, 249f), vec2<i32>(0i, 2147483647i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(global2.x ^ ~(-global2.x));
    var var_1 = u_input.a ^ min(~(~min(u_input.a, 0u)), abs(_wgslsmith_div_u32(30877u, u_input.b.x)));
    let var_2 = vec4<i32>(abs(max(_wgslsmith_div_i32(-1i, global2.x), -min(2147483647i, -3380i))), _wgslsmith_div_i32(~(-1i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-16301i, var_0.a, global4.b.x, -18992i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-20872i, global2.x, -4791i, global4.b.x), vec4<i32>(global4.b.x, -13654i, -2147483647i, global2.x)), firstTrailingBit(vec4<i32>(global4.b.x, 1i, 1i, 2147483647i))), select(-vec4<i32>(global4.b.x, 24622i, -1i, global2.x), ~vec4<i32>(var_0.a, global4.b.x, global2.x, global4.b.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false)))), global2.x, var_0.a);
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    return 16965i;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(max(global4.b.x & global2.x, 0i), -(~global4.b.x), global4.b.x), ~1i);
    global4 = Struct_1(global4.a, vec2<i32>(_wgslsmith_add_i32(-select(global4.b.x, 0i, true), global4.b.x), _wgslsmith_div_i32(-33765i, -16157i)));
    var var_1 = countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(35572i, -1i), vec2<i32>(-8576i, -65392i)), vec2<i32>(global4.b.x, _wgslsmith_mod_i32(global2.x, global4.b.x)))) >> (arg_1 % 32u);
    global3 = array<f32, 20>();
    var_1 = -func_3();
    return Struct_3(-7426i);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    global2 = global4.b;
    var var_0 = u_input.b.zzz;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(step(arg_3, global4.a)));
    let var_2 = true;
    var var_3 = u_input.b.wy;
    return arg_1;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1036f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1693f, global3[_wgslsmith_index_u32(arg_3, 20u)]))), global3[_wgslsmith_index_u32(func_4(func_2(vec3<f32>(450f, -829f, 1308f), 51908u, arg_1), ~u_input.b.x, arg_3, vec3<f32>(global3[_wgslsmith_index_u32(arg_3, 20u)], -2693f, global3[_wgslsmith_index_u32(12262u, 20u)])), 20u)] > _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_f_op_f32(298f - global4.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4.a.x)) + 1084f)))), true));
    let var_1 = Struct_3(min(max(countOneBits(arg_0.a), arg_1.a), arg_0.a));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1610f, global3[_wgslsmith_index_u32(0u, 20u)], var_0), _wgslsmith_f_op_vec3_f32(-global4.a), vec3<bool>(true, true, true))))) - vec3<f32>(963f, global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, 1u, 4294967295u, arg_3)), _wgslsmith_sub_u32(1u, u_input.a), all(vec4<bool>(false, false, true, false))), 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))));
    var var_3 = select(~reverseBits(~vec3<i32>(arg_1.a, global4.b.x, -11844i)) >> (~(~u_input.b.yzw) % vec3<u32>(32u)), countOneBits(-(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, global2.x, var_1.a))), select(!(1u < u_input.b.x), !select(false, false, true), false) & true);
    let var_4 = Struct_3(global2.x);
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>) -> vec2<u32> {
    var var_0 = u_input.b.x;
    global1 = array<Struct_1, 3>();
    global0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(40231i, -(-global4.b.x << (_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 82506u) % 32u))), 0i);
    var var_1 = vec4<i32>(i32(-1i) * -2147483647i, arg_1.a | _wgslsmith_div_i32(~(-6754i), 39000i), _wgslsmith_mod_i32(countOneBits(arg_1.a), 1i) | _wgslsmith_add_i32(~global2.x, ~global2.x), _wgslsmith_mod_i32(global2.x, ~min(global4.b.x, global4.b.x))) << (vec4<u32>(1u, abs(_wgslsmith_div_u32(abs(1u), ~u_input.a)), ~u_input.a, 4294967295u) % vec4<u32>(32u));
    let var_2 = !((i32(-1i) * -29543i) >= var_1.x);
    return _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(abs(9271u), u_input.a << (50212u % 32u))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.ww, vec2<u32>(u_input.b.x, 1u) ^ vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.wz), max(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(u_input.b.x, 70120u) ^ u_input.b.yx))), _wgslsmith_mod_vec2_u32(~u_input.b.zw, select(u_input.b.yx, u_input.b.yy, true)) ^ vec2<u32>(u_input.a, countOneBits(u_input.b.x) >> (_wgslsmith_add_u32(1u, 0u) % 32u)));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.b.x, 20u)] + _wgslsmith_f_op_f32(f32(-1f) * -512f)), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(~arg_3.x, 20u)])), _wgslsmith_f_op_f32(1422f + 153f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-arg_2.a.x), 211f))), any(vec2<bool>(true, true)) & true)), firstTrailingBit(-vec2<i32>(~2147483647i, _wgslsmith_sub_i32(0i, global4.b.x))));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(27102u, arg_3.x, u_input.b.x, 12380u), vec4<u32>(arg_3.x, 0u, arg_3.x, 4294967295u)), ~u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_1.x, arg_1.x, 1u), min(u_input.b, u_input.b))), countOneBits(select(vec4<u32>(arg_3.x, u_input.b.x, 23715u, 26050u), u_input.b, vec4<bool>(true, true, true, false)))), _wgslsmith_dot_vec3_u32((_wgslsmith_clamp_vec3_u32(vec3<u32>(9898u, 4294967295u, arg_3.x), u_input.b.xxz, vec3<u32>(arg_3.x, u_input.a, 1137u)) & reverseBits(u_input.b.yzw)) >> (vec3<u32>(13735u, ~13885u, _wgslsmith_clamp_u32(u_input.a, 16488u, arg_1.x)) % vec3<u32>(32u)), abs(u_input.b.zwz)));
    let var_2 = any(vec4<bool>(any(vec3<bool>(true, true, true)), false || !any(vec2<bool>(true, false)), select(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)))), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), all(vec4<bool>(true, false, true, false))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, -683f, global3[_wgslsmith_index_u32(0u, 20u)]) * var_0.a))))), _wgslsmith_sub_vec2_i32(-global4.b << ((select(u_input.b.zz, arg_1, vec2<bool>(var_2, true)) << (firstTrailingBit(vec2<u32>(u_input.a, arg_3.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(func_2(vec3<f32>(global3[_wgslsmith_index_u32(1u, 20u)], 789f, -345f), _wgslsmith_div_u32(u_input.a, 1u), Struct_3(1i)).a, var_0.b.x)));
    let var_3 = Struct_1(var_0.a, arg_0);
    return global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21464u, ~var_1.x, ~(14135u ^ arg_1.x), u_input.b.x), ~u_input.b) << (~25761u % 32u), 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_6(~(~global4.b), func_5(true, func_1(Struct_3(global4.b.x), Struct_3(63783i), u_input.a, u_input.b.x), _wgslsmith_f_op_vec2_f32(global4.a.xy + vec2<f32>(-341f, global3[_wgslsmith_index_u32(6451u, 20u)]))), Struct_2(_wgslsmith_f_op_vec3_f32(exp2(global4.a))), u_input.b.xx)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global4.a.x)), _wgslsmith_f_op_f32(step(-1828f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 20u)]))))), -126f) + vec3<f32>(global4.a.x, _wgslsmith_f_op_f32(285f * 357f), 576f));
    let var_2 = true;
    var var_3 = select(select(select(!select(vec3<bool>(var_2, false, var_2), vec3<bool>(false, var_2, true), true), select(vec3<bool>(var_2, true, true), !vec3<bool>(var_2, true, true), select(var_2, var_2, var_2)), var_2), select(!vec3<bool>(true, var_2, var_2), select(!vec3<bool>(false, true, var_2), !vec3<bool>(var_2, false, var_2), !vec3<bool>(var_2, false, false)), any(vec3<bool>(true, var_2, false))), vec3<bool>(false, !(u_input.a <= 0u), select(all(vec3<bool>(false, false, false)), any(vec3<bool>(var_2, var_2, false)), !var_2))), vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) * _wgslsmith_f_op_f32(step(-589f, global3[_wgslsmith_index_u32(4294967295u, 20u)]))) > _wgslsmith_f_op_f32(func_6(vec2<i32>(28395i, global2.x), abs(u_input.b.yy), Struct_2(global4.a), u_input.b.xz & vec2<u32>(4294967295u, 10205u))), var_2), all(vec2<bool>(true, all(select(vec3<bool>(true, var_2, true), vec3<bool>(false, true, true), vec3<bool>(var_2, true, var_2))))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 20u)], _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(1408f - var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(435f - -600f), _wgslsmith_f_op_f32(var_1.x + global4.a.x), _wgslsmith_f_op_f32(floor(1000f))))) + global4.a));
    var var_5 = _wgslsmith_mult_i32(global2.x, global4.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, vec2<i32>(-16253i, 1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-877f - _wgslsmith_f_op_f32(func_6(vec2<i32>(global2.x, global2.x), u_input.b.yx, Struct_2(global4.a), u_input.b.xy))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-588f, global3[_wgslsmith_index_u32(u_input.a, 20u)])), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 20u)]), -616f)));
}

