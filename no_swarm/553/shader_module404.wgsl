struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<f32> = vec2<f32>(152f, 645f);

var<private> global2: Struct_5;

var<private> global3: array<f32, 26> = array<f32, 26>(-1077f, 477f, 1095f, -354f, 1588f, -525f, -1442f, -223f, 2615f, -108f, -145f, -1791f, 316f, -1647f, 125f, 1591f, 438f, -819f, 840f, -1000f, 1558f, -1191f, -359f, 122f, -1325f, 229f);

var<private> global4: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(9264i, 1i, 2404i), vec3<i32>(-1i, -1i, 18181i), vec3<i32>(2147483647i, -27635i, i32(-2147483648)), vec3<i32>(1i, -14971i, 1i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, 16834i, 1i), vec3<i32>(0i, 41632i, 19989i), vec3<i32>(i32(-2147483648), -1261i, -82949i), vec3<i32>(30106i, -1i, 0i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    global0 = Struct_4(-38326i, global2.c);
    var var_0 = vec2<i32>(-1593i, _wgslsmith_mult_i32(16866i | abs(u_input.a), abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.b.a.a.x, 1i), abs(global2.b)))));
    let var_1 = ~vec3<u32>(_wgslsmith_add_u32(~(~global0.b.a.e), global2.c.a.e << (4294967295u % 32u)), countOneBits(~(23233u ^ global2.c.a.e)), global2.c.a.e);
    var_0 = ~vec2<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(40354u, 9u)], -max(vec3<i32>(global2.c.a.a.x, global0.a, u_input.a), global4[_wgslsmith_index_u32(4294967295u, 9u)])));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-global4[_wgslsmith_index_u32(~4294967295u, 9u)] << (var_1 % vec3<u32>(32u)), global4[_wgslsmith_index_u32(0u, 9u)]), countOneBits(-2147483647i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(122f)))) * _wgslsmith_f_op_f32(sign(1903f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> Struct_4 {
    global4 = array<vec3<i32>, 9>();
    global2 = Struct_5(0u | (~global2.a ^ global2.c.a.e), -1i, Struct_3(Struct_2(-_wgslsmith_mult_vec2_i32(global0.b.a.a, global2.c.a.a), global0.b.a.b, arg_0.x, vec2<bool>(all(vec2<bool>(false, true)), true), ~global0.b.a.e)));
    let var_0 = -786f;
    var var_1 = global2.c.a.b.a;
    let var_2 = _wgslsmith_f_op_f32(max(-2132f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.c.a.e, global0.b.a.e), 26u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(339f, var_0)) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.a, 26u)]))))))));
    return Struct_4(_wgslsmith_clamp_i32(global2.c.a.a.x, -(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.b.a.a.x, -1i, 2147483647i), vec4<i32>(global0.b.a.a.x, 20337i, global2.b, -35704i)) ^ ~global0.b.a.a.x), global0.b.a.a.x), global2.c);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: i32) -> Struct_3 {
    var var_0 = arg_1;
    let var_1 = select(select(vec3<bool>(any(func_2(global2.c.a.d, -46576i).b.a.d), false, (var_0.x > var_0.x) & (global1.x > 1000f)), vec3<bool>(all(vec2<bool>(global2.c.a.d.x, false)), false, !arg_0.b.a.c), vec3<bool>(!(-2089f >= global1.x), true, all(select(vec2<bool>(true, global2.c.a.d.x), vec2<bool>(true, global2.c.a.d.x), arg_0.b.a.d)))), !(!select(select(vec3<bool>(global2.c.a.c, false, global0.b.a.c), vec3<bool>(true, global0.b.a.b.a, global2.c.a.c), global2.c.a.d.x), !vec3<bool>(global2.c.a.b.a, false, false), !vec3<bool>(global2.c.a.b.a, global2.c.a.d.x, global0.b.a.b.a))), any(!select(vec3<bool>(true, true, true), select(vec3<bool>(global0.b.a.b.a, global2.c.a.c, global0.b.a.d.x), vec3<bool>(true, global2.c.a.c, true), vec3<bool>(global2.c.a.b.a, arg_0.b.a.d.x, true)), select(vec3<bool>(arg_0.b.a.c, true, true), vec3<bool>(false, arg_0.b.a.d.x, arg_0.b.a.d.x), vec3<bool>(false, global0.b.a.d.x, global2.c.a.b.a)))));
    return func_2(select(arg_0.b.a.d, arg_0.b.a.d, max(arg_0.b.a.e, 59563u) > 71291u), ~global0.b.a.a.x).b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    global1 = vec2<f32>(global3[_wgslsmith_index_u32(0u, 26u)], 171f);
    let var_0 = _wgslsmith_mod_vec3_u32(abs(vec3<u32>(func_4(Struct_4(global0.a, arg_1), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2977f, global3[_wgslsmith_index_u32(28394u, 26u)], global1.x, 245f))), arg_1.a.a.x).a.e, arg_1.a.e, _wgslsmith_mult_u32(29224u, firstTrailingBit(46138u)))), vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(2139u, arg_1.a.e)), vec2<u32>(firstTrailingBit(global2.a), global2.a ^ 71072u)), global2.a, global2.a));
    let var_1 = vec3<bool>(false, all(!global0.b.a.d), arg_0.a);
    var var_2 = arg_1.a;
    global3 = array<f32, 26>();
    return func_4(func_2(select(select(var_1.zx, vec2<bool>(true, true), vec2<bool>(var_2.c, false)), !(!arg_1.a.d), !var_2.c), _wgslsmith_div_i32(u_input.a, -1i)), vec4<f32>(-985f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_2.e, 26u)] * _wgslsmith_f_op_f32(f32(-1f) * -1350f)), -627f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -807f)))), _wgslsmith_mod_i32(u_input.a, 34547i));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = func_5(arg_2, func_4(func_2(global0.b.a.d, global2.b), _wgslsmith_f_op_vec4_f32(trunc(arg_0)), global2.b));
    var var_1 = arg_1;
    let var_2 = ~global2.a;
    global0 = func_2(func_5(arg_2, Struct_3(global2.c.a)).a.d, 0i & (_wgslsmith_add_i32(-var_0.a.a.x, i32(-1i) * -2147483647i) << (_wgslsmith_div_u32(var_0.a.e, var_2) % 32u)));
    var var_3 = !select(!(!(!vec4<bool>(false, false, arg_1, var_0.a.b.a))), !vec4<bool>(!arg_1, arg_1, !arg_2.a, all(vec3<bool>(true, var_0.a.b.a, arg_1))), true);
    return ~abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.a.e, 64025u, global0.b.a.e) >> (vec3<u32>(4294967295u, 71258u, var_0.a.e) % vec3<u32>(32u)), ~vec3<u32>(var_0.a.e, global2.a, 73774u)));
}

