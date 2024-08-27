struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32 = 0u;

var<private> global2: Struct_1 = Struct_1(true, vec4<i32>(10174i, -19433i, 51862i, -26890i));

var<private> global3: array<bool, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    global3 = array<bool, 10>();
    var var_0 = 2578i;
    return ~(~(~_wgslsmith_sub_u32(~12476u, 1u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = ~_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 54019u, ~1u, firstLeadingBit(87812u)), vec4<u32>(0u, ~(~8958u), ~firstTrailingBit(1u), ~7222u));
    let var_1 = reverseBits(vec4<i32>(global2.b.x, 2147483647i, -45180i ^ ((global2.b.x >> (var_0.x % 32u)) >> (_wgslsmith_clamp_u32(4294967295u, 57533u, 19842u) % 32u)), max(~_wgslsmith_sub_i32(22057i, u_input.b.x), ~(-22323i))));
    var var_2 = Struct_1((1i ^ global2.b.x) != countOneBits(global2.b.x), _wgslsmith_sub_vec4_i32(var_1, vec4<i32>(1i, 0i, var_1.x, -1182i)));
    var var_3 = 2873u;
    let var_4 = select(select(select(!select(vec4<bool>(false, global2.a, true, true), vec4<bool>(var_2.a, true, var_2.a, true), vec4<bool>(var_2.a, true, var_2.a, var_2.a)), select(select(vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(71329u, 10u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(var_0.x, 10u)], true, false), global2.a), vec4<bool>(true, true, true, true), global2.a & true), false), vec4<bool>(true, !(!global3[_wgslsmith_index_u32(var_0.x, 10u)]), !var_2.a, !global2.a), select(true, true, all(vec4<bool>(global3[_wgslsmith_index_u32(var_0.x, 10u)], true, global3[_wgslsmith_index_u32(var_0.x, 10u)], var_2.a))) & true), vec4<bool>(!(!global2.a), global2.a, true, var_2.a), true);
    return var_4.yyw;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> vec2<bool> {
    let var_0 = vec3<bool>(!all(!vec4<bool>(arg_1.a, global2.a, true, arg_1.a)) == (_wgslsmith_f_op_f32(_wgslsmith_div_f32(920f, arg_3) - _wgslsmith_f_op_f32(-1253f + 479f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - arg_3)), (~46524u > _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(23939u, 4294967295u))) & true, (true & !(!arg_0.a)) || any(select(select(vec2<bool>(true, arg_1.a), vec2<bool>(arg_0.a, arg_1.a), arg_0.a), !vec2<bool>(global2.a, false), !arg_0.a)));
    var var_1 = _wgslsmith_sub_u32(40251u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(10055u, 0u, 0u), vec3<u32>(92052u, 8763u, 14208u)), func_2(), _wgslsmith_mod_u32(4294967295u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 85394u, 1u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_mult_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(20911u, 1u, 1u, 7265u), vec4<u32>(64597u, 4294967295u, 0u, 47544u)), ~98074u, arg_3 <= -485f), 1u)));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(trunc(arg_3));
    var_2 = select(!select(select(vec3<bool>(false, var_2.x, true), var_0, true), vec3<bool>(true, true, true), vec3<bool>(!global2.a, true, var_2.x)), select(func_3(), vec3<bool>(all(var_0), false, arg_3 != _wgslsmith_f_op_f32(122f * var_3)), any(!(!vec2<bool>(false, global2.a)))), var_0);
    return select(select(var_0.xy, func_3().zz, arg_1.b.x <= -2147483647i), select(!vec2<bool>(all(vec2<bool>(false, arg_1.a)), global2.a), vec2<bool>(arg_1.a, true), false), false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(!(!global2.a) && (global2.a != any(func_1(Struct_1(global3[_wgslsmith_index_u32(2445u, 10u)], vec4<i32>(global2.b.x, global2.b.x, -8234i, u_input.a)), Struct_1(global2.a, vec4<i32>(-2147483647i, global2.b.x, global2.b.x, u_input.b.x)), u_input.b.xzx, -310f))), u_input.b);
    var var_0 = Struct_1(global2.a, global2.b);
    var var_1 = Struct_1(select(any(vec4<bool>(false | var_0.a, select(global2.a, global2.a, global3[_wgslsmith_index_u32(4294967295u, 10u)]), var_0.a, true)), any(func_3().yx) & true, !global2.a), vec4<i32>(var_0.b.x, -11362i, 2147483647i, min(2147483647i, var_0.b.x)));
    global3 = array<bool, 10>();
    global3 = array<bool, 10>();
    let var_2 = vec4<u32>(~firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 44518u), vec4<u32>(0u, 34962u, 1u, 1u))), 17606u, _wgslsmith_add_u32(0u, ~23884u), ~(~0u));
    var var_3 = _wgslsmith_add_u32(~var_2.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(var_2.wyy >> (var_2.www % vec3<u32>(32u)), ~vec3<u32>(var_2.x, var_2.x, ~4294967295u)), -var_0.b.zw);
}

