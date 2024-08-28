struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 1>;

var<private> global2: array<Struct_3, 31>;

var<private> global3: array<bool, 4>;

var<private> global4: array<Struct_2, 4>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> vec2<i32> {
    let var_0 = Struct_1(~(countOneBits(arg_1.xz) ^ _wgslsmith_clamp_vec2_i32(~arg_1.yy, _wgslsmith_mod_vec2_i32(global0.a.a, arg_0.b.a), ~vec2<i32>(global0.a.a.x, u_input.c))));
    let var_1 = !select(!vec3<bool>(40686u > u_input.b, u_input.b == 4294967295u, true), !select(vec3<bool>(true, global3[_wgslsmith_index_u32(17011u, 4u)], true), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 4u)], true, global3[_wgslsmith_index_u32(u_input.e.x, 4u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 4u)], false, true), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(u_input.e.x, 4u)], global3[_wgslsmith_index_u32(u_input.e.x, 4u)])), any(vec2<bool>(false, global3[_wgslsmith_index_u32(4499u, 4u)]))), vec3<bool>(!any(vec4<bool>(true, false, global3[_wgslsmith_index_u32(44303u, 4u)], false)), 17888u > u_input.b, all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 4u)], false))));
    var var_2 = true;
    var var_3 = ~_wgslsmith_sub_vec4_u32(~(vec4<u32>(10378u, u_input.e.x, 4294967295u, 1u) << (~vec4<u32>(0u, u_input.e.x, u_input.e.x, u_input.e.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, _wgslsmith_sub_u32(52472u, u_input.b), _wgslsmith_add_u32(u_input.b, 34054u)), firstLeadingBit(vec4<u32>(u_input.b, 0u, 0u, 4294967295u))));
    let var_4 = select(vec4<u32>(0u, u_input.b, 1u, _wgslsmith_div_u32(var_3.x, ~0u)), vec4<u32>(var_3.x, 18627u, _wgslsmith_dot_vec2_u32(var_3.yz, _wgslsmith_div_vec2_u32(u_input.e.yx, u_input.e.yz)), 0u), false) << (~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.e.x, 0u, var_3.x) >> (firstTrailingBit(vec4<u32>(68163u, var_3.x, u_input.b, 61298u)) % vec4<u32>(32u)), vec4<u32>(~40542u, u_input.e.x >> (4294967295u % 32u), reverseBits(1u), 28643u)) % vec4<u32>(32u));
    return vec2<i32>(_wgslsmith_mod_i32(max(var_0.a.x, ~(-1i)), -(18349i >> (min(var_3.x, 4294967295u) % 32u))), 1i >> ((~(~u_input.b) ^ 1u) % 32u));
}

