struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(-28540i, 42773i, 72213i, i32(-2147483648), 5911i, -1i, 1i, 1i, 13074i, 2147483647i, 5906i, 0i, 26498i, 34069i, -75804i, 2147483647i, 36754i, 1i, 0i, -30455i, 0i, 22962i);

var<private> global1: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(0i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 29300i), vec3<i32>(21305i, 13022i, 1197i), vec3<i32>(1598i, 13497i, -23502i), vec3<i32>(78840i, -24113i, 7340i), vec3<i32>(-31459i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, 11539i, -1i), vec3<i32>(0i, 2147483647i, -5693i), vec3<i32>(41956i, -1i, 1i), vec3<i32>(-13820i, 1i, -13228i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(-1i, 43383i, -1i), vec3<i32>(32552i, -1i, 45924i), vec3<i32>(2147483647i, i32(-2147483648), -19986i), vec3<i32>(41066i, 1i, -15747i), vec3<i32>(23479i, i32(-2147483648), 19113i), vec3<i32>(1i, -41866i, 0i), vec3<i32>(-13889i, 2147483647i, -35385i), vec3<i32>(-2476i, 73520i, 0i), vec3<i32>(-17373i, i32(-2147483648), -34547i), vec3<i32>(2147483647i, 16605i, -1i), vec3<i32>(-76371i, -5837i, i32(-2147483648)), vec3<i32>(-35666i, -35460i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)));

var<private> global2: Struct_2 = Struct_2(vec4<u32>(0u, 23801u, 0u, 27666u), 874f, Struct_1(vec2<f32>(1000f, -830f), false, -30668i, -35010i));

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(866f, 654f), false, -13708i, 0i));

