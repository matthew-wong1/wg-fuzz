struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: vec3<i32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec4<i32> {
    let var_0 = abs(-vec2<i32>(min(-16234i, min(29157i, global0.x)), _wgslsmith_mod_i32(-global0.x, global2.x)));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 13u)];
    global2 = vec3<i32>(global0.x, global2.x, 18561i) ^ ~(~(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global0.x, 20323i), vec3<i32>(-1i, global2.x, var_0.x)) | ~vec3<i32>(1i, global2.x, var_0.x)));
    var var_2 = Struct_1(~select(vec3<u32>(60462u, _wgslsmith_mult_u32(62816u, u_input.b.x), ~10440u), vec3<u32>(var_1.a.x, 1u, 0u), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1186f), select(vec2<bool>(var_1.c.x, var_1.c.x), !var_1.c, select(select(var_1.c, !var_1.c, var_1.c), select(select(vec2<bool>(true, true), var_1.c, vec2<bool>(false, var_1.c.x)), var_1.c, var_1.c), select(vec2<bool>(false, false), select(var_1.c, vec2<bool>(var_1.c.x, false), vec2<bool>(var_1.c.x, true)), !var_1.c))));
    global2 = select(vec3<i32>(reverseBits(2147483647i), -17970i, max(~(~(-2147483647i)), select(_wgslsmith_mod_i32(global0.x, var_0.x), 1i, var_1.c.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(~(-2147483647i)), -(0i & var_0.x), select(-1i, global0.x | global0.x, u_input.b.x <= 23129u)), -(~vec3<i32>(global2.x, 1i, global2.x)), firstTrailingBit(countOneBits(vec3<i32>(global0.x, 24677i, 0i))) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(63214u, 3570u, var_1.a.x), var_2.a) % vec3<u32>(32u))), !select(vec3<bool>(var_2.c.x, true, true), vec3<bool>(false, true, false || var_2.c.x), vec3<bool>(false, var_2.c.x, !var_2.c.x)));
    return ~max(vec4<i32>(-27685i, -8787i, abs(-1i), firstLeadingBit(var_0.x)), vec4<i32>(firstLeadingBit(var_0.x), global2.x & var_0.x, ~(-27906i), global2.x)) & ~(~select(min(vec4<i32>(global2.x, -53746i, 988i, var_0.x), vec4<i32>(global0.x, var_0.x, 46962i, 37584i)), abs(vec4<i32>(global0.x, 28628i, -1i, 2147483647i)), !var_1.c.x));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = select(_wgslsmith_add_vec4_i32(vec4<i32>(13972i, global2.x, _wgslsmith_sub_i32(0i << (u_input.b.x % 32u), _wgslsmith_clamp_i32(1i, global2.x, -1i)), ~(~22387i)), func_3(vec2<u32>(~u_input.a, 0u), _wgslsmith_div_vec2_f32(arg_0.yy, _wgslsmith_f_op_vec2_f32(select(arg_0.yx, vec2<f32>(arg_0.x, 102f), true))))), -abs(~vec4<i32>(33606i, 5075i, 2147483647i, global0.x)), true);
    var var_1 = -countOneBits(abs(_wgslsmith_mod_vec4_i32(~var_0, var_0)));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, ~u_input.b, u_input.b) ^ select(_wgslsmith_mult_vec3_u32(u_input.b, u_input.b), ~u_input.b, true), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 4294967295u) & ~1909u, u_input.a, ~28429u ^ u_input.a)), _wgslsmith_f_op_f32(abs(-1130f)), !vec2<bool>(any(vec3<bool>(true, true, true)), true));
    var_1 = vec4<i32>(select(firstLeadingBit(global2.x), ~1i, true), -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_1.zzz, ~(~var_0.zwx)), firstLeadingBit(min(vec3<i32>(-19995i, global0.x, 0i), vec3<i32>(-3112i, 1i, global2.x)) ^ vec3<i32>(2147483647i, -2147483647i, -1i))), global0.x << ((~(~34241u) & var_2.a.x) % 32u));
    let var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 13u)];
    return global1[_wgslsmith_index_u32(~(u_input.b.x << (~13277u % 32u)) | countOneBits(reverseBits(var_3.a.x)), 13u)];
}

fn func_1() -> Struct_1 {
    var var_0 = select(!vec2<bool>(true, (global0.x != -2440i) || (u_input.b.x == u_input.b.x)), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, global0.x != global0.x, true))));
    let var_1 = func_2(vec4<f32>(803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-876f * _wgslsmith_f_op_f32(max(-1155f, 1463f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(301f + 1021f) - -1000f), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -746f) + -833f)));
    let var_2 = select(vec3<bool>(abs(~1u) > abs(~var_1.a.x), var_0.x, var_0.x), select(select(select(!vec3<bool>(var_0.x, var_0.x, var_1.c.x), !vec3<bool>(var_0.x, var_1.c.x, var_0.x), false), select(select(vec3<bool>(true, true, false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)), !vec3<bool>(false, true, var_1.c.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_1.c.x, var_1.c.x, var_0.x), true)), false), vec3<bool>(false, true, !all(var_1.c)), vec3<bool>(all(!vec4<bool>(var_0.x, true, false, true)), var_0.x, var_1.c.x)), !select(!vec3<bool>(var_1.c.x, true, false), select(!vec3<bool>(var_0.x, false, true), vec3<bool>(true, false, var_0.x), true), select(!vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, false, var_0.x), true)));
    var var_3 = 1000f;
    var_3 = _wgslsmith_f_op_f32(-var_1.b);
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(317f, 1712f, var_1.b, 1476f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b, 1891f, var_1.b, 1414f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    let var_0 = func_1();
    let var_1 = abs(~(select(~vec3<u32>(0u, u_input.b.x, var_0.a.x), vec3<u32>(4294967295u, var_0.a.x, 4294967295u), !vec3<bool>(var_0.c.x, true, true)) << ((var_0.a & max(vec3<u32>(var_0.a.x, var_0.a.x, u_input.a), var_0.a)) % vec3<u32>(32u))));
    var var_2 = select(false, false, true);
    var var_3 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-global0.xx, _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-23779i), global0.x << (min(1u, u_input.b.x) % 32u)), countOneBits(vec2<i32>(-2147483647i, 23713i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1246f, var_0.b, 853f)) - vec3<f32>(var_0.b, -455f, var_0.b)) + vec3<f32>(_wgslsmith_f_op_f32(var_0.b * var_0.b), func_2(vec4<f32>(var_0.b, -677f, -144f, var_0.b)).b, var_0.b)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, -684f, 192f))))), ~(-select(vec3<i32>(global0.x, global0.x, global2.x) & vec3<i32>(2147483647i, -44767i, -22684i), select(vec3<i32>(global0.x, -13342i, -56939i), vec3<i32>(-40483i, global0.x, -39565i), var_0.c.x), true)), var_0.a.x);
}

