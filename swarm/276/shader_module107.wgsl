struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_2,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<u32, 15>;

var<private> global2: array<bool, 13>;

var<private> global3: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec2<i32>(-69913i, i32(-2147483648)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_2(vec2<bool>(true, false), Struct_1(vec4<bool>(true, false, false, true)))), Struct_3(vec2<i32>(3179i, -1i), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_2(vec2<bool>(true, false), Struct_1(vec4<bool>(false, false, false, false)))), Struct_3(vec2<i32>(2147483647i, -1i), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(true, false, true, false)))), Struct_3(vec2<i32>(1i, 10086i), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_2(vec2<bool>(false, true), Struct_1(vec4<bool>(true, true, true, false)))), Struct_3(vec2<i32>(-1i, 0i), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_2(vec2<bool>(true, false), Struct_1(vec4<bool>(false, true, true, true)))), Struct_3(vec2<i32>(42433i, 59628i), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_2(vec2<bool>(true, true), Struct_1(vec4<bool>(true, false, false, false)))), Struct_3(vec2<i32>(8000i, 17989i), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_2(vec2<bool>(true, true), Struct_1(vec4<bool>(false, false, true, true)))), Struct_3(vec2<i32>(i32(-2147483648), 18654i), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_2(vec2<bool>(false, true), Struct_1(vec4<bool>(false, true, false, false)))), Struct_3(vec2<i32>(2147483647i, -50731i), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_2(vec2<bool>(true, true), Struct_1(vec4<bool>(false, false, true, false)))), Struct_3(vec2<i32>(1i, 1i), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(false, true, false, false)))), Struct_3(vec2<i32>(1i, 0i), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_2(vec2<bool>(true, false), Struct_1(vec4<bool>(false, true, true, true)))), Struct_3(vec2<i32>(-33408i, 22865i), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_2(vec2<bool>(true, true), Struct_1(vec4<bool>(false, true, true, false)))), Struct_3(vec2<i32>(i32(-2147483648), 1i), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_2(vec2<bool>(true, false), Struct_1(vec4<bool>(true, false, false, true)))), Struct_3(vec2<i32>(i32(-2147483648), 6899i), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_2(vec2<bool>(true, false), Struct_1(vec4<bool>(true, true, false, false)))), Struct_3(vec2<i32>(i32(-2147483648), 938i), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_2(vec2<bool>(true, false), Struct_1(vec4<bool>(true, false, true, false)))), Struct_3(vec2<i32>(2147483647i, 1i), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_2(vec2<bool>(true, true), Struct_1(vec4<bool>(false, true, true, true)))), Struct_3(vec2<i32>(1i, 5753i), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_2(vec2<bool>(false, true), Struct_1(vec4<bool>(false, true, false, false)))), Struct_3(vec2<i32>(-63568i, 949i), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_2(vec2<bool>(true, true), Struct_1(vec4<bool>(false, true, false, true)))), Struct_3(vec2<i32>(2147483647i, -23924i), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(true, false, true, true)))), Struct_3(vec2<i32>(34041i, -36023i), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(true, false, false, false)))));

var<private> global4: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_5(Struct_1(select(!vec4<bool>(global0.x, global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 13u)], true), vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~0u, 15u)], 13u)], true, !global0.x, true), false)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 15u)]), u_input.b, global1[_wgslsmith_index_u32(4294967295u, 15u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)] % 32u), u_input.b), reverseBits(min(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], 0u, 4294967295u, u_input.a), vec4<u32>(47087u, 31344u, 0u, 8041u))), vec4<u32>(u_input.b, 17398u, u_input.b >> (global1[_wgslsmith_index_u32(4294967295u, 15u)] % 32u), select(1u, global1[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(u_input.b, 13u)]))), ~vec4<u32>(~59439u, 0u, firstTrailingBit(2815u), global1[_wgslsmith_index_u32(u_input.a, 15u)]), vec4<bool>(true, global0.x, any(!vec4<bool>(global0.x, false, false, global0.x)), !global0.x)), Struct_2(select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(3818u, u_input.b), vec2<u32>(1u, 46188u)), 13u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 13u)]), !(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 13u)])), !(arg_0 != arg_0)), Struct_1(!select(vec4<bool>(global0.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(1u, 13u)]), vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(global0.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], 15u)], 13u)], false, false)))), _wgslsmith_div_vec2_u32((min(vec2<u32>(68895u, 54440u), vec2<u32>(0u, u_input.b)) | max(vec2<u32>(1u, 0u), vec2<u32>(83185u, u_input.b))) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(27177u, global1[_wgslsmith_index_u32(u_input.b, 15u)])) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a | global1[_wgslsmith_index_u32(59461u, 15u)], 15u)], 15u)], _wgslsmith_div_u32(52896u, u_input.a)), abs(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(47814u, 15u)], 24538u)))), _wgslsmith_f_op_f32(exp2(arg_0)));
    let var_1 = _wgslsmith_f_op_f32(370f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-569f, var_0.e))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))))));
    global1 = array<u32, 15>();
    let var_2 = Struct_2(!vec2<bool>(false, u_input.d == u_input.c.x), var_0.c.b);
    let var_3 = Struct_5(var_0.a, var_0.b, var_2, ~var_0.b.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) * -1000f));
    return !(!var_2.b.a.x);
}

