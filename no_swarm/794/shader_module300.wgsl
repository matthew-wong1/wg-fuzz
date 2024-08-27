struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<u32>(0u, 21995u, 87355u)), Struct_1(vec3<u32>(4798u, 10842u, 0u)), Struct_1(vec3<u32>(1u, 26558u, 46470u)), Struct_1(vec3<u32>(18271u, 1u, 1u)), Struct_1(vec3<u32>(4294967295u, 32609u, 31280u)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u)));

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(1118f, 888f, 806f, 302f), vec4<f32>(739f, 1301f, -1397f, -158f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(932f, 1830f))), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x))), arg_0.b.x);
    let var_1 = ~vec2<i32>(firstLeadingBit(2415i), -36215i);
    let var_2 = global1[_wgslsmith_index_u32(0u, 6u)];
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -705f) + arg_0.b.x);
    global1 = array<Struct_1, 6>();
    return arg_0.a & var_2.a;
}

fn func_2() -> Struct_3 {
    global0 = array<u32, 25>();
    let var_0 = (vec3<u32>(~(~global0[_wgslsmith_index_u32(47718u, 25u)]), u_input.a, countOneBits(0u)) ^ ~(~func_3(Struct_2(vec3<u32>(u_input.a, 40209u, 13477u), vec4<f32>(1052f, -295f, -862f, -441f), vec4<bool>(true, true, true, true)), vec3<i32>(-5882i, 2147483647i, 4775i), vec3<u32>(u_input.a, u_input.a, 4294967295u)))) << (reverseBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 34672u), ~vec3<u32>(12591u, global0[_wgslsmith_index_u32(u_input.a, 25u)], u_input.a))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u & var_0.x, ~u_input.a, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 25u)], 1u, var_0.x), vec4<u32>(48462u, var_0.x, 0u, 1u))), _wgslsmith_add_u32(1u, ~65371u) >> (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 64871u, 99266u), vec3<u32>(1u, 4294967295u, 1u)), 25u)] % 32u)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(var_0.x, 25u)], var_0.x, 1u, global0[_wgslsmith_index_u32(var_0.x, 25u)]) << ((vec4<u32>(u_input.a, 1u, u_input.a, 32093u) ^ vec4<u32>(72988u, 44772u, 1u, var_0.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(var_0.x, var_0.x, u_input.a, 42464u)), ~vec4<u32>(18941u, 0u, var_0.x, 1u))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(8517u, var_0.x), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)], 19471u)), ~var_0.zz), 21179u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~u_input.a, 25u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(47835u, 25u)], 40360u, global0[_wgslsmith_index_u32(89854u, 25u)]), var_0)), 4294967295u)));
    global3 = array<vec4<f32>, 2>();
    var var_2 = countOneBits(~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 0i, 3357i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-25138i, u_input.b, 16773i, -14096i))), select(max(vec4<i32>(2147483647i, -233i, u_input.b, -1i), vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, 15236i, u_input.b), vec4<i32>(1i, u_input.b, 2147483647i, u_input.b)), all(vec3<bool>(false, true, true)))));
    return Struct_3(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), !all(vec3<bool>(true, true, false))), vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), u_input.b, all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))) || all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<u32> {
    var var_0 = func_2();
    let var_1 = ~abs(vec2<i32>(1i, _wgslsmith_clamp_i32(5967i, 2651i, reverseBits(-16537i))));
    var var_2 = var_1;
    var_2 = -var_1;
    let var_3 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>((-16756i ^ u_input.b) << (1u % 32u), var_2.x), max(var_1, var_1)), max(var_1, var_1));
    return vec4<u32>(~u_input.a | 0u, firstLeadingBit(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(77828u, 1u), vec2<u32>(1u, global0[_wgslsmith_index_u32(19088u, 25u)]), var_0.c), firstLeadingBit(arg_0.a.yy) ^ _wgslsmith_mult_vec2_u32(arg_0.a.yy, vec2<u32>(arg_0.a.x, 7281u)))), firstTrailingBit(~(38351u ^ _wgslsmith_add_u32(u_input.a, arg_0.a.x))), ~(204u << (arg_0.a.x % 32u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = firstLeadingBit(_wgslsmith_sub_vec2_u32(arg_2.a.zx, ~arg_1.a.xy & (vec2<u32>(0u, 1u) << (arg_2.a.yy % vec2<u32>(32u)))) & _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(17360u, 25u)]), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], arg_1.a.x)), vec2<u32>(arg_2.a.x << (arg_0 % 32u), 4294967295u)));
    global0 = array<u32, 25>();
    var var_1 = global3[_wgslsmith_index_u32(~(~(~_wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.x, global0[_wgslsmith_index_u32(arg_2.a.x, 25u)]), _wgslsmith_mod_u32(arg_2.a.x, global0[_wgslsmith_index_u32(96236u, 25u)])))), 2u)];
    let var_2 = u_input.b;
    global0 = array<u32, 25>();
    return select(vec2<bool>(arg_2.c.x | (!arg_2.c.x || true), select(!arg_2.c.x, arg_2.c.x, true)), vec2<bool>(!(_wgslsmith_clamp_u32(1u, 4294967295u, 16776u) < (4294967295u << (0u % 32u))), arg_2.c.x), !any(!arg_2.c.xyx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = Struct_3(vec2<bool>(var_0, var_0), u_input.b, var_0);
    let var_2 = var_1;
    var var_3 = select(select(vec2<bool>(var_1.a.x, true), func_4(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 25u)], 1u, 73672u, 0u)), func_1(Struct_1(vec3<u32>(u_input.a, 1u, 1u)), vec2<f32>(-966f, -2049f))), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], 6u)], Struct_2(abs(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 25u)], 3945u)), _wgslsmith_f_op_vec4_f32(sign(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 25u)], 2u)])), vec4<bool>(true, false, var_1.c, var_2.a.x)), _wgslsmith_mult_vec2_i32(max(vec2<i32>(0i, -14873i), vec2<i32>(-2147483647i, var_1.b)), vec2<i32>(var_2.b, var_1.b))), func_4(global0[_wgslsmith_index_u32(reverseBits(u_input.a), 25u)], Struct_1(firstTrailingBit(vec3<u32>(4294967295u, 0u, 0u))), Struct_2(vec3<u32>(global0[_wgslsmith_index_u32(19872u, 25u)], u_input.a, global0[_wgslsmith_index_u32(u_input.a, 25u)]) << (vec3<u32>(0u, 0u, 7657u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-834f, 1027f, 948f, 1422f)), vec4<bool>(var_2.a.x, true, var_2.a.x, var_0)), abs(vec2<i32>(var_1.b, -88675i)))), vec2<bool>(var_2.c, true), (any(vec3<bool>(true, true, true)) || any(!vec4<bool>(var_2.a.x, var_1.c, true, false))) & any(vec2<bool>(21659i <= var_2.b, var_2.c)));
    let var_4 = Struct_1(_wgslsmith_mult_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(26531u, 25u)]))), ~abs(~vec3<u32>(4294967295u, 37828u, u_input.a))));
    var var_5 = vec2<i32>(countOneBits(~reverseBits(var_2.b) >> (firstTrailingBit(~4836u) % 32u)), _wgslsmith_mult_i32(select(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -16656i, u_input.b, var_1.b), vec4<i32>(1i, -33834i, -1i, u_input.b)), _wgslsmith_mult_i32(u_input.b, -83002i), select(true, any(vec3<bool>(false, var_1.a.x, var_3.x)), true)), var_2.b));
    var var_6 = vec3<bool>(any(select(!vec3<bool>(false, false, var_3.x), !select(vec3<bool>(true, var_0, var_2.c), vec3<bool>(var_1.a.x, var_2.c, var_1.a.x), vec3<bool>(var_1.c, false, false)), func_4(~u_input.a, var_4, Struct_2(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4485u, 25u)], 25u)], 1u, global0[_wgslsmith_index_u32(23902u, 25u)]), global3[_wgslsmith_index_u32(45747u, 2u)], vec4<bool>(var_0, true, var_0, false)), -vec2<i32>(var_2.b, var_1.b)).x)), false, true);
    var var_7 = Struct_2(countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(~var_4.a, ~var_4.a), var_4.a.x, var_4.a.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-341f, _wgslsmith_f_op_f32(-525f + 1126f), _wgslsmith_f_op_f32(min(1000f, -872f)), -1024f)), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(var_4.a, vec3<u32>(u_input.a, var_4.a.x, u_input.a)) ^ abs(var_4.a.x), 2u)])), select(vec4<bool>(var_0, global0[_wgslsmith_index_u32(26324u, 25u)] >= 1u, true, var_6.x), select(select(!vec4<bool>(var_0, var_0, false, var_2.c), !vec4<bool>(var_2.a.x, var_6.x, true, false), select(vec4<bool>(true, var_1.a.x, var_1.a.x, var_6.x), vec4<bool>(var_2.a.x, var_0, var_3.x, true), vec4<bool>(var_3.x, var_6.x, var_3.x, true))), select(!vec4<bool>(true, true, false, var_0), vec4<bool>(var_6.x, var_2.a.x, true, true), var_1.c), select(select(vec4<bool>(var_3.x, true, true, var_1.c), vec4<bool>(false, var_3.x, true, var_6.x), vec4<bool>(var_3.x, var_1.a.x, false, false)), vec4<bool>(false, var_1.a.x, true, false), var_2.a.x || var_3.x)), false));
    let var_8 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, -1835f, var_5.x, var_4.a.x, var_7.b.x);
}

