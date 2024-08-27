struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 18>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<u32>(4294967295u, 0u), true), Struct_1(vec2<u32>(1u, 15881u), false), Struct_1(vec2<u32>(14503u, 18157u), false), Struct_1(vec2<u32>(32313u, 4294967295u), true), Struct_1(vec2<u32>(0u, 7645u), false), Struct_1(vec2<u32>(22871u, 0u), true), Struct_1(vec2<u32>(1445u, 4294967295u), false), Struct_1(vec2<u32>(14587u, 1u), false), Struct_1(vec2<u32>(1u, 1u), true), Struct_1(vec2<u32>(17699u, 62902u), false), Struct_1(vec2<u32>(14833u, 0u), false), Struct_1(vec2<u32>(96015u, 1u), true), Struct_1(vec2<u32>(48257u, 19188u), true), Struct_1(vec2<u32>(50361u, 1u), false), Struct_1(vec2<u32>(1u, 4294967295u), false), Struct_1(vec2<u32>(2655u, 33598u), true), Struct_1(vec2<u32>(9370u, 0u), false), Struct_1(vec2<u32>(30287u, 35609u), true), Struct_1(vec2<u32>(62958u, 1u), true), Struct_1(vec2<u32>(48718u, 1u), false), Struct_1(vec2<u32>(1u, 56709u), false), Struct_1(vec2<u32>(36508u, 32149u), true), Struct_1(vec2<u32>(1u, 4294967295u), true), Struct_1(vec2<u32>(48567u, 126462u), false), Struct_1(vec2<u32>(14874u, 13300u), true), Struct_1(vec2<u32>(21061u, 33347u), true));

