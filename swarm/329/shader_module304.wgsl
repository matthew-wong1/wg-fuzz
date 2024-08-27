struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
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

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: array<bool, 27> = array<bool, 27>(true, true, true, false, true, true, false, true, true, false, false, true, true, true, false, false, false, true, true, true, true, true, true, false, true, true, true);

var<private> global2: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false));

var<private> global3: array<bool, 25>;

var<private> global4: array<u32, 27>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec2<i32> {
    let var_0 = select(!vec2<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], false, global1[_wgslsmith_index_u32(4294967295u, 27u)])), global3[_wgslsmith_index_u32(u_input.d ^ 22236u, 25u)]), vec2<bool>(true, false), !select(select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 25u)], true), vec2<bool>(false, global3[_wgslsmith_index_u32(59146u, 25u)]), true), !vec2<bool>(false, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 27u)], 25u)]), select(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.d, 25u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(28445u, 27u)]), vec2<bool>(false, true)), vec2<bool>(true, true), any(global2[_wgslsmith_index_u32(u_input.d, 12u)]))));
    var var_1 = _wgslsmith_div_f32(-514f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-834f - 106f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_2 = select(-37182i, ~1i >> (~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(62486u, 1u, 23845u, u_input.d)), ~vec4<u32>(1u, 69389u, u_input.d, u_input.d)), 27u)] % 32u), global3[_wgslsmith_index_u32(64178u, 25u)]);
    var_1 = _wgslsmith_div_f32(-805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-669f, 659f))));
    global1 = array<bool, 27>();
    return _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.yx, u_input.b.yz), u_input.b.zw), max(_wgslsmith_mult_vec2_i32(u_input.b.xw, firstTrailingBit(u_input.b.zy) & reverseBits(u_input.b.yz)), u_input.b.zw & vec2<i32>(-49435i, 31200i)));
}

