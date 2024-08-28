struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = vec4<bool>(true, 4294967295u >= u_input.a.x, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))) | any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false))), false);
    var_0 = select(vec4<bool>(true, all(!(!vec4<bool>(var_0.x, var_0.x, false, false))), var_0.x, var_0.x), select(vec4<bool>(false, !(var_0.x & var_0.x), false || any(var_0.wx), true), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(all(var_0.zw), !var_0.x, true, !var_0.x), any(vec3<bool>(true, true, var_0.x))), !(!(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), !select(vec4<bool>(var_0.x, true, !var_0.x, true), vec4<bool>(true, var_0.x, arg_0.x <= u_input.d.x, all(var_0.wz)), !(!var_0.x)));
    let var_1 = select(vec2<bool>(true, true), select(select(var_0.yx, var_0.yy, vec2<bool>(true, true)), !select(vec2<bool>(false, var_0.x), var_0.wx, true), var_0.ww), false);
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    return select(all(select(vec4<bool>(!var_0.x, !var_0.x, false, var_1.x), select(vec4<bool>(true, var_1.x, var_1.x, true), select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(false, var_1.x, var_0.x, false), vec4<bool>(true, false, false, var_0.x)), select(vec4<bool>(var_1.x, var_0.x, false, var_1.x), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_1.x, var_0.x, var_1.x, var_1.x))), select(select(vec4<bool>(var_1.x, var_0.x, false, false), vec4<bool>(false, var_1.x, true, true), true), !vec4<bool>(var_1.x, var_1.x, var_0.x, true), !var_0.x))), !var_1.x, false);
}

fn func_2() -> i32 {
    var var_0 = vec3<bool>(true && !func_3(_wgslsmith_sub_vec2_i32(u_input.d.yy, u_input.d.yy)), true, !all(vec3<bool>(true, true, true)));
    global0 = array<Struct_3, 19>();
    var var_1 = _wgslsmith_add_vec4_i32(-vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(26311i, u_input.b, 2147483647i, 1419i), vec4<i32>(u_input.c, u_input.b, -2943i, -1i))), u_input.b, _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec2_i32(u_input.d.yy, u_input.d.zz)), abs(_wgslsmith_sub_i32(u_input.c, -52979i))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(32572i, 38350i, 1i, -2147483647i), vec4<i32>(1i, u_input.c, u_input.c, u_input.c)), -reverseBits(vec4<i32>(u_input.d.x, -7916i, -3017i, -1i))), _wgslsmith_add_vec4_i32(-vec4<i32>(-28302i, u_input.d.x, 0i, u_input.b), vec4<i32>(-2147483647i, 28230i, u_input.d.x, -11531i) & vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, -25297i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 36967u) << (vec4<u32>(u_input.a.x, 43656u, 61278u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a.x)) % vec4<u32>(32u))));
    let var_2 = Struct_1(~vec3<u32>(~1u, countOneBits(u_input.a.x | 0u), u_input.a.x), countOneBits((~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 12678u) | abs(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 64806u))) | ~(vec4<u32>(11455u, 1u, u_input.a.x, 20011u) << (vec4<u32>(u_input.a.x, 19766u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))));
    var var_3 = Struct_4(Struct_1(firstLeadingBit(var_2.a), var_2.b), Struct_2(-608f, ~(-u_input.c) ^ 1i, var_2), var_0.x, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(min(~vec2<u32>(60162u, 4915u), abs(var_2.b.zw)), var_2.a.zx), 19u)]);
    return -(i32(-1i) * -1i) << (~((_wgslsmith_mod_u32(1u, var_2.b.x) << (var_3.a.a.x % 32u)) & ~4294967295u) % 32u);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = true;
    global0 = array<Struct_3, 19>();
    var var_1 = u_input.d.xz;
    let var_2 = abs(vec4<i32>(~(-26603i), func_2(), -12740i, reverseBits(~_wgslsmith_clamp_i32(12797i, var_1.x, 1i))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-500f - -1000f), _wgslsmith_f_op_f32(step(830f, 1682f)), 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + 397f), -506f, _wgslsmith_f_op_f32(-760f + 556f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1585f, -1722f, 227f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1106f, -895f, -777f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-120f, -716f, 1092f))), true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 523f, 288f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1217f, -415f, -260f), vec3<f32>(-1338f, 104f, -600f), arg_0.xzx))))));
    return 1472f;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 19u)];
    var var_1 = u_input.a.x << (~(~(~(u_input.a.x & 1u))) % 32u);
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a - arg_0) * _wgslsmith_f_op_f32(max(1407f, -890f)))), 0i, var_0.a.c));
    var var_2 = -vec3<i32>(1i, 14319i, ~(-52987i));
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a, var_0.a.a)) - -950f))), ~arg_2.b, arg_2.c));
    return arg_2.c;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(412f)), u_input.b, func_4(arg_2.a.a, u_input.d.yx, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -546f), _wgslsmith_dot_vec2_i32(u_input.d.zx, u_input.d.xx), Struct_1(arg_0.a, arg_0.b)))));
    var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1481f + _wgslsmith_f_op_f32(arg_2.a.a - arg_2.a.a)) + arg_2.a.a), _wgslsmith_mult_i32(u_input.c, u_input.c << (arg_2.a.c.b.x % 32u)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a + arg_2.a.a)), u_input.d.xz, var_0.a)));
    let var_1 = arg_2.a.a;
    var var_2 = var_0.a;
    var_2 = arg_2.a;
    return Struct_4(Struct_1(~firstLeadingBit(~vec3<u32>(8349u, 0u, 4294967295u)), ~vec4<u32>(1u, 14610u, arg_2.a.c.a.x, arg_2.a.c.b.x) & (arg_2.a.c.b << (~var_0.a.c.b % vec4<u32>(32u)))), var_0.a, !(!all(vec3<bool>(true, false, true))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(-1000f, ~min(-u_input.d.xz, u_input.d.zy), Struct_2(_wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)))), 17932i, Struct_1(vec3<u32>(4294967295u, u_input.a.x, 7351u) << (vec3<u32>(38619u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), abs(vec4<u32>(43771u, 1u, u_input.a.x, 0u))))), ~0u ^ abs(_wgslsmith_div_u32(31679u, u_input.a.x) >> (u_input.a.x % 32u)), Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1562f) + -478f), _wgslsmith_sub_i32(u_input.d.x, -u_input.d.x), func_4(_wgslsmith_f_op_f32(372f + -771f), u_input.d.xx << (u_input.a % vec2<u32>(32u)), Struct_2(-1515f, -2147483647i, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(36319u, 0u, u_input.a.x, 4294967295u)))))));
    global0 = array<Struct_3, 19>();
    let var_1 = _wgslsmith_mult_u32(u_input.a.x, 64066u);
    let var_2 = _wgslsmith_div_i32(var_0.b.b | abs(_wgslsmith_dot_vec4_i32(vec4<i32>(14045i, u_input.b, u_input.d.x, var_0.b.b), vec4<i32>(u_input.d.x, -27125i, var_0.d.a.b, u_input.d.x) >> (vec4<u32>(410u, 5873u, var_0.a.b.x, 34198u) % vec4<u32>(32u)))), ~(var_0.b.b ^ -2147483647i));
    global0 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(48987u, u_input.a, var_0.a.b, 1i);
}

