struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13>;

var<private> global1: array<f32, 5> = array<f32, 5>(565f, -1235f, -1000f, -1000f, 198f);

var<private> global2: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(vec2<u32>(53804u, 3366u), 1321f), Struct_3(vec2<u32>(80285u, 0u), 1363f), Struct_3(vec2<u32>(0u, 1250u), -1082f));

var<private> global3: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(false, 128f, vec4<u32>(57404u, 13528u, 3334u, 94068u), vec3<bool>(false, false, true), Struct_3(vec2<u32>(12048u, 40043u), 197f)), Struct_5(true, 389f, vec4<u32>(59967u, 1u, 1u, 1u), vec3<bool>(true, true, false), Struct_3(vec2<u32>(0u, 57113u), -718f)), Struct_5(false, -823f, vec4<u32>(20790u, 1u, 0u, 49552u), vec3<bool>(false, true, true), Struct_3(vec2<u32>(1u, 571u), -358f)), Struct_5(false, 1034f, vec4<u32>(4294967295u, 8919u, 4294967295u, 4268u), vec3<bool>(false, true, true), Struct_3(vec2<u32>(1u, 1u), 206f)), Struct_5(false, -1147f, vec4<u32>(1u, 26322u, 1u, 1u), vec3<bool>(false, true, true), Struct_3(vec2<u32>(31931u, 97287u), -1423f)));

