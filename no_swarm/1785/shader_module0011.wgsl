struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(4294967295u, 0u, 1u, 71897u, 20285u);

var<private> global1: array<vec3<bool>, 32>;

var<private> global2: array<bool, 11> = array<bool, 11>(false, true, false, true, false, false, false, true, true, false, true);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(235f * 274f), _wgslsmith_f_op_f32(980f + -1000f), -414f, _wgslsmith_f_op_f32(step(-1871f, -3074f))))), abs(vec4<i32>(arg_1.x, -34137i, u_input.a, ~(~arg_1.x))), arg_1);
    global2 = array<bool, 11>();
    global1 = array<vec3<bool>, 32>();
    var var_1 = var_0;
    var var_2 = -var_0.b;
    return !vec4<bool>(~(global0[_wgslsmith_index_u32(u_input.b.x, 5u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 5u)], 5u)] % 32u)) > ~u_input.b.x, select(!(false || global2[_wgslsmith_index_u32(94424u, 11u)]), all(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 11u)], global2[_wgslsmith_index_u32(arg_0, 11u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45716u, 5u)], 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(33001u, 11u)], true, false), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40728u, 5u)], 11u)])), any(vec4<bool>(global2[_wgslsmith_index_u32(32218u, 11u)], false, global2[_wgslsmith_index_u32(4294967295u, 11u)], true)) & true), !(0u <= _wgslsmith_dot_vec4_u32(vec4<u32>(87841u, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], arg_0), vec4<u32>(23554u, 4294967295u, 53523u, global0[_wgslsmith_index_u32(4294967295u, 5u)]))), !global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], u_input.d, u_input.d), 11u)]);
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<bool>(!((i32(-1i) * -2147483647i) > u_input.c), all(!func_3(50476u, -vec2<i32>(-27858i, u_input.e))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) - 2304f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1536f))), (u_input.c >> (86020u % 32u)) > u_input.e)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-837f, _wgslsmith_f_op_f32(abs(1744f)), true)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-111f - -1000f)))), true);
    global1 = array<vec3<bool>, 32>();
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -303f, -857f, -1000f))))));
    let var_2 = abs(~(~(~vec3<i32>(-2147483647i, u_input.c, -2147483647i))));
    let var_3 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_add_i32(-u_input.c, _wgslsmith_mult_i32(var_2.x, -15135i)), countOneBits(-var_2.x >> (~1u % 32u))), vec2<f32>(641f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(step(-115f, var_1.x))))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_3.b.x), -295f, var_3.b.x, 454f), vec4<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, -148f), _wgslsmith_f_op_f32(f32(-1f) * -392f), 1113f), var_0.x)))), vec4<i32>(i32(-1i) * -var_3.a, u_input.a, 33812i << (u_input.b.x % 32u), var_2.x), vec2<i32>(-1i) * -var_2.xz);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    global2 = array<bool, 11>();
    let var_1 = Struct_3(Struct_1(var_0.b.x, func_2().a.wz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_1.a.yzw)) - vec3<f32>(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x - arg_1.a.x), -1907f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1128f)))), !vec3<bool>(true, true, func_3(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], _wgslsmith_clamp_vec2_i32(arg_1.b.yw, vec2<i32>(u_input.e, u_input.c), arg_1.b.xz)).x), !select(select(select(vec4<bool>(arg_0.d.x, false, global2[_wgslsmith_index_u32(4294967295u, 11u)], true), arg_0.d, vec4<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 11u)], false, false)), select(vec4<bool>(arg_0.d.x, global2[_wgslsmith_index_u32(4294967295u, 11u)], arg_0.c.x, arg_0.c.x), arg_0.d, true), func_3(global0[_wgslsmith_index_u32(15500u, 5u)], vec2<i32>(var_0.b.x, var_0.b.x))), select(vec4<bool>(false, global2[_wgslsmith_index_u32(5459u, 11u)], arg_0.d.x, true), arg_0.d, vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 11u)], arg_0.d.x, false, true)), !func_3(u_input.d, vec2<i32>(26667i, var_0.b.x))), Struct_1(_wgslsmith_mult_i32(-var_0.b.x, arg_1.b.x), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1628f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(164f, arg_0.b.x)), _wgslsmith_f_op_f32(-arg_0.b.x))))));
    let var_2 = arg_0.e.a;
    var var_3 = max(-select(~arg_1.b.xw, select(abs(var_0.c), firstTrailingBit(arg_1.c), var_1.c.zx), select(select(arg_0.c.xz, var_1.d.zw, arg_0.d.x), vec2<bool>(true, true), select(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(true, false), vec2<bool>(arg_0.d.x, false)))), var_0.b.wy);
    return Struct_1(_wgslsmith_add_i32(-2147483647i, 0i), _wgslsmith_div_vec2_f32(var_0.a.xw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1204f, var_0.a.x)))) * vec2<f32>(arg_1.a.x, -480f))));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-15369i, 1i, 37998i, 48777i)), ~(~vec4<i32>(arg_0, -1307i, arg_2.a, -40086i))), vec2<f32>(_wgslsmith_div_f32(-1327f, -406f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + func_2().a.x))), func_2().a.xzw, select(!select(select(global1[_wgslsmith_index_u32(u_input.d, 32u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 11u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50671u, 5u)], 11u)]), true), !select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 11u)], global2[_wgslsmith_index_u32(21008u, 11u)], true), u_input.d >= global0[_wgslsmith_index_u32(0u, 5u)]), !(!global2[_wgslsmith_index_u32(78670u, 11u)])), select(select(vec4<bool>(any(vec2<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(87806u, 5u)], 11u)])), false, false, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(87644u, 11u)], false), vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66966u, 5u)], 11u)]), global2[_wgslsmith_index_u32(0u, 11u)])), func_3(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global0[_wgslsmith_index_u32(9637u, 5u)]), u_input.b.zz), _wgslsmith_mod_vec2_i32(vec2<i32>(57154i, arg_0), vec2<i32>(26180i, arg_2.a))), select(func_3(firstLeadingBit(407u), -vec2<i32>(2147483647i, arg_2.a)), !vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 11u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 11u)], global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(35746u, 11u)]), !vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 11u)], global2[_wgslsmith_index_u32(u_input.d, 11u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72280u, 5u)], 5u)], 11u)], global2[_wgslsmith_index_u32(u_input.d, 11u)]))), func_4(Struct_3(func_4(Struct_3(Struct_1(arg_2.a, arg_1.yy), vec3<f32>(-749f, 1370f, arg_1.x), global1[_wgslsmith_index_u32(8571u, 32u)], vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(1u, 11u)]), arg_2), Struct_2(vec4<f32>(2099f, arg_2.b.x, arg_2.b.x, arg_2.b.x), vec4<i32>(u_input.c, -2147483647i, 38862i, -68562i), vec2<i32>(1i, -20821i))), arg_1, select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(0u, 11u)], true), func_3(36305u, vec2<i32>(-17903i, 2147483647i)).xww, vec3<bool>(false, global2[_wgslsmith_index_u32(31239u, 11u)], true)), vec4<bool>(global0[_wgslsmith_index_u32(5164u, 5u)] != 66882u, true, true, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), func_4(Struct_3(arg_2, vec3<f32>(166f, -589f, arg_2.b.x), vec3<bool>(global2[_wgslsmith_index_u32(56547u, 11u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 11u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)], 11u)]), arg_2), Struct_2(vec4<f32>(arg_2.b.x, arg_1.x, 1176f, 1169f), vec4<i32>(arg_0, 1i, 60319i, u_input.e), vec2<i32>(41011i, arg_0)))), func_2()));
    var var_1 = func_4(Struct_3(func_4(Struct_3(Struct_1(u_input.e, arg_1.yz), vec3<f32>(329f, 325f, arg_1.x), func_3(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], vec2<i32>(-2770i, var_0.e.a)).xxz, var_0.d, arg_2), Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, var_0.b.x, arg_2.b.x, arg_2.b.x), vec4<f32>(978f, 666f, -427f, arg_2.b.x))), vec4<i32>(var_0.e.a, u_input.a, 38181i, arg_0), _wgslsmith_div_vec2_i32(vec2<i32>(-9892i, -2147483647i), vec2<i32>(arg_2.a, -1i)))), _wgslsmith_f_op_vec3_f32(trunc(arg_1)), func_3(~select(global0[_wgslsmith_index_u32(9043u, 5u)], u_input.d, var_0.d.x), vec2<i32>(u_input.c << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6161u, 5u)], 5u)] % 32u), -1i)).yyw, !var_0.d, arg_2), Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1691f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), 1339f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1322f, arg_1.x, arg_2.b.x, -678f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-122f, var_0.b.x, var_0.a.b.x, -1364f)))), any(func_3(46358u, vec2<i32>(-2147483647i, 5151i)).wyw))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(4851i, -38910i, 9863i, u_input.a)), _wgslsmith_mod_vec4_i32(min(vec4<i32>(0i, u_input.e, -24382i, -2147483647i), vec4<i32>(5765i, arg_0, 907i, var_0.a.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.e, -31016i), vec4<i32>(arg_0, arg_0, 55297i, -1i)))), vec2<i32>(arg_2.a, 1i)));
    global0 = array<u32, 5>();
    var var_2 = func_2();
    let var_3 = var_2.a;
    return !func_3(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 5u)], u_input.b.x, 40980u, global0[_wgslsmith_index_u32(48603u, 5u)])), ~(~vec4<u32>(u_input.b.x, u_input.d, 32006u, 1u))), ~select(var_2.b.xy, firstTrailingBit(var_2.b.zy), all(var_0.d))).xyx;
}

