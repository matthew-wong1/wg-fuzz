struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: vec4<i32> = vec4<i32>(-6640i, 14105i, 0i, 2147483647i);

var<private> global2: Struct_4;

var<private> global3: Struct_3;

var<private> global4: vec2<f32> = vec2<f32>(1375f, 428f);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    let var_0 = ~vec3<u32>(4630u, 53892u, global0[_wgslsmith_index_u32(36963u, 6u)]);
    global0 = array<u32, 6>();
    var var_1 = global1.x;
    var var_2 = Struct_2(arg_0);
    let var_3 = _wgslsmith_f_op_f32(min(917f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a + global4.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(global3.a, arg_0.a.x), var_2.a.a.x), global2.c.x)), _wgslsmith_f_op_f32(ceil(-1123f)))));
    return Struct_4(false, Struct_3(var_2.a.a.x), !vec2<bool>(all(select(vec3<bool>(global2.a, false, global2.a), vec3<bool>(global2.a, global2.a, false), false)), any(!global2.c)));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = vec2<i32>(max(global1.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global1.x, -1i, 76402i, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 0i, 1i), vec4<i32>(global1.x, global1.x, global1.x, global1.x)))), countOneBits(global1.x >> (1u % 32u)) >> (~(u_input.a ^ 27669u) % 32u)) << ((vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)]), vec3<u32>(global0[_wgslsmith_index_u32(17885u, 6u)], u_input.a, u_input.a)), u_input.a), _wgslsmith_add_u32(~u_input.a, 18532u)) | _wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(min(4294967295u, global0[_wgslsmith_index_u32(52706u, 6u)]), 6u)], ~7035u), ~(vec2<u32>(89527u, 55918u) | vec2<u32>(u_input.a, 33232u)))) % vec2<u32>(32u));
    let var_1 = var_0.x;
    var var_2 = global3.a;
    var var_3 = arg_0.a.a.x;
    let var_4 = -abs(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(6999i, global1.x)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, -35136i), global1.xy)));
    return global2.c;
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = !all(func_3(Struct_2(Struct_1(vec3<f32>(922f, 399f, global3.a)))));
    var var_1 = ~(-global1.yzy ^ (_wgslsmith_div_vec3_i32(~vec3<i32>(59131i, global1.x, 37127i), abs(vec3<i32>(global1.x, global1.x, global1.x))) ^ _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(global1.yzx, vec3<i32>(global1.x, global1.x, -5138i)), global1.wxw)));
    let var_2 = vec4<f32>(-2465f, -1108f, _wgslsmith_f_op_f32(-global2.b.a), arg_0.b.a);
    var var_3 = global1.x;
    global2 = func_1(Struct_1(var_2.xwy));
    return Struct_1(vec3<f32>(global4.x, _wgslsmith_f_op_f32(abs(global2.b.a)), -371f));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_5 {
    let var_0 = Struct_5(func_2(Struct_4(!(-293f != global2.b.a), Struct_3(-1452f), !select(vec2<bool>(false, false), vec2<bool>(true, arg_1.x), global2.c.x))));
    global1 = -_wgslsmith_add_vec4_i32(~vec4<i32>(abs(-55072i), ~global1.x, _wgslsmith_dot_vec2_i32(global1.zz, global1.yy), reverseBits(global1.x)), firstLeadingBit(select(vec4<i32>(global1.x, 14526i, 0i, 34946i), vec4<i32>(49426i, 2147483647i, global1.x, -62930i), true) & ~vec4<i32>(-6434i, 72987i, 48554i, global1.x)));
    return Struct_5(var_0.a);
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: Struct_5) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(select(~(~countOneBits(arg_1)), ~global0[_wgslsmith_index_u32(arg_1, 6u)], all(func_1(arg_3.a).c)), 6u)];
    global3 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-908f, _wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(378f + arg_3.a.a.x))))).b;
    var var_1 = _wgslsmith_f_op_f32(-413f * arg_2);
    global4 = func_2(Struct_4(!((arg_0 << (11623u % 32u)) <= (arg_0 | arg_0)), global2.b, !select(vec2<bool>(true, true), vec2<bool>(global2.a, true), global2.c.x & global2.a))).a.yy;
    return Struct_3(1f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x >> (43480u % 32u), countOneBits(global1.x), _wgslsmith_sub_i32(global1.x, global1.x), _wgslsmith_div_i32(global1.x, 0i)), -vec4<i32>(global1.x, 60714i, global1.x, 1i) >> ((vec4<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], u_input.a) << (vec4<u32>(9933u, u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 6u)]) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = array<u32, 6>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a, 746f)), vec2<f32>(-1164f, -934f), true)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.x, global4.x), vec2<f32>(-233f, -1081f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-436f, global2.b.a))))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-385f - _wgslsmith_f_op_f32(global4.x - -770f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1521f)), _wgslsmith_f_op_f32(-global2.b.a)))))));
    let var_1 = func_5(_wgslsmith_dot_vec2_i32(~(-global1.yy), global1.zz | -(vec2<i32>(4281i, -2147483647i) >> (vec2<u32>(98308u, global0[_wgslsmith_index_u32(56104u, 6u)]) % vec2<u32>(32u)))), 22777u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1005f, -418f))))), func_4(Struct_1(vec3<f32>(431f, _wgslsmith_f_op_f32(233f + -477f), _wgslsmith_f_op_f32(-148f - -352f))), !(!select(vec4<bool>(global2.a, global2.c.x, true, false), vec4<bool>(global2.c.x, true, global2.a, global2.c.x), vec4<bool>(true, false, global2.a, global2.a))), Struct_2(func_2(func_1(Struct_1(vec3<f32>(var_0.x, global4.x, global4.x)))))));
    let var_2 = 9712u;
    let var_3 = Struct_2(func_4(func_2(Struct_4(global2.a, Struct_3(var_0.x), !global2.c)), !vec4<bool>(true, true, func_1(Struct_1(vec3<f32>(-1270f, global4.x, global2.b.a))).c.x, true), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(666f, 2759f, 125f))))).a);
    let var_4 = !(!all(select(vec3<bool>(true, global2.a, false), vec3<bool>(true, global2.c.x, false), global2.c.x)));
    let var_5 = Struct_4(any(vec4<bool>(func_1(var_3.a).c.x & var_4, true, true, global2.a)), func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -10734i >> (global0[_wgslsmith_index_u32(0u, 6u)] % 32u), -8833i, _wgslsmith_mod_i32(5115i, 21467i)), abs(vec4<i32>(8020i, -56191i, -58298i, 58779i))), 0u, 1649f, func_4(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(var_3.a.a))), select(select(vec4<bool>(true, true, global2.a, false), vec4<bool>(true, global2.a, false, true), vec4<bool>(false, global2.a, var_4, false)), vec4<bool>(var_4, true, var_4, false), vec4<bool>(global2.a, true, global2.a, var_4)), Struct_2(var_3.a))), global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(global1.x), 66973i, global1.x, global1.x) & vec4<i32>(~global1.x << (~u_input.a % 32u), countOneBits(-global1.x), reverseBits(1i ^ global1.x), 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_5.b.a, var_5.b.a, 589f, 1845f), vec4<f32>(-167f, -222f, var_5.b.a, global3.a))), vec4<f32>(391f, var_3.a.a.x, global3.a, global3.a)))))), select(vec4<i32>(select(-81775i, global1.x, !var_4), 0i, _wgslsmith_add_i32(firstLeadingBit(-2348i), global1.x), -1i), -vec4<i32>(_wgslsmith_add_i32(-36395i, -40632i), _wgslsmith_mod_i32(global1.x, 0i), global1.x | -2317i, -global1.x), select(!vec4<bool>(true, true, global2.c.x, global2.c.x), vec4<bool>(true, 0u <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], any(vec2<bool>(var_4, true)), var_5.c.x), false)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-258f)) * var_1.a), -302f, _wgslsmith_f_op_f32(step(-730f, _wgslsmith_f_op_f32(func_4(Struct_1(var_3.a.a), vec4<bool>(true, true, var_4, false), var_3).a.a.x - 1122f))), global2.b.a), vec3<u32>(~_wgslsmith_sub_u32(var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, global0[_wgslsmith_index_u32(var_2, 6u)]), vec2<u32>(1u, 86692u))), 4294967295u, _wgslsmith_sub_u32(~1u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 6u)], countOneBits(46419u), 1u))));
}

