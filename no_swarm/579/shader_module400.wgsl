struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8>;

var<private> global1: array<u32, 13>;

var<private> global2: array<f32, 24> = array<f32, 24>(772f, -1407f, 1113f, -428f, -626f, -330f, 1835f, 480f, 1197f, 606f, 458f, -1000f, 178f, 317f, -242f, -1027f, -1144f, -1000f, -381f, -111f, -489f, 1745f, -682f, 315f);

var<private> global3: vec3<bool>;

var<private> global4: Struct_1 = Struct_1(0u, vec4<bool>(false, true, false, true), vec2<u32>(0u, 1u), vec4<bool>(true, false, false, true));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(35822u, 42768u, 0u), 24u)] + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(0u, 24u)]))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1)));
    let var_1 = true;
    global2 = array<f32, 24>();
    global1 = array<u32, 13>();
    var var_2 = Struct_3(Struct_2(Struct_1(~(~0u), vec4<bool>(arg_2.x, false, true, true), firstTrailingBit(u_input.a.xx), global4.b), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1163f))), global2[_wgslsmith_index_u32(~4294967295u, 24u)]), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2256f + var_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(700f - global2[_wgslsmith_index_u32(4294967295u, 24u)]))), -_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, arg_0))), Struct_2(Struct_1(8116u, global4.d, vec2<u32>(~global4.a, global4.a | 68142u), select(!vec4<bool>(global3.x, false, true, global3.x), !vec4<bool>(false, arg_2.x, global4.b.x, true), any(global4.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 + arg_1), 267f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1467f, arg_1) * vec2<f32>(-1766f, 291f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-566f, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], -1000f, var_0)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 1i, arg_0), -global0[_wgslsmith_index_u32(global4.a, 8u)]) >> (~(~global1[_wgslsmith_index_u32(86484u, 13u)]) % 32u)), 690f, _wgslsmith_mult_vec4_i32(abs(firstTrailingBit(abs(global0[_wgslsmith_index_u32(1u, 8u)]))), vec4<i32>(max(arg_0, -2147483647i), arg_0, _wgslsmith_div_i32(arg_0, -22309i), 70085i) << (~_wgslsmith_div_vec4_u32(vec4<u32>(global4.a, 97981u, u_input.b.x, u_input.e.x), vec4<u32>(u_input.c, u_input.e.x, global1[_wgslsmith_index_u32(global4.a, 13u)], 13778u)) % vec4<u32>(32u))));
    return any(var_2.a.a.b.yxy);
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_add_u32(min(u_input.a.x, u_input.c), u_input.b.x), vec4<bool>(true, all(global4.b.zy), false == global3.x, !arg_0.c.x), countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(global4.c, vec2<u32>(0u, 28953u)), _wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.c, 13u)], 71792u), global4.c))), select(global4.d, vec4<bool>(!arg_0.a, false, func_3(-10632i, global2[_wgslsmith_index_u32(u_input.d.x, 24u)], global3.zy), true), !global3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-892f, 184f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1246f), vec2<f32>(262f, global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), arg_0.c))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(173f, 1647f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(-1082f, -892f, -2010f, 1049f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-644f, 552f, global2[_wgslsmith_index_u32(166676u, 24u)], arg_0.b) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(31346u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], -191f, 338f) * vec4<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24181u, 13u)], 24u)], 451f, arg_0.b, global2[_wgslsmith_index_u32(u_input.e.x, 24u)]))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(global4.c.x, 24u)], 439f, arg_0.b, -350f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b, arg_0.b, -344f, 941f), vec4<f32>(-874f, global2[_wgslsmith_index_u32(global4.a, 24u)], 2085f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 24u)]))))))), _wgslsmith_dot_vec2_i32(abs((vec2<i32>(-7285i, -3849i) << (global4.c % vec2<u32>(32u))) ^ firstTrailingBit(vec2<i32>(1i, 1i))), ~(~vec2<i32>(2147483647i, 1i))));
    var var_1 = 601f;
    let var_2 = countOneBits(select(select(reverseBits(abs(vec2<i32>(0i, var_0.d))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.d, var_0.d), vec2<i32>(-2147483647i, var_0.d)), vec2<i32>(var_0.d, var_0.d)), var_0.a.b.zz), abs(-(vec2<i32>(var_0.d, var_0.d) & vec2<i32>(-1i, 2147483647i))), arg_0.c));
    var var_3 = Struct_2(Struct_1(~(~(53627u | global4.c.x)), global4.d, ~select(firstTrailingBit(u_input.b), _wgslsmith_mod_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, 1u)), !vec2<bool>(false, global4.d.x)), select(select(select(var_0.a.d, vec4<bool>(global3.x, global4.b.x, global4.b.x, false), false), global4.d, global4.d), !select(vec4<bool>(global4.d.x, false, false, var_0.a.d.x), vec4<bool>(var_0.a.b.x, true, false, true), arg_0.c.x), vec4<bool>(!var_0.a.b.x, global3.x, arg_0.c.x, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-355f * _wgslsmith_div_f32(arg_0.b, 479f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.e.x, 24u)], _wgslsmith_f_op_f32(-arg_0.b)))))), var_0.c, _wgslsmith_div_i32(abs(var_0.d), _wgslsmith_add_i32(28031i, var_0.d)));
    let var_4 = global4.b.x;
    return Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(var_3.a.a, 24u)], 126f)), _wgslsmith_f_op_f32(var_0.c.x * 612f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(var_3.a.a, 24u)])), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(arg_0.b + var_0.b.x))))), 1i);
}

