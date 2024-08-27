struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 3019u;

var<private> global1: array<Struct_3, 9>;

var<private> global2: array<vec2<u32>, 1>;

var<private> global3: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec3<i32> {
    var var_0 = Struct_2(arg_0.a);
    global3 = ~(~firstTrailingBit(~global2[_wgslsmith_index_u32(0u, 1u)]));
    var var_1 = 2224u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, arg_1, arg_1, -1221f));
    let var_3 = _wgslsmith_dot_vec2_u32(~select(vec2<u32>(arg_0.a.b, var_0.a.d), vec2<u32>(5125u, global3.x), vec2<bool>(true, arg_0.a.e.x)) & ((vec2<u32>(global3.x, u_input.b) >> (vec2<u32>(var_0.a.b, 1u) % vec2<u32>(32u))) >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(110040u, 0u, u_input.d.x), vec3<u32>(0u, var_0.a.b, 4294967295u)), arg_0.a.d)) < 50824u;
    return firstLeadingBit(vec3<i32>(firstLeadingBit(1i), arg_0.a.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.a.a, var_0.a.a), ~(-2147483647i), arg_0.a.a.x), arg_0.a.a)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_3 {
    global0 = _wgslsmith_sub_u32(~((0u << (global3.x % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.c, global3.x), ~arg_0) % 32u)), 1u);
    global0 = global3.x;
    var var_0 = vec4<f32>(-350f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -836f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-437f + arg_1.x) * arg_1.x));
    var var_1 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(0i, 0i, arg_2)), func_3(Struct_2(Struct_1(vec3<i32>(-98892i, arg_2, arg_2), 0u, true, global3.x, vec4<bool>(false, true, true, true))), _wgslsmith_f_op_f32(805f + 663f))), ~vec3<i32>(arg_2, -54852i, arg_2)), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(~87433u, arg_0.x >> (25548u % 32u)), ~21407u), true, ~14174u, select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true), false), vec4<bool>(true, true, true, true), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false))), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_2 = vec2<bool>(any(var_1.e), 484f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) * _wgslsmith_f_op_f32(-arg_1.x))));
    return global1[_wgslsmith_index_u32(~(~((abs(57798u) << (arg_0.x % 32u)) >> ((global3.x | max(4294967295u, 1u)) % 32u))), 9u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = func_2(u_input.a.xwx, arg_0.zzw, 0i);
    let var_1 = Struct_2(Struct_1(vec3<i32>(abs(0i), _wgslsmith_div_i32(i32(-1i) * -10294i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, 0i), arg_1)), 1i), firstTrailingBit(u_input.b), any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(26042u, 51661u | u_input.b, _wgslsmith_mod_u32(1u, 4294967295u)), 49577u), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true)), vec4<bool>(true, true, true, all(vec2<bool>(false, false))), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1114f + -103f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1599f) * arg_0.x), func_2(abs(vec3<u32>(u_input.a.x, 3066u, 1u)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, arg_0.x, 254f))), arg_1.x | 255i).a, _wgslsmith_f_op_f32(min(1000f, 2261f))) + vec4<f32>(func_2(vec3<u32>(1u, var_1.a.b, 1143u), vec3<f32>(arg_0.x, 736f, var_0.a), ~arg_1.x).a, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(min(-313f, var_0.a))))));
    let var_3 = vec4<bool>(var_1.a.c, any(select(vec3<bool>(select(false, true, var_1.a.e.x), true, false), select(vec3<bool>(var_1.a.e.x, var_1.a.c, var_1.a.c), var_1.a.e.xxx, var_1.a.e.wxz), var_1.a.e.zyx)), var_1.a.e.x, 4294967295u <= _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a.wxy), _wgslsmith_add_vec3_u32(u_input.a.xwz, min(u_input.a.zyx, vec3<u32>(global3.x, u_input.c, 24417u)))));
    var var_4 = Struct_1((var_1.a.a & vec3<i32>(min(2147483647i, var_1.a.a.x), ~arg_1.x, ~var_0.b)) & var_1.a.a, var_1.a.d, var_3.x != select(!select(true, false, var_1.a.c), false, true), firstTrailingBit(u_input.d.x) ^ global3.x, !select(!(!var_1.a.e), select(var_3, var_1.a.e, select(vec4<bool>(true, var_1.a.c, var_3.x, false), vec4<bool>(true, var_3.x, var_1.a.e.x, false), var_3)), (47932u != global3.x) & (var_1.a.d != global3.x)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec4<bool>(true, any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), true)), true, true));
    var var_1 = var_0 && any(select(vec2<bool>(var_0, !var_0), vec2<bool>(true, var_0), true));
    var_1 = !any(vec4<bool>(true, var_0, select(var_0, var_0, var_0) != true, var_0 || var_0));
    global0 = ~firstLeadingBit(global3.x);
    global2 = array<vec2<u32>, 1>();
    let var_2 = 3286i;
    var var_3 = _wgslsmith_div_i32(var_2, 1i) ^ -43303i;
    var var_4 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1449f, 487f, -674f, 484f) * vec4<f32>(172f, 1652f, 260f, -1203f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1308f, -1474f, -285f, 423f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1502f, 1227f, 170f) + vec4<f32>(1679f, -2091f, -1616f, -120f)))), _wgslsmith_mod_vec2_i32(vec2<i32>(4358i, 5369i), _wgslsmith_add_vec2_i32(max(vec2<i32>(var_2, var_2) >> (u_input.a.zy % vec2<u32>(32u)), vec2<i32>(var_2, -41308i) ^ vec2<i32>(-12614i, 2147483647i)), -(vec2<i32>(var_2, var_2) & vec2<i32>(48354i, -64919i)))));
    let var_5 = all(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, 1221f, _wgslsmith_clamp_vec2_u32(max(~vec2<u32>(u_input.a.x, global3.x) & ~u_input.a.zz, vec2<u32>(4294967295u, 1u)), vec2<u32>(~var_4.d << (abs(u_input.c) % 32u), ~1u), min(abs(vec2<u32>(0u, var_4.b)), ~vec2<u32>(global3.x, 3269u) & vec2<u32>(var_4.d, 2228u))), 0u, -283f);
}

