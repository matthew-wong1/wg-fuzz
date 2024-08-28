struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: i32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(1u, 50782u, 4294967295u, 9461u, 93839u, 1297u, 4294967295u, 20119u, 0u, 4294967295u, 0u, 89375u, 1u, 1u, 4294967295u, 1u, 31700u, 2613u);

var<private> global1: array<bool, 16>;

var<private> global2: vec3<f32> = vec3<f32>(-322f, -706f, 820f);

var<private> global3: array<Struct_3, 19>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<i32>) -> vec3<f32> {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(167f, arg_0.a.x), _wgslsmith_div_f32(arg_1.x, global2.x), arg_2, _wgslsmith_f_op_f32(-arg_2)))), Struct_3(!vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(60787u, u_input.c, global0[_wgslsmith_index_u32(1u, 18u)]), vec3<u32>(67518u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 18u)], 18u)], 18u)], 18u)], u_input.c)), 16u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(4294967295u, 18u)]), 16u)]), vec2<bool>(all(!vec4<bool>(false, global1[_wgslsmith_index_u32(25045u, 16u)], true, true)), any(!vec2<bool>(global1[_wgslsmith_index_u32(81835u, 16u)], global1[_wgslsmith_index_u32(u_input.c, 16u)]))), -u_input.d.x, arg_0.a.yww, !vec2<bool>(global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85054u, 18u)], 18u)], 16u)], any(vec3<bool>(global1[_wgslsmith_index_u32(19702u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(70158u, 16u)])))), _wgslsmith_f_op_f32(sign(arg_0.a.x)), 10454i, vec2<i32>(-40629i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, arg_3.x, 1255i), vec3<i32>(arg_3.x, -1i, 0i)))));
    let var_1 = vec4<bool>((34139i > arg_3.x) | global1[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(u_input.c), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(0u, 18u)], ~1294u), 18u)]), 16u)], false, any(var_0.b.b), !(select(!var_0.b.b.x, false, any(var_0.b.e)) && true));
    global2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1209f, -349f, any(var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - _wgslsmith_div_f32(-1373f, 788f))), 1831f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.zxw))), !(global1[_wgslsmith_index_u32(u_input.c, 16u)] || true)));
    global0 = array<u32, 18>();
    let var_2 = _wgslsmith_add_vec2_u32(select(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(0u, u_input.c)), select(~vec2<u32>(u_input.c, u_input.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(15682u, 4294967295u), vec2<u32>(1269u, global0[_wgslsmith_index_u32(u_input.c, 18u)]), vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12476u, 18u)], 18u)], 18u)])), true), ~vec2<u32>(u_input.c, 0u) >> (select(vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.c, 18u)]), vec2<u32>(global0[_wgslsmith_index_u32(82711u, 18u)], 25285u), var_0.b.e) % vec2<u32>(32u))), countOneBits(~vec2<u32>(u_input.c, u_input.c)), var_0.b.b.x | var_0.b.a.x), vec2<u32>(1u, u_input.c));
    return _wgslsmith_f_op_vec3_f32(max(var_0.b.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.x, global2.x)), _wgslsmith_f_op_f32(191f - var_0.a.a.x), _wgslsmith_f_op_f32(step(817f, 515f))), arg_1.xwx))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: i32) -> vec3<i32> {
    global2 = arg_1;
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<f32>(global2.x, global2.x, arg_1.x, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(386f, global2.x, -848f, global2.x)), -105f, u_input.d.xw | u_input.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1154f, global2.x, 836f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, global2.x, arg_1.x), arg_1, vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(47634u, 16u)], false)))))) - vec3<f32>(559f, global2.x, _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_div_f32(global2.x, arg_1.x)))))));
    let var_0 = abs(_wgslsmith_mult_vec3_u32(firstTrailingBit(min(vec3<u32>(72665u, global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)]), vec3<u32>(0u, 1u, 1u))) << (vec3<u32>(9583u, 0u, _wgslsmith_div_u32(46308u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(90862u, 18u)], 18u)])) % vec3<u32>(32u)), ~select(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], u_input.c, global0[_wgslsmith_index_u32(1u, 18u)]), vec3<u32>(90409u, 20199u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 18u)], 18u)]), vec3<u32>(u_input.c, 1u, global0[_wgslsmith_index_u32(1u, 18u)])), ~vec3<u32>(4294967295u, 1u, u_input.c), any(vec3<bool>(global1[_wgslsmith_index_u32(49298u, 16u)], false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(81065u, 18u)], 16u)])))));
    global0 = array<u32, 18>();
    var var_1 = global3[_wgslsmith_index_u32(~firstTrailingBit(abs(var_0.x >> (~30802u % 32u))), 19u)];
    return min(_wgslsmith_add_vec3_i32(arg_0, select(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_0.x, arg_0.x), vec3<i32>(1i, var_1.c, 48032i)), vec3<i32>(arg_0.x, ~(-52908i), _wgslsmith_mult_i32(u_input.b, 1i)), !(var_0.x < 4294967295u))), countOneBits(firstTrailingBit(arg_0) << (_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 1u), select(var_0, var_0, var_1.e.x)) % vec3<u32>(32u))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = ~(firstTrailingBit(abs(_wgslsmith_mult_vec3_i32(u_input.d.xwz, u_input.d.yzx))) >> (select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, 1u, u_input.c), ~vec3<u32>(0u, arg_2.x, 1u)), ~vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(u_input.c, 18u)]) >> (arg_2.zwx % vec3<u32>(32u)), true) % vec3<u32>(32u)));
    global3 = array<Struct_3, 19>();
    var_0 = _wgslsmith_div_vec3_i32(min(func_4((vec3<i32>(-1i, arg_3.x, var_0.x) ^ u_input.d.yyz) >> (~vec3<u32>(28540u, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(arg_2.x, 18u)]) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-588f, -491f, arg_0) - vec3<f32>(-535f, arg_1, 1294f)) * _wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<f32>(838f, -1207f, global2.x, arg_1)), vec4<f32>(arg_0, arg_0, global2.x, arg_0), -1377f, arg_3))), ~(~52671i)), vec3<i32>(-u_input.b, u_input.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(53292u, global0[_wgslsmith_index_u32(28120u, 18u)], u_input.c), vec3<u32>(125571u, global0[_wgslsmith_index_u32(arg_2.x, 18u)], 5480u)) % 32u), firstTrailingBit(_wgslsmith_sub_i32(29903i, var_0.x)))), vec3<i32>(~12953i, ~_wgslsmith_add_i32(reverseBits(-2147483647i), -arg_3.x), 2147483647i));
    let var_1 = _wgslsmith_f_op_f32(-2294f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(365f + _wgslsmith_f_op_f32(f32(-1f) * -1561f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(292f)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(trunc(1488f)), global2.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_f_op_f32(var_1 + 428f), -507f, _wgslsmith_f_op_f32(f32(-1f) * -864f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-678f, var_1, arg_0, global2.x) + vec4<f32>(arg_1, global2.x, 995f, var_1))), select(select(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(65457u, 16u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40942u, 18u)], 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], false), true), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 16u)], false, true), false))), 613f, firstLeadingBit(-vec2<i32>(2147483647i, var_0.x)))).x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 992f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<f32>(1645f, 549f, -861f, arg_1)), vec4<f32>(var_1, var_1, arg_1, 2266f), 141f, var_0.yx)).x))));
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-364f, global2.x, arg_0, arg_1), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1614f, 536f, -1834f, arg_1))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global2.x, 163f), _wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(580f))))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = arg_1.x;
    var var_1 = Struct_1(u_input.a.x, arg_1, firstTrailingBit(vec3<u32>(arg_1.x, arg_1.x, ~firstTrailingBit(arg_1.x))), !any(!vec2<bool>(true, global1[_wgslsmith_index_u32(45604u, 16u)])));
    let var_2 = global3[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(var_1.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(10452u, arg_1.x, 56227u) << (vec3<u32>(u_input.c, 45760u, u_input.c) % vec3<u32>(32u)), vec3<u32>(global0[_wgslsmith_index_u32(var_0, 18u)], 8519u, 1u), _wgslsmith_mod_vec3_u32(var_1.c, vec3<u32>(arg_1.x, 0u, u_input.c)))) >> (arg_1.x % 32u)) & 3202u, 19u)];
    var var_3 = Struct_3(vec2<bool>(select(all(vec4<bool>(var_2.e.x, false, var_2.b.x, var_1.d)), true, global1[_wgslsmith_index_u32(84771u, 16u)]), !(46009i != u_input.d.x)), vec2<bool>(!((var_1.d & false) & true), true), i32(-1i) * -firstLeadingBit(_wgslsmith_add_i32(45216i, -2147483647i)), vec3<f32>(global2.x, _wgslsmith_f_op_f32(abs(var_2.d.x)), _wgslsmith_div_f32(global2.x, var_2.d.x)), select(select(vec2<bool>(false, true), vec2<bool>(any(vec2<bool>(var_1.d, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 16u)])), !var_2.a.x), true), var_2.a, select(var_2.e, vec2<bool>(true, true), select(!var_2.a, var_2.e, var_2.b))));
    var var_4 = Struct_3(!var_2.a, var_3.b, _wgslsmith_mod_i32(var_3.c, -(var_2.c >> (firstLeadingBit(4294967295u) % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(func_2(global2.x, 1680f, vec4<u32>(global0[_wgslsmith_index_u32(1u, 18u)], 4294967295u, 4575u, arg_1.x), vec2<i32>(39070i, var_2.c)), _wgslsmith_f_op_vec4_f32(-arg_3.a), _wgslsmith_f_op_f32(arg_3.a.x * 1148f), countOneBits(u_input.a)))))), vec2<bool>(~_wgslsmith_div_i32(-1i, -28708i) == _wgslsmith_dot_vec4_i32(u_input.d, u_input.d | vec4<i32>(-87245i, 57161i, 1i, var_3.c)), all(select(!vec3<bool>(true, true, arg_2), select(vec3<bool>(var_2.b.x, var_2.a.x, false), vec3<bool>(true, true, true), vec3<bool>(true, var_3.b.x, true)), !vec3<bool>(arg_2, global1[_wgslsmith_index_u32(25471u, 16u)], var_3.b.x)))));
    return u_input.d.ywx;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_sub_vec3_i32(func_5(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))), -506f, ~vec4<u32>(u_input.c, arg_1.b.x, u_input.c, 4294967295u), -(vec2<i32>(arg_0.x, u_input.d.x) ^ arg_0)), firstTrailingBit(~select(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, arg_1.b.x), vec2<bool>(arg_1.d, false))), false, func_2(global2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x + -1134f), _wgslsmith_f_op_f32(global2.x - -906f), arg_1.d)), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, arg_1.b.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 18u)], u_input.c, 49828u, 0u), vec4<u32>(arg_1.b.x, u_input.c, 0u, arg_1.c.x))), u_input.d.wy)), ~vec3<i32>(~(arg_1.a | -1i), arg_0.x, -19247i));
    let var_1 = max(vec3<i32>(_wgslsmith_mod_i32(3811i, _wgslsmith_div_i32(arg_0.x, ~arg_1.a)), i32(-1i) * -select(arg_1.a, arg_0.x, false), -19220i), vec3<i32>(0i, -var_0.x, _wgslsmith_dot_vec4_i32(min(u_input.d, vec4<i32>(1i, 2147483647i, u_input.a.x, 30358i)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(1i, 1i, -2843i, u_input.a.x)), u_input.d))));
    global0 = array<u32, 18>();
    var var_2 = !vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(90903u, _wgslsmith_mod_u32(u_input.c, 1u), reverseBits(global0[_wgslsmith_index_u32(4294967295u, 18u)])), ~_wgslsmith_sub_vec3_u32(arg_1.c, arg_1.c)), 16u)], (global1[_wgslsmith_index_u32(arg_1.c.x >> (11775u % 32u), 16u)] | (global1[_wgslsmith_index_u32(0u, 16u)] || false)) | any(!vec3<bool>(arg_1.d, global1[_wgslsmith_index_u32(10207u, 16u)], false)), all(vec4<bool>(true, true, true, 112777u > global0[_wgslsmith_index_u32(51790u, 18u)])), all(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 16u)])));
    var var_3 = ~4294967295u;
    return Struct_4(func_2(-1151f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + global2.x))), firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 86761u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41799u, 18u)], 18u)], 1u), vec4<u32>(16024u, 1u, 48336u, u_input.c)), firstLeadingBit(vec4<u32>(arg_1.c.x, global0[_wgslsmith_index_u32(1u, 18u)], 0u, u_input.c)))), select(-u_input.d.xx, ~(vec2<i32>(arg_1.a, arg_1.a) | var_0.zz), !var_2.xw)), global3[_wgslsmith_index_u32(58691u, 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(563f * global2.x))) - global2.x), -1i, min(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_1.x, 43956i), vec3<i32>(arg_1.a, arg_0.x, var_1.x)), _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-2147483647i, arg_0.x, var_0.x, u_input.b))), reverseBits(-var_1.yy ^ ~vec2<i32>(arg_0.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.d.wx, Struct_1(u_input.d.x, ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 18u)], 18u)] ^ u_input.c, 1u), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(20119u, 43769u, u_input.c), vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.c, 18u)], 55949u)), ~(vec3<u32>(global0[_wgslsmith_index_u32(14976u, 18u)], 4294967295u, 31725u) >> (vec3<u32>(43763u, 46267u, global0[_wgslsmith_index_u32(79579u, 18u)]) % vec3<u32>(32u)))), true));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(-var_0.b.d.x)))), _wgslsmith_f_op_f32(ceil(1000f)), global2.x);
    let var_1 = Struct_1(~u_input.b, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u >> (global0[_wgslsmith_index_u32(70628u, 18u)] % 32u), firstTrailingBit(u_input.c), _wgslsmith_div_u32(u_input.c, u_input.c)), ~(vec3<u32>(6997u, 0u, 4294967295u) >> (vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(48314u, 18u)], 1u) % vec3<u32>(32u)))), abs(1u)), _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(101928u, global0[_wgslsmith_index_u32(4294967295u, 18u)], 8386u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.c), vec3<u32>(10273u, 0u, 9641u), vec3<u32>(0u, global0[_wgslsmith_index_u32(30308u, 18u)], 10708u))), ~vec3<u32>(14119u, ~75648u, countOneBits(1u))), all(!vec2<bool>(all(vec2<bool>(var_0.b.b.x, var_0.b.e.x)), true | global1[_wgslsmith_index_u32(u_input.c, 16u)])));
    let var_2 = vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~max(1u, 108229u >> (global0[_wgslsmith_index_u32(65063u, 18u)] % 32u)), global0[_wgslsmith_index_u32(1u, 18u)]), 18u)], u_input.c, ~select(~firstTrailingBit(u_input.c), countOneBits(~var_1.c.x), true), ~u_input.c);
    var var_3 = all(select(vec3<bool>(var_0.b.b.x, !global1[_wgslsmith_index_u32(countOneBits(4294967295u), 16u)], _wgslsmith_add_i32(u_input.a.x, -9759i) != reverseBits(0i)), select(vec3<bool>(true, var_1.d && global1[_wgslsmith_index_u32(66221u, 16u)], false), !vec3<bool>(var_1.d, true, true), !var_1.d | !var_1.d), vec3<bool>(false, var_1.d, var_0.b.a.x)));
    var var_4 = var_2.x;
    let var_5 = var_0.b;
    var var_6 = var_0.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, func_1(u_input.a << (vec2<u32>(global0[_wgslsmith_index_u32(var_2.x, 18u)], 22520u) % vec2<u32>(32u)), Struct_1(var_5.c, var_2.zz, vec3<u32>(4294967295u, 4294967295u, 108825u), var_1.d)).c, _wgslsmith_f_op_f32(exp2(var_0.c)))), 1i, ~var_5.c >> (~(min(42789u, 2262u) ^ var_1.c.x) % 32u));
}

