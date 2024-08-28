struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(361f, 185f, -479f, -1773f, 732f, -558f, -336f, 1580f, 193f, -835f, -788f, -1341f, -1678f, 909f, 204f, 845f, -940f, 1000f, -362f, 1141f, 1385f);

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<i32>(80763i, 1i, i32(-2147483648), 0i), 0u, Struct_1(true)));

var<private> global2: vec4<bool>;

var<private> global3: vec2<u32>;

var<private> global4: Struct_1 = Struct_1(false);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32) -> Struct_4 {
    global1 = Struct_3(Struct_2(global1.a.a, _wgslsmith_add_u32(firstLeadingBit(select(global3.x, 41125u, false)), ~(global3.x << (73564u % 32u))), global1.a.c));
    let var_0 = firstLeadingBit(min(select(firstTrailingBit(abs(vec4<i32>(1i, u_input.b.x, 12990i, u_input.b.x))), vec4<i32>(u_input.b.x >> (74715u % 32u), -global1.a.a.x, abs(u_input.b.x), global1.a.a.x), !global2.x), _wgslsmith_add_vec4_i32(~u_input.d, ~global1.a.a)));
    global0 = array<f32, 21>();
    global3 = vec2<u32>(~(~reverseBits(global1.a.b)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global3.x, global1.a.b) << (u_input.a % vec2<u32>(32u)), vec2<u32>(u_input.c, u_input.c)), max(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(70614u, 57057u)), ~vec2<u32>(5885u, u_input.a.x))), global3.x));
    let var_1 = u_input.d;
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, global0[_wgslsmith_index_u32(35549u, 21u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1163f)))), Struct_3(Struct_2(u_input.d, _wgslsmith_sub_u32(4294967295u, 4294967295u), global1.a.c)), global1.a.c);
}

fn func_3(arg_0: vec4<f32>) -> vec2<i32> {
    let var_0 = Struct_3(Struct_2((_wgslsmith_div_vec4_i32(vec4<i32>(1i, 18426i, -665i, 0i), vec4<i32>(global1.a.a.x, global1.a.a.x, -1i, -32559i)) ^ vec4<i32>(global1.a.a.x, 1i, 1i, global1.a.a.x)) ^ vec4<i32>(-1i, -1i, -40627i, _wgslsmith_mult_i32(2147483647i, global1.a.a.x)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 11882u, u_input.c)), ~vec3<u32>(4294967295u, global3.x, u_input.c) ^ vec3<u32>(global3.x, global1.a.b, u_input.a.x)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f) * _wgslsmith_f_op_f32(1000f + -158f))).c));
    var var_1 = global2.wz;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -425f))), global0[_wgslsmith_index_u32(~(4294967295u >> (1u % 32u)), 21u)], !(global1.a.a.x <= u_input.d.x))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(global1.a.a), min(u_input.b, vec4<i32>(global1.a.a.x, 2147483647i, var_0.a.a.x, u_input.d.x))), global1.a.a.x, ~global1.a.a.x | _wgslsmith_sub_i32(-2147483647i, u_input.d.x)), select(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 123869u), ~vec3<u32>(global3.x, global1.a.b, 0u), vec3<u32>(44525u, 32349u, u_input.c)), select(vec3<u32>(firstLeadingBit(u_input.c), ~1u, countOneBits(10367u)), ~select(vec3<u32>(global1.a.b, 0u, global3.x), vec3<u32>(4294967295u, u_input.a.x, 59669u), global1.a.c.a), select(select(global2.zzz, global2.xyz, global2.x), vec3<bool>(global2.x, var_1.x, var_1.x), global2.xyy)), !(!all(global2.wy))), _wgslsmith_div_f32(arg_0.x, -1047f));
    return ~(var_0.a.a.yw ^ -var_2.b.xz);
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1408f, global0[_wgslsmith_index_u32(39709u, 21u)])))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(111f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 21u)])) - vec2<f32>(_wgslsmith_f_op_f32(-1041f + global0[_wgslsmith_index_u32(21615u, 21u)]), _wgslsmith_f_op_f32(f32(-1f) * -1402f)))) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(43581u, 21u)])))));
    global2 = vec4<bool>(global1.a.c.a, any(!(!vec2<bool>(global4.a, global4.a))), true, true);
    let var_1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 27988u, global3.x, arg_0)), vec4<u32>(arg_0, global3.x, global3.x, 0u)), select((vec4<u32>(1u, global3.x, global1.a.b, u_input.a.x) | vec4<u32>(global1.a.b, 0u, 66819u, u_input.c)) & ~vec4<u32>(arg_0, 10716u, 89547u, 4294967295u), ~(vec4<u32>(arg_0, u_input.a.x, 0u, arg_0) & vec4<u32>(global1.a.b, 4294967295u, global1.a.b, 0u)), !vec4<bool>(global1.a.c.a, global2.x, true, global2.x))) & 1u;
    let var_2 = func_2(1000f);
    let var_3 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(~var_2.b.a.a.x, global1.a.a.x), abs(global1.a.a.x)) ^ -1i, _wgslsmith_mod_i32(var_2.b.a.a.x, -1i), abs(-9269i), select(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.b.a.a.x, u_input.d.x), func_2(235f).b.a.a.zx, arg_0 >= 0u), vec2<i32>(-38424i << (1u % 32u), -13691i)), -2147483647i, var_2.a.x <= _wgslsmith_f_op_f32(round(var_0.x))));
    return _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.x, global1.a.a.x), vec2<i32>(27090i, var_3.x)), func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.x, -922f, var_2.a.x, -459f))))), ~(vec2<i32>(-1i) * -vec2<i32>(-2514i, 30204i))) | var_2.b.a.a.xw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    let var_0 = global1.a.a;
    var var_1 = vec4<bool>(global4.a, !(~_wgslsmith_dot_vec4_i32(global1.a.a, vec4<i32>(var_0.x, global1.a.a.x, -1i, -1i)) < -var_0.x), !((_wgslsmith_dot_vec2_i32(vec2<i32>(57310i, 1i), u_input.b.zz) >> (2049u % 32u)) <= abs(1i)), global2.x);
    let var_2 = 996f;
    let var_3 = -(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(global1.a.a.x, 1i), vec2<i32>(24079i, 2147483647i), global4.a), select(u_input.d.yy, vec2<i32>(var_0.x, -2147483647i), var_1.yw), var_0.zw) << ((~vec2<u32>(0u, 1u) ^ u_input.a) % vec2<u32>(32u))) ^ ~_wgslsmith_add_vec2_i32(func_1(u_input.c, var_0.yxx), -vec2<i32>(-13322i, 0i));
    var var_4 = -(-20953i << ((global1.a.b >> (u_input.a.x % 32u)) % 32u));
    var var_5 = func_2(_wgslsmith_f_op_f32(-1473f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 - global0[_wgslsmith_index_u32(global3.x, 21u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(194f)) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25216u, 21u)]))))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1090f + _wgslsmith_f_op_f32(-1393f * 859f)) - global0[_wgslsmith_index_u32(global1.a.b, 21u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.a.b >> (~global1.a.b % 32u), 21u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-22226i, -2147483647i), ~vec2<i32>(36128i, -605i)), -_wgslsmith_mult_vec2_i32(var_3, var_5.a.a.wx))));
}

