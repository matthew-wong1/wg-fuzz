struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

var<private> global3: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(max(max(arg_2.b, arg_2.b), 1u) ^ (~arg_3.d.b << (~arg_3.b.b % 32u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.x, 1u), abs(arg_0.x)), u_input.c.x), 30u)];
    var var_1 = vec2<bool>(!(false != !(!var_0.x)), true | var_0.x);
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(select(vec4<i32>(arg_2.d, -3394i, 27705i, 2147483647i), vec4<i32>(2147483647i, arg_2.e, 1i, arg_2.e), vec4<bool>(var_1.x, false, global1.x, false))), abs(vec4<i32>(-14230i, arg_2.e, -2147483647i, arg_3.b.d)) ^ ~vec4<i32>(1i, arg_2.e, arg_3.b.d, arg_3.a.d), vec4<i32>(arg_3.c.e, -1i, -34029i, _wgslsmith_add_i32(7269i, 57679i))) ^ -vec4<i32>(35766i, select(arg_2.d, -18218i, global1.x), -2147483647i, 2147483647i), ~(vec4<i32>(arg_2.d, -38444i, ~arg_2.d, _wgslsmith_sub_i32(arg_2.d, arg_3.c.e)) ^ vec4<i32>(~43238i, _wgslsmith_mod_i32(arg_2.e, 15441i), _wgslsmith_add_i32(0i, arg_2.d), 1i)));
    return ~min(59483u, 28062u) < max(arg_2.a.x, (_wgslsmith_sub_u32(arg_2.b, 1u) << (86819u % 32u)) << (_wgslsmith_mod_u32(~arg_0.x, u_input.e.x) % 32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    var var_0 = Struct_3(!(!global1.x | any(vec2<bool>(false, true))) || !(true | global1.x), 1i != arg_0.x, _wgslsmith_add_vec4_u32(u_input.e, ~(~u_input.e)));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))), -1409f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f))));
    var_0 = Struct_3(any(!(!select(vec2<bool>(false, var_0.a), vec2<bool>(true, var_0.b), vec2<bool>(var_0.a, var_0.a)))), !global1.x, var_0.c);
    global3 = !select(any(!select(vec2<bool>(var_0.a, false), vec2<bool>(true, global1.x), true)), global1.x, true);
    var var_1 = Struct_3(global1.x, !func_3(~(~var_0.c.xwz), vec4<f32>(-535f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-1000f * 1289f), arg_2), Struct_1(~vec4<u32>(var_0.c.x, 54358u, arg_1.x, 3418u), 1u, _wgslsmith_f_op_f32(max(arg_2, global0.x)), arg_0.x, -3070i), Struct_2(Struct_1(vec4<u32>(u_input.e.x, var_0.c.x, var_0.c.x, u_input.e.x), var_0.c.x, arg_2, 0i, arg_0.x), Struct_1(vec4<u32>(arg_1.x, u_input.a, var_0.c.x, 16859u), arg_1.x, -1000f, 2954i, arg_0.x), Struct_1(u_input.e, var_0.c.x, arg_2, -2147483647i, -34180i), Struct_1(u_input.d, 1628u, -1000f, -58326i, arg_0.x))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(arg_1.x, var_0.c.x, 4294967295u, 4294967295u)), u_input.e) | var_0.c, _wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(~76775u, 5965u, ~13496u, firstLeadingBit(u_input.d.x)))));
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-arg_0.ww, ~(arg_0.zw | arg_0.zz)), -2147483647i, 0i);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = global0.x == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(min(arg_1.c, arg_1.c)))), 105f));
    var var_1 = vec2<i32>(2147483647i, arg_0);
    var var_2 = vec2<u32>(_wgslsmith_div_u32(arg_2.x >> (4294967295u % 32u), 4294967295u) & arg_1.b, _wgslsmith_sub_u32(~reverseBits(~arg_2.x), _wgslsmith_add_u32(u_input.e.x, max(~arg_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(6345u, 22690u, arg_2.x, u_input.e.x), vec4<u32>(u_input.c.x, 63302u, 17919u, 48291u))))));
    let var_3 = _wgslsmith_f_op_f32(sign(-713f));
    let var_4 = vec3<i32>(~(~(-var_1.x)), -27037i, func_2(~vec4<i32>(-6692i, 1i, 1i, -1i), ~u_input.b.yw, _wgslsmith_f_op_f32(select(495f, var_3, global1.x))));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    global2 = array<vec3<bool>, 30>();
    var var_0 = Struct_3(!all(global2[_wgslsmith_index_u32(4294967295u, 30u)]), !(arg_0.c.e != -1i) || global1.x, u_input.b ^ _wgslsmith_clamp_vec4_u32(~(vec4<u32>(0u, arg_0.d.b, arg_0.d.a.x, u_input.e.x) ^ arg_0.c.a), arg_0.c.a, select(func_1(arg_0.c.d, Struct_1(vec4<u32>(13785u, 37245u, 4294967295u, u_input.e.x), 8889u, arg_1, arg_0.d.e, arg_0.a.e), vec2<u32>(19778u, 4675u)).a, u_input.b, !vec4<bool>(global1.x, global1.x, true, global1.x))));
    var var_1 = !all(!select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, false), var_0.a));
    let var_2 = arg_0.d;
    let var_3 = select(vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(false, false), vec2<bool>(true, false), global1.x))), false, true), !(!(!select(vec3<bool>(var_0.a, var_0.a, var_0.b), global2[_wgslsmith_index_u32(11352u, 30u)], false))), vec3<bool>(any(global2[_wgslsmith_index_u32(u_input.d.x, 30u)]), var_0.b, global1.x));
    return Struct_3(!(1i < arg_0.a.d), var_0.a, arg_0.b.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    let var_0 = Struct_1(~max(u_input.d, arg_0.a), 5226u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1078f)))), ~abs(~0i), -arg_0.d);
    let var_1 = global0.x;
    global3 = any(vec4<bool>(arg_1.c.x <= ~(~u_input.a), true, global1.x, global1.x));
    let var_2 = func_1(_wgslsmith_div_i32(reverseBits(var_0.e), var_0.d), Struct_1(arg_1.c | vec4<u32>(0u, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 12882u, 14468u), arg_1.c.xxy), 4294967295u >> (u_input.b.x % 32u)), _wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.c.x, arg_0.b, 49948u, 38722u)), vec4<u32>(0u, 1u, 4294967295u, 8504u))), arg_0.c, 2147483647i, countOneBits((var_0.e ^ arg_0.e) ^ (61872i & arg_0.d))), vec2<u32>(u_input.c.x, ~(arg_0.b >> (~u_input.b.x % 32u))));
    let var_3 = select(!(!(!global2[_wgslsmith_index_u32(u_input.c.x, 30u)])), !(!select(vec3<bool>(true, false, false), global2[_wgslsmith_index_u32(arg_1.c.x << (arg_1.c.x % 32u), 30u)], vec3<bool>(arg_1.a, true, global1.x))), !any(!vec3<bool>(false, arg_1.b, arg_1.b)));
    return true | func_3(func_1(var_2.d, Struct_1(~vec4<u32>(0u, 4294967295u, arg_0.a.x, arg_1.c.x), _wgslsmith_mult_u32(0u, 4294967295u), global0.x, ~22347i, var_0.e), ~vec2<u32>(var_0.b, 4294967295u)).a.xyw, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(-arg_0.c), -106f, 1252f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_2.c, arg_0.c, var_2.c) + vec4<f32>(global0.x, global0.x, var_2.c, -1175f)) + vec4<f32>(var_2.c, global0.x, global0.x, 101f))), arg_0, Struct_2(Struct_1(vec4<u32>(arg_1.c.x, 4294967295u, 33706u, arg_1.c.x) & var_2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.x, 4294967295u), arg_1.c.yw), -526f, -34289i, _wgslsmith_clamp_i32(-35177i, var_2.e, var_0.e)), var_0, Struct_1(arg_0.a, firstLeadingBit(4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -1203f), _wgslsmith_add_i32(arg_0.d, var_0.e), -20463i), var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var var_1 = vec2<bool>(true, global1.x);
    global1 = vec2<bool>(func_5(Struct_1(~(u_input.e | vec4<u32>(0u, 4294967295u, 1u, 17049u)), u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1510f), firstLeadingBit(~(-2147483647i)), 2147483647i), func_4(Struct_2(func_1(0i, Struct_1(u_input.d, 0u, global0.x, -46078i, 31746i), u_input.c), Struct_1(vec4<u32>(8351u, u_input.d.x, u_input.b.x, 1u), u_input.b.x, global0.x, -2147483647i, 2147483647i), Struct_1(u_input.e, u_input.b.x, global0.x, -24048i, 2147483647i), Struct_1(vec4<u32>(u_input.b.x, u_input.e.x, 12697u, 0u), u_input.e.x, global0.x, -1i, -2147483647i)), global0.x)), !(!all(vec4<bool>(false, false, false, var_1.x))));
    var_1 = select(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, global1.x), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(var_1.x, global1.x), vec2<bool>(var_1.x, var_1.x)), vec2<bool>(true, true)), !select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(global1.x && true, true)), !vec2<bool>(!global1.x, !var_1.x), select(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, false), vec2<bool>(global1.x, true)), select(!select(vec2<bool>(false, global1.x), vec2<bool>(true, var_1.x), vec2<bool>(true, false)), vec2<bool>(var_1.x, any(vec4<bool>(var_1.x, true, global1.x, global1.x))), true), !(!select(vec2<bool>(var_1.x, true), vec2<bool>(false, global1.x), false))));
    let var_2 = 2147483647i;
    var var_3 = Struct_1(u_input.b, _wgslsmith_sub_u32(1u, ~_wgslsmith_clamp_u32(max(u_input.b.x, 4294967295u), u_input.b.x, ~0u)), -189f, var_2, max(var_2, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-71189i, -43242i), vec2<i32>(var_2, var_2)) | ~var_2, 1i)));
    var_0 = _wgslsmith_div_i32(var_2, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2, reverseBits(-8837i), _wgslsmith_add_i32(var_3.d, var_2 & 9138i), min(0i, abs(var_3.d))), vec4<i32>(0i, ~reverseBits(-88778i), var_2 << (var_3.b % 32u), -var_3.e)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(func_1(2147483647i, Struct_1(u_input.d, u_input.e.x, -461f, var_2, var_3.e), vec2<u32>(4294967295u, 3620u)).a.x, _wgslsmith_dot_vec4_u32(var_3.a, u_input.d)) << (var_3.b % 32u), -vec2<i32>(1i, -23673i), max(min(1i, var_3.e), ~(~37570i)), _wgslsmith_f_op_vec2_f32(global0.zz - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.c, 1590f), vec2<f32>(global0.x, global0.x), vec2<bool>(true, var_1.x)))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.c, -351f)))), var_3.c, _wgslsmith_div_f32(func_1(-12827i, Struct_1(vec4<u32>(1u, var_3.b, u_input.b.x, u_input.d.x), 1u, 715f, 54818i, var_3.e), vec2<u32>(var_3.b, var_3.a.x)).c, -1603f)));
}

