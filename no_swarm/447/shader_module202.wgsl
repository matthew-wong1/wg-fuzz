struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 23> = array<bool, 23>(true, false, false, false, true, true, true, true, false, false, false, true, true, false, false, true, false, false, true, true, true, false, true);

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_3, 27>;

var<private> global4: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    var var_0 = vec2<i32>(-12466i, -23608i);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(529f))))), _wgslsmith_div_f32(1549f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-298f + 885f)))))) - -547f);
    global3 = array<Struct_3, 27>();
    let var_1 = vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 23715u, 7236u), vec4<u32>(40389u, 32710u, 0u, 40347u), vec4<u32>(84896u, 31234u, 1u, 29379u)), ~vec4<u32>(36809u, 47832u, 4294967295u, 4294967295u)), countOneBits(vec4<u32>(1u, 1u, 1u, 1u))), ~1u), 23u)], !any(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(44674u, 23u)], global1[_wgslsmith_index_u32(55924u, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(59044u, 23u)], true), any(vec2<bool>(global1[_wgslsmith_index_u32(1877u, 23u)], global1[_wgslsmith_index_u32(5263u, 23u)])))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(1143u, 6818u), reverseBits(1u))), 4294967295u), 23u)]);
    var var_2 = -max(global2.yy << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 48319u), vec2<u32>(42664u, 1u))) % vec2<u32>(32u)), -firstTrailingBit(reverseBits(vec2<i32>(-33866i, global2.x))));
    return i32(-1i) * -33575i;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_1 {
    global1 = array<bool, 23>();
    global4 = u_input.a;
    global1 = array<bool, 23>();
    let var_0 = vec3<i32>(reverseBits(_wgslsmith_add_i32(50114i, func_3())), _wgslsmith_dot_vec3_i32(select((arg_0.b.c.wwz ^ arg_0.b.c.yyw) | min(arg_0.b.c.xww, arg_0.b.c.wzw), -firstTrailingBit(arg_0.b.b), true), -vec3<i32>(arg_0.b.c.x, -9401i, arg_0.b.a)), ~0i);
    let var_1 = Struct_2(arg_0.b, Struct_1(u_input.a, max(vec3<i32>(func_3(), _wgslsmith_mult_i32(var_0.x, 0i), -arg_0.b.b.x), -(~var_0)), min(countOneBits(~vec4<i32>(global2.x, 2147483647i, var_0.x, u_input.a)), abs(arg_0.b.c) & arg_0.b.c), 245f), var_0.yy, Struct_1(u_input.a, var_0, _wgslsmith_add_vec4_i32(vec4<i32>(abs(global2.x), -41015i, ~50627i, 3882i), _wgslsmith_sub_vec4_i32(arg_0.b.c & vec4<i32>(1i, var_0.x, 1i, -33309i), ~arg_0.b.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.d, 329f))))), countOneBits(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_0.b.c.wyw, vec3<i32>(var_0.x, -1i, -2147483647i)), reverseBits(14925i)), 34853i, ~16072i, global2.x)));
    return var_1.d;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global4 = _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.a, ~arg_1.x, ~arg_3.a, firstTrailingBit(42779i ^ (u_input.a >> (arg_0 % 32u)))), -arg_3.c);
    global1 = array<bool, 23>();
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1786f, arg_3.d))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(393f, -200f) * vec2<f32>(177f, 1192f))))))))));
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0, ~0u, 1u), arg_0), 1u), arg_0, ~(~arg_0));
    return i32(-1i) * -1i;
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_2 {
    global0 = -835f;
    let var_0 = 511f;
    global4 = arg_0;
    global3 = array<Struct_3, 27>();
    let var_1 = _wgslsmith_mult_u32(~_wgslsmith_sub_u32(~(~4294967295u), max(_wgslsmith_mod_u32(3154u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 30397u), vec2<u32>(1u, 1u)))), ~0u);
    return Struct_2(func_2(global3[_wgslsmith_index_u32(0u, 27u)], select(select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(var_1, 23u)], true), select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(var_1, 23u)]), any(vec3<bool>(true, global1[_wgslsmith_index_u32(42234u, 23u)], true))), vec3<bool>(true, false, any(vec2<bool>(true, global1[_wgslsmith_index_u32(var_1, 23u)]))), all(select(vec3<bool>(global1[_wgslsmith_index_u32(var_1, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], true), vec3<bool>(global1[_wgslsmith_index_u32(69133u, 23u)], global1[_wgslsmith_index_u32(var_1, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(38908u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], false))))), arg_2, vec2<i32>(-func_4(0u, arg_2.b, arg_2, arg_2) & arg_2.c.x, arg_0), Struct_1(arg_2.b.x, arg_2.b, arg_2.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0, 1028f)))), arg_2.c);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.d;
    var var_1 = Struct_2(arg_3.a, arg_3.b, global2.xx, Struct_1(-45632i, min(_wgslsmith_mod_vec3_i32(~arg_3.a.c.wyz, vec3<i32>(-52478i, arg_3.c.x, 23869i)), vec3<i32>(-1i) * -var_0.c.wxw), vec4<i32>(arg_2.x, -48380i, -global2.x, _wgslsmith_dot_vec3_i32(-arg_2, select(vec3<i32>(global2.x, var_0.c.x, -1i), arg_2, global1[_wgslsmith_index_u32(4294967295u, 23u)]))), arg_3.d.d), abs(select(vec4<i32>(countOneBits(-4785i), abs(-18198i), _wgslsmith_mult_i32(-54901i, arg_3.d.c.x), _wgslsmith_add_i32(-14577i, 0i)), arg_3.d.c, global1[_wgslsmith_index_u32(22656u, 23u)])));
    var var_2 = func_5(func_4(4294967295u, abs(~select(vec3<i32>(arg_3.b.c.x, global2.x, -39163i), var_1.d.c.yxw, false)), func_2(Struct_3(select(vec2<bool>(true, global1[_wgslsmith_index_u32(10387u, 23u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]), global1[_wgslsmith_index_u32(1u, 23u)]), Struct_1(-307i, vec3<i32>(u_input.a, -2147483647i, arg_3.c.x), vec4<i32>(31556i, 0i, 17087i, -2147483647i), -236f)), !(!vec3<bool>(global1[_wgslsmith_index_u32(7642u, 23u)], false, false))), var_1.d), vec3<f32>(224f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1563f))) * _wgslsmith_f_op_f32(step(arg_3.b.d, _wgslsmith_f_op_f32(-arg_1)))), var_0.d), Struct_1(countOneBits(_wgslsmith_clamp_i32(arg_3.c.x, -var_0.a, -2147483647i)), vec3<i32>(-117251i, arg_2.x, i32(-1i) * -21335i), arg_3.e, var_1.d.d));
    var_2 = Struct_2(func_2(global3[_wgslsmith_index_u32(~52661u, 27u)], select(!select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], true, global1[_wgslsmith_index_u32(arg_0.x, 23u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(arg_0.x, 23u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)])), select(vec3<bool>(true, true, true), vec3<bool>(false, global1[_wgslsmith_index_u32(8568u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), true), !vec3<bool>(global1[_wgslsmith_index_u32(45835u, 23u)], true, global1[_wgslsmith_index_u32(4294967295u, 23u)]))), Struct_1(global2.x, _wgslsmith_mult_vec3_i32(var_2.b.b, _wgslsmith_add_vec3_i32(vec3<i32>(global2.x, 22388i, arg_2.x), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -14434i, global2.x), vec3<i32>(var_1.a.c.x, -14086i, arg_3.e.x)))), var_1.d.c, var_0.d), vec2<i32>(func_3(), countOneBits(35071i)), var_1.d, _wgslsmith_clamp_vec4_i32(arg_3.d.c, _wgslsmith_sub_vec4_i32(-(~vec4<i32>(u_input.a, arg_2.x, 2147483647i, 0i)), -var_0.c | var_2.d.c), _wgslsmith_mod_vec4_i32(-vec4<i32>(30397i, 658i, -82018i, -1i), -countOneBits(arg_3.e))));
    var var_3 = arg_0.x;
    return var_2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(!(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 23u)], false, global1[_wgslsmith_index_u32(4294967295u, 23u)])), select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(12403u, 23u)], true), vec3<bool>(global1[_wgslsmith_index_u32(342u, 23u)], false, true), vec3<bool>(true, true, false)), vec3<bool>(true, global1[_wgslsmith_index_u32(10047u, 23u)], false), vec3<bool>(false, true, global1[_wgslsmith_index_u32(2744u, 23u)])), vec3<bool>(u_input.a > global2.x, any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(24844u, 23u)])), any(vec2<bool>(false, true)))));
    global1 = array<bool, 23>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_i32(~(-u_input.a), abs(~u_input.a)), select(vec3<i32>(-1i, func_1(vec4<u32>(2567u, 1u, 29645u, 20256u), -129f, vec3<i32>(-19861i, 39009i, 1i), Struct_2(Struct_1(-11303i, vec3<i32>(global2.x, 49752i, u_input.a), vec4<i32>(global2.x, 40344i, 1i, 68524i), -856f), Struct_1(0i, vec3<i32>(global2.x, global2.x, 1i), vec4<i32>(global2.x, global2.x, u_input.a, 2147483647i), -472f), global2.xx, Struct_1(-1i, vec3<i32>(-20695i, -10413i, u_input.a), vec4<i32>(u_input.a, 0i, 0i, u_input.a), 2420f), vec4<i32>(2147483647i, global2.x, -2147483647i, global2.x))), 2147483647i), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, 3115i, 2983i), vec3<i32>(u_input.a, 0i, 1i)), ~vec3<i32>(global2.x, 2147483647i, -1i)), vec3<bool>(var_0 | false, false, true)), ~(-select(vec4<i32>(u_input.a, u_input.a, global2.x, -47571i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)], var_0, true, true))), -690f), Struct_1(-1i, ~_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(0i, 0i, -2147483647i)), ~vec3<i32>(global2.x, u_input.a, 1i)), firstTrailingBit(vec4<i32>(u_input.a, 17898i, 7569i, u_input.a) >> (vec4<u32>(1u, 1644u, 23310u, 42591u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_5(-62689i, vec3<f32>(-181f, 1463f, 347f), Struct_1(-1i, vec3<i32>(global2.x, global2.x, u_input.a), vec4<i32>(12608i, u_input.a, 0i, global2.x), -509f)).d.d)) * -200f)), vec2<i32>(-global2.x, ~(global2.x & 18252i)), func_2(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, 1u), 27u)], !select(!vec3<bool>(var_0, true, false), vec3<bool>(true, true, true), vec3<bool>(var_0, true, false))), -(vec4<i32>(reverseBits(global2.x), -2147483647i, ~global2.x, _wgslsmith_mod_i32(global2.x, global2.x)) << (~(~vec4<u32>(20244u, 0u, 0u, 1u)) % vec4<u32>(32u))));
    global3 = array<Struct_3, 27>();
    global0 = _wgslsmith_f_op_f32(654f - -1218f);
    var var_2 = select(~(-var_1.a.c.wwy), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, max(u_input.a, max(u_input.a, -1i)), u_input.a), ~1i, _wgslsmith_add_i32(global2.x, var_1.e.x)), vec3<bool>(!any(vec2<bool>(true, global1[_wgslsmith_index_u32(21862u, 23u)])), false, true));
    var var_3 = Struct_2(Struct_1(0i, vec3<i32>(i32(-1i) * -9600i, u_input.a, 55064i) << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 62334u, 61238u), vec3<u32>(68892u, 14578u, 63138u)), ~25552u, _wgslsmith_dot_vec3_u32(vec3<u32>(102123u, 1u, 55218u), vec3<u32>(30066u, 15896u, 4294967295u))) % vec3<u32>(32u)), var_1.b.c, 720f), Struct_1(countOneBits(global2.x), vec3<i32>(-1i, ~(-2147483647i), -42846i), max(abs(var_1.a.c), _wgslsmith_mult_vec4_i32(var_1.a.c, vec4<i32>(-32414i, -1i, var_1.d.b.x, var_2.x))) & (abs(vec4<i32>(global2.x, 1i, var_2.x, 25257i)) | ~vec4<i32>(u_input.a, var_1.c.x, 0i, var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.d)) - var_1.d.d)), (~(-var_2.zz) & var_2.zz) & global2.zy, func_5(~(-18272i), vec3<f32>(var_1.d.d, -466f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.d + var_1.d.d) * var_1.d.d)), var_1.a).d, vec4<i32>(global2.x, -_wgslsmith_mult_i32(global2.x, -12626i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(var_1.d.c, var_1.d.c), _wgslsmith_sub_vec4_i32(vec4<i32>(-30120i, global2.x, 0i, u_input.a), var_1.d.c)), vec4<i32>(max(var_1.c.x, var_1.b.b.x), -30763i, 18158i & u_input.a, var_2.x)), countOneBits(-12265i)));
    let var_4 = select(select(!vec4<bool>(var_0, all(vec3<bool>(var_0, false, global1[_wgslsmith_index_u32(58400u, 23u)])), global1[_wgslsmith_index_u32(select(7205u, 4294967295u, true), 23u)], all(vec4<bool>(var_0, global1[_wgslsmith_index_u32(1u, 23u)], var_0, global1[_wgslsmith_index_u32(4294967295u, 23u)]))), vec4<bool>(_wgslsmith_f_op_f32(-var_1.b.d) > var_1.a.d, !global1[_wgslsmith_index_u32(1u, 23u)] & true, global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(30403u, 30801u, 4294967295u, 7200u), vec4<u32>(52181u, 1u, 47292u, 0u))), 23u)], var_0 | var_0), false), vec4<bool>(true, !var_0, true, _wgslsmith_f_op_f32(trunc(1681f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.d, var_1.d.d)))), var_1.a.d == 1000f);
    var var_5 = ~(~1u) << (abs(_wgslsmith_mult_u32(55417u, _wgslsmith_div_u32(reverseBits(20566u), ~26001u))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.d - -1429f)) + _wgslsmith_div_f32(func_5(u_input.a, vec3<f32>(-1354f, -1300f, -238f), var_1.a).a.d, -2134f)))), abs(-var_1.e.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d.d, -1301f, var_1.d.d) + vec3<f32>(236f, -1837f, var_1.d.d))))) + vec3<f32>(_wgslsmith_f_op_f32(sign(var_3.a.d)), _wgslsmith_div_f32(var_1.b.d, -1586f), _wgslsmith_f_op_f32(min(var_1.b.d, _wgslsmith_f_op_f32(-var_3.b.d))))));
}

