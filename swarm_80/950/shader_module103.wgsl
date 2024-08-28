struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<bool>;

var<private> global2: Struct_5 = Struct_5(vec4<u32>(4294967295u, 0u, 1980u, 0u), vec2<bool>(true, true), -1849f, vec4<bool>(false, true, false, true));

var<private> global3: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(-7413i, 2147483647i), vec2<i32>(1i, -4392i), vec2<i32>(-37425i, -5180i), vec2<i32>(2147483647i, 2665i), vec2<i32>(1i, 19829i), vec2<i32>(2147483647i, -1i), vec2<i32>(-8051i, -16111i), vec2<i32>(10434i, 13467i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(-11120i, -1i), vec2<i32>(20268i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(18428i, -43734i), vec2<i32>(0i, -27380i), vec2<i32>(-1131i, 51088i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, -47460i), vec2<i32>(-17800i, 2147483647i), vec2<i32>(8251i, i32(-2147483648)));

var<private> global4: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: u32) -> vec2<bool> {
    var var_0 = vec4<i32>(u_input.b, firstTrailingBit(u_input.b ^ select(u_input.b, -1i, u_input.a != u_input.a)), u_input.b, 2147483647i);
    let var_1 = Struct_1(any(!global2.d.yz), _wgslsmith_mult_vec4_i32(vec4<i32>(select(u_input.b, _wgslsmith_clamp_i32(-1i, u_input.b, -10601i), true), 30736i, -41847i, -2147483647i), vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.b, 1i), -vec3<i32>(u_input.b, 30985i, 0i)), 2147483647i, ~u_input.b)), ~vec2<u32>(global4.x, arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.c, _wgslsmith_f_op_f32(-104f * global2.c))) * _wgslsmith_f_op_f32(f32(-1f) * -295f)), global2.c), ~arg_0.x);
    var_0 = vec4<i32>(-49840i, _wgslsmith_dot_vec2_i32(vec2<i32>(~1i, min(1i, _wgslsmith_mod_i32(-2147483647i, var_0.x))), (global3[_wgslsmith_index_u32(abs(0u), 21u)] << (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_mult_u32(u_input.a, 4294967295u), countOneBits(var_1.c.x)) % vec2<u32>(32u))), _wgslsmith_add_i32(var_0.x, ~(-1i)), max(~_wgslsmith_div_i32(-1i, var_0.x), ~min(~(-13858i), _wgslsmith_mod_i32(22725i, var_1.b.x))));
    var var_2 = Struct_4(Struct_2(var_1, Struct_1(global1.x, var_1.b, _wgslsmith_sub_vec2_u32(vec2<u32>(global2.a.x, 10356u), vec2<u32>(64195u, 24579u)) & var_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1317f + global2.c)), arg_1.x), global1.x, global2.d), firstTrailingBit(~(~86784u >> (_wgslsmith_add_u32(global4.x, 4294967295u) % 32u))), -1037f, Struct_2(var_1, Struct_1(global1.x, var_1.b, var_1.c, _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(-global2.c)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(global2.a.x, arg_1.x), global2.a.x << (4294967295u % 32u))), max(1i, min(-1i, var_1.b.x)) > (var_1.b.x << (~1u % 32u)), select(vec4<bool>(false, all(global2.d.wxw), true, global1.x), select(vec4<bool>(global2.b.x, false, true, false), vec4<bool>(false, false, global2.b.x, false), any(global2.d)), global2.b.x)));
    var var_3 = ~(~(-3145i));
    return var_2.a.d.xz;
}

