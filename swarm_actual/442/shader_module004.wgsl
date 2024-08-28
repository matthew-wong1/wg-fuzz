struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(-1i, -10594i, 2147483647i, 2942i), vec4<i32>(0i, 94578i, 2147483647i, -9551i), vec4<i32>(28175i, -9537i, -24176i, -1i), vec4<i32>(2147483647i, -8324i, -17688i, 0i), vec4<i32>(-2548i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(27429i, -5272i, 15277i, i32(-2147483648)), vec4<i32>(1i, -1i, 0i, -5130i), vec4<i32>(0i, -66797i, i32(-2147483648), 1i), vec4<i32>(1i, -54625i, 3354i, -39514i), vec4<i32>(i32(-2147483648), -21595i, 1i, 30988i), vec4<i32>(0i, 2147483647i, -18999i, 32183i), vec4<i32>(-37236i, 54869i, 9668i, -1i), vec4<i32>(14439i, 2147483647i, 2147483647i, 34514i), vec4<i32>(-1i, 1i, -7383i, -24263i), vec4<i32>(2147483647i, 30733i, -48591i, 2147483647i), vec4<i32>(40865i, 27540i, 2147483647i, 0i), vec4<i32>(4689i, i32(-2147483648), 1i, -1i), vec4<i32>(43124i, 1i, -1i, -15690i), vec4<i32>(-1i, 30591i, i32(-2147483648), 2147483647i), vec4<i32>(1i, i32(-2147483648), -1457i, 2147483647i), vec4<i32>(-3284i, 10346i, -41468i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 0i, 0i), vec4<i32>(28829i, 17105i, 1i, 1i), vec4<i32>(-1i, 0i, i32(-2147483648), 24553i));

var<private> global1: bool = true;

var<private> global2: array<Struct_3, 19>;

var<private> global3: Struct_2 = Struct_2(-385f, false);

var<private> global4: bool;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> bool {
    global3 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -586f))))), ((true && all(arg_0)) == any(vec4<bool>(arg_2.a.x, false, false, arg_0.x))) && true);
    global2 = array<Struct_3, 19>();
    var var_0 = -132f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-886f)), global3.a) + _wgslsmith_f_op_f32(296f - global3.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.a + global3.a), _wgslsmith_f_op_f32(step(global3.a, -1467f)))))));
    var var_1 = all(vec3<bool>(true, !any(vec2<bool>(arg_2.a.x, false)), true));
    return !global3.b;
}

fn func_4(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = false;
    global0 = array<vec4<i32>, 24>();
    var var_1 = Struct_1(arg_0.wy, vec2<i32>(0i, _wgslsmith_clamp_i32(-1i, -abs(u_input.c), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c, u_input.a.x), _wgslsmith_div_i32(u_input.c, u_input.a.x)))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.a, -2140f, 1057f, global3.a), vec4<f32>(global3.a, -1000f, -1024f, global3.a)))), vec4<f32>(global3.a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(-117f, -610f), _wgslsmith_f_op_f32(floor(global3.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(451f - _wgslsmith_f_op_f32(-global3.a)) - global3.a), -1743f));
    global4 = !any(var_1.a);
    return vec2<u32>(~u_input.d.x, ~(~(u_input.d.x << ((14159u << (u_input.d.x % 32u)) % 32u))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = !(!vec4<bool>(!global3.b, false, !(arg_0.b.x < -31019i), any(!arg_2.a)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f * _wgslsmith_f_op_f32(max(arg_3.a, global3.a)))) - _wgslsmith_f_op_f32(select(arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a, arg_3.a) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(var_0.x, true, true) & true))), global3.a >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a + -391f)))));
    var_1 = arg_3;
    var var_2 = select(select(var_0.yxx, select(select(var_0.zxy, select(var_0.wyz, vec3<bool>(arg_3.b, global3.b, true), vec3<bool>(var_0.x, false, true)), vec3<bool>(true, true, false)), var_0.xyw, var_0.wzz), true), var_0.yxz, select(var_0.xxw, var_0.yxy, var_0.zxy));
    let var_3 = arg_3;
    return firstTrailingBit(~u_input.d.x);
}