var<private> global4: array<u32, 9> = array<u32, 9>(70509u, 10235u, 1u, 4294967295u, 1u, 52268u, 21440u, 0u, 22650u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> vec4<f32> {
    let var_0 = ~(~abs(global2.a.yzz));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1210f, global2.b, global2.c.a.x, 1000f)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> f32 {
    global2 = Struct_2(arg_0, -1268f, global2.c);
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.c.a.x)))) > 1396f);
    let var_1 = ~(~(~((vec2<u32>(38360u, global4[_wgslsmith_index_u32(1u, 9u)]) >> (vec2<u32>(u_input.d.x, global2.a.x) % vec2<u32>(32u))) << (firstLeadingBit(vec2<u32>(global2.a.x, 4294967295u)) % vec2<u32>(32u)))));
    let var_2 = select(arg_1, vec4<bool>(!(!select(true, arg_1.x, true)), true, global2.c.b, !(global2.c.a.x == _wgslsmith_f_op_f32(-global2.c.a.x))), !all(!arg_1.yz));
    let var_3 = global2.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(false, arg_1.yzw, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.a.x - global2.b), _wgslsmith_f_op_f32(f32(-1f) * -1773f))))).x)));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = !select(vec2<bool>(false, any(!vec4<bool>(arg_2.b, global2.c.b, arg_2.b, false))), vec2<bool>(any(select(vec3<bool>(false, true, global2.c.b), vec3<bool>(false, true, false), global2.c.b)), -52139i <= arg_2.d), select(select(vec2<bool>(global2.c.b, arg_2.b), vec2<bool>(global2.c.b, true), !vec2<bool>(global2.c.b, global2.c.b)), vec2<bool>(true, global2.c.b), vec2<bool>(all(vec4<bool>(global2.c.b, arg_2.b, global2.c.b, arg_2.b)), all(vec4<bool>(false, global2.c.b, arg_2.b, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, 993f, global2.c.a.x, arg_2.a.x) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.c.a.x, -1209f, global2.b, global2.c.a.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(any(vec3<bool>(false, true, global2.c.b)), vec3<bool>(global2.c.b, true, false), 1741f)))));
    global2 = Struct_2(_wgslsmith_mod_vec4_u32(reverseBits(global2.a), firstTrailingBit(~_wgslsmith_clamp_vec4_u32(global2.a, vec4<u32>(u_input.a, global4[_wgslsmith_index_u32(u_input.d.x, 9u)], 9947u, u_input.b), vec4<u32>(48032u, 84874u, arg_0, 4294967295u)))), _wgslsmith_f_op_vec4_f32(func_2(true, select(vec3<bool>(all(vec3<bool>(arg_2.b, false, true)), select(false, true, var_0.x), true || arg_2.b), select(vec3<bool>(true, true, false), vec3<bool>(arg_2.b, false, global2.c.b), false), vec3<bool>(!var_0.x, arg_2.c >= 0i, all(vec4<bool>(true, arg_2.b, arg_2.b, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~global2.a, vec4<bool>(false, true, false, true)))))).x, global2.c);
    var var_2 = global2.a.xw;
    global2 = Struct_2(reverseBits(global2.a << (max(select(global2.a, vec4<u32>(global4[_wgslsmith_index_u32(1u, 9u)], 14988u, var_2.x, var_2.x), vec4<bool>(false, true, arg_2.b, var_0.x)), ~global2.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_vec4_f32(func_2(any(vec4<bool>(true, global2.c.b, arg_2.b, false)), select(vec3<bool>(true, global2.c.b, true), vec3<bool>(false, var_0.x, global2.c.b), true), var_1.x)).x))), global3[_wgslsmith_index_u32(arg_0, 1u)]);
    return Struct_2(~reverseBits(_wgslsmith_mod_vec4_u32(global2.a, vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 9u)], 6669u, global4[_wgslsmith_index_u32(0u, 9u)], global2.a.x)) << (vec4<u32>(82710u, 37588u, var_2.x, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a.x)))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a) * vec2<f32>(global2.b, -607f)), _wgslsmith_f_op_vec4_f32(func_2(var_0.x, !vec3<bool>(global2.c.b, var_0.x, true), global2.b)).wz), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_2(var_0.x, vec3<bool>(true, arg_2.b, false), global2.b)).x, _wgslsmith_f_op_f32(var_1.x + -789f))) >= global2.b, _wgslsmith_sub_i32(reverseBits(u_input.c.x), arg_1.x), _wgslsmith_mod_i32(1448i, ~69338i) & global2.c.d));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.b)), global2.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.b - 232f), _wgslsmith_div_f32(895f, 110f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.a.x, -3134f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(888f, arg_1.c.a.x, global2.c.a.x, 499f) - vec4<f32>(-927f, global2.b, arg_1.b, 126f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, 260f, 566f, global2.b)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c.a.x, -1029f, -797f, arg_1.b), vec4<f32>(arg_1.c.a.x, arg_1.c.a.x, arg_1.b, 1000f), vec4<bool>(arg_1.c.b, arg_1.c.b, global2.c.b, global2.c.b))))))));
    var var_1 = true & (true | (!select(true, false, true) | true));
    global3 = array<Struct_1, 1>();
    let var_2 = global2.c;
    global2 = func_1(1u, vec2<i32>(~u_input.c.x ^ global2.c.c, -9098i), func_1(countOneBits(~1u ^ u_input.a), ~abs(vec2<i32>(global2.c.d, u_input.c.x)), func_1(_wgslsmith_sub_u32(~77968u, abs(u_input.b)), reverseBits(_wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(-1683i, global0[_wgslsmith_index_u32(1u, 22u)]))), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(arg_1.a.yy, vec2<u32>(global2.a.x, 4294967295u)), 9u)], 1u)]).c).c);
    return Struct_1(_wgslsmith_div_vec2_f32(func_1(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(14248u, 9u)], 9u)], min(_wgslsmith_mult_vec2_i32(u_input.c, u_input.c), arg_0), func_1(1u, vec2<i32>(27503i, global0[_wgslsmith_index_u32(u_input.a, 22u)]) << (vec2<u32>(arg_1.a.x, 44288u) % vec2<u32>(32u)), Struct_1(arg_1.c.a, var_2.b, arg_0.x, 2147483647i)).c).c.a, _wgslsmith_f_op_vec2_f32(max(global2.c.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.c.a.x, var_0.x), var_0.wy, vec2<bool>(false, var_2.b))), vec2<f32>(var_2.a.x, -403f)))))), true, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(25530u, 22u)], var_2.d, global0[_wgslsmith_index_u32(u_input.b, 22u)], u_input.c.x), vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global2.c.c, 58953i, 23864i)), vec4<i32>(-var_2.d, i32(-1i) * -arg_1.c.c, -(i32(-1i) * -25075i), _wgslsmith_clamp_i32(arg_1.c.d, arg_0.x, u_input.c.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(11430i, ~arg_1.c.d, 0i), vec3<i32>(-53270i, u_input.c.x, ~global0[_wgslsmith_index_u32(arg_1.a.x, 22u)])) << (max(~global2.a.x, reverseBits(~20003u)) % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-arg_0.a.x)) - global2.c.a), false, _wgslsmith_mult_i32(~(-(~global0[_wgslsmith_index_u32(u_input.a, 22u)])), max(~global2.c.d << (global4[_wgslsmith_index_u32(firstLeadingBit(global2.a.x), 9u)] % 32u), 1i)), func_4(~(-select(u_input.c, vec2<i32>(-1i, u_input.c.x), false)), Struct_2(~vec4<u32>(global2.a.x, 4294967295u, 1u, arg_1.x), arg_2, Struct_1(vec2<f32>(arg_2, arg_2), arg_0.b, -28882i, -u_input.c.x))).d);
    var var_1 = func_4(vec2<i32>(arg_0.d ^ ~_wgslsmith_mod_i32(arg_0.d, arg_0.c), u_input.c.x), func_1(43124u, ~(vec2<i32>(51965i, arg_0.c) ^ u_input.c), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47800u >> (arg_1.x % 32u), 9u)], 9u)], 1u)])).c;
    return func_4(vec2<i32>(abs(-24129i), -1i), func_1(~(~(~arg_1.x)), select(-vec2<i32>(arg_0.d, global0[_wgslsmith_index_u32(73042u, 22u)]), ~vec2<i32>(-5652i, -47509i), !vec2<bool>(arg_0.b, true)), func_1(~u_input.a, u_input.c, func_4(~vec2<i32>(var_0.d, u_input.c.x), func_1(u_input.d.x, vec2<i32>(62432i, -23020i), global2.c))).c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global2.c.a), false, -(u_input.c.x << (1u % 32u)), global0[_wgslsmith_index_u32(global2.a.x, 22u)]);
    global0 = array<i32, 22>();
    let var_1 = func_5(func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global2.c.c), u_input.c), func_1(max(min(global2.a.x, global2.a.x), ~u_input.d.x), u_input.c, global3[_wgslsmith_index_u32(u_input.b, 1u)])), u_input.d, func_4(~(_wgslsmith_clamp_vec2_i32(u_input.c, u_input.c, vec2<i32>(-4082i, global2.c.d)) >> (~global2.a.ww % vec2<u32>(32u))), Struct_2(global2.a, var_0.a.x, global2.c)).