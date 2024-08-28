struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(true, true, true), vec3<u32>(37611u, 4294967295u, 35570u), false, vec4<bool>(false, true, true, true));

var<private> global2: vec4<i32> = vec4<i32>(1135i, -33311i, 0i, i32(-2147483648));

var<private> global3: Struct_1 = Struct_1(419f, vec4<u32>(4294967295u, 95178u, 23705u, 19801u), vec3<f32>(1866f, -1000f, -1487f), vec3<u32>(4294967295u, 1u, 24789u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global3 = arg_0;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(global3.c.x)), global3.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, global3.a, 2088f)) + _wgslsmith_f_op_vec3_f32(round(global3.c))), vec3<f32>(global3.c.x, 350f, arg_0.c.x))))), vec3<u32>(~reverseBits(global1.b.x) | ~firstLeadingBit(0u), ~global1.b.x, 38702u));
    global2 = -(~_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(38825i, global2.x, 1i, -1i), vec4<i32>(u_input.a, u_input.a, 1i, -2147483647i), global1.d), vec4<i32>(firstTrailingBit(-2147483647i), 2147483647i, max(13808i, global2.x), -global2.x), _wgslsmith_add_vec4_i32(~vec4<i32>(46243i, -32390i, u_input.a, global2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, -37859i, u_input.a, 28113i), vec4<i32>(25164i, u_input.a, 0i, -2147483647i)))));
    var var_1 = Struct_2(global1.d.xzw, vec3<u32>(4294967295u, var_0.d.x, var_0.b.x), true, vec4<bool>(all(global1.d), global1.d.x, select(false, all(!vec3<bool>(global1.a.x, false, true)), false), global1.a.x));
    global1 = Struct_2(select(select(global1.d.yyw, !(!vec3<bool>(true, global1.c, true)), false), global1.a, select(global1.a, var_1.a, !vec3<bool>(global1.c, true, true))), vec3<u32>(_wgslsmith_div_u32(~max(var_0.b.x, var_0.d.x), firstLeadingBit(1u)), ~arg_0.d.x, firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, var_0.d.x), 1u))), true, !(!select(vec4<bool>(false, false, global1.a.x, var_1.c), vec4<bool>(true, global1.a.x, global1.d.x, true), vec4<bool>(false, false, global1.d.x, true))));
    return ~(-3127i);
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_1(-320f, ~(~(vec4<u32>(51771u, global3.b.x, 34267u, 4294967295u) << (vec4<u32>(4294967295u, 1u, 1u, global3.d.x) % vec4<u32>(32u)))) | (_wgslsmith_add_vec4_u32(~vec4<u32>(60265u, arg_0.b.x, 4791u, global1.b.x), ~global3.b) ^ vec4<u32>(global3.b.x, arg_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 4294967295u, arg_0.b.x), vec3<u32>(44488u, global3.b.x, global1.b.x)), global3.b.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global3.c))), arg_0.b);
    var var_1 = func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(0u), firstTrailingBit(global1.b.x)), 16u)]);
    let var_2 = vec4<u32>(4294967295u, 0u ^ global1.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, abs(min(var_0.d.x, var_0.d.x))), var_0.d.xy), var_0.d.x | ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.b.x, 20638u), _wgslsmith_dot_vec2_u32(vec2<u32>(36824u, global1.b.x), global1.b.yx)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)) - global3.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) * _wgslsmith_f_op_f32(1000f + -177f)) - -538f)), _wgslsmith_clamp_vec4_u32(select(_wgslsmith_mult_vec4_u32(global3.b, _wgslsmith_mod_vec4_u32(global3.b, var_2)), ~vec4<u32>(global3.d.x, var_0.b.x, 4294967295u, var_0.b.x), global1.d), vec4<u32>(1u >> (global1.b.x % 32u), _wgslsmith_dot_vec4_u32(countOneBits(var_2), vec4<u32>(18408u, var_2.x, 88857u, 4294967295u) & vec4<u32>(arg_0.b.x, 1u, 39750u, arg_0.b.x)), arg_0.b.x, 0u), vec4<u32>(_wgslsmith_dot_vec4_u32(~var_0.b, vec4<u32>(global1.b.x, global3.d.x, 4294967295u, 25188u)), 1u, _wgslsmith_clamp_u32(~var_0.b.x, 0u | global3.b.x, var_2.x), 4294967295u)), var_0.c, firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, ~global1.b.x, _wgslsmith_dot_vec2_u32(global3.d.yx, var_0.b.zx)), ~countOneBits(global1.b))));
    var var_4 = select(select(select(abs(global2.zxw), min(global2.zwy, vec3<i32>(global2.x, global2.x, 9340i)), any(vec2<bool>(false, false))) & (vec3<i32>(-1i) * -global2.wxy), -(~global2.zxy), select(!(!vec3<bool>(arg_0.a.x, false, arg_0.c)), select(select(vec3<bool>(global1.a.x, true, true), vec3<bool>(true, false, false), arg_0.c), !arg_0.a, global1.a), !all(global1.a.yy))), global2.yxw, true);
    return 21773u;
}

fn func_1() -> i32 {
    global3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(340f, -1000f), 1809f)), vec4<u32>(1u & _wgslsmith_clamp_u32(abs(0u), ~global1.b.x, _wgslsmith_div_u32(global1.b.x, 65917u)), 52455u >> (~global1.b.x % 32u), _wgslsmith_dot_vec2_u32(~firstTrailingBit(global1.b.xy), vec2<u32>(global3.d.x, func_2(Struct_2(vec3<bool>(true, global1.c, true), global3.b.zyz, global1.d.x, global1.d)))), 38141u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-631f, 352f, 1052f)))) * vec3<f32>(1050f, 1068f, 582f)), global1.b);
    let var_0 = max(~(select(global2.ywy, vec3<i32>(-2147483647i, 15468i, 12127i), !global1.d.x) & -abs(global2.wwy)), global2.wxz);
    var var_1 = global1.d;
    var var_2 = var_0.x;
    global2 = ~vec4<i32>(~_wgslsmith_clamp_i32(var_0.x, -global2.x, u_input.a), u_input.a >> (global1.b.x % 32u), _wgslsmith_mod_i32(~u_input.a | 2147483647i, global2.x), firstTrailingBit(-var_0.x));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.c.x)), _wgslsmith_f_op_f32(-205f + -2027f)) - -1689f), 1076f, global1.c)) + global3.a);
    let var_2 = all(select(global1.d.yz, global1.a.yz, true));
    let var_3 = global2.x;
    var var_4 = func_1();
    let var_5 = ~global3.b;
    var_4 = _wgslsmith_mult_i32(-18316i, _wgslsmith_sub_i32(-1i, -u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~(~global1.b.x), 7309u, 52662u), firstTrailingBit(_wgslsmith_mult_u32(firstTrailingBit(global1.b.x), ~(~global1.b.x))));
}

