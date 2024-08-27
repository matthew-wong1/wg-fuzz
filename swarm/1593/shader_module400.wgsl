struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 88884u);

var<private> global1: array<u32, 4> = array<u32, 4>(21143u, 1u, 62497u, 0u);

var<private> global2: vec2<f32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<bool>) -> bool {
    global0 = u_input.d;
    let var_0 = Struct_1(vec4<bool>(!all(!arg_1.zyx), false, all(vec3<bool>(!arg_2.x, true, arg_1.x)), any(select(select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_2.x, true), arg_1, true), select(arg_0.a, arg_0.a, arg_0.b.x), !arg_1.x))), vec2<bool>(all(!(!arg_1.wwy)), any(arg_1.xx)), ~global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d * global2.x))), u_input.c);
    global0 = _wgslsmith_sub_vec2_u32(u_input.d, _wgslsmith_clamp_vec2_u32(abs(firstLeadingBit(u_input.d)), reverseBits(~vec2<u32>(1u, 6970u)), ~vec2<u32>(104767u, global1[_wgslsmith_index_u32(global0.x, 4u)])) >> (~(~(~vec2<u32>(arg_0.c, 1u))) % vec2<u32>(32u)));
    let var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1729f, -998f, false)), _wgslsmith_div_f32(arg_0.d, arg_0.d)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d + global2.x), _wgslsmith_f_op_f32(global2.x * 132f))) >= -464f);
    global2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(global2.x, arg_0.d)), _wgslsmith_div_f32(var_0.d, -439f))))));
    return _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(11455u, var_0.c, 39844u), vec3<u32>(1u, arg_0.c, global1[_wgslsmith_index_u32(u_input.d.x, 4u)]))) == global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 71144u, u_input.d.x), vec3<u32>(global1[_wgslsmith_index_u32(var_0.c, 4u)], arg_0.c, 7323u)), abs(u_input.d.x)), ~abs(min(vec4<u32>(0u, 23394u, 4294967295u, var_0.c), vec4<u32>(54240u, u_input.d.x, 19997u, 111169u)))), 4u)];
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec4<bool>(true, func_3(Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, true), _wgslsmith_mult_u32(u_input.d.x, global1[_wgslsmith_index_u32(1084u, 4u)]), -277f, u_input.a.xx), vec4<bool>(false, all(vec2<bool>(false, false)), true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1000f)))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global2.x)))), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), !vec2<bool>(all(vec4<bool>(false, false, true, false)), true), !all(vec3<bool>(false, true, true)) & true), 4294967295u, -807f, reverseBits(vec2<i32>(-_wgslsmith_mult_i32(u_input.a.x, -21116i), _wgslsmith_add_i32(-1i, ~11744i))));
    var var_1 = !(!vec4<bool>(!var_0.b.x, var_0.a.x, true, any(vec4<bool>(false, var_0.b.x, var_0.a.x, var_0.b.x))));
    return 2147483647i;
}

