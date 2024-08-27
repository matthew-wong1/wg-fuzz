struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(38793i, 1i, 35146i, -47036i);

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global2: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global3: array<f32, 9> = array<f32, 9>(-1267f, -162f, 1114f, -480f, 606f, 462f, 503f, -1653f, -253f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    return vec4<i32>(-21411i, ~74303i, 44869i, _wgslsmith_dot_vec3_i32(countOneBits(global0.zzy) & _wgslsmith_clamp_vec3_i32(vec3<i32>(14195i, u_input.c.x, -1i), u_input.c, firstTrailingBit(u_input.c)), global0.wzy));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = vec2<f32>(-387f, global3[_wgslsmith_index_u32(u_input.a.x, 9u)]);
    var var_1 = 1355f;
    let var_2 = !global2[_wgslsmith_index_u32(arg_3.x, 4u)];
    global0 = max(~(-(~(-vec4<i32>(global0.x, arg_2.x, 33564i, u_input.c.x)))), min(func_3(), vec4<i32>(arg_2.x, global0.x, -2147483647i, countOneBits(~u_input.c.x))));
    var var_3 = true;
    return vec4<bool>(arg_1.a, arg_0.a, !((arg_0.a & false) | select(-1i <= global0.x, all(vec3<bool>(true, true, false)), all(vec2<bool>(arg_1.a, true)))), true);
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = -min(~select(vec4<i32>(-2147483647i, 30226i, 15682i, global0.x), vec4<i32>(-18479i, global0.x, global0.x, 1i), false) << (vec4<u32>(global1.x, _wgslsmith_add_u32(0u, global1.x), 53171u, global1.x) % vec4<u32>(32u)), firstTrailingBit(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, global0.x, global0.x, -21578i), vec4<i32>(global0.x, u_input.c.x, 36437i, global0.x))));
    global2 = array<vec2<bool>, 4>();
    global2 = array<vec2<bool>, 4>();
    let var_1 = !(false | all(!func_2(Struct_1(false), Struct_1(true), u_input.c, vec4<u32>(u_input.a.x, u_input.a.x, global1.x, global1.x))));
    global3 = array<f32, 9>();
    return select(all(!vec2<bool>(var_1, false)), var_1, var_0.x == 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(all(vec3<bool>(func_1(-2910f), false, true)));
    let var_1 = _wgslsmith_dot_vec3_i32(~u_input.c, vec3<i32>(~(-27837i) << (_wgslsmith_mod_u32(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, 4294967295u, global1.x), vec4<u32>(0u, global1.x, 4294967295u, 8689u))) % 32u), u_input.c.x, -1i));
    let var_2 = all(vec4<bool>(var_0.a, true, false, any(vec3<bool>(48564i >= global0.x, any(vec4<bool>(true, var_0.a, false, var_0.a)), true))));
    let var_3 = ~46383u;
    global0 = select(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(~var_1, ~u_input.c.x) ^ _wgslsmith_mod_i32(func_3().x, _wgslsmith_mod_i32(0i, 2147483647i)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -24499i, -1i, 0i), vec4<i32>(global0.x, 0i, u_input.c.x, var_1)) | func_3(), vec4<i32>(-4227i, var_1 & -2147483647i, _wgslsmith_clamp_i32(global0.x, 5115i, var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -1i, 1i, u_input.c.x), vec4<i32>(u_input.c.x, global0.x, -1i, 0i)))), global0.x), ~max(_wgslsmith_div_vec4_i32(-vec4<i32>(global0.x, 1i, 0i, -2147483647i), min(vec4<i32>(var_1, 45264i, -2147483647i, -8284i), vec4<i32>(-13382i, 0i, -1i, -7420i))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global0.x, var_1, global0.x, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(0i, global0.x, u_input.c.x, var_1), vec4<i32>(2147483647i, u_input.c.x, var_1, 90645i)), vec4<i32>(u_input.c.x, -49997i, var_1, 1i) ^ vec4<i32>(1i, var_1, var_1, 28492i))), !var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(~var_1, i32(-1i) * -28383i), max(-8303i, i32(-1i) * -1i)), -34121i, 45690i), vec2<i32>(-37543i, global0.x), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3, u_input.a.x, 70582u, global1.x), vec4<u32>(77535u, 1u, var_3, var_3)), vec4<u32>(1u, global1.x, 4294967295u, 88004u)), vec4<u32>(reverseBits(0u), max(u_input.a.x, 27297u), _wgslsmith_add_u32(u_input.b, 37781u), 84150u)));
}

