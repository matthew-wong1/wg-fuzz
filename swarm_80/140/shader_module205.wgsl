struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(357f, 249f);

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, false), vec2<f32>(-495f, -526f), vec3<u32>(1u, 4294967295u, 20622u), vec3<bool>(true, false, false));

var<private> global2: array<vec3<bool>, 31>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    global1 = Struct_1(global1.a, vec2<bool>(!all(arg_1.a), all(!vec2<bool>(true, arg_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(select(136f, -1127f, global1.b.x))))), arg_1.d, vec3<bool>(true, select(arg_2.a.x, true, global1.e.x), any(arg_1.a.zw)));
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global0.x) * _wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x)) + global1.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)))) * _wgslsmith_f_op_vec2_f32(step(global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global1.c.x)) * _wgslsmith_f_op_vec2_f32(arg_2.c * global1.c))))));
    let var_2 = ~vec3<u32>(~51225u, global1.d.x, global1.d.x);
    global1 = arg_1;
    return abs(vec3<u32>(0u, global1.d.x, 0u));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> Struct_1 {
    global2 = array<vec3<bool>, 31>();
    var var_0 = 29418i;
    global2 = array<vec3<bool>, 31>();
    var var_1 = false || (countOneBits(u_input.b) >= reverseBits(global1.d.x));
    var var_2 = Struct_1(!(!vec4<bool>(any(global1.b), all(arg_0), true, true)), select(vec2<bool>(~u_input.b != ~0u, global1.b.x), vec2<bool>(!any(vec4<bool>(arg_0.x, global1.b.x, arg_0.x, true)), arg_2.x), all(arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.c.x, -1443f))) * global1.c), global1.d, select(select(global2[_wgslsmith_index_u32(u_input.b << (max(11379u, u_input.b) % 32u), 31u)], select(global1.e, !vec3<bool>(arg_2.x, true, true), false), global2[_wgslsmith_index_u32(4294967295u, 31u)]), vec3<bool>(true, !(arg_1.x != -1i), any(vec3<bool>(arg_0.x, false, arg_0.x))), !(!(!arg_2))));
    return Struct_1(select(global1.a, vec4<bool>(true, arg_0.x, false, !arg_2.x), false), global1.a.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c) * vec2<f32>(var_2.c.x, var_2.c.x)))), func_3(vec2<bool>(any(select(vec4<bool>(arg_2.x, true, true, false), vec4<bool>(arg_0.x, arg_2.x, true, var_2.a.x), global1.a.x)), global1.a.x), Struct_1(var_2.a, var_2.e.xy, vec2<f32>(var_2.c.x, _wgslsmith_f_op_f32(-global0.x)), vec3<u32>(min(30861u, global1.d.x), global1.d.x, 1u), !select(global2[_wgslsmith_index_u32(1u, 31u)], var_2.a.wwx, true)), Struct_1(var_2.a, !(!global1.a.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(564f, -497f)), ~vec3<u32>(10578u, var_2.d.x, 57014u), !(!vec3<bool>(false, global1.b.x, false)))), !(!vec3<bool>(14888u >= var_2.d.x, u_input.b > u_input.b, all(global1.e.xy))));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    global1 = func_2(select(select(!vec4<bool>(global1.a.x, global1.a.x, true, false), global1.a, true), global1.a, true), u_input.e.yy, !vec3<bool>(-u_input.e.x >= (-2147483647i >> (u_input.b % 32u)), _wgslsmith_div_f32(arg_0.x, global1.c.x) == _wgslsmith_f_op_f32(-global0.x), !any(global1.e)));
    let var_0 = func_2(vec4<bool>(false, false, !(!global1.b.x), !global1.b.x), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.d, -35717i)), -u_input.e.zx), u_input.a), _wgslsmith_mod_vec2_i32(abs(u_input.a), u_input.c.yy), vec2<i32>(reverseBits(countOneBits(1i)), ~u_input.a.x)), global1.a.xyx);
    var var_1 = func_2(global1.a, vec2<i32>(-89292i, _wgslsmith_dot_vec2_i32(u_input.e.yx, u_input.e.zx)), select(global1.a.wxz, !func_2(!vec4<bool>(true, false, true, var_0.b.x), -u_input.a, global2[_wgslsmith_index_u32(var_0.d.x << (1u % 32u), 31u)]).a.wxy, var_0.d.x >= global1.d.x));
    global2 = array<vec3<bool>, 31>();
    global0 = _wgslsmith_f_op_vec2_f32(floor(arg_0));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * global0.x) * _wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_div_f32(func_2(var_1.a, u_input.e.zy, vec3<bool>(global1.b.x, var_0.e.x, var_0.b.x)).c.x, 1f)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> Struct_1 {
    var var_0 = ~_wgslsmith_dot_vec4_u32(reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, global1.d.x, 0u, 16836u), vec4<u32>(4294967295u, global1.d.x, global1.d.x, global1.d.x), vec4<u32>(29827u, 53234u, global1.d.x, 39914u))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b, 1664u), 1u << (1u % 32u), ~98146u, countOneBits(0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.d.x, u_input.b, 1903u, 4294967295u) | vec4<u32>(u_input.b, 4294967295u, 42286u, global1.d.x), vec4<u32>(52942u, u_input.b, 4294967295u, global1.d.x))));
    global2 = array<vec3<bool>, 31>();
    var var_1 = vec4<bool>(false, all(select(func_2(vec4<bool>(global1.a.x, global1.a.x, arg_0.x, true), vec2<i32>(u_input.d, -2147483647i), select(global2[_wgslsmith_index_u32(global1.d.x, 31u)], arg_0.wxy, arg_0.ywz)).a, vec4<bool>(true, true, true, true), true)), all(!vec4<bool>(true, global1.e.x, arg_1 <= 259f, true)), true);
    let var_2 = vec3<i32>(-1i, _wgslsmith_add_i32(u_input.d, _wgslsmith_add_i32(30778i, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -u_input.c.x, 2147483647i), abs(vec3<i32>(56423i, u_input.a.x, 18100i))) << (_wgslsmith_add_u32(_wgslsmith_add_u32(global1.d.x, 4294967295u), min(min(60684u, u_input.b), _wgslsmith_clamp_u32(u_input.b, 1u, 17806u))) % 32u));
    let var_3 = -581f;
    return Struct_1(select(vec4<bool>(false, arg_0.x, any(vec3<bool>(false, true, arg_0.x)) | any(vec3<bool>(false, true, arg_0.x)), true), vec4<bool>(var_1.x, !global1.e.x, func_2(vec4<bool>(arg_0.x, var_1.x, false, var_1.x), ~vec2<i32>(-6944i, -71923i), vec3<bool>(arg_0.x, true, var_1.x)).b.x, true), true), !var_1.wz, global1.c, global1.d ^ max(~(~global1.d), _wgslsmith_div_vec3_u32(global1.d, global1.d | global1.d)), select(arg_0.yxw, arg_0.xxw, vec3<bool>(true | select(arg_0.x, arg_0.x, arg_0.x), select(false, true, all(arg_0.zw)), false)));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = -(arg_3.x | ~((arg_1 & arg_1) & abs(arg_1)));
    global2 = array<vec3<bool>, 31>();
    var var_1 = Struct_1(func_4(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(103f)), global1.c.x, any(vec3<bool>(global1.b.x, true, arg_2.a.x)))) - 1519f)).a, !arg_2.a.xw, _wgslsmith_f_op_vec2_f32(arg_2.c - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, global1.c.x)))))), max(~(~abs(vec3<u32>(1u, global1.d.x, 35878u))), func_3(arg_2.a.zx, Struct_1(select(vec4<bool>(false, true, global1.b.x, false), vec4<bool>(global1.e.x, arg_2.b.x, arg_0, arg_0), arg_0), arg_2.e.yy, arg_2.c, arg_2.d, func_4(vec4<bool>(false, false, false, true), -661f).a.wyy), Struct_1(func_4(vec4<bool>(arg_0, false, arg_2.b.x, true), 1709f).a, !global1.e.yx, vec2<f32>(-1100f, global0.x), vec3<u32>(48675u, 115306u, 70630u), vec3<bool>(true, arg_0, arg_0)))), vec3<bool>(true, true, arg_2.b.x));
    let var_2 = select(!global2[_wgslsmith_index_u32(~(~25556u) << (1u % 32u), 31u)], var_1.a.zxy, all(select(!select(vec2<bool>(false, false), vec2<bool>(false, arg_2.a.x), false), select(!arg_2.b, arg_2.e.xy, true), vec2<bool>(all(global2[_wgslsmith_index_u32(8385u, 31u)]), global1.a.x))));
    return Struct_1(func_2(!vec4<bool>(true, any(global1.a.zx), u_input.b <= 0u, global1.e.x), -firstLeadingBit(arg_3.xx), select(func_4(func_2(global1.a, u_input.c.yx, global1.e).a, var_1.c.x).a.zww, !(!arg_2.e), vec3<bool>(global1.b.x, arg_0, func_4(vec4<bool>(arg_0, global1.a.x, arg_2.a.x, arg_2.b.x), -969f).a.x))).a, arg_2.a.yw, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f))), global1.d, !func_4(select(!arg_2.a, func_2(vec4<bool>(var_2.x, arg_0, var_1.e.x, false), vec2<i32>(0i, -20135i), var_2).a, vec4<bool>(false, arg_0, true, false)), 203f).a.xyx);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, arg_0.b, arg_0.c, vec3<u32>(1370u, abs(0u), 4294967295u), arg_0.e);
    var var_1 = select(~vec3<u32>(20516u, func_2(vec4<bool>(false, false, global1.b.x, var_0.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(36222i, u_input.e.x), u_input.a), select(arg_0.a.zxz, vec3<bool>(var_0.a.x, var_0.b.x, false), false)).d.x, u_input.b), vec3<u32>(1u, firstLeadingBit(~_wgslsmith_mult_u32(var_0.d.x, 0u)), arg_0.d.x), true);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c) - global1.c);
    let var_3 = -2147483647i;
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(arg_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c), _wgslsmith_f_op_vec2_f32(var_0.c * vec2<f32>(-967f, 353f)))), vec2<bool>(arg_0.b.x, arg_0.e.x))), var_0.c, var_0.b));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(true, u_input.a.x > -u_input.e.x, global1.e.x);
    let var_1 = ~(~0u);
    let var_2 = 7402i;
    global1 = func_6(func_5(true, -var_2, func_4(!select(vec4<bool>(false, global1.b.x, true, true), vec4<bool>(false, var_0, true, true), global1.e.x), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(func_1(global1.c)))), u_input.e));
    let var_3 = func_2(func_6(func_5(func_2(select(vec4<bool>(true, false, true, false), global1.a, vec4<bool>(false, global1.a.x, var_0, var_0)), u_input.a, !vec3<bool>(global1.e.x, false, true)).e.x, var_2, Struct_1(func_2(vec4<bool>(global1.e.x, var_0, false, false), vec2<i32>(u_input.a.x, u_input.c.x), vec3<bool>(true, true, var_0)).a, func_6(Struct_1(vec4<bool>(global1.a.x, false, true, false), vec2<bool>(global1.b.x, false), vec2<f32>(global0.x, global1.c.x), global1.d, global1.a.zzy)).b, vec2<f32>(global1.c.x, -370f), ~global1.d, vec3<bool>(false, false, var_0)), u_input.e >> (abs(global1.d) % vec3<u32>(32u)))).a, vec2<i32>(-34333i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2, var_2, var_2), max(vec4<i32>(var_2, 1i, var_2, u_input.e.x), vec4<i32>(-2147483647i, var_2, u_input.e.x, var_2)))), global1.a.zyz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_add_i32(~(-2147483647i), _wgslsmith_clamp_i32(-var_2, var_2, firstLeadingBit(u_input.a.x))), reverseBits(~u_input.a.x) ^ -(~(-1i))), vec2<f32>(1f, func_4(var_3.a, -2142f).c.x));
}

