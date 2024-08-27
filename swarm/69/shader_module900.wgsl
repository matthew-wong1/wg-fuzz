struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(40513u, vec3<bool>(true, false, false), 12019u, 23050i), Struct_1(0u, vec3<bool>(false, true, true), 39514u, 0i), Struct_1(1u, vec3<bool>(true, false, true), 1u, i32(-2147483648)), Struct_1(72452u, vec3<bool>(false, true, true), 3193u, -12491i), Struct_1(4294967295u, vec3<bool>(false, true, false), 4294967295u, 20960i), Struct_1(68055u, vec3<bool>(false, true, false), 1u, 80502i), Struct_1(25954u, vec3<bool>(true, false, true), 28407u, 19312i), Struct_1(57231u, vec3<bool>(false, true, true), 64217u, 32579i), Struct_1(5010u, vec3<bool>(false, true, true), 68791u, 0i), Struct_1(14004u, vec3<bool>(false, false, false), 4294967295u, -12290i), Struct_1(7466u, vec3<bool>(false, false, true), 0u, -54331i), Struct_1(13885u, vec3<bool>(false, true, true), 4294967295u, 1i), Struct_1(4294967295u, vec3<bool>(false, false, false), 1u, -8547i), Struct_1(4294967295u, vec3<bool>(true, false, true), 4294967295u, -2040i), Struct_1(4294967295u, vec3<bool>(true, false, true), 38801u, 67152i), Struct_1(11766u, vec3<bool>(false, false, false), 10888u, -22667i), Struct_1(62336u, vec3<bool>(true, false, false), 30175u, 1i), Struct_1(3934u, vec3<bool>(true, true, true), 1u, i32(-2147483648)), Struct_1(0u, vec3<bool>(false, true, true), 0u, -27705i), Struct_1(7382u, vec3<bool>(false, true, false), 0u, 1i), Struct_1(28864u, vec3<bool>(false, true, true), 1u, 1i), Struct_1(4294967295u, vec3<bool>(true, false, false), 1u, i32(-2147483648)), Struct_1(1633u, vec3<bool>(true, true, false), 1u, 2147483647i), Struct_1(43322u, vec3<bool>(true, true, true), 14120u, 386i), Struct_1(34525u, vec3<bool>(true, true, true), 4294967295u, 2147483647i));

var<private> global1: array<Struct_2, 7>;

var<private> global2: Struct_2 = Struct_2(Struct_1(4294967295u, vec3<bool>(false, true, false), 0u, -4339i), Struct_1(0u, vec3<bool>(true, true, false), 0u, i32(-2147483648)), vec2<f32>(355f, 475f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(-127f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-104f)) * global2.c.x)) * global2.c.x));
    global1 = array<Struct_2, 7>();
    let var_2 = arg_0.b;
    var var_3 = -388f;
    return ~_wgslsmith_clamp_vec4_u32(vec4<u32>(abs(~u_input.a.x), ~global2.a.c, 10681u, u_input.a.x ^ arg_0.a), u_input.a, u_input.a);
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = _wgslsmith_add_u32(reverseBits(arg_0.a.a ^ 4294967295u), 27039u);
    let var_1 = !vec4<bool>(true, any(!global2.b.b.zz), arg_0.a.b.x, true);
    let var_2 = ~(~4294967295u);
    var var_3 = _wgslsmith_f_op_f32(-arg_0.c.x) < _wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(round(-169f)));
    var_3 = global2.b.b.x;
    return !var_1;
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> vec2<i32> {
    global0 = array<Struct_1, 25>();
    let var_0 = false;
    var var_1 = vec3<i32>(-1i) * -abs(select(vec3<i32>(-35344i, 0i, 0i), abs(vec3<i32>(global2.b.d, global2.a.d, 1i)), global2.a.b.x));
    var var_2 = Struct_3(global2.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~firstLeadingBit(~u_input.a), func_1(global0[_wgslsmith_index_u32(45638u << (u_input.a.x % 32u), 25u)], ~global2.a.d) >> (_wgslsmith_div_vec4_u32(~u_input.a, ~vec4<u32>(4294967295u, global2.b.c, u_input.a.x, 0u)) % vec4<u32>(32u))), 25u)], global0[_wgslsmith_index_u32(7697u, 25u)]);
    var var_3 = Struct_3(global2.b, global2.b, global2.a);
    return -_wgslsmith_div_vec2_i32(~var_1.zz, vec2<i32>(18961i, 5828i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-(vec4<i32>(1i, 11110i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2813i, -1i, global2.b.d, -2147483647i), vec4<i32>(1i, 24866i, -1i, -11706i)), -3232i) << (_wgslsmith_sub_vec4_u32(min(vec4<u32>(64271u, 18504u, global2.a.a, u_input.a.x), vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x)), func_1(global0[_wgslsmith_index_u32(1u, 25u)], global2.a.d)) % vec4<u32>(32u))));
    var var_1 = global2.a.b.x & all(select(vec4<bool>(false | global2.a.b.x, true, true, false), func_2(global1[_wgslsmith_index_u32(global2.a.a, 7u)]), global2.b.b.x));
    var var_2 = global1[_wgslsmith_index_u32(~select(global2.b.a, 0u, global2.b.d < _wgslsmith_dot_vec2_i32(func_3(vec2<f32>(global2.c.x, global2.c.x), 1132f), vec2<i32>(-2147483647i, 2147483647i))), 7u)];
    let var_3 = Struct_3(var_2.a, Struct_1(37475u, vec3<bool>(select(all(vec2<bool>(var_2.b.b.x, true)), var_2.a.b.x, all(vec2<bool>(false, global2.b.b.x))), true, var_2.a.b.x), ~u_input.a.x, countOneBits(-1i)), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(max(var_0, var_0), -var_0)), -var_0), firstTrailingBit(~global2.a.d));
}

