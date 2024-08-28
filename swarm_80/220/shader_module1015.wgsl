struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, -19019i);

var<private> global1: array<Struct_1, 6>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(9981u, 10384u, 0u));

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<u32>(78598u, 4294967295u, 28910u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(18419u, 80686u, 4294967295u)), Struct_1(vec3<u32>(9044u, 0u, 0u)), Struct_1(vec3<u32>(40259u, 13715u, 1u)), Struct_1(vec3<u32>(18315u, 20934u, 4294967295u)), Struct_1(vec3<u32>(37570u, 1393u, 43044u)), Struct_1(vec3<u32>(71914u, 1u, 21989u)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(0u, 43431u, 54782u)), Struct_1(vec3<u32>(35534u, 1u, 6743u)), Struct_1(vec3<u32>(0u, 0u, 0u)), Struct_1(vec3<u32>(1u, 49809u, 10684u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 21076u)));

var<private> global4: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_mult_i32(reverseBits(~u_input.a), -2147483647i);
    var var_1 = Struct_1(vec3<u32>(min(u_input.c, max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 42271u, 41015u), vec3<u32>(1u, global2.a.x, 10335u)), ~1u)), ~_wgslsmith_add_u32(u_input.c, u_input.b), ~min(abs(global4.a.x), u_input.c)));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - -404f) - arg_1.x))), arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(arg_1.zx, vec2<f32>(arg_1.x, -573f), vec2<bool>(false, arg_2))))) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1067f, 621f)), _wgslsmith_f_op_vec2_f32(arg_1.xw + arg_1.zy), select(vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_0.x, false), any(vec2<bool>(arg_0.x, true))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + arg_1.ww), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2910f, var_2.x) * arg_1.yw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, var_2.x)))))));
    var var_3 = arg_1.x;
    return all(arg_0.yzy);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = !(!(!vec4<bool>(false, any(vec4<bool>(true, true, false, true)), func_3(vec4<bool>(false, false, true, true), vec4<f32>(-641f, 264f, 412f, -3112f), true, vec3<i32>(-27594i, -2147483647i, -1i)), true)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(183f, -1548f))), _wgslsmith_f_op_f32(trunc(1850f)))), global1[_wgslsmith_index_u32(select(~(~arg_0.a.x), arg_0.a.x, !all(vec4<bool>(var_0.x, false, false, true))), 6u)], _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(-895f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(351f)) + -1793f) - -1092f)), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~global2.a.yx, _wgslsmith_add_vec2_u32(~global4.a.xz, vec2<u32>(19140u, arg_0.a.x))), vec2<u32>(abs(~4294967295u), _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, 5550u), arg_0.a.x & global2.a.x))));
    global3 = array<Struct_1, 14>();
    var var_2 = select(select(!(!select(var_0.xw, var_0.xz, true)), vec2<bool>(true, any(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, true, true)))), (_wgslsmith_f_op_f32(round(var_1.a)) <= _wgslsmith_f_op_f32(var_1.a * var_1.a)) & !(!var_0.x)), var_0.zx, var_0.x);
    var var_3 = u_input.b;
    return Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1.a)))), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -712f)) - 1297f))))), ~(~firstLeadingBit(vec2<u32>(18697u, 21043u)) >> (var_1.d % vec2<u32>(32u))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    global2 = func_2(global1[_wgslsmith_index_u32(0u, 6u)]).b;
    global1 = array<Struct_1, 6>();
    var var_1 = func_2(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.a.x, firstTrailingBit(arg_0)), 14u)]).b;
    var var_2 = func_2(func_2(global1[_wgslsmith_index_u32(abs(~select(var_1.a.x, u_input.c, var_0.x)), 6u)]).b).b;
    return Struct_1(global2.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(10445u, arg_3.a.x, global4.a.x, u_input.b), vec4<u32>(36410u, arg_0.a.x, 69243u, u_input.c) >> (vec4<u32>(1u, global2.a.x, 112756u, 0u) % vec4<u32>(32u))), ~vec4<u32>(4294967295u, 55185u, 1u, global2.a.x)) != 14083u;
    let var_1 = ~vec4<i32>(0i, (_wgslsmith_dot_vec2_i32(global0.yx, global0.yx) << (arg_3.a.x % 32u)) ^ global0.x, abs(abs(u_input.d.x)), countOneBits(reverseBits(-2147483647i)));
    global4 = Struct_1(vec3<u32>(arg_2.d.x, 32030u, 43061u));
    var var_2 = ~(~(~15539u));
    var var_3 = Struct_1(arg_3.a & ~arg_0.a);
    return func_2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.c), 14u)]).b;
}