fn func_6(arg_0: vec3<u32>) -> Struct_5 {
    var var_0 = select(vec3<bool>(false, !global0.b.a.c, !global0.b.a.b.a), !vec3<bool>(global2.c.a.c, !any(global0.b.a.d), false), select(!select(vec3<bool>(false, true, true), !vec3<bool>(global0.b.a.c, true, global0.b.a.b.a), global0.b.a.d.x), select(!(!vec3<bool>(false, global2.c.a.d.x, global2.c.a.c)), select(select(vec3<bool>(true, global0.b.a.d.x, global0.b.a.c), vec3<bool>(true, global2.c.a.c, global2.c.a.d.x), vec3<bool>(false, false, false)), select(vec3<bool>(false, global0.b.a.c, global0.b.a.d.x), vec3<bool>(false, true, global0.b.a.c), vec3<bool>(false, global0.b.a.b.a, global0.b.a.d.x)), !vec3<bool>(global0.b.a.b.a, global0.b.a.d.x, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, global0.b.a.d.x, false), true)), vec3<bool>(true, true, true)));
    var var_1 = func_2(!(!(!func_5(Struct_1(false), Struct_3(global0.b.a)).a.d)), ~(-select(33770i, reverseBits(u_input.a), !global2.c.a.b.a)));
    global0 = Struct_4(_wgslsmith_dot_vec3_i32(~global4[_wgslsmith_index_u32(0u << (_wgslsmith_add_u32(var_1.b.a.e, global0.b.a.e) % 32u), 9u)], _wgslsmith_add_vec3_i32(min(abs(vec3<i32>(var_1.b.a.a.x, var_1.a, var_1.b.a.a.x)), ~vec3<i32>(45918i, u_input.a, -6632i)), ~_wgslsmith_add_vec3_i32(global4[_wgslsmith_index_u32(arg_0.x, 9u)], vec3<i32>(global0.a, 25976i, u_input.a)))), global2.c);
    global4 = array<vec3<i32>, 9>();
    global4 = array<vec3<i32>, 9>();
    return Struct_5(~(~4294967295u), 26130i, Struct_3(Struct_2(firstLeadingBit(vec2<i32>(-1i, -10947i)), global0.b.a.b, all(vec3<bool>(false, false, var_0.x)), global2.c.a.d, var_1.b.a.e)));
}

