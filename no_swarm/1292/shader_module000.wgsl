struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec3<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: i32;

var<private> global2: array<i32, 31> = array<i32, 31>(-1755i, 0i, 1i, i32(-2147483648), 1i, -19068i, 28006i, 1i, 0i, -49259i, 2147483647i, 0i, 1i, 23377i, -16870i, -1i, 9115i, 1820i, 1i, 2147483647i, 2147483647i, 14097i, -60629i, -6948i, -10534i, 1i, 67265i, -1i, 49097i, 1i, i32(-2147483648));

var<private> global3: array<i32, 15>;

var<private> global4: vec2<u32> = vec2<u32>(26654u, 39231u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> f32 {
    global2 = array<i32, 31>();
    var var_0 = ~arg_0 >> (0u % 32u);
    var_0 = countOneBits(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.x, u_input.a.x, u_input.a.x, global4.x), vec4<u32>(39784u, 0u, 0u, 0u), vec4<u32>(0u, 10818u, 81503u, 4294967295u)), vec4<u32>(0u, u_input.a.x, 10968u, arg_0))));
    let var_1 = 4294967295u;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1833f, _wgslsmith_f_op_f32(-1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-866f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(362f))))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: bool, arg_3: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(4294967295u))));
    var_0 = -1004f;
    var_0 = 1f;
    let var_1 = -abs(~(-(vec3<i32>(277i, u_input.b, global3[_wgslsmith_index_u32(19429u, 15u)]) | vec3<i32>(u_input.b, 0i, global3[_wgslsmith_index_u32(u_input.a.x, 15u)]))));
    let var_2 = any(!vec3<bool>(false, any(vec4<bool>(true, true, arg_2, true)), arg_2 != any(vec2<bool>(arg_2, arg_2))));
    return Struct_3(arg_0, reverseBits(u_input.a.x), firstTrailingBit(~(u_input.a.x & 39353u) >> (_wgslsmith_clamp_u32(u_input.a.x, ~global4.x, 1u << (0u % 32u)) % 32u)), 1676f);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_4(vec3<u32>(0u, 4294967295u, 4294967295u), Struct_2(Struct_1(1u, !select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, true), false), _wgslsmith_f_op_f32(round(arg_0.a.x)), vec2<bool>(arg_2, select(arg_2, arg_2, arg_2)), abs(vec3<i32>(global2[_wgslsmith_index_u32(21372u, 31u)], -64348i, 0i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(361f, -967f, -1128f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.a.x, -1000f, -766f))), arg_2)) * vec3<f32>(_wgslsmith_f_op_f32(func_3(1u)), _wgslsmith_f_op_f32(min(arg_0.a.x, 1000f)), _wgslsmith_f_op_f32(abs(-1365f)))), vec4<i32>(abs(abs(1i)), -62049i, abs(u_input.b), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~arg_0.c, 31u)], global2[_wgslsmith_index_u32(~4294967295u, 31u)])), u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(72770u, arg_0.b), global4.x, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(38061u, 52757u, u_input.a.x), vec3<u32>(28685u, u_input.a.x, 53118u)) << (select(vec3<u32>(u_input.a.x, 100363u, 1u), vec3<u32>(32538u, 20624u, 9814u), arg_2) % vec3<u32>(32u))) & vec3<u32>(select(firstLeadingBit(49568u), 1u, true), _wgslsmith_div_u32(abs(global4.x), u_input.a.x), 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -338f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(max(arg_0.a.x, -459f)))), arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d + -108f) - arg_0.d))), _wgslsmith_add_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(global2[_wgslsmith_index_u32(arg_0.c, 31u)], global2[_wgslsmith_index_u32(arg_0.b, 31u)], -2147483647i, 0i)) << (vec4<u32>(_wgslsmith_add_u32(102943u, u_input.a.x), reverseBits(arg_0.c), 4294967295u, countOneBits(arg_0.c)) % vec4<u32>(32u)), reverseBits(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(arg_1, global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)], u_input.b)), -vec4<i32>(u_input.b, arg_1, global3[_wgslsmith_index_u32(arg_0.c, 15u)], global2[_wgslsmith_index_u32(5899u, 31u)]), -vec4<i32>(u_input.b, 0i, arg_1, global2[_wgslsmith_index_u32(u_input.a.x, 31u)])))));
    global0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(~((global4.x << (arg_0.b % 32u)) ^ ~global4.x), ~4294967295u), (_wgslsmith_sub_u32(global4.x, _wgslsmith_sub_u32(4294967295u, 0u)) ^ func_2(arg_0.a, -633f, all(vec4<bool>(false, arg_2, var_0.b.a.d.x, var_0.b.a.b.x)), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], arg_1)).b) ^ 1u);
    var var_1 = var_0.a;
    var var_2 = Struct_1(12831u, !var_0.b.a.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d.x))), !(!select(select(var_0.b.a.d, var_0.b.a.b, false), !vec2<bool>(false, arg_2), arg_2)), _wgslsmith_div_vec3_i32(~(~vec3<i32>(1i, global3[_wgslsmith_index_u32(92438u, 15u)], 9392i)), var_0.b.a.e));
    var var_3 = Struct_1(~global4.x << (u_input.a.x % 32u), vec2<bool>(true, !any(vec3<bool>(true, var_2.b.x, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(765f + 445f) + _wgslsmith_f_op_f32(-1000f * -123f)) + 424f), 152f)), select(select(var_0.b.a.d, var_0.b.a.d, _wgslsmith_dot_vec2_i32(var_0.b.a.e.xz, var_0.e.zz) == ~6567i), vec2<bool>(true, true), arg_2), vec3<i32>(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 15u)], ~reverseBits(-var_2.e.x), ((arg_1 >> (0u % 32u)) ^ 1i) >> (var_2.a % 32u)));
    return var_0.b.a;
}

