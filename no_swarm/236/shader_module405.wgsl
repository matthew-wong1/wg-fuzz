struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25>;

var<private> global1: f32 = -1195f;

var<private> global2: array<u32, 3>;

var<private> global3: array<i32, 32> = array<i32, 32>(i32(-2147483648), 0i, -44079i, 17079i, -16437i, -1i, -35581i, 2147483647i, -24126i, 26749i, 0i, 0i, 0i, 1i, 1440i, -54632i, 1i, -27796i, 1i, -21385i, -50181i, 0i, 9568i, 20422i, 2147483647i, 1i, -7056i, 0i, 2147483647i, -1i, -18865i, i32(-2147483648));

var<private> global4: Struct_1 = Struct_1(vec2<i32>(0i, 0i), true, 4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> i32 {
    let var_0 = vec4<i32>(-53223i, abs(firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, 0i), -26959i << (0u % 32u), 14381i))), i32(-1i) * -18688i, arg_0.e.a);
    global2 = array<u32, 3>();
    let var_1 = ~_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_0.xxy, vec3<i32>(var_0.x, -34206i, 11292i)), 1i | arg_0.e.a), 60713i), -276i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)));
    let var_3 = true;
    return min(arg_1.a, -(~53740i));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(vec2<u32>(u_input.d.x, 37374u), u_input.d.x, _wgslsmith_div_vec4_u32(vec4<u32>(~global4.c, _wgslsmith_sub_u32(_wgslsmith_sub_u32(33407u, global2[_wgslsmith_index_u32(1u, 3u)]), ~4294967295u), global4.c >> ((global2[_wgslsmith_index_u32(u_input.d.x, 3u)] >> (global2[_wgslsmith_index_u32(global4.c, 3u)] % 32u)) % 32u), _wgslsmith_div_u32(~6159u, 1u)), (select(vec4<u32>(39703u, 34766u, 1u, global4.c), vec4<u32>(global2[_wgslsmith_index_u32(1u, 3u)], 4886u, global4.c, 0u), vec4<bool>(false, true, true, true)) >> (~vec4<u32>(4294967295u, 1627u, 1u, global2[_wgslsmith_index_u32(51498u, 3u)]) % vec4<u32>(32u))) ^ (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(u_input.d.x, 3u)], u_input.d.x, 1u), vec4<u32>(4294967295u, 5915u, 45632u, 17252u)) ^ reverseBits(vec4<u32>(global4.c, u_input.d.x, global4.c, 9771u)))), 0i, vec3<f32>(_wgslsmith_f_op_f32(abs(197f)), -651f, _wgslsmith_f_op_f32(-1134f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1023f - -1296f) + _wgslsmith_f_op_f32(-1879f + 527f)))));
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(reverseBits(abs(global3[_wgslsmith_index_u32(1u, 32u)])), 1i), global4.a.x), global4.b, _wgslsmith_clamp_u32(_wgslsmith_add_u32(~1u, 0u >> (var_0.b % 32u)), firstLeadingBit(~1u), firstLeadingBit(var_0.c.x)) & (_wgslsmith_dot_vec4_u32(~var_0.c, var_0.c) << (41014u % 32u)));
    global2 = array<u32, 3>();
    global2 = array<u32, 3>();
    var var_2 = Struct_1(-vec2<i32>(-(~(-61085i)), func_3(Struct_4(true, 18940i, vec2<f32>(var_0.e.x, -514f), Struct_3(var_1.a.x), Struct_3(-14527i)), Struct_3(2147483647i))), any(!select(select(vec4<bool>(false, global4.b, true, var_1.b), vec4<bool>(var_1.b, true, false, true), false), select(vec4<bool>(var_1.b, true, global4.b, false), vec4<bool>(var_1.b, false, false, true), vec4<bool>(false, var_1.b, var_1.b, true)), 1i >= var_0.d)), _wgslsmith_clamp_u32(~abs(min(45424u, 23418u)), max(_wgslsmith_clamp_u32(53040u, ~31827u, 0u), countOneBits(global2[_wgslsmith_index_u32(var_0.b, 3u)])), _wgslsmith_sub_u32(~global4.c, var_0.b) >> (var_1.c % 32u)));
    return u_input.d.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = Struct_3(1i);
    var var_1 = arg_1.b;
    var var_2 = Struct_3(_wgslsmith_dot_vec4_i32(countOneBits(abs(vec4<i32>(arg_2, 50790i, arg_1.a.x, -2147483647i))), vec4<i32>(global4.a.x, u_input.a, global3[_wgslsmith_index_u32(~arg_0, 32u)], arg_1.a.x)) & u_input.a);
    let var_3 = Struct_4(arg_1.b, var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(round(352f))))), Struct_3(firstTrailingBit(_wgslsmith_dot_vec2_i32(reverseBits(u_input.c), vec2<i32>(2147483647i, arg_2)))), Struct_3(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(-2147483647i, var_0.a)), min(vec2<i32>(1i, 5908i), ~vec2<i32>(-49076i, var_0.a)))));
    var var_4 = _wgslsmith_mult_vec2_i32(global4.a, u_input.c);
    return Struct_4(!(!select(true, false, var_3.a)), _wgslsmith_dot_vec3_i32(abs((vec3<i32>(arg_1.a.x, var_3.d.a, -2147483647i) << (vec3<u32>(1u, arg_3.x, global2[_wgslsmith_index_u32(48078u, 3u)]) % vec3<u32>(32u))) & abs(vec3<i32>(global4.a.x, arg_1.a.x, global3[_wgslsmith_index_u32(4294967295u, 32u)]))), abs(~select(vec3<i32>(-4139i, var_2.a, var_3.d.a), vec3<i32>(2147483647i, u_input.a, u_input.c.x), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_3.c, var_3.c))), Struct_3(~(-18249i)), var_3.e);
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = func_4(~_wgslsmith_mult_u32(func_2() | max(u_input.d.x, 0u), ~1u << ((0u << (global4.c % 32u)) % 32u)), Struct_1(global4.a, false, reverseBits(45056u)), func_3(Struct_4(false, _wgslsmith_mult_i32(-global3[_wgslsmith_index_u32(global4.c, 32u)], global4.a.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(228f, -492f)))), Struct_3(1i), Struct_3(func_3(Struct_4(true, u_input.c.x, vec2<f32>(-737f, -1498f), Struct_3(u_input.b), Struct_3(2147483647i)), Struct_3(global3[_wgslsmith_index_u32(0u, 32u)])))), Struct_3(-60444i)), u_input.d);
    var var_1 = Struct_1(max(~_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global4.a.x, 41431i), vec2<i32>(-11855i, u_input.c.x)), -u_input.c), vec2<i32>(u_input.c.x, ~func_4(global2[_wgslsmith_index_u32(18233u, 3u)], Struct_1(vec2<i32>(u_input.a, 12851i), arg_0, 75923u), -1i, vec2<u32>(92756u, global4.c)).b)), var_0.a, 24268u);
    var var_2 = Struct_2(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global4.c, global4.c), ~u_input.d.x), vec2<u32>(~1u, global4.c))), _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31447u, 1u), vec2<u32>(1u, 4294967295u)), 27211u)), firstTrailingBit(~reverseBits(1u))), vec4<u32>(~(~u_input.d.x), ~firstLeadingBit(~26320u), 0u, ~1u), _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b, -36104i), u_input.c.x | -1i), ~37545i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(677f, 1000f, 1002f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1273f, var_0.c.x, -1752f) * vec3<f32>(var_0.c.x, -3865f, -1362f)))) * vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1806f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.c.x, -1143f), _wgslsmith_f_op_f32(-var_0.c.x))))));
    var var_3 = false;
    var_2 = Struct_2(~u_input.d, global2[_wgslsmith_index_u32(4294967295u, 3u)], firstTrailingBit(~firstTrailingBit(select(var_2.c, var_2.c, vec4<bool>(global4.b, global4.b, var_0.a, true)))), -(~reverseBits(12678i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.e.x * var_0.c.x), _wgslsmith_f_op_f32(-1125f + var_2.e.x), _wgslsmith_f_op_f32(670f * 699f)) + vec3<f32>(func_4(36410u, Struct_1(vec2<i32>(var_2.d, var_1.a.x), true, 34675u), global4.a.x, u_input.d).c.x, _wgslsmith_f_op_f32(exp2(var_2.e.x)), _wgslsmith_f_op_f32(-1000f + var_0.c.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(727f, -299f, var_2.e.x), _wgslsmith_f_op_vec3_f32(var_2.e * vec3<f32>(var_0.c.x, -740f, 1348f))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1361f)), _wgslsmith_f_op_f32(f32(-1f) * -482f), var_2.e.x), !(!vec3<bool>(arg_0, global4.b, true))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.e.x - _wgslsmith_f_op_f32(abs(var_2.e.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1354f), -160f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2122f * -356f) - _wgslsmith_f_op_f32(ceil(709f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-156f + 1203f)))), -845f));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true)) + _wgslsmith_f_op_f32(f32(-1f) * -1071f))))));
    global2 = array<u32, 3>();
    var var_2 = Struct_4(!any(vec2<bool>(global4.b, global4.b)), u_input.c.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, var_1))), Struct_3(u_input.a), func_4(66836u, Struct_1(u_input.c, all(!vec3<bool>(global4.b, true, true)), 108781u), 18220i, firstLeadingBit(abs(u_input.d)) << (vec2<u32>(_wgslsmith_sub_u32(4294967295u, 23721u), ~global2[_wgslsmith_index_u32(2446u, 3u)]) % vec2<u32>(32u))).e);
    global3 = array<i32, 32>();
    global0 = array<vec4<f32>, 25>();
    var var_3 = Struct_1(-(~u_input.c), any(vec3<bool>(false, true, false)), select(~u_input.d.x & _wgslsmith_mult_u32(min(u_input.d.x, 67075u), 32604u), global2[_wgslsmith_index_u32(~global4.c, 3u)], select(!global4.b & !global4.b, !any(vec4<bool>(true, true, true, false)), true)));
    let var_4 = -u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(673f, _wgslsmith_f_op_f32(1000f + 495f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -546f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(0u, 3u)], u_input.d.x), vec2<u32>(u_input.d.x, 54425u)), 25u)])))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2416f, var_1, _wgslsmith_f_op_f32(sign(1964f))))));
}

