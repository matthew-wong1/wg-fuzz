struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
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

var<private> global0: f32 = -882f;

var<private> global1: array<f32, 31> = array<f32, 31>(-394f, -1672f, -508f, 1741f, -658f, -869f, 1357f, -3295f, -364f, -918f, -727f, -871f, 1000f, 190f, 303f, -1874f, 838f, 1288f, -1174f, -1128f, 514f, -174f, -1359f, 1441f, -396f, 403f, 1212f, -831f, -1004f, -1656f, -1000f);

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_3, 3>;

var<private> global4: Struct_3 = Struct_3(Struct_1(vec2<u32>(36415u, 6560u), vec3<i32>(2147483647i, -34762i, -2103i), vec4<i32>(38900i, 0i, 1i, -1i)), Struct_1(vec2<u32>(0u, 5617u), vec3<i32>(5540i, 90909i, 14742i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i)), false, Struct_1(vec2<u32>(29431u, 3634u), vec3<i32>(1i, i32(-2147483648), -38960i), vec4<i32>(i32(-2147483648), 2147483647i, -19618i, 37526i)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = firstLeadingBit(vec4<i32>(0i, 0i, 0i, _wgslsmith_clamp_i32(max(~global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -3097i), vec2<i32>(u_input.c, -2147483647i))), reverseBits(3634i), -_wgslsmith_clamp_i32(2147483647i, -1i, 42633i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global4.b.a.x, 31u)], 845f) - vec2<f32>(global1[_wgslsmith_index_u32(0u, 31u)], 1123f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(33190u, 31u)], 189f))))))));
    let var_2 = -vec2<i32>(global4.a.b.x, global2.x << (global4.b.a.x % 32u));
    let var_3 = Struct_2(vec3<u32>(select(~(~0u), ~u_input.b, !(-2147483647i < u_input.c)), u_input.b, firstTrailingBit(~(~1u))), global4.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1425f, var_1.x, 564f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1679f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 31u)]), -182f) * vec3<f32>(-1000f, 410f, _wgslsmith_f_op_f32(round(383f))))), global4.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(11162u, 31u)], 215f) + vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(global4.a.a.x, 31u)], -531f))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1472f, global1[_wgslsmith_index_u32(19283u, 31u)], 421f) - vec3<f32>(var_1.x, -1313f, var_1.x))), vec3<f32>(_wgslsmith_div_f32(var_1.x, -3465f), -651f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(7011u, 31u)])))))));
    var_0 = vec4<i32>(1i, ~_wgslsmith_div_i32(-1i, max(0i, global4.a.b.x)), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(global4.a.c), ~var_3.b.c)) | var_0.x, var_0.x);
    return 43884u;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = global4.a;
    let var_1 = Struct_2(arg_0 ^ arg_0, global4.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 94461u, arg_0.x), vec4<u32>(1u, 1u, arg_0.x, var_0.a.x)), 31u)] + global1[_wgslsmith_index_u32(1u, 31u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, ~u_input.a), 31u)], -303f))), Struct_1(vec2<u32>(~1u, var_0.a.x), var_0.c.wwx, vec4<i32>(global4.b.c.x, -select(u_input.c, u_input.c, true), global4.d.c.x, -2147483647i << (func_3() % 32u))), vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(11566u, ~(~global4.d.a.x)), 31u)], _wgslsmith_f_op_f32(1614f + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global4.d.a.x, 31u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.x, 31u)] - global1[_wgslsmith_index_u32(arg_0.x, 31u)]))))));
    let var_2 = select(vec2<bool>(select(!global4.c, true || (550u <= arg_0.x), !(!global4.c)), any(vec4<bool>(true, !global4.c, false, global4.c || global4.c))), vec2<bool>(!any(vec3<bool>(global4.c, false, true)), false && !global4.c), !(global4.c & any(select(vec3<bool>(global4.c, false, true), vec3<bool>(true, true, true), true))));
    let var_3 = vec3<bool>(true, true || !all(select(var_2, var_2, var_2)), global4.c);
    global3 = array<Struct_3, 3>();
    return Struct_3(Struct_1(var_0.a, vec3<i32>(-1i) * -var_1.b.c.zyw, -vec4<i32>(-u_input.c, abs(0i), max(-29413i, -28669i), 58089i ^ u_input.c)), global4.a, select(true, var_3.x, !var_3.x), var_1.b);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: f32, arg_3: u32) -> vec4<u32> {
    let var_0 = -1408f;
    global4 = func_2(max(reverseBits(vec3<u32>(44833u, u_input.b, 17320u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, arg_1.x), vec3<u32>(0u, u_input.b, 1u)) % vec3<u32>(32u))), vec3<u32>(15175u, arg_3, firstTrailingBit(select(global4.d.a.x, arg_3, false)))));
    var var_1 = global4.a;
    let var_2 = ~vec3<i32>(global4.b.c.x, -_wgslsmith_clamp_i32(~(-7849i), _wgslsmith_mod_i32(global2.x, u_input.c), global2.x), var_1.c.x);
    let var_3 = func_2(vec3<u32>(_wgslsmith_mult_u32(~27737u, 0u), firstTrailingBit(34848u), ~_wgslsmith_mod_u32(1u, var_1.a.x))).c;
    return ~min(~vec4<u32>(_wgslsmith_add_u32(29814u, global4.a.a.x), 21205u, 1u, select(78703u, arg_1.x, global4.c)), vec4<u32>(arg_3, 13024u, _wgslsmith_mod_u32(u_input.a, firstLeadingBit(arg_3)), 44364u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: bool) -> i32 {
    var var_0 = -global4.b.c;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(25263u, 31u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_2(vec3<u32>(1u, arg_0.x, u_input.a)).b.a.x, 31u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1649f, _wgslsmith_f_op_f32(-330f * 1821f))))));
    let var_2 = Struct_2(~vec3<u32>(768u, 4294967295u, firstLeadingBit(_wgslsmith_add_u32(global4.a.a.x, global4.d.a.x))), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(21296u, firstLeadingBit(47390u)), vec2<u32>(arg_1.x << (0u % 32u), arg_1.x | arg_0.x)), _wgslsmith_add_vec3_i32(var_0.xzx, _wgslsmith_add_vec3_i32(vec3<i32>(1i, -21726i, global2.x), global4.a.b)) >> (arg_0.wwx % vec3<u32>(32u)), vec4<i32>(countOneBits(select(global4.a.b.x, -44758i, true)), -func_2(vec3<u32>(4294967295u, u_input.b, arg_0.x)).d.b.x, _wgslsmith_add_i32(reverseBits(2147483647i), -var_0.x), select(1i, 1i, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-738f, var_1.x, global1[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_div_vec3_f32(vec3<f32>(-495f, -316f, 393f), vec3<f32>(-1909f, global1[_wgslsmith_index_u32(61188u, 31u)], var_1.x)))))), func_2(_wgslsmith_add_vec3_u32(arg_0.xwy, vec3<u32>(select(global4.d.a.x, global4.b.a.x, false), global4.d.a.x, ~102106u))).b, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1543f, _wgslsmith_f_op_f32(-1279f - global1[_wgslsmith_index_u32(26804u, 31u)])))), -930f, global1[_wgslsmith_index_u32(~u_input.a | arg_1.x, 31u)]));
    var_0 = reverseBits(var_2.d.c);
    global1 = array<f32, 31>();
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_4(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, 17043u, global4.b.a.x), vec4<u32>(1u, 21822u, 0u, 21720u)), func_1(vec4<f32>(-210f, -265f, -500f, 626f), global4.d.a, global1[_wgslsmith_index_u32(1u, 31u)], 68579u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, global4.a.a.x, global4.a.a.x, 9365u) << (vec4<u32>(global4.a.a.x, 246u, 4294967295u, 1104u) % vec4<u32>(32u)), vec4<u32>(u_input.a, 11184u, 68447u, global4.d.a.x))), ~global4.a.a, !vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)] <= global1[_wgslsmith_index_u32(u_input.b, 31u)], any(vec4<bool>(global4.c, global4.c, false, true))), !func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 4294967295u, global4.a.a.x), vec3<u32>(1u, u_input.a, global4.b.a.x))).c);
    var_0 = u_input.c;
    var var_1 = _wgslsmith_clamp_u32(0u, abs(u_input.b), 29419u);
    let var_2 = global4.d;
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2.a.x, 31u)] + global1[_wgslsmith_index_u32(u_input.a, 31u)])) - _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(var_2.a.x | var_2.a.x, 31u)], _wgslsmith_f_op_f32(2608f * -653f)))))), global1[_wgslsmith_index_u32(var_2.a.x, 31u)]));
    global3 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.a, 61045u, 1u), abs(vec3<u32>(99155u, 69834u, var_2.a.x))), ~(vec3<u32>(global4.d.a.x, u_input.a, u_input.b) >> (vec3<u32>(1u, var_2.a.x, global4.d.a.x) % vec3<u32>(32u)))));
}

