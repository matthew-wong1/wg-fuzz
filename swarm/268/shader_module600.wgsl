struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_2;

var<private> global2: array<f32, 27>;

var<private> global3: Struct_1;

var<private> global4: u32 = 10612u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    global3 = Struct_1(all(select(!select(global3.b, arg_2.b, vec4<bool>(false, arg_0.x, true, true)), vec4<bool>(global1.a.b.x, false, true, arg_2.d > 23792u), arg_0.x)), global1.a.b, -(~global1.a.c ^ _wgslsmith_sub_vec3_i32(countOneBits(arg_2.c), vec3<i32>(global1.a.c.x, 0i, 2147483647i))), 8190u);
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(53887u, 27u)], _wgslsmith_f_op_f32(811f - global2[_wgslsmith_index_u32(1u, 27u)]), global2[_wgslsmith_index_u32(4294967295u, 27u)], 1322f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(489f, 1000f, 1853f, 1000f) + vec4<f32>(global2[_wgslsmith_index_u32(global3.d, 27u)], global2[_wgslsmith_index_u32(arg_1, 27u)], global2[_wgslsmith_index_u32(global3.d, 27u)], 421f)))))));
    global0 = _wgslsmith_mod_i32(global3.c.x, _wgslsmith_add_i32(-1i, 1i));
    global2 = array<f32, 27>();
    let var_1 = global3.c.x;
    return vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(reverseBits(2147483647i), ~_wgslsmith_mult_i32(u_input.c.x, global1.a.c.x)), countOneBits(i32(-1i) * -1i)), ~1i, u_input.c.x ^ (min(~2147483647i, u_input.b.x) ^ max(-1i, global3.c.x)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = global1.a;
    let var_1 = _wgslsmith_sub_vec3_i32(~global3.c, func_3(var_0.b.wzx, 0u, Struct_1(arg_0.x != global1.a.c.x, global3.b, vec3<i32>(arg_0.x, -27013i, u_input.c.x) << ((vec3<u32>(var_0.d, 42372u, 44997u) & vec3<u32>(28321u, 4294967295u, 0u)) % vec3<u32>(32u)), var_0.d)));
    global4 = global3.d;
    let var_2 = var_0.b.x;
    let var_3 = global2[_wgslsmith_index_u32(~select(global1.a.d, 20401u | global3.d, false), 27u)];
    return global1.a;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0.a.b.wy;
    global3 = arg_0.a;
    var var_1 = func_2(_wgslsmith_sub_vec4_i32(firstLeadingBit(u_input.b), vec4<i32>(1i ^ (global3.c.x >> (16295u % 32u)), arg_2.c.x, 16626i << (arg_0.a.d % 32u), firstLeadingBit(_wgslsmith_dot_vec2_i32(global3.c.xz, vec2<i32>(10183i, 0i))))));
    let var_2 = arg_0;
    global3 = arg_2;
    return func_2(-countOneBits(vec4<i32>(var_2.a.c.x & var_1.c.x, _wgslsmith_div_i32(u_input.a, u_input.b.x), 1i, abs(43066i))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_2 {
    global2 = array<f32, 27>();
    var var_0 = reverseBits(32292i) >> (~_wgslsmith_mod_u32(0u, reverseBits(abs(global1.a.d))) % 32u);
    let var_1 = Struct_1(any(func_4(arg_0, func_4(arg_0, 15254u, func_4(Struct_2(Struct_1(false, vec4<bool>(arg_1, false, arg_3.a.b.x, global1.a.a), vec3<i32>(27700i, arg_0.a.c.x, arg_3.a.c.x), 73684u)), global1.a.d, global1.a)).d, Struct_1(func_2(u_input.b).a, vec4<bool>(false, false, arg_3.a.a, global1.a.a), func_3(vec3<bool>(false, arg_3.a.a, true), arg_3.a.d, Struct_1(arg_1, global1.a.b, vec3<i32>(u_input.c.x, arg_0.a.c.x, u_input.c.x), arg_3.a.d)), ~arg_3.a.d)).b), arg_0.a.b, vec3<i32>(-1i) * -vec3<i32>(arg_0.a.c.x >> (arg_0.a.d % 32u), arg_0.a.c.x << (4294967295u % 32u), 28419i), global3.d);
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, global2[_wgslsmith_index_u32(arg_3.a.d, 27u)])))), -1026f), vec2<f32>(global2[_wgslsmith_index_u32(min(~global3.d >> ((var_1.d ^ global1.a.d) % 32u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.d, arg_3.a.d), vec2<u32>(1u, 85060u)))), 27u)], global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(select(4294967295u, 0u, arg_3.a.b.x), countOneBits(23261u)), 27u)]));
    var var_3 = 19672u;
    return Struct_2(func_2(~(~(~vec4<i32>(-2147483647i, -30363i, -1i, u_input.a)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = func_5(Struct_2(Struct_1(select(true, global1.a.a, arg_3), global1.a.b, abs(global3.c), 1u)), _wgslsmith_div_i32(~arg_1.x, ~min(global1.a.c.x, 2147483647i)) >= ~(~(-u_input.b.x)), global3.b.yxw, Struct_2(func_4(Struct_2(func_2(vec4<i32>(23509i, -2147483647i, -27120i, 20648i))), 1u, Struct_1(true, arg_0.b, arg_1.xxw, _wgslsmith_dot_vec3_u32(vec3<u32>(41833u, global3.d, 1u), vec3<u32>(1u, 40293u, arg_0.d))))));
    var var_1 = global1.a;
    let var_2 = _wgslsmith_add_i32(-15567i, func_3(func_4(func_5(Struct_2(Struct_1(true, global3.b, vec3<i32>(17397i, -1i, var_0.a.c.x), 53249u)), true, var_1.b.wwy, func_5(Struct_2(var_0.a), arg_0.a, arg_0.b.zzy, Struct_2(var_0.a))), ~(~51855u), func_4(func_5(Struct_2(global1.a), var_0.a.b.x, vec3<bool>(true, false, false), Struct_2(var_0.a)), _wgslsmith_div_u32(37224u, 4294967295u), func_5(Struct_2(arg_0), global1.a.b.x, vec3<bool>(false, var_0.a.a, true), Struct_2(arg_0)).a)).b.yyw, func_5(func_5(func_5(Struct_2(Struct_1(arg_3, var_1.b, vec3<i32>(-21953i, arg_1.x, -2147483647i), 54736u)), true, global1.a.b.wyw, Struct_2(Struct_1(true, vec4<bool>(false, true, false, var_1.a), vec3<i32>(-27397i, 0i, u_input.a), arg_2))), all(global3.b.zz), global1.a.b.yzz, func_5(Struct_2(var_0.a), var_0.a.b.x, vec3<bool>(global1.a.a, true, arg_0.b.x), Struct_2(var_0.a))), !global3.a, func_2(~vec4<i32>(-2147483647i, u_input.b.x, arg_0.c.x, -60411i)).b.xyy, func_5(func_5(Struct_2(Struct_1(false, vec4<bool>(false, arg_0.b.x, global3.b.x, arg_0.b.x), u_input.b.xzz, 4294967295u)), var_1.b.x, vec3<bool>(global3.a, arg_0.a, var_1.a), Struct_2(var_0.a)), false, var_0.a.b.xzz, Struct_2(Struct_1(true, vec4<bool>(global1.a.a, true, arg_3, false), var_0.a.c, 4294967295u)))).a.d, Struct_1(!var_1.a, vec4<bool>(!var_0.a.b.x, var_0.a.a, false, any(global1.a.b)), ~u_input.c, ~_wgslsmith_add_u32(arg_0.d, global1.a.d))).x);
    let var_3 = ~15409u >> (global1.a.d % 32u);
    var_1 = func_4(Struct_2(Struct_1(true, select(vec4<bool>(true, true, false, true), vec4<bool>(false, global3.a, false, var_1.b.x), false), arg_0.c ^ ~vec3<i32>(arg_0.c.x, arg_0.c.x, 3979i), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, var_3), vec2<u32>(7431u, var_1.d)))), ~global1.a.d >> (63234u % 32u), func_4(Struct_2(Struct_1(true, select(vec4<bool>(global1.a.a, global1.a.a, false, var_1.a), vec4<bool>(global3.a, arg_0.a, global1.a.a, global3.a), global3.b.x), arg_1.zwx, 62777u)), arg_0.d, Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.a.d, 27u)] + global2[_wgslsmith_index_u32(var_0.a.d, 27u)]) >= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a.d, 27u)]), func_4(Struct_2(Struct_1(false, global3.b, vec3<i32>(-1i, u_input.a, var_0.a.c.x), 65625u)), 1u, Struct_1(false, vec4<bool>(true, true, var_0.a.b.x, var_0.a.a), vec3<i32>(-1i, -1974i, u_input.b.x), 0u)).b, vec3<i32>(_wgslsmith_mod_i32(var_2, var_1.c.x), ~var_2, 25579i), var_3)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstLeadingBit(~(~global3.d)), 27u)] - _wgslsmith_f_op_f32(f32(-1f) * -1637f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(57150u, 27u)]);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1.a, _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(u_input.c.x, u_input.c.x, -41493i, u_input.c.x)), ~global3.d, all(global3.b.yw) || global1.a.a)) + -214f));
    global2 = array<f32, 27>();
    let var_2 = Struct_2(global1.a);
    global3 = Struct_1(true, global3.b, vec3<i32>(1616i, func_2(-u_input.b).c.x, 2147483647i), (1u | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, global3.d), vec3<u32>(var_2.a.d, 0u, 0u)))) ^ countOneBits(37635u));
    var var_3 = var_2;
    global1 = func_5(func_5(var_2, !global1.a.b.x, select(global1.a.b.yyz, func_5(func_5(var_2, false, vec3<bool>(global3.a, false, false), Struct_2(global1.a)), !var_3.a.b.x, var_3.a.b.zzx, Struct_2(var_2.a)).a.b.xzw, vec3<bool>(var_2.a.d > 4294967295u, false, false)), func_5(func_5(var_2, var_3.a.b.x, func_5(Struct_2(global1.a), var_2.a.a, vec3<bool>(global3.a, var_2.a.a, true), Struct_2(global1.a)).a.b.xxy, Struct_2(global1.a)), !func_2(vec4<i32>(-1i, global1.a.c.x, 34321i, var_3.a.c.x)).a, var_2.a.b.wyy, var_2)), false, !(!var_2.a.b.yxw), func_5(func_5(Struct_2(func_4(var_2, var_3.a.d, var_3.a)), !global1.a.a, vec3<bool>(true, global1.a.b.x, global1.a.b.x || false), var_2), global1.a.b.x, !func_5(var_2, any(vec2<bool>(var_3.a.a, true)), global3.b.www, var_2).a.b.yzw, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(abs(u_input.b.zzy), vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, global3.c.x), 44006i, ~1i >> (global3.d % 32u))), _wgslsmith_sub_u32(~(~1u << (select(var_2.a.d, var_3.a.d, false) % 32u)), firstTrailingBit(min(1u, 1u)) & _wgslsmith_mod_u32(1u, ~1u)), _wgslsmith_dot_vec3_i32(var_2.a.c, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.c.x), ~u_input.c) | vec3<i32>(~(-2147483647i), ~u_input.a, _wgslsmith_dot_vec3_i32(var_2.a.c, vec3<i32>(13638i, -1i, 0i)))), 1732f, abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.a.d, global3.d) << (vec2<u32>(15276u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(var_2.a.d, 0u) | vec2<u32>(42450u, 0u), min(vec2<u32>(global3.d, 37671u), vec2<u32>(global1.a.d, var_2.a.d)))));
}

