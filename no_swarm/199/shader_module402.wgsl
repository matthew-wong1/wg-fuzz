struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-31778i, -41367i, i32(-2147483648), -41973i);

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(4294967295u, 19u)];
    let var_1 = select(!(!select(global1.zz, global1.yy, global1.yz)), !global1.zx, false);
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_sub_i32(~_wgslsmith_mod_i32(u_input.d.x, i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(global2.wz, -(~(vec2<i32>(2147483647i, -39093i) & u_input.d.ww))));
    let var_4 = !select(select(!select(vec4<bool>(var_1.x, false, var_1.x, global1.x), vec4<bool>(false, true, var_1.x, global1.x), vec4<bool>(var_0.b, false, true, true)), !(!vec4<bool>(var_0.b, true, global1.x, var_1.x)), false), select(vec4<bool>(all(vec3<bool>(false, global1.x, var_0.b)), var_1.x, false, true), vec4<bool>(global1.x, all(vec4<bool>(false, global1.x, global1.x, global1.x)), any(vec3<bool>(true, var_1.x, var_1.x)), true), any(select(global1.zx, vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, false)))), !(select(var_1.x, global1.x, true) & true));
    return _wgslsmith_sub_i32(-var_0.a >> (53261u % 32u), select(~global0.x, countOneBits(-_wgslsmith_clamp_i32(global2.x, -48733i, u_input.d.x)), !any(global1.zy) && true));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(func_3() << (1u % 32u), false, ~vec2<u32>(33074u, 20107u)), Struct_1(42510i, any(!vec3<bool>(arg_0, arg_0, arg_0)), u_input.b.xy), Struct_1(global0.x, true, _wgslsmith_add_vec2_u32(u_input.b.zz, ~vec2<u32>(arg_1, 1u))), Struct_1(-select(-10063i, global2.x, global1.x), false && (arg_3.x <= arg_3.x), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, arg_1) & u_input.b.yx, vec2<u32>(5860u, 48251u)))), select(select(select(vec4<bool>(global1.x, arg_0, false, false), select(vec4<bool>(arg_0, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, arg_0, true, arg_2.x), arg_0), !vec4<bool>(false, true, arg_2.x, true)), select(!vec4<bool>(arg_0, false, arg_2.x, true), vec4<bool>(global1.x, arg_0, false, arg_2.x), select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(false, global1.x, global1.x, false))), any(!vec4<bool>(arg_2.x, true, false, arg_2.x))), !vec4<bool>(select(true, true, false), arg_2.x, true == arg_2.x, false), select(!select(vec4<bool>(arg_2.x, arg_2.x, global1.x, false), vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(false, arg_0, arg_0, arg_2.x)), select(select(vec4<bool>(arg_2.x, global1.x, true, true), vec4<bool>(false, false, false, arg_0), arg_2.x), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, arg_0, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(arg_0, arg_2.x, global1.x, false), vec4<bool>(false, false, global1.x, false), vec4<bool>(true, true, true, true))), select(!vec4<bool>(global1.x, true, true, arg_0), select(vec4<bool>(true, arg_2.x, global1.x, global1.x), vec4<bool>(arg_0, true, true, false), vec4<bool>(global1.x, true, global1.x, arg_2.x)), true))), vec3<i32>(i32(-1i) * -global2.x, abs(~global0.x), global2.x), arg_1, global2.yxz);
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    global1 = arg_0.b.ywz;
    var var_0 = Struct_3(Struct_2(func_2(arg_0.b.x, 41046u, select(vec2<bool>(false, global1.x), global1.zy, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1879f, 949f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(785f, 520f) - vec2<f32>(190f, 704f)))).a.a, Struct_1(-2147483647i, !(!arg_0.b.x), vec2<u32>(~u_input.b.x, 144751u << (u_input.b.x % 32u))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(global2.xwz, vec3<i32>(-10816i, 0i, 55137i)), 1i), all(arg_0.b.zyz) && false, vec2<u32>(30871u ^ arg_0.a.a.c.x, u_input.b.x >> (58426u % 32u))), arg_0.a.c), func_2(global1.x, arg_0.a.d.c.x, !(!arg_0.b.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(246f, 2329f))))).b, select(countOneBits(~abs(vec3<i32>(-2147483647i, -29018i, global2.x))), -vec3<i32>(~59354i, min(u_input.c, 0i), firstLeadingBit(arg_0.a.b.a)), select(select(vec3<bool>(arg_0.b.x, false, true), arg_0.b.xxx, vec3<bool>(arg_0.a.a.b, global1.x, arg_0.b.x)), arg_0.b.yyw, true)), 1u, vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_0.e.x, global2.x, arg_0.c.x), countOneBits(vec4<i32>(21880i, -1i, -46799i, global2.x))), 0i, ~_wgslsmith_mod_i32(2147483647i, -global0.x)));
    let var_1 = ~arg_0.a.c.c.x;
    var var_2 = var_0.a;
    let var_3 = false | global1.x;
    return var_0.b.wwy;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> vec4<bool> {
    global1 = func_4(func_2(false, 1u, global1.xz, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2138f, -1258f)))))));
    global3 = array<Struct_1, 19>();
    global1 = func_2(!(!(1u <= _wgslsmith_clamp_u32(u_input.b.x, 11288u, 82792u))), _wgslsmith_div_u32(_wgslsmith_div_u32(~35308u, ~firstLeadingBit(u_input.b.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(u_input.b.x, 27473u, 25643u, u_input.b.x) ^ (vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)))), func_2(true, abs(_wgslsmith_sub_u32(~u_input.b.x, ~0u)), global1.yy, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-496f, 190f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 2110f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(216f, -589f))))))).b.ww, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(976f, -1084f), vec2<f32>(-516f, -1205f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-535f, -980f), vec2<f32>(-407f, 709f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(764f, 1857f)), func_2(select(global1.x, false, false), 8498u, vec2<bool>(global1.x, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(342f, -315f), vec2<f32>(-1478f, -180f), true))).b.xx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1285f, 1223f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-240f, 691f), vec2<f32>(181f, -1382f))))))).b.xxx;
    global0 = vec4<i32>(i32(-1i) * -_wgslsmith_mod_i32(arg_1.x, -2147483647i), -37538i ^ _wgslsmith_sub_i32(2147483647i, func_2(func_4(Struct_3(Struct_2(Struct_1(6196i, global1.x, vec2<u32>(5143u, 1u)), global3[_wgslsmith_index_u32(14946u, 19u)], Struct_1(-1i, false, vec2<u32>(5649u, u_input.b.x)), global3[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec4<bool>(global1.x, true, false, false), u_input.d.xwy, u_input.b.x, u_input.d.zyx)).x, ~u_input.b.x, !vec2<bool>(false, global1.x), _wgslsmith_div_vec2_f32(vec2<f32>(-216f, -333f), vec2<f32>(870f, 1358f))).a.d.a), global2.x, func_3());
    var var_0 = !((arg_1.x & func_3()) <= u_input.c);
    return vec4<bool>(true, u_input.b.x < 4294967295u, all(vec2<bool>(!global1.x && all(vec2<bool>(global1.x, global1.x)), true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(global0.x, 2147483647i);
    let var_1 = global2.yww;
    var var_2 = !(!(!vec4<bool>(select(global1.x, true, global1.x), true, true, false)));
    let var_3 = false;
    var var_4 = select(select(vec4<bool>(true, var_3 | global1.x, false, 0i > -global0.x), select(!vec4<bool>(false, var_2.x, false, true), vec4<bool>(!var_2.x, var_2.x, select(var_3, var_2.x, false), !var_2.x), select(vec4<bool>(var_2.x, global1.x, var_3, false), func_1(u_input.d, u_input.d), vec4<bool>(true, true, var_3, var_2.x))), 0u == (104051u >> (min(0u, u_input.b.x) % 32u))), func_1(-_wgslsmith_add_vec4_i32(firstLeadingBit(u_input.d), u_input.d), _wgslsmith_mod_vec4_i32(u_input.d, u_input.d >> (~vec4<u32>(1u, u_input.b.x, 0u, 0u) % vec4<u32>(32u)))), !(!select(vec4<bool>(true, true, false, var_2.x), vec4<bool>(false, true, global1.x, true), false || var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(326f, 149f, 1952f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(374f, 1000f, 978f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1705f, -1000f, -769f))), !(!var_2.wyw))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-458f))), firstLeadingBit(vec3<u32>(47085u, ~4294967295u, u_input.b.x)), 4294967295u);
}

