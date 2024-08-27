struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, false, false, true, true, false, true);

var<private> global2: array<bool, 6> = array<bool, 6>(false, false, false, false, true, true);

var<private> global3: i32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) - vec2<f32>(1844f, 1633f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, arg_2))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 724f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(321f, arg_2)))))), u_input.b.zxz, false, max(u_input.b.x ^ arg_0.a, global0.a) << (_wgslsmith_dot_vec2_u32(max(vec2<u32>(21094u, u_input.d.x), _wgslsmith_mult_vec2_u32(u_input.a.yz, u_input.a.ww)), vec2<u32>(37907u, u_input.c.x)) % 32u));
    global1 = array<bool, 8>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(-1i), abs(u_input.e)), firstLeadingBit(arg_0.a), ~firstTrailingBit(arg_0.a)), _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(9508i, 1i), vec2<i32>(-35981i, u_input.b.x)), vec2<i32>(-global0.a, -8543i)) != (1i & arg_0.a), arg_0.a);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(var_1.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(-40577i, 2147483647i, global0.a), vec3<i32>(-1i, -24102i, global0.a)), !(!(false && all(vec2<bool>(true, true)))), -3576i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-232f, -660f) * var_1.a))) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2))))), ~var_1.b, any(vec3<bool>(true | global1[_wgslsmith_index_u32(u_input.c.x & 1u, 8u)], true && !arg_1, false || !global2[_wgslsmith_index_u32(13744u, 6u)])), -1i);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(5218u, u_input.c.x), vec2<u32>(abs(_wgslsmith_div_u32(50736u ^ u_input.a.x, 37330u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.d.x, 1u, 43185u), select(vec4<u32>(9442u, u_input.c.x, u_input.d.x, 4294967295u), u_input.a, vec4<bool>(arg_1, var_1.c, true, var_1.c))), ~68351u)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4) -> Struct_2 {
    var var_0 = firstLeadingBit(~max(func_3(Struct_2(-2147483647i), global2[_wgslsmith_index_u32(0u, 6u)], arg_1.b.a.x) | vec2<u32>(22275u, 2314u), countOneBits(vec2<u32>(u_input.c.x, u_input.d.x) >> (vec2<u32>(48052u, u_input.d.x) % vec2<u32>(32u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(342f, -942f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b.a.x, arg_0.a)) - _wgslsmith_f_op_f32(-arg_0.a)))), _wgslsmith_mult_vec3_i32(arg_1.a.wzz, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x >> (5320u % 32u), arg_1.b.b.x ^ 2147483647i, -u_input.b.x), (vec3<i32>(global0.a, 25820i, global0.a) & arg_1.a.wzw) << (~vec3<u32>(60844u, var_0.x, u_input.c.x) % vec3<u32>(32u)), -vec3<i32>(-48502i, 0i, 2147483647i))), !any(vec3<bool>(true, true, true)), firstLeadingBit(_wgslsmith_add_i32(arg_1.b.d | global0.a, 0i) << (~(~0u) % 32u)));
    let var_2 = arg_1.b;
    let var_3 = arg_1;
    global1 = array<bool, 8>();
    return Struct_2(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(-(var_1.b.xz & vec2<i32>(0i, u_input.b.x)), var_1.b.xy)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: i32) -> vec3<bool> {
    global0 = Struct_2(-26901i);
    var var_0 = -30886i;
    global1 = array<bool, 8>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * 600f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-233f - -395f)))))));
    let var_2 = arg_0;
    return vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(arg_2.x, 8u)] | true, any(select(vec3<bool>(true, true, true && global2[_wgslsmith_index_u32(39773u, 6u)]), vec3<bool>(!global1[_wgslsmith_index_u32(arg_2.x, 8u)], arg_3 <= u_input.b.x, false), all(select(vec3<bool>(global2[_wgslsmith_index_u32(22828u, 6u)], true, global1[_wgslsmith_index_u32(60774u, 8u)]), vec3<bool>(false, false, true), global2[_wgslsmith_index_u32(11753u, 6u)])))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<u32>) -> vec3<i32> {
    var var_0 = !select(select(func_4(func_2(Struct_3(-449f), Struct_4(u_input.b, Struct_1(vec2<f32>(-824f, arg_0), vec3<i32>(55183i, -14041i, global0.a), global1[_wgslsmith_index_u32(21201u, 8u)], global0.a), Struct_2(-1i), false)), Struct_3(arg_0), select(vec3<u32>(arg_1, arg_2.x, u_input.c.x), u_input.d, false), u_input.e), !vec3<bool>(global1[_wgslsmith_index_u32(arg_1, 8u)], false, global1[_wgslsmith_index_u32(arg_1, 8u)]), !(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(2948u, 8u)]))), select(vec3<bool>(u_input.e > global0.a, true, false), func_4(Struct_2(global0.a), Struct_3(arg_0), u_input.c, abs(-1i)), true), vec3<bool>(true, true, true));
    var var_1 = vec4<u32>(74338u, _wgslsmith_dot_vec3_u32(~(~(~u_input.d)), u_input.a.zxy), firstLeadingBit(1u) ^ ~_wgslsmith_dot_vec3_u32(~u_input.c, u_input.a.yzw ^ vec3<u32>(arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_mult_u32(arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(68911u, 16610u, arg_2.x, arg_1), abs(u_input.a)) >> (arg_2.x % 32u)));
    let var_2 = Struct_2(~_wgslsmith_mult_i32(_wgslsmith_div_i32(~global0.a, _wgslsmith_add_i32(global0.a, u_input.b.x)), u_input.e));
    var_0 = !(!vec3<bool>(_wgslsmith_f_op_f32(arg_0 - arg_0) < 365f, !all(vec3<bool>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(1u, 6u)])), global2[_wgslsmith_index_u32(u_input.d.x, 6u)]));
    var var_3 = Struct_3(arg_0);
    return vec3<i32>(-1i, u_input.e, -(i32(-1i) * -_wgslsmith_mult_i32(var_2.a, -1i)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: f32) -> Struct_3 {
    let var_0 = vec2<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(min(u_input.a, u_input.a), vec4<u32>(4294967295u, 1u, u_input.c.x, u_input.d.x)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.c.x), u_input.a)), 8u)], arg_2.x);
    let var_1 = vec3<bool>(!any(func_4(func_2(Struct_3(arg_3), Struct_4(u_input.b, Struct_1(vec2<f32>(-1165f, arg_3), vec3<i32>(1i, arg_0.x, global0.a), true, -26759i), Struct_2(2147483647i), true)), Struct_3(arg_3), ~u_input.c, _wgslsmith_mod_i32(-16047i, -2147483647i)).yx), any(select(select(var_0, select(var_0, vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 8u)]), arg_1.x), false), select(vec2<bool>(arg_1.x, arg_1.x), select(arg_2, var_0, vec2<bool>(false, var_0.x)), true), true & !global1[_wgslsmith_index_u32(u_input.c.x, 8u)])), !arg_1.x);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -223f)))) - _wgslsmith_f_op_f32(2589f * arg_3)));
    var var_3 = Struct_2(reverseBits(global0.a) | u_input.e);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3, var_2.a)))))), arg_0, all(vec2<bool>(func_4(func_2(var_2, Struct_4(u_input.b, Struct_1(vec2<f32>(arg_3, -763f), vec3<i32>(0i, arg_0.x, u_input.b.x), global2[_wgslsmith_index_u32(u_input.d.x, 6u)], global0.a), Struct_2(-9935i), false)), var_2, u_input.a.wxw, u_input.b.x).x, !any(vec2<bool>(true, true)))), func_2(var_2, Struct_4(vec4<i32>(max(3206i, 0i), func_2(var_2, Struct_4(u_input.b, Struct_1(vec2<f32>(-1269f, -235f), u_input.b.zwz, arg_1.x, var_3.a), Struct_2(u_input.b.x), var_0.x)).a, global0.a, 0i), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 1217f) - vec2<f32>(-263f, -2694f)), vec3<i32>(arg_0.x, global0.a, -2147483647i) | u_input.b.xxw, arg_3 > arg_3, _wgslsmith_div_i32(-86140i, -2129i)), func_2(Struct_3(130f), Struct_4(u_input.b, Struct_1(vec2<f32>(-1242f, arg_3), vec3<i32>(2147483647i, arg_0.x, -36308i), global2[_wgslsmith_index_u32(1u, 6u)], -1i), Struct_2(0i), arg_2.x)), arg_2.x)).a);
    return var_2;
}

