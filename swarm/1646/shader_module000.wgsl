struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: Struct_3;

var<private> global2: array<f32, 13> = array<f32, 13>(2173f, 1830f, -1000f, -174f, -657f, -261f, -846f, 1636f, 270f, -742f, -1000f, -447f, -110f);

var<private> global3: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec2<u32> {
    global1 = Struct_3(abs(abs(global3.a)), vec2<i32>(arg_1.x, 2147483647i));
    global2 = array<f32, 13>();
    global3 = Struct_3(vec4<u32>(~global3.a.x, global1.a.x, 4294967295u, 43774u) << (_wgslsmith_sub_vec4_u32(min(vec4<u32>(0u, global3.a.x, 0u, 4294967295u), global1.a) ^ global3.a, global3.a) % vec4<u32>(32u)), vec2<i32>(-90525i, -45834i));
    var var_0 = Struct_2(min(arg_1.x, arg_1.x), ~(u_input.b.x >> (11151u % 32u)), -(~(-global3.b)) & -(~(-arg_1)), Struct_1(1u));
    let var_1 = Struct_1(~(~1u));
    return _wgslsmith_clamp_vec2_u32(reverseBits(select(_wgslsmith_clamp_vec2_u32(u_input.a.zz, u_input.a.zy, global3.a.yz), ~vec2<u32>(0u, 23127u), true)), vec2<u32>(max(1u, global3.a.x), _wgslsmith_dot_vec2_u32(max(vec2<u32>(global1.a.x, global1.a.x), vec2<u32>(var_1.a, global3.a.x)), vec2<u32>(global3.a.x, 0u) | vec2<u32>(0u, 80712u))), firstLeadingBit(abs(~global1.a.yw))) << (~firstLeadingBit(~(~global1.a.zw)) % vec2<u32>(32u));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = ~func_3(_wgslsmith_mult_i32(~2147483647i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(21551i, u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -48316i, 2147483647i), u_input.b.zzy))), global1.b);
    global2 = array<f32, 13>();
    var var_1 = -17017i;
    global3 = Struct_3(~vec4<u32>(62334u, 17685u, 1u & (var_0.x >> (1u % 32u)), u_input.a.x), firstTrailingBit(select(_wgslsmith_add_vec2_i32(select(vec2<i32>(global1.b.x, global3.b.x), global3.b, vec2<bool>(false, true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global3.b.x, 8810i), global1.b, vec2<i32>(u_input.b.x, 2147483647i))), _wgslsmith_div_vec2_i32(vec2<i32>(global3.b.x, global3.b.x), _wgslsmith_sub_vec2_i32(global1.b, global1.b)), arg_0)));
    let var_2 = Struct_3(~countOneBits(global1.a), vec2<i32>(-39262i, abs(firstTrailingBit(2147483647i))));
    return Struct_2(~(~global3.b.x), reverseBits(0i << ((~var_0.x >> ((var_0.x << (u_input.a.x % 32u)) % 32u)) % 32u)), global1.b, Struct_1(0u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = !vec2<bool>(all(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), true)), all(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true)));
    global2 = array<f32, 13>();
    var var_1 = func_2(true).d;
    let var_2 = Struct_4(func_2(false && (global0[_wgslsmith_index_u32(global1.a.x, 18u)] > _wgslsmith_f_op_f32(sign(-1782f)))), arg_1.d);
    var var_3 = global1.b;
    return global2[_wgslsmith_index_u32(~13034u, 13u)];
}

