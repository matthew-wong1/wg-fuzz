struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32 = 7051u;

var<private> global2: array<Struct_1, 20>;

var<private> global3: vec2<i32>;

var<private> global4: array<i32, 3> = array<i32, 3>(18878i, 14601i, -41407i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(~(~0u) != max(~(~4294967295u), _wgslsmith_clamp_u32(1u, reverseBits(4294967295u), 1u)));
    var var_1 = global2[_wgslsmith_index_u32(74607u, 20u)];
    global3 = vec2<i32>(-44364i, _wgslsmith_mod_i32(-22604i, global4[_wgslsmith_index_u32(~(~49954u), 3u)])) & u_input.d;
    var_1 = Struct_1(global0.x | (any(global0.wyz) & arg_2.a));
    global0 = !select(vec4<bool>(true, all(!vec4<bool>(false, var_1.a, arg_1, arg_2.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 0i, -18696i, global4[_wgslsmith_index_u32(43235u, 3u)]), vec4<i32>(global3.x, 2147483647i, global4[_wgslsmith_index_u32(20668u, 3u)], -1i)) >= global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(9053u, 1u), 3u)], true), vec4<bool>(!(!var_0.a), all(!vec2<bool>(arg_2.a, arg_2.a)), true, true), false);
    return vec2<bool>(!(!all(select(vec3<bool>(global0.x, arg_0.a, arg_1), vec3<bool>(false, false, true), global0.yzw))), true);
}

fn func_2(arg_0: i32) -> vec4<bool> {
    global2 = array<Struct_1, 20>();
    let var_0 = !select(vec2<bool>(all(select(vec3<bool>(global0.x, global0.x, global0.x), global0.zxw, global0.x)), !(false || global0.x)), global0.yx, select(global0.xx, func_3(Struct_1(false), true, global2[_wgslsmith_index_u32(0u, 20u)]), func_3(Struct_1(global0.x), true | global0.x, global2[_wgslsmith_index_u32(1u, 20u)])));
    let var_1 = Struct_1(true);
    let var_2 = Struct_2(var_1, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(701f - _wgslsmith_f_op_f32(max(321f, -1363f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(f32(-1f) * -353f))), var_0.x)) + 914f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1319f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-898f, -865f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1339f, -816f, 1020f, -336f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, -984f, -769f, 2455f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(964f, 2225f, 110f, 902f), vec4<f32>(-440f, 1323f, 279f, -418f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1801f, 192f, -1140f, -1490f)))))));
    var var_3 = Struct_2(Struct_1(var_2.b.a), var_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1703f + -157f))), _wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_vec4_f32(var_2.e - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_f32(var_2.c, -390f), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -626f)), var_2.e))));
    return vec4<bool>(true, u_input.c > arg_0, !var_0.x, false);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    var var_0 = Struct_1(all(select(!(!vec4<bool>(arg_3, arg_1.a, false, true)), func_2(u_input.d.x), _wgslsmith_f_op_f32(-arg_0.e.x) == arg_0.d)));
    global2 = array<Struct_1, 20>();
    global3 = u_input.a.xx;
    global0 = !func_2(25892i);
    var var_1 = 31957i;
    return _wgslsmith_dot_vec4_u32(min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x) >> (reverseBits(vec4<u32>(0u, 52775u, arg_2.x, arg_2.x)) % vec4<u32>(32u)), ~vec4<u32>(14282u, arg_2.x, 1u, 4294967295u) >> (~vec4<u32>(arg_2.x, 3342u, arg_2.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(select(vec4<u32>(arg_2.x, 4294967295u, 19355u, arg_2.x), vec4<u32>(arg_2.x, 0u, 35718u, arg_2.x), false), ~vec4<u32>(arg_2.x, 3580u, arg_2.x, 4294967295u))), vec4<u32>(arg_2.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(61008u, 4294967295u, arg_2.x, 24128u), vec4<u32>(4294967295u, 1u, 1350u, 1u)) | ~arg_2.x, ~(~arg_2.x))), vec4<u32>(arg_2.x & ~_wgslsmith_sub_u32(75678u, arg_2.x), ~reverseBits(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(arg_2.x, 57603u, arg_2.x))), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(arg_2.x, arg_2.x, 2138u, arg_2.x), vec4<u32>(1u, arg_2.x, arg_2.x, arg_2.x), true), max(vec4<u32>(4294967295u, 4294967295u, 28938u, 85447u), max(vec4<u32>(83784u, 40590u, arg_2.x, arg_2.x), vec4<u32>(arg_2.x, 53475u, arg_2.x, arg_2.x)))), arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -260f;
    let var_1 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(57153u, 51228u, 1037u))), ~min(countOneBits(reverseBits(vec3<u32>(0u, 0u, 1701u))), vec3<u32>(~111285u, 1u, 1u)));
    global4 = array<i32, 3>();
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(abs(~var_1), func_1(Struct_2(Struct_1(global0.x), Struct_1(true), 1892f, var_0, _wgslsmith_div_vec4_f32(vec4<f32>(var_0, 955f, -273f, 595f), vec4<f32>(-325f, var_0, var_0, var_0))), Struct_1(global0.x), firstTrailingBit(vec3<u32>(var_1, 6371u, 10837u)), false), 1u), ~_wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(27854u, var_1, 87376u), vec3<u32>(1u, var_1, 1u))), vec3<u32>(func_1(Struct_2(global2[_wgslsmith_index_u32(var_1, 20u)], Struct_1(true), -2059f, var_0, vec4<f32>(var_0, 164f, 1000f, var_0)), global2[_wgslsmith_index_u32(var_1, 20u)], vec3<u32>(var_1, var_1, 4294967295u), global0.x), 9379u, ~0u)));
    let var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0, _wgslsmith_f_op_f32(-var_0), var_0));
}

