struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: Struct_2;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_1, 10>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global1 = arg_1;
    let var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(arg_2.d.zzx, arg_1.d.yxz) ^ (0u & u_input.c)), 10u)];
    let var_1 = Struct_3(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(3096u, global1.d.x, 0u), ~reverseBits(vec3<u32>(arg_0.a.x, 4294967295u, arg_2.a.x)), vec3<u32>(arg_0.a.x, u_input.c ^ 1456u, global1.d.x)), ~(arg_1.d.yzx >> (_wgslsmith_clamp_vec3_u32(arg_1.d.wyy, vec3<u32>(51916u, 66503u, arg_0.a.x), arg_0.a) % vec3<u32>(32u))), vec3<u32>(5714u, 0u ^ u_input.c, _wgslsmith_dot_vec3_u32(global1.d.wwy >> (vec3<u32>(arg_0.a.x, 33987u, 0u) % vec3<u32>(32u)), vec3<u32>(arg_1.d.x, 21096u, arg_2.e.x)))));
    global2 = vec2<bool>(false, true);
    var var_2 = Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, firstLeadingBit(arg_2.e.x), _wgslsmith_sub_u32(arg_0.a.x, 0u)) << (~firstLeadingBit(vec3<u32>(u_input.c, arg_1.e.x, u_input.c)) % vec3<u32>(32u)), ~select(~arg_0.a, ~vec3<u32>(u_input.c, u_input.c, arg_2.d.x), global4.c), vec3<u32>(_wgslsmith_div_u32(arg_0.a.x, min(arg_2.d.x, 0u)), arg_1.d.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c, 120365u), arg_2.d.x))));
    return ~_wgslsmith_clamp_u32(~17524u, abs(_wgslsmith_clamp_u32(27985u, firstLeadingBit(4294967295u), u_input.c)), 66058u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(global1.d.yzz, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), global1.d.xwz, vec3<u32>(global1.d.x, 0u, 140939u))) << (abs(vec3<u32>(~arg_1.x, u_input.c & 1u, _wgslsmith_dot_vec4_u32(global1.d, vec4<u32>(u_input.c, 4294967295u, global1.e.x, global1.e.x)))) % vec3<u32>(32u)), ~arg_1);
    global3 = array<Struct_1, 10>();
    var var_1 = global4.d.x;
    global3 = array<Struct_1, 10>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-598f, _wgslsmith_f_op_f32(max(-158f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(609f, 443f)))))));
    return all(select(vec4<bool>(global2.x, _wgslsmith_f_op_f32(ceil(-1125f)) == -1571f, true, true), !vec4<bool>(true, !global2.x, true, any(vec4<bool>(global2.x, arg_0.c, true, arg_0.c))), min(2147483647i, -arg_2.x) < ~(-22292i)));
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = arg_0;
    global2 = vec2<bool>(global2.x, func_4(global3[_wgslsmith_index_u32(28253u, 10u)], vec3<u32>(func_3(Struct_3(vec3<u32>(73609u, u_input.c, 1u)), arg_0, Struct_2(global1.d.xw, vec2<i32>(u_input.b, var_0.c.x), vec3<i32>(u_input.b, global4.d.x, arg_0.c.x), vec4<u32>(0u, arg_0.a.x, 1u, var_0.d.x), vec2<u32>(var_0.a.x, arg_0.a.x))), 0u, var_0.a.x), _wgslsmith_mult_vec2_i32(max(~var_0.b, vec2<i32>(2147483647i, 0i)), select(arg_0.b, u_input.a, select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), global4.c))), select(!(!vec2<bool>(global2.x, global4.c)), vec2<bool>(all(vec4<bool>(global4.c, global4.c, false, true)), !global0.x), !select(vec2<bool>(global4.c, true), vec2<bool>(true, false), vec2<bool>(global4.c, false)))));
    var var_1 = Struct_1(~global4.a, global1.c.yz, true, global4.d);
    var var_2 = Struct_3(vec3<u32>(1u, 4294967295u, ~_wgslsmith_mult_u32(countOneBits(var_0.d.x), countOneBits(var_0.d.x))));
    global4 = Struct_1(var_0.c.x, firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec2_i32(min(vec2<i32>(u_input.a.x, global1.c.x), arg_0.c.xy), vec2<i32>(global1.b.x, global4.d.x)))), any(select(!select(vec2<bool>(var_1.c, false), vec2<bool>(var_1.c, true), vec2<bool>(global4.c, global4.c)), select(select(vec2<bool>(global2.x, var_1.c), vec2<bool>(var_1.c, true), vec2<bool>(global0.x, true)), select(vec2<bool>(true, true), vec2<bool>(false, global4.c), false), vec2<bool>(var_1.c, false)), !vec2<bool>(global2.x, global2.x))), firstTrailingBit(_wgslsmith_sub_vec4_i32(var_1.d, (vec4<i32>(2147483647i, 1i, 1i, 2147483647i) ^ vec4<i32>(u_input.b, 4585i, -2147483647i, 3388i)) << (select(vec4<u32>(arg_0.d.x, 0u, 4294967295u, var_0.e.x), arg_0.d, vec4<bool>(true, global4.c, true, global2.x)) % vec4<u32>(32u)))));
    return select(vec3<bool>(!(global0.x && true), any(select(select(vec4<bool>(global0.x, global4.c, var_1.c, var_1.c), vec4<bool>(false, var_1.c, global2.x, var_1.c), false), vec4<bool>(true, false, global2.x, true), global0.x)), true), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(global2.x, true, global2.x), false), select(select(vec3<bool>(global4.c, false, false), vec3<bool>(global4.c, true, var_1.c), vec3<bool>(global0.x, global0.x, false)), !vec3<bool>(true, var_1.c, global0.x), false), vec3<bool>(global0.x | global2.x, all(vec2<bool>(false, false)), !global2.x)), select(!(!vec3<bool>(false, global2.x, false)), select(!vec3<bool>(true, global4.c, true), vec3<bool>(false, false, false), select(vec3<bool>(true, var_1.c, true), vec3<bool>(true, false, false), global4.c)), select(select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, false, global4.c), vec3<bool>(true, global0.x, global4.c)), select(vec3<bool>(global2.x, true, true), vec3<bool>(var_1.c, true, true), true), !vec3<bool>(true, global4.c, global4.c))), false && (!global0.x || false)), global4.c);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    global3 = array<Struct_1, 10>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))) * _wgslsmith_f_op_f32(round(133f)));
    let var_1 = global1.d.x;
    global0 = !(!(!select(vec2<bool>(true, global4.c), !vec2<bool>(global4.c, arg_0.x), func_2(Struct_2(global1.a, vec2<i32>(1i, arg_2), vec3<i32>(u_input.a.x, 2147483647i, 28746i), global1.d, vec2<u32>(41897u, 33691u))).yz)));
    var var_2 = vec2<u32>(countOneBits(4294967295u), abs(u_input.c));
    return global3[_wgslsmith_index_u32(112362u, 10u)];
}

