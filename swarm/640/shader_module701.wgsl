struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 29>;

var<private> global2: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    return ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(26935u, 4294967295u)), global0.a.xx));
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    global0 = Struct_1(~_wgslsmith_sub_vec3_u32(~vec3<u32>(global0.a.x, 18420u, 53843u), vec3<u32>(u_input.a, global0.a.x, arg_0.a.x)) << (vec3<u32>(1u, 0u, 1u) % vec3<u32>(32u)), firstTrailingBit(firstTrailingBit(arg_0.b)) >> (max(~(~4294967295u), u_input.a) % 32u), vec4<u32>(~(~1u), func_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(610f, -815f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1016f, 715f))))), 146u, ~firstLeadingBit(global0.c.x >> (u_input.a % 32u))));
    global2 = array<bool, 1>();
    global0 = arg_0;
    let var_0 = Struct_4(arg_0, Struct_2(Struct_1(vec3<u32>(27472u, 0u, u_input.c.x) >> (firstLeadingBit(vec3<u32>(8095u, 86530u, arg_0.a.x)) % vec3<u32>(32u)), firstLeadingBit(u_input.b.x), ~_wgslsmith_add_vec4_u32(arg_0.c, vec4<u32>(u_input.c.x, u_input.a, arg_0.c.x, 1u))), arg_0.a.zy), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global1[_wgslsmith_index_u32(global0.c.x, 29u)])), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -570f), _wgslsmith_f_op_f32(-1000f + -1480f), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], true, global2[_wgslsmith_index_u32(u_input.a, 1u)], true)))), _wgslsmith_f_op_f32(-797f * 707f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(131f, 417f)), 1f))), select(!vec3<bool>(true, global2[_wgslsmith_index_u32(global0.a.x, 1u)], global2[_wgslsmith_index_u32(global0.a.x, 1u)]), vec3<bool>(select(true, global2[_wgslsmith_index_u32(14594u, 1u)], global2[_wgslsmith_index_u32(global0.c.x, 1u)]), true, all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], false))), all(select(vec2<bool>(global2[_wgslsmith_index_u32(58925u, 1u)], global2[_wgslsmith_index_u32(arg_0.a.x, 1u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(arg_0.c.x, 1u)]), vec2<bool>(false, false)))))), arg_0);
    global0 = arg_0;
    return vec3<f32>(var_0.c.x, -107f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> bool {
    let var_0 = arg_2.zyy;
    let var_1 = Struct_4(Struct_1(vec3<u32>(45030u, max(10327u, u_input.c.x), ~u_input.c.x), 20160i, vec4<u32>(~arg_1.c.x, ~(~127906u), _wgslsmith_add_u32(global0.c.x, u_input.a), _wgslsmith_add_u32(~1u, arg_1.a.x))), Struct_2(Struct_1(u_input.c.yyy << ((vec3<u32>(global0.a.x, 18471u, u_input.a) >> (arg_1.a % vec3<u32>(32u))) % vec3<u32>(32u)), 24469i, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(13737u, u_input.c.x, u_input.a, global0.a.x), vec4<u32>(arg_1.c.x, 6547u, 130283u, arg_1.a.x)), abs(global0.c))), select(~max(u_input.c.xx, arg_1.c.wy), ~(~vec2<u32>(4294967295u, 10559u)), (false || global2[_wgslsmith_index_u32(4294967295u, 1u)]) | (arg_0 > arg_0))), _wgslsmith_f_op_vec3_f32(func_2(arg_1)), Struct_1(u_input.c.wzz, -firstTrailingBit(firstTrailingBit(2147483647i)), vec4<u32>(1174u, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(542f, -1524f) * vec2<f32>(-953f, arg_0))), 1u, ~_wgslsmith_dot_vec2_u32(global0.c.zw, vec2<u32>(0u, 28561u)))));
    var var_2 = global2[_wgslsmith_index_u32(99376u, 1u)];
    var var_3 = abs(-22257i);
    global1 = array<vec3<f32>, 29>();
    return !(!(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, u_input.a, 25054u, 58997u), global0.c), min(arg_1.c.x, 73486u)) != arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(!vec4<bool>(false, all(vec3<bool>(true, false, false)), false, func_1(412f, Struct_1(vec3<u32>(0u, 1u, global0.c.x), global0.b, vec4<u32>(1u, global0.c.x, 1u, 59736u)), vec4<i32>(-16641i, 2147483647i, global0.b, global0.b), -1194f))), false, !global2[_wgslsmith_index_u32(2510u, 1u)]);
    let var_1 = Struct_4(Struct_1(countOneBits(u_input.c.xyz) & select(global0.a << (global0.a % vec3<u32>(32u)), reverseBits(global0.a), vec3<bool>(global2[_wgslsmith_index_u32(global0.c.x, 1u)], true, global2[_wgslsmith_index_u32(u_input.c.x, 1u)])), u_input.b.x, vec4<u32>(15167u, ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_mult_u32(u_input.a, 1u), u_input.a)), Struct_2(Struct_1((u_input.c.xww << (global0.a % vec3<u32>(32u))) | ~vec3<u32>(u_input.a, 1u, 10285u), 1i, _wgslsmith_div_vec4_u32(u_input.c, ~u_input.c)), _wgslsmith_mod_vec2_u32(abs(~u_input.c.xy), vec2<u32>(u_input.c.x, ~0u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-308f - _wgslsmith_div_f32(-246f, 295f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f) + _wgslsmith_f_op_f32(1303f + 1630f)), _wgslsmith_f_op_f32(select(1072f, _wgslsmith_f_op_f32(1000f - -1000f), !var_0.x)))), Struct_1(vec3<u32>(~reverseBits(u_input.a), func_3(vec2<f32>(-1000f, -530f)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 87519u, 33414u, 0u), global0.c) % 32u), ~1u), ~2147483647i, global0.c));
    var var_2 = var_1.d.a.xx;
    var var_3 = var_2.x;
    global0 = Struct_1(var_1.d.c.wyx, i32(-1i) * -42699i, _wgslsmith_div_vec4_u32(min(vec4<u32>(var_2.x & 85988u, u_input.a, 0u, ~2508u), ~_wgslsmith_add_vec4_u32(global0.c, var_1.a.c)), vec4<u32>(firstLeadingBit(min(51898u, 0u)), firstTrailingBit(~21570u), global0.c.x, ~u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_clamp_u32(~26959u, 82065u, max(var_2.x, global0.c.x)) & 1u), 16580u);
}

