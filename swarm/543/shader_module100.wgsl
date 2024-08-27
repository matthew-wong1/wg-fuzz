struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global1: array<vec2<u32>, 9>;

var<private> global2: Struct_1;

var<private> global3: vec4<i32> = vec4<i32>(i32(-2147483648), 1i, 2147483647i, -21865i);

var<private> global4: u32 = 1u;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    let var_0 = global2.a;
    let var_1 = min(_wgslsmith_mult_vec2_i32(abs(global3.ww), arg_0.yx), arg_0.wz);
    let var_2 = arg_1;
    let var_3 = Struct_3(~u_input.a, arg_1, false, ~countOneBits(~7293u | select(19727u, u_input.b.x, var_2.b.b.x)), -581f);
    global1 = array<vec2<u32>, 9>();
    return 4294967295u;
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec3<f32> {
    var var_0 = select(countOneBits(_wgslsmith_sub_vec3_i32(global3.yww, u_input.a.xwz)), select(global3.xwy, u_input.a.yww, vec3<bool>(!any(vec3<bool>(true, arg_0, global2.b.x)), any(select(global2.b.xy, global2.b.xy, vec2<bool>(arg_0, false))), arg_0)), !select(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true), arg_1.a.b.b, !global2.b));
    let var_1 = _wgslsmith_dot_vec3_u32(arg_1.a.a.ywy & vec3<u32>(21942u, 1u << (global0.x % 32u), 45526u), vec3<u32>(~u_input.b.x, global0.x << (global0.x % 32u), ~(~3029u))) << (_wgslsmith_mult_u32(79402u, min(43946u, ~_wgslsmith_dot_vec2_u32(arg_1.a.e, u_input.b))) % 32u);
    let var_2 = Struct_3(vec4<i32>(global3.x, global3.x, ~global3.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_1.a.d, -1i, -115i, 26644i) << (vec4<u32>(1u, 53914u, 29473u, 80313u) % vec4<u32>(32u))) ^ u_input.e), arg_1.a, true, ~_wgslsmith_sub_u32(~0u, arg_1.a.e.x), 647f);
    var var_3 = !select(select(global2.b, select(!vec3<bool>(arg_0, true, false), vec3<bool>(true, true, var_2.b.b.b.x), all(vec3<bool>(var_2.b.b.b.x, false, false))), var_2.c), global2.b, true);
    global2 = Struct_1(global2.a, select(select(select(select(vec3<bool>(global2.b.x, arg_1.a.c.b.x, true), global2.b, vec3<bool>(arg_0, false, true)), !arg_1.a.c.b, !global2.b), select(select(arg_1.a.c.b, vec3<bool>(true, true, true), var_2.b.b.b), vec3<bool>(true, true, true), select(vec3<bool>(true, true, arg_0), global2.b, true)), (true | arg_1.a.c.b.x) && true), !(!arg_1.a.b.b), !(!(!var_2.b.b.b))));
    return vec3<f32>(-947f, _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1524f * -768f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a.x)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: bool) -> vec4<u32> {
    let var_0 = true;
    var var_1 = _wgslsmith_dot_vec3_i32(firstLeadingBit(max(u_input.a.xyy, _wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, -2147483647i, -26553i), vec3<i32>(u_input.a.x, -3937i, u_input.e)) | (u_input.a.ywz >> (vec3<u32>(1u, arg_0.x, 1u) % vec3<u32>(32u))))), ~_wgslsmith_sub_vec3_i32(global3.yxw, vec3<i32>(2147483647i, select(17273i, global3.x, var_0), -global3.x)));
    var var_2 = u_input.d.x;
    let var_3 = 83668u;
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, global2.a.x))), true)))), !global2.b);
    return ~abs(~(~(~vec4<u32>(u_input.b.x, global0.x, global0.x, global0.x))));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    global2 = Struct_1(global2.a, !vec3<bool>(true, !any(arg_2.c.b.xz), global2.b.x & any(vec4<bool>(arg_2.c.b.x, true, arg_2.b.b.x, global2.b.x))));
    global4 = _wgslsmith_add_u32(1u, ~4294967295u);
    let var_1 = all(!select(!(!global2.b.zz), select(select(arg_2.c.b.yy, vec2<bool>(arg_2.b.b.x, false), vec2<bool>(true, global2.b.x)), !global2.b.yx, vec2<bool>(arg_2.c.b.x, global2.b.x)), arg_2.c.b.x));
    var var_2 = ~u_input.a.yz << (~u_input.d.zy % vec2<u32>(32u));
    return arg_2;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = -2147483647i;
    let var_1 = func_5(select(2147483647i << (firstLeadingBit(func_2(u_input.a, Struct_2(arg_0, arg_3, Struct_1(global2.a, vec3<bool>(arg_3.b.x, false, true)), 1i, vec2<u32>(arg_0.x, u_input.d.x)))) % 32u), -(~u_input.a.x), -5345i > countOneBits(u_input.e ^ arg_1.x)), vec3<f32>(629f, -373f, _wgslsmith_f_op_f32(-global2.a.x)), Struct_2(func_4(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.xz, vec2<u32>(u_input.d.x, 1u)), ~global0.x, _wgslsmith_sub_u32(4294967295u, arg_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, 322f, global2.a.x)) + _wgslsmith_f_op_vec3_f32(func_3(false, Struct_4(Struct_2(arg_0, arg_3, arg_3, var_0, vec2<u32>(86760u, 15736u)), vec3<f32>(arg_3.a.x, arg_3.a.x, global2.a.x))))), false), arg_3, arg_3, _wgslsmith_dot_vec2_i32(arg_1.wy, arg_1.wz), _wgslsmith_clamp_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 9u)], abs(global1[_wgslsmith_index_u32(arg_0.x, 9u)] << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u))), global1[_wgslsmith_index_u32(~min(arg_0.x, arg_0.x), 9u)])), u_input.d.x);
    var var_2 = all(select(!(!vec2<bool>(global2.b.x, false)), !vec2<bool>(!arg_3.b.x, all(vec3<bool>(var_1.c.b.x, global2.b.x, arg_3.b.x))), var_1.b.b.xx));
    let var_3 = func_2(-(~u_input.a), func_5(select(arg_2, -abs(-2147483647i), all(!vec4<bool>(false, false, var_1.b.b.x, global2.b.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.a.x, -456f, -843f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a.x, -232f, arg_3.a.x)) * vec3<f32>(-565f, 419f, arg_3.a.x))), var_1, ~u_input.c));
    var var_4 = arg_3.a.x;
    return vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d.xy, max(vec2<u32>(0u, 596u << (var_1.a.x % 32u)), arg_0.ww)), _wgslsmith_div_u32(abs(func_5(_wgslsmith_div_i32(2147483647i, -1i), vec3<f32>(1739f, -182f, global2.a.x), var_1, select(56920u, u_input.b.x, true)).a.x), ~u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(func_1(~vec4<u32>(4294967295u, u_input.d.x, 25959u, 62400u), -(~vec4<i32>(0i, -1i, 26170i, u_input.a.x)), global3.x, Struct_1(_wgslsmith_f_op_vec2_f32(global2.a + vec2<f32>(global2.a.x, global2.a.x)), select(global2.b, vec3<bool>(false, global2.b.x, false), true))) & select(~func_5(u_input.a.x, vec3<f32>(global2.a.x, global2.a.x, -612f), Struct_2(vec4<u32>(global0.x, global0.x, global0.x, u_input.c), Struct_1(vec2<f32>(global2.a.x, 937f), vec3<bool>(global2.b.x, false, global2.b.x)), Struct_1(vec2<f32>(1972f, 546f), global2.b), -2147483647i, vec2<u32>(0u, u_input.d.x)), 1u).e, global1[_wgslsmith_index_u32(~1u, 9u)], true));
    global2 = func_5(abs(func_5(firstTrailingBit(25422i), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(global2.b.x, Struct_4(Struct_2(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), Struct_1(vec2<f32>(global2.a.x, -133f), vec3<bool>(true, global2.b.x, false)), Struct_1(vec2<f32>(global2.a.x, 1777f), global2.b), -1i, vec2<u32>(u_input.b.x, global0.x)), vec3<f32>(-1602f, global2.a.x, global2.a.x)))).x, _wgslsmith_f_op_f32(sign(global2.a.x)), _wgslsmith_f_op_f32(step(-1497f, -1635f))), func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, global3.x), u_input.a.yy), _wgslsmith_div_vec3_f32(vec3<f32>(1137f, global2.a.x, -856f), vec3<f32>(-1000f, global2.a.x, global2.a.x)), func_5(global3.x, vec3<f32>(global2.a.x, -173f, global2.a.x), Struct_2(vec4<u32>(50406u, 4294967295u, global0.x, 27702u), Struct_1(vec2<f32>(-309f, -2498f), global2.b), Struct_1(vec2<f32>(-823f, -394f), vec3<bool>(global2.b.x, global2.b.x, true)), u_input.e, u_input.d.zy), 4294967295u), 13715u), ~(~26231u)).d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, -1286f, global2.a.x) + vec3<f32>(global2.a.x, 580f, global2.a.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -961f, global2.a.x)))), vec3<bool>(true, !global2.b.x, !global2.b.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.a.x, 350f))))), Struct_2(vec4<u32>(u_input.c, 0u, _wgslsmith_div_u32(10959u, 1u), u_input.d.x << (45530u % 32u)) >> (~firstTrailingBit(vec4<u32>(global0.x, u_input.c, u_input.c, u_input.c)) % vec4<u32>(32u)), Struct_1(vec2<f32>(-876f, global2.a.x), !global2.b), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, global2.a.x) + vec2<f32>(-1377f, 2035f)) * global2.a), vec3<bool>(true, select(global2.b.x, true, global2.b.x), global2.b.x)), _wgslsmith_dot_vec3_i32(select(u_input.a.ywz, min(global3.xyz, u_input.a.xxz), true), vec3<i32>(-global3.x, abs(35640i), global3.x)), ~u_input.b), global0.x).c;
    global1 = array<vec2<u32>, 9>();
    let var_0 = Struct_4(Struct_2(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(global0.x, u_input.c, global0.x, u_input.c)), ~vec4<u32>(global0.x, 63790u, u_input.c, 17898u), vec4<u32>(u_input.c, global0.x, 43269u, 43674u)), ~vec4<u32>(global0.x, u_input.d.x, u_input.c, 13272u)), func_5(0i, _wgslsmith_div_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, global2.a.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(512f, -1000f, -2506f)))), func_5(_wgslsmith_sub_i32(-20503i, 26112i), _wgslsmith_f_op_vec3_f32(func_3(global2.b.x, Struct_4(Struct_2(vec4<u32>(0u, u_input.b.x, u_input.d.x, 0u), Struct_1(global2.a, vec3<bool>(false, global2.b.x, global2.b.x)), Struct_1(vec2<f32>(374f, -1505f), global2.b), -1i, global1[_wgslsmith_index_u32(global0.x, 9u)]), vec3<f32>(808f, 797f, global2.a.x)))), Struct_2(vec4<u32>(u_input.d.x, 0u, 12049u, u_input.c), Struct_1(vec2<f32>(global2.a.x, 263f), vec3<bool>(false, false, global2.b.x)), Struct_1(global2.a, vec3<bool>(false, true, global2.b.x)), -36353i, global1[_wgslsmith_index_u32(4294967295u, 9u)]), min(4294967295u, 4483u)), 36453u).b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2162f, global2.a.x), global2.a)), select(select(global2.b, vec3<bool>(global2.b.x, true, false), global2.b.x), global2.b, !vec3<bool>(global2.b.x, true, false))), -36968i ^ (41955i << (~global0.x % 32u)), u_input.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.a.x, 802f, global2.a.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-512f, 179f, 199f) * vec3<f32>(-574f, -342f, global2.a.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -709f), -1000f, _wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.a.x, global2.a.x, global2.a.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.a.x, global2.a.x)))), false)), !select(select(global2.b, vec3<bool>(global2.b.x, global2.b.x, false), global2.b), vec3<bool>(true, global2.b.x, false), !vec3<bool>(global2.b.x, false, global2.b.x)))));
    let var_1 = Struct_2(var_0.a.a, func_5(~(var_0.a.d | _wgslsmith_mod_i32(0i, u_input.e)), var_0.b, func_5(-1i, vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(-global2.a.x), -1028f), var_0.a, 27499u), global0.x).b, Struct_1(vec2<f32>(-613f, _wgslsmith_f_op_f32(f32(-1f) * -282f)), var_0.a.c.b), _wgslsmith_mod_i32(2147483647i, -2147483647i), u_input.b);
    let var_2 = var_0.a.d >> (~(~29664u) % 32u);
    var var_3 = select(!select(select(vec4<bool>(true, global2.b.x, false, var_1.c.b.x), !vec4<bool>(var_1.c.b.x, false, true, false), vec4<bool>(var_0.a.b.b.x, true, true, global2.b.x)), vec4<bool>(false, !var_1.b.b.x, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, var_0.a.b.b.x, global2.b.x, var_0.a.b.b.x), vec4<bool>(false, global2.b.x, global2.b.x, false)), vec4<bool>(false, var_1.c.b.x, false, var_1.c.b.x), vec4<bool>(false, true, var_0.a.c.b.x, false))), vec4<bool>(true, all(vec4<bool>(true, false, any(var_0.a.c.b.yz), select(var_0.a.c.b.x, var_1.c.b.x, false))), !any(select(vec4<bool>(var_0.a.c.b.x, false, var_1.c.b.x, false), vec4<bool>(true, true, true, var_0.a.b.b.x), vec4<bool>(var_1.c.b.x, true, true, var_1.b.b.x))), global2.b.x), all(select(!(!var_0.a.c.b), vec3<bool>(true, !var_0.a.b.b.x, 152f > var_1.c.a.x), var_0.a.b.b.x || true)));
    var var_4 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.c, ~abs(var_0.a.e.x)) >> (31318u % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global2.a, var_0.a.c.a, false | var_1.b.b.x)))) + vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1135f) * _wgslsmith_f_op_f32(f32(-1f) * -1423f)))), -1001f);
}

