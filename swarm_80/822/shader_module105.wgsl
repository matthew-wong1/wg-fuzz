struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32> = vec2<f32>(1568f, 515f);

var<private> global2: array<f32, 24>;

var<private> global3: array<f32, 23> = array<f32, 23>(-1146f, -1537f, -948f, -1116f, 599f, 433f, -1513f, -1683f, -1745f, -1357f, -258f, 1497f, 2033f, -389f, -438f, 1350f, 1080f, 384f, 406f, -1254f, -197f, -1333f, -911f);

var<private> global4: vec3<f32> = vec3<f32>(-550f, -940f, -1303f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    return global0.b;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec3_i32(min(min(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 17797i, 5950i), vec3<i32>(1i, u_input.d, 0i)), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(12578i, 2147483647i, u_input.d)), -vec3<i32>(27067i, 1i, u_input.d))), vec3<i32>(-19073i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 40957i, u_input.d), vec3<i32>(u_input.d, 26085i, u_input.d))), u_input.d)), -(-vec3<i32>(1i, 0i, -31874i) << (u_input.c % vec3<u32>(32u))) | vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-63895i, u_input.d, u_input.d), -vec3<i32>(-34807i, u_input.d, u_input.d)), u_input.d, -firstTrailingBit(u_input.d)));
    var var_1 = ~u_input.c.x;
    global0 = Struct_2(!(!global0.a), !(!select(global0.a.xy, func_2(false), global0.b)));
    let var_2 = global0.b.x;
    var var_3 = vec3<bool>(false, all(global0.a), true);
    return Struct_3(global4.zy);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec2_f32(global4.zz + func_1().a);
    let var_0 = global0.a;
    let var_1 = arg_3;
    var var_2 = (reverseBits((vec3<i32>(-1i, arg_2, 0i) ^ vec3<i32>(0i, u_input.d, u_input.d)) ^ vec3<i32>(-2644i, -1i, -1i)) & min(vec3<i32>(-2147483647i, -u_input.d, 3975i), ~(vec3<i32>(41871i, 1i, 0i) | vec3<i32>(arg_2, -1414i, -2147483647i)))) | -(~_wgslsmith_div_vec3_i32(select(vec3<i32>(-59739i, u_input.d, u_input.d), vec3<i32>(arg_2, 2147483647i, -1i), vec3<bool>(global0.a.x, false, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-44747i, u_input.d, arg_2), vec3<i32>(arg_2, -12818i, arg_2), vec3<i32>(arg_2, arg_2, arg_2))));
    global4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.x, -762f, -835f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(163f, arg_3.a.x, 649f), vec3<f32>(arg_3.a.x, global2[_wgslsmith_index_u32(u_input.c.x, 24u)], -1159f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.x, -100f, 522f))))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 23u)]) * 1010f))), 464f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1392f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(1u, 24u)])), -806f, global0.b.x || false))))));
    return arg_3;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !global0.b;
    var var_1 = 1050f;
    var var_2 = ~vec3<i32>(arg_1.c, arg_1.c | u_input.d, -u_input.d);
    global0 = Struct_2(!(!global0.a), var_0);
    global0 = Struct_2(select(select(select(global0.a, select(vec3<bool>(false, false, false), global0.a, false), true && arg_1.b), select(select(global0.a, global0.a, arg_1.b), select(vec3<bool>(var_0.x, arg_1.b, true), vec3<bool>(true, global0.b.x, true), vec3<bool>(var_0.x, global0.b.x, true)), any(vec3<bool>(false, global0.a.x, arg_1.b))), false), !global0.a, !global0.a.x), !select(var_0, !select(global0.a.yy, vec2<bool>(var_0.x, var_0.x), true), all(global0.a)));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = -(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, -24630i >> (u_input.b % 32u), ~30471i), vec3<i32>(-arg_1.c, ~u_input.d, func_4(Struct_3(global4.zx), arg_1).c)) << (u_input.c % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-155f, global4.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1118f, global4.x)))))));
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-global4.x))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global1.x) - _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(338f, -1565f) * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), arg_1.a), 24u)]))), global4.x, _wgslsmith_f_op_f32(select(func_1().a.x, -103f, false)));
    return Struct_2(vec3<bool>(50231u <= select(~arg_0.a.x, reverseBits(39630u), !arg_0.b), any(vec4<bool>(any(vec3<bool>(false, arg_0.b, false)), global0.a.x, any(vec2<bool>(global0.a.x, arg_0.b)), false || arg_1.b)), arg_1.b), select(select(global0.a.xx, func_2(-1i == arg_0.c), vec2<bool>(all(vec3<bool>(arg_0.b, arg_1.b, false)), arg_1.b)), global0.b, vec2<bool>(arg_0.b, _wgslsmith_mod_u32(u_input.a, u_input.b) > 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 23>();
    let var_0 = global0.b;
    global0 = func_5(func_4(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1027f) - _wgslsmith_div_f32(276f, -1000f)), func_1(), min(-1i, ~u_input.d), Struct_3(_wgslsmith_f_op_vec2_f32(-global4.zx))), Struct_1(~vec2<u32>(4294967295u, u_input.a), !(global4.x >= global3[_wgslsmith_index_u32(4294967295u, 23u)]), ~(-44841i) & -u_input.d)), Struct_1(vec2<u32>(u_input.b, u_input.c.x), global0.a.x, -48133i));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.zy - vec2<f32>(-341f, 1210f)))) + global4.yz));
    var var_1 = 21335u;
    let x = u_input.a;
    s_output = StorageBuffer(abs((vec3<i32>(u_input.d, -2147483647i, -27054i) << (u_input.c % vec3<u32>(32u))) >> (reverseBits(u_input.c) % vec3<u32>(32u))) & -(vec3<i32>(-1i) * -vec3<i32>(u_input.d, u_input.d, 62678i)), min(~(~(~vec4<i32>(u_input.d, u_input.d, 0i, u_input.d))), ~vec4<i32>(-10788i | u_input.d, -u_input.d, i32(-1i) * -38330i, -1i)));
}

