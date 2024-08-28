struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true));

var<private> global1: vec4<i32>;

var<private> global2: array<u32, 9> = array<u32, 9>(1u, 4294967295u, 31640u, 4294967295u, 10845u, 4294967295u, 128491u, 1u, 5872u);

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global4: f32 = 1019f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> i32 {
    return 1i;
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3) -> f32 {
    global1 = vec4<i32>(min(1i, -u_input.e), i32(-1i) * -u_input.b.x, 2147483647i, abs(-53381i) ^ global1.x) & (~(-vec4<i32>(arg_2.c.c.x, -1i, global1.x, global1.x) & vec4<i32>(0i, -38344i, -14687i, arg_2.c.c.x)) & ~vec4<i32>(countOneBits(arg_2.c.a), max(0i, global1.x), 11943i, countOneBits(1i)));
    var var_0 = global1.x;
    var var_1 = Struct_1(2147483647i, vec4<i32>(u_input.e, -_wgslsmith_dot_vec3_i32(u_input.b.yzz, ~vec3<i32>(global1.x, 0i, arg_2.c.c.x)), -firstLeadingBit(_wgslsmith_clamp_i32(u_input.e, -1i, arg_2.a.c.x)), firstLeadingBit((i32(-1i) * -2147483647i) & global1.x)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.xwz, max(-vec3<i32>(arg_2.e.c.x, global1.x, 1952i), -u_input.b.wyz)), arg_2.c.b.yxw));
    let var_2 = Struct_3(arg_2.e, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.d.x, arg_2.d.x, arg_2.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.b.x, 365f, -790f))))), 449f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x * 112f) * _wgslsmith_f_op_f32(-968f - arg_2.b.x)))), Struct_1(reverseBits(-2147483647i), vec4<i32>(var_1.b.x, 34185i, global1.x, 2147483647i), ~arg_2.a.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.b.x, arg_2.d.x))))) + arg_2.b.xz), arg_2.e);
    var var_3 = abs(countOneBits(reverseBits(arg_2.a.c)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-287f, var_2.d.x) + -1182f);
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(1i), vec4<i32>(~global1.x << (_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 9u)], 9u)], 9u)], global2[_wgslsmith_index_u32(27012u, 9u)], 0u) % 32u), _wgslsmith_div_i32(-global1.x, func_2()), ~global1.x, global1.x), reverseBits(vec3<i32>(10960i, global1.x, ~arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(1048f + _wgslsmith_f_op_f32(func_3(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)], 50718u, global2[_wgslsmith_index_u32(18215u, 9u)], 1u), global3.x, Struct_3(Struct_1(arg_0, u_input.b, global1.xxw), vec3<f32>(911f, 719f, 1593f), Struct_1(-12080i, vec4<i32>(global1.x, 0i, -1i, u_input.b.x), u_input.b.zwz), vec2<f32>(329f, 2927f), Struct_1(u_input.e, u_input.b, vec3<i32>(u_input.e, 36688i, global1.x))))))) * _wgslsmith_f_op_f32(274f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-308f)) * _wgslsmith_f_op_f32(sign(1356f))))), Struct_1(55410i, u_input.b, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(0i, -1i, u_input.e)), u_input.b.zwy, countOneBits(vec3<i32>(-2147483647i, -10306i, -57946i))), -_wgslsmith_mult_vec3_i32(global1.zxz, vec3<i32>(global1.x, global1.x, -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-31234i, arg_0, -28548i), abs(global1.zyx)))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(arg_0, firstLeadingBit(arg_0)), u_input.e, -select(0i, global1.x, global3.x)), (u_input.b.zzw >> ((u_input.d ^ u_input.d) % vec3<u32>(32u))) & vec3<i32>(-22171i >> (0u % 32u), i32(-1i) * -7374i, 50808i)));
    global4 = _wgslsmith_f_op_f32(abs(var_0.b));
    let var_1 = var_0;
    var var_2 = all(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(countOneBits(u_input.d.zz & u_input.a), vec2<u32>(firstTrailingBit(4294967295u), ~global2[_wgslsmith_index_u32(u_input.a.x, 9u)])), global2[_wgslsmith_index_u32(1u, 9u)], ~_wgslsmith_mult_u32(u_input.d.x, 1u)), 10u)]);
    global4 = 2059f;
    return Struct_1(1680i, ~firstTrailingBit(vec4<i32>(var_1.a.b.x, _wgslsmith_mult_i32(u_input.b.x, -2147483647i), ~var_1.d.x, 0i)), ~(-u_input.b.wzy));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: f32) -> vec4<i32> {
    global1 = ~arg_1.c.b;
    global0 = array<vec4<bool>, 10>();
    return ~select(-(min(arg_1.b.b, vec4<i32>(arg_1.c.c.x, arg_0.d.x, global1.x, 12214i)) << (~vec4<u32>(67680u, 57522u, 4294967295u, 13234u) % vec4<u32>(32u))), abs(vec4<i32>(28651i, 10828i, select(2147483647i, u_input.e, true), -arg_1.c.b.x)), vec4<bool>(all(vec4<bool>(global3.x, global3.x, false, global3.x)), _wgslsmith_add_i32(50936i, arg_1.c.c.x) > (i32(-1i) * -2147483647i), true, false));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec4<i32>, arg_3: bool) -> Struct_3 {
    global3 = global0[_wgslsmith_index_u32((u_input.a.x | ~(~arg_0)) ^ ~arg_0, 10u)];
    let var_0 = global3.zww;
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-881f, _wgslsmith_f_op_f32(-1114f - _wgslsmith_f_op_f32(f32(-1f) * -1357f)))));
    return Struct_3(func_1(~max(1i, 21392i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(499f, -962f, -1142f))))), Struct_1(global1.x, u_input.b, reverseBits(_wgslsmith_add_vec3_i32(max(global1.zwx, arg_2.xxy), vec3<i32>(arg_1, arg_1, arg_1) & vec3<i32>(arg_1, global1.x, arg_1)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1240f, 1084f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1632f, -182f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1557f, -1372f) + vec2<f32>(432f, -940f))))), Struct_1(0i, ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, arg_2.x, 1i, -25075i), u_input.b), global1.zyx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.a.x, global1.x, func_4(Struct_2(func_1(~global1.x), 796f, func_1(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), vec3<i32>(~u_input.e, -51551i ^ global1.x, ~(-10496i))), Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-250f, -322f) - vec2<f32>(2093f, 482f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(166f, 123f)))), Struct_1(1i ^ u_input.e, abs(vec4<i32>(-1i, 1i, -26034i, -2147483647i)), vec3<i32>(u_input.b.x, u_input.b.x, global1.x)), func_1(_wgslsmith_sub_i32(global1.x, 1i))), _wgslsmith_mod_vec4_i32(~u_input.b << (_wgslsmith_clamp_vec4_u32(vec4<u32>(68197u, 4294967295u, global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<u32>(u_input.d.x, 63051u, u_input.a.x, 42476u), vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 9u)], 9u)], u_input.c, 1u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(-u_input.b, select(u_input.b, vec4<i32>(35946i, -22158i, 1i, 1i), true))), -369f), global3.x);
    global3 = !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.zz, min(~vec2<u32>(u_input.a.x, u_input.c), ~max(vec2<u32>(0u, u_input.d.x), u_input.a))), 10u)];
    global1 = -abs(func_1(-1i).b ^ var_0.e.b);
    let var_1 = Struct_5(vec3<bool>(global3.x && !any(vec4<bool>(false, false, true, false)), true, true));
    var var_2 = ~_wgslsmith_mod_u32(u_input.a.x, 1u);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-func_5(84790u, global1.x, vec4<i32>(1i, _wgslsmith_add_i32(14807i, -1i), 0i, var_0.a.c.x), false).d.x), 2145f);
    let var_4 = select(vec2<bool>(false, global3.x), !global3.xw, select(var_1.a.xz, !(!select(vec2<bool>(global3.x, true), var_1.a.xx, var_1.a.x)), vec2<bool>(!(!global3.x), var_3.x <= var_3.x)));
    global3 = select(vec4<bool>(!(_wgslsmith_f_op_f32(select(var_3.x, -770f, global3.x)) != -1271f), all(vec4<bool>(var_4.x, true, var_4.x, !global3.x)), true, any(var_1.a) | global3.x), vec4<bool>(var_4.x & all(!vec3<bool>(global3.x, true, false)), any(global3.yx), !var_1.a.x, false), global0[_wgslsmith_index_u32(u_input.d.x, 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.b.zz, 0u);
}