fn func_1(arg_0: u32) -> vec2<i32> {
    var var_0 = Struct_3(Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-713f, -454f), vec2<f32>(-728f, -927f))) + vec2<f32>(-1198f, -1958f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1585f, 178f)))), _wgslsmith_f_op_f32(228f - _wgslsmith_f_op_f32(f32(-1f) * -1511f))), !func_5(_wgslsmith_add_i32(19079i, countOneBits(1i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(948f, -1330f, 1088f) - vec3<f32>(114f, -413f, 1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 768f, -494f), vec3<f32>(391f, -481f, -312f))), func_4(Struct_3(Struct_1(1i, vec2<f32>(-889f, -668f)), vec3<f32>(-476f, -746f, 589f), global1[_wgslsmith_index_u32(0u, 32u)], vec4<bool>(global2[_wgslsmith_index_u32(10468u, 11u)], global2[_wgslsmith_index_u32(0u, 11u)], true, true), Struct_1(u_input.e, vec2<f32>(1000f, 163f))), func_2())), !vec4<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 11u)], global2[_wgslsmith_index_u32(5013u, 11u)], global2[_wgslsmith_index_u32(42405u, 11u)])), func_3(~arg_0, ~vec2<i32>(-2147483647i, -1i)).x, firstTrailingBit(-1885i) == _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 0i), vec3<i32>(-4664i, u_input.a, u_input.e)), global2[_wgslsmith_index_u32(~firstTrailingBit(arg_0), 11u)]), Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-722f, 1641f))), _wgslsmith_div_vec2_f32(vec2<f32>(346f, -371f), _wgslsmith_div_vec2_f32(vec2<f32>(1296f, 306f), vec2<f32>(1310f, 1100f)))))));
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1625i, reverseBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.e.a, var_0.e.a), countOneBits(vec2<i32>(-1i, 8386i)))), _wgslsmith_clamp_i32(-27816i & ~u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-5895i, 0i), vec2<i32>(-2147483647i, u_input.c)), ~vec2<i32>(-20105i, -10722i)), -19810i)), vec3<i32>(max(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, u_input.a)), vec2<i32>(43729i, -9093i)), ~(-6593i)), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.e.a, u_input.e, -var_0.e.a), -_wgslsmith_clamp_vec3_i32(vec3<i32>(9438i, u_input.a, -2147483647i), vec3<i32>(2147483647i, var_0.a.a, u_input.e), vec3<i32>(u_input.e, var_0.e.a, 2147483647i)))));
    var var_2 = ~0u;
    var_1 = -vec3<i32>(-(var_0.e.a & 1i), -(~u_input.c), _wgslsmith_add_i32(var_1.x << (u_input.d % 32u), ~59047i));
    var_2 = 1u;
    return var_1.zx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 32>();
    global0 = array<u32, 5>();
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, abs(1i)) | vec2<i32>(reverseBits(u_input.a), u_input.a), select(func_1(121342u), max(vec2<i32>(-1i) * -vec2<i32>(-1i, u_input.e), max(abs(vec2<i32>(-2147483647i, -17538i)), ~vec2<i32>(u_input.e, -1i))), !(!(!global2[_wgslsmith_index_u32(u_input.b.x, 11u)]))));
    var var_1 = func_2().b;
    global0 = array<u32, 5>();
    var var_2 = _wgslsmith_clamp_vec3_u32(select(vec3<u32>(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)]), 5u)], _wgslsmith_dot_vec3_u32(countOneBits(u_input.b), vec3<u32>(global0[_wgslsmith_index_u32(1u, 5u)], u_input.d, 25158u)), ~(4294967295u >> (u_input.d % 32u))), _wgslsmith_sub_vec3_u32(u_input.b, ~vec3<u32>(1u, global0[_wgslsmith_index_u32(8911u, 5u)], u_input.d) >> (~vec3<u32>(0u, u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]) % vec3<u32>(32u))), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, u_input.d) >> (4294967295u % 32u), 11u)], false, global2[_wgslsmith_index_u32(4294967295u, 11u)])), ~u_input.b & u_input.b, ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(66625u, u_input.b.x, 0u)), vec3<u32>(u_input.d, ~92536u, global0[_wgslsmith_index_u32(~u_input.d, 5u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~(~reverseBits(-6149i)), func_4(Struct_3(Struct_1(var_0.x, vec2<f32>(144f, -1080f)), vec3<f32>(232f, 522f, 2174f), select(global1[_wgslsmith_index_u32(var_2.x, 32u)], global1[_wgslsmith_index_u32(var_2.x, 32u)], false), vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(15152u, 11u)]), func_4(Struct_3(Struct_1(9785i, vec2<f32>(748f, -407f)), vec3<f32>(355f, -1000f, -1612f), global1[_wgslsmith_index_u32(1u, 32u)], vec4<bool>(global2[_wgslsmith_index_u32(var_2.x, 11u)], false, global2[_wgslsmith_index_u32(4294967295u, 11u)], false), Struct_1(2147483647i, vec2<f32>(-884f, 1167f))), Struct_2(vec4<f32>(801f, 203f, 224f, -577f), vec4<i32>(var_0.x, var_1.x, var_1.x, 26829i), var_0))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-324f, -495f, 581f, 790f) + vec4<f32>(1081f, -965f, -129f, 393f)), vec4<i32>(1i, 15313i, var_1.x, 7683i), countOneBits(vec2<i32>(1i, var_1.x)))).a), min(24814u, var_2.x), _wgslsmith_mult_vec3_u32(~min(~vec3<u32>(global0[_wgslsmith_index_u32(23306u, 5u)], global0[_wgslsmith_index_u32(var_2.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), vec3<u32>(71330u, global0[_wgslsmith_index_u32(u_input.d, 5u)], 4294967295u)), vec3<u32>(1u, u_input.b.x, firstLeadingBit(u_input.b.x))));
}

