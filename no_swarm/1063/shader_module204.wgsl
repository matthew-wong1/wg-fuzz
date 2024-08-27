struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    return -696f;
}

fn func_2() -> vec2<i32> {
    let var_0 = 1088f;
    global1 = 373f;
    var var_1 = var_0;
    var var_2 = u_input.a;
    var var_3 = all(vec2<bool>(true, -2384f == _wgslsmith_f_op_f32(func_3())));
    return ~(~vec2<i32>(firstLeadingBit(-2147483647i), 1i)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(u_input.c, 38862u), _wgslsmith_div_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(u_input.c, u_input.c)))), vec2<u32>(1u, 1u) << (vec2<u32>(u_input.d.x, ~u_input.d.x) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    global0 = array<Struct_2, 27>();
    var var_0 = _wgslsmith_mod_u32(27451u, u_input.c);
    var var_1 = false;
    let var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.d.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(14468u, 45860u), u_input.d.xw) % 32u), u_input.d.x, 1u, u_input.c), u_input.d);
    global0 = array<Struct_2, 27>();
    return (true | arg_0.c) & any(vec2<bool>(select(true, true, select(arg_0.c, arg_1.c, false)), any(select(vec3<bool>(arg_0.c, arg_1.c, arg_1.c), vec3<bool>(arg_1.c, false, arg_0.c), vec3<bool>(true, true, arg_0.c)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = u_input.a.yx >> (countOneBits((u_input.d.yx >> (min(vec2<u32>(35211u, 87709u), u_input.d.yx) % vec2<u32>(32u))) | (vec2<u32>(4294967295u, 4294967295u) ^ min(u_input.d.xx, vec2<u32>(69509u, 56071u)))) % vec2<u32>(32u));
    var var_1 = Struct_3(_wgslsmith_mult_vec2_u32(max((u_input.d.xw >> (u_input.d.wz % vec2<u32>(32u))) >> (~u_input.d.yz % vec2<u32>(32u)), vec2<u32>(~1u, ~u_input.c)), vec2<u32>(~(~4294967295u), u_input.d.x)));
    global1 = _wgslsmith_f_op_f32(-arg_3.b.x);
    let var_2 = select(select(select(vec3<bool>(arg_3.c, all(vec4<bool>(true, arg_1, arg_3.c, true)), true), vec3<bool>(select(true, arg_3.c, arg_0.x), func_4(arg_3, arg_3, vec4<i32>(u_input.a.x, -587i, var_0.x, var_0.x)), true), !(!arg_0.xyx)), !arg_0.zwx, !arg_0.xww), !arg_0.xxy, select(!arg_0.xzw, !arg_0.zxz, !select(!arg_0.zxz, select(arg_0.xzz, vec3<bool>(arg_2, false, false), arg_2), !vec3<bool>(false, arg_3.c, arg_1))));
    let var_3 = !vec3<bool>(arg_0.x, (~var_1.a.x <= countOneBits(var_1.a.x)) | ((arg_3.b.x == 1130f) & arg_0.x), any(!vec2<bool>(arg_3.c, true)));
    return u_input.c << ((1u << (~(~u_input.c) % 32u)) % 32u);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = func_5(vec4<bool>(true, !(!arg_2.c), false, all(!select(vec3<bool>(false, arg_2.c, true), vec3<bool>(false, arg_2.c, arg_2.c), arg_2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-531f - arg_2.b.x) + 166f) <= arg_2.b.x, all(select(vec2<bool>(true, false), !select(vec2<bool>(arg_2.c, true), vec2<bool>(false, arg_2.c), vec2<bool>(arg_2.c, true)), true && arg_2.c)), Struct_1(vec2<i32>(-arg_0, _wgslsmith_sub_i32(arg_2.a.x, 0i)) << (u_input.d.yy % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x)), _wgslsmith_f_op_vec4_f32(ceil(arg_2.b)))), func_4(Struct_1(func_2(), _wgslsmith_f_op_vec4_f32(-arg_2.b), false), Struct_1(arg_2.a >> (u_input.d.wz % vec2<u32>(32u)), arg_2.b, arg_2.c && arg_2.c), ~vec4<i32>(-2147483647i, -2147483647i, -44090i, arg_2.a.x))));
    var var_1 = select(vec4<bool>(any(select(vec4<bool>(arg_2.c, arg_2.c, true, true), select(vec4<bool>(arg_2.c, arg_2.c, false, true), vec4<bool>(arg_2.c, true, true, arg_2.c), vec4<bool>(arg_2.c, true, arg_2.c, arg_2.c)), vec4<bool>(true, true, arg_2.c, false))), false, false, arg_2.c), select(vec4<bool>(all(!vec2<bool>(false, arg_2.c)), all(!vec2<bool>(arg_2.c, arg_2.c)), !(18571i > u_input.a.x), true), select(select(!vec4<bool>(false, arg_2.c, arg_2.c, false), select(vec4<bool>(false, true, arg_2.c, false), vec4<bool>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), arg_2.c), all(vec2<bool>(false, arg_2.c))), !(!vec4<bool>(arg_2.c, arg_2.c, true, true)), any(select(vec2<bool>(arg_2.c, arg_2.c), vec2<bool>(arg_2.c, arg_2.c), true))), select(arg_2.c, arg_2.c, true)), !(!(false | !arg_2.c)));
    var var_2 = global0[_wgslsmith_index_u32(30128u, 27u)];
    var var_3 = abs(-_wgslsmith_mod_i32(-firstTrailingBit(9823i), arg_2.a.x));
    let var_4 = var_2.c;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>((u_input.a.x ^ 11132i) >= 1i, ~u_input.c > _wgslsmith_sub_u32(27908u, 0u), !func_1(-40444i, 97098u, Struct_1(u_input.a.zx, vec4<f32>(1126f, -1363f, 3084f, 489f), false)), true), vec4<bool>(select(true, true, -1i < u_input.a.x), any(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(floor(592f)) >= _wgslsmith_f_op_f32(step(-1000f, -1060f)), any(vec3<bool>(true, true, true))), !select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true))), !vec4<bool>(true, func_4(Struct_1(vec2<i32>(1i, -55230i), vec4<f32>(-677f, 536f, -1208f, -656f), true), Struct_1(u_input.a.wx, vec4<f32>(-1210f, -1000f, -516f, -862f), false), max(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b), vec4<i32>(u_input.a.x, u_input.a.x, 14885i, u_input.a.x))), true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false))), select(vec4<bool>(true, !(u_input.c <= u_input.c), !(u_input.b > u_input.a.x), any(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), true));
    var_0 = !vec4<bool>(var_0.x, false, true, true);
    let var_1 = Struct_1(~u_input.a.xz, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-888f + -2139f), -531f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(721f)) + _wgslsmith_f_op_f32(211f - -1440f))), 1268f, _wgslsmith_f_op_f32(trunc(-1000f))), !(func_4(Struct_1(vec2<i32>(u_input.b, -2147483647i), vec4<f32>(-593f, -1704f, 754f, 1000f), var_0.x), Struct_1(vec2<i32>(-2147483647i, u_input.a.x), vec4<f32>(1126f, -1110f, -295f, 1112f), false), vec4<i32>(-2147483647i, -2147483647i, -1i, 27290i)) && var_0.x));
    var var_2 = Struct_2(select(select(vec2<bool>(any(vec3<bool>(false, false, var_1.c)), var_0.x), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false), var_0.zy), select(var_0.xw, select(var_0.yw, var_0.wy, vec2<bool>(var_1.c, var_1.c)), var_1.c)), !var_0.xw, vec2<bool>(!(!var_0.x), func_4(Struct_1(var_1.a, vec4<f32>(var_1.b.x, var_1.b.x, -2192f, var_1.b.x), var_0.x), Struct_1(var_1.a, vec4<f32>(var_1.b.x, 451f, var_1.b.x, var_1.b.x), true), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -19490i, -2147483647i), u_input.a)))), -(var_1.a.x ^ var_1.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1000f)), -1000f)))))));
    let var_3 = Struct_3(select(~u_input.d.zz, ~(select(vec2<u32>(u_input.c, 44692u), u_input.d.xx, var_2.a) & ~u_input.d.yw), select(var_0.yx, select(vec2<bool>(true, true), var_2.a, func_4(Struct_1(var_1.a, var_1.b, var_0.x), Struct_1(vec2<i32>(0i, var_1.a.x), vec4<f32>(var_1.b.x, -566f, -1335f, -2372f), true), u_input.a)), var_0.yx)));
    let var_4 = Struct_3(vec2<u32>(45508u, 0u));
    var var_5 = vec4<bool>(false, false, any(var_0.wy), all(var_0.wx));
    var var_6 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_4.a.x << (var_4.a.x % 32u), u_input.c, 22702u) & 36308u, 27u)];
    let var_7 = Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(29903u, 1u << (~var_4.a.x % 32u)), vec2<u32>(_wgslsmith_sub_u32(0u, var_3.a.x), 4294967295u | var_3.a.x) & _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.yx, u_input.d.yw), ~u_input.d.wz, ~u_input.d.wx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 116f, var_1.b.x, 613f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.c, var_6.c, var_1.b.x, -447f), _wgslsmith_f_op_vec4_f32(var_1.b + var_1.b), true)))), 340f);
}