fn func_2() -> Struct_1 {
    global2 = array<bool, 13>();
    global2 = array<bool, 13>();
    var var_0 = Struct_1(select(select(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], 13u)], true, true), vec4<bool>(true, true, true, true), global0.x), !(!vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 13u)], false, global2[_wgslsmith_index_u32(1u, 13u)])), any(select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 13u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], 15u)], 13u)]), true))), vec4<bool>(true, false, all(vec3<bool>(false, false, false)), ~19163u < ~u_input.b), vec4<bool>(!(u_input.b <= u_input.a), false, all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 13u)], true, global0.x)), func_3(_wgslsmith_f_op_f32(trunc(116f))))));
    let var_1 = Struct_5(Struct_1(!var_0.a), ~(~(vec4<u32>(21722u, global1[_wgslsmith_index_u32(1u, 15u)], 0u, 791u) | vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b))) ^ vec4<u32>(_wgslsmith_mult_u32(24990u >> (u_input.a % 32u), u_input.b), _wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], 71249u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]), vec2<u32>(global1[_wgslsmith_index_u32(82816u, 15u)], 4294967295u))), max(~63325u, _wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(u_input.b, 15u)], 4294967295u)), u_input.a), Struct_2(select(!var_0.a.yy, select(var_0.a.yw, var_0.a.zw, all(var_0.a.zz)), var_0.a.ww), Struct_1(vec4<bool>(true & global2[_wgslsmith_index_u32(0u, 13u)], !var_0.a.x, true, true))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(11301u, 15u)]), vec2<u32>(48748u, 1u)), 50205u, 4294967295u), ~vec4<u32>(global1[_wgslsmith_index_u32(14249u, 15u)], 4294967295u, 1u, 0u)), ~u_input.b), _wgslsmith_f_op_f32(sign(-1000f)));
    var_0 = var_1.a;
    return Struct_1(var_1.a.a);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2) -> Struct_4 {
    global4 = false;
    var var_0 = select(reverseBits(vec3<i32>(-u_input.d, u_input.c.x, u_input.c.x)), select(-firstTrailingBit(~vec3<i32>(10499i, -10609i, -1i)), reverseBits(vec3<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), u_input.c.x >> (0u % 32u), u_input.c.x)), any(arg_1.b.a.yy)), !arg_1.b.a.x);
    let var_1 = _wgslsmith_f_op_f32(min(arg_0.e, -1479f));
    var var_2 = arg_0;
    var var_3 = func_2();
    return Struct_4(!(!func_2().a));
}

