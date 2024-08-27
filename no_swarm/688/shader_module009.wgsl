struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(22575i, -1i, 1i, 45252i);

var<private> global1: u32;

var<private> global2: array<bool, 30>;

var<private> global3: Struct_2 = Struct_2(1u, vec3<u32>(15068u, 56959u, 27063u), 1u);

var<private> global4: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(0u, 40730u, 4294967295u), vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 24530u, 18510u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(15535u, 25722u, 7665u), vec3<u32>(1u, 43954u, 32172u), vec3<u32>(1u, 47116u, 49654u), vec3<u32>(13887u, 17433u, 54445u), vec3<u32>(0u, 1u, 16263u), vec3<u32>(4294967295u, 10937u, 34133u), vec3<u32>(76563u, 26124u, 0u), vec3<u32>(833u, 4294967295u, 86608u), vec3<u32>(1u, 32877u, 0u), vec3<u32>(64707u, 1u, 111895u), vec3<u32>(0u, 84524u, 1u), vec3<u32>(1u, 107544u, 0u), vec3<u32>(1u, 1u, 3069u), vec3<u32>(40183u, 35967u, 62071u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(504u, 29139u, 1u), vec3<u32>(1u, 24178u, 0u), vec3<u32>(1u, 0u, 40455u), vec3<u32>(58595u, 14480u, 0u), vec3<u32>(47491u, 16900u, 1u), vec3<u32>(4294967295u, 3182u, 4294967295u), vec3<u32>(56703u, 1u, 47156u), vec3<u32>(71163u, 19538u, 4294967295u), vec3<u32>(4294967295u, 28946u, 0u), vec3<u32>(1778u, 34402u, 0u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a.x)), -797f), firstLeadingBit(arg_1.b) << (~(firstLeadingBit(vec4<u32>(8609u, arg_2.x, u_input.c.x, u_input.b.x)) << (_wgslsmith_mult_vec4_u32(arg_1.b, vec4<u32>(arg_2.x, u_input.a.x, u_input.c.x, global3.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec3<u32>(0u, 65960u, 41926u >> (1u % 32u)));
    var var_1 = arg_0;
    global0 = countOneBits(countOneBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(-7105i, global0.x, global0.x, -4565i), -vec4<i32>(-34929i, global0.x, -2147483647i, global0.x))));
    var var_2 = Struct_4(var_0.b.x, _wgslsmith_f_op_f32(-954f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x)))))), arg_1.a.x, vec4<u32>(~(~73293u), 35950u, _wgslsmith_sub_u32(42217u >> (~4294967295u % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.c, var_0.c.x, global3.b.x, 24149u), vec4<u32>(2593u, 0u, global3.b.x, arg_2.x)), 0u)), 80128u));
    let var_3 = global0.wwz;
    return 0u;
}