fn func_1(arg_0: bool) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = 1u;
    let var_2 = vec2<i32>(~(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], ~vec4<i32>(2147483647i, 26897i, -17191i, 13988i)) << (u_input.e.x % 32u)), ~(-1i));
    var var_3 = Struct_3(func_2(Struct_4(true, global2[_wgslsmith_index_u32(~firstTrailingBit(1u), 24u)], !select(global4.b.zx, vec2<bool>(false, var_0), var_0))), func_2(Struct_4(!arg_0, _wgslsmith_f_op_f32(step(-589f, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 24u)])))), select(vec2<bool>(global3.x, false), !vec2<bool>(true, global4.b.x), global3.x))), global2[_wgslsmith_index_u32(reverseBits(func_2(Struct_4(true, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1, 24u)] - global2[_wgslsmith_index_u32(var_1, 24u)]), vec2<bool>(false, arg_0))).a.c.x), 24u)], _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(1u >> (~global1[_wgslsmith_index_u32(countOneBits(40862u), 13u)] % 32u), 8u)], abs(countOneBits(~vec4<i32>(-2761i, var_2.x, -2133i, var_2.x)))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_3.b.b.x)))) - -1944f);
    return vec3<i32>(-(var_2.x ^ (firstTrailingBit(4846i) >> (~0u % 32u))), ~var_2.x, _wgslsmith_mod_i32(24574i, var_3.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 24>();
    let var_0 = select(select(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -6665i, -43197i, -8203i), vec4<i32>(20375i, 2147483647i, -26462i, 2147483647i)), 2147483647i, 1i), func_1(global3.x), true), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, -1i), ~2147483647i, -(~firstTrailingBit(-1i))), global4.b.zwx);
    global0 = array<vec4<i32>, 8>();
    var var_1 = global4.c.x >= func_2(Struct_4(all(select(global4.b.xx, global3.xx, global4.b.x)), -115f, !vec2<bool>(true, global3.x))).a.c.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_div_f32(-830f, 1198f))));
    global4 = Struct_1(countOneBits(abs(global4.c.x)), select(select(!(!vec4<bool>(true, global3.x, false, global3.x)), global4.d, any(vec2<bool>(false, false))), select(vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(u_input.a.x, 24u)] < var_2.x), vec4<bool>(!global3.x, true, global4.d.x, -865f <= var_2.x), select(all(global4.b), false, global4.b.x != true)), select(select(vec4<bool>(false, global3.x, false, false), vec4<bool>(false, global4.b.x, true, global3.x), true), vec4<bool>(any(global4.d.wyx), any(global4.d), global4.b.x && global3.x, true), !global4.d.x)), u_input.a.xz, select(!select(select(vec4<bool>(false, global3.x, true, global4.b.x), global4.d, global4.b), global4.d, !global4.b), select(func_2(Struct_4(global3.x, var_2.x, vec2<bool>(global4.d.x, false))).a.d, global4.d, select(vec4<bool>(global3.x, global4.d.x, global4.d.x, true), global4.b, select(global4.d.x, global4.b.x, false))), false));
    let var_3 = _wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, global4.a), ~u_input.d.x, firstTrailingBit(67578u), _wgslsmith_mult_u32(u_input.d.x, 55970u))), ~(~firstLeadingBit(vec4<u32>(0u, u_input.c, global4.c.x, u_input.c))) << (select(vec4<u32>(global1[_wgslsmith_index_u32(~u_input.b.x, 13u)], 1u, _wgslsmith_add_u32(0u, 71800u), 27258u), ~vec4<u32>(u_input.d.x, global4.a, u_input.b.x, global4.a), func_2(Struct_4(global4.b.x, -108f, vec2<bool>(global4.b.x, true))).a.d) % vec4<u32>(32u)));
    var var_4 = Struct_2(Struct_1(firstLeadingBit(global4.a), !func_2(Struct_4(global4.d.x, 610f, vec2<bool>(false, global4.b.x))).a.b, u_input.e, global4.b), var_2, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(32286u, 24u)])) * 590f)), 490f, 1000f, 375f), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1216f)))) + var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1456f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global4.d.x)));
}

