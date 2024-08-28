struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, -3573i);

var<private> global2: f32 = -1380f;

var<private> global3: u32 = 0u;

var<private> global4: array<u32, 3>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    global2 = arg_2.a.x;
    global4 = array<u32, 3>();
    var var_0 = arg_2.b;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.b.a)) + _wgslsmith_f_op_vec2_f32(-arg_2.a))), arg_0.b.b, _wgslsmith_f_op_f32(arg_0.b.c + _wgslsmith_div_f32(arg_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -395f) - -1843f))), !select(select(vec2<bool>(true, true), !vec2<bool>(arg_0.b.b.c.x, true), true), !select(vec2<bool>(arg_0.b.b.c.x, true), vec2<bool>(true, false), arg_1.x), arg_1.ww));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(544f - -1972f), arg_2.c, 1000f)))));
    return arg_2.b.b.x;
}

fn func_2() -> Struct_3 {
    global1 = max(vec2<i32>(countOneBits(_wgslsmith_mod_i32(-25930i, 87552i ^ global1.x)), -((0i >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 3u)], 3u)], 3u)] % 32u)) >> (global4[_wgslsmith_index_u32(~u_input.a.x, 3u)] % 32u))), ~vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(66406i, -33646i, global1.x, global1.x), vec4<i32>(global1.x, global1.x, global1.x, global1.x)), -vec4<i32>(-33613i, global1.x, global1.x, global1.x)), global1.x));
    let var_0 = (firstTrailingBit(func_3(Struct_4(vec2<bool>(true, false), Struct_2(vec2<f32>(-1000f, -209f), Struct_1(vec3<bool>(true, true, false), u_input.c.yz, vec4<bool>(false, false, true, true)), -2067f, vec2<bool>(true, false)), 41689i, true), vec4<bool>(true, true, true, false), Struct_2(vec2<f32>(-365f, -1943f), Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 3u)], 3u)]), vec4<bool>(true, false, true, true)), -1035f, vec2<bool>(true, false)), Struct_3(vec2<u32>(global4[_wgslsmith_index_u32(36540u, 3u)], u_input.c.x)))) < u_input.b.x) && !(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)) & true);
    let var_1 = Struct_4(select(!vec2<bool>(select(true, var_0, false), var_0), select(vec2<bool>(var_0 || var_0, !var_0), !(!vec2<bool>(var_0, var_0)), vec2<bool>(-7609i != global1.x, !var_0)), vec2<bool>(!(!var_0), var_0)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1055f, 1190f)), _wgslsmith_f_op_f32(round(519f)))), Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(var_0, true, true), vec3<bool>(true, var_0, true)), vec2<u32>(u_input.b.x, ~global4[_wgslsmith_index_u32(u_input.a.x, 3u)]), !vec4<bool>(true, false, true, var_0)), 1612f, vec2<bool>(!var_0, true)), ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, global1.x), ~global1.x, global1.x | global1.x) | 0i, !var_0);
    let var_2 = 4294967295u;
    let var_3 = var_1.b.b.b.x;
    return Struct_3(~_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.a.x, 4294967295u), var_1.b.b.b, true) & var_1.b.b.b, countOneBits(firstTrailingBit(vec2<u32>(0u, u_input.c.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(489f)), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-842f))))));
    var var_1 = select(!select(arg_0.a, vec3<bool>(0i <= global1.x, !arg_0.c.x, arg_2.a.x <= 1u), !arg_0.a.x & true), arg_0.c.wxz, arg_0.c.x);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x * 556f), _wgslsmith_f_op_f32(f32(-1f) * -1208f)), vec2<f32>(_wgslsmith_f_op_f32(step(-663f, -937f)), _wgslsmith_f_op_f32(f32(-1f) * -637f)))), _wgslsmith_f_op_vec2_f32(arg_1.zy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2875f, var_0.x))))), arg_0, _wgslsmith_f_op_f32(max(-338f, -1172f)), select(var_1.zy, vec2<bool>(all(arg_0.c), arg_0.a.x), arg_0.c.x));
    var var_3 = ~_wgslsmith_dot_vec4_i32(~vec4<i32>(~global1.x, 1i, ~global1.x, -1i), reverseBits(vec4<i32>(global1.x, global1.x, global1.x, global1.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 - _wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(-var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0, _wgslsmith_f_op_vec4_f32(-var_0), select(var_2.b.c, arg_0.c, true))))));
    return arg_3 & true;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(759f, -882f), vec2<f32>(-828f, 1739f))))), vec2<f32>(1995f, _wgslsmith_f_op_f32(sign(-1367f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1678f, 859f), vec2<f32>(1809f, 1903f))))), Struct_1(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 3u)] == u_input.c.x, true, arg_0.x), vec3<bool>(!arg_0.x, false, global4[_wgslsmith_index_u32(1u, 3u)] != 0u), func_4(Struct_1(vec3<bool>(arg_0.x, false, arg_0.x), vec2<u32>(65865u, 14572u), vec4<bool>(true, false, false, arg_1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(397f, 936f, 1727f), vec3<f32>(-744f, 1023f, -502f)), func_2(), true)), u_input.c.wy, select(vec4<bool>(true, true, u_input.c.x == 96864u, true), vec4<bool>(true, arg_1.x, !arg_0.x, any(vec4<bool>(false, arg_1.x, true, arg_0.x))), vec4<bool>(false, !arg_0.x, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1171f)), arg_0);
    return vec2<bool>(786f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.x, -453f)))), false);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_4) -> f32 {
    global3 = 1u;
    global1 = countOneBits(abs(~(vec2<i32>(-48068i, global1.x) & vec2<i32>(arg_2.c, -29002i))));
    global1 = ~abs(~vec2<i32>(arg_2.c | arg_2.c, _wgslsmith_add_i32(arg_2.c, 2147483647i)));
    let var_0 = arg_2.b;
    return _wgslsmith_div_f32(arg_2.b.a.x, -221f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -(vec2<i32>(global1.x << (firstLeadingBit(0u) % 32u), firstLeadingBit(_wgslsmith_mult_i32(2147483647i, global1.x))) & (abs(-vec2<i32>(global1.x, global1.x)) ^ -select(vec2<i32>(24709i, global1.x), vec2<i32>(global1.x, global1.x), false)));
    var var_0 = global1.x;
    global3 = ~_wgslsmith_dot_vec4_u32(select(~u_input.c, u_input.c, select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true)), abs(_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], vec4<u32>(110972u, 46973u, global4[_wgslsmith_index_u32(0u, 3u)], 1u)))) ^ u_input.a.x;
    let var_1 = 10816i;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-158f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec3<bool>(any(vec3<bool>(false, true, false)), true, true), vec2<bool>(true, true), Struct_4(func_1(vec2<bool>(true, false), vec2<bool>(true, false)), Struct_2(vec2<f32>(-194f, 1000f), Struct_1(vec3<bool>(true, false, true), u_input.b, vec4<bool>(false, false, true, true)), 258f, vec2<bool>(true, true)), global1.x, true)))));
    var var_3 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(vec3<i32>(var_1, var_1 ^ global1.x, abs(global1.x))), -2288f, ~global4[_wgslsmith_index_u32(~4294967295u, 3u)] | ~(~(~u_input.b.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(3024i, var_1, -48937i, abs(-2147483647i)), vec4<i32>(global1.x, -2147483647i, global1.x, var_1)), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 5094i, global1.x, 84344i), vec4<i32>(22091i, -22561i, -17927i, global1.x), vec4<i32>(-2147483647i, 0i, 0i, 0i)) & reverseBits(vec4<i32>(2147483647i, 0i, -1i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, -2147483647i, -39899i, var_1) << (global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 3u)], 1u)] % vec4<u32>(32u)), vec4<i32>(global1.x, 19547i, -2147483647i, 2147483647i)))));
}