fn func_7(arg_0: Struct_5, arg_1: i32, arg_2: bool) -> i32 {
    global0 = func_2(!(!vec2<bool>(global0.b.a.c, global0.b.a.c & global2.c.a.c)), ~_wgslsmith_sub_i32(-4601i, _wgslsmith_mod_i32(select(global0.a, global2.c.a.a.x, arg_2), abs(global0.a))));
    global2 = func_6(~firstTrailingBit(countOneBits(vec3<u32>(1u, 39430u, global0.b.a.e) & vec3<u32>(global2.a, global2.a, 51764u))));
    var var_0 = func_4(Struct_4(reverseBits(_wgslsmith_sub_i32(arg_0.b, global0.a)), func_5(Struct_1(all(vec3<bool>(global0.b.a.b.a, global2.c.a.d.x, false))), func_6(~vec3<u32>(global0.b.a.e, global2.c.a.e, 54546u)).c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global2.a, 26u)], _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(76181u, 26u)], global3[_wgslsmith_index_u32(global0.b.a.e, 26u)])), _wgslsmith_f_op_f32(f32(-1f) * -269f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-664f, -1825f, global1.x, -794f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1895f, global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -1184f, -131f, global3[_wgslsmith_index_u32(35314u, 26u)]), vec4<f32>(2445f, global3[_wgslsmith_index_u32(47401u, 26u)], global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(global0.b.a.e, 26u)]))))), func_4(func_2(vec2<bool>(true, any(vec2<bool>(true, false))), -11126i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2582f, global3[_wgslsmith_index_u32(arg_0.c.a.e, 26u)], -2142f, 1000f), vec4<f32>(542f, global1.x, global1.x, global3[_wgslsmith_index_u32(global2.a, 26u)]))))))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(-1725i, global2.b, -56432i), reverseBits(vec3<i32>(-28141i, 41272i, 3369i))), select(_wgslsmith_mod_vec3_i32(global4[_wgslsmith_index_u32(global0.b.a.e, 9u)], global4[_wgslsmith_index_u32(global0.b.a.e, 9u)]), global4[_wgslsmith_index_u32(~0u, 9u)], vec3<bool>(false, global2.c.a.d.x, global2.c.a.c)))).a.a.x);
    let var_1 = func_6(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -562f, -1857f, -119f) - vec4<f32>(1000f, -1000f, -575f, 778f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 277f, global1.x, -1905f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, 1291f, global3[_wgslsmith_index_u32(global0.b.a.e, 26u)], global3[_wgslsmith_index_u32(35338u, 26u)]) + vec4<f32>(global1.x, global1.x, -324f, -138f))))), !(!var_0.a.c), var_0.a.b)).c;
    var_0 = func_6(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(global0.b.a.e, 1u, 43255u) | vec3<u32>(0u, global0.b.a.e, 15520u)) & vec3<u32>(76818u, global2.a, abs(global2.c.a.e)), ~select(~vec3<u32>(4294967295u, 49814u, 5650u), reverseBits(vec3<u32>(var_1.a.e, var_0.a.e, global2.c.a.e)), func_2(vec2<bool>(global2.c.a.d.x, true), 5890i).b.a.c), ~((vec3<u32>(global0.b.a.e, arg_0.c.a.e, 1u) & vec3<u32>(1u, global2.c.a.e, 42327u)) ^ vec3<u32>(var_0.a.e, global0.b.a.e, var_0.a.e)))).c;
    return _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(29687i, 35363i), vec2<i32>(var_1.a.a.x, u_input.b.x)), var_1.a.a >> (vec2<u32>(22033u, 31399u) % vec2<u32>(32u))), ~(-vec2<i32>(arg_0.c.a.a.x, -2147483647i))), firstLeadingBit(_wgslsmith_add_vec2_i32(global0.b.a.a, -global2.c.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_add_i32(global0.b.a.a.x, global2.c.a.a.x), global0.b);
    global0 = Struct_4(select(2147483647i, -global0.b.a.a.x, global0.b.a.b.a | global2.c.a.b.a), global0.b);
    var var_0 = 174f;
    let var_1 = select(vec2<bool>(!all(select(vec3<bool>(true, global2.c.a.c, global2.c.a.b.a), vec3<bool>(global2.c.a.b.a, global0.b.a.c, global0.b.a.d.x), global2.c.a.c)), select(!global2.c.a.b.a, !global0.b.a.c, !global2.c.a.d.x)), global2.c.a.d, any(select(!select(vec4<bool>(global0.b.a.c, true, global0.b.a.d.x, false), vec4<bool>(false, global2.c.a.c, global0.b.a.d.x, true), false), select(vec4<bool>(false, false, global0.b.a.c, global2.c.a.d.x), vec4<bool>(true, global2.c.a.c, global0.b.a.b.a, global2.c.a.b.a), vec4<bool>(false, global0.b.a.d.x, global0.b.a.c, global0.b.a.b.a)), (global1.x >= global1.x) == all(vec3<bool>(global2.c.a.c, global2.c.a.b.a, false)))));
    var var_2 = max(-(i32(-1i) * -38222i), ~global2.c.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~global4[_wgslsmith_index_u32(~global0.b.a.e << (global0.b.a.e % 32u), 9u)], 25533i, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1131f, global1.x, -691f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(757f, global3[_wgslsmith_index_u32(4294967295u, 26u)], global1.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(global2.c.a.e, 26u)], 1265f, global3[_wgslsmith_index_u32(14215u, 26u)]))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(998f, global3[_wgslsmith_index_u32(global0.b.a.e, 26u)], 1000f))))))))), global2.c.a.e, -func_7(func_6(func_1(vec4<f32>(global1.x, global3[_wgslsmith_index_u32(57604u, 26u)], global3[_wgslsmith_index_u32(global0.b.a.e, 26u)], 1741f), true, global0.b.a.b)), u_input.b.x, all(vec4<bool>(var_1.x, false, true, global2.c.a.c))));
}

