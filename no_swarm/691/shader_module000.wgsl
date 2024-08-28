struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32 = 41233u;

var<private> global2: Struct_5;

var<private> global3: array<vec3<f32>, 23>;

var<private> global4: array<vec2<bool>, 24>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_5) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = arg_0.c;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.a))), false, vec2<f32>(global0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.c.x - global0.a.c.x))), false, u_input.a));
    let var_2 = -_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, u_input.c), ~u_input.d.yw), _wgslsmith_clamp_i32(abs(global2.a), global2.a | u_input.c, abs(-72898i))), countOneBits(~u_input.d.yx));
    global0 = Struct_2(global2.b);
    return arg_0.c | (select(reverseBits(~18590i), -53756i, global0.a.d) ^ arg_0.c);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<bool>, arg_3: i32) -> Struct_1 {
    global2 = Struct_5(_wgslsmith_mod_i32(firstTrailingBit(-9672i >> (global2.d % 32u)), 1i) ^ -60205i, global2.b, 40643i, global0.a.e);
    var var_0 = Struct_5(-2147483647i, Struct_1(_wgslsmith_f_op_f32(max(-798f, global2.b.a)), _wgslsmith_f_op_f32(sign(699f)) != -848f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.c) - vec2<f32>(_wgslsmith_f_op_f32(-global2.b.c.x), 757f)), any(vec2<bool>(true, any(vec2<bool>(global0.a.d, arg_1)))), ~(~(~global0.a.e))), _wgslsmith_clamp_i32(u_input.d.x, -12832i, select(~firstLeadingBit(global2.c), func_3(Struct_5(-28754i, Struct_1(global0.a.a, false, global0.a.c, global2.b.b, global0.a.e), 0i, u_input.b)), arg_2.x)), u_input.b);
    let var_1 = abs(u_input.d.wz);
    var var_2 = vec3<bool>(global0.a.c.x != -1052f, var_0.b.b | true, false);
    let var_3 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.x, false, arg_1, false), arg_2.x & true)), vec4<bool>(false, !any(!global4[_wgslsmith_index_u32(global0.a.e, 24u)]), !var_0.b.d, any(vec2<bool>(global0.a.e < 21419u, global2.b.b))), all(select(vec4<bool>(any(var_2.yz), !arg_1, true && var_2.x, var_0.b.b), vec4<bool>(!global2.b.d, all(vec4<bool>(arg_1, arg_1, global2.b.d, global2.b.d)), select(true, global2.b.b, true), global2.b.c.x == 2031f), !select(vec4<bool>(false, global0.a.b, arg_2.x, false), vec4<bool>(global2.b.b, false, true, true), false))));
    return var_0.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    let var_0 = max(vec4<i32>(-16897i, -6462i, _wgslsmith_div_i32(u_input.d.x, min(1i, u_input.d.x)) ^ (global2.a & ~1i), arg_3), _wgslsmith_mult_vec4_i32(u_input.d, u_input.d));
    var var_1 = arg_1.a.a;
    global0 = Struct_2(global0.a);
    var var_2 = countOneBits(arg_2.x);
    let var_3 = true;
    return ~1u;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool) -> u32 {
    global2 = Struct_5(22957i, global0.a, countOneBits(0i), global0.a.e);
    let var_0 = ~_wgslsmith_add_vec2_i32(~reverseBits(u_input.d.yw), u_input.d.wx) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b >> (global2.d % 32u), ~global2.b.e) & _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1.a.e, global0.a.e), vec2<u32>(4294967295u, u_input.a)), vec2<u32>(global2.b.e, 1u)) % vec2<u32>(32u));
    var var_1 = arg_0.x;
    global1 = countOneBits(u_input.b) | ~func_4(!vec4<bool>(arg_0.x, false, arg_2, arg_0.x), Struct_4(func_2(u_input.c, global0.a.b, vec2<bool>(false, arg_2), var_0.x), vec4<bool>(global2.b.d, true, global0.a.d, false)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 42961u, 25305u, 27881u), vec4<u32>(u_input.b, 83574u, 40464u, arg_1.a.e)), firstTrailingBit(max(0i, 20521i)));
    let var_2 = vec2<i32>(3688i, 0i);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(0u >> (firstLeadingBit(arg_1.a.e) % 32u), 1u, global0.a.e, ~_wgslsmith_dot_vec3_u32(vec3<u32>(51429u, global0.a.e, 1u), firstTrailingBit(vec3<u32>(arg_1.a.e, 24333u, 26854u)))), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(global2.b.e), 62561u, 1u, 19973u ^ u_input.a) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 1u, 49455u, 4294967295u), ~vec4<u32>(arg_1.a.e, global0.a.e, 1470u, global2.b.e)) % vec4<u32>(32u)), ~max(_wgslsmith_add_vec4_u32(vec4<u32>(38483u, 19918u, u_input.b, 5412u), vec4<u32>(global0.a.e, global2.d, arg_1.a.e, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(27117u, arg_1.a.e, global2.d, 39644u), vec4<u32>(4294967295u, 1u, 8183u, 16u), vec4<u32>(4294967295u, 28438u, global0.a.e, arg_1.a.e)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(i32(-1i) * -_wgslsmith_div_i32(u_input.d.x, 10247i), firstTrailingBit(reverseBits(_wgslsmith_clamp_i32(global2.a, -2147483647i, 23266i)))), _wgslsmith_add_i32(~u_input.c, global2.c));
    let var_1 = vec3<bool>(global2.b.d, false, !any(global4[_wgslsmith_index_u32(arg_3.x, 24u)]));
    let var_2 = Struct_2(func_2(_wgslsmith_div_i32(u_input.d.x, u_input.c), true, select(select(!var_1.yx, !global4[_wgslsmith_index_u32(global0.a.e, 24u)], arg_1), var_1.zz, !any(vec2<bool>(arg_1, true))), u_input.d.x));
    global3 = array<vec3<f32>, 23>();
    var_0 = ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(-(~global2.c), -global2.a), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global2.a ^ 0i, u_input.c ^ 1i), ~(i32(-1i) * -1i), -global2.a));
    return var_2;
}

