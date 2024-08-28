struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<f32>(990f, 889f, 1540f), -1150f, true), Struct_1(vec3<f32>(-800f, 2113f, -172f), 1150f, false), Struct_1(vec3<f32>(1000f, -1702f, -1000f), 986f, false), Struct_1(vec3<f32>(1281f, -1000f, 113f), -1319f, true), Struct_1(vec3<f32>(-875f, 643f, 952f), 472f, false), Struct_1(vec3<f32>(-988f, -624f, 802f), -568f, false), Struct_1(vec3<f32>(-131f, 1344f, 143f), 1721f, true), Struct_1(vec3<f32>(-1232f, 322f, 628f), -480f, true), Struct_1(vec3<f32>(-156f, 412f, 509f), 1105f, true), Struct_1(vec3<f32>(3000f, 264f, 862f), 2834f, false), Struct_1(vec3<f32>(478f, -216f, 336f), 1570f, false), Struct_1(vec3<f32>(811f, 1683f, -394f), 1451f, false));

var<private> global1: vec4<i32>;

var<private> global2: Struct_1;

var<private> global3: Struct_2;

var<private> global4: Struct_2 = Struct_2(vec4<u32>(1u, 49446u, 4294967295u, 26521u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    let var_0 = firstTrailingBit(select(-u_input.c, u_input.c, _wgslsmith_f_op_f32(max(global2.a.x, -163f)) == _wgslsmith_f_op_f32(trunc(global2.a.x))));
    global0 = array<Struct_1, 12>();
    var var_1 = min(var_0.x, ~(-1i));
    var var_2 = Struct_1(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)))), global2.c);
    global1 = min(var_0, max(-(u_input.c | var_0), u_input.c) | vec4<i32>(~(-37189i | u_input.d), _wgslsmith_clamp_i32(u_input.c.x, 2147483647i, -21865i) << (43861u % 32u), min(-2673i, -2147483647i) << (global3.a.x % 32u), -(i32(-1i) * -22785i)));
    return all(select(!(!select(vec3<bool>(var_2.c, global2.c, true), vec3<bool>(global2.c, var_2.c, false), vec3<bool>(false, global2.c, true))), !vec3<bool>(true, var_2.c, !var_2.c), !var_2.c));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = true;
    var_0 = global2.c;
    let var_1 = abs(vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(u_input.d, 38973i), firstLeadingBit(select(_wgslsmith_add_i32(-28882i, 2147483647i), -u_input.d, func_3(Struct_2(global4.a), 23470u)))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-293f + global2.b)));
    let var_3 = global4.a;
    return vec3<bool>(false != any(vec2<bool>(global2.c, true)), false, true);
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = !(!select(func_2(vec3<i32>(0i, global1.x, 2147483647i), vec3<f32>(-384f, 975f, global2.b)), !(!vec3<bool>(true, true, arg_0.x)), vec3<bool>(global1.x < 21239i, true, func_3(Struct_2(global4.a), u_input.a.x))));
    var var_1 = Struct_2(~global3.a);
    global2 = global0[_wgslsmith_index_u32(global3.a.x, 12u)];
    global4 = Struct_2(~max(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(global4.a.x, 1u, 1u, 1u)), _wgslsmith_add_vec4_u32(var_1.a, vec4<u32>(global3.a.x, u_input.a.x, global4.a.x, 11842u))) << ((select(vec4<u32>(u_input.b, global4.a.x, var_1.a.x, 34929u) << (vec4<u32>(1u, var_1.a.x, 4294967295u, 35847u) % vec4<u32>(32u)), countOneBits(global4.a), select(vec4<bool>(global2.c, arg_0.x, arg_0.x, false), vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(global2.c, var_0.x, false, true))) << (select(_wgslsmith_div_vec4_u32(vec4<u32>(global3.a.x, global4.a.x, global4.a.x, global3.a.x), vec4<u32>(u_input.b, 1u, global4.a.x, 18729u)), var_1.a, select(vec4<bool>(global2.c, false, false, var_0.x), vec4<bool>(arg_0.x, global2.c, true, arg_0.x), var_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global3.a.x, abs(global4.a.x), u_input.a.x ^ global4.a.x), global4.a), global3.a));
    return Struct_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 13730u, u_input.a.x, 4294967295u), vec4<u32>(3654u, var_1.a.x, 4294967295u, var_1.a.x)), min(var_1.a.x, global3.a.x), abs(1u), ~17304u), select(~vec4<u32>(var_1.a.x, u_input.a.x, 881u, 4294967295u), var_1.a, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, global2.c, true), vec4<bool>(var_0.x, false, true, false), vec4<bool>(arg_0.x, true, global2.c, false)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(~(~(-45705i)), u_input.c.x, u_input.c.x, u_input.c.x);
    global0 = array<Struct_1, 12>();
    global4 = func_1(!vec2<bool>(global2.c, u_input.a.x >= 4294967295u));
    let var_0 = max(-u_input.c.x, 0i);
    global4 = Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global4.a.x, ~(~4294967295u), global4.a.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(7707u, u_input.b, global3.a.x, global4.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global3.a.x, global3.a.x, global4.a.x, 1u), vec4<u32>(4294967295u, 26509u, global3.a.x, 4047u)), ~vec4<u32>(27133u, global4.a.x, 32701u, u_input.a.x))));
    var var_1 = any(select(select(vec4<bool>(global2.c, true, false, global2.c), select(vec4<bool>(global2.c, global2.c, global2.c, true), vec4<bool>(false, global2.c, global2.c, global2.c), global2.c), !vec4<bool>(global2.c, false, true, global2.c)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global2.c, global2.c, true, global2.c), vec4<bool>(global2.c, global2.c, global2.c, true), vec4<bool>(false, global2.c, global2.c, true)), false), vec4<bool>(func_2(vec3<i32>(0i, var_0, global1.x), vec3<f32>(global2.a.x, -648f, 292f)).x, true, global2.b < -905f, global2.c))) != any(select(vec4<bool>(global2.c, global2.c || false, false | global2.c, global2.c), !(!vec4<bool>(global2.c, global2.c, global2.c, true)), global2.c && any(vec3<bool>(global2.c, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(2946u, _wgslsmith_div_vec3_i32(abs(~vec3<i32>(39075i, 2147483647i, var_0) ^ (u_input.c.xxw ^ vec3<i32>(u_input.c.x, u_input.c.x, global1.x))), -u_input.c.yyz), global2.b);
}

