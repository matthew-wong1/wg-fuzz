struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(840f, Struct_1(vec2<bool>(false, false), vec3<i32>(2147483647i, -1i, i32(-2147483648)), false, vec3<bool>(false, true, true))), Struct_2(-597f, Struct_1(vec2<bool>(true, true), vec3<i32>(2147483647i, -1i, 1i), false, vec3<bool>(false, false, false))), Struct_2(1000f, Struct_1(vec2<bool>(true, true), vec3<i32>(0i, -18732i, -10399i), false, vec3<bool>(false, false, true))), Struct_2(-410f, Struct_1(vec2<bool>(false, false), vec3<i32>(i32(-2147483648), -27294i, -63383i), false, vec3<bool>(true, false, true))), Struct_2(-1409f, Struct_1(vec2<bool>(false, true), vec3<i32>(1i, -14057i, -935i), false, vec3<bool>(true, true, true))), Struct_2(800f, Struct_1(vec2<bool>(true, false), vec3<i32>(1i, 2147483647i, -36584i), true, vec3<bool>(true, false, false))), Struct_2(-112f, Struct_1(vec2<bool>(true, true), vec3<i32>(1i, i32(-2147483648), 19187i), false, vec3<bool>(true, false, true))), Struct_2(303f, Struct_1(vec2<bool>(true, true), vec3<i32>(737i, -1i, 47648i), false, vec3<bool>(false, false, false))), Struct_2(-404f, Struct_1(vec2<bool>(false, true), vec3<i32>(-17078i, -23173i, 5213i), false, vec3<bool>(true, true, true))), Struct_2(-457f, Struct_1(vec2<bool>(true, false), vec3<i32>(0i, 10761i, 44272i), false, vec3<bool>(true, false, true))), Struct_2(349f, Struct_1(vec2<bool>(true, false), vec3<i32>(-43743i, i32(-2147483648), -44127i), false, vec3<bool>(false, true, false))), Struct_2(270f, Struct_1(vec2<bool>(false, false), vec3<i32>(38185i, 0i, -1i), true, vec3<bool>(false, false, true))), Struct_2(835f, Struct_1(vec2<bool>(false, true), vec3<i32>(-26493i, 6425i, -1i), false, vec3<bool>(true, false, true))), Struct_2(-1132f, Struct_1(vec2<bool>(false, true), vec3<i32>(2147483647i, -1i, 0i), false, vec3<bool>(false, false, false))), Struct_2(-902f, Struct_1(vec2<bool>(true, true), vec3<i32>(i32(-2147483648), 10247i, i32(-2147483648)), true, vec3<bool>(false, false, false))), Struct_2(-296f, Struct_1(vec2<bool>(true, false), vec3<i32>(0i, -1i, 1i), false, vec3<bool>(true, true, true))), Struct_2(-1000f, Struct_1(vec2<bool>(true, true), vec3<i32>(16693i, 52997i, 1i), false, vec3<bool>(false, true, false))), Struct_2(-654f, Struct_1(vec2<bool>(true, true), vec3<i32>(-1i, 0i, 0i), false, vec3<bool>(true, false, false))), Struct_2(-441f, Struct_1(vec2<bool>(true, false), vec3<i32>(-1i, -1i, 0i), true, vec3<bool>(false, true, false))), Struct_2(-393f, Struct_1(vec2<bool>(false, false), vec3<i32>(0i, 2955i, 8430i), true, vec3<bool>(true, false, true))), Struct_2(1315f, Struct_1(vec2<bool>(false, true), vec3<i32>(32738i, i32(-2147483648), i32(-2147483648)), true, vec3<bool>(true, false, false))), Struct_2(-1158f, Struct_1(vec2<bool>(false, true), vec3<i32>(-1i, 6918i, 1216i), true, vec3<bool>(true, true, true))), Struct_2(-1459f, Struct_1(vec2<bool>(true, true), vec3<i32>(1i, i32(-2147483648), -7434i), true, vec3<bool>(false, true, false))), Struct_2(-1543f, Struct_1(vec2<bool>(false, false), vec3<i32>(6021i, -47124i, -29072i), true, vec3<bool>(false, true, false))), Struct_2(-154f, Struct_1(vec2<bool>(true, false), vec3<i32>(0i, -1i, -18492i), true, vec3<bool>(false, false, true))), Struct_2(1702f, Struct_1(vec2<bool>(false, true), vec3<i32>(0i, 2147483647i, i32(-2147483648)), false, vec3<bool>(false, true, true))), Struct_2(-299f, Struct_1(vec2<bool>(true, false), vec3<i32>(0i, 0i, i32(-2147483648)), false, vec3<bool>(false, true, true))), Struct_2(-629f, Struct_1(vec2<bool>(true, false), vec3<i32>(0i, 2147483647i, 2147483647i), false, vec3<bool>(true, false, true))), Struct_2(-172f, Struct_1(vec2<bool>(true, true), vec3<i32>(-17729i, -36032i, -26004i), false, vec3<bool>(true, true, false))));

