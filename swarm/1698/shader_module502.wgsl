struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

var<private> global2: array<bool, 29> = array<bool, 29>(false, false, true, true, true, false, true, true, false, false, false, false, false, false, true, false, false, true, false, false, true, false, false, false, true, false, false, false, true);

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, 39505i, 27665i, 16483i);

var<private> global4: Struct_3;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    global1 = u_input.a.zyz;
    let var_0 = ~(~vec2<u32>(global1.x, _wgslsmith_div_u32(4294967295u, global1.x)) & _wgslsmith_sub_vec2_u32((global1.zz >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))) & min(global1.zz, global1.yy), ~vec2<u32>(4294967295u, 20256u)));
    var var_1 = global4.b.a.d.yz;
    let var_2 = 11705u;
    var var_3 = u_input.a;
    return ~(~(~29040u));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_3 {
    global1 = ~reverseBits(vec3<u32>(_wgslsmith_mult_u32(25923u, 77120u), 4294967295u, ~(u_input.a.x << (global1.x % 32u))));
    var var_0 = 8610u;
    global1 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(0u, arg_0.c), func_3(), 48967u), min(vec3<u32>(_wgslsmith_sub_u32(1u, arg_0.c), reverseBits(32083u), ~global1.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.wzx, vec3<u32>(1u, 30994u, 8966u)), u_input.a.xwy, ~u_input.a.zzz)));
    var var_1 = _wgslsmith_mult_vec3_i32(global4.b.b.e.yzw, global3.yxz);
    let var_2 = Struct_3(global4.a, global4.b, true | global4.c, arg_0.c | firstLeadingBit(73306u), arg_0.c);
    return Struct_3(false, Struct_2(Struct_1(global4.b.d.a, var_2.b.a.b, _wgslsmith_dot_vec3_u32(u_input.a.wzw, ~u_input.a.ywz), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(arg_0.d)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.b.b.d.x, -612f, -1372f))))), arg_0.e), var_2.b.a, arg_0.d, global4.b.d), arg_0.a.x, ~(~(~(global1.x ^ arg_0.c))), global1.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<f32>) -> bool {
    let var_0 = func_2(arg_0.b.d, ~2147483647i).b;
    let var_1 = all(!vec4<bool>(var_0.b.a.x, all(select(vec4<bool>(global4.a, false, var_0.b.a.x, true), vec4<bool>(global2[_wgslsmith_index_u32(74055u, 29u)], global4.a, true, global4.b.d.a.x), vec4<bool>(false, false, var_0.d.a.x, arg_0.c))), _wgslsmith_f_op_f32(step(1221f, arg_1.b.b.d.x)) >= _wgslsmith_f_op_f32(-arg_1.b.a.d.x), global2[_wgslsmith_index_u32(~4294967295u, 29u)]));
    let var_2 = abs(vec4<u32>(4294967295u ^ _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a.x), global1.zz), ~vec2<u32>(global4.b.d.c, 0u)), _wgslsmith_add_u32(min(global1.x, 29128u), _wgslsmith_sub_u32(global4.e, 38507u)), ~_wgslsmith_div_u32(global4.b.d.c, func_2(global4.b.a, -5027i).d), 1u));
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(167370u), arg_0.b.d.c), 29u)];
    var var_3 = abs(-1651i);
    return true;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<bool>) -> bool {
    var var_0 = vec3<bool>((-1783f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global4.b.c.x)) && true, func_4(func_2(global4.b.d, arg_0.x), func_2(func_2(global4.b.d, arg_1 & global3.x).b.d, 85321i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global4.b.b.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b.a.d.x, global4.b.c.x, global4.b.c.x) - _wgslsmith_f_op_vec3_f32(-global4.b.a.d)), select(true, true | global4.c, any(vec3<bool>(global2[_wgslsmith_index_u32(72141u, 29u)], false, false)))))), arg_2.x);
    global4 = Struct_3(false, global4.b, !(~(~70852u) >= global1.x), _wgslsmith_div_u32(global4.e, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(countOneBits(u_input.a), u_input.a), global1.x)), _wgslsmith_div_u32(1u, func_2(global4.b.a, -global3.x).b.a.c));
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(57208u, 29u)], func_2(Struct_1(!func_2(global4.b.a, 2147483647i).b.a.a, min(global3.xzx, global3.xwz), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.b.b.d.x, -1000f, global4.b.b.d.x))) - global4.b.d.d), -vec4<i32>(0i, 44501i, global3.x, -59227i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(43080i, -2147483647i, arg_1, 2147483647i), vec4<i32>(global4.b.d.b.x, global4.b.a.b.x, global4.b.a.b.x, -1i))), countOneBits(~(-50088i))).b, arg_1 < global4.b.b.e.x, _wgslsmith_clamp_u32(1u, ~global4.b.b.c, 65651u), _wgslsmith_sub_u32(u_input.a.x, ~0u));
    var var_2 = global2[_wgslsmith_index_u32(~u_input.a.x, 29u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.d.d.zy + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.b.b.d.x, 1453f)))) - _wgslsmith_f_op_vec2_f32(global4.b.a.d.yy * vec2<f32>(_wgslsmith_div_f32(global4.b.d.d.x, _wgslsmith_f_op_f32(round(var_1.b.b.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(327f * -2035f))))));
    return global2[_wgslsmith_index_u32(global4.e, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = Struct_1(vec2<bool>(func_1(global3.xwx, 1i, select(!vec2<bool>(false, global2[_wgslsmith_index_u32(72591u, 29u)]), select(vec2<bool>(false, false), global4.b.d.a, true), vec2<bool>(false, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, global4.c), global4.b.a.a))), firstLeadingBit(vec3<i32>(0i, _wgslsmith_add_i32(1i << (global1.x % 32u), ~(-33432i)), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, -18747i, 1i), global4.b.b.b) ^ -19371i)), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.b.c) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global4.b.c), global4.b.c, true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.b.c - global4.b.b.d)))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_sub_i32(global3.x, global4.b.a.e.x), _wgslsmith_dot_vec3_i32(global4.b.a.b, vec3<i32>(6992i, 1i, 0i)), -31111i), global4.b.d.e) << (vec4<u32>(58633u, ~(~global4.b.a.c), ~min(u_input.a.x, 0u), _wgslsmith_dot_vec4_u32(countOneBits(u_input.a), abs(u_input.a))) % vec4<u32>(32u)));
    var var_1 = func_2(func_2(Struct_1(select(!var_0.a, vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], var_0.a.x), func_2(global4.b.d, global4.b.b.b.x).b.b.a), global4.b.b.e.zzw, ~(~global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.b.a.d)), func_2(func_2(Struct_1(var_0.a, vec3<i32>(global3.x, 18249i, 1i), var_0.c, vec3<f32>(-314f, 618f, 1202f), var_0.e), global3.x).b.d, -1i).b.a.e), 0i).b.a, -_wgslsmith_mod_i32(var_0.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e.x, var_0.b.x, -1i), vec3<i32>(1i, -10869i, global3.x)), func_2(Struct_1(vec2<bool>(global4.a, false), vec3<i32>(var_0.e.x, 1i, -62589i), 47554u, var_0.d, var_0.e), -1i).b.a.b.x))).b;
    var var_2 = ~max(abs(var_1.a.b.xy ^ (vec2<i32>(var_0.e.x, -2147483647i) ^ global4.b.a.e.ww)), vec2<i32>(_wgslsmith_add_i32(var_0.b.x, var_1.a.e.x), ~_wgslsmith_mod_i32(-55211i, 1i)));
    var var_3 = ~vec3<i32>(abs(-var_2.x), 0i, _wgslsmith_sub_i32(var_2.x, var_0.b.x) | ~global3.x) << (vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, 63077u), 52945u), ~1u), var_0.c, ~abs(_wgslsmith_div_u32(u_input.a.x, var_0.c))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global4.b.d.d.x - _wgslsmith_f_op_f32(abs(1190f))), _wgslsmith_f_op_f32(max(func_2(Struct_1(global4.b.b.a, global3.wyw, 1u, vec3<f32>(201f, -811f, global4.b.b.d.x), global4.b.a.e), 0i).b.c.x, -1618f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1234f, var_1.d.d.x))), 1549f), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global4.b.d.d.x * 610f), global4.b.c.x, _wgslsmith_f_op_f32(global4.b.c.x + 1353f), func_2(global4.b.d, -47566i).b.b.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-577f, var_0.d.x, 397f, 335f) + vec4<f32>(var_0.d.x, -408f, -1468f, -1997f))))));
}

