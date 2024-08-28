struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, false));

var<private> global2: vec3<f32>;

var<private> global3: Struct_2 = Struct_2(vec4<i32>(2147483647i, -1i, -22720i, -1i), Struct_1(vec3<bool>(false, true, true)), vec3<f32>(530f, -486f, 247f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(~(~(~max(0u, arg_2.a.x))));
    var_0 = _wgslsmith_mod_u32(1u, u_input.d) & u_input.e.x;
    let var_1 = arg_2.b;
    global2 = vec3<f32>(arg_2.c.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-522f)))));
    let var_2 = arg_2.c;
    return global3.c.x;
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = u_input.b.xz;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.c.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), vec3<f32>(140f, -1988f, global2.x), Struct_3(vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.d), global3.b, Struct_2(global3.a, global3.b, vec3<f32>(-192f, global2.x, 211f)), false, arg_0.x), Struct_2(global3.a, global3.b, vec3<f32>(global2.x, 490f, -1702f)))) * 1831f)) * -1000f);
    let var_2 = !arg_0.wz;
    var var_3 = vec3<f32>(global3.c.x, global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global3.c.x, 878f)), _wgslsmith_f_op_f32(select(global3.c.x, -1416f, global3.b.a.x)))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-global2.x)))));
    global1 = Struct_1(select(global1.a, vec3<bool>(u_input.d == ~u_input.d, all(vec3<bool>(arg_0.x, false, true)), global1.a.x), arg_0.zyy));
    return Struct_2(global3.a, Struct_1(vec3<bool>(arg_0.x, !(global3.b.a.x || true), !global1.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(846f, _wgslsmith_f_op_f32(func_3(global1.a.yz, _wgslsmith_f_op_vec3_f32(ceil(global3.c)), Struct_3(vec4<u32>(u_input.e.x, 0u, 1u, u_input.e.x), global3.b, Struct_2(global3.a, Struct_1(arg_0.zyx), global3.c), var_2.x, global1.a.x), Struct_2(vec4<i32>(u_input.b.x, var_0.x, global3.a.x, var_0.x), global3.b, global3.c))), _wgslsmith_f_op_f32(f32(-1f) * -429f))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(global3.c, vec3<f32>(arg_1.c.c.x, _wgslsmith_f_op_f32(min(-197f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(397f - arg_1.c.c.x), _wgslsmith_f_op_f32(-arg_3.c.x)))), -1959f)));
    let var_1 = arg_1.b;
    var var_2 = ~arg_0.a.zxw;
    global2 = func_2(select(vec4<bool>(arg_1.d, _wgslsmith_f_op_f32(arg_1.c.c.x - var_0.x) != _wgslsmith_f_op_f32(var_0.x - -295f), false, true), !(!select(vec4<bool>(arg_3.b.a.x, false, var_1.a.x, false), vec4<bool>(global0.x, global0.x, arg_0.c.b.a.x, global1.a.x), vec4<bool>(false, false, global0.x, arg_1.e))), arg_1.e)).c;
    var var_3 = max(_wgslsmith_mod_i32(~arg_0.c.a.x, min(-21891i | arg_2.x, -48107i)), reverseBits(func_2(!(!vec4<bool>(global1.a.x, false, true, arg_0.e))).a.x));
    return Struct_2(arg_0.c.a, func_2(!(!vec4<bool>(true, arg_3.b.a.x, true, arg_3.b.a.x))).b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.c.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1362f)), func_2(select(vec4<bool>(global1.a.x, arg_3.b.a.x, false, true), vec4<bool>(false, arg_0.d, true, arg_0.c.b.a.x), vec4<bool>(global3.b.a.x, true, false, false))).c.x), _wgslsmith_f_op_f32(-arg_3.c.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(Struct_3(u_input.e, Struct_1(vec3<bool>(global1.a.x, global1.a.x, 18462u < u_input.e.x)), func_2(select(vec4<bool>(true, global0.x, false, global0.x), !vec4<bool>(false, false, true, global0.x), global0.x & true)), !select(global0.x, global0.x, global1.a.x) | !global1.a.x, all(global1.a)), Struct_3(select(vec4<u32>(4294967295u, 1u, u_input.d, 50639u) | select(vec4<u32>(u_input.d, 1u, u_input.d, 1u), vec4<u32>(38277u, u_input.d, 25815u, 0u), vec4<bool>(global1.a.x, global0.x, global0.x, true)), _wgslsmith_mult_vec4_u32(u_input.e | u_input.e, abs(u_input.e)), select(false, true, !global3.b.a.x)), global3.b, Struct_2(vec4<i32>(u_input.a, min(-2147483647i, u_input.b.x), global3.a.x, select(global3.a.x, global3.a.x, global1.a.x)), global3.b, global3.c), global1.a.x, all(!global3.b.a.zx)), vec2<i32>(-(~(~2147483647i)), global3.a.x), func_2(select(vec4<bool>(true, global3.b.a.x || global0.x, false, true), vec4<bool>(false, global3.b.a.x, !global0.x, global3.b.a.x), !select(vec4<bool>(global1.a.x, global1.a.x, false, global0.x), vec4<bool>(false, global3.b.a.x, true, false), true))));
    var var_1 = firstLeadingBit(u_input.d | ~(61920u >> (0u % 32u))) ^ ~u_input.e.x;
    return func_4(Struct_3(~abs(vec4<u32>(u_input.d, 90826u, u_input.d, 4294967295u)), global3.b, Struct_2((vec4<i32>(1i, -32620i, -2147483647i, global3.a.x) ^ vec4<i32>(u_input.a, global3.a.x, -2147483647i, var_0.a.x)) | reverseBits(var_0.a), func_4(Struct_3(u_input.e, Struct_1(global1.a), Struct_2(global3.a, var_0.b, var_0.c), global0.x, global0.x), Struct_3(u_input.e, var_0.b, Struct_2(vec4<i32>(-11681i, 65122i, -2147483647i, var_0.a.x), Struct_1(vec3<bool>(true, true, true)), global3.c), global1.a.x, true), max(global3.a.ww, global3.a.zz), func_2(vec4<bool>(true, global3.b.a.x, global3.b.a.x, true))).b, var_0.c), true, !any(select(vec4<bool>(true, global1.a.x, var_0.b.a.x, global3.b.a.x), vec4<bool>(false, false, true, false), vec4<bool>(false, global3.b.a.x, false, var_0.b.a.x)))), Struct_3(u_input.e, global3.b, func_4(Struct_3(vec4<u32>(u_input.e.x, 38712u, 25503u, 35750u), var_0.b, Struct_2(vec4<i32>(1i, var_0.a.x, -50407i, 22273i), Struct_1(global1.a), vec3<f32>(1153f, global2.x, 532f)), global3.b.a.x, true), Struct_3(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, u_input.d, 54211u, u_input.d), vec4<u32>(0u, 0u, u_input.e.x, u_input.e.x)), var_0.b, func_4(Struct_3(vec4<u32>(28677u, 0u, 4294967295u, u_input.e.x), Struct_1(vec3<bool>(false, global1.a.x, global3.b.a.x)), Struct_2(var_0.a, global3.b, global3.c), global3.b.a.x, false), Struct_3(u_input.e, global3.b, Struct_2(global3.a, global3.b, var_0.c), global1.a.x, global3.b.a.x), vec2<i32>(var_0.a.x, -13477i), Struct_2(vec4<i32>(u_input.b.x, -24866i, -46227i, -1i), Struct_1(vec3<bool>(global1.a.x, global1.a.x, var_0.b.a.x)), var_0.c)), true, all(vec4<bool>(true, var_0.b.a.x, global3.b.a.x, var_0.b.a.x))), (var_0.a.xz >> (u_input.e.xy % vec2<u32>(32u))) | vec2<i32>(2147483647i, 2147483647i), func_2(select(vec4<bool>(true, global0.x, true, false), vec4<bool>(global3.b.a.x, false, global0.x, false), vec4<bool>(var_0.b.a.x, var_0.b.a.x, global0.x, var_0.b.a.x)))), true, false), func_2(select(vec4<bool>(any(vec4<bool>(global3.b.a.x, true, true, global3.b.a.x)), any(vec2<bool>(true, var_0.b.a.x)), u_input.e.x > 574u, !global0.x), select(select(vec4<bool>(var_0.b.a.x, var_0.b.a.x, false, false), vec4<bool>(false, global0.x, false, true), vec4<bool>(global3.b.a.x, global0.x, true, true)), !vec4<bool>(var_0.b.a.x, true, global1.a.x, false), true), global3.b.a.x)).a.xx, Struct_2(vec4<i32>(firstLeadingBit(~2147483647i), func_2(vec4<bool>(false, var_0.b.a.x, true, global0.x)).a.x, var_0.a.x, -15180i), global3.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1643f, global2.x, _wgslsmith_f_op_f32(-global2.x))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<u32>(79010u, 1u, ~(~0u), _wgslsmith_div_u32(u_input.e.x, 1u >> (u_input.e.x % 32u))), func_1(), func_2(select(select(vec4<bool>(false, global0.x, global1.a.x, global3.b.a.x), vec4<bool>(global0.x, global3.b.a.x, global3.b.a.x, false), global3.b.a.x & global0.x), vec4<bool>(true, u_input.c.x == global3.a.x, func_1().a.x, true), global0.x)), false, false);
    var var_1 = 1u;
    let var_2 = Struct_2(~_wgslsmith_sub_vec4_i32(global3.a, _wgslsmith_mod_vec4_i32(vec4<i32>(global3.a.x, -1i, global3.a.x, 1i) | var_0.c.a, -vec4<i32>(u_input.b.x, u_input.a, -2147483647i, u_input.a))), var_0.c.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.c - vec3<f32>(var_0.c.c.x, -248f, var_0.c.c.x))) - vec3<f32>(1174f, _wgslsmith_div_f32(global3.c.x, global2.x), -134f))));
    var_1 = 22032u;
    var var_3 = var_2.c.yz;
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1237f, firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, var_0.a.x, var_0.a.x, 79062u)), vec4<u32>(9159u, 0u, 1u, 0u)), ~u_input.e)), vec2<u32>(~(~(0u | var_0.a.x)), 14800u), _wgslsmith_div_vec3_f32(vec3<f32>(922f, var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -507f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global3.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1438f, 674f, -400f) - vec3<f32>(-489f, 2589f, -531f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-469f, -1920f, global3.c.x)))))), func_4(var_0, Struct_3(vec4<u32>(_wgslsmith_add_u32(0u, 27467u), _wgslsmith_mult_u32(var_0.a.x, var_0.a.x), ~1u, _wgslsmith_mult_u32(u_input.d, 0u)), func_1(), Struct_2(vec4<i32>(42327i, var_0.c.a.x, var_0.c.a.x, 1i), Struct_1(global3.b.a), global3.c), global1.a.x, func_2(select(vec4<bool>(global3.b.a.x, true, global3.b.a.x, false), vec4<bool>(false, var_0.b.a.x, false, true), var_2.b.a.x)).b.a.x), (-var_0.c.a.yx ^ _wgslsmith_mult_vec2_i32(var_0.c.a.zw, u_input.b.zx)) ^ (abs(vec2<i32>(u_input.c.x, -22668i)) & -vec2<i32>(var_2.a.x, 100912i)), var_2).a.yz);
}

