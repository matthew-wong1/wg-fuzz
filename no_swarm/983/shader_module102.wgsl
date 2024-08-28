struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(i32(-2147483648), 54209i, 35808i));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(false, -180f), Struct_1(true, -834f), Struct_1(false, 761f), Struct_1(true, 248f), Struct_1(false, 564f), Struct_1(false, -1547f), Struct_1(false, -1129f), Struct_1(true, -872f), Struct_1(true, 3449f), Struct_1(false, -717f), Struct_1(true, -529f), Struct_1(false, 879f), Struct_1(true, 835f));

var<private> global2: Struct_3;

var<private> global3: array<u32, 9>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = 806f;
    global3 = array<u32, 9>();
    var var_1 = vec4<i32>(-_wgslsmith_dot_vec4_i32(-(vec4<i32>(1095i, -1i, 0i, 56772i) ^ vec4<i32>(global2.b.b, -1i, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(17020i, u_input.a.x, global2.b.b, -34279i), vec4<i32>(2147483647i, u_input.a.x, -14566i, global2.b.b), vec4<i32>(u_input.a.x, u_input.a.x, 13716i, 1832i)) | countOneBits(vec4<i32>(global2.b.b, u_input.a.x, -21402i, u_input.a.x))), -global2.b.b, -max(global2.b.b, 33196i), reverseBits(global2.b.b));
    var var_2 = 858f;
    let var_3 = Struct_3(16973u, Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(arg_0.c), abs(0u), arg_0.c), vec3<u32>(global2.b.d.x, global2.b.a.x, arg_0.c) ^ (global2.b.d.xzx >> (vec3<u32>(arg_0.c, global2.b.d.x, arg_0.c) % vec3<u32>(32u)))), global2.b.b, global2.b.c, ~(~global2.b.d), Struct_1(!(global2.d.b == global2.e), _wgslsmith_f_op_f32(f32(-1f) * -655f))), _wgslsmith_f_op_f32(round(global2.d.b)), global1[_wgslsmith_index_u32(global2.a, 13u)], global2.b.e.b);
    return _wgslsmith_mult_u32(firstTrailingBit(global2.a), 0u);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(func_3(Struct_4(264f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global2.d.b)))), global3[_wgslsmith_index_u32(global2.a, 9u)])) & ~global3[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, 0u), 9u)], 9u)], ~abs(global3[_wgslsmith_index_u32(global2.a, 9u)]), true), 9u)], 9u)];
    global1 = array<Struct_1, 13>();
    let var_1 = Struct_2(abs(global2.b.a), _wgslsmith_dot_vec3_i32(~(~global0[_wgslsmith_index_u32(4294967295u, 1u)]) | (vec3<i32>(arg_0, global2.b.b, 1i) >> (~global2.b.d.zzw % vec3<u32>(32u))), vec3<i32>(1i, arg_0, -8991i)), !(!select(select(vec2<bool>(true, global2.d.a), global2.b.c, vec2<bool>(global2.d.a, false)), vec2<bool>(false, global2.d.a), global2.b.c)), arg_1, global1[_wgslsmith_index_u32(21590u, 13u)]);
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~countOneBits(global3[_wgslsmith_index_u32(4294967295u, 9u)])), global2.a & arg_1.x) | abs(_wgslsmith_mod_u32(abs(reverseBits(global2.b.a.x)), reverseBits(global2.a << (0u % 32u)))), 9u)];
    let var_3 = global2.b;
    return _wgslsmith_f_op_f32(330f * -227f);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> Struct_3 {
    global1 = array<Struct_1, 13>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(418f)), _wgslsmith_div_f32(1367f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2513f - 1457f), _wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(4854i, -1i)), vec4<u32>(global3[_wgslsmith_index_u32(37210u, 9u)], global3[_wgslsmith_index_u32(global2.b.d.x, 9u)], 1u, 529u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(arg_0.x << (75817u % 32u), vec4<u32>(1u, 48832u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16077u, 9u)], 9u)], global3[_wgslsmith_index_u32(global2.a, 9u)]) ^ vec4<u32>(global2.a, 52506u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)])))))), _wgslsmith_f_op_f32(-global2.e));
    let var_1 = select(vec3<bool>(!(!(!global2.d.a)), 1u > _wgslsmith_clamp_u32(~global3[_wgslsmith_index_u32(280u, 9u)], 20120u, ~29925u), !(true | global2.d.a) == select(true, select(true, true, global2.d.a), any(global2.b.c))), select(vec3<bool>(_wgslsmith_f_op_f32(trunc(global2.b.e.b)) > _wgslsmith_f_op_f32(ceil(var_0.x)), any(vec4<bool>(global2.d.a, true, global2.d.a, global2.b.e.a)), !any(global2.b.c)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(global2.d.a, global2.b.c.x, global2.d.a), vec3<bool>(true, global2.d.a, global2.b.e.a), global2.b.c.x), select(vec3<bool>(global2.d.a, global2.d.a, global2.d.a), vec3<bool>(global2.d.a, global2.d.a, false), global2.b.c.x), vec3<bool>(false, global2.b.c.x, global2.b.c.x)), !select(vec3<bool>(true, false, global2.b.e.a), vec3<bool>(global2.b.c.x, global2.d.a, global2.d.a), vec3<bool>(true, global2.b.c.x, true))), true & (any(vec2<bool>(true, global2.d.a)) || any(global2.b.c))), global2.b.c.x && global2.d.a);
    global0 = array<vec3<i32>, 1>();
    let var_2 = global2.b;
    return Struct_3(0u, global2.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f * -2151f)), -1000f)), Struct_1(global2.a >= (firstTrailingBit(global2.b.d.x) & global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 9u)]), -1824f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1102f)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = abs(global2.b.b) >> (min(4294967295u, ~0u) % 32u);
    var_1 = u_input.a.x;
    var var_2 = vec3<bool>(true, !(!var_0.d.a) && (arg_1.a || true), var_0.d.a);
    var var_3 = arg_0;
    return arg_0.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(_wgslsmith_mod_vec4_i32(-(vec4<i32>(global2.b.b, u_input.a.x, u_input.a.x, 0i) >> (vec4<u32>(53163u, 0u, 1u, global2.b.d.x) % vec4<u32>(32u))), vec4<i32>(~(-20085i), global2.b.b, firstTrailingBit(25372i), max(-8138i, u_input.a.x))), vec4<i32>(u_input.a.x, i32(-1i) * -13992i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -24131i), u_input.a), global2.b.b)), func_1(~countOneBits(vec4<i32>(-4805i, 2147483647i, 2147483647i, 1i)), countOneBits(vec4<i32>(abs(2147483647i), -27313i, 15337i, u_input.a.x))).b.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(34545i, _wgslsmith_sub_vec4_u32(global2.b.d, max(vec4<u32>(23853u, global2.b.a.x, 4294967295u, 4294967295u), global2.b.d)))))), _wgslsmith_mod_vec2_u32(firstLeadingBit(select(vec2<u32>(global2.a, 65609u), vec2<u32>(1u, global2.a), global2.d.a) & vec2<u32>(0u, 49602u)), ~max(select(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)]), global2.b.d.zx, true), global2.b.a.xz)), u_input.a);
}