fn func_4(arg_0: u32) -> bool {
    var var_0 = Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x, arg_0, ~_wgslsmith_sub_u32(4294967295u, global3.b.x)), global4[_wgslsmith_index_u32(~(arg_0 << (14539u % 32u)) & 4294967295u, 30u)]), 290f, 1f, _wgslsmith_mult_vec4_u32(vec4<u32>(abs(_wgslsmith_mult_u32(4294967295u, u_input.b.x)), global3.b.x, ~(~4294967295u), u_input.a.x), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.b.x, global3.b.x) >> (vec4<u32>(30705u, 0u, 0u, arg_0) % vec4<u32>(32u)), abs(vec4<u32>(0u, 66286u, global3.b.x, 4294967295u)))));
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1952f, var_0.b)), vec2<bool>(global2[_wgslsmith_index_u32(1u, 30u)], select(global0.x < (i32(-1i) * -2147483647i), global2[_wgslsmith_index_u32(global3.a, 30u)], global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global3.b.yz, global3.b.zz), 30u)])), Struct_3(vec3<bool>(true, true, select(global2[_wgslsmith_index_u32(0u, 30u)], all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], true, global2[_wgslsmith_index_u32(var_0.a, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)])), any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(global3.b.x, 30u)], false)))), Struct_2(u_input.c.x, var_0.d.ywx, ~(~2290u)), true, global0.x));
    var_0 = Struct_4(9754u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_div_f32(363f, var_0.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1593f)))), _wgslsmith_f_op_f32(var_0.c - -728f))), var_0.b, var_0.d);
    let var_2 = var_1.b;
    let var_3 = Struct_3(var_1.c.a, var_1.c.b, false & var_1.b.x, var_1.c.d);
    return any(vec2<bool>(all(vec2<bool>(var_3.a.x, any(vec4<bool>(true, false, false, false)))), true));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec2<bool>) -> Struct_2 {
    global2 = array<bool, 30>();
    var var_0 = Struct_3(vec3<bool>(func_4(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -1118f, arg_0.x), vec4<f32>(-961f, -178f, 1026f, -1223f)), Struct_1(arg_0, vec4<u32>(0u, 0u, global3.a, 0u), vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, global3.a, 26600u), global4[_wgslsmith_index_u32(84921u, 30u)]))), arg_2.x, true), Struct_2(~_wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(u_input.a.x, 30u)], select(vec3<u32>(global3.a, global3.a, u_input.a.x), vec3<u32>(u_input.b.x, u_input.c.x, u_input.c.x), true)), global3.b, _wgslsmith_dot_vec4_u32(vec4<u32>(31588u, 0u, 23686u, u_input.c.x) | ~vec4<u32>(1u, global3.a, 37413u, 1u), ~vec4<u32>(global3.c, 1u, global3.b.x, 55652u))), all(arg_2), abs(arg_1.x));
    var var_1 = Struct_3(!vec3<bool>(true, arg_2.x || !global2[_wgslsmith_index_u32(34934u, 30u)], !arg_2.x), Struct_2(~u_input.b.x, firstLeadingBit(vec3<u32>(var_0.b.b.x, 23291u, 1u)) | global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.c, ~71104u), 30u)], _wgslsmith_div_u32(var_0.b.a, var_0.b.b.x)), false, i32(-1i) * -1i);
    var var_2 = var_1.c;
    global3 = var_1.b;
    return var_0.b;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: u32) -> bool {
    global1 = ~7851u;
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_1.b))))))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(global0.x, -2147483647i, 2147483647i, global0.x) & abs(vec4<i32>(-2147483647i, -2147483647i, 4523i, -1433i)), min(~vec4<i32>(1i, global0.x, 7091i, global0.x), -vec4<i32>(25865i, 2147483647i, global0.x, global0.x)), select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, global2[_wgslsmith_index_u32(arg_1.d.x, 30u)], false, global2[_wgslsmith_index_u32(1238u, 30u)]), true)), vec4<i32>(_wgslsmith_clamp_i32(select(global0.x, global0.x, global2[_wgslsmith_index_u32(3427u, 30u)]), ~global0.x, abs(global0.x)), _wgslsmith_div_i32(24398i, firstLeadingBit(global0.x)), ~max(-2147483647i, global0.x), (-6186i & global0.x) & global0.x)), arg_0.wy);
    let var_1 = vec3<u32>(0u, abs(reverseBits(reverseBits(0u << (0u % 32u)))), _wgslsmith_mod_u32(arg_2, var_0.b.x));
    global1 = _wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(min(12647u, 0u), _wgslsmith_mult_u32(1u, u_input.a.x), max(4294967295u, 1u)), var_0.c)) >> ((~var_0.a << (var_1.x % 32u)) % 32u);
    let var_2 = true;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(_wgslsmith_mult_u32(global3.b.x, reverseBits(294u)), ~global4[_wgslsmith_index_u32(~0u, 30u)], ~_wgslsmith_sub_u32(~(global3.c >> (u_input.a.x % 32u)), firstTrailingBit(~u_input.a.x)));
    global4 = array<vec3<u32>, 30>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1309f, 677f, 1434f))), vec3<f32>(383f, 1190f, 1276f)))));
    let var_1 = var_0.yz;
    let var_2 = Struct_3(select(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(17251u, 30u)], global2[_wgslsmith_index_u32(33431u, 30u)], false))), vec3<bool>(global2[_wgslsmith_index_u32(25060u, 30u)], func_1(select(vec4<bool>(global2[_wgslsmith_index_u32(global3.c, 30u)], global2[_wgslsmith_index_u32(global3.a, 30u)], false, global2[_wgslsmith_index_u32(30919u, 30u)]), vec4<bool>(global2[_wgslsmith_index_u32(30066u, 30u)], true, true, true), vec4<bool>(true, true, true, true)), Struct_4(81867u, -1612f, 1481f, vec4<u32>(40693u, 0u, 78950u, u_input.a.x)), max(u_input.a.x, u_input.c.x)), true), !select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(global3.c, 30u)], false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(global2[_wgslsmith_index_u32(70632u, 30u)], global2[_wgslsmith_index_u32(global3.b.x, 30u)], global2[_wgslsmith_index_u32(0u, 30u)]), !vec3<bool>(global2[_wgslsmith_index_u32(global3.b.x, 30u)], true, global2[_wgslsmith_index_u32(0u, 30u)]))), Struct_2(1u, ~_wgslsmith_sub_vec3_u32(global4[_wgslsmith_index_u32(94015u, 30u)], u_input.b) & global3.b, u_input.c.x), false, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~(-vec3<i32>(0i, global0.x, global0.x)), vec3<i32>(~global0.x, global0.x, -15482i ^ global0.x)), global0.wwz));
    global1 = 30355u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - 1148f), -515f)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-710f)) - _wgslsmith_f_op_f32(var_0.x * -343f)) - -520f)), ~select(vec4<u32>(u_input.a.x, ~u_input.c.x, _wgslsmith_mult_u32(1u, u_input.c.x), abs(var_2.b.a)), vec4<u32>(4294967295u, ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.a, var_2.b.c), vec2<u32>(u_input.c.x, var_2.b.c)), firstTrailingBit(12918u)), var_0.x > -167f));
}