fn func_1(arg_0: f32) -> Struct_5 {
    global3 = array<Struct_3, 20>();
    let var_0 = func_4(Struct_5(func_2(), firstLeadingBit(countOneBits(vec4<u32>(18048u, 0u, 0u, u_input.a))) ^ ((vec4<u32>(global1[_wgslsmith_index_u32(23775u, 15u)], global1[_wgslsmith_index_u32(25094u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(61883u, 15u)]) | vec4<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 1u)) >> (vec4<u32>(u_input.b, 68374u, 69098u, 80852u) % vec4<u32>(32u))), Struct_2(vec2<bool>(arg_0 <= -137f, u_input.c.x <= u_input.d), Struct_1(vec4<bool>(true, true, global0.x, global0.x))), vec2<u32>(~(u_input.a & u_input.b), _wgslsmith_add_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(63573u, 15u)], 21027u), _wgslsmith_sub_u32(4294967295u, u_input.a))), arg_0), Struct_2(vec2<bool>(!global2[_wgslsmith_index_u32(33008u, 13u)], !all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 13u)], global0.x, global2[_wgslsmith_index_u32(4294967295u, 13u)]))), Struct_1(vec4<bool>(true, false == global2[_wgslsmith_index_u32(u_input.a, 13u)], false, true))));
    global3 = array<Struct_3, 20>();
    global0 = !func_4(Struct_5(func_2(), vec4<u32>(19034u, u_input.b ^ global1[_wgslsmith_index_u32(8400u, 15u)], 4294967295u, 44712u), Struct_2(vec2<bool>(var_0.a.x, var_0.a.x), func_2()), ~vec2<u32>(72145u, 13906u) >> (abs(vec2<u32>(u_input.a, u_input.b)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(527f, arg_0))))), Struct_2(!var_0.a.xy, func_2())).a.wx;
    global3 = array<Struct_3, 20>();
    return Struct_5(func_2(), abs(vec4<u32>(21304u, _wgslsmith_div_u32(~76545u, ~39274u), u_input.b, _wgslsmith_mod_u32(abs(0u), u_input.b))), Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.b, 15u)], 58089u)), 15u)], 13u)], all(var_0.a.wx)), func_2()), vec2<u32>((~u_input.b >> (1u % 32u)) & 0u, 0u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-arg_0))))));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_2) -> u32 {
    var var_0 = ~(-2147483647i);
    let var_1 = func_4(func_1(-188f), func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(720f)), arg_0.e))))).c);
    var var_2 = arg_2;
    global4 = !global0.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e, -647f, _wgslsmith_f_op_f32(round(577f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.e, arg_0.e, 2452f), vec3<f32>(arg_0.e, arg_0.e, -1000f), vec3<bool>(global0.x, true, arg_0.a.a.x))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.e, arg_0.e, arg_0.e)))))));
    return arg_0.d.x >> (12906u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -493f);
    global0 = select(select(select(!vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 15u)], 13u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], false), vec2<bool>(false, false)), true), select(-712f <= var_0, global0.x & global0.x, true)), vec2<bool>(global2[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 15u)], 15u)] << (u_input.a % 32u)) | 1u, 13u)], !global2[_wgslsmith_index_u32(select(u_input.b, u_input.a, true), 13u)]), vec2<bool>(select(any(vec2<bool>(true, true)), all(vec3<bool>(true, global2[_wgslsmith_index_u32(1727u, 13u)], true)), !global0.x), true)), vec2<bool>(true, true), any(!(!select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(0u, 13u)], true), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 15u)], 13u)]))));
    var var_1 = select(_wgslsmith_clamp_u32(1u, func_5(func_1(-153f), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, 2147483647i), vec4<i32>(1i, 197i, 26887i, u_input.c.x)), global1[_wgslsmith_index_u32(func_1(455f).b.x, 15u)], Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 13u)], true), Struct_1(vec4<bool>(global0.x, global0.x, true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14024u, 15u)], 13u)])))), _wgslsmith_mod_u32(firstTrailingBit(u_input.a), 29288u)) <= 1u, _wgslsmith_mod_i32(abs(select(-1i, u_input.d, true)), _wgslsmith_sub_i32(-29367i, ~(-10361i))) == u_input.c.x, global2[_wgslsmith_index_u32(0u, 13u)]);
    let var_2 = all(vec3<bool>(!(u_input.a > 46173u), true, true || (global0.x || false)));
    global3 = array<Struct_3, 20>();
    global4 = !global0.x | !any(func_2().a.xx);
    let var_3 = firstLeadingBit(vec2<i32>(abs(~_wgslsmith_clamp_i32(u_input.c.x, u_input.d, 2147483647i)), abs(u_input.d)));
    let var_4 = _wgslsmith_div_f32(var_0, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~(-23494i), _wgslsmith_f_op_f32(sign(var_4)), max(_wgslsmith_div_i32(u_input.c.x, min(_wgslsmith_div_i32(14229i, u_input.d), -u_input.d)), 25473i));
}

