struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: vec2<bool>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec2_i32(countOneBits(-u_input.a), _wgslsmith_mod_vec2_i32(u_input.a, u_input.a));
    var var_1 = -(~(~(~(~vec4<i32>(30309i, u_input.a.x, u_input.b, var_0.x)))));
    let var_2 = arg_2.x;
    let var_3 = -28221i;
    let var_4 = Struct_2(Struct_1(!vec2<bool>(u_input.c.x < u_input.c.x, global1.x)), _wgslsmith_f_op_f32(floor(-359f)), (-(vec3<i32>(var_1.x, var_1.x, var_1.x) & vec3<i32>(-10597i, 2147483647i, var_1.x)) & _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(var_1.yxz, var_1.yyx), var_1.wyy)) >> (_wgslsmith_div_vec3_u32(u_input.c.yxw, ~vec3<u32>(u_input.c.x, 55679u, u_input.c.x)) % vec3<u32>(32u)), Struct_1(select(select(select(arg_0.a, vec2<bool>(arg_1.x, global1.x), vec2<bool>(arg_1.x, arg_0.a.x)), select(vec2<bool>(arg_1.x, true), arg_0.a, arg_1.xw), true), vec2<bool>(false, false), vec2<bool>(arg_0.a.x, any(vec2<bool>(false, false))))));
    return !arg_1.ww;
}

