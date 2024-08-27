struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<f32>, 25>;

var<private> global2: array<bool, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1401f), 431f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 29971u), u_input.d.ww), 25u)], select(u_input.c == 1u, true, global2[_wgslsmith_index_u32(29064u ^ u_input.c, 26u)]))))));
    let var_1 = !(!vec3<bool>(!(242f > var_0.x), true, all(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), global2[_wgslsmith_index_u32(u_input.c, 26u)]))));
    global1 = array<vec2<f32>, 25>();
    var var_2 = all(select(!vec4<bool>(var_1.x, global2[_wgslsmith_index_u32(u_input.c, 26u)] & false, all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 26u)], false, false, false)), all(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 26u)], true, var_1.x))), vec4<bool>(all(vec2<bool>(arg_0, arg_0)), global2[_wgslsmith_index_u32(reverseBits(countOneBits(4294967295u)), 26u)], arg_0, _wgslsmith_mod_i32(u_input.a.x, 0i) > u_input.b.x), !all(var_1) | (all(vec4<bool>(var_1.x, true, global2[_wgslsmith_index_u32(47035u, 26u)], global2[_wgslsmith_index_u32(43803u, 26u)])) & global2[_wgslsmith_index_u32(4294967295u, 26u)])));
    global2 = array<bool, 26>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), var_0.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1102f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1000f) - _wgslsmith_f_op_f32(265f - -401f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -915f))), _wgslsmith_f_op_f32(func_3(true))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2466f, 480f, 130f, 422f) + vec4<f32>(1448f, 256f, 1000f, 1354f)))))) - _wgslsmith_div_vec4_f32(vec4<f32>(381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(17234u, 26u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-372f * 508f)), _wgslsmith_f_op_f32(1333f + _wgslsmith_f_op_f32(step(-1000f, 1666f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2302f + 405f), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f)), _wgslsmith_f_op_f32(-1078f * -327f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(729f, 128f) * 1f))));
    global2 = array<bool, 26>();
    let var_2 = Struct_3(max(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, u_input.b), max(vec4<i32>(-12424i, -2147483647i, arg_2.x, u_input.a.x), vec4<i32>(1i, arg_2.x, arg_2.x, 50676i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(~(-1i), -11156i, ~6045i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, -4191i, -46883i, u_input.b.x), u_input.b), u_input.b << (u_input.d % vec4<u32>(32u)))), Struct_2(6514u, arg_1, Struct_1(arg_2.x, firstLeadingBit(i32(-1i) * -47791i), min(u_input.c, 1u))));
    global1 = array<vec2<f32>, 25>();
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> Struct_3 {
    var var_0 = all(vec4<bool>(true, any(vec3<bool>(any(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.a, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], true)), true, any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(75584u, 26u)])))), true, true));
    let var_1 = arg_0;
    var var_2 = false;
    let var_3 = Struct_2(_wgslsmith_div_u32(var_1.b, _wgslsmith_add_u32(abs(113617u), _wgslsmith_sub_u32(max(32656u, 33494u), _wgslsmith_mod_u32(var_1.c.c, arg_2)))), 96240u ^ ~u_input.c, arg_0.c);
    let var_4 = Struct_3(firstLeadingBit(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(3534i, 23300i, 18519i, var_1.c.b) ^ vec4<i32>(arg_0.c.a, -1i, var_3.c.b, arg_1.x)), abs(-arg_1))), var_1);
    return var_4;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    let var_0 = select(vec4<bool>(arg_1.x, global2[_wgslsmith_index_u32(u_input.c, 26u)], true, true), !vec4<bool>(any(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 26u)], global2[_wgslsmith_index_u32(u_input.d.x, 26u)], true)), !arg_1.x, false, false), any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(7321u, 26u)], true, false, false), select(vec4<bool>(arg_1.x, global2[_wgslsmith_index_u32(1u, 26u)], true, false), vec4<bool>(true, arg_1.x, global2[_wgslsmith_index_u32(arg_2.b.b, 26u)], arg_1.x), true), true), !vec4<bool>(global2[_wgslsmith_index_u32(59778u, 26u)], global2[_wgslsmith_index_u32(arg_0.b.a, 26u)], true, true), !arg_1.x)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1030f))) == -267f;
    let var_2 = var_0;
    let var_3 = Struct_2(1u, arg_2.b.a | _wgslsmith_div_u32(~(~31140u), ~arg_0.b.a), func_4(Struct_2(arg_2.b.b, reverseBits(8160u), arg_0.b.c), func_4(arg_0.b, -vec4<i32>(52426i, 2147483647i, arg_3, -1i), u_input.c).a, ~abs(1u)).b.c);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(836f, 1320f, -280f, -1082f))) + vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1043f, -183f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(964f * -1000f), _wgslsmith_f_op_f32(floor(140f)))), 1707f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1224f, -1889f, -797f, -1000f))))));
    return arg_2.b.c;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: bool) -> u32 {
    global2 = array<bool, 26>();
    var var_0 = max(~_wgslsmith_dot_vec2_u32(abs(u_input.d.yz) ^ ~u_input.d.wz, ~abs(vec2<u32>(u_input.c, u_input.c))), arg_0.c);
    var_0 = 27964u;
    let var_1 = Struct_3(u_input.b >> (~vec4<u32>(arg_0.c, arg_0.c, ~0u, 23738u | arg_0.c) % vec4<u32>(32u)), Struct_2(~arg_0.c | ~(~arg_0.c), 1u, func_5(func_4(Struct_2(arg_0.c, 70747u, arg_0), vec4<i32>(arg_0.a, -2147483647i, u_input.a.x, u_input.a.x) >> (vec4<u32>(0u, arg_0.c, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), ~40461u), vec2<bool>(41717u != u_input.d.x, true), func_4(func_4(Struct_2(u_input.c, arg_0.c, arg_0), u_input.b, arg_0.c).b, u_input.b, ~u_input.c), arg_0.b)));
    var var_2 = vec2<u32>(1u, 765u << (arg_0.c % 32u));
    return var_2.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_1(-u_input.b.x, u_input.a.x, func_6(func_5(func_4(func_2(vec3<u32>(arg_1.b.a, 4294967295u, 4294967295u), arg_1.b.c.c, arg_1.a.wz), arg_1.a, arg_2.x), select(vec2<bool>(false, false), vec2<bool>(true, true), !global2[_wgslsmith_index_u32(arg_2.x, 26u)]), func_4(func_4(Struct_2(0u, arg_2.x, arg_1.b.c), arg_1.a, arg_1.b.c.c).b, arg_1.a, u_input.c), u_input.a.x), vec3<bool>(all(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], true, global2[_wgslsmith_index_u32(33066u, 26u)])), all(vec4<bool>(true, true, true, true)), select(global2[_wgslsmith_index_u32(~u_input.c, 26u)], all(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_2.x, 26u)], global2[_wgslsmith_index_u32(61119u, 26u)], true)), any(vec2<bool>(false, true)))), arg_0.x, global2[_wgslsmith_index_u32(arg_2.x, 26u)]));
    global0 = global2[_wgslsmith_index_u32(func_4(func_4(arg_1.b, arg_1.a, arg_1.b.b).b, vec4<i32>(func_2(u_input.d.yzx, var_0.c, select(vec2<i32>(var_0.b, arg_1.b.c.a), arg_1.a.yw, vec2<bool>(global2[_wgslsmith_index_u32(var_0.c, 26u)], false))).c.a ^ firstLeadingBit(var_0.b), _wgslsmith_dot_vec3_i32(arg_1.a.xyz, arg_1.a.zzx), func_4(arg_1.b, firstLeadingBit(u_input.b), 4294967295u).b.c.b | (u_input.a.x >> (func_2(u_input.d.xww, 37871u, u_input.b.xy).a % 32u)), _wgslsmith_dot_vec2_i32(~select(u_input.b.zy, u_input.a, true), select(u_input.a, abs(vec2<i32>(-989i, -1i)), true))), ~1u).b.b, 26u)];
    let var_1 = _wgslsmith_add_vec4_u32(firstTrailingBit(abs(~(vec4<u32>(arg_2.x, 0u, 1u, 50584u) >> (vec4<u32>(u_input.c, arg_1.b.c.c, 4294967295u, 4294967295u) % vec4<u32>(32u))))), ~u_input.d);
    global2 = array<bool, 26>();
    let var_2 = vec2<bool>(_wgslsmith_clamp_i32(u_input.a.x, (arg_1.b.c.b << (8661u % 32u)) << (arg_1.b.c.c % 32u), i32(-1i) * -u_input.a.x) > _wgslsmith_dot_vec3_i32(arg_1.a.xwz, ~arg_1.a.xwx), (u_input.a.x >= -select(arg_1.b.c.b, var_0.b, global2[_wgslsmith_index_u32(var_0.c, 26u)])) & !(~arg_2.x <= 101154u));
    return !(!select(vec3<bool>(!var_2.x, !global2[_wgslsmith_index_u32(var_0.c, 26u)], !var_2.x), !vec3<bool>(global2[_wgslsmith_index_u32(arg_2.x, 26u)], true, global2[_wgslsmith_index_u32(0u, 26u)]), vec3<bool>(true, true, true)));
}

