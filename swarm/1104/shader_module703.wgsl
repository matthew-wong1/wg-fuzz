struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec3<i32>(-1i, 33969i, 74068i), 4294967295u, vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(-93723i, 0i, 11522i), 37292u, vec4<bool>(true, true, false, true)), Struct_2(vec3<i32>(-44331i, -28792i, -34780i), 11306u, vec4<bool>(false, true, false, true)), Struct_2(vec3<i32>(-63615i, 2147483647i, 1i), 1u, vec4<bool>(false, true, true, true)), Struct_2(vec3<i32>(25622i, 416i, 13355i), 0u, vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(27871i, -36664i, 2147483647i), 31856u, vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(i32(-2147483648), -1i, 43059i), 4294967295u, vec4<bool>(true, false, true, false)), Struct_2(vec3<i32>(-1i, i32(-2147483648), 1i), 53867u, vec4<bool>(true, true, false, true)), Struct_2(vec3<i32>(1i, 18285i, 2147483647i), 1u, vec4<bool>(true, true, false, false)), Struct_2(vec3<i32>(2147483647i, -27635i, 2763i), 19171u, vec4<bool>(true, false, false, false)), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, -27272i), 4294967295u, vec4<bool>(true, true, false, true)), Struct_2(vec3<i32>(0i, 18938i, i32(-2147483648)), 38668u, vec4<bool>(true, true, false, false)), Struct_2(vec3<i32>(86662i, 18842i, 1i), 53007u, vec4<bool>(true, true, true, true)), Struct_2(vec3<i32>(2147483647i, -1i, -48960i), 8887u, vec4<bool>(false, true, false, true)), Struct_2(vec3<i32>(1i, i32(-2147483648), 41818i), 0u, vec4<bool>(false, false, false, false)), Struct_2(vec3<i32>(9856i, i32(-2147483648), 1i), 36264u, vec4<bool>(false, true, false, false)), Struct_2(vec3<i32>(i32(-2147483648), 21208i, -52167i), 49197u, vec4<bool>(false, true, false, true)), Struct_2(vec3<i32>(i32(-2147483648), 41825i, 13460i), 1u, vec4<bool>(true, true, true, false)), Struct_2(vec3<i32>(2147483647i, -40800i, 26664i), 1u, vec4<bool>(true, true, false, true)), Struct_2(vec3<i32>(1i, -1i, -2133i), 6683u, vec4<bool>(true, true, false, true)), Struct_2(vec3<i32>(-6776i, -20186i, 34814i), 4294967295u, vec4<bool>(true, false, true, false)), Struct_2(vec3<i32>(1i, -87915i, i32(-2147483648)), 17415u, vec4<bool>(false, false, false, false)));