fn func_2(arg_0: Struct_3) -> bool {
    var var_0 = Struct_2(Struct_1(select(func_3(arg_0.b, select(vec4<bool>(true, arg_0.b.a.x, true, false), vec4<bool>(arg_0.c.x, false, global1.x, true), arg_0.c), vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)])), !arg_0.b.a, !select(vec2<bool>(true, arg_0.c.x), arg_0.c.xw, arg_0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.c.x, 9u)] + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-2134f, -1086f))))) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(23024u, u_input.c.x, 8606u, _wgslsmith_div_u32(4294967295u, u_input.c.x)), ~firstTrailingBit(u_input.c)), 9u)]), _wgslsmith_mod_vec3_i32(firstLeadingBit(reverseBits(firstTrailingBit(vec3<i32>(u_input.b, u_input.b, arg_0.a.x)))), vec3<i32>(1i ^ ~arg_0.a.x, ~(arg_0.a.x | u_input.b), -select(32447i, arg_0.a.x, arg_0.b.a.x))), arg_0.b);
    let var_1 = Struct_3(vec2<i32>(max(-1i, ~(var_0.c.x & -1i)), arg_0.a.x), arg_0.b, !vec4<bool>(global1.x, !(u_input.c.x < 1u), any(select(arg_0.c.zzx, arg_0.c.zww, arg_0.c.yzy)), !(var_0.a.a.x && false)));
    let var_2 = Struct_3(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, max(arg_0.a.x, arg_0.a.x)), select(u_input.a, ~vec2<i32>(var_0.c.x, var_0.c.x), vec2<bool>(global1.x, var_1.b.a.x)), -vec2<i32>(-35190i, arg_0.a.x))), Struct_1(!arg_0.b.a), select(select(vec4<bool>(arg_0.a.x < -11599i, !var_0.d.a.x, !arg_0.c.x, true), var_1.c, !arg_0.c), vec4<bool>(global1.x, true, true & arg_0.b.a.x, all(vec4<bool>(global1.x, var_0.a.a.x, arg_0.c.x, arg_0.c.x))), select(select(arg_0.c, select(vec4<bool>(var_1.b.a.x, true, var_0.a.a.x, arg_0.c.x), arg_0.c, vec4<bool>(true, true, true, true)), vec4<bool>(global1.x, global1.x, true, false)), arg_0.c, all(!arg_0.c.xwy))));
    global0 = array<f32, 9>();
    var var_3 = max(arg_0.a, u_input.a);
    return !(!(!(arg_0.c.x & true)) || (reverseBits(~u_input.a.x) == var_3.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool, arg_3: vec2<u32>) -> Struct_3 {
    global1 = arg_0.d.a;
    let var_0 = arg_0.d;
    var var_1 = _wgslsmith_dot_vec2_u32(arg_3, select(u_input.c.yz, vec2<u32>(abs(arg_3.x), u_input.c.x), !(!vec2<bool>(var_0.a.x, false)))) | ~u_input.c.x;
    let var_2 = Struct_3((vec2<i32>(-1i) * -arg_0.c.xy) ^ vec2<i32>(0i, -2147483647i), arg_0.d, select(select(vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(all(vec2<bool>(arg_0.a.a.x, global1.x)), func_2(Struct_3(u_input.a, arg_0.a, vec4<bool>(arg_0.d.a.x, arg_0.a.a.x, false, true))), var_0.a.x, any(vec3<bool>(arg_2, false, global1.x))), select(!vec4<bool>(var_0.a.x, arg_0.d.a.x, true, arg_2), !vec4<bool>(false, arg_2, true, true), true)), vec4<bool>(false, arg_2, var_0.a.x, global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 9u)] + global0[_wgslsmith_index_u32(arg_3.x, 9u)])) == 258f));
    global0 = array<f32, 9>();
    return var_2;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = select(select(arg_0.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, arg_0.a.x), _wgslsmith_div_i32(arg_0.a.x, arg_0.a.x)) ^ _wgslsmith_dot_vec2_i32(u_input.a, abs(vec2<i32>(0i, 5417i))), true && arg_0.c.x), -_wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(-2147483647i), 1i), max(func_1(Struct_2(Struct_1(arg_0.c.zx), global0[_wgslsmith_index_u32(u_input.c.x, 9u)], vec3<i32>(-1i, 2147483647i, -2147483647i), Struct_1(vec2<bool>(arg_0.b.a.x, global1.x))), vec3<i32>(-1i, -1i, u_input.b), arg_0.b.a.x, vec2<u32>(u_input.c.x, 41423u)).a.x, 1i)), false);
    let var_1 = arg_0.b;
    let var_2 = 17208u;
    global1 = func_3(func_1(Struct_2(Struct_1(vec2<bool>(global1.x, arg_0.c.x)), -1565f, vec3<i32>(-1i, ~var_0, ~(-1i)), arg_0.b), vec3<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 51716i, 10642i), vec3<i32>(var_0, var_0, arg_0.a.x)), -21560i, select(false, var_1.a.x, false)), reverseBits(_wgslsmith_sub_i32(0i, arg_0.a.x)), 49345i), !global1.x, ~min(vec2<u32>(1u, 5408u), _wgslsmith_add_vec2_u32(u_input.c.xz, u_input.c.xy))).b, !vec4<bool>((u_input.b & arg_0.a.x) < ~2491i, select(true, var_1.a.x, arg_0.b.a.x), select(true, !var_1.a.x, all(arg_0.c.yxy)), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(406f, global0[_wgslsmith_index_u32(17966u, 9u)])))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(var_2, 9u)])), -117f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-821f, -839f) - vec2<f32>(-864f, global0[_wgslsmith_index_u32(var_2, 9u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(var_2, 9u)], -1586f), vec2<f32>(global0[_wgslsmith_index_u32(var_2, 9u)], -165f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], global0[_wgslsmith_index_u32(u_input.c.x, 9u)]) * vec2<f32>(801f, -290f))))));
    let var_3 = func_1(Struct_2(Struct_1(arg_0.b.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(4294967295u, 9u)]))))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0, 28387i), vec3<i32>(var_0, 0i, 0i)), func_1(Struct_2(func_1(Struct_2(Struct_1(var_1.a), global0[_wgslsmith_index_u32(u_input.c.x, 9u)], vec3<i32>(var_0, arg_0.a.x, arg_0.a.x), Struct_1(vec2<bool>(true, false))), vec3<i32>(arg_0.a.x, arg_0.a.x, 31252i), true, u_input.c.yz).b, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(12479u, 9u)]), min(vec3<i32>(0i, -1i, var_0), vec3<i32>(arg_0.a.x, -73250i, arg_0.a.x)), var_1), select(~vec3<i32>(1i, 9865i, var_0), vec3<i32>(0i, -2147483647i, 2147483647i), true), var_1.a.x, firstLeadingBit(vec2<u32>(4294967295u, u_input.c.x))).b), ~(abs(vec3<i32>(15643i, u_input.b, -2147483647i)) ^ ~(~vec3<i32>(u_input.a.x, -1i, var_0))), false, firstLeadingBit(~(~(~vec2<u32>(47980u, u_input.c.x))))).b;
    return func_1(Struct_2(func_1(Struct_2(var_3, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 9u)] + 378f), countOneBits(vec3<i32>(arg_0.a.x, 17988i, -12379i)), func_1(Struct_2(var_3, global0[_wgslsmith_index_u32(u_input.c.x, 9u)], vec3<i32>(arg_0.a.x, arg_0.a.x, -2511i), var_3), vec3<i32>(-14512i, 0i, var_0), false, u_input.c.yz).b), select(-vec3<i32>(var_0, var_0, var_0), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.x, -2147483647i, var_0), vec3<i32>(6989i, 34975i, u_input.a.x)), arg_0.c.wzw), any(func_1(Struct_2(var_1, global0[_wgslsmith_index_u32(1u, 9u)], vec3<i32>(-2147483647i, var_0, 1i), var_1), vec3<i32>(3555i, var_0, var_0), true, u_input.c.wz).b.a), reverseBits(~vec2<u32>(4294967295u, var_2))).b, -138f, select(~(vec3<i32>(0i, 0i, var_0) >> (vec3<u32>(u_input.c.x, var_2, 42792u) % vec3<u32>(32u))), vec3<i32>(~(-760i), _wgslsmith_sub_i32(-1i, 1i), var_0), _wgslsmith_sub_u32(0u, u_input.c.x) > 1u), Struct_1(func_3(func_1(Struct_2(var_1, global0[_wgslsmith_index_u32(42034u, 9u)], vec3<i32>(-35081i, 11408i, arg_0.a.x), var_3), vec3<i32>(0i, var_0, arg_0.a.x), var_1.a.x, u_input.c.wx).b, !arg_0.c, vec2<f32>(global0[_wgslsmith_index_u32(var_2, 9u)], global0[_wgslsmith_index_u32(0u, 9u)])))), min(vec3<i32>(u_input.a.x, -17059i, u_input.b), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(53915i, 22909i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.x, -1i, 1i), vec3<i32>(var_0, u_input.a.x, 2147483647i), vec3<i32>(14122i, var_0, arg_0.a.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, -5336i), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -22962i, -1i), vec3<i32>(arg_0.a.x, 10967i, 29497i))))), arg_0.c.x & true, u_input.c.xw).b;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32((vec2<i32>(0i, arg_0.c.x) << (u_input.c.wy % vec2<u32>(32u))) << (vec2<u32>(u_input.c.x, 105381u) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_sub_vec2_i32(arg_1.a, vec2<i32>(arg_0.c.x, 1i)))), 2147483647i, arg_1.a.x), 1i, arg_1.a.x ^ min(-78207i, max(arg_0.c.x, arg_1.a.x)));
    global1 = !func_4(func_1(Struct_2(Struct_1(vec2<bool>(false, arg_1.c.x)), arg_0.b, vec3<i32>(var_0, arg_1.a.x, arg_0.c.x), func_1(Struct_2(arg_0.a, 542f, arg_0.c, Struct_1(vec2<bool>(false, arg_0.a.a.x))), vec3<i32>(arg_1.a.x, arg_0.c.x, arg_0.c.x), arg_2.x, vec2<u32>(13163u, 10345u)).b), vec3<i32>(-1i) * -vec3<i32>(arg_0.c.x, var_0, -84022i), true, u_input.c.xx)).a;
    let var_1 = ~arg_1.a;
    global1 = func_4(Struct_3(~func_1(arg_0, countOneBits(arg_0.c), arg_1.b.a.x && arg_2.x, vec2<u32>(u_input.c.x, 4294967295u)).a, func_1(Struct_2(Struct_1(vec2<bool>(arg_0.a.a.x, arg_0.d.a.x)), _wgslsmith_f_op_f32(-1077f + 1210f), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0, 32651i, u_input.a.x), vec3<i32>(-2147483647i, -2470i, arg_1.a.x)), arg_0.a), -vec3<i32>(-35454i, var_0, arg_1.a.x), var_0 < arg_0.c.x, vec2<u32>(0u, ~u_input.c.x)).b, select(!(!arg_2), arg_2, func_3(func_4(Struct_3(vec2<i32>(u_input.b, -13510i), Struct_1(vec2<bool>(false, global1.x)), vec4<bool>(false, global1.x, true, true))), !arg_2, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], -547f) - vec2<f32>(arg_0.b, global0[_wgslsmith_index_u32(u_input.c.x, 9u)]))).x))).a;
    global1 = vec2<bool>(true, func_4(Struct_3(-vec2<i32>(13047i, 19918i) << (_wgslsmith_clamp_vec2_u32(u_input.c.wx, u_input.c.yy, u_input.c.xw) % vec2<u32>(32u)), arg_0.d, vec4<bool>(true, !global1.x, u_input.c.x < u_input.c.x, select(global1.x, true, true)))).a.x);
    return func_1(arg_0, max(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_0.c, arg_0.c), ~arg_1.a.x), 1i, ~(arg_0.c.x << (u_input.c.x % 32u))), arg_0.c), all(vec3<bool>(arg_0.a.a.x, arg_1.b.a.x, arg_0.d.a.x)), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, u_input.c.x) << (u_input.c.zy % vec2<u32>(32u)), countOneBits(vec2<u32>(u_input.c.x, u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    global0 = array<f32, 9>();
    var var_1 = func_5(Struct_2(func_4(func_1(Struct_2(Struct_1(vec2<bool>(global1.x, false)), 1868f, vec3<i32>(-1i, -20672i, -38854i), Struct_1(vec2<bool>(false, false))), ~vec3<i32>(u_input.b, 12239i, -1i), true, vec2<u32>(63341u, 16402u))), -518f, vec3<i32>(u_input.a.x, ~u_input.b, 17118i), Struct_1(!(!vec2<bool>(true, global1.x)))), Struct_3(-select(~vec2<i32>(2147483647i, -2147483647i), u_input.a, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), select(!vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(false || global1.x, select(global1.x, true, false), true, global1.x), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(u_input.c.x, 9u)] > -1000f))), func_1(Struct_2(Struct_1(vec2<bool>(true, global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 9u)] * global0[_wgslsmith_index_u32(96036u, 9u)]) - global0[_wgslsmith_index_u32(~u_input.c.x, 9u)]), -vec3<i32>(var_0, 0i, 40751i) >> (~u_input.c.yww % vec3<u32>(32u)), func_1(Struct_2(Struct_1(vec2<bool>(true, false)), -1330f, vec3<i32>(2147483647i, 2147483647i, var_0), Struct_1(vec2<bool>(false, false))), ~vec3<i32>(var_0, u_input.a.x, u_input.b), select(true, true, false), u_input.c.xx).b), vec3<i32>(~(i32(-1i) * -74220i), u_input.a.x, u_input.b), func_3(Struct_1(!vec2<bool>(global1.x, false)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)] < global0[_wgslsmith_index_u32(u_input.c.x, 9u)], true, select(true, global1.x, global1.x), all(vec3<bool>(global1.x, global1.x, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(941f, -138f) - vec2<f32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.c.x, 9u)])))).x, ~select(firstLeadingBit(u_input.c.xx), vec2<u32>(37229u, u_input.c.x), func_4(Struct_3(u_input.a, Struct_1(vec2<bool>(global1.x, false)), vec4<bool>(true, false, global1.x, true))).a)).c);
    var var_2 = func_5(Struct_2(Struct_1(func_5(Struct_2(var_1.b, -1164f, vec3<i32>(u_input.b, -27166i, -24839i), var_1.b), Struct_3(var_1.a, var_1.b, vec4<bool>(false, false, false, true)), var_1.c).c.yz), -903f, _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(16930i, u_input.a.x, 2147483647i), ~vec3<i32>(-2147483647i, var_1.a.x, 2147483647i)), countOneBits(~vec3<i32>(31457i, 1146i, -2147483647i))), Struct_1(vec2<bool>(true, true))), Struct_3(vec2<i32>(-1i) * -vec2<i32>(1i, 1i), func_1(Struct_2(func_4(Struct_3(var_1.a, var_1.b, var_1.c)), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.c.x, 9u)])), select(vec3<i32>(var_0, 23563i, u_input.b), vec3<i32>(var_1.a.x, -191i, var_0), var_1.b.a.x), func_4(Struct_3(vec2<i32>(29599i, u_input.b), var_1.b, var_1.c))), select(vec3<i32>(-7658i, u_input.b, var_1.a.x), abs(vec3<i32>(var_1.a.x, var_0, var_1.a.x)), !vec3<bool>(var_1.c.x, false, false)), global1.x || global1.x, reverseBits(u_input.c.xx) | vec2<u32>(u_input.c.x, 7582u)).b, vec4<bool>(var_1.b.a.x, !any(var_1.c.zxz), any(func_1(Struct_2(Struct_1(vec2<bool>(var_1.b.a.x, true)), 1225f, vec3<i32>(2147483647i, u_input.a.x, -2147483647i), var_1.b), vec3<i32>(-1i, -1i, -1i), false, vec2<u32>(8953u, u_input.c.x)).c), true)), vec4<bool>(var_1.b.a.x, !func_2(Struct_3(vec2<i32>(u_input.a.x, 1i), var_1.b, var_1.c)), func_3(var_1.b, vec4<bool>(var_1.c.x, true, global1.x, true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], 1000f)))).x, any(var_1.c.zwx)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-654f)) + 1387f), 649f)), -478f);
    let var_4 = var_2.b;
    var var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~22154u, u_input.c.x & 0u, 1u, 4294967295u), max(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 34997u), vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x)) ^ vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u)), 9u)], _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x << (1u % 32u), u_input.c.x | u_input.c.x, 4294967295u), 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - -260f)), _wgslsmith_f_op_f32(f32(-1f) * -2002f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-969f, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.c.x, 9u)])), _wgslsmith_f_op_f32(-1688f - 373f), _wgslsmith_f_op_f32(exp2(var_3.x))))));
    var_1 = Struct_3(var_2.a, Struct_1(!vec2<bool>(var_2.c.x, all(var_2.c))), !var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.x + 426f), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 9u)])))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1140f, var_3.x)), var_5.x))), _wgslsmith_add_vec2_u32(u_input.c.zx, u_input.c.zx));
}

