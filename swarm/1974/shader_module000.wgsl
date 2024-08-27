struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<i32, 19>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<bool>(true, false, true, true), vec3<u32>(8623u, 28655u, 1u), true), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(4294967295u, 4294967295u, 32080u), true), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(1u, 3687u, 44573u), false), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(0u, 1631u, 70262u), true), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(38163u, 0u, 16972u), true), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(1u, 75726u, 86478u), true), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(27676u, 23316u, 44369u), false), Struct_1(vec4<bool>(false, false, true, false), vec3<u32>(1u, 1u, 42435u), true), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(1u, 25719u, 31964u), false), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(1u, 4294967295u, 4294967295u), true), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(58271u, 44616u, 1u), false), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(29006u, 1u, 65089u), true), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(4294967295u, 38356u, 26047u), true), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(4294967295u, 1u, 0u), true), Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(78128u, 2894u, 4294967295u), true), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(28572u, 101157u, 3641u), true), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(0u, 0u, 15069u), false), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(54945u, 1u, 63235u), true), Struct_1(vec4<bool>(true, true, false, false), vec3<u32>(1u, 1u, 4632u), false), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(20709u, 1u, 9550u), false), Struct_1(vec4<bool>(true, true, true, true), vec3<u32>(0u, 4294967295u, 0u), true), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(64563u, 55557u, 22989u), false), Struct_1(vec4<bool>(true, true, false, true), vec3<u32>(54306u, 1u, 4294967295u), true), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(69934u, 7345u, 1u), false), Struct_1(vec4<bool>(true, false, false, false), vec3<u32>(38668u, 4294967295u, 1u), true), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(0u, 0u, 5561u), true));

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global4: bool = true;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.c, 19u)], vec3<i32>(40339i, -global1[_wgslsmith_index_u32(u_input.d.x, 19u)], select(min(-global1[_wgslsmith_index_u32(58580u, 19u)], _wgslsmith_dot_vec2_i32(vec2<i32>(34425i, -9980i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)]))), -2147483647i, true)), !(!(_wgslsmith_mult_u32(u_input.c, 3381u) >= ~57499u)));
    var_0 = Struct_2(42979i, var_0.b, all(vec3<bool>(true | (u_input.c < 0u), all(vec4<bool>(true, global0.x, global0.x, false)) & (false | global3.x), false && !global3.x)));
    return 0u;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = !(!global3.zww);
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(~arg_1.c, 19u)], select(~_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 1i, global1[_wgslsmith_index_u32(arg_0, 19u)]), -vec3<i32>(10594i, 0i, -2147483647i)), select(firstTrailingBit(vec3<i32>(-1i, global1[_wgslsmith_index_u32(arg_1.c, 19u)], global1[_wgslsmith_index_u32(arg_1.c, 19u)])) << (u_input.b.zwz % vec3<u32>(32u)), abs(reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(arg_1.c, 19u)], 2147483647i, 10998i))), vec3<bool>(select(false, var_0.x, false), true, !global0.x)), select(select(var_0, select(arg_2, vec3<bool>(true, global0.x, global0.x), vec3<bool>(arg_2.x, arg_1.b.x, global0.x)), global0.x), select(select(arg_2, arg_1.b, arg_2), !vec3<bool>(true, true, arg_1.b.x), !var_0), true)), true);
    let var_2 = !select(!vec3<bool>(var_1.a >= 0i, arg_0 >= arg_0, any(vec2<bool>(true, var_0.x))), !select(vec3<bool>(arg_2.x, var_1.c, arg_1.b.x), !vec3<bool>(global3.x, true, true), select(vec3<bool>(arg_2.x, true, var_1.c), vec3<bool>(global3.x, true, false), arg_1.b.x)), vec3<bool>(global3.x && true, arg_2.x, true));
    var var_3 = arg_1.d;
    var var_4 = ~vec4<u32>(4294967295u, 4294967295u, ~arg_0, ~(~arg_1.c ^ (10079u >> (u_input.b.x % 32u))));
    return !(!vec4<bool>(global0.x, true, any(select(vec4<bool>(var_0.x, true, global3.x, false), vec4<bool>(global0.x, true, arg_2.x, true), var_0.x)), !(global3.x & var_1.c)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>) -> f32 {
    global4 = !global3.x;
    global3 = func_4(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, func_3()), ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.b), u_input.b.x), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(114f - 1f), -1000f), select(arg_1, select(arg_1, arg_1, !global3.x), vec3<bool>(true, all(global0.xz), true)), _wgslsmith_dot_vec4_u32(~u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.d.x, u_input.c, u_input.b.x), vec4<u32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x)))), -929f), select(!(!(!arg_1)), arg_1, !global3.xxx));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 545f, -1378f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1344f, 784f, _wgslsmith_f_op_f32(-603f - 697f)), vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), -450f, 1957f))));
    var var_1 = vec3<u32>(reverseBits(7472u), _wgslsmith_add_u32(_wgslsmith_mod_u32(~(~36297u), _wgslsmith_mod_u32(64490u, u_input.b.x)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.d), ~u_input.c, u_input.a.x)), _wgslsmith_clamp_u32(~u_input.d.x ^ u_input.b.x, ~u_input.a.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.wz, vec2<u32>(u_input.d.x, u_input.a.x)), vec2<u32>(1u, 1u))));
    global4 = any(arg_1);
    return -1000f;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -266f));
    global1 = array<i32, 19>();
    let var_1 = u_input.d;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(func_2(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.a, -1i), vec2<i32>(17894i, 0i))), global3.zyw)), func_4(((63355u | u_input.a.x) & 4294967295u) | (~arg_0 ^ 4294967295u), Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(459f * -1293f))), func_4(_wgslsmith_mod_u32(1u, var_1.x), Struct_3(var_0, vec3<bool>(arg_1.c, arg_1.c, global3.x), u_input.c, -1426f), func_4(14264u, Struct_3(var_0, global3.zyx, 1u, var_0), vec3<bool>(false, arg_1.c, false)).xzy).yww, 4294967295u >> (0u % 32u), var_0), !(!select(vec3<bool>(arg_1.c, true, false), vec3<bool>(arg_1.c, false, false), arg_1.c))).zxw, _wgslsmith_add_u32(u_input.d.x, ~(~111618u)), var_0);
    global4 = global0.x;
    return func_4(func_3(), Struct_3(var_0, func_4(var_2.c, Struct_3(var_0, var_2.b, ~u_input.d.x, _wgslsmith_f_op_f32(186f - var_0)), vec3<bool>(!arg_1.c, 2104f >= var_2.a, all(vec3<bool>(false, false, true)))).yzz, ~u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2459f)) - _wgslsmith_div_f32(-2347f, 739f))), select(global3.xxw, !global3.wwy, vec3<bool>(select(false & arg_1.c, -2147483647i < global1[_wgslsmith_index_u32(var_1.x, 19u)], true), var_2.b.x, func_4(max(4294967295u, u_input.a.x), Struct_3(-2403f, vec3<bool>(var_2.b.x, true, arg_1.c), 4294967295u, -574f), global3.wwz).x)));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    global4 = true;
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-224f * arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0)))), !vec3<bool>(any(vec4<bool>(false, arg_1.x, false, global0.x)), !(false && arg_1.x), !global0.x), 19462u, 355f);
    let var_1 = true && var_0.b.x;
    let var_2 = min(vec3<i32>(firstTrailingBit(select(2147483647i, abs(global1[_wgslsmith_index_u32(var_0.c, 19u)]), any(global3.yyw))), global1[_wgslsmith_index_u32(63729u, 19u)], _wgslsmith_mult_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(97369u, 19u)], global1[_wgslsmith_index_u32(1464u, 19u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec4<i32>(global1[_wgslsmith_index_u32(var_0.c, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(61965u, 19u)], -1i))) ^ (-4581i << (1u % 32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(select(2756i, firstLeadingBit(23412i), all(vec3<bool>(false, var_0.b.x, true))), 57568i, global1[_wgslsmith_index_u32(4294967295u, 19u)]), select(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(84291u, 19u)], -6893i, global1[_wgslsmith_index_u32(var_0.c, 19u)]), vec3<i32>(global1[_wgslsmith_index_u32(36919u, 19u)], 0i, 12496i))), ~min(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<i32>(-13935i, global1[_wgslsmith_index_u32(4294967295u, 19u)], 66131i)), select(true, 1u > var_0.c, !var_1)), min(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(24458u, 19u)], -24288i), vec3<i32>(global1[_wgslsmith_index_u32(var_0.c, 19u)], -8574i, global1[_wgslsmith_index_u32(1u, 19u)]))), ~(-vec3<i32>(global1[_wgslsmith_index_u32(var_0.c, 19u)], 8697i, global1[_wgslsmith_index_u32(var_0.c, 19u)])))));
    let var_3 = arg_1.yw;
    return Struct_2(_wgslsmith_dot_vec3_i32(abs(var_2 | var_2) ^ _wgslsmith_sub_vec3_i32(abs(var_2), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, 0i, global1[_wgslsmith_index_u32(16307u, 19u)]), vec3<i32>(global1[_wgslsmith_index_u32(0u, 19u)], var_2.x, global1[_wgslsmith_index_u32(var_0.c, 19u)]), var_2)), -vec3<i32>(~6971i, global1[_wgslsmith_index_u32(67180u, 19u)] ^ global1[_wgslsmith_index_u32(u_input.b.x, 19u)], -30646i)), _wgslsmith_div_vec3_i32(abs(var_2), _wgslsmith_mod_vec3_i32(firstTrailingBit(var_2), vec3<i32>(-31936i, -27629i, 1i))), false);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], arg_1.b, false);
    let var_1 = _wgslsmith_sub_u32(10481u, abs(~(~(~u_input.a.x))));
    let var_2 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1050f, 140f))) * _wgslsmith_f_op_f32(f32(-1f) * -305f)) > 1f) | func_5(1000f, vec4<bool>(global3.x, var_0.c, global3.x, arg_1.c)).c;
    global0 = global3.zwx;
    let var_3 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-645f + -799f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(select(587f, 106f, var_2))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2128f - -1244f) - _wgslsmith_f_op_f32(f32(-1f) * -1391f)))), !(!vec3<bool>(arg_1.c || false, true, true & arg_1.c)), (124800u ^ ~_wgslsmith_mod_u32(u_input.d.x, u_input.b.x)) << (4294967295u % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(517f + 1136f))));
    return Struct_3(var_3.d, global3.yyy, 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-368f, 1000f)))) - _wgslsmith_f_op_f32(-var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, ~u_input.d.x), ~vec2<u32>(61498u, ~(u_input.a.x | 39706u))), 26u)];
    global3 = var_0.a;
    var var_1 = var_0.a;
    let var_2 = func_6(!var_0.a.xz, func_5(822f, select(select(!var_0.a, !vec4<bool>(true, var_1.x, global3.x, true), !var_0.a), !func_1(var_0.b.x, Struct_2(global1[_wgslsmith_index_u32(var_0.b.x, 19u)], vec3<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 19u)], 0i, 34383i), true)), true)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(var_0.b.x, 19u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -10773i, global1[_wgslsmith_index_u32(var_0.b.x, 19u)]), vec3<i32>(1i, global1[_wgslsmith_index_u32(var_0.b.x, 19u)], 1i))), func_5(172f, var_0.a).b.x & 7101i), reverseBits(vec3<i32>(func_5(1160f, var_0.a).a, 1i, -13306i))));
    var var_3 = ~(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(0u, var_0.b.x, var_0.b.x)), u_input.a.wyx & vec3<u32>(4294967295u, 11091u, 39054u)), vec3<u32>(0u, var_2.c, ~26584u)) ^ firstLeadingBit(abs(var_0.b)));
    let var_4 = var_2;
    global2 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(func_5(_wgslsmith_f_op_f32(-var_4.d), vec4<bool>((true | var_2.b.x) || func_1(var_2.c, Struct_2(0i, vec3<i32>(19567i, global1[_wgslsmith_index_u32(var_0.b.x, 19u)], global1[_wgslsmith_index_u32(59431u, 19u)]), false)).x, true, all(var_0.a.wz), var_2.b.x)).a, var_0.b);
}