fn func_1(arg_0: bool) -> u32 {
    global2 = func_5(func_4(266u, ~(~global4.a.x & min(15135u, 0u)), func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~27046u, max(global4.a.x, 53161u)), 6u)])), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(858f, -1875f, -1813f)), vec3<f32>(1000f, -1335f, -2010f), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1020f, -832f) * vec3<f32>(-581f, -250f, 1773f))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(517f, 1185f)), -144f, all(vec3<bool>(true, arg_0, arg_0))))), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(global4.a.x, global4.a.x, 4294967295u), ~global2.a)), _wgslsmith_f_op_f32(max(-776f, _wgslsmith_f_op_f32(f32(-1f) * -614f))), global2.a.yx), Struct_1(max(global2.a, ~vec3<u32>(u_input.c, 1u, 13562u)) >> (abs(_wgslsmith_div_vec3_u32(global4.a, global4.a)) % vec3<u32>(32u))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1008f, 838f, 749f) * vec3<f32>(384f, 1084f, -699f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-824f, 2887f, 1719f) * vec3<f32>(2191f, 542f, 996f)), func_3(vec4<bool>(true, true, false, false), vec4<f32>(483f, 651f, -181f, 1099f), true, vec3<i32>(2147483647i, 0i, global0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(2744f, 1398f, 104f) - vec3<f32>(-121f, -791f, 164f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-514f, -731f, 715f), vec3<f32>(1492f, 1734f, 206f)))))), true)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1180f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(855f, var_0.x, 598f))))));
    var var_1 = vec3<i32>(~(~u_input.a) >> (abs(0u & u_input.c) % 32u), -u_input.a, i32(-1i) * -1i) & (_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x) & vec3<i32>(global0.x, u_input.d.x, global0.x), vec3<i32>(1i, 0i, -2147483647i)) & -select(select(vec3<i32>(-53514i, 1i, global0.x), vec3<i32>(global0.x, -10693i, u_input.d.x), false), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, u_input.a, -28800i), vec3<i32>(global0.x, -11891i, u_input.a)), !arg_0));
    global2 = global3[_wgslsmith_index_u32(firstLeadingBit(~u_input.c), 14u)];
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = global0.x;
    var var_2 = select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(select(var_0, false, var_0), u_input.b < global2.a.x), var_0), !select(!vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), true), false), select(vec2<bool>(var_0, 1u <= select(4294967295u, u_input.c, var_0)), vec2<bool>(!(var_0 & var_0), false), u_input.a == (54803i ^ abs(u_input.d.x))));
    let var_3 = global3[_wgslsmith_index_u32(0u, 14u)];
    let var_4 = _wgslsmith_mod_u32(4294967295u, ~select(_wgslsmith_sub_u32(4294967295u, global2.a.x) ^ _wgslsmith_mult_u32(global4.a.x, global4.a.x), global4.a.x, var_2.x));
    var var_5 = vec2<u32>(~func_1(var_0), ~func_2(func_2(global1[_wgslsmith_index_u32(16910u, 6u)]).b).b.a.x) & ~(~(func_2(Struct_1(global2.a)).b.a.zy >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))));
    var var_6 = func_2(global3[_wgslsmith_index_u32(global4.a.x, 14u)]);
    var var_7 = ~(_wgslsmith_mult_vec4_i32(~vec4<i32>(-11545i, u_input.d.x, global0.x, -2147483647i) >> (abs(vec4<u32>(4294967295u, var_4, 1u, global2.a.x)) % vec4<u32>(32u)), reverseBits(vec4<i32>(1i, 8533i, -5934i, global0.x))) & select(-vec4<i32>(-9771i, global0.x, global0.x, u_input.a) | ~vec4<i32>(10679i, -11153i, global0.x, -7463i), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global0.x, u_input.a, 34930i), vec4<i32>(1i, 2147483647i, global0.x, u_input.a))), false || (var_2.x | var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(var_4), firstTrailingBit(2115u), 27988u), ~_wgslsmith_mod_vec3_u32(var_3.a, vec3<u32>(1u, global2.a.x, 14570u))) >> (~min(~global4.a.x, 1116u) % 32u), var_3.a.x, vec2<u32>(select(_wgslsmith_mult_u32(global2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_3.a.x, var_4, 4294967295u), vec4<u32>(71612u, 1u, 0u, 0u))), ~max(10225u, u_input.c), all(select(vec3<bool>(var_0, true, true), vec3<bool>(true, var_0, var_2.x), var_0))), _wgslsmith_div_u32(max(var_3.a.x, global4.a.x), 100292u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1000f)), var_6.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.a + -1063f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1044f, _wgslsmith_f_op_f32(-var_6.a)))), _wgslsmith_mod_vec2_i32(~firstTrailingBit(var_7.zz), global0.yx));
}

