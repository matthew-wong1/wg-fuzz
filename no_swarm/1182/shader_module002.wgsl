struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-33941i, -6762i, 0i, 0i), vec4<i32>(0i, 1i, 12845i, -63602i), vec4<i32>(-10759i, 1i, 0i, 0i), vec4<i32>(-31423i, 0i, -24610i, -45951i), vec4<i32>(1i, 1i, -6487i, -13922i), vec4<i32>(32801i, -42353i, 1i, 1i), vec4<i32>(0i, i32(-2147483648), -10811i, 1i), vec4<i32>(-1105i, 1i, 2147483647i, i32(-2147483648)), vec4<i32>(4548i, 2147483647i, -38713i, i32(-2147483648)), vec4<i32>(3034i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(7904i, -40020i, 34614i, -4111i), vec4<i32>(24356i, 2147483647i, 2147483647i, -50936i), vec4<i32>(27921i, 36863i, -1i, 2147483647i), vec4<i32>(28819i, 1i, -1991i, -1i), vec4<i32>(2147483647i, -7382i, -29185i, 0i));

var<private> global1: array<f32, 10>;

var<private> global2: u32;

var<private> global3: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global1 = array<f32, 10>();
    global1 = array<f32, 10>();
    var var_0 = Struct_1(!(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false))));
    var var_1 = Struct_1(select(select(var_0.a, !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), true), select(select(select(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, true, false, var_0.a.x), false), var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, true, true)), var_0.a, (var_0.a.x && var_0.a.x) | all(vec3<bool>(false, var_0.a.x, var_0.a.x))), true));
    var var_2 = 0u;
    return true;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.e;
    global2 = u_input.b;
    let var_1 = Struct_1(vec4<bool>(true, !(any(vec4<bool>(true, false, true, false)) || all(vec2<bool>(false, true))), true, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), func_3()))));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(513f)), global1[_wgslsmith_index_u32(max(1u, ~5021u), 10u)], global1[_wgslsmith_index_u32(u_input.d, 10u)]));
}

fn func_1() -> StorageBuffer {
    global1 = array<f32, 10>();
    var var_0 = Struct_1(vec4<bool>(true, any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), any(vec2<bool>(false, any(vec3<bool>(true, true, true))))));
    let var_1 = Struct_1(var_0.a);
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(19136u, 10u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(40384u, 10u)]))))))))));
    var_2 = func_2();
    return StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1344f)), _wgslsmith_div_f32(var_2.a.x, var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-641f, var_2.a.x, 796f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(272f, global1[_wgslsmith_index_u32(32708u, 10u)], global1[_wgslsmith_index_u32(24545u, 10u)])), _wgslsmith_f_op_vec3_f32(-var_2.a)))), ~(-_wgslsmith_mod_i32(u_input.e, u_input.e) ^ ~(~27279i)), 4294967295u, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 1311u, 1u) << (vec4<u32>(41768u, u_input.d, 44219u, u_input.a.x) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.d, 37996u, u_input.d), vec4<u32>(u_input.a.x, 21193u, u_input.a.x, u_input.d))), _wgslsmith_add_u32(~u_input.d, countOneBits(u_input.d >> (0u % 32u))), u_input.d, u_input.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1490f * 862f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 1u, 4294967295u), vec4<u32>(0u, 10269u, 47990u, u_input.d)), 10u)], _wgslsmith_f_op_f32(-var_2.a.x)) - _wgslsmith_f_op_vec3_f32(-var_2.a)), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = true;
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(~(~vec3<i32>(0i, u_input.e, -2147483647i)), vec3<i32>(u_input.c, u_input.c, u_input.e)), vec3<i32>(2147483647i, max(u_input.e, abs(~u_input.c)), _wgslsmith_clamp_i32(countOneBits(u_input.e & -2147483647i), u_input.c, ~0i)));
    let var_1 = ~(~(vec2<u32>(u_input.a.x, 4294967295u) | u_input.a));
    global2 = _wgslsmith_clamp_u32(38030u, 4294967295u, _wgslsmith_sub_u32(~(var_1.x >> (var_1.x % 32u)) ^ ~(var_1.x | var_1.x), var_1.x & 3031u));
    global3 = !(57252u >= u_input.d);
    let var_2 = vec4<f32>(1455f, global1[_wgslsmith_index_u32(u_input.d, 10u)], 1000f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~22552u, 10u)]));
    let var_3 = var_0.xy;
    global2 = reverseBits(38534u);
    let x = u_input.a;
    s_output = func_1();
}

