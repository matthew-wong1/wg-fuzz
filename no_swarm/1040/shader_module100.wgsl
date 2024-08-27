struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(602f, -200f, 1122f), vec4<f32>(-1362f, -111f, -458f, 1960f), false, vec3<bool>(true, false, true));

var<private> global1: array<Struct_3, 3>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    let var_0 = arg_0.b;
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.a.b.x), 929f)), -982f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a.a.x * arg_1.a.a.b.x) - arg_0.a.a.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - global0.a.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2243f + 1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(299f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1040f - -940f), 850f)), 612f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(arg_1.a.a.b)))))), any(var_0.a.d.yz), select(!(!vec3<bool>(var_0.a.d.x, arg_1.d, true)), !select(global0.d, !var_0.a.d, arg_1.a.a.c), arg_0.c));
    global1 = array<Struct_3, 3>();
    var var_1 = arg_1.b.a.b;
    let var_2 = !all(vec2<bool>(all(global0.d), true));
    return -_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a >> (_wgslsmith_mod_u32(4294967295u, 27u) % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-44007i, -45079i), vec2<i32>(2286i, u_input.a))), _wgslsmith_mod_i32(~_wgslsmith_mod_i32(u_input.a, -2147483647i), reverseBits(min(-2147483647i, u_input.a))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: bool) -> vec2<i32> {
    global1 = array<Struct_3, 3>();
    let var_0 = Struct_3(Struct_2(Struct_1(vec3<f32>(global0.b.x, -192f, -619f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b.x, -252f, global0.a.x, -531f) - arg_1.c.b))), all(vec2<bool>(false, arg_1.b)), arg_1.c.d)), Struct_2(arg_1.c), true, any(select(!vec4<bool>(arg_2, arg_2, arg_1.c.c, arg_2), vec4<bool>(all(vec2<bool>(arg_2, false)), true, arg_2, true), arg_1.a.d.x)));
    var var_1 = var_0.b.a.b.x;
    let var_2 = global0.a.x;
    var var_3 = arg_1.e.x | arg_0;
    return arg_1.e.zw | _wgslsmith_mult_vec2_i32(~(-_wgslsmith_sub_vec2_i32(arg_1.e.wz, vec2<i32>(-2846i, arg_0))), arg_1.e.yx);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = select(!select(!(!global0.d.zx), select(vec2<bool>(arg_0.b.a.d.x, global0.c), vec2<bool>(true, true), global0.d.xy), !global0.d.zx), !global0.d.zy, !select(false, false, global0.d.x));
    let var_1 = arg_0;
    var var_2 = func_4(-27831i, Struct_4(arg_0.b.a, any(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, arg_0.d, false, true), arg_0.b.a.d.x)), var_1.a.a, 1u, vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), (u_input.a >> (7413u % 32u)) > ~func_3(Struct_3(Struct_2(var_1.a.a), var_1.b, true, var_0.x), global1[_wgslsmith_index_u32(14283u, 3u)])) & reverseBits(_wgslsmith_clamp_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-27876i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, 1i)), -reverseBits(vec2<i32>(-2147483647i, u_input.a))));
    var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(max(countOneBits(~vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(-32687i, -42988i)), _wgslsmith_mult_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(-15792i, -25704i)), ~abs(vec2<i32>(25731i, u_input.a)))), vec2<i32>(func_4(~_wgslsmith_mod_i32(7986i, var_2.x), Struct_4(var_1.b.a, any(vec4<bool>(arg_0.d, global0.c, true, true)), Struct_1(var_1.b.a.a, global0.b, var_1.b.a.c, vec3<bool>(true, true, var_0.x)), reverseBits(4294967295u), vec4<i32>(var_2.x, u_input.a, var_2.x, 35128i)), true).x, u_input.a));
    global1 = array<Struct_3, 3>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.a.b.x)), _wgslsmith_f_op_f32(667f * 265f), -1000f) - arg_0.a.a.a)), _wgslsmith_f_op_vec4_f32(arg_0.b.a.b - global0.b), !(!(var_2.x != -2147483647i)) || !(_wgslsmith_f_op_f32(-global0.b.x) > var_1.b.a.b.x), !select(vec3<bool>(false, u_input.a < var_2.x, !arg_0.d), select(vec3<bool>(false, false, var_0.x), !arg_0.b.a.d, var_0.x), vec3<bool>(arg_0.d, !var_1.b.a.c, all(vec4<bool>(arg_0.b.a.d.x, var_0.x, var_1.b.a.d.x, var_1.c)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.b.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b.x, -264f))))));
    var var_1 = reverseBits(vec4<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(34146u << (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 2587u), vec2<u32>(20732u, 4294967295u))), 19999u), select(~35963u, ~1u, global0.c), 4294967295u));
    let var_2 = Struct_3(Struct_2(arg_0), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1233f, global0.b.x, 1999f))) + _wgslsmith_f_op_vec3_f32(ceil(arg_0.a))), _wgslsmith_f_op_vec4_f32(max(arg_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -1000f, -1314f, global0.b.x) * arg_1.b))), !all(arg_1.d.zx), vec3<bool>(any(vec4<bool>(global0.c, arg_0.c, true, global0.c)), u_input.a == u_input.a, true))), any(func_2(Struct_3(Struct_2(Struct_1(vec3<f32>(arg_1.a.x, arg_0.b.x, -705f), vec4<f32>(global0.b.x, arg_1.b.x, 1419f, 1727f), arg_1.d.x, arg_0.d)), Struct_2(Struct_1(vec3<f32>(var_0.x, global0.b.x, 346f), vec4<f32>(global0.b.x, 497f, arg_1.b.x, arg_1.a.x), arg_1.c, vec3<bool>(arg_0.d.x, arg_0.c, false))), all(vec4<bool>(arg_1.c, global0.c, false, arg_1.d.x)), all(arg_1.d.yz))).d), global0.c);
    let var_3 = abs(vec4<i32>(~_wgslsmith_add_i32(5477i, 1i), 1i, -29226i, u_input.a)) << (~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.x, 52889u, 1u, 5972u), ~vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(1u, var_1.x, 4294967295u, 1112u))) % vec4<u32>(32u));
    var var_4 = countOneBits(~16241u >> (~(~var_1.x) % 32u)) << (firstTrailingBit(select(14842u, ~(~var_1.x), var_2.a.a.d.x)) % 32u);
    return arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> vec3<f32> {
    global0 = func_5(func_2(global1[_wgslsmith_index_u32(8804u, 3u)]), func_2(global1[_wgslsmith_index_u32(~(~arg_1) & _wgslsmith_sub_u32(abs(arg_1), arg_1 & arg_1), 3u)]), abs(arg_0.xz));
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(Struct_3(Struct_2(Struct_1(global0.a, global0.b, false, vec3<bool>(global0.c, global0.d.x, false))), Struct_2(Struct_1(global0.b.wzw, global0.b, global0.c, global0.d)), true, false)).b.wxy) * global0.a)));
    global1 = array<Struct_3, 3>();
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.x, var_0.x, 391f) * _wgslsmith_f_op_vec4_f32(-global0.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global0.a.x, 760f, var_0.x) + _wgslsmith_f_op_vec4_f32(-global0.b)))), arg_1 < ~4294967295u, vec3<bool>(false, !(!(!global0.d.x)), all(global0.d)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(func_5(func_5(func_2(Struct_3(Struct_2(Struct_1(vec3<f32>(-176f, var_0.x, 1094f), vec4<f32>(var_0.x, global0.b.x, global0.a.x, 973f), true, global0.d)), Struct_2(Struct_1(var_0, vec4<f32>(-419f, -1000f, var_0.x, -948f), false, vec3<bool>(false, false, false))), global0.c, false)), Struct_1(vec3<f32>(var_0.x, global0.a.x, 177f), global0.b, true, vec3<bool>(global0.d.x, global0.d.x, global0.d.x)), _wgslsmith_clamp_vec2_i32(arg_0.yz, vec2<i32>(2954i, -63181i), vec2<i32>(u_input.a, arg_0.x))), Struct_1(_wgslsmith_f_op_vec3_f32(var_0 - vec3<f32>(var_0.x, var_0.x, 1000f)), func_5(Struct_1(vec3<f32>(-117f, var_0.x, global0.a.x), vec4<f32>(var_0.x, global0.b.x, var_0.x, global0.a.x), true, vec3<bool>(global0.d.x, true, global0.c)), Struct_1(vec3<f32>(global0.a.x, 1000f, 1178f), global0.b, false, vec3<bool>(false, global0.c, true)), arg_0.zy).b, true, global0.d), ~arg_0.xy).a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.x, global0.a.x)))))), _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(924f))))), _wgslsmith_f_op_f32(-252f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) * 857f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(min(global0.b, global0.b))) + vec4<f32>(716f, -1645f, _wgslsmith_div_f32(469f, 899f), global0.a.x))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1097f - 746f), _wgslsmith_f_op_f32(var_0.x + -453f), _wgslsmith_f_op_f32(select(-838f, -830f, global0.d.x))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -739f), global0.b.x, func_5(Struct_1(vec3<f32>(var_1.x, var_1.x, var_1.x), vec4<f32>(-487f, var_0.x, -1000f, -1505f), true, vec3<bool>(false, false, global0.d.x)), Struct_1(vec3<f32>(-1000f, var_0.x, -571f), vec4<f32>(global0.a.x, var_0.x, 620f, var_0.x), global0.c, global0.d), vec2<i32>(arg_0.x, arg_0.x)).a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_1(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(2147483647i, 1i, 0i)), ~32543u)), global0.b, true, !select(select(global0.d, global0.d, global0.d), func_5(Struct_1(global0.a, global0.b, true, vec3<bool>(false, false, global0.d.x)), Struct_1(vec3<f32>(441f, -136f, global0.a.x), vec4<f32>(global0.b.x, -433f, global0.b.x, -1000f), true, global0.d), vec2<i32>(-2560i, -2147483647i)).d, select(vec3<bool>(global0.c, true, false), global0.d, false))), !global0.d.x, func_2(Struct_3(Struct_2(func_5(Struct_1(global0.b.yxz, vec4<f32>(global0.a.x, -1110f, global0.b.x, global0.b.x), true, vec3<bool>(false, global0.d.x, false)), Struct_1(global0.a, vec4<f32>(global0.a.x, global0.a.x, global0.b.x, global0.a.x), true, global0.d), vec2<i32>(-2147483647i, u_input.a))), Struct_2(Struct_1(vec3<f32>(342f, global0.b.x, global0.a.x), vec4<f32>(global0.a.x, -1183f, global0.a.x, 1000f), true, global0.d)), u_input.a >= _wgslsmith_clamp_i32(u_input.a, 0i, u_input.a), (global0.c & global0.d.x) | (global0.d.x == false))), ~_wgslsmith_add_u32(1u, ~(~74423u)), ~vec4<i32>(u_input.a, -43766i, u_input.a ^ reverseBits(1i), -10214i));
    global1 = array<Struct_3, 3>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b.x))))));
    global0 = func_5(var_0.c, Struct_1(global0.b.yww, global0.b, true, global0.d), -vec2<i32>(1i, abs(_wgslsmith_div_i32(41057i, -4529i))));
    let var_2 = abs(1u);
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_vec3_f32(func_1(var_0.e.zyx, 0u)).x, _wgslsmith_f_op_f32(var_1 * 2024f)))), var_0.a.b, false, select(func_5(Struct_1(vec3<f32>(-1301f, global0.b.x, var_0.a.b.x), vec4<f32>(-1879f, 1277f, var_1, -642f), false, vec3<bool>(global0.d.x, global0.c, true)), var_0.c, var_0.e.wx).d, var_0.a.d, var_0.c.c & true)), !var_0.a.d.x, var_0.a, var_2, ~(vec4<i32>(_wgslsmith_sub_i32(22918i, 3108i), 2147483647i, firstTrailingBit(-3207i), abs(-2147483647i)) & (var_0.e & _wgslsmith_mult_vec4_i32(var_0.e, var_0.e))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-var_3.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_f32(f32(-1f) * -1930f), countOneBits(~vec4<u32>(countOneBits(0u), var_2, 0u, ~26980u)), var_3.a.b, -var_0.e.x);
}