fn func_2() -> Struct_5 {
    global2 = Struct_5(select(abs(global2.a | firstLeadingBit(vec4<u32>(92334u, 0u, u_input.a, u_input.a))), global2.a, true), !select(select(func_3(global2.a, global2.a.zw, 43109u), global2.d.zw, vec2<bool>(true, true)), select(vec2<bool>(global2.d.x, global2.b.x), vec2<bool>(global2.b.x, true), select(true, global1.x, global2.d.x)), all(global2.d.yxy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c - global2.c))) * global2.c), !(!global2.d));
    let var_0 = -136f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1318f, -701f)), _wgslsmith_f_op_f32(f32(-1f) * -997f))))));
    global1 = select(global2.d.xy, global2.b, !func_3(vec4<u32>(global4.x, ~u_input.a, _wgslsmith_mult_u32(1u, 0u), ~global2.a.x), global2.a.xz, 22889u));
    let var_1 = 30079i;
    var var_2 = 4294967295u;
    return Struct_5(vec4<u32>(~2038u, u_input.a, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, max(1u, global4.x), ~global4.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global2.a.x, u_input.a), ~6661u)), select(4294967295u, u_input.a, true)), global2.d.yz, 1412f, vec4<bool>(true, true, select(all(!global2.d), true, true), global2.d.x));
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(arg_0.b.x, vec4<i32>(0i, firstTrailingBit(-u_input.b), _wgslsmith_add_i32(0i, -36169i) & arg_1, 33051i), ~arg_0.a.xx, _wgslsmith_f_op_f32(-arg_0.c), 1916u), Struct_1(0u == _wgslsmith_sub_u32(arg_0.a.x ^ 43529u, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, 4294967295u, global4.x), vec3<u32>(43989u, global4.x, global2.a.x))), _wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_1, arg_1, arg_1), vec4<i32>(33270i, 408i, arg_1, arg_1)), firstTrailingBit(~vec4<i32>(arg_1, arg_1, 35948i, arg_1)), vec4<i32>(arg_1, arg_1, 1i, firstTrailingBit(u_input.b))), global2.a.wz, _wgslsmith_f_op_f32(-arg_0.c), ~abs(~arg_0.a.x)), !(!global1.x), select(!arg_0.d, vec4<bool>(all(global2.d.yzx), select(arg_0.d.x & global2.d.x, true, !global2.b.x), !(true && global2.b.x), global2.d.x), any(!global2.d)));
    let var_1 = var_0.a.e;
    let var_2 = true;
    var var_3 = vec2<bool>(all(!vec4<bool>(any(var_0.d.wxw), all(vec4<bool>(false, true, global2.b.x, global1.x)), 38019i >= var_0.a.b.x, false)), !any(!func_3(vec4<u32>(u_input.a, 12901u, 32530u, var_1), vec2<u32>(u_input.a, global2.a.x), 67894u)));
    global1 = !vec2<bool>(!func_3(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.e, u_input.a, 57357u, global4.x), vec4<u32>(arg_0.a.x, var_1, 1u, global2.a.x)), vec2<u32>(var_1, 4294967295u) << (vec2<u32>(1u, 27113u) % vec2<u32>(32u)), global2.a.x & global2.a.x).x, !(!global1.x));
    return var_0.a;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = func_4(func_2(), ~abs(~(-16440i)));
    var var_1 = ~vec2<i32>(-_wgslsmith_div_i32(abs(u_input.b), i32(-1i) * -20798i), -16550i);
    var var_2 = Struct_3(~var_1.x, 1f);
    let var_3 = _wgslsmith_f_op_f32(-var_0.d);
    var var_4 = Struct_2(func_4(func_2(), 1i), func_4(Struct_5(vec4<u32>(var_0.e, 0u, 30458u, global2.a.x) ^ ~vec4<u32>(global4.x, u_input.a, global2.a.x, var_0.c.x), !global2.d.yy, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3))), global2.d), 35699i), true, vec4<bool>(var_0.b.x < 1i, false, global1.x, var_0.a));
    return func_4(Struct_5(global2.a, var_4.d.xw, var_3, !global2.d), var_0.b.x);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<i32>) -> Struct_5 {
    return Struct_5(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(global2.a, abs(global2.a)), global2.a), !vec2<bool>(!(1u > arg_0.d.b.e), true), -641f, !(!arg_0.d.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(Struct_2(func_1(~vec4<i32>(-1i, -14673i, u_input.b, u_input.b)), func_1(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), func_4(Struct_5(global2.a, vec2<bool>(global1.x, true), 467f, vec4<bool>(false, global2.b.x, false, false)), u_input.b).a & true, global2.d), 1u, -1565f, Struct_2(Struct_1(select(global2.d.x, global2.b.x, true), -vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), vec2<u32>(global2.a.x, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -281f), _wgslsmith_sub_u32(global4.x, u_input.a)), Struct_1(u_input.b >= u_input.b, -vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), global2.a.xy, global2.c, ~u_input.a), func_4(func_2(), -1i).a, !vec4<bool>(global1.x, global2.d.x, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(-449f, global2.c)), _wgslsmith_f_op_f32(round(1339f)), 501f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1430f, global2.c, -757f))))), 1232f, reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 37891i, 2147483647i), vec3<i32>(u_input.b, 11706i, u_input.b)) & vec3<i32>(-28664i, -1i, -2147483647i)) | ~(-min(vec3<i32>(-1i, 1i, -2147483647i), vec3<i32>(0i, 0i, -2147483647i))));
    var var_1 = Struct_2(func_4(func_2(), _wgslsmith_mult_i32(u_input.b, 0i)), func_1(-(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec4<i32>(u_input.b, -3908i, -24471i, 63688i)) | ~vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i))), _wgslsmith_sub_i32(min(31801i, 39660i), u_input.b) != -_wgslsmith_clamp_i32(15628i, max(-3911i, 2147483647i), u_input.b), func_2().d);
    var var_2 = Struct_2(func_4(Struct_5(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.a.x, var_0.a.x, 13457u), global2.a >> (vec4<u32>(0u, var_1.a.c.x, 4294967295u, var_1.a.c.x) % vec4<u32>(32u))), func_3(max(vec4<u32>(u_input.a, var_0.a.x, 4294967295u, 0u), var_0.a), func_5(Struct_4(Struct_2(var_1.a, Struct_1(false, vec4<i32>(var_1.a.b.x, u_input.b, u_input.b, -15380i), var_1.a.c, global2.c, var_0.a.x), true, vec4<bool>(true, global2.b.x, true, global1.x)), 1u, var_1.a.d, Struct_2(var_1.a, Struct_1(true, var_1.a.b, global2.a.xy, var_0.c, u_input.a), global2.b.x, vec4<bool>(global1.x, var_0.d.x, false, false))), vec3<f32>(-369f, -188f, 365f), 613f, vec3<i32>(var_1.b.b.x, var_1.a.b.x, 2147483647i)).a.wy, _wgslsmith_mult_u32(global4.x, 28162u)), var_0.c, select(!vec4<bool>(var_0.d.x, true, true, global2.b.x), vec4<bool>(true, global1.x, global1.x, false), var_1.d)), _wgslsmith_div_i32(1i, ~func_4(Struct_5(var_0.a, global2.d.zw, 272f, global2.d), u_input.b).b.x)), var_1.b, global1.x, vec4<bool>(func_1(vec4<i32>(u_input.b & 2907i, _wgslsmith_sub_i32(var_1.b.b.x, -76443i), var_1.b.b.x >> (55128u % 32u), var_1.a.b.x)).a, !func_4(Struct_5(vec4<u32>(0u, global2.a.x, 29498u, var_1.a.e), vec2<bool>(true, var_0.d.x), 382f, vec4<bool>(global2.d.x, true, true, false)), var_1.b.b.x).a, func_1(_wgslsmith_mod_vec4_i32(var_1.b.b, -var_1.a.b)).a, func_3(abs(firstTrailingBit(vec4<u32>(global2.a.x, 77699u, global2.a.x, 1u))), ~firstLeadingBit(vec2<u32>(29340u, 0u)), ~1u | (0u << (var_1.a.e % 32u))).x));
    let var_3 = Struct_1(global1.x, vec4<i32>(-(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.b.x, 19615i, var_2.a.b.x), var_2.a.b.xxy) & 2147483647i), ~min(~var_1.a.b.x, 38212i << (global2.a.x % 32u)), var_2.b.b.x, ~3072i), firstLeadingBit(reverseBits(vec2<u32>(~17573u, ~60777u))), var_2.b.d, 15079u);
    let var_4 = Struct_2(func_4(func_5(Struct_4(Struct_2(var_2.b, var_3, var_0.b.x, vec4<bool>(global1.x, false, false, true)), firstTrailingBit(0u), var_3.d, Struct_2(var_1.a, Struct_1(var_2.a.a, var_2.a.b, var_0.a.wz, 132f, 63192u), var_2.a.a, var_2.d)), vec3<f32>(_wgslsmith_f_op_f32(var_2.b.d + global2.c), var_1.b.d, _wgslsmith_f_op_f32(-102f + 286f)), 1559f, func_4(Struct_5(global2.a, vec2<bool>(var_0.b.x, var_1.b.a), var_1.b.d, var_1.d), i32(-1i) * -5451i).b.wzy), -u_input.b), var_1.a, true, vec4<bool>(false && !any(vec3<bool>(true, global2.d.x, var_2.c)), !((var_1.d.x || true) && true), false, func_4(func_5(Struct_4(Struct_2(var_2.b, Struct_1(var_2.a.a, vec4<i32>(var_3.b.x, 47186i, var_2.a.b.x, 2147483647i), vec2<u32>(59987u, 4294967295u), 583f, var_2.b.c.x), var_3.a, var_2.d), 4294967295u, 825f, Struct_2(Struct_1(var_1.b.a, var_3.b, var_1.b.c, global2.c, u_input.a), var_1.a, global2.b.x, var_1.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1166f, var_2.a.d, -945f) + vec3<f32>(298f, var_1.b.d, var_1.b.d)), -649f, abs(vec3<i32>(var_3.b.x, var_2.b.b.x, var_3.b.x))), -_wgslsmith_clamp_i32(u_input.b, var_1.b.b.x, var_2.a.b.x)).a));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.d, 162f, -682f, var_4.a.d), vec4<f32>(-375f, 238f, 1599f, -1000f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.d, global2.c, 1000f, -202f))))) + vec4<f32>(_wgslsmith_f_op_f32(select(2337f, var_3.d, global2.b.x)), func_5(Struct_4(var_4, var_0.a.x, 1000f, var_4), vec3<f32>(-385f, var_4.a.d, var_2.b.d), -1237f, vec3<i32>(var_4.a.b.x, 0i, var_3.b.x)).c, _wgslsmith_f_op_f32(var_3.d - var_4.b.d), _wgslsmith_f_op_f32(-var_3.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, var_4.b.d, var_1.a.d, -330f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1369f, -390f, var_2.a.d, 110f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1264f, -2270f, 557f, var_4.a.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.d, var_4.a.d, 1000f, var_3.d)))), false)), 6125u);
}

