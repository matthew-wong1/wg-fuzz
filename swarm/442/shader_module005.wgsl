struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 18>;

var<private> global3: array<u32, 21> = array<u32, 21>(0u, 40663u, 19875u, 4294967295u, 1u, 34613u, 11984u, 20292u, 40955u, 74256u, 44763u, 3394u, 23486u, 38990u, 81491u, 4294967295u, 0u, 21787u, 0u, 63440u, 0u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_1(global1.x, global0.c.x, !(!((u_input.c.x <= global3[_wgslsmith_index_u32(u_input.c.x, 21u)]) & !global1.x)), 345f, true);
    var var_1 = Struct_2(global0.a, _wgslsmith_sub_u32(~(global3[_wgslsmith_index_u32(u_input.c.x, 21u)] ^ global3[_wgslsmith_index_u32(25796u, 21u)]), ~(~29623u)) == _wgslsmith_dot_vec4_u32(max(select(vec4<u32>(45896u, arg_0, global2[_wgslsmith_index_u32(1u, 18u)], 1u), vec4<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(110283u, 21u)], u_input.c.x), vec4<bool>(global0.b, global1.x, true, global1.x)), ~vec4<u32>(10036u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 21u)], 18u)], 21u)], 21u)], 79953u, global3[_wgslsmith_index_u32(26403u, 21u)])), ~_wgslsmith_mult_vec4_u32(vec4<u32>(27015u, global2[_wgslsmith_index_u32(86472u, 18u)], 4294967295u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 14753u, 1u))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(global0.d.d, -1213f), _wgslsmith_f_op_f32(f32(-1f) * -1341f)), vec2<f32>(_wgslsmith_div_f32(-2376f, _wgslsmith_div_f32(-197f, -285f)), _wgslsmith_f_op_f32(f32(-1f) * -230f)))), Struct_1(any(global1.xz), 1355f, true, _wgslsmith_f_op_f32(global0.a.b + global0.d.d), var_0.c), vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-22901i, global0.e.x), vec2<i32>(global0.e.x, -2147483647i), var_0.c), -vec2<i32>(-1i, global0.e.x)), _wgslsmith_mod_i32(u_input.a, u_input.b.x), firstLeadingBit(u_input.a)) << (countOneBits(vec4<u32>(_wgslsmith_div_u32(u_input.c.x, 1u), global3[_wgslsmith_index_u32(~arg_0, 21u)], arg_0, global3[_wgslsmith_index_u32(1u, 21u)])) % vec4<u32>(32u)));
    global1 = !(!select(!vec3<bool>(true, var_0.e, false), select(vec3<bool>(global1.x, global1.x, false), !vec3<bool>(true, global1.x, true), true), vec3<bool>(global3[_wgslsmith_index_u32(21140u, 21u)] != 31020u, !global1.x, !global0.d.a)));
    global0 = Struct_2(Struct_1(select(false, all(!vec4<bool>(var_0.c, false, true, global1.x)), any(select(vec4<bool>(var_1.b, false, false, false), vec4<bool>(global0.d.e, true, true, true), vec4<bool>(true, false, global0.b, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1625f, _wgslsmith_f_op_f32(-var_1.a.b)) * _wgslsmith_f_op_f32(-var_1.c.x)), !global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.b, _wgslsmith_f_op_f32(f32(-1f) * -144f)))), any(vec4<bool>(!var_1.d.a, any(vec3<bool>(false, global0.d.a, var_1.b)), any(vec3<bool>(var_0.a, var_1.d.e, global1.x)), var_0.c))), all(global1.zz), _wgslsmith_f_op_vec2_f32(ceil(var_1.c)), Struct_1(any(select(!vec3<bool>(true, var_0.a, global0.d.c), !vec3<bool>(false, var_0.a, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(-var_1.a.b), _wgslsmith_f_op_f32(-1031f + var_0.b) == -260f, 845f, !global1.x), ~_wgslsmith_div_vec4_i32(global0.e, ~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 1i, 2147483647i, 17975i), global0.e)));
    let var_2 = Struct_2(Struct_1(global0.d.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1321f), _wgslsmith_f_op_f32(sign(-664f))), false, -1490f, any(!select(vec2<bool>(false, true), global1.zy, true))), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(29395u, reverseBits(1u)), 21u)] < abs(_wgslsmith_div_u32(~u_input.c.x, abs(1u))), _wgslsmith_f_op_vec2_f32(-var_1.c), var_1.a, ~countOneBits(-firstTrailingBit(global0.e)));
    return _wgslsmith_mult_u32(reverseBits(arg_0), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, arg_0, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17623u, 18u)], 18u)]), select(u_input.c, vec3<u32>(1u, u_input.c.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37434u, 18u)], 21u)]), vec3<bool>(var_0.e, false, var_2.d.c))), _wgslsmith_mult_vec3_u32(max(u_input.c, u_input.c), countOneBits(u_input.c))) >> (max(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(55822u, arg_0, 29178u), u_input.c), u_input.c), 4294967295u) % 32u));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    return ~(~(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(41124u, 21u)]) | _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, 37300u, 1u)))) << (func_3(countOneBits(~(~4294967295u))) % 32u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = 43540u;
    let var_1 = Struct_2(Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c.x, -355f) - _wgslsmith_f_op_f32(1322f * -773f)), arg_1.d.b), arg_1.d.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(f32(-1f) * -445f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2792f, global0.c.x)))), arg_1.b), false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(global0.c, _wgslsmith_f_op_vec2_f32(-global0.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1117f, 303f) - arg_1.c))), vec2<f32>(1000f, -380f), vec2<bool>(global0.b, !(global0.a.b < -1962f)))), global0.a, global0.e);
    let var_2 = Struct_1(!var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.d)), true, global0.c.x, !global0.b);
    let var_3 = _wgslsmith_f_op_f32(step(-247f, _wgslsmith_f_op_f32(arg_1.a.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-353f - 118f) * -549f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_1.d.d))))))));
    var var_4 = vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.b))) == _wgslsmith_f_op_f32(min(global0.a.b, var_1.c.x)), select(var_1.a.e, (any(global1.yx) || true) || !(true & arg_1.b), arg_1.a.e), true && (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b * global0.a.b))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.c.x))))), true);
    return Struct_1(!(true && !(!var_2.a)), _wgslsmith_f_op_f32(select(1306f, _wgslsmith_div_f32(781f, _wgslsmith_f_op_f32(-global0.d.d)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1248f, 1193f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3 + global0.c.x), _wgslsmith_f_op_f32(select(var_1.a.d, -1159f, global1.x))))) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), -269f)), _wgslsmith_f_op_f32(-var_3), true);
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(((~vec4<u32>(1u, 39840u, 4294967295u, 1u) << (vec4<u32>(global3[_wgslsmith_index_u32(0u, 21u)], 4294967295u, global2[_wgslsmith_index_u32(60592u, 18u)], 46086u) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(8795u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21185u, 18u)], 21u)])), ~0u, func_2(vec2<f32>(-429f, global0.c.x), Struct_2(global0.a, global1.x, vec2<f32>(global0.a.b, 1000f), Struct_1(true, -1131f, false, global0.d.b, true), global0.e)), ~global2[_wgslsmith_index_u32(0u, 18u)]) % vec4<u32>(32u))) | vec4<u32>(firstLeadingBit(max(0u, global3[_wgslsmith_index_u32(16098u, 21u)])), 123430u, countOneBits(~0u), u_input.c.x), Struct_2(Struct_1(false, 901f, global1.x, -1302f, true), global0.a.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.c), _wgslsmith_f_op_vec2_f32(global0.c * vec2<f32>(global0.a.b, -1511f)), global1.yz))), Struct_1(!(global0.b & global1.x), _wgslsmith_f_op_f32(f32(-1f) * -428f), !(!global0.b), global0.c.x, global1.x), _wgslsmith_add_vec4_i32(countOneBits(global0.e | global0.e), ~firstLeadingBit(vec4<i32>(global0.e.x, u_input.b.x, -1i, u_input.b.x)))));
    let var_1 = u_input.b.x;
    global1 = !vec3<bool>(true, true, all(vec3<bool>(global1.x, !global1.x, true)));
    global0 = Struct_2(func_4(~(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(u_input.c.x, 18u)], global2[_wgslsmith_index_u32(28459u, 18u)], 51302u)), Struct_2(func_4(vec4<u32>(1u, 19682u, global3[_wgslsmith_index_u32(4294967295u, 21u)], 1u), Struct_2(Struct_1(global1.x, global0.d.d, false, global0.c.x, global1.x), global1.x, vec2<f32>(global0.d.b, -225f), Struct_1(true, 832f, false, global0.a.d, false), vec4<i32>(-33985i, var_1, u_input.a, 1i))), var_0.e, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_f_op_f32(-global0.c.x)), var_0, global0.e)), ~2233i > (_wgslsmith_div_i32(-2147483647i, -global0.e.x) & reverseBits(~var_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c * vec2<f32>(global0.c.x, global0.a.d))), func_4(~((vec4<u32>(26859u, 0u, global2[_wgslsmith_index_u32(6306u, 18u)], 4190u) ^ vec4<u32>(u_input.c.x, 1u, global2[_wgslsmith_index_u32(1u, 18u)], 66883u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 21u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 21u)], 21u)], 4294967295u), vec4<u32>(0u, global2[_wgslsmith_index_u32(u_input.c.x, 18u)], global3[_wgslsmith_index_u32(10834u, 21u)], 0u)) % vec4<u32>(32u))), Struct_2(func_4(~vec4<u32>(u_input.c.x, 1u, 4294967295u, u_input.c.x), Struct_2(Struct_1(global1.x, -1000f, false, var_0.b, true), global0.a.a, global0.c, global0.a, vec4<i32>(27829i, var_1, var_1, var_1))), func_4(vec4<u32>(global3[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(u_input.c.x, 21u)], u_input.c.x), Struct_2(Struct_1(var_0.e, global0.c.x, false, -129f, true), global1.x, global0.c, Struct_1(false, -916f, global1.x, -973f, global1.x), global0.e)).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c) - vec2<f32>(1014f, var_0.b)), var_0, select(vec4<i32>(1i, global0.e.x, var_1, -30354i) >> (vec4<u32>(32754u, 0u, global2[_wgslsmith_index_u32(4294967295u, 18u)], 51409u) % vec4<u32>(32u)), ~vec4<i32>(60948i, -2147483647i, 1i, var_1), !vec4<bool>(global0.a.e, global0.b, global1.x, global0.b)))), max(vec4<i32>(select(u_input.a ^ -14006i, _wgslsmith_mod_i32(global0.e.x, 45090i), !global0.a.c), _wgslsmith_mult_i32(35763i, -2147483647i << (u_input.c.x % 32u)), global0.e.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, global0.e.x, 24361i), vec3<i32>(1i, u_input.b.x, global0.e.x))), vec4<i32>(var_1, 1i, firstTrailingBit(8715i), _wgslsmith_sub_i32(i32(-1i) * -9934i, u_input.b.x))));
    let var_2 = Struct_2(global0.a, any(!select(global1.yz, vec2<bool>(global1.x, global1.x), global1.yy)) || (select(global1.x != global0.a.a, global0.e.x > global0.e.x, !global0.d.c) || (false | (69115u < global2[_wgslsmith_index_u32(6843u, 18u)]))), global0.c, var_0, _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, _wgslsmith_mod_i32(firstLeadingBit(15230i), _wgslsmith_mult_i32(global0.e.x, var_1)), global0.e.x), _wgslsmith_div_vec4_i32(global0.e, _wgslsmith_div_vec4_i32(global0.e, global0.e & vec4<i32>(var_1, global0.e.x, u_input.a, 48674i)))));
    return var_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(min(countOneBits(arg_3), min(12583i, arg_0.e.x)), _wgslsmith_dot_vec3_i32(-arg_0.e.xwy, -u_input.b)), 48190i, -(~min(2147483647i, -41415i)), min(2267i, 0i >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(102685u, 18u)], 18u)] % 32u)) & arg_3), arg_0.e, ~firstLeadingBit(arg_0.e));
    let var_1 = u_input.c;
    var_0 = arg_1.e;
    global3 = array<u32, 21>();
    global2 = array<u32, 18>();
    return 715f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(global0.a.a, _wgslsmith_f_op_f32(-1101f - _wgslsmith_f_op_f32(func_5(Struct_2(global0.d, global1.x, vec2<f32>(740f, global0.a.b), global0.a, global0.e), func_1(), u_input.c.xz, ~global0.e.x))), !global1.x, _wgslsmith_f_op_f32(global0.d.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1807f * 104f) + -1793f)), global0.b), false || (false | ((global0.d.d == global0.d.d) & !global1.x)), _wgslsmith_f_op_vec2_f32(global0.c + global0.c), func_1().a, vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.e.x, -48927i), func_1().e.zx), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, global0.e.x)), u_input.b.xy)), -22211i << (u_input.c.x % 32u), -max(~(-45630i), ~global0.e.x), -39249i));
    global3 = array<u32, 21>();
    global2 = array<u32, 18>();
    let var_0 = _wgslsmith_mult_i32(firstTrailingBit(1i), ~global0.e.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-2030f, global0.a.d), global0.d.b, func_4(vec4<u32>(49457u, global2[_wgslsmith_index_u32(5412u, 18u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 21u)], 27342u), Struct_2(Struct_1(global1.x, 178f, true, global0.d.b, global0.a.a), global0.d.c, vec2<f32>(804f, -198f), Struct_1(global1.x, 380f, true, 1058f, global0.a.a), global0.e)).d, _wgslsmith_f_op_f32(ceil(-464f)))))), vec4<f32>(-877f, global0.d.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1().d.d + _wgslsmith_f_op_f32(max(433f, -500f))), _wgslsmith_f_op_f32(f32(-1f) * -450f)), -242f), !(!global1.x & true)));
    global2 = array<u32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(u_input.c.x, ~global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49472u, 21u)], 18u)], global3[_wgslsmith_index_u32(~u_input.c.x, 21u)])) << (~reverseBits(u_input.c) % vec3<u32>(32u)), -countOneBits(abs(_wgslsmith_clamp_i32(global0.e.x, global0.e.x, 2147483647i))), ~1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-func_1().d.d), var_1.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, global0.d.b) - vec2<f32>(var_1.x, -1310f)))))), _wgslsmith_mult_i32(-_wgslsmith_div_i32(var_0, global0.e.x), countOneBits(u_input.b.x)));
}

