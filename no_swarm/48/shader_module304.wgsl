struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
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

var<private> global0: array<Struct_1, 3>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<Struct_1, 12>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1732f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.e))), _wgslsmith_f_op_f32(arg_2.a.d.x * _wgslsmith_f_op_f32(abs(-349f))))))));
    let var_1 = true;
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(countOneBits(arg_2.a.a), 12u)], ~reverseBits(u_input.b), Struct_2(any(select(select(vec2<bool>(false, global1.x), vec2<bool>(true, true), arg_2.a.c.xw), arg_2.a.c.xy, select(arg_2.a.c.yw, vec2<bool>(var_1, true), arg_2.a.c.yz)))), Struct_2(global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-551f * 1113f), var_0)) * -704f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1322f * arg_2.a.d.x) * _wgslsmith_div_f32(-244f, -523f)), _wgslsmith_f_op_f32(trunc(197f)))));
    var var_3 = arg_2.a.a;
    var_3 = 23449u;
    return select(abs(~vec2<u32>(_wgslsmith_add_u32(48800u, var_2.a.a), 1384u)), vec2<u32>(~0u, firstLeadingBit(arg_2.a.a)), vec2<bool>(arg_2.d.a, arg_2.c.a));
}

fn func_2() -> bool {
    var var_0 = 49833i;
    var var_1 = -u_input.b;
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(42895u, 4895u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 73984u), func_3(2147483647i, vec3<f32>(-543f, -887f, -1271f), Struct_3(global0[_wgslsmith_index_u32(0u, 3u)], vec3<i32>(u_input.a.x, u_input.a.x, var_1.x), Struct_2(global1.x), Struct_2(global1.x), -176f)))), reverseBits(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(0i, u_input.b.x), -2147483647i)), select(vec4<bool>(global1.x, any(vec2<bool>(false, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(global1.x, global1.x, global1.x), false)), true), !(!(!vec4<bool>(global1.x, global1.x, global1.x, false))), select(!select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(false, true, global1.x, true), vec4<bool>(false, global1.x, global1.x, global1.x)), !select(vec4<bool>(false, false, global1.x, true), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1059f, -2393f) * vec2<f32>(-1572f, 606f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1115f))), -1338f)));
    let var_3 = ~(~vec4<u32>(1u, var_2.a, firstLeadingBit(22915u), 56690u) >> (vec4<u32>(_wgslsmith_clamp_u32(var_2.a, ~0u, var_2.a ^ var_2.a), 8865u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_2.a, var_2.a, var_2.a, 1u)), vec4<u32>(4294967295u, var_2.a, 1u, 36142u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_2.a, 89653u), var_2.a << (0u % 32u))) % vec4<u32>(32u)));
    var var_4 = 0u;
    return var_2.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: bool) -> f32 {
    let var_0 = 65757i;
    global1 = select(vec2<bool>(select(false, global1.x, arg_1.a.c.x), !any(select(vec4<bool>(global1.x, false, global1.x, false), arg_1.a.c, vec4<bool>(false, arg_0.c.x, arg_1.c.a, false)))), select(select(select(arg_0.c.xx, arg_1.a.c.wz, arg_0.c.xy), arg_1.a.c.yx, arg_0.c.zy), select(select(vec2<bool>(arg_1.a.c.x, arg_1.a.c.x), !vec2<bool>(global1.x, arg_0.c.x), false), arg_0.c.zz, false), any(select(select(vec2<bool>(arg_0.c.x, true), vec2<bool>(arg_0.c.x, global1.x), vec2<bool>(false, arg_1.c.a)), select(vec2<bool>(arg_0.c.x, arg_0.c.x), arg_1.a.c.yz, vec2<bool>(false, global1.x)), !arg_0.c.zy))), select(vec2<bool>((false | arg_3) != true, select(arg_1.a.c.x, arg_1.a.c.x, select(arg_3, arg_3, true))), !vec2<bool>(true, arg_3), select(arg_0.c.xz, vec2<bool>(false, false), all(vec4<bool>(arg_1.a.c.x, true, true, true)))));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~(71434u << (select(arg_0.a, 13513u, global1.x) % 32u)), ~arg_0.a), firstLeadingBit(arg_0.a));
    var var_2 = arg_1.d;
    let var_3 = _wgslsmith_clamp_vec4_i32(~(vec4<i32>(arg_1.b.x, var_0, 1i, 7747i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, arg_2.x, -26717i, 1i) & vec4<i32>(522i, arg_1.b.x, var_0, 2147483647i), -vec4<i32>(arg_2.x, arg_0.b, 1i, var_0))), select(firstTrailingBit(vec4<i32>(36127i, -2147483647i, arg_1.a.b, var_0)) << (vec4<u32>(73690u, 4294967295u, arg_1.a.a, var_1) % vec4<u32>(32u)), select(-vec4<i32>(29270i, 1i, arg_0.b, 2147483647i), vec4<i32>(2147483647i, arg_2.x, -1i, arg_0.b), select(arg_0.c, vec4<bool>(arg_3, global1.x, arg_3, true), vec4<bool>(arg_1.c.a, arg_1.a.c.x, arg_1.c.a, true))), !all(vec4<bool>(var_2.a, true, arg_1.a.c.x, true))) & vec4<i32>(-_wgslsmith_div_i32(arg_1.b.x, arg_0.b), -1i, arg_1.b.x, var_0), select(-(~firstLeadingBit(vec4<i32>(43775i, -27027i, -7783i, 0i))), vec4<i32>(~1i, _wgslsmith_mod_i32(arg_0.b, max(u_input.b.x, -3266i)), 0i, 2147483647i), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(~_wgslsmith_add_u32(~33565u, 1u), u_input.a.x, vec4<bool>(true, !func_2(), all(select(vec2<bool>(true, false), vec2<bool>(global1.x, true), global1.x)), true), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-375f, -305f))))))), Struct_3(global2[_wgslsmith_index_u32(reverseBits(~(~1u)), 12u)], vec3<i32>(u_input.a.x, -46050i >> (1u % 32u), ~u_input.c.x) & reverseBits(u_input.b), Struct_2(false), Struct_2(true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-928f + -1297f))))), u_input.b, !(!all(select(vec3<bool>(false, global1.x, false), vec3<bool>(true, global1.x, false), vec3<bool>(true, global1.x, true))))));
    let var_1 = _wgslsmith_f_op_f32(min(-410f, _wgslsmith_div_f32(1300f, -1257f)));
    global0 = array<Struct_1, 3>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1644f * -891f) * var_1);
    let var_3 = vec4<bool>(false, any(vec4<bool>(all(vec4<bool>(true, global1.x, false, true)), any(!vec3<bool>(global1.x, global1.x, global1.x)), true, func_2())), true, any(!(!select(vec2<bool>(true, true), vec2<bool>(global1.x, false), global1.x))));
    return select(!select(!select(var_3, var_3, var_3), select(!var_3, select(var_3, var_3, var_3.x), true), select(select(vec4<bool>(true, false, false, true), var_3, var_3), select(vec4<bool>(var_3.x, true, var_3.x, var_3.x), var_3, var_3), vec4<bool>(true, false, global1.x, false))), !(!var_3), vec4<bool>(!any(var_3.xzz), func_2(), false, var_3.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_1, 3>();
    let var_0 = global0[_wgslsmith_index_u32(arg_0.a, 3u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(-318f)) >= var_0.d.x);
    global1 = !arg_1.zz;
    let var_2 = vec3<i32>(2147483647i, _wgslsmith_div_i32(var_0.b, ~(-1239i)) >> (49824u % 32u), _wgslsmith_div_i32(2147483647i, (firstTrailingBit(u_input.c.x) ^ arg_0.b) | _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, u_input.b), countOneBits(u_input.b))));
    return Struct_1(~(~var_0.a), ~arg_0.b, vec4<bool>(all(var_0.c), min(_wgslsmith_mod_i32(var_2.x, var_2.x), arg_3 ^ 24858i) > -5724i, true, !var_0.c.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-842f, _wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(step(var_0.d.x, -2878f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(32488i);
    let var_1 = func_5(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 3u)], !func_1(), Struct_2(true), 1i ^ abs(_wgslsmith_div_i32(-3194i, -20460i & var_0)));
    global2 = array<Struct_1, 12>();
    let var_2 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(~(~var_1.a), countOneBits(var_1.a << (var_1.a % 32u))), 4120u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(5156u, 10101u, var_1.a) << ((vec3<u32>(var_1.a, 58608u, var_1.a) ^ vec3<u32>(71033u, 16177u, 0u)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(abs(reverseBits(vec3<u32>(var_1.a, var_1.a, var_1.a))), vec3<u32>(var_1.a, var_1.a, 35653u))));
    global1 = func_1().zw;
    var var_3 = vec4<i32>(-41025i, 2147483647i, _wgslsmith_sub_i32(-(~(i32(-1i) * -92534i)), _wgslsmith_clamp_i32(var_0, firstTrailingBit(var_0) >> (1u % 32u), i32(-1i) * -2147483647i)), -u_input.c.x);
    let var_4 = Struct_3(Struct_1(abs(var_1.a), -(1i | ~u_input.c.x), vec4<bool>(true, func_5(func_5(global2[_wgslsmith_index_u32(var_1.a, 12u)], vec4<bool>(true, false, false, global1.x), Struct_2(var_1.c.x), -52147i), var_1.c, Struct_2(true), var_0).c.x, var_1.c.x, global1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-785f, 442f))) * var_1.d)), firstTrailingBit(vec3<i32>(var_0, -3437i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-42608i, var_0, 1i, u_input.b.x), vec4<i32>(var_1.b, u_input.c.x, 4806i, -29394i)), vec4<i32>(47231i, var_0, -1i, var_0) >> (vec4<u32>(4294967295u, var_1.a, 27864u, var_1.a) % vec4<u32>(32u))))), Struct_2(false), Struct_2(!var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(var_1.a, 31973i, var_1.c, vec2<f32>(var_1.d.x, var_1.d.x)), Struct_3(var_1, vec3<i32>(var_0, var_0, -12000i), Struct_2(true), Struct_2(false), -295f), vec3<i32>(u_input.c.x, 8164i, u_input.c.x), global1.x)) - _wgslsmith_f_op_f32(ceil(-1000f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) * var_1.d.x) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.d.x, var_1.d.x), _wgslsmith_f_op_f32(var_1.d.x - -933f))))));
    let var_5 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.a.d.x, var_4.a.d.x, var_1.d.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(844f, var_1.d.x, var_1.d.x)))))) - vec3<f32>(var_4.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.d.x * var_1.d.x) + var_4.e), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.d.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.x, -781f, var_4.a.d.x), vec3<f32>(var_1.d.x, var_1.d.x, 249f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.d.x, 1000f, var_1.d.x))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(584f, 835f, var_4.a.d.x))), vec3<f32>(var_1.d.x, var_4.a.d.x, 1000f), vec3<bool>(true, true, false)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -541f), var_1.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.d.x)) - var_1.d.x), var_1.b);
}

