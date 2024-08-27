struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(54114u, 1u, 1u);

var<private> global1: array<u32, 16>;

var<private> global2: vec2<f32> = vec2<f32>(289f, 1004f);

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec3<bool>(false, false, false), vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, true, true), vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, false, true), vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, true, false), vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, false, false)), Struct_2(vec3<bool>(false, false, false), vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, false, true), vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, false), vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, true, true), vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, true, false), vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, false), vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, true), vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, false, true), vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, true, false), vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, false, false), vec3<bool>(false, false, true)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = ~max(~arg_3.a.zzz, arg_1.xxy ^ vec3<u32>(~6735u, firstLeadingBit(global1[_wgslsmith_index_u32(u_input.d, 16u)]), global1[_wgslsmith_index_u32(min(u_input.d, 0u), 16u)]));
    global0 = _wgslsmith_div_vec3_u32(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 20339u, 4294967295u), arg_1.yyy), ~arg_1.yzx), ~_wgslsmith_clamp_u32(u_input.d, global0.x, global1[_wgslsmith_index_u32(var_0.x, 16u)]), ~u_input.d)), countOneBits(vec3<u32>(max(firstLeadingBit(arg_3.a.x), arg_0), _wgslsmith_mod_u32(1u, ~56743u), _wgslsmith_sub_u32(1u, 1u))));
    let var_1 = Struct_2(select(vec3<bool>(true, true, arg_3.c.x), select(select(arg_3.c, vec3<bool>(false, arg_3.c.x, arg_3.c.x), vec3<bool>(arg_2.x, true, arg_3.c.x)), select(vec3<bool>(arg_2.x, true, true), select(arg_3.c, arg_3.c, arg_2.x), select(arg_3.c, arg_3.c, arg_3.c.x)), true), !arg_3.c), !vec3<bool>(any(vec3<bool>(arg_3.c.x, true, arg_3.c.x)) || true, true, false));
    let var_2 = false;
    var var_3 = u_input.c;
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(29092u, 1u) ^ (global0.x >> ((u_input.d >> (4294967295u % 32u)) % 32u)), 1u), arg_3.a.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -780f), -925f, 616f, arg_2.x), vec4<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), arg_3.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - -114f) - _wgslsmith_f_op_f32(-326f + -683f)))))));
    let var_1 = _wgslsmith_add_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(-min(u_input.c, u_input.c), u_input.a));
    let var_2 = min(0i, u_input.a.x ^ (-40894i >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global0.x, global0.x), vec3<u32>(35647u, u_input.d, u_input.d))) % 32u)));
    var var_3 = ~var_2;
    var var_4 = _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(ceil(var_0.x)));
    return Struct_1(abs(vec4<u32>(~(global1[_wgslsmith_index_u32(76098u, 16u)] & global1[_wgslsmith_index_u32(18860u, 16u)]), _wgslsmith_mod_u32(reverseBits(75017u), global0.x), global1[_wgslsmith_index_u32(func_3(~4412u, ~vec4<u32>(4294967295u, u_input.d, global0.x, u_input.d), vec2<bool>(true, true), Struct_1(vec4<u32>(41525u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 16u)], 16u)], global1[_wgslsmith_index_u32(89677u, 16u)], u_input.d), var_2, vec3<bool>(false, arg_1.c.x, arg_1.a.x))), 16u)], _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, global0.x, 10830u), u_input.d))), -2147483647i, arg_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_2;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(262f + -130f) - _wgslsmith_div_f32(-659f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)))), 957f);
    var var_2 = Struct_3(vec2<bool>(true, false), vec3<bool>(arg_2.x, !(any(vec3<bool>(arg_0.c.x, false, false)) == !arg_3.c.x), all(vec4<bool>(true, var_0.x, var_0.x, any(arg_1.a)))), select(vec3<bool>(arg_0.c.x, arg_3.c.x, func_2(Struct_3(arg_0.c.yx, vec3<bool>(true, arg_0.c.x, arg_1.a.x), vec3<bool>(arg_3.c.x, var_0.x, arg_2.x), Struct_2(vec3<bool>(var_0.x, arg_3.c.x, arg_1.b.x), arg_2.xyx)), Struct_3(arg_2.wx, arg_0.c, arg_2.zyx, Struct_2(vec3<bool>(arg_2.x, false, false), var_0.yxx)), vec4<f32>(455f, var_1.x, -1000f, var_1.x), vec3<f32>(var_1.x, global2.x, -874f)).c.x), select(select(!arg_2.xwy, select(arg_2.zyw, vec3<bool>(true, arg_0.c.x, false), true), !vec3<bool>(arg_0.c.x, arg_1.a.x, false)), vec3<bool>(!var_0.x, !arg_0.c.x, !arg_1.a.x), true), any(!vec4<bool>(true, arg_3.c.x, true, arg_1.b.x)) && true), arg_1);
    var_2 = Struct_3(arg_0.c.zz, var_0.xyy, var_2.d.a, Struct_2(vec3<bool>(false, arg_3.c.x || all(vec4<bool>(var_0.x, arg_3.c.x, true, true)), !func_2(Struct_3(vec2<bool>(true, arg_2.x), vec3<bool>(true, arg_3.c.x, false), var_2.b, arg_1), Struct_3(vec2<bool>(false, false), arg_0.c, arg_1.a, arg_1), vec4<f32>(-1112f, var_1.x, -945f, -1000f), vec3<f32>(var_1.x, 1000f, var_1.x)).c.x), vec3<bool>(func_2(Struct_3(arg_0.c.yy, arg_1.b, arg_1.a, Struct_2(vec3<bool>(arg_2.x, false, arg_0.c.x), vec3<bool>(arg_2.x, var_0.x, false))), Struct_3(vec2<bool>(true, arg_2.x), var_0.xyy, arg_2.zwx, var_2.d), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(251f, -468f, 1000f, var_1.x), vec4<f32>(var_1.x, 1755f, 1267f, global2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, global2.x, -687f) + vec3<f32>(var_1.x, var_1.x, 150f))).c.x, false, all(vec3<bool>(var_0.x, arg_3.c.x, arg_0.c.x)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(max(var_1, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1)), var_1)));
    return global0.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_div_u32(func_4(func_2(Struct_3(arg_0.b.yx, arg_0.a, vec3<bool>(false, arg_0.a.x, arg_0.b.x), Struct_2(arg_0.a, arg_0.a)), Struct_3(vec2<bool>(true, arg_0.b.x), arg_0.a, vec3<bool>(false, false, true), Struct_2(vec3<bool>(false, arg_0.a.x, false), vec3<bool>(arg_0.a.x, false, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 288f, global2.x, global2.x) + vec4<f32>(global2.x, arg_1, -747f, -1164f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(882f, 1849f, global2.x))), Struct_2(vec3<bool>(arg_0.a.x, arg_0.b.x, arg_0.a.x), arg_0.a), !(!vec4<bool>(arg_0.b.x, false, arg_0.a.x, true)), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 49317u, global0.x, 4294967295u), vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(global0.x, 16u)], 0u, 4294967295u)), _wgslsmith_dot_vec3_i32(vec3<i32>(-454i, u_input.a.x, -13977i), u_input.a.wxw), func_2(Struct_3(arg_0.a.yx, arg_0.b, arg_0.b, arg_0), Struct_3(vec2<bool>(true, true), arg_0.b, vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), Struct_2(vec3<bool>(true, arg_0.b.x, true), arg_0.b)), vec4<f32>(arg_1, -254f, 1367f, -365f), vec3<f32>(global2.x, -1000f, global2.x)).c)), ~global1[_wgslsmith_index_u32(~39395u, 16u)]) >= _wgslsmith_mult_u32(min(~global1[_wgslsmith_index_u32(16280u, 16u)] | global1[_wgslsmith_index_u32(_wgslsmith_div_u32(19443u, 66141u), 16u)], ~abs(u_input.d)), max(reverseBits(~4294967295u), 97742u));
    let var_1 = all(!(!arg_0.b.yx));
    global0 = vec3<u32>(1u, select(~(~(~29847u)), func_4(func_2(Struct_3(arg_0.b.zz, vec3<bool>(var_0, var_1, var_0), arg_0.a, global3[_wgslsmith_index_u32(u_input.d, 18u)]), Struct_3(arg_0.b.yz, vec3<bool>(arg_0.b.x, var_0, var_0), arg_0.a, arg_0), _wgslsmith_div_vec4_f32(vec4<f32>(2175f, arg_1, -1275f, 106f), vec4<f32>(-989f, -745f, -1202f, 1432f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-403f, 721f, arg_1)))), arg_0, !select(vec4<bool>(var_1, false, false, var_0), vec4<bool>(var_0, true, var_1, var_0), arg_0.b.x), func_2(Struct_3(arg_0.a.zy, vec3<bool>(var_1, arg_0.a.x, true), arg_0.b, arg_0), Struct_3(arg_0.b.zz, arg_0.a, vec3<bool>(false, var_0, true), Struct_2(arg_0.b, arg_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 298f, -798f, -1519f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1386f, arg_1, global2.x)))), all(arg_0.b.xy)), ~func_3(~func_4(Struct_1(vec4<u32>(66177u, global0.x, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10895u, 16u)], 16u)]), -2147483647i, arg_0.a), arg_0, vec4<bool>(false, arg_0.a.x, false, arg_0.a.x), Struct_1(vec4<u32>(46454u, global0.x, 0u, global1[_wgslsmith_index_u32(4294967295u, 16u)]), -2147483647i, arg_0.b)), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(42791u, 1u, u_input.d, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, u_input.d, u_input.d, 1u), vec4<u32>(global0.x, u_input.d, u_input.d, global0.x), vec4<u32>(4294967295u, 33018u, 0u, global1[_wgslsmith_index_u32(global0.x, 16u)]))), !arg_0.b.yz, Struct_1(~vec4<u32>(u_input.d, 4294967295u, 34280u, u_input.d), arg_2, !vec3<bool>(true, false, var_1))));
    var var_2 = Struct_1(func_2(Struct_3(arg_0.b.yy, vec3<bool>(true, !var_1, true), arg_0.b, arg_0), Struct_3(arg_0.b.yx, arg_0.a, !(!arg_0.a), Struct_2(select(arg_0.b, vec3<bool>(arg_0.b.x, false, arg_0.a.x), true), !arg_0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1162f, 682f, -312f, global2.x))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(400f, 1000f, arg_1), vec3<f32>(-1496f, -1000f, 155f))))), vec3<f32>(_wgslsmith_f_op_f32(global2.x - 363f), _wgslsmith_f_op_f32(arg_1 * arg_1), -1360f)))).a, -5857i, vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * global2.x)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), arg_1)), (_wgslsmith_f_op_f32(arg_1 + 1152f) < arg_1) & !any(arg_0.a), false));
    var var_3 = global2.x;
    return Struct_3(!func_2(Struct_3(select(arg_0.b.yx, var_2.c.yz, var_2.c.x), vec3<bool>(false, false, true), vec3<bool>(var_2.c.x, false, true), Struct_2(vec3<bool>(var_0, var_2.c.x, true), vec3<bool>(var_2.c.x, arg_0.b.x, false))), Struct_3(!vec2<bool>(false, var_1), var_2.c, vec3<bool>(false, false, arg_0.b.x), Struct_2(vec3<bool>(var_2.c.x, true, false), vec3<bool>(var_1, var_1, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, arg_1, 1843f, -1377f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, arg_1, global2.x, arg_1)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(893f, 320f, arg_1) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, global2.x) * vec3<f32>(global2.x, -266f, arg_1)))).c.yy, func_2(Struct_3(var_2.c.zx, vec3<bool>(all(var_2.c.zz), true, !arg_0.b.x), var_2.c, arg_0), Struct_3(!vec2<bool>(var_1, true), !vec3<bool>(arg_0.a.x, false, true), vec3<bool>(true, !var_0, 0u >= global0.x), Struct_2(var_2.c, !vec3<bool>(true, var_0, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-475f)), _wgslsmith_f_op_f32(-global2.x), -228f, _wgslsmith_f_op_f32(-1000f + 2366f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1239f, 289f, arg_1, 594f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, -1006f, global2.x), vec3<f32>(arg_1, 1000f, arg_1), vec3<bool>(arg_0.a.x, false, false))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, -932f, -1000f))))))).c, arg_0.a, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    let var_1 = func_1(global3[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_f_op_f32(-global2.x), ~0i);
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -1234f), vec2<f32>(-920f, global2.x)) + vec2<f32>(1054f, global2.x))))));
    global3 = array<Struct_2, 18>();
    let var_2 = var_1;
    var var_3 = true;
    let var_4 = Struct_3(!func_1(Struct_2(var_2.c, vec3<bool>(var_1.d.b.x, var_2.d.a.x, false)), global2.x, firstLeadingBit(-2147483647i)).a, vec3<bool>(true, func_2(func_1(var_1.d, global2.x, _wgslsmith_sub_i32(u_input.b, u_input.b)), var_2, vec4<f32>(_wgslsmith_f_op_f32(-444f + 440f), _wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(exp2(global2.x))), vec3<f32>(_wgslsmith_f_op_f32(sign(-411f)), _wgslsmith_f_op_f32(f32(-1f) * -772f), -1417f)).c.x, true), !func_1(Struct_2(func_1(Struct_2(vec3<bool>(true, var_1.a.x, false), var_1.b), global2.x, u_input.b).c, select(var_1.c, var_2.b, var_1.a.x)), global2.x, -2147483647i).c, Struct_2(vec3<bool>(true, true, var_1.d.b.x), var_2.d.b));
    let x = u_input.a;
    s_output = StorageBuffer((min(~vec4<u32>(0u, global0.x, global1[_wgslsmith_index_u32(11392u, 16u)], 89799u), ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.d, 16u)], 41287u, 46914u, 4294967295u)) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(var_0, 16u)], 0u, 15828u), vec4<u32>(0u, var_0, u_input.d, 4294967295u))) << ((vec4<u32>(reverseBits(4294967295u), 1u, _wgslsmith_mod_u32(38926u, var_0), global0.x) ^ ~countOneBits(vec4<u32>(83894u, global1[_wgslsmith_index_u32(var_0, 16u)], 59058u, 0u))) % vec4<u32>(32u)), global0.yz >> (max(~global0.yy & _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0), global0.xy, vec2<u32>(var_0, 0u)), select(vec2<u32>(2042u, 33879u), vec2<u32>(4294967295u, 1u) | vec2<u32>(u_input.d, 66943u), func_2(var_2, Struct_3(vec2<bool>(var_1.b.x, false), vec3<bool>(true, false, false), vec3<bool>(var_2.b.x, var_4.b.x, var_4.b.x), Struct_2(var_4.c, var_2.b)), vec4<f32>(-136f, global2.x, global2.x, 1332f), vec3<f32>(global2.x, global2.x, global2.x)).c.yx)) % vec2<u32>(32u)));
}

