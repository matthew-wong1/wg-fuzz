struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_4,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_3, 18>;

var<private> global2: vec4<f32> = vec4<f32>(-256f, -3002f, 264f, 812f);

var<private> global3: array<i32, 8>;

var<private> global4: array<Struct_5, 13>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> i32 {
    var var_0 = Struct_1(!select(select(arg_1.c.d.c.b, arg_1.a.d.b, select(vec3<bool>(true, arg_1.c.d.b.x, false), arg_1.a.d.a, vec3<bool>(false, false, true))), arg_1.c.d.b.zzy, any(arg_1.c.d.b)), arg_1.a.e.b);
    let var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(~u_input.a.x), 8u)];
    var var_2 = vec4<u32>(0u, arg_1.b, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, u_input.a.x >> (arg_1.b % 32u), select(1u, 0u, arg_1.a.e.a.x), 1u), ~firstLeadingBit(vec4<u32>(41281u, arg_1.b, 1u, arg_1.b))), select(4294967295u, ~(arg_0 | u_input.b.x), true)), u_input.a.x & ~(~72299u));
    let var_3 = select(_wgslsmith_mod_vec3_i32(firstTrailingBit(firstTrailingBit(max(vec3<i32>(global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)]), vec3<i32>(arg_1.c.c, -59769i, global3[_wgslsmith_index_u32(1u, 8u)])))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], arg_1.c.c), vec3<i32>(arg_1.c.c, 1i, arg_1.c.c), vec3<i32>(global3[_wgslsmith_index_u32(var_2.x, 8u)], arg_1.c.c, arg_1.c.c)), countOneBits(vec3<i32>(-2147483647i, arg_1.c.c, 2147483647i))), select(countOneBits(vec3<i32>(global3[_wgslsmith_index_u32(30737u, 8u)], global3[_wgslsmith_index_u32(var_2.x, 8u)], global3[_wgslsmith_index_u32(arg_1.b, 8u)])), -vec3<i32>(60677i, arg_1.c.c, arg_1.c.c), vec3<bool>(arg_1.c.d.a, var_0.b.x, arg_1.c.d.a)))), (max(~vec3<i32>(1i, arg_1.c.c, 2147483647i), ~vec3<i32>(global3[_wgslsmith_index_u32(0u, 8u)], 2147483647i, arg_1.c.c)) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 1u, 12180u), vec3<u32>(u_input.b.x, 35187u, arg_1.b) >> (vec3<u32>(55621u, u_input.b.x, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) << (~vec3<u32>(u_input.a.x | var_2.x, 26914u, _wgslsmith_clamp_u32(arg_0, arg_1.b, arg_0)) % vec3<u32>(32u)), all(vec3<bool>(true, false, arg_1.c.d.a)));
    let var_4 = arg_1;
    return _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(select((arg_0 & var_2.x) << (countOneBits(1u) % 32u), ~_wgslsmith_div_u32(16651u, arg_1.b), false), 8u)], 0i);
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: u32) -> u32 {
    var var_0 = arg_1.a.d;
    let var_1 = arg_1.d.x;
    var var_2 = vec4<i32>(func_3(~4294967295u, Struct_5(Struct_2(_wgslsmith_f_op_vec3_f32(-global2.xyx), _wgslsmith_f_op_f32(-global2.x), global2.x, Struct_1(vec3<bool>(true, true, true), var_0.a), Struct_1(var_0.a, arg_1.a.d.b)), 28431u, arg_1.c, _wgslsmith_f_op_vec2_f32(abs(arg_1.d)))), global3[_wgslsmith_index_u32(1u, 8u)], global3[_wgslsmith_index_u32(abs(arg_2), 8u)], ~(-global3[_wgslsmith_index_u32(4294967295u, 8u)] | global3[_wgslsmith_index_u32(~(arg_1.b ^ arg_1.b), 8u)]));
    return 58641u;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>) -> Struct_1 {
    global1 = array<Struct_3, 18>();
    var var_0 = vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~78712u, ~func_2(true, Struct_5(Struct_2(arg_0, -105f, 751f, Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, false))), 32312u, Struct_4(arg_1.x, 1996f, global3[_wgslsmith_index_u32(4294967295u, 8u)], Struct_3(false, vec4<bool>(false, true, false, true), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, true, false)), arg_1)), vec2<f32>(arg_0.x, -1768f)), u_input.b.x)), 8u)], _wgslsmith_add_i32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xy, firstTrailingBit(u_input.b.zy)), 8u)], global3[_wgslsmith_index_u32(1u, 8u)] & 1i));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, u_input.a.x), 8u)], _wgslsmith_div_i32(global3[_wgslsmith_index_u32(1u ^ u_input.b.x, 8u)], 26051i)), i32(-1i) * -47890i) != ~(-select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i), vec4<i32>(1i, -5817i, -1i, var_0.x)), 1i, true));
    var var_2 = _wgslsmith_f_op_vec2_f32(arg_1.xx - _wgslsmith_f_op_vec2_f32(-arg_0.zx));
    var_1 = (~u_input.a.x == ~func_2(false, global4[_wgslsmith_index_u32(44156u, 13u)], min(u_input.b.x, 0u))) && (arg_1.x != 1653f);
    return Struct_1(select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), true), !vec3<bool>(all(vec2<bool>(true, false)), true, all(vec2<bool>(false, false))), select(vec3<bool>(all(vec3<bool>(false, true, true)), true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), all(vec4<bool>(true, true, true, true)))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, false)), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(exp2(global2.x))), -1199f, _wgslsmith_div_f32(global2.x, -1750f))), global2.x, -428f, func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -488f, global2.x), global2.zww, vec3<bool>(false, false, true))))))), _wgslsmith_f_op_vec3_f32(-global2.yzx)), func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-313f, _wgslsmith_f_op_f32(min(876f, global2.x)), _wgslsmith_f_op_f32(abs(-978f))), global2.zxx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.zwy))));
    let var_1 = var_0.d;
    var var_2 = _wgslsmith_clamp_u32(abs(9925u), 1u, u_input.a.x);
    global1 = array<Struct_3, 18>();
    let var_3 = _wgslsmith_mod_i32(-16284i, global3[_wgslsmith_index_u32(4294967295u, 8u)]);
    var var_4 = global1[_wgslsmith_index_u32(u_input.a.x >> (_wgslsmith_mod_u32(u_input.a.x, 39676u) % 32u), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_4.d.x, var_4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x + 1162f)))), global2.x), ~abs(_wgslsmith_dot_vec4_u32(reverseBits(u_input.b), vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(-reverseBits(2147483647i), min(abs(0i), firstTrailingBit(var_3))), reverseBits(countOneBits(countOneBits(vec2<i32>(var_3, 1i))))), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c))), 1093f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.d.x), global2.x, true))), 1i);
}