var<private> global2: Struct_1 = Struct_1(0u, -6931i, vec3<u32>(1u, 0u, 4294967295u), 111f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<u32>) -> vec3<i32> {
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    return arg_1 | abs(firstLeadingBit(firstTrailingBit(~arg_1)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = global2.b;
    var_0 = min(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -28131i), vec2<i32>(_wgslsmith_sub_i32(21399i, _wgslsmith_div_i32(global2.b, -9689i)), reverseBits(firstTrailingBit(1i)))), reverseBits(global2.b));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, -737f))) - _wgslsmith_f_op_f32(-global2.d))))));
    var var_2 = ~arg_0.x;
    var var_3 = Struct_1(_wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.x, arg_0.x), max(vec2<u32>(0u, 1u), vec2<u32>(22837u, u_input.a))), vec2<u32>(u_input.a, 4294967295u & global2.a), vec2<bool>(false, true)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, ~global2.a), global2.c.zz)), -(~_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global2.b, arg_2.x, global2.b, global2.b)), vec4<i32>(22797i, 2147483647i, global2.b, global2.b))), vec3<u32>(1u, arg_0.x, 60035u), var_1);
    return Struct_1(96489u, -2147483647i, ~(vec3<u32>(u_input.a, 51205u, u_input.a) ^ vec3<u32>(~u_input.a, reverseBits(arg_0.x), _wgslsmith_div_u32(35800u, arg_0.x))), var_1);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: f32) -> bool {
    let var_0 = ~_wgslsmith_sub_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.b, global2.b), vec2<i32>(16627i, global2.b)) & -vec2<i32>(18139i, global2.b)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(global2.b, -49327i), vec2<i32>(global2.b, 1i)));
    global2 = func_3(~(firstTrailingBit(global2.c.xy) & vec2<u32>(~global2.a, firstLeadingBit(0u))), _wgslsmith_f_op_f32(f32(-1f) * -275f), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, -3836i, global2.b), vec3<i32>(-14671i, 531i, global2.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(-5064i, global2.b, -2147483647i), vec3<i32>(6639i, global2.b, global2.b))), 1i, 1i) | select(-_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, -23545i, -4951i), vec3<i32>(var_0.x, global2.b, global2.b)), _wgslsmith_mod_vec3_i32(func_2(false, vec3<i32>(2147483647i, global2.b, 32530i), vec4<u32>(4294967295u, 1u, u_input.a, u_input.a)), vec3<i32>(var_0.x, var_0.x, var_0.x) << (global2.c % vec3<u32>(32u))), !(59913u <= u_input.a)));
    var var_1 = global0[_wgslsmith_index_u32(global2.a, 19u)];
    var var_2 = vec4<bool>(false, ((~u_input.a != firstTrailingBit(4294967295u)) | any(vec2<bool>(true, arg_0.x))) || true, !var_1.c.c.x, arg_1);
    var var_3 = u_input.a;
    return false;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    let var_0 = select(arg_3.c.c.zwx, select(!(!vec3<bool>(true, arg_3.c.c.x, false)), arg_1.c.wwz, all(select(select(vec2<bool>(true, arg_1.c.x), vec2<bool>(false, arg_3.c.c.x), true), arg_3.c.c.yz, arg_1.c.zy))), arg_3.c.c.zww);
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    global2 = arg_3.a;
    let var_1 = arg_3.c.c;
    return Struct_1(~arg_3.a.a, func_3(global2.c.xx << (abs(vec2<u32>(1u, global2.a)) % vec2<u32>(32u)), -2119f, _wgslsmith_clamp_vec3_i32(arg_3.c.a, vec3<i32>(30754i, global2.b, global2.b), arg_3.c.a) | ~vec3<i32>(-12127i, arg_1.a.x, arg_3.a.b)).b & ~min(~global2.b, arg_3.b.b), _wgslsmith_sub_vec3_u32(global2.c, vec3<u32>(abs(func_3(vec2<u32>(4294967295u, 1u), -423f, arg_1.a).a), ~1u, 38180u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 19>();
    global2 = func_4(global2.d, Struct_2(_wgslsmith_div_vec3_i32(-vec3<i32>(global2.b, global2.b, global2.b), -(~vec3<i32>(-255i, global2.b, -10728i))), ~_wgslsmith_clamp_u32(global2.a, _wgslsmith_dot_vec3_u32(global2.c, vec3<u32>(4294967295u, 1u, 2595u)), _wgslsmith_mod_u32(u_input.a, global2.c.x)), select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), true), func_1(vec4<bool>(false, false, false, true), false, -457f)), vec4<bool>(global2.b != global2.b, any(vec3<bool>(true, true, false)), global2.c.x >= u_input.a, true), vec4<bool>(-2147483647i == global2.b, global2.d > -411f, true, true))), _wgslsmith_f_op_f32(-409f * _wgslsmith_f_op_f32(-1306f - global2.d)) == _wgslsmith_f_op_f32(f32(-1f) * -766f), Struct_3(func_3(~firstLeadingBit(vec2<u32>(1u, 87832u)), global2.d, vec3<i32>(_wgslsmith_clamp_i32(global2.b, -1i, global2.b), global2.b, _wgslsmith_mult_i32(global2.b, global2.b))), Struct_1(4294967295u | _wgslsmith_div_u32(4294967295u, u_input.a), _wgslsmith_mod_i32(1i, abs(-61933i)), global2.c, global2.d), Struct_2(~_wgslsmith_mult_vec3_i32(vec3<i32>(global2.b, 26241i, global2.b), vec3<i32>(global2.b, -1i, global2.b)), u_input.a, select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, false))))));
    let var_0 = Struct_1(0u, global2.b, ~max(global2.c >> (global2.c % vec3<u32>(32u)), global2.c), _wgslsmith_f_op_f32(floor(global2.d)));
    var var_1 = func_3(vec2<u32>(~1u, ~(global2.a ^ 1u)), _wgslsmith_f_op_f32(func_3(reverseBits(vec2<u32>(u_input.a, global2.a)), _wgslsmith_f_op_f32(ceil(func_4(var_0.d, global1[_wgslsmith_index_u32(74499u, 22u)], false, Struct_3(Struct_1(u_input.a, global2.b, global2.c, global2.d), Struct_1(global2.c.x, 32654i, vec3<u32>(22347u, 127712u, 0u), -747f), global1[_wgslsmith_index_u32(u_input.a, 22u)])).d)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.b, global2.b, global2.b), vec3<i32>(var_0.b, var_0.b, 18533i)), -vec3<i32>(global2.b, 0i, -20227i), firstTrailingBit(vec3<i32>(global2.b, var_0.b, var_0.b)))).d * _wgslsmith_f_op_f32(-1278f + func_3(var_0.c.yz, global2.d, func_2(false, vec3<i32>(68068i, -2147483647i, 9753i), vec4<u32>(4294967295u, global2.a, global2.a, u_input.a))).d)), -_wgslsmith_sub_vec3_i32(vec3<i32>(-26120i, global2.b, var_0.b) ^ vec3<i32>(global2.b, 28856i, var_0.b), _wgslsmith_mod_vec3_i32(vec3<i32>(-35085i, global2.b, global2.b), vec3<i32>(global2.b, -15806i, var_0.b))) >> ((var_0.c ^ firstTrailingBit(var_0.c)) % vec3<u32>(32u)));
    global0 = array<Struct_3, 19>();
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(35829u, abs(_wgslsmith_sub_u32(16054u, var_1.a))) | var_1.c.yx, ~var_1.c.yx);
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.x);
}