fn func_5(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_1) -> Struct_4 {
    global3 = array<i32, 15>();
    let var_0 = vec2<bool>(any(!select(vec2<bool>(true, true), arg_3.b, arg_0.d)), true);
    var var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.c.x)))))), 709f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.c.x)))), _wgslsmith_div_f32(arg_0.a.d, -3209f), arg_0.d, -1i);
    let var_2 = _wgslsmith_clamp_vec4_i32(firstLeadingBit((_wgslsmith_div_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(global4.x, 15u)], global2[_wgslsmith_index_u32(56778u, 31u)], 54451i, global3[_wgslsmith_index_u32(50552u, 15u)]), arg_1) << ((vec4<u32>(arg_0.a.b, arg_3.a, global4.x, arg_0.a.c) ^ vec4<u32>(global4.x, u_input.a.x, 24697u, 10437u)) % vec4<u32>(32u))) | vec4<i32>(8915i, arg_2, -37968i & u_input.b, abs(u_input.b))), _wgslsmith_mult_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(2147483647i, 0i, 61306i, arg_3.e.x))), ~(-(~arg_1))), arg_1);
    global4 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(select(arg_0.b.ww, vec2<u32>(_wgslsmith_add_u32(u_input.a.x, var_1.c), min(26545u, global4.x)), !arg_0.d & !arg_3.b.x), _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(23114u, 53442u), vec2<u32>(arg_0.e, 1u)), min(arg_0.b.ww & vec2<u32>(56459u, 1u), vec2<u32>(var_1.b, arg_3.a)))), arg_0.b.wx, vec2<u32>(arg_3.a, 22526u));
    return Struct_4(arg_0.b.yyz, Struct_2(func_4(Struct_3(vec3<f32>(516f, -367f, -155f), select(var_1.b, global4.x, var_0.x), ~global4.x, arg_0.a.d), u_input.b, true), arg_0.c, _wgslsmith_mult_vec4_i32(select(~arg_1, vec4<i32>(0i, arg_2, arg_1.x, arg_3.e.x), true), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -35766i, -1i, arg_1.x) >> (arg_0.b % vec4<u32>(32u)), var_2 << (arg_0.b % vec4<u32>(32u)))), vec2<u32>(~global4.x, max(abs(0u), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_1.b, 40491u))))), arg_0.b.yyy | vec3<u32>(54444u, firstLeadingBit(abs(12558u)), firstTrailingBit(u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.d, var_1.d, arg_0.a.a.x, -514f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, 944f, arg_3.c, 454f)))))), _wgslsmith_clamp_vec4_i32(arg_1 & -var_2, var_2, abs(~vec4<i32>(u_input.b, global3[_wgslsmith_index_u32(1u, 15u)], 28225i, global3[_wgslsmith_index_u32(var_1.c, 15u)]))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, -1734f, 1000f)))), ~(global4.x << (u_input.a.x % 32u)), abs(1u) >> (firstTrailingBit(global4.x) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(355f)) * _wgslsmith_f_op_f32(681f + -842f))), ~vec4<u32>(_wgslsmith_add_u32(16102u, 1u), u_input.a.x, 4294967295u, ~75650u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(997f, -309f, 531f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2498f, -116f, -271f) * vec3<f32>(387f, -338f, -1078f))))), true, firstTrailingBit(u_input.a.x << (0u % 32u))), vec4<i32>(-1i) * -min(vec4<i32>(global2[_wgslsmith_index_u32(23622u, 31u)], global3[_wgslsmith_index_u32(0u, 15u)], 1i, global3[_wgslsmith_index_u32(35747u, 15u)]), -vec4<i32>(2257i, global3[_wgslsmith_index_u32(global4.x, 15u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)])), abs(global2[_wgslsmith_index_u32(0u, 31u)]), func_4(func_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(355f)), _wgslsmith_f_op_f32(f32(-1f) * -583f), -363f), -953f, true, global3[_wgslsmith_index_u32(~1u, 15u)]), global3[_wgslsmith_index_u32(abs(~(u_input.a.x ^ 39108u)), 15u)], true || (~10155u <= (4294967295u >> (global4.x % 32u)))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, -450f, var_0.d.x) - vec3<f32>(-1359f, -1000f, 408f)))), ~firstTrailingBit(67216u), 51717u, var_0.d.x);
    let var_2 = func_5(Struct_5(func_2(_wgslsmith_div_vec3_f32(var_0.d.yyy, vec3<f32>(var_1.a.x, var_0.b.b.x, var_1.a.x)), _wgslsmith_f_op_f32(-var_1.d), true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(max(var_1.c, var_0.a.x), _wgslsmith_mod_u32(6847u, var_1.c)), 31u)]), ~vec4<u32>(global4.x, abs(global4.x), ~40210u, 39962u), vec3<f32>(var_0.b.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x * var_1.d), _wgslsmith_f_op_f32(-1758f - var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * -1875f)), !(true && (false | var_0.b.a.d.x)), var_1.c ^ abs(1u)), var_0.e, global2[_wgslsmith_index_u32(~reverseBits(~var_1.b), 31u)] | u_input.b, func_5(Struct_5(Struct_3(vec3<f32>(1085f, var_1.d, var_0.d.x), 4294967295u, var_1.c, 1086f), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 59162u, 0u) << (vec4<u32>(global4.x, global4.x, var_0.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(1u, u_input.a.x, 1650u, 19896u), vec4<u32>(global4.x, var_0.a.x, global4.x, u_input.a.x)), func_5(Struct_5(Struct_3(var_1.a, 3078u, 4294967295u, var_1.a.x), vec4<u32>(var_0.c.x, 19507u, var_1.b, var_1.c), vec3<f32>(-1000f, var_0.d.x, -370f), var_0.b.a.b.x, var_0.b.a.a), vec4<i32>(u_input.b, u_input.b, 1i, -15637i) << (vec4<u32>(11108u, var_0.c.x, 1u, 3989u) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 15u)], var_0.b.a).d.yzy, true, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x, 14418u), u_input.a.x, ~84076u)), vec4<i32>(_wgslsmith_dot_vec2_i32(func_5(Struct_5(Struct_3(var_1.a, var_0.a.x, 41728u, var_1.a.x), vec4<u32>(30045u, global4.x, 4294967295u, 12142u), vec3<f32>(-213f, var_0.d.x, 593f), false, var_0.a.x), var_0.b.c, var_0.e.x, Struct_1(32607u, vec2<bool>(false, var_0.b.a.d.x), var_1.a.x, var_0.b.a.b, vec3<i32>(-9809i, -1i, u_input.b))).b.a.e.xz, _wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(5999u, 31u)]), var_0.e.yw, var_0.e.zy)), global3[_wgslsmith_index_u32(var_0.a.x, 15u)], -global3[_wgslsmith_index_u32(u_input.a.x, 15u)], 2147483647i), var_0.b.c.x, func_4(Struct_3(var_0.d.yyx, 0u, ~var_1.b, _wgslsmith_f_op_f32(floor(606f))), _wgslsmith_dot_vec4_i32(var_0.b.c, firstLeadingBit(var_0.e)), _wgslsmith_f_op_f32(-var_1.d) < _wgslsmith_f_op_f32(max(var_1.d, 1805f)))).b.a).b;
    let var_3 = _wgslsmith_dot_vec4_i32((var_2.c >> (~vec4<u32>(67190u, var_2.a.a, 1u, var_0.c.x) % vec4<u32>(32u))) << (abs(vec4<u32>(var_1.b, 55306u, 20075u, 4973u) ^ vec4<u32>(4294967295u, u_input.a.x, var_2.d.x, var_0.a.x)) % vec4<u32>(32u)), -func_5(Struct_5(Struct_3(var_1.a, u_input.a.x, 13114u, 1779f), vec4<u32>(4294967295u, 0u, 4294967295u, 56677u), var_1.a, var_2.a.d.x, global4.x), vec4<i32>(-13897i, var_0.b.c.x, var_0.b.a.e.x, var_0.b.c.x), firstTrailingBit(var_0.e.x), func_5(Struct_5(Struct_3(vec3<f32>(var_0.d.x, 521f, var_0.d.x), var_0.b.a.a, 0u, var_0.b.b.x), vec4<u32>(4294967295u, 78316u, global4.x, var_0.b.a.a), vec3<f32>(827f, var_0.d.x, 180f), false, global4.x), vec4<i32>(9266i, -20645i, global3[_wgslsmith_index_u32(var_0.c.x, 15u)], global2[_wgslsmith_index_u32(0u, 31u)]), global2[_wgslsmith_index_u32(u_input.a.x, 31u)], Struct_1(1u, var_0.b.a.d, var_1.d, var_0.b.a.d, var_2.a.e)).b.a).b.c) <= _wgslsmith_clamp_i32(~(-5781i ^ global3[_wgslsmith_index_u32(~var_1.c, 15u)]), -abs(2147483647i & var_2.c.x), abs(-70038i));
    var var_4 = ~vec2<u32>(~var_2.a.a, var_2.d.x);
    return var_2;
}

