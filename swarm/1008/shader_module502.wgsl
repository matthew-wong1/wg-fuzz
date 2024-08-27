struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), 26828u);

var<private> global2: array<vec3<f32>, 27>;

var<private> global3: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec2<bool>(true, true), 35180u), Struct_1(vec2<bool>(false, false), 39132u), Struct_1(vec2<bool>(false, false), 41316u), true, 1u), Struct_2(Struct_1(vec2<bool>(false, false), 75143u), Struct_1(vec2<bool>(true, true), 0u), Struct_1(vec2<bool>(true, false), 1u), false, 0u), Struct_2(Struct_1(vec2<bool>(true, true), 1044u), Struct_1(vec2<bool>(true, false), 4294967295u), Struct_1(vec2<bool>(true, true), 21264u), false, 1u), Struct_2(Struct_1(vec2<bool>(true, false), 12757u), Struct_1(vec2<bool>(true, false), 10915u), Struct_1(vec2<bool>(false, true), 25695u), true, 1u), Struct_2(Struct_1(vec2<bool>(false, true), 15054u), Struct_1(vec2<bool>(true, true), 31007u), Struct_1(vec2<bool>(false, true), 74953u), false, 1u), Struct_2(Struct_1(vec2<bool>(true, false), 0u), Struct_1(vec2<bool>(true, true), 1u), Struct_1(vec2<bool>(true, false), 1u), false, 1281u), Struct_2(Struct_1(vec2<bool>(false, false), 4294967295u), Struct_1(vec2<bool>(false, true), 4294967295u), Struct_1(vec2<bool>(false, false), 0u), true, 0u), Struct_2(Struct_1(vec2<bool>(false, false), 1u), Struct_1(vec2<bool>(false, false), 56696u), Struct_1(vec2<bool>(false, true), 4294967295u), false, 0u), Struct_2(Struct_1(vec2<bool>(false, false), 4294967295u), Struct_1(vec2<bool>(true, false), 58716u), Struct_1(vec2<bool>(true, true), 4294967295u), false, 83389u), Struct_2(Struct_1(vec2<bool>(true, true), 0u), Struct_1(vec2<bool>(true, true), 35367u), Struct_1(vec2<bool>(true, true), 0u), false, 20299u), Struct_2(Struct_1(vec2<bool>(true, false), 4294967295u), Struct_1(vec2<bool>(true, true), 51616u), Struct_1(vec2<bool>(true, true), 1u), false, 100663u), Struct_2(Struct_1(vec2<bool>(true, false), 41567u), Struct_1(vec2<bool>(false, true), 4294967295u), Struct_1(vec2<bool>(true, false), 0u), true, 22555u), Struct_2(Struct_1(vec2<bool>(false, true), 22368u), Struct_1(vec2<bool>(false, true), 20092u), Struct_1(vec2<bool>(true, true), 0u), true, 0u), Struct_2(Struct_1(vec2<bool>(false, false), 50384u), Struct_1(vec2<bool>(false, true), 20582u), Struct_1(vec2<bool>(true, false), 9286u), true, 13522u), Struct_2(Struct_1(vec2<bool>(true, true), 0u), Struct_1(vec2<bool>(true, false), 4294967295u), Struct_1(vec2<bool>(false, false), 1u), false, 76707u), Struct_2(Struct_1(vec2<bool>(true, true), 72734u), Struct_1(vec2<bool>(false, false), 4294967295u), Struct_1(vec2<bool>(true, true), 39064u), false, 0u));

