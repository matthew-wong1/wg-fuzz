struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: f32;

var<private> global2: array<bool, 29> = array<bool, 29>(true, true, false, true, false, true, true, true, false, true, true, true, true, false, false, true, false, true, true, false, true, true, true, false, false, true, false, true, true);

var<private> global3: Struct_1;

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    global3 = Struct_1(vec3<u32>(4294967295u, ~global3.a.x, min(_wgslsmith_mult_u32(7702u >> (global3.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, 0u, 1163u, global3.a.x), vec4<u32>(29216u, u_input.c, 0u, 4294967295u))), arg_1.a.x)), abs(vec3<i32>(arg_1.b.x, _wgslsmith_mult_i32(~global3.b.x, i32(-1i) * -84183i), 51435i)), !select(global3.c, vec3<bool>(true, !global2[_wgslsmith_index_u32(4294967295u, 29u)], global3.d.x), !global3.c), arg_1.d);
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(-19017i, arg_1.b.x), countOneBits(abs(-2147483647i | arg_1.b.x)), -(~23443i), ~select(2147483647i, firstLeadingBit(-30934i), true));
    var var_1 = ~vec3<i32>(-_wgslsmith_mod_i32(-7435i << (arg_1.a.x % 32u), ~var_0.x), arg_1.b.x, max(u_input.b, min(-1i, arg_1.b.x & arg_1.b.x)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~_wgslsmith_mult_u32(arg_1.a.x, u_input.d), ~global3.a.x, 0u), vec4<u32>(u_input.c, _wgslsmith_clamp_u32(4294967295u, ~31054u, max(1u, global3.a.x)), _wgslsmith_add_u32(global3.a.x, 1u), ~(0u | global3.a.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, global3.a.x, arg_1.a.x, 4294967295u) | ~vec4<u32>(global3.a.x, 4294967295u, global3.a.x, arg_1.a.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, arg_1.a.x, 4294967295u, global3.a.x), select(vec4<u32>(1u, global3.a.x, global3.a.x, 62938u), vec4<u32>(4272u, 0u, arg_1.a.x, u_input.a), vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 29u)], true))))), vec4<u32>(~global3.a.x, 43438u, 49548u, ~4294967295u)), 13u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(-1483f)), 1569f)));
    return var_0.x > _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(u_input.e.ywy, vec3<i32>(2147483647i, var_2.b.x, 2147483647i)), vec3<i32>(-25144i, -2147483647i, var_1.x) & u_input.e.wxw, arg_1.b), -firstLeadingBit(vec3<i32>(arg_1.b.x, var_0.x, -1i))), select(-(vec3<i32>(global3.b.x, 3644i, var_1.x) & vec3<i32>(-1808i, global3.b.x, global3.b.x)), -vec3<i32>(global3.b.x, 2147483647i, 2147483647i), true));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global2 = array<bool, 29>();
    var var_0 = global3.b;
    var var_1 = global3.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(858f)) + _wgslsmith_f_op_f32(f32(-1f) * -1204f)), arg_0)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, _wgslsmith_f_op_f32(650f * -1331f))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-654f, -638f)) - 1579f);
    return vec3<bool>(!(true || all(global3.c)), true, !any(vec3<bool>(func_3(arg_0, global0[_wgslsmith_index_u32(0u, 13u)]), !global2[_wgslsmith_index_u32(0u, 29u)], false)));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 13>();
    global3 = Struct_1(vec3<u32>(select(~global3.a.x, ~global3.a.x, false | any(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(4294967295u, 29u)]))), max(_wgslsmith_sub_u32(_wgslsmith_add_u32(global3.a.x, 1u), ~global3.a.x), _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.d, 38592u, 7493u, 1u), vec4<u32>(0u, 10154u, 11683u, 4294967295u)), ~vec4<u32>(global3.a.x, 0u, u_input.d, 67149u))), abs(u_input.c & 93279u)), vec3<i32>(u_input.e.x, u_input.e.x, _wgslsmith_add_i32(global3.b.x, ~1i)) & vec3<i32>(i32(-1i) * -51979i, global3.b.x >> (1u % 32u), countOneBits(~(-1i))), select(global3.c, vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(global3.a.x, 0u, global3.a.x), countOneBits(global3.a.x), ~u_input.c & ~46328u), 29u)]), vec3<bool>(all(select(!vec2<bool>(global2[_wgslsmith_index_u32(global3.a.x, 29u)], true), vec2<bool>(true, true), global3.d.yx)), any(func_2(_wgslsmith_f_op_f32(-286f - -283f))), !global3.c.x && all(!global3.d)));
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(17584u, _wgslsmith_mod_u32(abs(18583u), 1u)), select(12625u, u_input.a, !all(vec4<bool>(global3.c.x, true, false, global3.c.x))), u_input.a ^ global3.a.x), ~firstTrailingBit(-global3.b) << ((~vec3<u32>(5354u, u_input.a, 16976u) | abs(reverseBits(global3.a))) % vec3<u32>(32u)), func_2(1f), vec3<bool>(586f != _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(1297f))), global3.d.x, global2[_wgslsmith_index_u32(u_input.d, 29u)]));
    let var_1 = -107f;
    global0 = array<Struct_1, 13>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-336f)) + _wgslsmith_f_op_f32(floor(-1203f)));
    var var_1 = func_1();
    let var_2 = Struct_1(~select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.x, 36387u, var_1.a.x), var_1.a, vec3<u32>(global3.a.x, 59797u, u_input.a)), var_1.a, select(var_1.c, !var_1.d, !vec3<bool>(false, true, global2[_wgslsmith_index_u32(20067u, 29u)]))), _wgslsmith_mod_vec3_i32(~(var_1.b & global3.b), abs(u_input.e.ywz)) ^ (~(~vec3<i32>(15971i, -5688i, global3.b.x)) << (~(vec3<u32>(var_1.a.x, 4294967295u, 69533u) >> (vec3<u32>(23518u, 1u, var_1.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))), !global3.c, !(!select(vec3<bool>(false, global2[_wgslsmith_index_u32(var_1.a.x, 29u)], false), global3.d, vec3<bool>(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(var_1.a.x, 29u)], true))));
    var var_3 = ~max(~var_1.b << (abs(vec3<u32>(global3.a.x, 0u, 9434u)) % vec3<u32>(32u)), -vec3<i32>(~u_input.b, max(u_input.b, var_2.b.x), -var_1.b.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-439f, -435f)) + -1337f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1475f * 679f) - _wgslsmith_f_op_f32(trunc(-839f))))));
    var var_4 = 0u;
    global4 = _wgslsmith_f_op_f32(880f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -472f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-985f - 609f) - -104f)))));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, 28717i, -u_input.e.ywy);
}