fn func_6(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = ~global4.x;
    var var_1 = Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -676f), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.a.c)))), global4.x, _wgslsmith_sub_u32(~max(103845u, 1u), 1u), -410f), ~abs((vec4<u32>(0u, 0u, arg_0.d.x, var_0) | vec4<u32>(global4.x, global4.x, 53589u, 1u)) | min(vec4<u32>(global4.x, 4294967295u, arg_0.d.x, var_0), vec4<u32>(var_0, arg_0.d.x, u_input.a.x, global4.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-285f, -1106f, arg_0.b.x)) - _wgslsmith_f_op_vec3_f32(arg_0.b + arg_0.b)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c, 473f, 113f) + vec3<f32>(726f, 849f, arg_0.b.x)), vec3<f32>(arg_0.a.c, _wgslsmith_f_op_f32(floor(204f)), _wgslsmith_div_f32(arg_0.b.x, arg_0.a.c))))), !func_1().a.b.x, 0u);
    var var_2 = Struct_5(func_2(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0.a.c)))) * 1000f), false, ~(~_wgslsmith_dot_vec4_i32(arg_0.c, vec4<i32>(4117i, global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(arg_0.d.x, 15u)], 2147483647i)))), vec4<u32>(4294967295u, firstLeadingBit(global4.x), 1u ^ _wgslsmith_mod_u32(~var_0, func_4(var_1.a, u_input.b, var_1.d).a), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(79689u, 0u) ^ vec2<u32>(30352u, u_input.a.x), ~u_input.a), _wgslsmith_mod_vec2_u32(arg_0.d, u_input.a) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 47711u), var_1.b.xz) % vec2<u32>(32u)))), vec3<f32>(181f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1f, 689f)))), var_1.c.x), true, 1u);
    global0 = 19241u;
    var var_3 = Struct_5(func_2(var_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.a.x, _wgslsmith_f_op_f32(var_1.c.x + -1068f))) + _wgslsmith_f_op_f32(-583f + _wgslsmith_f_op_f32(arg_0.b.x - 1483f))), var_2.d, ~1i), vec4<u32>(arg_0.a.a, firstLeadingBit(var_2.a.c) << (61787u % 32u), abs(1u), ~(_wgslsmith_sub_u32(0u, u_input.a.x) | u_input.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a.a), func_5(Struct_5(func_2(vec3<f32>(arg_0.b.x, var_2.c.x, -1310f), arg_0.a.c, true, 2147483647i), vec4<u32>(var_1.b.x, arg_0.a.a, 4294967295u, 32793u), vec3<f32>(-1443f, -149f, var_1.a.a.x), true, _wgslsmith_mult_u32(37748u, 1u)), abs(arg_0.c) & -arg_0.c, global2[_wgslsmith_index_u32(global4.x ^ _wgslsmith_sub_u32(4294967295u, var_1.a.c), 31u)], arg_0.a).b.b), !func_4(func_2(_wgslsmith_f_op_vec3_f32(sign(var_2.a.a)), arg_0.b.x, true, func_5(Struct_5(Struct_3(var_1.c, 1u, var_2.a.c, 370f), var_1.b, arg_0.b, false, var_0), vec4<i32>(-26605i, global3[_wgslsmith_index_u32(arg_0.a.a, 15u)], 15642i, -19665i), -1i, Struct_1(var_0, arg_0.a.b, -1978f, arg_0.a.b, vec3<i32>(-2147483647i, global3[_wgslsmith_index_u32(var_1.b.x, 15u)], 0i))).b.a.e.x), ~_wgslsmith_add_i32(-43858i, 39294i), !select(arg_0.a.b.x, false, var_1.d)).b.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, arg_0.d.x), 1u));
    return !select(select(!(!vec3<bool>(true, false, var_2.d)), vec3<bool>(false, true | var_2.d, false), var_2.d), !vec3<bool>(true & var_3.d, u_input.a.x == 1u, var_1.d), _wgslsmith_add_u32(~1155u, func_1().d.x) > 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, false, any(func_6(func_1())));
    let var_1 = 28498i;
    global0 = ~countOneBits(~1u);
    let var_2 = func_5(Struct_5(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-511f, 741f, 795f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !(!var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(global4.x, 15u)], global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), ~vec2<i32>(1i, 2147483647i))), select(vec4<u32>(global4.x, u_input.a.x, global4.x, 51698u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, global4.x, global4.x, global4.x), vec4<u32>(13996u, global4.x, global4.x, global4.x)), var_0.x) & vec4<u32>(select(global4.x, u_input.a.x, true), _wgslsmith_add_u32(4294967295u, u_input.a.x), countOneBits(33569u), min(global4.x, u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1002f, 718f, 1088f)), vec3<f32>(-1114f, 1034f, -306f), vec3<bool>(true, var_0.x, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(856f, -211f, 819f) - vec3<f32>(-822f, 359f, 365f)))), false, ~min(~u_input.a.x, u_input.a.x >> (47260u % 32u))), firstLeadingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, 2147483647i, u_input.b, 1i), abs(vec4<i32>(global3[_wgslsmith_index_u32(18025u, 15u)], 17945i, global3[_wgslsmith_index_u32(u_input.a.x, 15u)], -1i)))), -2147483647i, Struct_1(u_input.a.x, func_4(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1145f, -349f, 816f)), _wgslsmith_f_op_f32(f32(-1f) * -1081f), func_4(Struct_3(vec3<f32>(372f, -1000f, -603f), u_input.a.x, u_input.a.x, -1033f), u_input.b, true).b.x, ~(-21526i)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, 2147483647i)), -vec2<i32>(64920i, 1i)), false).b, -476f, func_4(Struct_3(vec3<f32>(900f, 341f, 159f), global4.x, global4.x, _wgslsmith_f_op_f32(1628f - 683f)), min(global3[_wgslsmith_index_u32(4294967295u, 15u)], -global2[_wgslsmith_index_u32(102175u, 31u)]), func_6(func_1()).x).b, vec3<i32>(1i, -var_1, _wgslsmith_mod_i32(~(-2147483647i), firstLeadingBit(-1i))))).b;
    let var_3 = 466f;
    global4 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_2.a.c)));
}