var<private> global3: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(-822f, 515f, vec3<i32>(20929i, -24471i, -43622i), Struct_1(vec2<u32>(49190u, 29955u), true)), Struct_2(-487f, -606f, vec3<i32>(1i, 50391i, 0i), Struct_1(vec2<u32>(3474u, 0u), true)), Struct_2(-2754f, 398f, vec3<i32>(8233i, -27971i, -1i), Struct_1(vec2<u32>(4294967295u, 4294967295u), true)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = arg_3.x;
    global1 = array<vec4<i32>, 18>();
    var var_1 = arg_2.x;
    let var_2 = Struct_1(vec2<u32>(firstTrailingBit(~countOneBits(4294967295u)), u_input.a), !arg_2.x && !all(!arg_2));
    global3 = array<Struct_2, 3>();
    return Struct_3(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-2147483647i, -2988i, -var_0, i32(-1i) * -1i)), global1[_wgslsmith_index_u32(11629u, 18u)]), Struct_1(~firstTrailingBit(vec2<u32>(var_2.a.x, var_2.a.x) | var_2.a), arg_2.x & true), ~(~var_2.a), false, global3[_wgslsmith_index_u32(~var_2.a.x, 3u)]);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1.e.b))));
    global0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, var_0.e.d.a.x), vec3<u32>(20418u, u_input.a, arg_1.c.x)) | vec3<u32>(u_input.a, var_0.e.d.a.x, 10261u)) & var_0.b.a.x;
    global0 = _wgslsmith_div_u32(u_input.b, abs(4294967295u));
    global1 = array<vec4<i32>, 18>();
    return _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(29607u, var_0.b.a.x, var_0.e.d.a.x, arg_1.e.d.a.x) ^ vec4<u32>(arg_1.c.x, 1u, u_input.b, 0u), vec4<u32>(1u, select(u_input.a, 16133u, false), var_0.b.a.x ^ arg_1.e.d.a.x, u_input.a)), _wgslsmith_clamp_vec4_u32(((vec4<u32>(arg_1.c.x, 24525u, var_0.e.d.a.x, 4294967295u) ^ vec4<u32>(var_0.e.d.a.x, 44617u, arg_1.b.a.x, 36462u)) >> (vec4<u32>(38974u, u_input.b, var_0.e.d.a.x, 0u) % vec4<u32>(32u))) << (vec4<u32>(arg_1.e.d.a.x, firstTrailingBit(1u), 80448u, arg_1.c.x) % vec4<u32>(32u)), ((vec4<u32>(0u, var_0.e.d.a.x, arg_1.b.a.x, var_0.e.d.a.x) & vec4<u32>(61538u, 36996u, arg_1.e.d.a.x, var_0.e.d.a.x)) << (~vec4<u32>(u_input.a, arg_1.b.a.x, var_0.b.a.x, 1u) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(vec4<u32>(89241u, u_input.a, 25738u, 1u), vec4<u32>(u_input.a, 47509u, 1u, u_input.b)), select(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b.a.x, 81815u, arg_1.e.d.a.x, u_input.b), vec4<u32>(1u, 4294967295u, var_0.e.d.a.x, arg_1.b.a.x)), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(50794u, 21350u, u_input.b, 0u), vec4<u32>(1u, 2062u, 1u, var_0.c.x), vec4<u32>(arg_1.b.a.x, var_0.e.d.a.x, var_0.e.d.a.x, 38851u)), vec4<u32>(u_input.a, var_0.e.d.a.x, var_0.b.a.x, 0u)), vec4<bool>(all(vec2<bool>(true, false)), 467f <= var_0.e.a, false & arg_1.e.d.b, arg_1.d))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    var var_0 = -vec2<i32>(0i, 0i);
    global2 = array<Struct_1, 26>();
    let var_1 = -global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.x, 54919u), u_input.a)), 18u)] << (~(~func_3(-317f, func_2(-410f, arg_2.x, vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.a, 18u)]))) % vec4<u32>(32u));
    global1 = array<vec4<i32>, 18>();
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(firstLeadingBit(82381u), 1u) >> (0u % 32u), abs(93675u)), 60104u, _wgslsmith_mod_u32(min(1u, _wgslsmith_sub_u32(1u, arg_0.x)) >> (_wgslsmith_dot_vec3_u32(abs(vec3<u32>(51484u, 36407u, u_input.a)), vec3<u32>(arg_0.x, 0u, 73710u)) % 32u), _wgslsmith_add_u32(1u, arg_0.x) << (arg_0.x % 32u)), arg_0.x);
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.a, u_input.a), 878f, vec3<f32>(846f, -1027f, 145f))), 2462f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f))), abs(~vec3<i32>(6764i, _wgslsmith_clamp_i32(29918i, -2147483647i, -1i), firstTrailingBit(-2147483647i))), Struct_1(vec2<u32>(u_input.a, u_input.a), !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))));
    let var_1 = Struct_2(-709f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b + -2465f), var_0.a))), vec3<i32>(-27165i, var_0.c.x, firstTrailingBit(var_0.c.x) | _wgslsmith_mod_i32(_wgslsmith_add_i32(-7775i, var_0.c.x), 0i)), func_2(-955f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) * -2173f), !select(vec2<bool>(true, true), !vec2<bool>(var_0.d.b, var_0.d.b), vec2<bool>(var_0.d.b, var_0.d.b)), global1[_wgslsmith_index_u32(u_input.a, 18u)]).e.d);
    global3 = array<Struct_2, 3>();
    let var_2 = vec4<bool>(true, !(all(select(vec3<bool>(var_0.d.b, true, false), vec3<bool>(var_1.d.b, var_1.d.b, var_0.d.b), var_0.d.b)) && all(vec2<bool>(false, var_0.d.b))), !var_1.d.b, true == any(select(select(vec2<bool>(var_0.d.b, var_1.d.b), vec2<bool>(false, var_0.d.b), var_1.d.b), select(vec2<bool>(var_1.d.b, var_1.d.b), vec2<bool>(var_0.d.b, var_1.d.b), var_0.d.b), select(vec2<bool>(var_1.d.b, true), vec2<bool>(var_1.d.b, true), vec2<bool>(var_1.d.b, false)))));
    global1 = array<vec4<i32>, 18>();
    var var_3 = vec2<u32>(var_1.d.a.x, u_input.a) << ((var_0.d.a ^ abs(var_0.d.a)) % vec2<u32>(32u));
    var var_4 = min(vec3<i32>(countOneBits(1i), -2147483647i, 40319i), ~(-vec3<i32>(var_0.c.x, -var_1.c.x, var_0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-591f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -930f), _wgslsmith_f_op_f32(var_0.a * var_0.b), 770f)))), var_1.d.a << (~(~abs(vec2<u32>(var_0.d.a.x, 0u))) % vec2<u32>(32u)));
}

