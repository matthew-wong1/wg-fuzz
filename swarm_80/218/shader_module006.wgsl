struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: i32 = 0i;

var<private> global2: array<vec2<bool>, 22>;

var<private> global3: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = firstTrailingBit(1u);
    let var_1 = select(select(firstTrailingBit(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, arg_1.x, arg_1.x, arg_3.a), vec4<i32>(-39111i, arg_3.a, 40520i, arg_1.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-2147483647i, u_input.a.x), -29905i, -arg_1.x, abs(u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -1987i, arg_1.x, u_input.a.x) ^ vec4<i32>(-6825i, arg_3.a, 31999i, 17347i), vec4<i32>(-37246i, -1i, arg_3.a, 1i) | vec4<i32>(-18792i, arg_3.a, 14754i, -1i))), vec4<bool>(!all(vec2<bool>(true, true)), any(!vec4<bool>(true, global0.x, true, true)), !(-1i != u_input.c), false != any(vec3<bool>(global0.x, true, true)))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -20165i, u_input.a.x, -44513i), reverseBits(vec4<i32>(37840i, 0i, arg_1.x, 876i))), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_3.a, arg_1.x, 15761i, arg_3.a), vec4<i32>(arg_1.x, u_input.a.x, arg_1.x, arg_3.a)), ~arg_1.x, u_input.a.x) | vec4<i32>(-2147483647i, 2147483647i, u_input.c ^ (i32(-1i) * -1i), arg_1.x), true);
    global1 = abs(u_input.a.x);
    var_0 = ~reverseBits(0u);
    let var_2 = Struct_1(firstTrailingBit(~(-9416i)), true, select(select(select(select(vec2<bool>(false, true), global0.xz, arg_3.c), vec2<bool>(global0.x, global0.x), select(arg_3.b, arg_3.e.x, global0.x)), select(vec2<bool>(true, true), select(vec2<bool>(global0.x, arg_3.b), vec2<bool>(true, global0.x), true), !arg_3.e), true), select(arg_3.e, !select(arg_3.e, global2[_wgslsmith_index_u32(4294967295u, 22u)], global0.x), !vec2<bool>(false, arg_3.b)), !(17369u > (0u >> (arg_3.d.x % 32u)))), _wgslsmith_mod_vec2_u32(arg_0.zy | vec2<u32>(~0u, arg_3.d.x), vec2<u32>(_wgslsmith_sub_u32(arg_0.x, _wgslsmith_sub_u32(7600u, u_input.b.x)), _wgslsmith_dot_vec3_u32(global3.wzz, arg_0.xxy) & 56901u)), !vec2<bool>(false, !(!arg_3.b)));
    return abs(~arg_3.d.x);
}

