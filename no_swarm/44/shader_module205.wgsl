struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec4<f32>,
    d: vec3<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: Struct_4 = Struct_4(vec4<u32>(1317u, 4294967295u, 1u, 0u), Struct_3(Struct_2(Struct_1(469f), 1u, vec4<u32>(15551u, 1215u, 4202u, 4294967295u), Struct_1(899f)), Struct_2(Struct_1(672f), 0u, vec4<u32>(19657u, 138083u, 87343u, 4294967295u), Struct_1(-377f)), vec3<i32>(-1i, 2147483647i, -11629i), vec3<u32>(10251u, 0u, 34481u)), vec4<f32>(-597f, -256f, 441f, 100f), vec3<u32>(4294967295u, 0u, 10845u), Struct_3(Struct_2(Struct_1(2227f), 0u, vec4<u32>(9067u, 79929u, 34173u, 1u), Struct_1(-704f)), Struct_2(Struct_1(-210f), 0u, vec4<u32>(19628u, 44387u, 4294967295u, 1u), Struct_1(931f)), vec3<i32>(-15107i, 2147483647i, 3893i), vec3<u32>(92602u, 15404u, 0u)));

var<private> global2: Struct_4 = Struct_4(vec4<u32>(102113u, 4294967295u, 67795u, 67430u), Struct_3(Struct_2(Struct_1(1048f), 0u, vec4<u32>(0u, 1320u, 0u, 0u), Struct_1(-364f)), Struct_2(Struct_1(-1000f), 1u, vec4<u32>(1u, 45697u, 40676u, 30524u), Struct_1(-1000f)), vec3<i32>(-15630i, 15795i, 33132i), vec3<u32>(38912u, 0u, 1u)), vec4<f32>(-609f, 840f, 496f, 632f), vec3<u32>(1169u, 1u, 32732u), Struct_3(Struct_2(Struct_1(658f), 3273u, vec4<u32>(51070u, 11097u, 68740u, 49443u), Struct_1(298f)), Struct_2(Struct_1(673f), 72470u, vec4<u32>(1u, 0u, 4294967295u, 1u), Struct_1(529f)), vec3<i32>(3088i, -32855i, -1i), vec3<u32>(71655u, 4294967295u, 0u)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<u32>, arg_3: u32) -> vec4<u32> {
    global2 = Struct_4(global1.b.a.c, global1.e, global1.c, (vec3<u32>(126388u & u_input.a, global2.e.b.c.x, reverseBits(global1.a.x)) >> (vec3<u32>(1u, countOneBits(81842u), ~0u) % vec3<u32>(32u))) << (~global2.d % vec3<u32>(32u)), Struct_3(Struct_2(global1.b.a.d, ~7905u, ~global2.a, global2.b.b.a), Struct_2(global2.e.a.d, global1.d.x, vec4<u32>(4294967295u, _wgslsmith_mod_u32(1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(31892u, 16753u, arg_0, 1u), global1.e.b.c), 1u), Struct_1(-1761f)), vec3<i32>(reverseBits(~2147483647i), ~_wgslsmith_clamp_i32(u_input.c, global2.e.c.x, global2.e.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.c.x, -8292i, global1.e.c.x, 2147483647i) ^ u_input.d, _wgslsmith_sub_vec4_i32(vec4<i32>(global2.e.c.x, -19554i, global1.e.c.x, global1.e.c.x), u_input.d))), global2.b.b.c.wyz));
    var var_0 = Struct_4(global1.a >> (vec4<u32>(_wgslsmith_div_u32(1u, arg_3), max(59347u, arg_0) & arg_0, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_2.xz, arg_2.xy), global2.b.a.c.xz), ~4583u) % vec4<u32>(32u)), global2.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b.b.a.a))), global2.b.b.d.a, 1025f, _wgslsmith_f_op_f32(floor(global1.c.x))), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(0u, global2.b.b.c.x, 2748u) | vec3<u32>(u_input.a, 0u, 1u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 18917u, 0u), global1.b.b.c.wyz, arg_2)), vec3<u32>(~global2.a.x, _wgslsmith_add_u32(35716u, global2.d.x), u_input.b)), Struct_3(global1.b.b, global1.e.b, ~countOneBits(select(vec3<i32>(u_input.c, u_input.c, u_input.d.x), vec3<i32>(global2.e.c.x, global2.e.c.x, global2.e.c.x), true)), (~global1.d & ~vec3<u32>(global2.a.x, 36676u, u_input.b)) ^ arg_2));
    let var_1 = global2.e.b.d;
    let var_2 = 1i << (_wgslsmith_add_u32(~_wgslsmith_mult_u32(arg_2.x >> (arg_2.x % 32u), min(22267u, arg_0)), ~(~_wgslsmith_add_u32(79073u, arg_3))) % 32u);
    let var_3 = 1u;
    return var_0.e.b.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> vec3<f32> {
    global2 = Struct_4(_wgslsmith_sub_vec4_u32(func_3(~reverseBits(353u), select(true, true, true), global1.e.a.c.xyy, ~32054u), min(vec4<u32>(u_input.b, _wgslsmith_add_u32(61483u, arg_1), countOneBits(arg_1), _wgslsmith_dot_vec4_u32(global1.b.b.c, vec4<u32>(arg_1, 5584u, arg_1, global1.a.x))), ~global1.a)), global2.b, _wgslsmith_f_op_vec4_f32(-global2.c), global1.b.d, global1.e);
    let var_0 = global1.e.a.c.zwx;
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), arg_0.x, -2099f);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = countOneBits(global1.e.a.b & 0u);
    let var_1 = _wgslsmith_f_op_vec3_f32(func_2(global1.c.xxx, reverseBits(0u)));
    global1 = Struct_4(~abs(global1.a >> (_wgslsmith_mod_vec4_u32(global2.b.a.c, global1.a) % vec4<u32>(32u))), global1.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.b.d.a, 1000f, arg_0.x, 480f))))), max(min(min(vec3<u32>(4294967295u, global2.d.x, u_input.a) | vec3<u32>(1u, global2.e.d.x, 4294967295u), global1.d), global2.d), ~global1.e.b.c.zyy), global2.e);
    let var_2 = false;
    return select(vec2<i32>(1i, _wgslsmith_mod_i32(global2.b.c.x, 22874i) & (i32(-1i) * -30802i)), global1.b.c.xz, !any(!vec2<bool>(var_2, false))) >> (vec2<u32>(~(_wgslsmith_add_u32(41353u, global1.a.x) | (global2.a.x & global2.d.x)), ~global1.b.d.x) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: Struct_1) -> Struct_4 {
    let var_0 = vec2<i32>(arg_1.a, u_input.d.x);
    return Struct_4(reverseBits(_wgslsmith_div_vec4_u32(global1.e.b.c, abs(min(vec4<u32>(35097u, 0u, 19189u, global2.e.b.c.x), global1.a)))), global1.b, global2.c, ~(~vec3<u32>(18542u, 4294967295u, global2.b.b.c.x)), Struct_3(global1.e.a, global1.b.a, ~vec3<i32>(_wgslsmith_sub_i32(arg_0.x, u_input.c), global2.e.c.x, -1i), global1.b.b.c.yxx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global1.b.c.x, i32(-1i) * -global1.e.c.x, all(vec4<bool>(false, true, global2.e.c.x == global2.e.c.x, false))) >> (~(~u_input.a) % 32u);
    global1 = func_4(vec2<i32>(i32(-1i) * -406i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-40522i, 2147483647i, -2147483647i), u_input.d.xxx), 1i)) | (func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-452f, global1.c.x, 494f, global1.b.b.a.a))), global1.e.b.d) >> (~_wgslsmith_clamp_vec2_u32(global2.b.b.c.wz, vec2<u32>(1u, global1.a.x), global2.d.zz) % vec2<u32>(32u))), Struct_5(global1.e.c.x), global2.e.b.a);
    var var_1 = vec3<bool>(any(vec2<bool>(any(vec2<bool>(false, true)) & true, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)))), true, !all(vec2<bool>(false, true)));
    let var_2 = ~global1.d;
    let var_3 = global0[_wgslsmith_index_u32(global2.d.x, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b.b.d.a, global2.e.a.a.a, 498f, global1.e.b.a.a))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.b.a.a, -647f, var_3.x, global2.c.x))), vec4<f32>(_wgslsmith_div_f32(global1.b.b.d.a, 452f), _wgslsmith_f_op_f32(global2.b.b.a.a * -895f), _wgslsmith_f_op_f32(-749f * var_3.x), _wgslsmith_f_op_f32(-1000f + global2.b.b.a.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -1298f, 1000f)))))), global1.e.a.a.a);
}