var<private> global4: array<u32, 1> = array<u32, 1>(59358u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> i32 {
    var var_0 = Struct_2(vec3<i32>(-1i) * -(-arg_1.zyx & -vec3<i32>(u_input.a.x, 2147483647i, arg_1.x)), Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), arg_1.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(970f, arg_0, -1000f)))))));
    global0 = array<vec2<i32>, 13>();
    var_0 = Struct_2(_wgslsmith_add_vec3_i32(arg_1.xxy, abs(vec3<i32>(var_0.a.x, reverseBits(arg_1.x), _wgslsmith_dot_vec3_i32(arg_1.yyz, var_0.a)))), Struct_1(select(!vec3<bool>(var_0.b.a.x, var_0.b.a.x, false), !var_0.b.a, var_0.b.a), u_input.a.x, _wgslsmith_div_vec3_f32(var_0.b.c, var_0.b.c)));
    var var_1 = select(select(select(select(var_0.b.a, var_0.b.a, var_0.b.a.x), var_0.b.a, all(var_0.b.a)), vec3<bool>(true, false, select(false, var_0.b.a.x | var_0.b.a.x, var_0.b.a.x)), !select(!vec3<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), vec3<bool>(var_0.b.a.x, false, var_0.b.a.x), !vec3<bool>(var_0.b.a.x, false, true))), vec3<bool>(872f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3329u, 1u)], 5u)])), false && (var_0.b.a.x | var_0.b.a.x), false && (false & var_0.b.a.x)), any(vec2<bool>((var_0.b.c.x <= global1[_wgslsmith_index_u32(1u, 5u)]) == (true || var_0.b.a.x), var_0.b.a.x)));
    let var_2 = reverseBits(_wgslsmith_div_i32(arg_1.x, -43042i));
    return select(u_input.a.x, -23419i, true);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_5) -> vec4<i32> {
    global4 = array<u32, 1>();
    global1 = array<f32, 5>();
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-872f, arg_2.e.b, 1236f, global1[_wgslsmith_index_u32(21235u, 5u)])) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47494u, 1u)], 1u)], 5u)], 1577f, arg_2.e.b, -1181f), vec4<f32>(1000f, global1[_wgslsmith_index_u32(arg_2.c.x, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], arg_2.b)))))) * vec4<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(reverseBits(30438u), 5u)], -1052f), _wgslsmith_f_op_f32(419f - _wgslsmith_f_op_f32(1019f - arg_2.b)), arg_2.b, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(1u), 5u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.b, _wgslsmith_f_op_f32(round(arg_2.e.b)), 271f, 1384f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_2.b, global1[_wgslsmith_index_u32(68256u, 5u)], global1[_wgslsmith_index_u32(arg_1, 5u)]))))));
    let var_1 = u_input.a.x;
    var var_2 = 1u;
    return _wgslsmith_div_vec4_i32(vec4<i32>(var_1, ~0i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -12682i, 0i, 15949i), vec4<i32>(0i, u_input.a.x, -12601i, arg_0)), ~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), 65239i) << (firstTrailingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_2.c, vec4<u32>(arg_1, arg_2.c.x, 13941u, arg_2.c.x), arg_2.c), vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 1u)], 4294967295u, 0u, global4[_wgslsmith_index_u32(48495u, 1u)]))) % vec4<u32>(32u)), vec4<i32>(~u_input.a.x, -2147483647i, (i32(-1i) * -1i) & select(func_3(-1000f, vec4<i32>(2147483647i, 0i, -27956i, arg_0)), var_1, var_1 >= arg_0), ~(u_input.a.x ^ -8846i)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<i32>) -> Struct_4 {
    return Struct_4(Struct_1(select(select(vec3<bool>(arg_1, arg_1, false), !vec3<bool>(false, arg_1, arg_1), all(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, !arg_1), any(vec4<bool>(arg_1, true, true, false)) && !arg_1), 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1034f, 1000f, global1[_wgslsmith_index_u32(60552u, 5u)]) - vec3<f32>(1299f, arg_0.b, arg_0.b))))), any(!vec4<bool>(true, -392i < u_input.a.x, true, arg_1 & arg_1)), select(vec2<bool>(true, arg_1), !vec2<bool>(!arg_1, arg_1), 0i > countOneBits(arg_2.x)));
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    global4 = array<u32, 1>();
    global4 = array<u32, 1>();
    var var_0 = arg_0.a.b;
    var var_1 = Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.b, arg_0.a.b, arg_0.a.b), vec3<i32>(u_input.a.x, arg_0.a.b, 2147483647i)) ^ ~vec3<i32>(0i, 37711i, u_input.a.x), ~firstTrailingBit(vec3<i32>(arg_0.a.b, u_input.a.x, 2147483647i))) & _wgslsmith_mod_vec3_i32(vec3<i32>(~arg_0.a.b, -44037i, func_4(Struct_3(vec2<u32>(70919u, 1u), -1000f), true, vec4<i32>(arg_0.a.b, -2147483647i, -1i, u_input.a.x)).a.b), -abs(vec3<i32>(u_input.a.x, -1i, -7133i))), arg_0.a);
    let var_2 = func_4(global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)), 3u)], arg_0.c.x, -vec4<i32>(-1744i, func_3(arg_0.a.c.x, vec4<i32>(67563i, -1i, -2147483647i, -1i)), ~u_input.a.x, arg_0.a.b) >> (reverseBits(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8402u, 1u)], 1u)], 1u, 4294967295u, 1u << (global4[_wgslsmith_index_u32(58316u, 1u)] % 32u))) % vec4<u32>(32u)));
    return Struct_2(vec3<i32>(_wgslsmith_mod_i32(func_4(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(select(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(45555u, 1u)], 1u)], 1u)], false), 1u)], 1u)], 3u)], global4[_wgslsmith_index_u32(40821u, 1u)] == 1u, vec4<i32>(var_1.a.x, -2147483647i, 0i, 11027i)).a.b, _wgslsmith_mult_i32(1i, u_input.a.x & arg_0.a.b)), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(~1i, reverseBits(4104i), var_1.a.x, -arg_0.a.b), vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, 26076i, arg_0.a.b), min(var_2.a.b, 2147483647i), i32(-1i) * -1i, _wgslsmith_add_i32(31698i, arg_0.a.b)))), func_4(Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)]), max(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 504u), vec2<u32>(global4[_wgslsmith_index_u32(20116u, 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 1u)], 1u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f - arg_0.a.c.x))), var_1.b.a.x, countOneBits(_wgslsmith_div_vec4_i32(abs(vec4<i32>(38619i, 66688i, 1i, u_input.a.x)), vec4<i32>(var_1.b.b, 2077i, arg_0.a.b, var_2.a.b)))).a);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<i32> {
    let var_0 = func_5(func_4(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3695u, 1u)], 3u)], !(any(arg_1.a) & all(vec3<bool>(false, true, arg_1.a.x))), abs(func_2(_wgslsmith_mult_i32(arg_2.x, u_input.a.x), ~arg_0.a.x, global3[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(0u, 1u)], 5u)]))));
    let var_1 = func_4(Struct_3(max(select(arg_0.a, arg_0.a, arg_1.a.zx), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.a.x, 1u)], 1u)], 1u)] >> (arg_0.a.x % 32u), arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(636f)) + global1[_wgslsmith_index_u32(~74319u, 5u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 5u)])))), var_0.b.a.x, vec4<i32>(-arg_1.b, -_wgslsmith_sub_i32(12178i, _wgslsmith_dot_vec3_i32(var_0.a, var_0.a)), 0i, _wgslsmith_clamp_i32(~u_input.a.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -46934i, 2147483647i), vec3<i32>(arg_2.x, arg_1.b, 3099i)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_2, arg_2), i32(-1i) * -1i), firstLeadingBit(0i << (global4[_wgslsmith_index_u32(arg_0.a.x, 1u)] % 32u)))));
    var var_2 = reverseBits(firstLeadingBit(vec2<i32>(2147483647i, abs(_wgslsmith_div_i32(u_input.a.x, 34338i)))));
    var var_3 = var_1.a.c.x;
    var var_4 = Struct_5(var_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 5u)], arg_0.b, false)), 830f))) - 1000f), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u >> (arg_0.a.x % 32u), ~global4[_wgslsmith_index_u32(4294967295u, 1u)], _wgslsmith_dot_vec3_u32(vec3<u32>(46375u, 8866u, 1u), vec3<u32>(1u, 50283u, arg_0.a.x)), 44906u), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.a.x, 4294967295u, 0u, global4[_wgslsmith_index_u32(arg_0.a.x, 1u)]), vec4<u32>(4294967295u, 4294967295u, global4[_wgslsmith_index_u32(17991u, 1u)], global4[_wgslsmith_index_u32(49374u, 1u)]) & vec4<u32>(2279u, arg_0.a.x, 0u, arg_0.a.x)))), select(func_4(Struct_3(~arg_0.a, _wgslsmith_f_op_f32(-arg_0.b)), true, ~vec4<i32>(arg_1.b, var_1.a.b, 0i, var_0.a.x) >> (~vec4<u32>(71763u, global4[_wgslsmith_index_u32(arg_0.a.x, 1u)], 4294967295u, 35302u) % vec4<u32>(32u))).a.a, func_5(var_1).b.a, false), Struct_3(vec2<u32>(1u, ~_wgslsmith_add_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c.x)) + _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(29208u, 5u)], -778f)))));
    return _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(max(arg_2.x, 0i << (var_4.c.x % 32u)), _wgslsmith_add_i32(countOneBits(10307i), u_input.a.x), 0i, min(42590i, 2147483647i) << (~4294967295u % 32u))), vec4<i32>(-47471i, 1i, min(_wgslsmith_div_i32(var_0.b.b, 1i), var_1.a.b), ~(-4032i) >> (0u % 32u)) << (var_4.c % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(-1015i, -u_input.a.x) >> (31112u % 32u), u_input.a.x, i32(-1i) * -(u_input.a.x | 33714i), -1i) ^ _wgslsmith_div_vec4_i32(max(~func_1(Struct_3(vec2<u32>(10888u, 1u), 776f), Struct_1(vec3<bool>(false, false, true), 0i, vec3<f32>(-525f, global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 5u)])), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), vec4<i32>(~(-54299i), 50196i >> (global4[_wgslsmith_index_u32(1u, 1u)] % 32u), 60567i >> (global4[_wgslsmith_index_u32(22244u, 1u)] % 32u), u_input.a.x)), vec4<i32>(u_input.a.x, ~(-1685i), 1i, -8014i));
    var var_2 = func_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(firstTrailingBit(1u), ~22705u, global4[_wgslsmith_index_u32(firstLeadingBit(54381u), 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(reverseBits(0u), 1u)], 1u)]), vec4<u32>(988u, countOneBits(global4[_wgslsmith_index_u32(7456u, 1u)]), global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 1u)]), vec4<bool>(!var_0, false & var_0, false, var_0)), vec4<u32>(_wgslsmith_add_u32(~62699u, firstLeadingBit(28347u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 1u)], 1u)], global4[_wgslsmith_index_u32(107588u, 1u)], 9372u), vec3<u32>(0u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(88000u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)])), _wgslsmith_div_u32(reverseBits(23396u), 1u), _wgslsmith_add_u32(select(global4[_wgslsmith_index_u32(30133u, 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], false), 72141u & global4[_wgslsmith_index_u32(1u, 1u)]))), 3u)], false, _wgslsmith_mult_vec4_i32(~vec4<i32>(-23630i, 2147483647i, var_1.x, 1i) >> ((vec4<u32>(44570u, global4[_wgslsmith_index_u32(45877u, 1u)], 4294967295u, 1u) | vec4<u32>(8487u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33595u, 1u)], 1u)], 1u)], global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(1u, 1u)])) % vec4<u32>(32u)), vec4<i32>(~(-9325i), -15728i, u_input.a.x, 0i)) >> (((~vec4<u32>(global4[_wgslsmith_index_u32(0u, 1u)], 4115u, 67252u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)]) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 2735u, global4[_wgslsmith_index_u32(49063u, 1u)], global4[_wgslsmith_index_u32(62169u, 1u)]), vec4<u32>(85047u, 50554u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1391u, 1u)], 1u)])) % vec4<u32>(32u))) & ~vec4<u32>(38211u, global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)])) % vec4<u32>(32u)));
    global3 = array<Struct_5, 5>();
    let var_3 = !var_2.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.c.x))), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(24848u, 1u), 5u)], _wgslsmith_f_op_f32(abs(-1855f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.c.x))), -2380f)), -func_1(global2[_wgslsmith_index_u32(~abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u)]), 3u)], Struct_1(func_4(Struct_3(vec2<u32>(0u, 94784u), var_2.a.c.x), false, vec4<i32>(var_2.a.b, var_2.a.b, var_1.x, -34014i)).a.a, 1i, _wgslsmith_f_op_vec3_f32(exp2(var_2.a.c))), min(var_1.wxw, vec3<i32>(-5476i, 62884i, var_1.x)) ^ countOneBits(var_1.yzw)).yx, 28595i, (vec2<u32>(_wgslsmith_div_u32(3543u, global4[_wgslsmith_index_u32(32434u, 1u)]), abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)])) ^ firstTrailingBit(~vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(51596u, 1u)]))) | _wgslsmith_mult_vec2_u32(select(firstLeadingBit(vec2<u32>(1u, 1u)), select(vec2<u32>(global4[_wgslsmith_index_u32(0u, 1u)], 2185u), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(70336u, 1u)], 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(31026u, 1u)], 1u)], 1u)]), var_2.a.a.zz), !var_2.a.a.zz), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(42965u, 1u)], 1u)], 1u)]), max(vec2<u32>(global4[_wgslsmith_index_u32(51759u, 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(14549u, 1u)], 1u)], 1u)]), vec2<u32>(9720u, 25146u)))));
}