fn func_1() -> vec2<bool> {
    let var_0 = func_5(vec2<bool>(true, true), !(!(!func_2(Struct_2(global1.a, vec2<i32>(u_input.a.x, global1.b.x), global4.d.yyz, global1.d, global1.e)))), 0i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1012f, 640f, -182f, -1684f) * vec4<f32>(570f, -1434f, 190f, -942f))))))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1093f + -1006f), -1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-202f, -642f)))))), -1584f));
    let var_2 = -select(_wgslsmith_sub_vec4_i32(vec4<i32>(global4.b.x, countOneBits(1i), -17014i, 1i), min(global4.d, global4.d)), vec4<i32>(var_0.b.x ^ firstLeadingBit(global4.b.x), _wgslsmith_sub_i32(countOneBits(7949i), _wgslsmith_clamp_i32(var_0.b.x, var_0.a, 0i)), var_0.a, -global4.a >> (1u % 32u)), !select(vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(var_0.c, false, global0.x, global2.x), select(vec4<bool>(global4.c, global2.x, global0.x, global2.x), vec4<bool>(global4.c, false, true, var_0.c), vec4<bool>(global0.x, true, false, global4.c))));
    var var_3 = global4.d.zxy;
    global2 = vec2<bool>(false | !(false & (37015u > u_input.c)), func_2(Struct_2(~(vec2<u32>(u_input.c, global1.d.x) << (global1.e % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(var_0.b.x, 0i)), var_2.xw), _wgslsmith_clamp_vec3_i32(global4.d.xyy ^ vec3<i32>(-2147483647i, 96322i, global1.b.x), vec3<i32>(var_3.x, 0i, -45159i) << (vec3<u32>(global1.a.x, u_input.c, u_input.c) % vec3<u32>(32u)), vec3<i32>(-23003i, 11532i, global4.b.x)), abs(vec4<u32>(4294967295u, 17013u, u_input.c, u_input.c)), vec2<u32>(~13159u, global1.a.x))).x);
    return !(!select(!(!vec2<bool>(false, var_0.c)), vec2<bool>(true, true), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 536f;
    global2 = func_1();
    global4 = global3[_wgslsmith_index_u32(~u_input.c, 10u)];
    var var_1 = var_0;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1817f)) + _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(exp2(var_0)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * 1196f)) - var_0), var_0);
    let var_3 = Struct_3(~global1.d.yzw);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(~max(global4.d, global4.d))), _wgslsmith_mod_vec3_i32(-(global1.c | global4.d.ywz) ^ vec3<i32>(_wgslsmith_clamp_i32(global1.b.x, -79931i, global4.b.x), u_input.b, reverseBits(u_input.b)), abs(select(_wgslsmith_mult_vec3_i32(global1.c, vec3<i32>(u_input.a.x, -47227i, u_input.a.x)), global4.d.zwz, true))), var_3.a.x);
}