fn func_2() -> i32 {
    let var_0 = Struct_4(649f, abs(func_3()), _wgslsmith_add_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(u_input.a, u_input.c, -31585i), u_input.b.x, i32(-1i) * -5842i), _wgslsmith_mod_vec3_i32(u_input.b.xwy, select(u_input.b.yyy, vec3<i32>(u_input.b.x, u_input.c, u_input.c), true))));
    global3 = array<bool, 25>();
    var var_1 = reverseBits(_wgslsmith_mod_vec4_i32(reverseBits(u_input.b) ^ abs(firstLeadingBit(u_input.b)), vec4<i32>(select(func_3().x, _wgslsmith_div_i32(var_0.c.x, var_0.c.x), !global3[_wgslsmith_index_u32(31988u, 25u)]), _wgslsmith_mult_i32(u_input.b.x, var_0.c.x), u_input.b.x, _wgslsmith_add_i32(0i, u_input.c))));
    let var_2 = Struct_1(firstTrailingBit(~max(firstTrailingBit(vec4<i32>(u_input.a, 1i, -2147483647i, u_input.c)), vec4<i32>(-12155i, var_0.b.x, var_0.c.x, 49266i) >> (vec4<u32>(u_input.d, global4[_wgslsmith_index_u32(1u, 27u)], u_input.d, 135835u) % vec4<u32>(32u)))), ~vec3<u32>(global4[_wgslsmith_index_u32(1u, 27u)] & (45607u | global4[_wgslsmith_index_u32(u_input.d, 27u)]), 4294967295u ^ firstTrailingBit(1u), 78592u), firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.d, u_input.d, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 27u)], 27u)]), vec4<u32>(2075u, global4[_wgslsmith_index_u32(7578u, 27u)], global4[_wgslsmith_index_u32(17912u, 27u)], global4[_wgslsmith_index_u32(4703u, 27u)])), _wgslsmith_mod_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8896u, 27u)], 27u)], 27u)], 1u, 4294967295u, u_input.d), vec4<u32>(u_input.d, 175u, global4[_wgslsmith_index_u32(u_input.d, 27u)], 5598u))))));
    global1 = array<bool, 27>();
    return ~(-20043i & var_0.c.x);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(42852i, -1i, u_input.a, 14194i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, 4294967295u, 0u), vec4<u32>(1360u, u_input.d, arg_0, 69208u), vec4<u32>(0u, u_input.d, 78648u, 0u)) % vec4<u32>(32u)), vec4<i32>(-17935i, 1i, ~0i, 1i)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, global4[_wgslsmith_index_u32(u_input.d, 27u)], 1u), vec3<u32>(1u, 23351u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0, 27u)], 27u)]) << (vec3<u32>(global4[_wgslsmith_index_u32(u_input.d, 27u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0, 27u)], 27u)], 4294967295u) % vec3<u32>(32u))), vec3<u32>(1u, firstTrailingBit(global4[_wgslsmith_index_u32(u_input.d, 27u)]), arg_0)), select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 25353u, 1u) >> (vec4<u32>(12855u, 4294967295u, arg_0, u_input.d) % vec4<u32>(32u)), vec4<u32>(u_input.d, u_input.d, 4294967295u, 1u)), abs(~vec4<u32>(u_input.d, arg_0, global4[_wgslsmith_index_u32(arg_0, 27u)], 1u)), global1[_wgslsmith_index_u32(33673u, 27u)])), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 66688i, 1i, -4555i) >> (~abs(vec4<u32>(31096u, 10614u, 1u, arg_0)) % vec4<u32>(32u)), reverseBits(u_input.b)), -6416i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f * arg_1.a)))) + 502f);
    let var_2 = ~(_wgslsmith_add_u32(1u & ~u_input.d, reverseBits(0u)) | ~(~arg_0 | 1u));
    var var_3 = arg_1;
    let var_4 = vec4<u32>(17250u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(43227u, 27u)], var_0.a.b.x, u_input.d), vec3<u32>(84628u, 93482u, global4[_wgslsmith_index_u32(var_0.a.c.x, 27u)]) >> (var_0.a.c.yww % vec3<u32>(32u)))), global4[_wgslsmith_index_u32(~(~1u) >> (~arg_0 % 32u), 27u)], var_2);
    return Struct_1(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_sub_i32(677i, u_input.c), arg_1.b.x, var_0.c, u_input.c), ~vec3<u32>(25194u, var_2, 19258u), firstTrailingBit(vec4<u32>(~firstLeadingBit(4294967295u), arg_0, var_2, _wgslsmith_dot_vec4_u32(var_0.a.c, ~var_4))));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(func_4(25402u, Struct_4(-1073f, max(vec2<i32>(u_input.b.x, 11418i), ~u_input.b.yw), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.zxy, u_input.b.zyy), func_2(), func_2())), Struct_4(_wgslsmith_f_op_f32(max(-121f, _wgslsmith_f_op_f32(f32(-1f) * -708f))), u_input.b.ww, vec3<i32>(u_input.a >> (u_input.d % 32u), -u_input.b.x, _wgslsmith_sub_i32(-44i, -2147483647i)))), _wgslsmith_div_vec4_i32(vec4<i32>(~u_input.b.x, u_input.a, 0i, 55741i), -countOneBits(vec4<i32>(u_input.a, -9913i, u_input.b.x, -19670i))), u_input.c);
    global1 = array<bool, 27>();
    var var_1 = ~abs(~u_input.b.yy);
    global3 = array<bool, 25>();
    var var_2 = Struct_2(func_4(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_0.a.c.xwz, var_0.a.c.xxx), var_0.a.c.yxy), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 49723u, 26811u), ~var_0.a.b)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -5621i), vec2<i32>(var_1.x, -2147483647i)), var_0.b.wxz), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -388f), ~vec2<i32>(var_1.x, u_input.b.x), ~firstTrailingBit(vec3<i32>(var_0.b.x, 1i, 1i)))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~u_input.d, ~max(22346u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.a.b.x, 27u)], 27u)]), global4[_wgslsmith_index_u32(70414u, 27u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 63256u), _wgslsmith_clamp_vec2_u32(abs(var_0.a.b.yx), firstTrailingBit(vec2<u32>(1u, global4[_wgslsmith_index_u32(69356u, 27u)])), var_0.a.c.wz))), var_0.a);
    return Struct_4(_wgslsmith_f_op_f32(step(1106f, 1737f)), select(~_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, var_2.c.a.x), vec2<i32>(2147483647i, var_0.a.a.x)), vec2<i32>(u_input.b.x, 2147483647i)), -(~(-vec2<i32>(0i, 2147483647i))), var_2.c.c.x <= 0u), ~(~var_0.a.a.zyx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(countOneBits(0u), 12u)])));
    var var_1 = func_1();
    var var_2 = vec4<bool>(any(vec2<bool>(global3[_wgslsmith_index_u32(firstLeadingBit(0u), 25u)], any(vec4<bool>(false, true, global3[_wgslsmith_index_u32(22984u, 25u)], false)))) | any(select(select(vec3<bool>(global3[_wgslsmith_index_u32(14578u, 25u)], false, global1[_wgslsmith_index_u32(29494u, 27u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], false, false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 25u)], true, false)), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 27u)], 27u)], true), vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(u_input.d, 27u)])), !global1[_wgslsmith_index_u32(46062u, 27u)])), !global1[_wgslsmith_index_u32(63851u, 27u)], all(vec4<bool>(any(select(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 27u)], 12u)], global2[_wgslsmith_index_u32(99123u, 12u)], false)), _wgslsmith_f_op_f32(var_0.x * var_0.x) >= var_0.x, global1[_wgslsmith_index_u32(u_input.d, 27u)], global1[_wgslsmith_index_u32(19220u, 27u)])), !(global4[_wgslsmith_index_u32(~4294967295u, 27u)] == _wgslsmith_mod_u32(firstTrailingBit(4294967295u), 72369u)));
    var var_3 = max(~vec4<i32>(~var_1.c.x, -1i, u_input.c, u_input.c), ~reverseBits(vec4<i32>(0i, 1i, -7440i, 12276i) | u_input.b) | ~(~(~u_input.b)));
    global0 = array<vec3<f32>, 12>();
    let var_4 = _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(0u, 27u)], u_input.d);
    global3 = array<bool, 25>();
    let var_5 = _wgslsmith_mod_vec3_u32(vec3<u32>(27794u, abs(4294967295u), ~u_input.d), firstLeadingBit(vec3<u32>(select(~4294967295u, 1u, any(var_2.xyz)), u_input.d, firstTrailingBit(_wgslsmith_div_u32(4294967295u, u_input.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(92254u), 4294967295u, false));
}