fn func_7(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global1 = array<vec2<f32>, 25>();
    let var_0 = max(abs(firstLeadingBit(~vec3<i32>(42992i, 1i, arg_2.c.b))), -vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.a), arg_1.b, u_input.a.x ^ arg_2.c.a)) >> (~u_input.d.ywy % vec3<u32>(32u));
    let var_1 = countOneBits(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(reverseBits(u_input.d.xw)), ~vec2<u32>(arg_2.a, arg_1.c) << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(20207u, arg_1.c, arg_1.c), vec3<u32>(1u, arg_1.c, arg_2.b)), _wgslsmith_mult_u32(max(3160u, arg_2.c.c), 4294967295u))));
    var var_2 = ~2147483647i;
    let var_3 = func_2(vec3<u32>(0u, ~max(var_1.x, 41190u), ~_wgslsmith_div_u32(arg_1.c, var_1.x)) & (max(vec3<u32>(var_1.x, u_input.c, 4294967295u) ^ u_input.d.xwx, _wgslsmith_mult_vec3_u32(u_input.d.ywy, vec3<u32>(5719u, 4294967295u, arg_2.b))) >> ((vec3<u32>(var_1.x, 12585u, 14789u) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 58159u, 22325u), vec3<u32>(24703u, 1u, u_input.c))) % vec3<u32>(32u))), u_input.c, vec2<i32>(firstLeadingBit(~_wgslsmith_sub_i32(-2147483647i, var_0.x)), -2147483647i));
    return Struct_2(var_1.x, func_2(u_input.d.wwx, func_6(Struct_1(-2147483647i, _wgslsmith_div_i32(17827i, -37947i), func_5(Struct_3(vec4<i32>(arg_1.b, var_0.x, 1i, var_3.c.a), Struct_2(74760u, arg_2.c.c, arg_2.c)), vec2<bool>(false, false), Struct_3(vec4<i32>(var_0.x, -3588i, -2147483647i, arg_2.c.a), arg_2), var_3.c.b).c), arg_0, -547f, (9696u >> (u_input.c % 32u)) < var_3.b), ~(-vec2<i32>(-32882i, arg_1.b))).a, Struct_1(17327i, -u_input.a.x, 4294967295u));
}