fn func_2() -> bool {
    let var_0 = -2147483647i;
    var var_1 = select(~(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 4937u, 0u, u_input.b), vec4<u32>(25343u, u_input.e.x, u_input.b, 21173u)) | abs(vec4<u32>(0u, 22923u, u_input.e.x, u_input.b) & vec4<u32>(u_input.b, u_input.e.x, 1u, 106906u))), ~(~vec4<u32>(u_input.e.x, u_input.b, u_input.e.x >> (u_input.b % 32u), u_input.b)), !select(!select(vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(u_input.b, 4u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 4u)], false, global3[_wgslsmith_index_u32(30339u, 4u)], global3[_wgslsmith_index_u32(63483u, 4u)]), global3[_wgslsmith_index_u32(27416u, 4u)]), !vec4<bool>(global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(17445u, 4u)], false, false), false));
    global2 = array<Struct_3, 31>();
    global0 = Struct_2(global0.a, Struct_1(func_3(Struct_2(Struct_1(global0.a.a), global0.a), vec4<i32>(1216i, -1i << (var_1.x % 32u), 48966i, ~28896i))));
    var var_2 = ~_wgslsmith_add_i32(-7427i, var_0);
    return !global3[_wgslsmith_index_u32(24473u, 4u)];
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(368f, 307f), vec2<f32>(430f, 1000f), true)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-400f, -1744f))))), vec2<f32>(_wgslsmith_f_op_f32(-2260f - -678f), 288f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1350f)), _wgslsmith_f_op_f32(883f - 1364f)) - vec2<f32>(_wgslsmith_f_op_f32(step(-466f, 1802f)), _wgslsmith_f_op_f32(2467f - 740f)))), vec4<bool>(func_2(), select(func_2(), u_input.e.x >= _wgslsmith_sub_u32(u_input.b, 0u), u_input.c == _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.a.x, 36681i), vec2<i32>(0i, u_input.c))), any(select(!vec4<bool>(global3[_wgslsmith_index_u32(1602u, 4u)], true, global3[_wgslsmith_index_u32(u_input.b, 4u)], false), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(48019u, 4u)]), vec4<bool>(global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(19960u, 4u)], global3[_wgslsmith_index_u32(u_input.b, 4u)], true))), u_input.e.x <= (1u << (_wgslsmith_mult_u32(u_input.b, u_input.e.x) % 32u))));
    global3 = array<bool, 4>();
    var var_1 = var_0.b.yz;
    var var_2 = any(var_0.b.yxy);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(exp2(var_0.a.x)), false | var_0.b.x)), var_0.a.x))));
    return Struct_2(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(1i, global0.b.a.x) | vec2<i32>(global0.a.a.x, u_input.d), global0.a.a) >> (u_input.e.zz % vec2<u32>(32u))), Struct_1(_wgslsmith_mod_vec2_i32(reverseBits(global0.b.a), vec2<i32>(u_input.d, u_input.c) & global0.b.a)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3) -> bool {
    var var_0 = Struct_2(func_1().a, Struct_1(-_wgslsmith_sub_vec2_i32(global0.b.a, arg_1.b.a) & select(-arg_1.a.a, vec2<i32>(u_input.c, 2147483647i) & arg_1.b.a, select(arg_0.yz, arg_0.zw, arg_2.b.wz))));
    let var_1 = arg_2.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a.x))), arg_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x)))))));
    let var_3 = func_1();
    global2 = array<Struct_3, 31>();
    return any(arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global3[_wgslsmith_index_u32(u_input.b << (~u_input.e.x % 32u), 4u)];
    var var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -953f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-939f)) + _wgslsmith_f_op_f32(1127f * -1000f)), func_4(!vec4<bool>(global3[_wgslsmith_index_u32(11923u, 4u)], global3[_wgslsmith_index_u32(u_input.b, 4u)], false, false), func_1(), Struct_3(vec2<f32>(768f, 1123f), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 4u)], global3[_wgslsmith_index_u32(u_input.b, 4u)], false, global3[_wgslsmith_index_u32(4294967295u, 4u)]))) & true, true), vec3<bool>(abs(0i) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), select(vec2<i32>(global0.b.a.x, u_input.a), vec2<i32>(u_input.c, 2147483647i), global3[_wgslsmith_index_u32(2206u, 4u)])), true, 32950i <= _wgslsmith_clamp_i32(u_input.a, 1i, -2147483647i)), global3[_wgslsmith_index_u32(~u_input.b, 4u)] || all(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 4u)], true, false), select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(50383u, 4u)]), vec3<bool>(false, false, true), vec3<bool>(global3[_wgslsmith_index_u32(1u, 4u)], false, global3[_wgslsmith_index_u32(8310u, 4u)])), any(vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 4u)], global3[_wgslsmith_index_u32(u_input.b, 4u)])))));
    global2 = array<Struct_3, 31>();
    var var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 1u)];
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1000f))));
    var var_4 = select(any(select(!(!vec4<bool>(var_1.x, true, false, global3[_wgslsmith_index_u32(1u, 4u)])), vec4<bool>(all(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 4u)], true, global3[_wgslsmith_index_u32(u_input.b, 4u)])), false, var_1.x, true), false)), true, !func_4(vec4<bool>(!global3[_wgslsmith_index_u32(31935u, 4u)], any(vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.b, 4u)], true)), func_4(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 4u)], true, true), Struct_2(var_2.a, var_2.b), global2[_wgslsmith_index_u32(1u, 31u)]), -552f < var_3), global4[_wgslsmith_index_u32(~u_input.b & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 10641u, 38205u, 1u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)), 4u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(24600u & u_input.b, 61162u), 31u)]));
    var var_5 = func_1().a.a;
    global3 = array<bool, 4>();
    let var_6 = (func_4(select(vec4<bool>(true, var_1.x, global3[_wgslsmith_index_u32(10807u, 4u)], true), vec4<bool>(global3[_wgslsmith_index_u32(0u, 4u)], false, global3[_wgslsmith_index_u32(u_input.e.x, 4u)], var_1.x), !vec4<bool>(var_1.x, global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(u_input.e.x, 4u)], var_1.x)), Struct_2(func_1().b, Struct_1(global0.a.a)), global2[_wgslsmith_index_u32(~u_input.e.x, 31u)]) && false) | (_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(max(vec2<i32>(global0.b.a.x, u_input.c), vec2<i32>(-4878i, var_5.x)), reverseBits(vec2<i32>(36879i, 9218i))), (i32(-1i) * -1i) >> ((u_input.e.x ^ 59630u) % 32u)) > 23039i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~var_2.a.a.x, _wgslsmith_clamp_i32(var_5.x, ~_wgslsmith_mod_i32(global0.a.a.x, u_input.c), _wgslsmith_mult_i32(0i, global0.a.a.x >> (u_input.e.x % 32u))), -26973i, 2147483647i ^ ~_wgslsmith_add_i32(u_input.d, global0.a.a.x)), _wgslsmith_mod_vec2_i32(var_2.a.a, -(~var_2.a.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * var_3))), _wgslsmith_f_op_f32(min(var_3, 1054f)), _wgslsmith_f_op_f32(1353f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_3, var_3, true)), var_3, true)))), vec3<i32>(10720i, firstLeadingBit(~u_input.d) | countOneBits(var_5.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_2.b.a.x, 10356i, 2147483647i)), ~vec3<i32>(-25999i, 60698i, -31780i)), _wgslsmith_clamp_i32(0i, var_5.x, -23561i))));
}