fn func_1(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = !select(select(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)] + -230f) >= global2[_wgslsmith_index_u32(27067u, 13u)]), false, true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(0u, 13u)])), _wgslsmith_f_op_f32(f32(-1f) * -1663f))))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_3.a | arg_2, 13u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(43198u, 13u)]))) - _wgslsmith_f_op_f32(func_4(func_2(false), func_2(all(arg_1)), firstLeadingBit(global1.b.x)))));
    global1 = Struct_3(global3.a, -arg_0.a.c);
    let var_2 = ~abs(countOneBits(global3.a.xz));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(-25449i, -33902i, arg_0.a.c, Struct_1(0u)), arg_0.a, -8110i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1172f)) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a.x, 13u)])), -313f, 734f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(411f, -1649f, -331f, -2461f), vec4<f32>(-707f, 1401f, 444f, -1458f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(2514u, 13u)], global2[_wgslsmith_index_u32(0u, 13u)], 569f, global0[_wgslsmith_index_u32(global1.a.x, 18u)]))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-927f, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(arg_2, 18u)], -291f), vec4<f32>(global0[_wgslsmith_index_u32(72549u, 18u)], -617f, global2[_wgslsmith_index_u32(15704u, 13u)], 1462f))), vec4<f32>(304f, global0[_wgslsmith_index_u32(global1.a.x, 18u)], global2[_wgslsmith_index_u32(18524u, 13u)], global2[_wgslsmith_index_u32(arg_2, 13u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(arg_2, 13u)], global0[_wgslsmith_index_u32(4421u, 18u)], global2[_wgslsmith_index_u32(1u, 13u)]) * _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_3.a, 18u)], global2[_wgslsmith_index_u32(arg_3.a, 13u)], global2[_wgslsmith_index_u32(var_2.x, 13u)], global2[_wgslsmith_index_u32(1u, 13u)]), vec4<f32>(553f, global0[_wgslsmith_index_u32(arg_0.b.a, 18u)], 1878f, global0[_wgslsmith_index_u32(var_2.x, 18u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(46696u, 13u)], global2[_wgslsmith_index_u32(71777u, 13u)], 662f, global2[_wgslsmith_index_u32(arg_3.a, 13u)]) + vec4<f32>(-320f, global2[_wgslsmith_index_u32(global3.a.x, 13u)], global2[_wgslsmith_index_u32(7824u, 13u)], 2001f)))))), false));
    return Struct_3(global1.a, func_2(all(select(select(vec3<bool>(true, false, true), vec3<bool>(arg_1.x, false, true), vec3<bool>(false, var_0, arg_1.x)), vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_1.x, arg_1.x, false)))).c);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>) -> u32 {
    return _wgslsmith_mult_u32(~countOneBits(arg_0.a.x << (_wgslsmith_div_u32(global3.a.x, global3.a.x) % 32u)), ~(~(~arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), global0[_wgslsmith_index_u32(72251u, 18u)], -973f, global0[_wgslsmith_index_u32(func_5(func_1(Struct_4(Struct_2(15149i, global3.b.x, vec2<i32>(-7312i, u_input.b.x), Struct_1(global1.a.x)), Struct_1(41762u)), vec2<bool>(false, true), global1.a.x, Struct_1(47484u)), vec2<bool>(true, false)), 18u)]), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1055f)), -214f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(147f * global0[_wgslsmith_index_u32(0u, 18u)]) + _wgslsmith_f_op_f32(-495f - 236f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(30613u, 13u)]), _wgslsmith_f_op_f32(select(217f, _wgslsmith_f_op_f32(1236f * global2[_wgslsmith_index_u32(28345u, 13u)]), true))), vec4<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.a.x, 13u)]) == -354f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a.x, 13u)]))), -1000f, 408f, 341f));
    var var_1 = ~vec4<i32>(-global1.b.x, u_input.b.x, 1i, ~(-global3.b.x));
    var var_2 = func_2(true).d;
    var_2 = func_2(true).d;
    let var_3 = select(_wgslsmith_sub_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, global1.b.x, -18754i, global1.b.x)), vec4<i32>(global1.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.b.x, -2147483647i, 27562i, global1.b.x), vec4<i32>(-33063i, 1i, global3.b.x, 55034i)), ~15066i, 2147483647i))), abs(vec4<i32>(min(-17352i, u_input.b.x), i32(-1i) * -7888i, -global1.b.x, ~(~43331i))), 1000f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1067f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global1.b.x, ~(~2147483647i) >> (global1.a.x % 32u), max(u_input.b.x, ~(-2147483647i))), _wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(30374u, 17967u), select(0u, var_2.a, true), 1u, ~4294967295u), vec4<u32>(22126u, ~reverseBits(1379u), 4294967295u, global3.a.x)));
}

