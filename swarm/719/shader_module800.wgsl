struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), -335f, vec4<bool>(true, true, false, true), vec4<i32>(1i, 1i, 12947i, 2147483647i), 46479u);

var<private> global1: vec3<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    let var_0 = !all(vec4<bool>(true, global0.c.x, !all(vec4<bool>(true, arg_0.c.x, arg_0.c.x, true)), !(!arg_2.c.x)));
    global0 = Struct_1(arg_2.d.x, _wgslsmith_div_f32(1212f, -749f), vec4<bool>(var_0, false, all(arg_0.c), global0.c.x), _wgslsmith_div_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(-80467i, -1534i, arg_0.d.x, 0i))), -global0.d), ~select(arg_0.e | (4294967295u >> (arg_2.e % 32u)), abs(_wgslsmith_clamp_u32(global0.e, 22897u, 4294967295u)), select(true, true, true) | true));
    global0 = Struct_1(-u_input.a, 869f, !(!vec4<bool>(any(vec4<bool>(false, false, false, false)), true, !arg_0.c.x, true)), ~(-(~(vec4<i32>(global0.d.x, u_input.c.x, u_input.a, 2147483647i) << (vec4<u32>(arg_0.e, arg_0.e, 59209u, 48687u) % vec4<u32>(32u))))), ~_wgslsmith_sub_u32(~(arg_2.e | arg_2.e), arg_2.e));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-222f + -237f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-511f)))));
    global0 = Struct_1(abs(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -712f)), vec4<bool>(var_0, arg_2.c.x, arg_2.c.x, true), _wgslsmith_mod_vec4_i32(arg_2.d, vec4<i32>(~(~32806i), u_input.a >> (global0.e % 32u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, 47901i), u_input.a), ~45652i << (~global0.e % 32u))), arg_0.e);
    return _wgslsmith_div_i32(-22731i, -arg_0.d.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, global0.e, arg_1.a.e) ^ reverseBits(~vec3<u32>(u_input.b, 1u, arg_1.a.e)), ~(~vec3<u32>(87386u, global0.e, global0.e))), 4294967295u);
    global1 = _wgslsmith_sub_vec3_i32(vec3<i32>(32433i, 2147483647i, _wgslsmith_dot_vec3_i32(global0.d.www >> (~vec3<u32>(u_input.b, 17556u, 26211u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(-22225i, 19948i), _wgslsmith_add_i32(0i, arg_1.a.a), func_3(arg_1.a, arg_0.x, arg_1.a, vec3<f32>(arg_1.a.b, -1842f, global0.b))))), global0.d.wxw & (vec3<i32>(2784i, -1i, -1i) >> (countOneBits(countOneBits(vec3<u32>(u_input.b, 41742u, var_0.x))) % vec3<u32>(32u))));
    global0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, u_input.a), global0.d.yz), -countOneBits(u_input.c.x)), _wgslsmith_f_op_f32(max(arg_0.x, -865f)), !(!vec4<bool>(global0.c.x, arg_1.a.c.x, global0.d.x <= global1.x, true)), -vec4<i32>(_wgslsmith_mod_i32(global0.a, -22646i), _wgslsmith_add_i32(u_input.c.x, 0i), _wgslsmith_mod_i32(-8499i, arg_1.a.a), arg_1.a.d.x) >> (~_wgslsmith_div_vec4_u32(~vec4<u32>(global0.e, arg_1.a.e, var_0.x, 1080u), select(vec4<u32>(global0.e, var_0.x, 144907u, 2487u), vec4<u32>(62481u, var_0.x, u_input.b, arg_1.a.e), arg_1.a.c.x)) % vec4<u32>(32u)), 18291u);
    global1 = _wgslsmith_div_vec3_i32((vec3<i32>(-1i) * -(vec3<i32>(-14682i, 1i, 4522i) >> (vec3<u32>(0u, u_input.b, var_0.x) % vec3<u32>(32u)))) & _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(global0.a, 0i, arg_1.a.d.x) >> (vec3<u32>(31289u, 1u, var_0.x) % vec3<u32>(32u))), global0.d.wyw), -_wgslsmith_mult_vec3_i32(-global0.d.wxx << (~vec3<u32>(78717u, u_input.b, u_input.b) % vec3<u32>(32u)), -abs(vec3<i32>(-2147483647i, global1.x, global1.x))));
    global0 = Struct_1(arg_1.a.a, 976f, vec4<bool>(false, global0.c.x, !any(vec2<bool>(true, true)), any(!vec3<bool>(false, arg_2, arg_1.a.c.x))), arg_1.a.d & abs(arg_1.a.d), ~var_0.x);
    return Struct_1(-53022i, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f - _wgslsmith_f_op_f32(-arg_1.a.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-234f * -750f)))), arg_1.a.c, vec4<i32>(1i, reverseBits(2147483647i), -2147483647i, _wgslsmith_mod_i32(22831i, firstTrailingBit(1i))), _wgslsmith_div_u32(0u, firstTrailingBit(~u_input.b) << (countOneBits(firstTrailingBit(u_input.b)) % 32u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_1.a.c.yyy;
    return func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.b, arg_1.a.b))) + _wgslsmith_f_op_vec2_f32(-arg_0.zx)), arg_1, !((u_input.b ^ (u_input.b ^ global0.e)) <= 0u));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(func_4(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(f32(-1f) * -660f), global0.b, global0.b), Struct_2(Struct_1(-global1.x, global0.b, select(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false), global0.c, global0.c.x), -global0.d, ~105817u)), false, Struct_2(func_2(vec2<f32>(global0.b, global0.b), Struct_2(Struct_1(17644i, global0.b, vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x), global0.d, global0.e)), false))));
    let var_1 = select(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(var_0.a.d, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -38517i, var_0.a.d.x, 0i), global0.d), vec4<i32>(-2147483647i, var_0.a.a, 8016i, -2147483647i), -global0.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.c.x, global0.d.x, 2147483647i >> (0u % 32u), _wgslsmith_mod_i32(0i, var_0.a.a)), global0.d)), var_0.a.d, global0.c);
    var var_2 = _wgslsmith_sub_u32(9557u >> (var_0.a.e % 32u), countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.e, global0.e, var_0.a.e), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.e, 98015u, u_input.b), vec3<u32>(global0.e, global0.e, 0u)))));
    var_0 = Struct_2(Struct_1(~select(_wgslsmith_sub_i32(var_1.x, 0i), global0.a, func_4(vec4<f32>(194f, -2807f, global0.b, var_0.a.b), Struct_2(var_0.a), true, Struct_2(var_0.a)).c.x), _wgslsmith_f_op_f32(f32(-1f) * -405f), select(!select(var_0.a.c, global0.c, var_0.a.c), vec4<bool>(all(global0.c.wxz), global0.c.x | false, var_0.a.c.x, true), !global0.c.x), vec4<i32>(firstTrailingBit(select(var_1.x, u_input.c.x, var_0.a.c.x)), reverseBits(13630i) >> (var_0.a.e % 32u), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, -1407f, var_0.a.b, 1248f)), Struct_2(Struct_1(-49986i, 520f, vec4<bool>(true, false, false, var_0.a.c.x), vec4<i32>(0i, global1.x, -1i, u_input.c.x), u_input.b)), func_4(vec4<f32>(var_0.a.b, global0.b, global0.b, var_0.a.b), Struct_2(Struct_1(u_input.c.x, global0.b, vec4<bool>(true, var_0.a.c.x, var_0.a.c.x, var_0.a.c.x), vec4<i32>(-1i, u_input.c.x, -6416i, 0i), global0.e)), var_0.a.c.x, Struct_2(Struct_1(global1.x, var_0.a.b, global0.c, var_1, global0.e))).c.x, Struct_2(var_0.a)).d.x, _wgslsmith_add_i32(-1i, var_1.x)), 14791u));
    var var_3 = func_4(vec4<f32>(_wgslsmith_f_op_f32(floor(2145f)), _wgslsmith_f_op_f32(-global0.b), -677f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) - _wgslsmith_f_op_f32(f32(-1f) * -199f))))), Struct_2(func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1059f, global0.b)))), Struct_2(func_2(vec2<f32>(global0.b, var_0.a.b), Struct_2(var_0.a), false)), true)), true, Struct_2(var_0.a));
    return Struct_2(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3.b)), -2068f, _wgslsmith_f_op_f32(f32(-1f) * -791f), _wgslsmith_f_op_f32(min(-100f, var_0.a.b))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, var_3.b, var_0.a.b, var_3.b) * vec4<f32>(384f, global0.b, var_0.a.b, 474f))))), Struct_2(var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(292f)) * 944f) > -709f, Struct_2(Struct_1(_wgslsmith_div_i32(u_input.a, global1.x), _wgslsmith_f_op_f32(select(1183f, -1274f, global0.c.x)), !vec4<bool>(false, global0.c.x, var_0.a.c.x, false), vec4<i32>(-34778i, var_0.a.d.x, -2147483647i, -1i), firstTrailingBit(u_input.b)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - -1093f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))))));
    global1 = abs(vec3<i32>(15497i, 11613i, -1i));
    var var_1 = true;
    let var_2 = arg_3;
    var_1 = false;
    return arg_3.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    return func_5(arg_2.c.wyx, firstTrailingBit(2147483647i << (0u % 32u)), -func_3(Struct_1(arg_2.a, _wgslsmith_f_op_f32(-arg_2.b), global0.c, abs(vec4<i32>(u_input.c.x, 0i, -34722i, global1.x)), u_input.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, arg_0.b)), _wgslsmith_f_op_f32(global0.b * -777f))), Struct_1(1i, arg_2.b, vec4<bool>(arg_2.c.x, arg_0.c.x, global0.c.x, true), vec4<i32>(u_input.c.x, arg_2.d.x, arg_2.d.x, 10961i), ~5690u), vec3<f32>(func_2(vec2<f32>(838f, -1000f), Struct_2(arg_0), true).b, -377f, func_2(vec2<f32>(128f, -409f), Struct_2(Struct_1(arg_2.d.x, arg_0.b, vec4<bool>(arg_0.c.x, arg_0.c.x, true, true), arg_2.d, 1u)), arg_2.c.x).b)), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(!global0.c.wzz, u_input.a, -firstLeadingBit(23774i), func_1()), -global0.d.xzx, Struct_1(-4575i, func_5(!vec3<bool>(global0.c.x, global0.c.x, true), global1.x, 60096i, func_1()).b, vec4<bool>(true, false, true, global0.c.x), vec4<i32>(~(global0.d.x >> (global0.e % 32u)), -37628i, _wgslsmith_div_i32(select(u_input.c.x, -3647i, global0.c.x), i32(-1i) * -5805i), ~(~u_input.a)), u_input.b));
    let var_0 = func_1();
    var var_1 = max(global0.e, 94761u);
    var var_2 = vec4<i32>(-23023i, 9370i, i32(-1i) * -_wgslsmith_add_i32(max(-2147483647i, 1i), -2147483647i), _wgslsmith_add_i32(-10906i, _wgslsmith_dot_vec2_i32(u_input.c, global0.d.yy)) | 31280i);
    var var_3 = func_6(Struct_1(var_0.a.d.x, global0.b, !vec4<bool>(select(var_0.a.c.x, var_0.a.c.x, true), true, true, var_0.a.c.x), func_5(var_0.a.c.wxw, u_input.c.x, _wgslsmith_add_i32(global1.x, 1i) << ((global0.e << (69005u % 32u)) % 32u), var_0).d, var_0.a.e), ~_wgslsmith_sub_vec3_i32(countOneBits(abs(global0.d.zwx)), ~_wgslsmith_clamp_vec3_i32(global0.d.xzy, vec3<i32>(var_0.a.d.x, var_0.a.a, var_0.a.d.x), vec3<i32>(var_2.x, 1623i, 0i))), Struct_1(min(var_0.a.d.x, i32(-1i) * -24881i), var_0.a.b, global0.c, min(vec4<i32>(_wgslsmith_sub_i32(1i, u_input.a), 2147483647i, 1i, min(var_2.x, var_0.a.a)), -(vec4<i32>(global0.a, var_2.x, var_0.a.d.x, u_input.a) ^ var_0.a.d)), u_input.b));
    var var_4 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.a.e, 12987u, u_input.b), vec4<u32>(global0.e, 1u, 4294967295u, global0.e)), select(vec4<u32>(24513u, 0u, global0.e, u_input.b), vec4<u32>(49180u, 1u, var_0.a.e, 1u), vec4<bool>(var_3.c.x, false, false, true))), min(vec4<u32>(global0.e, var_0.a.e, var_0.a.e, global0.e), max(vec4<u32>(u_input.b, global0.e, var_3.e, 19429u), vec4<u32>(global0.e, var_0.a.e, 57552u, var_3.e))) ^ ~vec4<u32>(var_0.a.e, 1u, 1u, 0u)), vec4<u32>(~max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.e, 0u), vec2<u32>(54051u, var_3.e)), ~u_input.b), select(_wgslsmith_mult_u32(_wgslsmith_div_u32(20627u, var_3.e), 4294967295u), _wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 1u), firstLeadingBit(var_0.a.e)), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1198f, global0.b, -111f, -1000f), vec4<f32>(934f, var_0.a.b, 1428f, var_3.b), var_0.a.c.x)), Struct_2(var_0.a), func_2(vec2<f32>(var_3.b, var_3.b), Struct_2(var_0.a), true).c.x, var_0).c.x), ~91496u, var_0.a.e));
    var var_5 = min(_wgslsmith_mult_i32(global1.x, func_3(func_5(func_1().a.c.wyw, _wgslsmith_mod_i32(u_input.c.x, -52835i), ~1973i, func_1()), var_0.a.b, var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 744f, 387f))))), 2147483647i);
    var_1 = ~var_0.a.e;
    let x = u_input.a;
    s_output = StorageBuffer(global1.zx, -func_4(vec4<f32>(func_2(vec2<f32>(-682f, global0.b), var_0, true).b, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(abs(166f)), _wgslsmith_div_f32(global0.b, 513f)), func_1(), !var_3.c.x, func_1()).a, global0.d.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, 44253u, 1u, var_4.x)), vec4<u32>(var_4.x & var_4.x, var_4.x ^ var_0.a.e, var_0.a.e, firstTrailingBit(global0.e))), _wgslsmith_sub_u32(1u, var_0.a.e ^ 4991u)));
}