var<private> global2: array<Struct_1, 16>;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    global1 = array<Struct_2, 29>();
    global3 = 4294967295u;
    let var_0 = u_input.b;
    global2 = array<Struct_1, 16>();
    let var_1 = 46135i;
    return arg_0.x;
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    global0 = global2[_wgslsmith_index_u32(select(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(18609u, 50356u, 0u), ~vec3<u32>(1u, 0u, 44433u))), ~1u, ~abs(~0u) <= _wgslsmith_dot_vec2_u32(select(vec2<u32>(84996u, 1u), vec2<u32>(4294967295u, 24412u), all(vec4<bool>(true, arg_0.b, false, global0.a.x))), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 31336u), vec2<u32>(1u, 66242u)))), 16u)];
    var var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(global0.b, abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c.x, -12897i, u_input.b), _wgslsmith_div_vec3_i32(global0.b, arg_0.c)))), ~vec3<i32>(i32(-1i) * -2147483647i, 2147483647i, ~arg_0.a.b.b.x));
    var var_1 = _wgslsmith_f_op_f32(trunc(arg_0.a.a));
    var var_2 = vec2<bool>(global0.c, true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.a, 3076f, false)))))));
    return vec3<bool>(any(vec4<bool>(countOneBits(4294967295u) == func_1(vec2<u32>(1u, 4294967295u)), false, global0.a.x, arg_0.d)), arg_0.a.b.c, global0.a.x);
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = array<Struct_2, 29>();
    global3 = 50208u;
    var var_0 = select(global0.d.zz, vec2<bool>(true, select(true, false, !(!arg_0))), select(true, false, reverseBits(_wgslsmith_add_i32(0i, global0.b.x)) < u_input.b));
    global1 = array<Struct_2, 29>();
    var var_1 = vec3<bool>(false, !select(true, true, true), !arg_0);
    return Struct_1(!select(!select(vec2<bool>(true, false), vec2<bool>(true, false), var_1.zx), select(var_1.xz, select(global0.d.yz, vec2<bool>(true, arg_0), var_1.zy), global0.a), var_1.yz), vec3<i32>(global0.b.x, 0i, 0i), arg_0, vec3<bool>(all(!vec2<bool>(var_0.x, var_0.x)) || any(func_3(Struct_3(global1[_wgslsmith_index_u32(76333u, 29u)], true, vec3<i32>(global0.b.x, u_input.c.x, -2147483647i), var_0.x, global2[_wgslsmith_index_u32(69972u, 16u)]))), false, !arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_mult_u32(~1u, countOneBits(abs(countOneBits(firstTrailingBit(11062u)))));
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~(~20856u)), 29u)], global0.a.x, -firstLeadingBit(~u_input.a), ~1u == func_1(vec2<u32>(~21342u, ~1u)), func_2(true));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(~0u, ~1u) << (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 69644u, 1u), vec3<u32>(11337u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)) % 32u), ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u))), all(vec2<bool>(true, global0.c))), 29u)], !func_2(var_0.b).c, min(var_0.e.b, min(reverseBits(vec3<i32>(var_0.a.b.b.x, var_0.c.x, var_0.c.x)) | global0.b, -_wgslsmith_add_vec3_i32(global0.b, vec3<i32>(var_0.e.b.x, global0.b.x, 0i)))), any(global0.d) & var_0.b, func_2(true));
    let var_2 = var_0.a.a;
    let var_3 = ~vec2<u32>(reverseBits(1u), 1u);
    global0 = func_2(all(select(select(!vec4<bool>(var_1.e.c, var_0.a.b.c, var_0.e.c, var_0.d), vec4<bool>(global0.d.x, true, global0.a.x, global0.a.x), true), !select(vec4<bool>(var_1.a.b.c, true, var_1.d, global0.d.x), vec4<bool>(var_1.e.a.x, true, var_1.b, false), vec4<bool>(true, var_0.e.c, var_1.d, var_0.b)), vec4<bool>(global0.a.x, true, false, true & global0.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-var_0.a.b.b.zx, func_2(-1681i > global0.b.x).b.zz), vec2<i32>(2147483647i, u_input.c.x)), abs(func_2(true).b.x));
}

