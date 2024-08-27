struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: i32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-1000f, -1069f), vec2<i32>(i32(-2147483648), 12031i), vec2<bool>(false, true), vec2<i32>(0i, 39552i));

var<private> global1: vec3<f32>;

var<private> global2: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_4(Struct_2(_wgslsmith_div_f32(211f, 1154f), Struct_1(global0.a, _wgslsmith_mod_vec2_i32(~global0.d, select(vec2<i32>(global0.d.x, global0.d.x), global0.d, global0.c.x)), global0.c, global0.b)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global0.d, firstTrailingBit(vec2<i32>(-79443i, global0.b.x))), -abs(44296i)) != arg_0, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), Struct_1(global1.zy, vec2<i32>(min(arg_0, arg_0), i32(-1i) * -9461i), vec2<bool>(true, any(vec2<bool>(global0.c.x, true))), abs(min(vec2<i32>(global0.d.x, global0.b.x), global0.b)))), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(402f, global0.a.x, -1000f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global1.x, 871f)))))));
    return _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.a.b.d, vec2<i32>(-arg_0, 0i) & global0.b), 40277i);
}

fn func_2(arg_0: i32) -> Struct_3 {
    global2 = array<vec2<bool>, 6>();
    global2 = array<vec2<bool>, 6>();
    var var_0 = Struct_4(Struct_2(-1279f, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a.x, -1535f), vec2<f32>(global0.a.x, 838f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 1612f) + vec2<f32>(global1.x, 1651f))), global0.d, global2[_wgslsmith_index_u32(1u, 6u)], vec2<i32>(func_3(global0.b.x), -27396i))), !(any(vec2<bool>(global0.c.x, global0.c.x)) == !global0.c.x), Struct_2(-350f, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1.zz - global1.xx))), vec2<i32>(_wgslsmith_add_i32(global0.d.x, 14920i), global0.b.x), select(!vec2<bool>(false, global0.c.x), global0.c, global0.c.x), global0.b)), ~global0.b.x, vec3<f32>(_wgslsmith_f_op_f32(min(-1552f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x - global1.x), _wgslsmith_f_op_f32(sign(global0.a.x))))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.a.x, -771f, global0.c.x)), _wgslsmith_f_op_f32(2293f + -1526f)) * _wgslsmith_f_op_f32(abs(-1391f)))));
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-var_0.c.b.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.b.a.x, var_0.c.b.a.x), global0.a)), min(var_0.a.b.d, -vec2<i32>(global0.d.x, -11115i)), select(select(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], vec2<bool>(var_0.b, false), global0.c.x), !vec2<bool>(false, global0.c.x), false), _wgslsmith_div_vec2_i32(global0.b, var_0.a.b.d << (u_input.a.xw % vec2<u32>(32u))))), global0.c.x, var_0.c, func_3(_wgslsmith_dot_vec2_i32(~(~global0.d), reverseBits(vec2<i32>(arg_0, 28865i)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1466f))), _wgslsmith_f_op_f32(-1129f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.b.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) - 3348f), _wgslsmith_f_op_f32(round(-235f))))));
    var var_2 = 689f;
    return Struct_3(select(vec3<bool>(any(select(vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(var_1.b, global0.c.x, true), vec3<bool>(var_0.b, var_0.b, true))), true, var_1.a.b.c.x), !(!vec3<bool>(global0.c.x, true, global0.c.x)), select(false, !(!global0.c.x), false)), 26728u);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = 4294967295u;
    let var_1 = !select(select(!(!arg_1.a.yz), vec2<bool>(false, true), !global0.c), !select(global0.c, select(arg_1.a.xz, global2[_wgslsmith_index_u32(10534u, 6u)], arg_1.a.xz), any(vec2<bool>(false, true))), arg_1.a.xy);
    var var_2 = arg_1.a;
    let var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(236f, -893f))))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, global1.x))))), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(global0.d.x, global0.d.x)), -global0.d), select(!vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, global0.c.x), func_2(global0.b.x).a.zy), -vec2<i32>(1i, arg_2))), true, Struct_2(global0.a.x, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-909f, 1193f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1613f, global1.x) - global1.yy)), global0.d, vec2<bool>(arg_1.a.x, true), abs(select(global0.b, global0.d, global2[_wgslsmith_index_u32(arg_0, 6u)])))), 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global1.x, global0.a.x) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(174f, global0.a.x, 302f), vec3<f32>(global1.x, global1.x, -2097f), true))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(537f, global1.x, global1.x))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 1574f, -102f), vec3<f32>(1309f, -911f, -279f)))))))));
    let var_4 = global1.x;
    return arg_1;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_5) -> u32 {
    let var_0 = func_4(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.a.x, 4294967295u), ~(~u_input.a.x & (19368u ^ u_input.a.x))), func_2(6462i), _wgslsmith_sub_i32(global0.b.x, _wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, -1i, global0.b.x, -2147483647i), vec4<i32>(global0.d.x, arg_1.c.b.x, arg_1.d.b.b.x, global0.d.x) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), -countOneBits(vec4<i32>(global0.d.x, global0.d.x, -19871i, arg_1.d.b.d.x)))), firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a & u_input.a, u_input.a ^ vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a) << (_wgslsmith_mult_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u)))));
    global0 = arg_1.c;
    let var_1 = select(_wgslsmith_mod_i32(~global0.d.x, global0.d.x), ~max(_wgslsmith_add_i32(global0.b.x, global0.b.x), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.d.x, 2147483647i), arg_1.d.b.b, global0.b), select(global0.b, vec2<i32>(1i, -2147483647i), true))), true | select(!var_0.a.x && func_4(u_input.a.x, Struct_3(var_0.a, u_input.a.x), arg_1.d.b.b.x, vec4<u32>(u_input.a.x, u_input.a.x, var_0.b, u_input.a.x)).a.x, func_4(_wgslsmith_add_u32(24985u, u_input.a.x), Struct_3(var_0.a, 58483u), min(44130i, 2147483647i), firstLeadingBit(u_input.a)).a.x, 1i < -arg_1.c.b.x));
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-906f, arg_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-250f + _wgslsmith_f_op_f32(select(414f, -242f, var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(global1.x - 419f)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.b.x, arg_1.d.a))), vec2<f32>(643f, -155f)))), vec2<i32>(~_wgslsmith_add_i32(-7452i, arg_1.c.d.x), i32(-1i) * -2147483647i), vec2<bool>(global0.c.x, 62384u <= firstTrailingBit(var_0.b)), select(arg_1.d.b.d, abs(global0.d), select(func_2(190i).a.yy, !vec2<bool>(arg_1.d.b.c.x, arg_1.a), func_2(-20029i).a.x))));
    var var_3 = vec4<f32>(-202f, _wgslsmith_f_op_f32(1f + 682f), arg_0.x, var_2.a);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, false & any(!global2[_wgslsmith_index_u32(1u, 6u)]), global0.c.x);
    var var_1 = ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(55988u, func_1(vec3<f32>(1000f, global0.a.x, global1.x), Struct_5(true, vec3<f32>(-318f, global1.x, global0.a.x), Struct_1(vec2<f32>(1110f, 443f), vec2<i32>(global0.d.x, global0.b.x), var_0.yx, global0.d), Struct_2(598f, Struct_1(vec2<f32>(750f, global1.x), vec2<i32>(1i, global0.b.x), vec2<bool>(var_0.x, true), vec2<i32>(global0.d.x, -38570i))))), countOneBits(24129u), ~u_input.a.x), vec4<u32>(u_input.a.x | u_input.a.x, u_input.a.x, ~1u, ~u_input.a.x)), u_input.a);
    global0 = Struct_1(_wgslsmith_div_vec2_f32(global0.a, global1.xz), vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mult_i32(global0.d.x, -2147483647i), func_3(global0.d.x))), 11050i), vec2<bool>((firstLeadingBit(0u) < _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) || !func_2(global0.d.x).a.x, true && (_wgslsmith_f_op_f32(-global1.x) >= _wgslsmith_f_op_f32(-global1.x))), -global0.d);
    var var_2 = -_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(global0.b, global0.d), global0.d.x ^ -23964i, ~0i)), vec4<i32>(~(-42568i ^ global0.d.x), global0.d.x, ~(-5423i), 1i));
    global2 = array<vec2<bool>, 6>();
    var_1 = firstTrailingBit(u_input.a.x);
    var var_3 = Struct_5(true, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.x - 344f), 932f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x))), 408f, global0.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1428f, 436f)), _wgslsmith_mod_vec2_i32(~vec2<i32>(var_2.x, 1i), vec2<i32>(45060i, 1i)), select(!vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), global0.c), ~global0.b), Struct_2(_wgslsmith_f_op_f32(ceil(global0.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(global1.xx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 292f))), -_wgslsmith_clamp_vec2_i32(var_2.wx, global0.b, global0.b), !vec2<bool>(false, global0.c.x), vec2<i32>(20081i, 35948i) << (u_input.a.xw % vec2<u32>(32u)))));
    var_1 = ~(~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 4294967295u), u_input.a.x), func_2(-2147483647i & global0.b.x).b)), _wgslsmith_sub_u32(func_2(~(var_2.x ^ global0.d.x)).b, _wgslsmith_add_u32(u_input.a.x, ~15174u >> (1u % 32u))), vec2<u32>(~15076u, _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(~u_input.a, vec4<u32>(78033u, u_input.a.x, 31400u, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-450f, -2111f, global0.a.x, -570f)))))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-4708i, global0.d.x, var_3.c.d.x, 12197i) & _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.c.d.x, 1i, 1i, -7494i), vec4<i32>(var_2.x, 1i, var_2.x, var_2.x)), ~(~vec4<i32>(2147483647i, 12424i, 1610i, 2147483647i)), false), vec4<i32>(~1i, -_wgslsmith_mod_i32(var_2.x, -2147483647i), _wgslsmith_clamp_i32(-var_2.x, 1i, -1i), abs(var_3.d.b.d.x)), vec4<i32>(-41366i, select(max(-10191i, 2147483647i), ~(-10491i), true), max(_wgslsmith_dot_vec3_i32(var_2.xwx, vec3<i32>(var_2.x, -64378i, -698i)), -2147483647i), ~var_2.x)));
}

