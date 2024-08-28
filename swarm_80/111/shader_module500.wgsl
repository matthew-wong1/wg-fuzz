struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 1>;

var<private> global2: vec2<f32> = vec2<f32>(1174f, -148f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec2<f32> {
    var var_0 = any(select(select(select(vec4<bool>(false, false, arg_1, false), vec4<bool>(true, true, arg_0.b.a, false), vec4<bool>(arg_1, false, arg_0.a.a, arg_0.b.a)), vec4<bool>(true, false, arg_0.a.a, -3383i != u_input.c.x), global1[_wgslsmith_index_u32(arg_0.a.b.x, 1u)]), select(!global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global1[_wgslsmith_index_u32(~1u, 1u)], false), !vec4<bool>(arg_1, true, u_input.a == u_input.b.x, !arg_1)));
    let var_1 = 1u;
    var var_2 = true;
    let var_3 = ~min(_wgslsmith_mod_u32((u_input.b.x & 4294967295u) << (_wgslsmith_clamp_u32(arg_0.a.b.x, var_1, var_1) % 32u), firstTrailingBit(0u)), 1u ^ ((u_input.a & 0u) << (abs(arg_0.d) % 32u)));
    let var_4 = ~u_input.c;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(785f, arg_0.c.c), vec2<f32>(arg_0.e, global2.x)))) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.c), -1230f)) - vec2<f32>(global2.x, -1705f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, arg_0.b.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, arg_0.a.c)), vec2<bool>(arg_0.c.a, arg_0.a.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-179f, 1000f)))) * vec2<f32>(1f, _wgslsmith_f_op_f32(abs(arg_0.a.c))))), arg_1));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(arg_0.c.a.a, u_input.b.xy, arg_1.x), Struct_1(true, vec2<u32>(33229u, arg_0.c.a.b.x), -283f), arg_0.c.a, 92406u, arg_1.x), arg_0.c.a.a)))))));
    let var_1 = arg_0.c;
    global0 = ~arg_0.c.a.b.x;
    let var_2 = var_1.a.c;
    var var_3 = _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, arg_2.x, -(~arg_2.x)), max(vec3<i32>(arg_2.x, -(~(-2147483647i)), ~max(u_input.c.x, u_input.c.x)), u_input.c.xyw));
    return vec2<u32>(~4294967295u, ~60825u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> Struct_2 {
    var var_0 = arg_1.c;
    var var_1 = u_input.c;
    global0 = firstTrailingBit(var_0.a.b.x);
    return Struct_2(Struct_1(arg_1.c.a.a, arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(903f, -1196f, arg_1.c.a.a))))), Struct_1(!(_wgslsmith_div_f32(823f, arg_1.b.x) >= arg_0.c), func_2(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(586f, var_0.a.c, -1742f, -1860f), vec4<f32>(-1360f, global2.x, 1371f, -1190f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-767f, 135f, 896f, var_0.a.c)))), var_1.xx, vec4<u32>(1u, u_input.b.x, arg_0.b.x, 4294967295u) >> (abs(vec4<u32>(13539u, 0u, 1u, arg_1.c.a.b.x)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), var_0.a.c))), Struct_1(all(vec3<bool>(var_0.a.a, var_0.a.c != arg_0.c, arg_1.c.a.a && false)), arg_0.b, var_0.a.c), reverseBits(42344u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x - 630f), arg_0.c)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(arg_2.ywy));
    global0 = 6343u;
    global2 = vec2<f32>(1f, -420f);
    var var_1 = func_4(Struct_1(true, _wgslsmith_mult_vec2_u32(~arg_3.c.b, u_input.b.xz >> (arg_3.a.b % vec2<u32>(32u))) ^ (func_2(Struct_4(-368f, vec2<f32>(290f, -1000f), Struct_3(arg_3.a), vec2<f32>(arg_3.e, 1151f)), vec4<f32>(1193f, -1181f, 1153f, -703f), u_input.c.ww, vec4<u32>(4294967295u, 4294967295u, arg_3.a.b.x, u_input.b.x)) ^ select(arg_3.a.b, vec2<u32>(55920u, u_input.a), vec2<bool>(true, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(518f - global2.x))), Struct_4(global2.x, arg_2.wz, Struct_3(arg_3.c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.xz)))));
    var var_2 = 1i;
    return 1u | var_1.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(select(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 52184u, u_input.a, 4294967295u), vec4<u32>(u_input.b.x, u_input.a, u_input.a, 4294967295u)), vec4<u32>(1u, 8766u, u_input.a, 7535u) | vec4<u32>(4294967295u, u_input.b.x, 4294967295u, u_input.a)), vec4<u32>(u_input.b.x << (u_input.a % 32u), func_1(u_input.c.x, false, vec4<f32>(global2.x, global2.x, 143f, 1727f), Struct_2(Struct_1(true, u_input.b.yz, global2.x), Struct_1(true, u_input.b.zx, global2.x), Struct_1(false, u_input.b.zz, global2.x), u_input.a, 549f)), abs(u_input.a), u_input.a), false), vec4<u32>(~_wgslsmith_mult_u32(4294967295u, u_input.a), u_input.b.x, max(~2043u, ~u_input.a), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(25657u, 0u, 34431u, u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 3706u, u_input.b.x), vec4<u32>(1u, 68041u, 121148u, u_input.a))))) & _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(8793u, u_input.b.x, 16074u, 4294967295u)), select(vec4<u32>(22744u, 4294967295u, u_input.a, u_input.a), abs(vec4<u32>(u_input.b.x, 42524u, u_input.a, u_input.a)), global1[_wgslsmith_index_u32(25598u, 1u)])), abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 40582u, 0u), vec4<u32>(u_input.b.x, u_input.a, 0u, 12024u) << (vec4<u32>(83609u, u_input.b.x, u_input.b.x, u_input.a) % vec4<u32>(32u)))));
    var var_1 = false;
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-1054f, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(~(-2147483647i), firstTrailingBit(2314i)), 2147483647i), _wgslsmith_mod_i32(1i ^ u_input.c.x, u_input.c.x), ~u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, 1000f)) * -373f)))));
}