fn func_2(arg_0: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(1514f + global3.a);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global3.a, -322f)), global3.a)) - -957f)), true);
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1376f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3048f - var_1.a) + _wgslsmith_f_op_f32(floor(global3.a))))), u_input.b > 29973i);
    let var_2 = global2[_wgslsmith_index_u32(func_5(Struct_1(vec2<bool>(all(vec4<bool>(global3.b, global3.b, global3.b, false)) | false, all(select(vec4<bool>(false, true, global3.b, true), vec4<bool>(true, global3.b, false, var_1.b), vec4<bool>(global3.b, var_1.b, var_1.b, global3.b)))), vec2<i32>(max(u_input.b, u_input.c), 10112i) | abs(vec2<i32>(-2147483647i, u_input.a.x))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.d.x, 4294967295u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, u_input.d.x), vec2<u32>(4710u, u_input.d.x)), u_input.d)) ^ func_4(vec4<bool>(all(vec3<bool>(false, false, false)), true, func_3(vec3<bool>(false, var_1.b, true), u_input.b, Struct_1(vec2<bool>(global3.b, false), vec2<i32>(-22021i, 2147483647i))), var_1.b)), Struct_1(select(!select(vec2<bool>(false, var_1.b), vec2<bool>(false, false), false), vec2<bool>(func_3(vec3<bool>(global3.b, false, false), 0i, Struct_1(vec2<bool>(var_1.b, true), vec2<i32>(u_input.b, -1i))), any(vec2<bool>(var_1.b, var_1.b))), !select(vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, false))), firstLeadingBit(abs(u_input.a)) ^ reverseBits(countOneBits(u_input.a))), Struct_2(_wgslsmith_f_op_f32(-335f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -282f)))), var_1.b)), 19u)];
    let var_3 = _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, firstTrailingBit(u_input.a.x), u_input.c, (u_input.c ^ -62298i) & 0i)), vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(4294967295u, 24u)]);
    return -vec3<i32>(_wgslsmith_dot_vec3_i32(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 1i, var_3.x), vec3<i32>(-3606i, -13096i, var_3.x), var_3.wyy), -vec3<i32>(-2147483647i, 0i, 0i)), var_3.xyx), var_3.x, _wgslsmith_div_i32(var_3.x, ~var_3.x));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = u_input.a;
    var var_1 = vec3<bool>(all(!vec4<bool>(any(vec3<bool>(true, arg_0.a, false)), true, true, u_input.d.x >= u_input.e)), true, all(!select(select(vec3<bool>(false, global3.b, global3.b), vec3<bool>(global3.b, arg_0.c.b, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.c.b)), select(vec3<bool>(true, true, global3.b), vec3<bool>(arg_0.c.b, true, global3.b), true), vec3<bool>(false, arg_0.a, arg_0.c.b))));
    let var_2 = _wgslsmith_mod_vec3_i32(func_2(u_input.e), ~vec3<i32>(var_0.x, -2147483647i, u_input.a.x)) << (firstTrailingBit(~(vec3<u32>(0u, 23516u, u_input.d.x) & ~vec3<u32>(4294967295u, u_input.e, u_input.d.x))) % vec3<u32>(32u));
    var var_3 = var_1.x;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(166f))), any(!vec4<bool>(-1320f != arg_1.x, global3.b, any(vec3<bool>(arg_0.a, true, var_1.x)), true)));
    return arg_0.c;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_0.c.b;
    global0 = array<vec4<i32>, 24>();
    var var_1 = arg_0;
    let var_2 = -global0[_wgslsmith_index_u32(u_input.e ^ 37078u, 24u)];
    var var_3 = firstLeadingBit(0u);
    return func_1(arg_0, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-265f)), _wgslsmith_f_op_f32(arg_0.b + -1000f)), global3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!all(vec4<bool>(true, global3.b, true, global3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1046f * global3.a)), func_6(Struct_3(any(vec3<bool>(true, global3.b, global3.b)), global3.a, Struct_2(global3.a, any(vec3<bool>(false, global3.b, global3.b)))), func_1(Struct_3(true, 310f, Struct_2(global3.a, false)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global3.a, global3.a), vec2<f32>(global3.a, global3.a)))))));
    global1 = global3.b;
    global4 = false;
    var var_1 = firstLeadingBit(~_wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.e, 4294967295u, u_input.d.x) >> (vec3<u32>(u_input.d.x, u_input.e, u_input.e) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(620u, u_input.e, u_input.e), max(vec3<u32>(29222u, u_input.e, u_input.e), vec3<u32>(u_input.d.x, 34630u, u_input.d.x)))));
    global3 = func_1(var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-196f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.a, global3.a))))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-704f, var_0.c.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b, -1000f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-421f, var_0.b)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b, -696f))), vec2<bool>(false, global3.b))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-925f, -1205f), vec2<f32>(global3.a, global3.a), vec2<bool>(var_0.a, var_0.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.a.x << (_wgslsmith_sub_u32(~44432u, firstLeadingBit(var_1.x)) % 32u), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, u_input.a), vec2<i32>(u_input.a.x, u_input.b)))));
}

