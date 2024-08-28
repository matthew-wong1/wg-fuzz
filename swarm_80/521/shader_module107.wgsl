struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(1534f, -731f), vec2<f32>(-1345f, 1884f), vec2<f32>(548f, 1036f), vec2<f32>(-896f, -738f), vec2<f32>(198f, 137f), vec2<f32>(-236f, -853f), vec2<f32>(516f, 188f), vec2<f32>(-122f, 1134f), vec2<f32>(1477f, 824f), vec2<f32>(-868f, 971f), vec2<f32>(-107f, 559f), vec2<f32>(849f, 1616f), vec2<f32>(-1639f, -640f), vec2<f32>(499f, 1649f), vec2<f32>(2295f, -214f), vec2<f32>(-977f, 328f), vec2<f32>(-2185f, -1329f), vec2<f32>(-1050f, 1000f));

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(true, vec2<f32>(-142f, -1000f));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: i32) -> vec3<bool> {
    let var_0 = ~u_input.b.x;
    var var_1 = Struct_1(select(vec4<bool>(global2.a, !(!global2.a), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, true, global2.a, true)), any(vec3<bool>(global2.a, global2.a, arg_0.x)), false, true), _wgslsmith_f_op_f32(-global2.b.x) < _wgslsmith_f_op_f32(trunc(-1963f))), !(!select(false, true, arg_0.x))), vec2<bool>(!all(vec4<bool>(arg_0.x, global2.a, false, arg_0.x)), !all(arg_0) & arg_0.x), ~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-35529i, arg_1.x, arg_2, arg_2), vec4<i32>(0i, -1i, arg_1.x, arg_2)), vec4<i32>(arg_1.x, arg_2, 2147483647i, 49200i) << (vec4<u32>(u_input.b.x, 102354u, var_0, 22252u) % vec4<u32>(32u))) ^ vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(arg_1.x, -35005i, 0i)), arg_1.x), arg_1.x, -(~arg_1.x)), var_0, _wgslsmith_mod_i32(1i, ~(~arg_2) ^ _wgslsmith_mod_i32(arg_2, arg_1.x)));
    global2 = Struct_2(arg_0.x, vec2<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -477f)), global2.b.x));
    var var_2 = Struct_1(vec4<bool>(var_1.a.x, false, true, (-1i >= (-2147483647i | var_1.c.x)) && global2.a), select(select(vec2<bool>(all(vec3<bool>(arg_0.x, false, true)), global2.b.x == -1584f), var_1.b, var_1.b), !(!(!arg_0.xz)), any(arg_0) || all(!var_1.a.yyw)), countOneBits(~var_1.c), 0u, reverseBits(var_1.e));
    let var_3 = arg_2;
    return var_2.a.zww;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = select(vec3<bool>(false, false, false), select(vec3<bool>(!all(vec3<bool>(global2.a, global2.a, global2.a)), !all(arg_0.a), false), arg_0.a.yzz, vec3<bool>(all(select(arg_0.a.wx, arg_0.a.xw, vec2<bool>(false, arg_0.b.x))), true, true)), select(select(arg_0.a.zwz, select(!arg_0.a.wyx, !vec3<bool>(global2.a, arg_0.a.x, true), global2.a), func_3(arg_0.a.zww, arg_0.c.zzy, firstTrailingBit(arg_0.e))), arg_0.a.wzw, arg_0.a.zww));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1378f);
    var var_2 = 0i & arg_0.e;
    var_2 = 7859i;
    global0 = array<vec2<f32>, 18>();
    return u_input.b.xxw;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(!(!(!vec4<bool>(arg_1.a.x, true, false, true))), !arg_1.b, vec4<i32>(i32(-1i) * -2147483647i, ~_wgslsmith_add_i32(arg_2.x, arg_2.x) & -(-1i | arg_1.c.x), -1i, arg_2.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(0u, 1u >> (~arg_1.d % 32u)), 0u), firstTrailingBit(-(reverseBits(-389i) << (arg_0.x % 32u))));
    var_0 = Struct_1(!vec4<bool>(false, true, !(!arg_1.b.x), true), select(!select(select(var_0.b, var_0.a.wx, vec2<bool>(global2.a, var_0.b.x)), arg_1.a.wx, select(arg_1.b, vec2<bool>(var_0.b.x, false), false)), arg_1.a.ww, true), max(-var_0.c, arg_1.c), min(arg_1.d, 0u), -(~var_0.e));
    global2 = Struct_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, -1000f) - global2.b)))))));
    return Struct_2(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.b, vec2<f32>(1259f, -467f)))) + _wgslsmith_f_op_vec2_f32(global2.b - global0[_wgslsmith_index_u32(~arg_0.x & arg_0.x, 18u)])));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2.a;
    let var_1 = global2.a;
    global2 = arg_2;
    global0 = array<vec2<f32>, 18>();
    global2 = func_4(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 14537u, u_input.c), func_2(Struct_1(vec4<bool>(arg_0, arg_2.a, arg_2.a, arg_0), vec2<bool>(false, arg_2.a), vec4<i32>(arg_1, -11062i, -8741i, 0i), 1u, 25354i))), func_2(Struct_1(vec4<bool>(false, arg_0, true, true), vec2<bool>(true, arg_0), vec4<i32>(arg_1, 7397i, -2622i, 28977i), ~u_input.a, _wgslsmith_div_i32(-20244i, -4799i))).x), Struct_1(vec4<bool>(arg_2.a || arg_0, true, arg_2.a, true), select(select(vec2<bool>(true, true), !vec2<bool>(false, arg_0), select(vec2<bool>(arg_2.a, true), vec2<bool>(false, true), vec2<bool>(global2.a, false))), vec2<bool>(func_3(vec3<bool>(arg_0, true, true), vec3<i32>(-2147483647i, 39509i, -24448i), arg_1).x, any(vec3<bool>(arg_0, arg_0, true))), global2.a || all(vec3<bool>(arg_2.a, false, arg_2.a))), vec4<i32>(_wgslsmith_add_i32(~0i, arg_1), arg_1, ~arg_1 >> (1u % 32u), 0i), abs(u_input.a), ~arg_1), firstTrailingBit(-vec3<i32>(-1i, -arg_1, ~985i)));
    return u_input.b.x << (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 18>();
    global0 = array<vec2<f32>, 18>();
    var var_0 = func_1(true, -2147483647i, Struct_2(!(global2.a || all(vec4<bool>(false, false, false, false))), vec2<f32>(-1000f, -1031f)));
    let var_1 = Struct_1(!select(vec4<bool>(!global2.a, global2.a, global2.a && global2.a, global2.a), !(!vec4<bool>(global2.a, false, global2.a, global2.a)), global2.a), vec2<bool>(!all(!vec4<bool>(global2.a, false, global2.a, global2.a)), select(any(select(vec4<bool>(global2.a, true, true, false), vec4<bool>(global2.a, global2.a, false, global2.a), global2.a)), any(select(vec4<bool>(global2.a, global2.a, global2.a, global2.a), vec4<bool>(false, global2.a, global2.a, global2.a), global2.a)), all(vec2<bool>(false, global2.a)))), _wgslsmith_mult_vec4_i32(abs(abs(vec4<i32>(1i, 1i, 1i, 1i))), ~_wgslsmith_div_vec4_i32(abs(vec4<i32>(-1i, 11154i, -29976i, -1i)), reverseBits(vec4<i32>(-60345i, -2147483647i, -24784i, 45032i)))), _wgslsmith_div_u32(u_input.b.x, u_input.c), ~1i);
    global2 = func_4(func_2(Struct_1(var_1.a, !var_1.a.wx, var_1.c, 1u, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-17464i, 1i, 31284i), var_1.c.yzw, var_1.a.xzz), _wgslsmith_div_vec3_i32(var_1.c.zxz, vec3<i32>(var_1.e, var_1.c.x, var_1.e))))).zy, var_1, _wgslsmith_clamp_vec3_i32(var_1.c.ywz, min(var_1.c.xxz, var_1.c.zxw), var_1.c.zxx));
    var var_2 = 41701u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e, 536f, firstTrailingBit(~vec2<i32>(9570i, 31175i)) ^ -vec2<i32>(select(var_1.c.x, var_1.c.x, true), firstLeadingBit(1i)), -1i, vec4<u32>(var_1.d, ~43130u, u_input.c, var_1.d));
}

