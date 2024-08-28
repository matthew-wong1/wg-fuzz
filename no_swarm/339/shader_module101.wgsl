struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(51041u, 4294967295u, 0u);

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = min(u_input.a.xz, ~(-u_input.a.zz));
    let var_1 = global0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b, global2.b, 695f), vec3<f32>(-359f, global2.a, global2.a), vec3<bool>(global3.x, false, arg_0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1169f, 1000f, global2.a)))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global2.b, 1404f))));
    var var_3 = vec3<u32>(~(~37581u), countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(14711u, 1u, 1u), firstLeadingBit(vec3<u32>(4294967295u, 0u, global2.c.x)))), 1u >> (~(~global0.x) % 32u)) | max(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global2.c.x, 18027u, global2.c.x), ~(~vec3<u32>(1u, global0.x, 42796u)), ~(~vec3<u32>(1u, 4294967295u, 4294967295u))), firstTrailingBit(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(12704u, 4294967295u, global2.c.x), vec3<u32>(global2.c.x, 1u, 4294967295u), vec3<u32>(global0.x, 54207u, global0.x)), max(vec3<u32>(1u, 4294967295u, global2.c.x), vec3<u32>(global2.c.x, global0.x, 54659u)), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1376f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + 188f) + -1154f) + _wgslsmith_f_op_f32(round(-274f))), var_2.x)));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = select(!select(select(select(vec4<bool>(false, false, global3.x, true), vec4<bool>(global3.x, true, global3.x, global3.x), global3.x), select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, true)), true), vec4<bool>(true, !global3.x, all(vec4<bool>(true, false, true, false)), true), select(!global3.x, func_3(vec2<bool>(true, false)), false & global3.x)), select(select(!vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(true, true, any(vec2<bool>(global3.x, false)), func_3(vec2<bool>(true, false))), global3.x), vec4<bool>(global3.x, global3.x, func_3(vec2<bool>(global3.x, global3.x)), global3.x), _wgslsmith_mod_i32(global2.d, global2.d) == global2.e), any(vec4<bool>(!func_3(vec2<bool>(global3.x, global3.x)), global3.x, true && global3.x, ~global0.x > 12696u)));
    var var_1 = global3.x;
    global2 = arg_0;
    let var_2 = arg_0;
    var_1 = select(false, !(!var_0.x), true);
    return var_0.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    global1 = all(vec2<bool>(true, !(_wgslsmith_add_u32(arg_2.x, 18550u) != _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.x, 1u, 19716u), vec4<u32>(1u, 117265u, global2.c.x, global2.c.x)))));
    var var_0 = _wgslsmith_div_i32(-(~(reverseBits(2147483647i) << (global0.x % 32u))), ~_wgslsmith_mult_i32(15038i, _wgslsmith_dot_vec3_i32(u_input.a.wyy << (vec3<u32>(global2.c.x, 9730u, 0u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-38988i, global2.e, 0i)))));
    var_0 = arg_1;
    let var_1 = u_input.a >> (abs(countOneBits(~vec4<u32>(102177u, arg_2.x, 73058u, arg_2.x))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_div_f32(-1040f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(-437f + _wgslsmith_f_op_f32(global2.a - -1393f))))));
    return Struct_1(334f, _wgslsmith_f_op_f32(step(537f, _wgslsmith_f_op_f32(f32(-1f) * -1708f))), _wgslsmith_clamp_vec2_u32(abs(global0.xy), global0.xx, ~vec2<u32>(4294967295u, countOneBits(global0.x))), -(~1i), ~u_input.a.x);
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = global3.x;
    return func_4(_wgslsmith_add_vec2_i32(-(~vec2<i32>(12340i, arg_1)), ~u_input.a.zy) | -firstLeadingBit(vec2<i32>(1i, arg_1)), _wgslsmith_add_i32(0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1, -2147483647i, 3286i), u_input.a.xyz), min(arg_1, u_input.a.x) | 0i)), vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 1u, global0.x, 0u) ^ vec4<u32>(global0.x, global0.x, 0u, global0.x)), vec4<u32>(38013u, global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 28503u, 56825u), vec3<u32>(14596u, 68543u, 69807u)), max(17595u, global0.x))), ~(global0.x << (abs(30520u) % 32u)), 35081u, global0.x), !all(vec3<bool>(all(vec4<bool>(true, global3.x, global3.x, global3.x)), func_2(Struct_1(686f, 1025f, vec2<u32>(global2.c.x, 4294967295u), 2147483647i, u_input.a.x), global2.a, Struct_1(global2.b, global2.a, global0.yz, arg_1, arg_1)), global2.a >= global2.b)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    return !func_3(!vec2<bool>(func_2(Struct_1(arg_1.a, 441f, arg_1.c, 0i, global2.d), arg_0.b, arg_1), arg_0.d < arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2344f)))) - global2.a), -340f, _wgslsmith_sub_vec2_u32(global2.c, ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(global0.zz, vec2<u32>(global0.x, global2.c.x)), global2.c)), _wgslsmith_mult_i32(global2.d, global2.e), -1i);
    global3 = vec2<bool>(global3.x, global3.x & (all(vec3<bool>(global3.x, global3.x, global3.x)) & false));
    let var_0 = !(!select(select(vec4<bool>(true, false, true, true), !vec4<bool>(global3.x, false, global3.x, global3.x), select(vec4<bool>(global3.x, false, true, true), vec4<bool>(true, false, false, true), global3.x)), vec4<bool>(true, global3.x, global3.x, all(vec4<bool>(global3.x, global3.x, global3.x, global3.x))), func_5(func_1(global2.e, 1i), func_4(u_input.b, u_input.a.x, vec4<u32>(global2.c.x, 71639u, 18529u, global0.x), global3.x), 2147483647i)));
    var var_1 = firstTrailingBit(~(-(min(vec4<i32>(2147483647i, -2147483647i, u_input.a.x, 5478i), vec4<i32>(global2.e, -5863i, global2.e, -2147483647i)) << (~vec4<u32>(global2.c.x, global2.c.x, global2.c.x, 110445u) % vec4<u32>(32u)))));
    var var_2 = u_input.a.x;
    let var_3 = Struct_1(func_1(u_input.a.x, firstLeadingBit(var_1.x) & ~59013i).b, global2.a, select(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0.x, 0u), ~vec2<u32>(global0.x, 1u)), ~(global0.yx ^ global0.zx), select(select(!var_0.wz, select(vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x), var_0.zw), true), select(!var_0.yz, var_0.yz, func_5(Struct_1(global2.b, global2.b, global0.xx, 1i, u_input.a.x), Struct_1(global2.b, global2.b, vec2<u32>(4294967295u, 0u), var_1.x, global2.e), global2.d)), select(select(var_0.zy, vec2<bool>(true, var_0.x), global3.x), select(vec2<bool>(true, var_0.x), vec2<bool>(global3.x, var_0.x), var_0.wx), select(var_0.zz, vec2<bool>(var_0.x, global3.x), vec2<bool>(false, var_0.x))))), _wgslsmith_clamp_i32(abs(var_1.x) << (global0.x % 32u), global2.e, _wgslsmith_add_i32(~8654i, abs(-2147483647i))), _wgslsmith_dot_vec4_i32((firstTrailingBit(u_input.a) ^ u_input.a) ^ vec4<i32>(1i, _wgslsmith_mult_i32(var_1.x, var_1.x), func_4(vec2<i32>(global2.d, -2147483647i), 1679i, vec4<u32>(69943u, global0.x, 1u, global0.x), global3.x).e, abs(0i)), min(abs(vec4<i32>(28301i, 1i, 0i, u_input.b.x)) ^ u_input.a, vec4<i32>(-2147483647i, min(-46164i, var_1.x), _wgslsmith_add_i32(u_input.a.x, 0i), u_input.a.x))));
    var var_4 = ~(-15674i);
    var var_5 = global2.e;
    var var_6 = var_1.xw;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c);
}

