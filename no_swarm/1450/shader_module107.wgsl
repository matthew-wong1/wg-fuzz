struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: Struct_3 = Struct_3(vec4<u32>(3319u, 25422u, 4294967295u, 2751u), -1000f);

var<private> global2: Struct_4 = Struct_4(vec3<i32>(21269i, 2147483647i, -33730i), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec2<f32>(-1364f, -150f)), Struct_3(vec4<u32>(14068u, 38831u, 4294967295u, 73095u), 2674f), 1u);

var<private> global3: vec3<i32> = vec3<i32>(17101i, 2147483647i, -55527i);

var<private> global4: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-481f, -518f, 172f), vec3<f32>(-284f, 2392f, 409f), vec3<f32>(1546f, 380f, -231f), vec3<f32>(-1862f, 438f, -105f), vec3<f32>(-144f, 141f, -369f), vec3<f32>(800f, 283f, 223f), vec3<f32>(1239f, 1002f, -472f), vec3<f32>(475f, -254f, 1453f), vec3<f32>(-1092f, 257f, -1210f), vec3<f32>(-949f, -104f, -704f), vec3<f32>(-379f, 138f, 431f), vec3<f32>(-496f, 363f, 1245f), vec3<f32>(718f, -108f, -775f), vec3<f32>(-502f, 577f, -184f), vec3<f32>(314f, 1000f, 1000f), vec3<f32>(-192f, -710f, -318f), vec3<f32>(-1000f, -1000f, -1000f), vec3<f32>(-484f, 1049f, -256f), vec3<f32>(-118f, -465f, -500f), vec3<f32>(-240f, -1000f, -1281f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> bool {
    var var_0 = Struct_5(14483u, vec2<bool>(true, u_input.a > global1.a.x), u_input.c, arg_1);
    var var_1 = arg_1;
    global1 = Struct_3(global1.a, _wgslsmith_f_op_f32(trunc(global1.b)));
    global2 = Struct_4(global2.a, _wgslsmith_div_vec2_u32(global1.a.zz, global1.a.zz), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(arg_0, var_1.a.a, var_0.b.x)))))), global2.d, reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(45046u, global0[_wgslsmith_index_u32(11462u, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.e, 24u)], 24u)], var_0.a) << (vec4<u32>(var_0.a, u_input.a, 4294967295u, 40536u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 44086u, global0[_wgslsmith_index_u32(u_input.a, 24u)], u_input.b), 4294967295u < global2.d.a.x), vec4<u32>(~5048u, ~global1.a.x, var_0.a, 8776u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14466u, 24u)], 24u)] % 32u)))));
    global4 = array<vec3<f32>, 20>();
    return !var_0.b.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = func_3(arg_0.xy, Struct_2(Struct_1(vec2<f32>(global1.b, 152f)))) && true;
    let var_1 = false;
    var var_2 = _wgslsmith_mod_vec2_i32(-abs(global3.xz << (global1.a.xz % vec2<u32>(32u))), global2.a.zz);
    var var_3 = abs(1u);
    var var_4 = ~vec4<u32>(24427u, 17491u, global1.a.x, 0u);
    return global2.c;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(22122i, _wgslsmith_sub_i32(13890i, 29017i), abs(-31901i), -2147483647i), vec4<i32>(global3.x ^ -1i, u_input.c, _wgslsmith_sub_i32(-2147483647i, global3.x), 1i)), _wgslsmith_mod_vec4_i32(~min(vec4<i32>(global2.a.x, -42177i, -2147483647i, u_input.c), ~vec4<i32>(0i, -30973i, -51646i, global3.x)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c, 2147483647i, 0i, -1i)) & abs(vec4<i32>(-12239i, u_input.c, 0i, 11286i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(32098i, -1i, 2147483647i, global2.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, 0i, 2147483647i), vec4<i32>(-22905i, global3.x, 23392i, 33789i), vec4<i32>(global3.x, -1i, global3.x, u_input.c))))));
    global4 = array<vec3<f32>, 20>();
    let var_1 = 1114f;
    let var_2 = Struct_5(countOneBits(global1.a.x), !arg_0.zx, global2.a.x, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-297f, global2.c.a.x))))));
    global0 = array<u32, 24>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-488f, var_2.d.a.a.x, arg_1.a.x, 783f))), 0i).a.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-551f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-151f, -208f))))))));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, arg_2, _wgslsmith_f_op_f32(func_4(select(!vec3<bool>(arg_0, false, true), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true)), arg_0), func_2(vec4<f32>(arg_1.c.a.x, arg_1.d.b, global2.c.a.x, -957f), ~(-13432i)))), -541f));
    global4 = array<vec3<f32>, 20>();
    var var_1 = ~select(_wgslsmith_add_i32(-50139i, 43812i), min(-global2.a.x, global3.x), arg_0) << (_wgslsmith_clamp_u32(global1.a.x, firstTrailingBit(_wgslsmith_add_u32(67698u, global0[_wgslsmith_index_u32(50994u, 24u)]) ^ ~global2.e), reverseBits(~global1.a.x)) % 32u);
    var var_2 = !vec2<bool>(arg_0, _wgslsmith_div_f32(global1.b, -212f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1185f))));
    global0 = array<u32, 24>();
    return vec3<u32>(u_input.b ^ 35346u, u_input.a, ~26755u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~global1.a.x, ~(~global2.d.a.x)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(76119u, global0[_wgslsmith_index_u32(7808u, 24u)]), vec2<u32>(21031u, 37267u)) & global2.b), global1.a.yw), global1.a.zw);
    global1 = global2.d;
    global2 = Struct_4(-(global2.a << (func_1(true, Struct_4(vec3<i32>(1582i, global3.x, 137i), global1.a.zw, global2.c, Struct_3(vec4<u32>(var_0.x, 4294967295u, 4294967295u, global1.a.x), -1811f), global1.a.x), -1685f) % vec3<u32>(32u))), vec2<u32>(0u, ~(~(~6930u))), global2.c, Struct_3(vec4<u32>(~4294967295u & u_input.a, var_0.x, ~global1.a.x, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(0u, 24u)], 4294967295u), abs(global2.e) << (140533u % 32u), firstTrailingBit(global2.d.a.x) >> (reverseBits(4294967295u) % 32u)), ~vec3<u32>(31763u, ~42501u, ~global2.b.x)));
    var var_1 = vec2<bool>(select(!(true || (u_input.b <= 1u)), true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), true);
    let var_2 = Struct_2(func_2(vec4<f32>(_wgslsmith_div_f32(-278f, _wgslsmith_f_op_f32(f32(-1f) * -464f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-765f + global2.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b, 910f, var_1.x)) * global1.b), global2.c.a.x), global2.a.x));
    let var_3 = global4[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(firstTrailingBit(~1u), 24u)]), 24u)]), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(487f, ~global2.d.a.zy ^ _wgslsmith_sub_vec2_u32(max(~vec2<u32>(63353u, 0u), global2.b), vec2<u32>(~1u, global0[_wgslsmith_index_u32(~u_input.a, 24u)])), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, var_0.x) ^ 1u, _wgslsmith_sub_u32(8401u, select(global1.a.x & global2.e, _wgslsmith_mod_u32(u_input.a, global2.e), !var_1.x))), ~48810u, global2.b);
}

