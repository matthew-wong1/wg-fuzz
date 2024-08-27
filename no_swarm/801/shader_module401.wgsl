struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<vec3<bool>, 5>;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(i32(-2147483648)), Struct_1(-9685i), Struct_1(-71226i), Struct_1(46972i), Struct_1(1i), Struct_1(1i), Struct_1(32667i), Struct_1(1i), Struct_1(2147483647i), Struct_1(29408i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(2147483647i), Struct_1(-31709i), Struct_1(-45991i), Struct_1(30190i), Struct_1(-1i), Struct_1(2147483647i), Struct_1(1i), Struct_1(43423i), Struct_1(i32(-2147483648)), Struct_1(-24526i), Struct_1(1i), Struct_1(2147483647i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = arg_0.a;
    let var_1 = ~((~(~15210u) ^ _wgslsmith_clamp_u32(~16391u, 4294967295u, 1u)) & ~(~1u));
    global1 = array<vec3<bool>, 5>();
    let var_2 = Struct_1(reverseBits(_wgslsmith_add_i32(abs(_wgslsmith_add_i32(arg_0.b.a, arg_0.b.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.a, -2147483647i) >> (vec2<u32>(4294967295u, var_1) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(u_input.a, -2147483647i))))));
    global0 = !(!select(select(select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, false), true), select(global1[_wgslsmith_index_u32(52122u, 5u)], vec3<bool>(global0.x, global0.x, false), global0.x), global0.x), vec3<bool>(false || global0.x, true, true), !all(vec4<bool>(global0.x, global0.x, global0.x, false))));
    return ~45383u;
}

fn func_2() -> u32 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(~(~(~23836u)), ~_wgslsmith_clamp_u32(func_3(Struct_3(169f, global2[_wgslsmith_index_u32(4294967295u, 24u)])), ~0u, 1u))), 5u)];
    global0 = !vec3<bool>(true, false, !global0.x);
    let var_0 = global2[_wgslsmith_index_u32(abs(59221u), 24u)];
    global1 = array<vec3<bool>, 5>();
    var var_1 = min(14219i, _wgslsmith_add_i32(countOneBits(u_input.a) << (func_3(Struct_3(1438f, Struct_1(0i))) % 32u), abs(firstLeadingBit(var_0.a & u_input.a))));
    return 4294967295u >> (~func_3(Struct_3(_wgslsmith_f_op_f32(step(494f, 433f)), Struct_1(-2147483647i))) % 32u);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = ~((select(vec3<u32>(61746u, 64267u, 39809u), min(vec3<u32>(4294967295u, 20886u, 4294967295u), vec3<u32>(62789u, 70156u, 4239u)), !vec3<bool>(global0.x, global0.x, global0.x)) ^ firstTrailingBit(vec3<u32>(4294967295u, 77921u, 23338u))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_clamp_u32(var_0.x, var_0.x, max(~4294967295u, _wgslsmith_sub_u32(countOneBits(min(4294967295u, 17990u)), func_2())));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-1f), Struct_1((21399i ^ _wgslsmith_sub_i32(u_input.a, u_input.b)) | u_input.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(130f, var_2.a), vec2<f32>(var_2.a, var_2.a))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(170f, var_2.a) - vec2<f32>(var_2.a, var_2.a))), vec2<f32>(382f, _wgslsmith_f_op_f32(var_2.a * 651f))))));
    let var_4 = abs(~(~(min(vec2<u32>(var_0.x, 8185u), vec2<u32>(var_0.x, 17237u)) >> (firstLeadingBit(vec2<u32>(var_0.x, 8726u)) % vec2<u32>(32u)))));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(1u, ~(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(2062u, 1u), ~4294967295u, firstTrailingBit(14791u))));
    var var_1 = Struct_2(func_1(vec4<i32>(~u_input.a >> ((var_0.x & 4294967295u) % 32u), ~(-12340i), u_input.b, ~(34273i << (var_0.x % 32u)))), vec3<f32>(-412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(450f)) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(min(112f, -549f))), _wgslsmith_mod_u32(25038u, 1u));
    var var_2 = global0.zz;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), Struct_1(-37446i));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.a)));
    let var_5 = Struct_1(reverseBits(u_input.b));
    global2 = array<Struct_1, 24>();
    let var_6 = _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(~reverseBits(var_1.c), reverseBits(var_0.x), 0u)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.x, var_0.x, 4294967295u), ~vec3<u32>(var_1.c, 0u, 67377u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(28252u, var_1.c, var_0.x), reverseBits(vec3<u32>(64583u, 4294967295u, var_1.c))), vec3<u32>(var_1.c, 100270u, ~(var_1.c & 55607u))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(var_0.x, ~(~var_1.c)), var_6.xy, var_1.b.xy, ~select(~var_6.x >> (reverseBits(var_0.x) % 32u), 4294967295u, any(!vec4<bool>(true, true, true, global0.x))));
}

