struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(-4146i, 22938i, -10159i), vec3<i32>(-40528i, 27133i, 50964i), vec3<i32>(8724i, 11602i, 0i), vec3<i32>(24063i, 1i, i32(-2147483648)), vec3<i32>(0i, 11297i, 61664i), vec3<i32>(29368i, -1i, 915i));

var<private> global1: array<Struct_2, 16>;

var<private> global2: i32 = 0i;

var<private> global3: vec2<u32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> i32 {
    let var_0 = ~u_input.a.x;
    return abs(-8573i);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: u32) -> i32 {
    global2 = arg_0.x;
    global2 = _wgslsmith_mod_i32(arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, ~0i, arg_0.x & arg_1, 0i), vec4<i32>(firstTrailingBit(arg_1 & -2147483647i), -2147483647i, arg_1, select(~u_input.e.x, 0i, false))));
    global3 = ~(~u_input.d.yy);
    global1 = array<Struct_2, 16>();
    let var_0 = vec3<bool>(true, true, true);
    return -arg_0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_i32(-arg_0 << (max(firstLeadingBit(firstLeadingBit(u_input.c)), ~vec3<u32>(global3.x, 27290u, arg_2.e)) % vec3<u32>(32u)), ~vec3<i32>(73109i, _wgslsmith_sub_i32(arg_0.x, arg_3.d) | u_input.e.x, 12118i), _wgslsmith_div_vec3_i32(vec3<i32>(func_3(vec3<i32>(-14446i, -1917i, arg_3.a), -1i, true, global3.x) & ~u_input.e.x, -(~u_input.e.x), arg_0.x), _wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(global3.x, 6u)], arg_0)));
    let var_1 = Struct_4(_wgslsmith_mult_i32(1i, arg_0.x), u_input.b);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_2.a.x)))), arg_1.a.x))) * arg_3.b.a.a.x);
    var_2 = arg_3.b.b.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1245f, 666f)))), arg_1.a.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-357f, -1790f)))));
    return true;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = 0i;
    var var_2 = select(select(select(select(select(arg_2.a.b.wxz, vec3<bool>(arg_2.a.b.x, false, false), arg_2.b.b.zyz), vec3<bool>(var_0.a.c.x, arg_2.a.c.x, arg_2.a.b.x), !arg_2.a.b.x), vec3<bool>(arg_2.b.c.x, all(var_0.a.b), true), any(!vec3<bool>(var_0.a.c.x, true, true))), !vec3<bool>(arg_2.b.d || arg_2.a.c.x, arg_2.a.c.x, arg_2.b.d), !select(select(arg_2.b.b.xwx, vec3<bool>(true, false, true), true), arg_2.a.b.xxz, select(vec3<bool>(arg_2.a.d, var_0.b.d, arg_2.a.c.x), var_0.b.b.zxx, var_0.a.b.yww))), select(vec3<bool>(func_2(arg_0.yzw, arg_2.a, Struct_1(var_0.b.a, vec4<bool>(arg_2.a.b.x, true, var_0.a.b.x, var_0.b.b.x), vec2<bool>(arg_2.a.b.x, false), false, 57998u), Struct_3(arg_0.x, arg_2, vec2<u32>(arg_2.b.e, 0u), 2147483647i)), ~var_0.b.e <= var_0.b.e, var_0.a.c.x), arg_2.b.b.zxz, select(var_0.b.b.zzy, select(var_0.b.b.ywy, !var_0.a.b.zyz, select(vec3<bool>(arg_2.a.d, false, false), arg_2.a.b.yxy, var_0.b.b.zzx)), !var_0.a.b.yww)), select(vec3<bool>(func_2(-global0[_wgslsmith_index_u32(4294967295u, 6u)], var_0.a, arg_2.b, Struct_3(var_1, Struct_2(Struct_1(arg_2.b.a, vec4<bool>(arg_2.a.d, var_0.a.c.x, false, var_0.a.b.x), vec2<bool>(var_0.b.b.x, true), var_0.a.b.x, arg_2.a.e), arg_2.b), vec2<u32>(arg_2.b.e, 15524u), arg_0.x)), true, arg_2.b.c.x), !select(var_0.b.b.yyx, select(vec3<bool>(true, true, true), var_0.a.b.zzz, false), select(vec3<bool>(arg_2.a.c.x, var_0.b.c.x, var_0.b.b.x), vec3<bool>(var_0.a.d, false, var_0.a.c.x), vec3<bool>(arg_2.a.b.x, var_0.b.d, var_0.a.b.x))), select(vec3<bool>(var_0.b.d, true, false), select(vec3<bool>(true, false, false), !var_0.b.b.yxw, !arg_2.b.b.zzw), true)));
    var var_3 = vec3<i32>(arg_0.x, -arg_0.x, _wgslsmith_dot_vec4_i32(countOneBits(~(~arg_0)), ~(reverseBits(vec4<i32>(1i, -9843i, 6808i, 0i)) | _wgslsmith_sub_vec4_i32(u_input.b, arg_0))));
    var_2 = vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(max(-2147483647i, arg_0.x), -27526i, func_3(vec3<i32>(u_input.a.x, var_1, u_input.b.x), 2147483647i, true, 0u), var_3.x), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, arg_0), vec4<i32>(u_input.a.x, var_3.x, 6615i, var_3.x))) < -39749i, var_0.b.b.x & var_0.a.c.x, var_0.b.c.x);
    return Struct_1(vec4<f32>(arg_2.b.a.x, _wgslsmith_f_op_f32(-arg_2.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.b.a.x, -1287f))) + -1267f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1511f - arg_2.a.a.x))))), select(select(vec4<bool>(false, true, true, !var_2.x), !select(var_0.a.b, var_0.b.b, vec4<bool>(var_0.b.d, var_2.x, true, var_0.a.b.x)), select(vec4<bool>(arg_2.b.c.x, var_0.b.d, true, var_2.x), !var_0.b.b, arg_2.a.b)), var_0.a.b, 1000f != _wgslsmith_f_op_f32(-1302f + _wgslsmith_f_op_f32(ceil(144f)))), !select(arg_2.a.b.zx, vec2<bool>(var_0.b.d, true), false != !var_2.x), any(vec2<bool>(var_0.a.c.x, var_0.b.a.x > -294f)), _wgslsmith_add_u32(abs(1u), firstLeadingBit(arg_2.b.e)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> StorageBuffer {
    global3 = u_input.d.zy;
    var var_0 = vec2<bool>(!(!arg_0.c.x), true);
    global3 = abs(_wgslsmith_sub_vec2_u32(max(u_input.c.zy, _wgslsmith_mod_vec2_u32(vec2<u32>(global3.x, arg_0.e), ~vec2<u32>(75575u, 82214u))), u_input.c.xx | _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.b.e, 11325u), ~vec2<u32>(global3.x, 1u), ~vec2<u32>(global3.x, global3.x))));
    let var_1 = ~_wgslsmith_div_u32(~82975u, 1u);
    var var_2 = _wgslsmith_sub_u32(~arg_0.e, 4294967295u);
    return StorageBuffer(~(~23151i) | _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -8732i, u_input.a.x, 0i), u_input.b) << (1u % 32u), -12358i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 16>();
    let var_0 = _wgslsmith_f_op_f32(-879f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1440f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(722f * 856f)))))));
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -956f);
    global3 = vec2<u32>(~(~abs(countOneBits(9689u))), max(abs(~(~global3.x)), 1u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) * _wgslsmith_f_op_f32(-var_0));
    global1 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = func_5(func_4(vec4<i32>(_wgslsmith_clamp_i32(0i | u_input.b.x, func_1(var_2, vec2<f32>(var_0, var_0)), _wgslsmith_mod_i32(u_input.a.x, 1i)), -(~u_input.e.x), i32(-1i) * -u_input.e.x, -2147483647i), u_input.b.x & _wgslsmith_div_i32(2949i, u_input.a.x | 47554i), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(789f, -519f, 872f, var_2)), vec4<bool>(true, true, false, true), vec2<bool>(true, false), func_2(vec3<i32>(u_input.e.x, -1i, u_input.a.x), Struct_1(vec4<f32>(-788f, var_2, var_0, -1000f), vec4<bool>(true, false, true, false), vec2<bool>(false, true), true, u_input.c.x), Struct_1(vec4<f32>(-634f, var_0, var_2, 1619f), vec4<bool>(true, false, false, false), vec2<bool>(false, true), false, u_input.c.x), Struct_3(u_input.a.x, Struct_2(Struct_1(vec4<f32>(-1365f, var_0, -1714f, -1227f), vec4<bool>(true, true, true, false), vec2<bool>(true, true), true, u_input.d.x), Struct_1(vec4<f32>(-2395f, var_0, 469f, -1439f), vec4<bool>(true, true, true, true), vec2<bool>(false, false), true, u_input.d.x)), u_input.d.zx, u_input.a.x)), 1u ^ global3.x), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_2, var_0, var_0), vec4<f32>(var_0, 391f, 243f, 159f), vec4<bool>(false, false, true, true))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true, 4667u))), global1[_wgslsmith_index_u32(6765u, 16u)]);
}