fn func_1() -> Struct_1 {
    global0 = u_input.d;
    var var_0 = _wgslsmith_f_op_f32(-global2.x);
    let var_1 = -(~func_2());
    let var_2 = vec3<u32>(~global0.x, global1[_wgslsmith_index_u32(countOneBits(abs(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~25891u, 4u)], ~12773u))), 4u)], 29563u);
    var var_3 = Struct_1(vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), true)), false, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(min(global2.x, global2.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2440f, 222f)))), select(vec2<bool>((22229i < var_1) & any(vec3<bool>(true, false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), !(!(global2.x > global2.x))), _wgslsmith_div_u32(firstTrailingBit(1u) | (26864u | ~global1[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(876u, 0u, 69271u, global0.x), vec4<u32>(u_input.d.x, 0u, var_2.x, u_input.d.x)), vec4<u32>(var_2.x, global1[_wgslsmith_index_u32(0u, 4u)], 0u, global1[_wgslsmith_index_u32(global0.x, 4u)])), u_input.d.x)), _wgslsmith_f_op_f32(1289f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(231f)), global2.x))), select(vec2<i32>(var_1 << (~u_input.d.x % 32u), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(1i, var_1))), _wgslsmith_mod_vec2_i32(vec2<i32>(max(u_input.a.x, -2460i), var_1), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.a.x, var_1), u_input.c, false), abs(u_input.b.yz), abs(u_input.c))), !func_3(Struct_1(vec4<bool>(false, true, false, true), vec2<bool>(false, false), global0.x, global2.x, vec2<i32>(0i, var_1)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true), vec2<bool>(true, true))));
    return Struct_1(var_3.a, select(var_3.b, select(vec2<bool>(var_3.b.x, any(vec2<bool>(false, true))), var_3.a.xz, true), !(!(var_2.x < global1[_wgslsmith_index_u32(19565u, 4u)]))), ~(~(~(global0.x ^ 80675u))), var_3.d, var_3.e & -abs(var_3.e));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(arg_1.a, !vec2<bool>(arg_1.a.x, true), 62521u, _wgslsmith_f_op_f32(-global2.x), vec2<i32>(arg_1.e.x, _wgslsmith_add_i32(11809i, reverseBits(u_input.c.x))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = arg_2.b.x;
    let var_1 = arg_2;
    let var_2 = Struct_1(arg_2.a, vec2<bool>(any(vec3<bool>(arg_1.a.x, arg_0.a.x, true)) && !arg_2.b.x, ~func_1().c > u_input.d.x), global1[_wgslsmith_index_u32(~0u, 4u)], arg_3.x, _wgslsmith_div_vec2_i32(vec2<i32>(~arg_2.e.x, arg_2.e.x), (min(arg_2.e, var_1.e) ^ min(arg_2.e, var_1.e)) & abs(vec2<i32>(var_1.e.x, -2147483647i))));
    var var_3 = func_1();
    let var_4 = ~_wgslsmith_dot_vec3_i32(-vec3<i32>(-arg_0.e.x, 0i, u_input.a.x), u_input.a);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1309f, 1089f, -1000f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(751f, 1181f, global2.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-181f, -1336f, 942f)))))), func_1()), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2359f, global2.x, global2.x) - vec3<f32>(global2.x, 1124f, -1949f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)), true)) + vec3<f32>(global2.x, _wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(-global2.x))), Struct_1(vec4<bool>(any(vec3<bool>(false, true, true)), true, all(vec4<bool>(false, false, true, false)), u_input.a.x != u_input.b.x), vec2<bool>(true, true), global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(0u, 4u)] ^ u_input.d.x), 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)), u_input.a.zx)), func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, 208f), vec2<f32>(1980f, global2.x))))) - vec2<f32>(_wgslsmith_f_op_f32(select(-2719f, global2.x, false)), 435f))));
    let var_1 = var_0.d;
    let var_2 = var_0.a.yw;
    var_0 = Struct_1(func_5(Struct_1(vec4<bool>(var_2.x, select(var_0.b.x, var_2.x, false), true, any(var_0.a.wx)), var_0.a.yx, ~_wgslsmith_add_u32(global0.x, u_input.d.x), 555f, vec2<i32>(u_input.c.x, 0i)), Struct_1(!(!var_0.a), !var_0.b, ~(~global1[_wgslsmith_index_u32(106609u, 4u)]), -842f, _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.e.x, var_0.e.x), vec2<i32>(u_input.b.x, var_0.e.x))), func_5(func_4(vec3<f32>(1041f, var_0.d, global2.x), Struct_1(var_0.a, vec2<bool>(var_0.b.x, true), 24882u, global2.x, u_input.c)), func_5(Struct_1(vec4<bool>(false, var_0.b.x, false, var_0.a.x), vec2<bool>(true, false), global0.x, -744f, u_input.c), func_5(Struct_1(var_0.a, vec2<bool>(var_0.a.x, var_0.b.x), 0u, 536f, var_0.e), Struct_1(vec4<bool>(var_2.x, var_0.b.x, false, true), vec2<bool>(false, false), 4294967295u, var_0.d, var_0.e), Struct_1(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), var_0.a.zy, 78877u, var_0.d, var_0.e), vec2<f32>(global2.x, global2.x)), func_1(), vec2<f32>(global2.x, global2.x)), Struct_1(!var_0.a, vec2<bool>(false, var_0.a.x), u_input.d.x, _wgslsmith_f_op_f32(-var_0.d), var_0.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(698f, global2.x) - vec2<f32>(global2.x, -489f)) - vec2<f32>(1136f, global2.x))), vec2<f32>(_wgslsmith_f_op_f32(max(2114f, _wgslsmith_div_f32(-1000f, -1909f))), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1214f, var_0.d, -372f)), Struct_1(var_0.a, vec2<bool>(false, true), 0u, var_0.d, var_0.e)).d)).a, func_1().a.wy, 13828u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1155f)) * 164f), -vec2<i32>(_wgslsmith_mod_i32(-27326i, _wgslsmith_mult_i32(-2147483647i, var_0.e.x)), u_input.b.x));
    let var_3 = !(select(_wgslsmith_dot_vec3_u32(vec3<u32>(53578u, global1[_wgslsmith_index_u32(45830u, 4u)], 29564u) ^ vec3<u32>(global0.x, u_input.d.x, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global0.x), vec3<u32>(u_input.d.x, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 4u)]))), global0.x, true) >= ~(u_input.d.x >> (~4294967295u % 32u)));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(min(~global0.x, _wgslsmith_dot_vec3_u32(~(vec3<u32>(25160u, global1[_wgslsmith_index_u32(var_0.c, 4u)], u_input.d.x) << (vec3<u32>(0u, 10678u, global1[_wgslsmith_index_u32(5308u, 4u)]) % vec3<u32>(32u))), ~(~vec3<u32>(4294967295u, global0.x, 29722u)))), vec3<i32>(func_1().e.x, min(func_4(vec3<f32>(var_0.d, 249f, var_0.d), func_4(vec3<f32>(-2037f, global2.x, global2.x), Struct_1(vec4<bool>(true, true, var_0.a.x, true), var_0.a.xx, 33696u, var_0.d, vec2<i32>(u_input.a.x, var_0.e.x)))).e.x, u_input.a.x), 1i));
}

