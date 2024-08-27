struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 20>;

var<private> global2: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0.b.a;
    var_0 = 61233u;
    let var_1 = all(vec4<bool>((true != all(vec4<bool>(arg_0.b.c, true, global2.b.c, true))) && true, !any(vec2<bool>(false, true)), !all(vec2<bool>(true, true)), true));
    var_0 = ~1u | arg_1.b.a;
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-global2.a), Struct_2(countOneBits(~(~global2.b.a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a.x, global2.a.x)) * _wgslsmith_f_op_f32(-global2.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.e.x)) * _wgslsmith_f_op_f32(791f * global0.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global0.b.x))))), !any(select(vec2<bool>(false, true), vec2<bool>(global2.b.c, arg_0.b.c), false)), ~arg_0.b.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.b.b.x + -1438f), -1901f, _wgslsmith_f_op_f32(arg_1.b.e.x + 323f)) * _wgslsmith_f_op_vec3_f32(-arg_1.a.zwy))));
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u << (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(29675u, arg_0.b.a), vec2<u32>(8239u, arg_2)))), u_input.d), 25037u);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1724f - _wgslsmith_f_op_f32(step(-895f, _wgslsmith_f_op_f32(global2.b.b.x * global0.e.x)))), -487f));
    global0 = Struct_2(~func_3(Struct_3(global2.a, global2.b), Struct_3(vec4<f32>(624f, 206f, global2.b.b.x, global2.b.b.x), Struct_2(0u, global0.b, arg_1, vec2<i32>(-2147483647i, arg_2.x), vec3<f32>(148f, var_0.x, -500f))), global0.a ^ global2.b.a, Struct_1(vec3<bool>(arg_0.c, global0.c, arg_1), vec3<f32>(-274f, global2.b.e.x, global0.e.x), arg_2, vec3<f32>(295f, arg_0.e.x, arg_0.e.x), arg_0.e.x)) ^ (~countOneBits(u_input.a) ^ global0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1504f * -237f)), _wgslsmith_f_op_f32(arg_0.e.x * 2506f))), any(select(!(!vec2<bool>(global0.c, arg_0.c)), vec2<bool>(all(vec2<bool>(true, true)), false), select(vec2<bool>(false, arg_0.c), select(vec2<bool>(arg_0.c, false), vec2<bool>(false, true), true), global0.c | global2.b.c))), vec2<i32>(arg_0.d.x, 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(1000f, 1655f), var_0.x, -535f), arg_0.e, true))));
    let var_1 = arg_0;
    global2 = Struct_3(global2.a, Struct_2(max(_wgslsmith_add_u32(global2.b.a, ~0u), max(firstTrailingBit(global2.b.a), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 4294967295u, 0u), vec3<u32>(23629u, var_1.a, arg_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, -140f, 1007f) + global0.e))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1744f, var_1.b.x, global0.e.x) + var_1.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, -990f, -516f)))), global2.b.c | (false & all(vec2<bool>(true, false))), vec2<i32>(~arg_2.x, 1i), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(224f - var_1.e.x))), _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 1316f)) * _wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = false;
    return Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.a.x + 944f), _wgslsmith_f_op_f32(-var_0.x), var_1.b.x, -1207f) * vec4<f32>(-912f, _wgslsmith_f_op_f32(var_0.x * -646f), _wgslsmith_f_op_f32(f32(-1f) * -503f), -1586f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), -518f, _wgslsmith_div_f32(global2.a.x, 277f), arg_0.e.x))), Struct_2(0u, vec3<f32>(_wgslsmith_f_op_f32(sign(-1890f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(509f, 180f)), global2.a.x), !any(select(vec4<bool>(true, arg_1, var_2, true), vec4<bool>(arg_0.c, false, false, true), var_1.c)), vec2<i32>(max(-u_input.b, -arg_2.x), _wgslsmith_add_i32(var_1.d.x << (4294967295u % 32u), _wgslsmith_mod_i32(0i, u_input.c))), _wgslsmith_f_op_vec3_f32(-global0.b)));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = min(35445u, countOneBits(global2.b.a));
    global0 = func_2(global2.b, true, vec3<i32>(10656i, global2.b.d.x << (firstTrailingBit(_wgslsmith_add_u32(4294967295u, global2.b.a)) % 32u), ~reverseBits(-1i))).b;
    global2 = arg_0;
    global2 = arg_0;
    let var_1 = -u_input.c | 33196i;
    return global1[_wgslsmith_index_u32(global2.b.a, 20u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_div_i32(arg_1.c.x, -34731i);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a + global2.a)))), arg_0);
    var var_2 = func_2(func_2(Struct_2(global2.b.a, arg_0.b, -global2.b.d.x != global0.d.x, global0.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.b.x, -314f, 1000f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, global0.e.x, 1104f) * global0.b))), global2.b.c, countOneBits(arg_1.c)).b, !(all(arg_1.a) & (true || global0.c)), vec3<i32>(arg_0.d.x, -1i, _wgslsmith_dot_vec3_i32(max(func_4(Struct_3(vec4<f32>(1000f, global2.b.e.x, -919f, global2.b.b.x), global2.b), global2.b.e.x, vec4<f32>(973f, global0.e.x, 598f, -1925f), global0.b.xz).c, min(arg_1.c, arg_1.c)), max(arg_1.c, _wgslsmith_div_vec3_i32(arg_1.c, vec3<i32>(var_1.b.d.x, 2147483647i, -2147483647i))))));
    var_2 = func_2(Struct_2(global2.b.a, global0.e, func_4(func_2(global2.b, 475f > global0.e.x, vec3<i32>(0i, 69965i, -32085i)), -1569f, _wgslsmith_f_op_vec4_f32(-var_2.a), var_1.a.xw).a.x, firstTrailingBit(~var_2.b.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_1.b)))), !select(var_2.b.c, var_1.b.c, any(arg_1.a)), firstTrailingBit(vec3<i32>(global2.b.d.x, -6682i, _wgslsmith_add_i32(-2147483647i, global0.d.x))));
    var var_3 = arg_1;
    return !select(arg_1.a.zy, var_3.a.yz, (4819i == (arg_1.c.x << (var_1.b.a % 32u))) & all(var_3.a));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<i32> {
    global1 = array<Struct_1, 20>();
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~(~(-59128i)), 1i), -vec2<i32>(-63777i, u_input.c), global2.b.d);
    var var_1 = any(select(func_5(arg_2, func_4(func_2(Struct_2(global2.b.a, vec3<f32>(-1516f, 237f, arg_2.e.x), true, vec2<i32>(-49600i, -5128i), vec3<f32>(1211f, 110f, global2.a.x)), false, vec3<i32>(var_0.x, u_input.b, 2147483647i)), global0.b.x, vec4<f32>(arg_2.b.x, 1488f, -282f, 947f), global2.b.b.yy), !arg_2.c), vec2<bool>(any(select(vec3<bool>(global0.c, arg_2.c, false), vec3<bool>(arg_2.c, arg_2.c, global2.b.c), arg_0)), !func_5(global2.b, Struct_1(vec3<bool>(arg_0, true, global2.b.c), global0.b, vec3<i32>(var_0.x, 33320i, arg_2.d.x), global0.e, arg_2.e.x), global2.b.c).x), vec2<bool>(!func_4(Struct_3(global2.a, arg_2), 312f, global2.a, vec2<f32>(666f, global2.a.x)).a.x, global2.b.c)));
    global1 = array<Struct_1, 20>();
    global0 = Struct_2(arg_2.a, vec3<f32>(_wgslsmith_f_op_f32(-arg_2.e.x), -1291f, -1943f), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-39518i, 34634i)), ~firstTrailingBit(arg_2.d)) == global0.d.x, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(global0.d.x, global2.b.d.x), vec2<i32>(arg_2.d.x, -49006i), global0.c), -vec2<i32>(45613i, -2147483647i)) | global2.b.d, ~arg_2.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a.zwy + vec3<f32>(121f, global2.a.x, global2.a.x)) * vec3<f32>(global2.a.x, 1247f, 580f)) * vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), -243f, _wgslsmith_f_op_f32(global2.a.x * 384f))), global0.b));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(!global2.b.c, vec2<u32>(4294967295u, 11876u), Struct_2(u_input.d.x, _wgslsmith_f_op_vec3_f32(-global0.e), !global2.b.c, global0.d, global2.a.yzz)), _wgslsmith_add_i32(27728i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -7971i, global2.b.d.x >> (53926u % 32u), 21559i), abs(vec4<i32>(u_input.c, global2.b.d.x, global0.d.x, global2.b.d.x) << (vec4<u32>(global2.b.a, global2.b.a, global2.b.a, 0u) % vec4<u32>(32u))))));
}