fn func_6(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = func_4(func_2(Struct_3(arg_0.a), Struct_4(u_input.b, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-152f, 359f), vec2<f32>(arg_0.a, -615f)), u_input.b.zwy, all(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), global0.a), Struct_2(u_input.b.x), true)), arg_0, u_input.d, 0i).x;
    var_0 = !(global2[_wgslsmith_index_u32(31590u, 6u)] && ((~u_input.a.x <= u_input.c.x) && !global2[_wgslsmith_index_u32(~u_input.a.x, 6u)]));
    let var_1 = ~_wgslsmith_dot_vec2_u32(u_input.d.yz, firstLeadingBit(_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.c.x, 9492u), u_input.c.zy, vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.d.x, u_input.c.x)))));
    global1 = array<bool, 8>();
    var var_2 = vec3<i32>(48764i, -(~u_input.b.x) << (~(~_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, 1u))) % 32u), -1i);
    return ~(~_wgslsmith_sub_vec4_u32(select(u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 30990u, var_1, 77258u), u_input.a), false), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_sub_vec4_u32(func_6(func_5(func_1(-1000f, u_input.c.x, vec2<u32>(u_input.c.x, u_input.d.x)), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 6u)], true, global1[_wgslsmith_index_u32(0u, 8u)], false), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], global2[_wgslsmith_index_u32(u_input.a.x, 6u)]), _wgslsmith_f_op_f32(max(-3112f, -1013f)))), min(vec4<u32>(14837u, 8846u, 91337u, abs(22768u)), _wgslsmith_mult_vec4_u32(u_input.a, func_6(Struct_3(1393f))))));
    let var_1 = _wgslsmith_mod_vec4_u32(~(~(~(vec4<u32>(var_0.x, 28223u, var_0.x, 1u) | vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 7360u)))), u_input.a);
    global0 = func_2(Struct_3(1f), Struct_4(u_input.b, Struct_1(vec2<f32>(872f, -118f), select(func_1(897f, 0u, vec2<u32>(31728u, var_1.x)), vec3<i32>(-40924i, 69488i, u_input.e), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 8u)], true, global2[_wgslsmith_index_u32(var_0.x, 6u)])), !select(false, global2[_wgslsmith_index_u32(var_0.x, 6u)], false), _wgslsmith_dot_vec2_i32(~vec2<i32>(58052i, 1i), u_input.b.yw >> (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)))), Struct_2(firstLeadingBit(25681i) | global0.a), any(vec2<bool>(global1[_wgslsmith_index_u32(var_0.x ^ u_input.a.x, 8u)], select(false, true, true)))));
    var var_2 = vec2<u32>(19256u, var_0.x ^ 4294967295u);
    let var_3 = _wgslsmith_dot_vec3_u32(select(var_0.zwy, _wgslsmith_add_vec3_u32(u_input.c & u_input.c, vec3<u32>(1u, var_1.x, 7564u)) ^ ~(~var_0.www), func_4(Struct_2(firstLeadingBit(u_input.e)), func_5(~vec3<i32>(-68936i, 2147483647i, global0.a), vec4<bool>(false, true, global2[_wgslsmith_index_u32(var_0.x, 6u)], true), vec2<bool>(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(u_input.d.x, 6u)]), _wgslsmith_f_op_f32(step(-1692f, 1166f))), vec3<u32>(1u, _wgslsmith_div_u32(11028u, var_1.x), var_1.x), 55576i)), ((_wgslsmith_clamp_vec3_u32(var_0.yxz, vec3<u32>(0u, 0u, 1041u), var_0.xyw) & vec3<u32>(var_1.x, var_0.x, 41648u)) ^ (vec3<u32>(102301u, var_1.x, var_1.x) ^ vec3<u32>(var_2.x, 4294967295u, 19979u))) | ~u_input.c);
    var var_4 = var_2.x;
    var var_5 = ~(-u_input.b & vec4<i32>(-30976i, max(-u_input.b.x, 0i), (i32(-1i) * -2147483647i) >> (var_2.x % 32u), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1397f, 1105f) + vec2<f32>(594f, -966f)), vec2<f32>(530f, -897f), vec2<bool>(global1[_wgslsmith_index_u32(47164u, 8u)], false))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-835f, 576f) * vec2<f32>(1544f, 1329f)))))))), ~(-_wgslsmith_sub_i32(~42160i, -global0.a)), 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-606f + -2035f), _wgslsmith_f_op_f32(trunc(-581f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(597f * 601f), _wgslsmith_f_op_f32(640f - 386f))) - vec3<f32>(-166f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(111f + -1440f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-188f + 621f)))));
}