fn func_8(arg_0: f32, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = arg_1.c;
    global0 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_1.c.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, firstTrailingBit(1u), 1u, 1u), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.d.x, 4294967295u, 13204u), u_input.d))), 26u)];
    var var_1 = func_7(func_1(global1[_wgslsmith_index_u32(1u, 25u)], func_4(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.a, 0u, 13290u), vec4<u32>(44663u, 1u, 1u, 4294967295u)), ~33974u, func_7(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 26u)], true, global2[_wgslsmith_index_u32(0u, 26u)]), arg_1.c, arg_1).c), u_input.b, 49943u), u_input.d.xwz), Struct_1(var_0.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-7184i, 2147483647i), i32(-1i) * -1i), _wgslsmith_sub_i32(20564i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_1.c.a, 2147483647i, 1i, -25436i)))), 4294967295u), func_4(arg_1, func_4(arg_1, ~vec4<i32>(-1i, -18649i, var_0.a, 2147483647i), arg_1.b).a, firstLeadingBit(abs(5213u))).b);
    var var_2 = ~1i;
    var var_3 = firstLeadingBit((~max(12363u, 1u) & ~func_5(Struct_3(vec4<i32>(23766i, u_input.b.x, arg_1.c.a, 0i), arg_1), vec2<bool>(global2[_wgslsmith_index_u32(39950u, 26u)], global2[_wgslsmith_index_u32(28816u, 26u)]), Struct_3(vec4<i32>(var_0.b, -47997i, 24970i, -13516i), Struct_2(var_0.c, var_0.c, arg_1.c)), var_1.c.b).c) | func_7(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(19200u, 26u)]), func_5(Struct_3(vec4<i32>(arg_1.c.a, var_1.c.b, -33295i, -1i), arg_1), vec2<bool>(true, global2[_wgslsmith_index_u32(8808u, 26u)]), func_4(arg_1, vec4<i32>(0i, u_input.a.x, arg_1.c.a, arg_1.c.b), var_0.c), _wgslsmith_clamp_i32(u_input.a.x, var_0.b, u_input.a.x)), Struct_2(0u, 17107u, func_4(arg_1, vec4<i32>(var_1.c.b, 49427i, -54628i, arg_1.c.a), var_0.c).b.c)).b);
    return StorageBuffer(u_input.d.yy, vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_1.a, 0u, var_1.a) << (u_input.d.xxx % vec3<u32>(32u))), vec3<u32>(firstLeadingBit(5193u), arg_1.c.c, var_1.c.c)), arg_1.a, ~reverseBits(~arg_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1i, ~reverseBits(~(u_input.a.x >> (u_input.c % 32u))), select(1u, u_input.d.x, global2[_wgslsmith_index_u32(countOneBits(4294967295u), 26u)]));
    let var_1 = _wgslsmith_f_op_f32(-1f);
    global0 = !all(!vec2<bool>(-1030f <= var_1, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, var_0.c, 1u), 26u)]));
    global1 = array<vec2<f32>, 25>();
    global2 = array<bool, 26>();
    global1 = array<vec2<f32>, 25>();
    global2 = array<bool, 26>();
    let var_2 = var_0;
    let x = u_input.a;
    s_output = func_8(_wgslsmith_f_op_f32(max(557f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(step(530f, 1867f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(573f)) - _wgslsmith_f_op_f32(exp2(var_1)))))), func_7(func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), vec2<f32>(var_1, var_1)))), Struct_3(u_input.b, Struct_2(var_2.c, var_2.c, Struct_1(-2147483647i, u_input.a.x, u_input.d.x))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(72410u, 68647u, 1u), ~vec3<u32>(var_2.c, 0u, 0u), _wgslsmith_sub_vec3_u32(u_input.d.zww, u_input.d.xyx))), var_2, Struct_2(var_2.c, 64960u, func_4(Struct_2(var_0.c, 4294967295u, Struct_1(u_input.a.x, 0i, 1u)), u_input.b, var_2.c).b.c)));
}