fn func_2() -> vec2<f32> {
    var var_0 = max(_wgslsmith_sub_vec3_u32(u_input.d.xww, ~(vec3<u32>(global3.x, 20461u, global3.x) & _wgslsmith_sub_vec3_u32(vec3<u32>(13754u, 1u, 16188u), u_input.d.xyy))), select(~vec3<u32>(countOneBits(1u), global3.x, 4294967295u), vec3<u32>(0u, _wgslsmith_sub_u32(func_3(vec4<u32>(0u, 49670u, global3.x, 104580u), vec3<i32>(2147483647i, 37677i, 12489i), -1000f, Struct_1(u_input.c, true, global2[_wgslsmith_index_u32(1u, 22u)], u_input.d.xz, vec2<bool>(true, false))), min(u_input.b.x, 4294967295u)), ~4294967295u), vec3<bool>(!any(global0.zz), false, any(vec3<bool>(true, global0.x, global0.x)))));
    var var_1 = ~(u_input.d.x >> (9754u % 32u));
    var_1 = ~firstTrailingBit(global3.x);
    let var_2 = Struct_1(~(-(1i ^ _wgslsmith_mult_i32(u_input.a.x, 0i))), any(vec2<bool>(!select(true, global0.x, global0.x), (u_input.c < 2147483647i) || global0.x)), select(select(global2[_wgslsmith_index_u32(select(select(70575u, 1u, true), min(global3.x, 1u), !global0.x), 22u)], vec2<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, true)), global0.x && true), true), !(!global0.yx), vec2<bool>(true, false)), abs(~vec2<u32>(_wgslsmith_mult_u32(76861u, 36818u), countOneBits(global3.x))), global0.yy);
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), u_input.d.xw), ~u_input.d.x), u_input.d.x, var_2.d.x, _wgslsmith_dot_vec2_u32(var_2.d, (var_0.zy | var_2.d) & var_2.d)), vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global3.x, u_input.b.x, var_2.d.x, 16058u)), vec4<u32>(25791u, countOneBits(global3.x), 52026u, ~0u)), countOneBits(0u), 4294967295u));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2945f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-132f, 844f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1117f * -867f), 1190f) + vec2<f32>(-469f, -1293f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(918f, -1412f), _wgslsmith_f_op_f32(1091f + -693f)))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    global2 = array<vec2<bool>, 22>();
    var var_0 = Struct_1(~(-24024i), true, select(select(select(global2[_wgslsmith_index_u32(4294967295u, 22u)], select(vec2<bool>(global0.x, global0.x), global2[_wgslsmith_index_u32(1u, 22u)], global0.x), !vec2<bool>(false, global0.x)), select(!global0.zy, !vec2<bool>(true, global0.x), all(vec3<bool>(global0.x, false, global0.x))), global0.xz), !vec2<bool>(any(vec4<bool>(false, global0.x, false, true)), any(vec3<bool>(true, false, global0.x))), select(vec2<bool>(false, global0.x), !(!global0.xz), vec2<bool>(global0.x && global0.x, 315f != arg_0.x))), global3.wx ^ _wgslsmith_sub_vec2_u32(u_input.b.yz, vec2<u32>(u_input.d.x, _wgslsmith_add_u32(global3.x, 4294967295u))), !global0.zy);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) - _wgslsmith_f_op_f32(step(-926f, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)))), arg_0.x) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(max(arg_0.x, -805f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 2906f, -968f, 649f) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(462f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(-1432f, arg_0.x, arg_0.x, arg_0.x)), !global0.x)))))));
    let var_2 = Struct_1(-abs(_wgslsmith_div_i32(min(1i, u_input.c), var_0.a)), any(vec2<bool>(false, -var_0.a > (var_0.a >> (var_0.d.x % 32u)))), select(global2[_wgslsmith_index_u32(4294967295u, 22u)], select(vec2<bool>(var_1.x <= arg_0.x, var_0.b && true), !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(71302u, 1u), 22u)], _wgslsmith_f_op_f32(f32(-1f) * -491f) < var_1.x), !var_0.c), abs(~abs(~global3.zz)), vec2<bool>(var_0.e.x, global0.x));
    let var_3 = max(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, countOneBits(2147483647i), select(var_2.a, 1i, global0.x)), firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.a.x, -7813i, var_0.a, -2147483647i)))) & (_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c, -2147483647i, -43513i, var_2.a), max(vec4<i32>(u_input.a.x, 14766i, 2147483647i, -6698i), vec4<i32>(-1i, -2147483647i, 11297i, u_input.a.x))) | _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-14269i, 1756i, -13350i, var_2.a), vec4<i32>(u_input.c, 40546i, var_2.a, 1067i)), vec4<i32>(var_0.a, -26126i, -3206i, 7074i))), _wgslsmith_sub_vec4_i32(select(min(vec4<i32>(1i, -54596i, var_0.a, 34953i), vec4<i32>(var_2.a, var_2.a, 2147483647i, var_0.a)) >> (u_input.d % vec4<u32>(32u)), reverseBits(vec4<i32>(14263i, var_0.a, 0i, var_0.a)), select(!vec4<bool>(var_2.c.x, false, global0.x, var_0.b), select(vec4<bool>(var_2.e.x, var_2.c.x, true, var_2.c.x), vec4<bool>(false, global0.x, var_2.c.x, var_2.c.x), false), !vec4<bool>(var_2.b, var_2.e.x, var_2.e.x, global0.x))), select(-vec4<i32>(u_input.c, -6215i, 24276i, var_0.a), ~vec4<i32>(var_0.a, var_0.a, 14867i, var_2.a), !var_0.c.x) | (-vec4<i32>(var_2.a, -1i, 2147483647i, -2147483647i) ^ (vec4<i32>(-19043i, -2147483647i, -728i, 15264i) << (vec4<u32>(u_input.b.x, 31425u, 48249u, 94248u) % vec4<u32>(32u))))));
    return Struct_1(-1i, false, !select(var_2.e, global2[_wgslsmith_index_u32(~(~61417u), 22u)], !select(var_2.c, vec2<bool>(global0.x, var_0.c.x), var_0.e)), ~vec2<u32>(var_2.d.x, 1u), !vec2<bool>(!(var_2.d.x > 5711u), !(arg_0.x >= var_1.x)));
}