fn func_6(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_4(func_2(35453i, all(vec3<bool>(!global0.a.b, global0.a.d, all(vec3<bool>(global2.b.d, true, arg_1.x)))), select(vec2<bool>(func_2(global2.a, arg_1.x, vec2<bool>(true, false), global2.c).b, global2.b.d), vec2<bool>(global0.a.b == false, true), !arg_1.zy), -_wgslsmith_mod_i32(global2.c, 1i)), select(select(!vec4<bool>(false, false, global0.a.b, arg_1.x), select(!vec4<bool>(false, global2.b.d, true, global2.b.b), select(vec4<bool>(arg_1.x, true, true, false), vec4<bool>(arg_2.a.b, true, true, arg_1.x), false), any(global4[_wgslsmith_index_u32(u_input.b, 24u)])), true), vec4<bool>(arg_1.x, true, _wgslsmith_f_op_f32(trunc(1018f)) > _wgslsmith_f_op_f32(-870f - arg_2.a.c.x), !any(vec2<bool>(true, global0.a.b))), !select(vec4<bool>(global0.a.d, arg_1.x, true, false), vec4<bool>(true, true, true, true), false | global2.b.b)));
    global3 = array<vec3<f32>, 23>();
    var var_1 = Struct_5(firstLeadingBit(firstLeadingBit(3876i)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1093f + global2.b.a))), func_5(vec4<u32>(~var_0.a.e, u_input.a, func_4(vec4<bool>(global2.b.d, arg_2.a.d, var_0.a.d, global0.a.b), var_0, vec4<u32>(1u, global2.d, 23138u, global2.b.e), u_input.d.x), 5636u & u_input.b), _wgslsmith_f_op_f32(step(arg_2.a.c.x, var_0.a.a)) == _wgslsmith_f_op_f32(-global2.b.c.x), 1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.a.e, 4294967295u), vec3<u32>(u_input.a, arg_2.a.e, u_input.b)), vec4<u32>(func_4(var_0.b, var_0, vec4<u32>(u_input.b, 11509u, arg_0, global2.d), -10237i), arg_2.a.e, 4294967295u, 5355u)).a.d, vec2<f32>(_wgslsmith_f_op_f32(-global2.b.c.x), -694f), true, abs(global0.a.e & ~4294967295u)), _wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(u_input.c, -2147483647i, global2.a), (i32(-1i) * -9843i) ^ -global2.c)), 47154u);
    global4 = array<vec2<bool>, 24>();
    global2 = Struct_5(-countOneBits(~1i), func_5(~vec4<u32>(var_0.a.e, abs(4294967295u), ~arg_2.a.e, global0.a.e << (arg_0 % 32u)), !any(var_0.b.zxy) || true, false, vec4<u32>(_wgslsmith_mult_u32(var_1.b.e, arg_0 | global0.a.e), global0.a.e, arg_2.a.e, _wgslsmith_sub_u32(4294967295u, var_0.a.e))).a, -var_1.a, 29487u);
    return Struct_2(func_2(_wgslsmith_mult_i32(-10809i, abs(firstLeadingBit(15640i))), arg_2.a.d, !vec2<bool>(arg_2.a.b & var_1.b.b, true), -_wgslsmith_mod_i32(min(-6278i, 5368i), u_input.c ^ 10286i)));
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: Struct_5) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(1094f - -1000f);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1152f, 2163f) * _wgslsmith_f_op_f32(arg_2.b.c.x - -1115f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.c.x - arg_2.b.c.x) + _wgslsmith_f_op_f32(global0.a.c.x - arg_1.a.a)))), _wgslsmith_f_op_f32(-arg_1.a.c.x));
    global3 = array<vec3<f32>, 23>();
    var var_1 = func_2(-1i, true, select(global4[_wgslsmith_index_u32(~1u, 24u)], global4[_wgslsmith_index_u32(func_6(4294967295u, select(select(vec3<bool>(arg_1.a.b, arg_1.a.d, global0.a.b), vec3<bool>(true, global2.b.d, global0.a.b), vec3<bool>(arg_2.b.b, global0.a.b, arg_1.a.b)), !vec3<bool>(true, arg_1.a.d, false), all(vec3<bool>(false, global0.a.d, global2.b.b))), Struct_2(Struct_1(global2.b.c.x, global2.b.d, arg_1.a.c, true, 0u))).a.e, 24u)], func_6(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d, arg_2.b.e, arg_2.b.e) << (vec3<u32>(arg_1.a.e, 0u, 3757u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a.e, arg_1.a.e, arg_2.b.e), vec3<u32>(3587u, 13983u, 4585u), vec3<u32>(arg_1.a.e, 4099u, arg_2.d))), vec3<bool>(true, !global2.b.b, true), arg_1).a.b), abs(reverseBits(global2.a)) << (arg_1.a.e % 32u)).c.x;
    var var_2 = Struct_3(func_6(1u, select(vec3<bool>(global0.a.b, select(true, true, global0.a.b), func_2(-1i, global0.a.b, vec2<bool>(global0.a.d, arg_1.a.b), 25654i).b), !vec3<bool>(true, true, global2.b.d), vec3<bool>(true, arg_1.a.d | false, true)), func_5(select(vec4<u32>(arg_2.d, 4294967295u, global2.b.e, 34353u), ~vec4<u32>(arg_1.a.e, 16017u, u_input.b, arg_1.a.e), vec4<bool>(arg_1.a.d, false, true, true)), !global0.a.d, arg_2.b.b | global2.b.b, ~vec4<u32>(4294967295u, global0.a.e, 1u, 7402u) & (vec4<u32>(global2.d, 20458u, 4294967295u, arg_1.a.e) & vec4<u32>(global0.a.e, 0u, 47168u, global2.d)))), func_6(firstTrailingBit(global0.a.e), vec3<bool>(false, global0.a.b, select(true, select(false, arg_1.a.d, true), u_input.d.x != global2.c)), func_5(vec4<u32>(arg_1.a.e, global2.d, 26413u, 1u) << (~vec4<u32>(36290u, 4294967295u, 67714u, 4294967295u) % vec4<u32>(32u)), false, all(vec3<bool>(global2.b.d, arg_1.a.d, arg_2.b.b)) | global0.a.d, vec4<u32>(~0u, ~93805u, u_input.b, func_4(vec4<bool>(global0.a.b, arg_1.a.b, false, global2.b.d), Struct_4(arg_1.a, vec4<bool>(true, true, true, arg_1.a.d)), vec4<u32>(arg_1.a.e, arg_2.d, 68798u, u_input.b), u_input.d.x)))).a, _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(1u, 60984u))), reverseBits(~vec2<u32>(86133u, global0.a.e) | ~vec2<u32>(1u, arg_2.b.e))));
    return Struct_5(u_input.d.x, arg_1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-24223i, _wgslsmith_mod_i32(countOneBits(-2147483647i), firstLeadingBit(arg_2.a))), ~select(u_input.d.yz, vec2<i32>(global2.a, -35338i), var_2.b.d) << (~(~vec2<u32>(arg_2.b.e, arg_2.b.e)) % vec2<u32>(32u))), ~var_2.a.a.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.b.a))))), -1025f);
    var var_1 = (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.b)) & 0u) != u_input.b;
    let var_2 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(230f)) + _wgslsmith_f_op_f32(-global0.a.c.x)), func_6(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.d, 4294967295u, 0u) & vec3<u32>(global0.a.e, u_input.b, 1u), vec3<u32>(49323u, 47039u, 0u)), abs(abs(vec3<u32>(u_input.a, 2192u, 22630u)))), !(!vec3<bool>(global2.b.d, global0.a.d, false)), func_5(vec4<u32>(func_1(global4[_wgslsmith_index_u32(u_input.a, 24u)], Struct_2(Struct_1(1542f, global2.b.d, vec2<f32>(958f, -903f), true, 35703u)), global2.b.b), ~u_input.b, 0u, global2.d), all(!vec4<bool>(global2.b.b, false, false, global0.a.d)), !select(true, true, false), vec4<u32>(countOneBits(51540u), ~1u, 1u, ~90003u))), Struct_5(reverseBits(-u_input.c << ((u_input.b << (u_input.a % 32u)) % 32u)), global0.a, _wgslsmith_mult_i32(abs(func_3(Struct_5(-39927i, global0.a, -2147483647i, u_input.a))), -(~0i)), _wgslsmith_mod_u32(~reverseBits(4294967295u), _wgslsmith_div_u32(~global0.a.e, _wgslsmith_mod_u32(u_input.b, 20533u)))));
    var var_3 = var_2.b.c.x;
    let var_4 = vec2<i32>(global2.a, -8891i);
    var var_5 = !select(!vec4<bool>(global0.a.d, !var_2.b.b, var_2.b.b, 9903u < var_2.b.e), !(!select(vec4<bool>(true, var_2.b.b, true, global0.a.b), vec4<bool>(global2.b.b, global2.b.d, true, true), false)), !func_7(_wgslsmith_div_f32(global0.a.a, -664f), Struct_2(global0.a), func_7(var_2.b.c.x, Struct_2(Struct_1(1434f, true, global0.a.c, var_2.b.b, 4294967295u)), Struct_5(var_4.x, global0.a, -1i, global0.a.e))).b.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(823f, 1000f, global0.a.a, -691f))) - _wgslsmith_div_vec4_f32(vec4<f32>(1245f, global2.b.c.x, -654f, 327f), vec4<f32>(-1000f, -947f, global0.a.a, global2.b.a)))))), -58133i, _wgslsmith_f_op_f32(global2.b.a * _wgslsmith_f_op_f32(-var_2.b.a)));
}

