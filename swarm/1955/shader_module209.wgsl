struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 19> = array<bool, 19>(true, false, true, true, true, true, false, true, true, true, true, false, false, true, true, false, true, true, true);

var<private> global2: bool;

var<private> global3: array<bool, 10>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(global0.a, select(!arg_0.e.b, !vec4<bool>(all(global0.b), any(global0.b), true || arg_0.b, false), global0.b));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(159f - 708f), -862f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -350f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = Struct_1(vec2<bool>(global0.a.x, all(arg_0.e.b.zzy)), vec4<bool>(true, true, global0.b.x, !any(!global0.b)));
    let var_2 = Struct_1(select(!select(!global0.a, !var_0.b.yx, !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(49171u, 10u)])), !select(select(var_0.b.ww, vec2<bool>(true, global1[_wgslsmith_index_u32(53820u, 19u)]), true), global0.a, select(global0.b.zz, var_0.a, global0.a.x)), !(var_0.b.x | (global0.b.x & global3[_wgslsmith_index_u32(1u, 10u)]))), !select(arg_0.d, select(select(vec4<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 10u)], true), vec4<bool>(true, true, false, true), true), select(global0.b, arg_0.d, vec4<bool>(true, global3[_wgslsmith_index_u32(24060u, 10u)], arg_0.e.b.x, false)), select(vec4<bool>(global3[_wgslsmith_index_u32(41149u, 10u)], arg_0.b, global1[_wgslsmith_index_u32(1u, 19u)], var_0.b.x), vec4<bool>(global3[_wgslsmith_index_u32(23410u, 10u)], true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], true, true, global1[_wgslsmith_index_u32(1u, 19u)]))), !vec4<bool>(false, arg_0.b, false, arg_0.b)));
    global2 = false;
    return select(select(var_0.b.wy, vec2<bool>(true, true), true), vec2<bool>(true, arg_0.e.a.x && !var_0.a.x), global0.b.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = !select(!(!func_3(Struct_2(global0.b.x, global0.a.x, Struct_1(global0.b.wz, global0.b), global0.b, Struct_1(vec2<bool>(global3[_wgslsmith_index_u32(1u, 10u)], true), global0.b)))), global0.b.xy, global0.a);
    global3 = array<bool, 10>();
    return Struct_2(all(global0.b.yxx), select(true, true, global1[_wgslsmith_index_u32(arg_0.x, 19u)]), Struct_1(vec2<bool>(global3[_wgslsmith_index_u32(min(52678u, 1u), 10u)] && var_0.x, true || global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(12393u, arg_0.x), 19u)]), select(vec4<bool>(false || global1[_wgslsmith_index_u32(arg_0.x, 19u)], any(global0.b), true, false), global0.b, true)), global0.b, Struct_1(vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 10u)], true), vec4<bool>((-2147483647i << (arg_0.x % 32u)) != firstLeadingBit(3635i), any(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 19u)], var_0.x, false, global3[_wgslsmith_index_u32(arg_0.x, 10u)])), all(!vec4<bool>(var_0.x, false, var_0.x, global3[_wgslsmith_index_u32(arg_0.x, 10u)])), false)));
}

fn func_1() -> Struct_3 {
    global2 = !any(global0.a);
    var var_0 = Struct_3(func_2(~vec4<u32>(31513u, ~0u, reverseBits(4442u), ~0u)), u_input.a, ~vec4<u32>(33770u, ~20502u, abs(1u), ~42224u), func_2(vec4<u32>(abs(reverseBits(0u)), max(64756u, ~0u), abs(0u), _wgslsmith_sub_u32(53731u, ~4294967295u))));
    var var_1 = var_0.a.c;
    var var_2 = -var_0.b;
    global1 = array<bool, 19>();
    return Struct_3(Struct_2(var_2.x <= var_0.b.x, global0.a.x, var_0.d.c, var_0.d.c.b, Struct_1(vec2<bool>(select(global1[_wgslsmith_index_u32(4294967295u, 19u)], true, global0.b.x), !var_0.a.b), vec4<bool>(true, false && global0.b.x, any(vec2<bool>(var_0.d.e.b.x, var_1.b.x)), var_1.a.x))), vec2<i32>(u_input.a.x, var_0.b.x), vec4<u32>(var_0.c.x, var_0.c.x, 76039u, _wgslsmith_add_u32(40473u, ~_wgslsmith_mult_u32(30203u, var_0.c.x))), func_2(_wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(var_0.c.x, 0u, var_0.c.x, 4294967295u)), var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -668f;
    let var_1 = func_1();
    let var_2 = var_1.d.c;
    let var_3 = func_1().d;
    var var_4 = abs(select(vec3<i32>(-2147483647i | max(-20943i, var_1.b.x), 0i, -1i), vec3<i32>(var_1.b.x, -11103i, -1i), global1[_wgslsmith_index_u32(27981u, 19u)]));
    var var_5 = abs(_wgslsmith_clamp_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-10174i, 18431i, u_input.a.x), vec3<i32>(37511i, u_input.a.x, 579i)) & ~(-vec3<i32>(var_1.b.x, var_4.x, -43372i)), countOneBits(abs(~vec3<i32>(-28922i, var_1.b.x, 2147483647i))), vec3<i32>(max(reverseBits(-1i), u_input.a.x), -10287i, -54995i)));
    let var_6 = -30287i;
    global3 = array<bool, 10>();
    let var_7 = ~countOneBits(var_1.c.wx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-263f, _wgslsmith_f_op_f32(-1526f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) * var_0)), -1078f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), var_5.xz, _wgslsmith_f_op_f32(-var_0), ~countOneBits(var_1.c.x), 21986u);
}