var<private> global4: f32 = -714f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<f32>) -> f32 {
    var var_0 = Struct_1(!global1.a, 1u);
    var var_1 = select(1u, global1.b, all(select(select(!vec2<bool>(true, arg_0.x), var_0.a, arg_2.x != 1500f), select(!global1.a, select(vec2<bool>(false, global1.a.x), vec2<bool>(true, false), false), !vec2<bool>(global1.a.x, true)), !vec2<bool>(global1.a.x, arg_0.x))));
    var var_2 = vec4<i32>(25442i, _wgslsmith_dot_vec2_i32(countOneBits(countOneBits(arg_1)), abs(vec2<i32>(~arg_1.x, ~arg_1.x))), _wgslsmith_add_i32(8625i, -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 0i, -1i), vec3<i32>(arg_1.x, arg_1.x, -16599i)), 2147483647i | arg_1.x)), 33891i ^ ~arg_1.x);
    let var_3 = Struct_1(var_0.a, ~_wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b, global1.b), vec2<u32>(global1.b, 0u)), max(vec2<u32>(4294967295u, 81566u), vec2<u32>(107764u, 4294967295u)), var_0.a.x), vec2<u32>(4294967295u, 7275u)));
    let var_4 = _wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, 1u, var_0.b)), vec3<u32>(40109u, 54495u, 0u));
    return 1333f;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = vec2<bool>(true || arg_0.a.x, arg_0.a.x);
    global1 = Struct_1(var_0, 1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-770f + _wgslsmith_f_op_f32(select(142f, 551f, arg_0.a.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1105f + -227f), _wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, var_0.x, false), u_input.a, global2[_wgslsmith_index_u32(74837u, 27u)])))), -802f))));
    var var_2 = !(!select(select(!vec3<bool>(var_0.x, false, false), !vec3<bool>(false, arg_0.a.x, true), true), vec3<bool>(!global1.a.x, true && global1.a.x, any(vec4<bool>(true, global1.a.x, false, var_0.x))), vec3<bool>(true, select(global1.a.x, global1.a.x, var_0.x), global1.a.x)));
    var var_3 = Struct_2(arg_0, Struct_1(select(vec2<bool>(true, all(vec2<bool>(var_0.x, false))), !(!arg_0.a), !vec2<bool>(var_2.x, false)), 0u), arg_0, !var_0.x, 4294967295u);
    return _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(max(vec3<u32>(11319u, arg_0.b, global1.b), max(vec3<u32>(global1.b, 1u, global1.b), vec3<u32>(0u, global1.b, global1.b))), ~min(vec3<u32>(4294967295u, 50809u, 22846u), vec3<u32>(global1.b, 4294967295u, var_3.c.b))) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_3.e, arg_0.b, var_3.a.b), vec3<u32>(33877u, 0u, global1.b)), _wgslsmith_div_vec3_u32(vec3<u32>(var_3.c.b, global1.b, var_3.b.b), vec3<u32>(4294967295u, global1.b, 27608u))), vec3<u32>(arg_0.b, 14877u, var_3.e) << (~vec3<u32>(var_3.c.b, 4294967295u, arg_0.b) % vec3<u32>(32u))), select(vec3<u32>(global1.b, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c.b, 42689u), vec2<u32>(arg_0.b, arg_0.b)), var_3.a.b), global1.b), ~(~reverseBits(vec3<u32>(arg_0.b, global1.b, var_3.a.b))), !(~u_input.a.x <= ~49000i)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = i32(-1i) * -u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0, -630f)))));
    let var_2 = Struct_1(vec2<bool>(global1.a.x, !(reverseBits(arg_1.x) > global1.b)), arg_1.x);
    let var_3 = ~vec3<u32>(global1.b, global1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, ~1u, 100505u), ~arg_1 & ~arg_1));
    var var_4 = Struct_2(Struct_1(select(!var_2.a, vec2<bool>(!global1.a.x, !var_2.a.x), vec2<bool>(true, true)), firstTrailingBit(var_3.x) >> (0u % 32u)), Struct_1(select(!select(vec2<bool>(true, global1.a.x), vec2<bool>(var_2.a.x, false), vec2<bool>(false, var_2.a.x)), select(!vec2<bool>(true, global1.a.x), select(vec2<bool>(global1.a.x, var_2.a.x), vec2<bool>(false, var_2.a.x), global1.a), true), select(vec2<bool>(false, var_2.a.x), select(global1.a, global1.a, var_2.a.x), !vec2<bool>(var_2.a.x, var_2.a.x))), global1.b << (1u % 32u)), var_2, false, ~1u);
    return vec3<bool>(true, select(any(vec2<bool>(any(global1.a), true)), !(all(vec4<bool>(true, false, global1.a.x, true)) & true), _wgslsmith_add_i32(var_0, -31736i) <= (-2147483647i | u_input.a.x)), all(!(!select(vec3<bool>(true, global1.a.x, var_2.a.x), vec3<bool>(true, true, var_4.a.a.x), vec3<bool>(true, true, true)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = Struct_2(Struct_1(!vec2<bool>(global1.a.x, true), ~_wgslsmith_sub_u32(min(global1.b, 33482u), 5996u)), arg_0, arg_1, arg_1.a.x, 794u);
    global0 = array<vec2<i32>, 17>();
    global2 = array<vec3<f32>, 27>();
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(0u) ^ _wgslsmith_mod_u32(~(~var_0.e), abs(arg_1.b)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(global1.b, global1.b, 1u)), vec3<u32>(var_0.b.b, var_0.a.b, 4294967295u << (global1.b % 32u)))), 16u)];
    var var_1 = all(select(select(select(vec4<bool>(false, true, true, arg_2), select(vec4<bool>(true, global1.a.x, false, true), vec4<bool>(global1.a.x, true, arg_2, arg_2), arg_0.a.x), vec4<bool>(true, arg_2, true, arg_2)), select(vec4<bool>(var_0.d, false, var_0.a.a.x, false), vec4<bool>(true, global1.a.x, true, true), !vec4<bool>(arg_2, arg_2, global1.a.x, true)), !(!vec4<bool>(global1.a.x, arg_1.a.x, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, -36594i >= u_input.a.x, select(true, true, true)), vec4<bool>(var_0.d || var_0.c.a.x, true, any(vec3<bool>(var_0.b.a.x, true, false)), var_0.d)), -63794i > reverseBits(u_input.a.x)));
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(~(arg_1.b >> (~arg_1.b % 32u)), arg_1.b), _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstLeadingBit(var_0.a.b), arg_1.b), abs(global1.b << (arg_0.b % 32u))) >> (_wgslsmith_dot_vec2_u32(~(vec2<u32>(48241u, arg_1.b) | vec2<u32>(var_0.c.b, arg_0.b)), func_2(Struct_1(arg_1.a, 24384u)).xz) % 32u));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = !all(vec3<bool>(arg_1, true, false));
    global0 = array<vec2<i32>, 17>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -430f));
    var var_2 = ~(-2147483647i);
    global3 = array<Struct_2, 16>();
    return Struct_1(vec2<bool>(true, true), func_5(Struct_1(select(global1.a, global1.a, !global1.a.x), 33813u), Struct_1(vec2<bool>(true, !arg_1), abs(global1.b)), all(func_4(_wgslsmith_f_op_f32(-var_1), func_2(Struct_1(vec2<bool>(global1.a.x, true), 4294967295u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec2<bool>(true, true), ~_wgslsmith_add_u32(1u, ~1u)), func_1(~(global1.b ^ ~53421u), false), func_1(func_2(Struct_1(select(global1.a, vec2<bool>(true, global1.a.x), false), 4294967295u)).x, !(global1.a.x == true)), true, _wgslsmith_sub_u32(global1.b, global1.b));
    global1 = func_1(~global1.b, var_0.a.a.x == all(vec2<bool>(true, true)));
    var_0 = Struct_2(func_1(0u, var_0.a.a.x), var_0.a, var_0.b, var_0.a.a.x, 1u);
    var var_1 = Struct_2(func_1(~global1.b, -422f >= _wgslsmith_f_op_f32(func_3(vec4<bool>(false, global1.a.x, global1.a.x, var_0.d), global0[_wgslsmith_index_u32(func_1(var_0.a.b, true).b, 17u)], vec3<f32>(-412f, 566f, 161f)))), func_1(firstTrailingBit(0u), true), var_0.c, true, abs(var_0.e));
    let var_2 = Struct_2(func_1(~1u, !var_0.b.a.x), var_0.c, var_0.b, 10031u <= _wgslsmith_mod_u32(1043u, global1.b), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_0.a.b >> (4294967295u % 32u), select(4294967295u, global1.b, var_1.d)), _wgslsmith_mod_u32(var_1.a.b, 4294967295u)), ~_wgslsmith_mod_vec2_u32(select(vec2<u32>(global1.b, var_0.c.b), vec2<u32>(var_1.e, 24547u), var_1.a.a), vec2<u32>(var_0.b.b, 75588u))));
    var var_3 = var_2.a;
    var var_4 = var_2;
    let var_5 = vec2<f32>(-2185f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-639f, 929f)), _wgslsmith_f_op_f32(select(1333f, -325f, true)))) * _wgslsmith_f_op_f32(f32(-1f) * -556f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~_wgslsmith_div_vec4_u32(abs(reverseBits(vec4<u32>(2713u, var_2.b.b, 686u, 4294967295u))), ~max(vec4<u32>(64366u, var_2.a.b, var_0.b.b, 68960u), vec4<u32>(var_4.e, 4294967295u, var_4.e, var_4.c.b))));
}

