struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-162f, 727f, 430f, -222f, 746f, -710f, 1544f, -878f, 599f, -1355f, -397f, -690f, -120f, 678f, -1000f, 140f, -1595f, -123f, 1631f, -1040f, -839f, 2135f, 552f, -835f, 1471f, 1000f, 1000f, -259f, 2066f, 717f, -539f);

var<private> global1: Struct_5 = Struct_5(Struct_4(vec2<f32>(1665f, -2456f), Struct_3(vec3<i32>(-2065i, -35108i, -22674i), 1384u, Struct_1(vec2<bool>(false, true), -1166f, 1u, 1267f, 1u), vec3<bool>(false, false, true), vec2<f32>(615f, 996f))), -770f, 0u);

var<private> global2: array<Struct_3, 15>;

var<private> global3: array<u32, 20>;

var<private> global4: array<bool, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<i32>) -> f32 {
    let var_0 = select(u_input.a.yxz, u_input.a.zyy, select(select(select(vec3<bool>(arg_1.x, true, arg_1.x), select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(global4[_wgslsmith_index_u32(global1.a.b.c.c, 21u)], arg_1.x, false), false), global1.a.b.d), select(!arg_1, select(vec3<bool>(true, false, true), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, global1.a.b.c.a.x, false)), vec3<bool>(false, false, true)), true), !(!global1.a.b.d), arg_1));
    global3 = array<u32, 20>();
    var var_1 = global1.a;
    let var_2 = var_1.b;
    let var_3 = firstLeadingBit(~(~select(vec2<i32>(5766i, -16434i), ~global1.a.b.a.xx, any(var_2.d.zz))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-527f))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> u32 {
    global2 = array<Struct_3, 15>();
    return 4294967295u;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> u32 {
    let var_0 = -(global1.a.b.a.zz & _wgslsmith_clamp_vec2_i32(vec2<i32>(-2186i, ~global1.a.b.a.x), global1.a.b.a.yx, vec2<i32>(0i, i32(-1i) * -11504i)));
    global0 = array<f32, 31>();
    global3 = array<u32, 20>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-185f)) - _wgslsmith_f_op_f32(func_2(var_0.x, global1.a.b.d, countOneBits(reverseBits(vec2<i32>(var_0.x, global1.a.b.a.x) | global1.a.b.a.zx)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(func_2(var_0.x, vec3<bool>(all(select(vec2<bool>(global1.a.b.d.x, global1.a.b.d.x), global1.a.b.d.xz, global1.a.b.d.zz)), all(select(global1.a.b.d, vec3<bool>(global4[_wgslsmith_index_u32(96670u, 21u)], true, true), vec3<bool>(false, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.c, 20u)], 21u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7777u, 20u)], 21u)]))), false), var_0)), min(~max(arg_1 ^ 29033u, _wgslsmith_sub_u32(arg_3, arg_3)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(func_3(0i, vec2<i32>(global1.a.b.a.x, 1i), vec4<f32>(1403f, global0[_wgslsmith_index_u32(0u, 31u)], arg_2.a, global0[_wgslsmith_index_u32(18724u, 31u)]), vec3<bool>(global4[_wgslsmith_index_u32(12278u, 21u)], true, false)), 1u ^ arg_0), ~(~18753u)), 20u)]), -3282f);
    return 40525u;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    global2 = array<Struct_3, 15>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_clamp_u32(~global1.c, _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(19798u, 20u)], 94725u, u_input.a.x, 53760u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 126773u, 24299u), u_input.a), u_input.a | u_input.a)), _wgslsmith_mod_u32(~func_1(117969u, 4294967295u, Struct_2(-1142f, global3[_wgslsmith_index_u32(11082u, 20u)], global1.b), 0u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(24794u, global3[_wgslsmith_index_u32(29937u, 20u)], 0u, 0u), vec4<u32>(1476u, global1.a.b.c.e, global3[_wgslsmith_index_u32(51304u, 20u)], global3[_wgslsmith_index_u32(u_input.a.x, 20u)])))), -689f, global1.a.b.d.xz, global1.a.b.c);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(4294967295u), global1.a.b.c.c) & ~_wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a), 31u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1735f) - _wgslsmith_f_op_f32(f32(-1f) * -133f));
    let var_3 = select(!select(vec4<bool>(global1.a.b.d.x, var_0.a.x, true, true), vec4<bool>(false, global4[_wgslsmith_index_u32(21678u, 21u)], any(vec4<bool>(false, global4[_wgslsmith_index_u32(global1.c, 21u)], true, true)), !global4[_wgslsmith_index_u32(1u, 21u)]), select(select(vec4<bool>(global1.a.b.c.a.x, var_0.a.x, false, false), vec4<bool>(true, var_0.a.x, true, global4[_wgslsmith_index_u32(20066u, 21u)]), vec4<bool>(false, true, false, false)), select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 21u)], global1.a.b.d.x, var_0.a.x, global1.a.b.d.x), vec4<bool>(true, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.c, 20u)], 21u)], true, var_0.a.x), true), !vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 21u)], global1.a.b.c.a.x, global4[_wgslsmith_index_u32(10053u, 21u)], var_0.a.x))), select(vec4<bool>(all(vec2<bool>(var_0.a.x, true)), true, global1.a.b.d.x, true), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, global1.a.b.d.x), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 21u)]), vec4<bool>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4379u, 20u)], 20u)], 21u)], var_0.a.x, global4[_wgslsmith_index_u32(4294967295u, 21u)], global1.a.b.c.a.x), select(vec4<bool>(global1.a.b.c.a.x, false, global1.a.b.c.a.x, global1.a.b.d.x), vec4<bool>(false, false, true, false), global1.a.b.c.a.x)), select(!vec4<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 21u)], true, var_0.a.x), !vec4<bool>(var_0.a.x, false, global1.a.b.c.a.x, true), !global4[_wgslsmith_index_u32(46490u, 21u)]), !select(vec4<bool>(global1.a.b.c.a.x, global4[_wgslsmith_index_u32(67349u, 21u)], var_0.a.x, false), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 21u)], false, false), false)), select(~global1.c <= (52713u | var_0.c), !(!global4[_wgslsmith_index_u32(global1.c, 21u)]), select(global4[_wgslsmith_index_u32(var_0.e, 21u)] && global4[_wgslsmith_index_u32(0u, 21u)], any(vec3<bool>(false, global4[_wgslsmith_index_u32(var_0.e, 21u)], global4[_wgslsmith_index_u32(29323u, 21u)])), false))), vec4<bool>(true, false, !global1.a.b.c.a.x, global4[_wgslsmith_index_u32(u_input.a.x | 4294967295u, 21u)]));
    let var_4 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(353f, _wgslsmith_f_op_f32(-global1.a.a.x)))), Struct_3(vec3<i32>(-17808i, global1.a.b.a.x, global1.a.b.a.x) << (~vec3<u32>(var_0.c, global1.c, 1233u) % vec3<u32>(32u)), _wgslsmith_mult_u32(var_0.e, func_1(0u, 4294967295u, Struct_2(global1.b, global3[_wgslsmith_index_u32(global1.a.b.c.c, 20u)], 532f), u_input.a.x)), func_4(u_input.a.x, 521f, vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 21u)], var_0.a.x), Struct_1(var_3.xx, global0[_wgslsmith_index_u32(var_0.c, 31u)], u_input.a.x, var_0.b, 283u)), vec3<bool>(global1.a.b.a.x <= global1.a.b.a.x, any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, global1.a.b.c.a.x)), any(var_3.zwz)), global1.a.b.e)), -429f, 29787u & (~(~23638u) >> (_wgslsmith_clamp_u32(max(global1.a.b.c.e, global1.c), abs(global1.c), ~65391u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(1u, 405f, !select(select(vec2<bool>(false, global1.a.b.d.x), vec2<bool>(global1.a.b.d.x, var_4.a.b.c.a.x), global1.a.b.c.a.x), vec2<bool>(true, true), all(var_0.a)), var_0).b, ~(~firstLeadingBit(global3[_wgslsmith_index_u32(u_input.a.x, 20u)])), ~u_input.a.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, var_4.b, -782f) * vec3<f32>(var_0.b, -205f, global1.a.b.e.x)) * vec3<f32>(406f, -540f, 104f))))));
}