fn func_1(arg_0: i32, arg_1: i32) -> vec4<u32> {
    global1 = _wgslsmith_mod_i32(max(abs(~(-1i)), _wgslsmith_div_i32(reverseBits(0i), arg_1)), 26506i) | _wgslsmith_sub_i32(~(_wgslsmith_clamp_i32(28546i, -1i, arg_0) & select(u_input.c, arg_1, global0.x)), -69467i);
    global1 = arg_0;
    let var_0 = select(global0.zz, global0.zy, select(select(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, u_input.d.x), 22u)], global0.zz, select(global0.yx, global2[_wgslsmith_index_u32(1u, 22u)], global0.x & false)), !vec2<bool>(true, all(vec2<bool>(global0.x, false))), global0.yz));
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-228f, _wgslsmith_f_op_f32(select(2049f, -1595f, false))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-180f)), _wgslsmith_f_op_f32(f32(-1f) * -643f))) + _wgslsmith_f_op_vec2_f32(func_2())));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(554f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -279f), -1166f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-260f, 988f, -589f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-547f, 659f, 165f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-842f, -903f, 711f) - vec3<f32>(1295f, 263f, 360f)))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-275f, -500f, -697f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(888f, 1139f, 158f) - vec3<f32>(783f, 432f, -531f)))) + vec3<f32>(-1382f, _wgslsmith_f_op_f32(-2173f * -219f), 1123f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(180f * -682f), 109f, _wgslsmith_f_op_f32(464f - 369f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(513f, -1000f, -2557f) + vec3<f32>(-198f, 500f, -578f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(747f, 1127f, -1000f) + vec3<f32>(-1064f, -833f, 1861f)), var_1.b))))));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d.x, global3.x, ~firstTrailingBit(_wgslsmith_mod_u32(u_input.d.x, 0u)), 1u), u_input.d >> ((~firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, global3.x, u_input.b.x)) << (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(~global3.x, ~1u, ~33130u, _wgslsmith_dot_vec3_u32(global3.yxz, global3.wwz))), ~countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(global3.x, 1u, 14695u, global3.x), ~u_input.d)), func_1(u_input.c, firstLeadingBit(select(_wgslsmith_div_i32(u_input.c, u_input.c), _wgslsmith_div_i32(2147483647i, u_input.a.x), global0.x))));
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2147f, 690f, 1048f) - vec4<f32>(400f, -1738f, -1748f, -1000f)))))))));
    let var_1 = abs(~(~u_input.b.x));
    global1 = _wgslsmith_mod_i32(firstTrailingBit(select(u_input.a.x, 67729i, global0.x)), -firstTrailingBit(max(0i, 22914i)));
    let var_2 = _wgslsmith_mod_u32(~0u, _wgslsmith_add_u32(u_input.b.x, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2), _wgslsmith_f_op_f32(1000f - var_0.x));
}

