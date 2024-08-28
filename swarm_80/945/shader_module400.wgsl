struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(1u, 26858u, 0u, 1u, 93088u, 4294967295u, 0u, 1u, 48812u, 13987u);

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-1i, 0i), vec2<i32>(1i, 35530i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1124i, 26837i), vec2<i32>(0i, -1758i), vec2<i32>(13322i, 3466i), vec2<i32>(74333i, -1i), vec2<i32>(-18851i, 2147483647i), vec2<i32>(0i, 23089i), vec2<i32>(-29984i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(-22298i, -30138i), vec2<i32>(-1i, -29425i), vec2<i32>(-1i, 1i), vec2<i32>(43342i, 58114i), vec2<i32>(-34304i, 40281i));

var<private> global2: array<bool, 16> = array<bool, 16>(false, false, true, false, false, false, false, false, true, false, false, false, true, true, true, true);

var<private> global3: Struct_1 = Struct_1(false, vec4<f32>(-178f, 384f, -2352f, -1098f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = firstLeadingBit(-vec2<i32>(4246i, u_input.c.x));
    global0 = array<u32, 10>();
    var var_1 = abs(u_input.c.yy);
    let var_2 = Struct_1(!(any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b, 16u)], false)) == true), vec4<f32>(_wgslsmith_f_op_f32(2410f + _wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(-global3.b.x)), -793f, global3.b.x));
    let var_3 = var_1.x;
    return vec2<bool>(any(vec3<bool>(true, false, true)), false);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global3.b))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b)), _wgslsmith_f_op_vec4_f32(-global3.b), all(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(101061u, 10u)], 10u)], 16u)])))))));
    var var_1 = Struct_1(all(func_3()), _wgslsmith_f_op_vec4_f32(trunc(global3.b)));
    let var_2 = firstTrailingBit(_wgslsmith_sub_vec4_u32(abs(firstTrailingBit(vec4<u32>(4294967295u, 33626u, global0[_wgslsmith_index_u32(u_input.b, 10u)], 4294967295u))), vec4<u32>(~global0[_wgslsmith_index_u32(4603u, 10u)], 20693u, u_input.d, ~global0[_wgslsmith_index_u32(u_input.d, 10u)]) ^ (vec4<u32>(0u, 66720u, u_input.d, 4431u) ^ vec4<u32>(19773u, u_input.b, u_input.b, 29920u))));
    var var_3 = any(!select(vec3<bool>(true, any(vec2<bool>(true, true)), var_1.a), select(select(vec3<bool>(false, var_1.a, global2[_wgslsmith_index_u32(1u, 16u)]), vec3<bool>(global2[_wgslsmith_index_u32(26341u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], var_1.a), var_1.a), !vec3<bool>(var_1.a, global2[_wgslsmith_index_u32(var_2.x, 16u)], false), var_1.a), !global3.a == global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 78643u), 16u)]));
    var_3 = all(select(!vec2<bool>(true, func_3().x), select(select(!vec2<bool>(global3.a, var_1.a), !vec2<bool>(global2[_wgslsmith_index_u32(0u, 16u)], true), false), vec2<bool>(select(false, var_1.a, global3.a), global3.a), func_3().x), select(vec2<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 16u)], false)), false || var_1.a), func_3(), vec2<bool>(true, select(true, var_1.a, global2[_wgslsmith_index_u32(3675u, 16u)])))));
    return Struct_1((false != var_1.a) || (var_2.x <= ~(u_input.d << (u_input.d % 32u))), var_0);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    global3 = Struct_1(any(!vec4<bool>(global2[_wgslsmith_index_u32(max(u_input.b, 47793u), 16u)], !global3.a, true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 10u)]), 16u)])), vec4<f32>(-343f, -539f, _wgslsmith_f_op_f32(-1325f - global3.b.x), global3.b.x));
    global2 = array<bool, 16>();
    global2 = array<bool, 16>();
    var var_1 = !select(vec4<bool>(true, !(u_input.a > u_input.a), (var_0.b.x != 1960f) || any(vec2<bool>(var_0.a, true)), true), select(select(!vec4<bool>(var_0.a, false, false, global2[_wgslsmith_index_u32(u_input.d, 16u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 16u)], global3.a, var_0.a, global3.a), vec4<bool>(true, var_0.a, true, true), var_0.a), !global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 16u)]), vec4<bool>(any(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 16u)], true)), global3.a || var_0.a, true, all(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69493u, 10u)], 16u)]))), any(select(vec3<bool>(global2[_wgslsmith_index_u32(10195u, 16u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 16u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27231u, 10u)], 16u)], true), vec3<bool>(var_0.a, true, true)))), !select(vec4<bool>(false, false, var_0.a, true), !vec4<bool>(true, var_0.a, global3.a, global3.a), false));
    return Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, -689f, var_0.b.x, _wgslsmith_f_op_f32(floor(-395f))) - vec4<f32>(809f, global3.b.x, _wgslsmith_f_op_f32(var_0.b.x + 861f), _wgslsmith_f_op_f32(global3.b.x * var_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 10>();
    var var_0 = func_1();
    let var_1 = vec4<bool>(all(vec3<bool>(false | var_0.a, select(global2[_wgslsmith_index_u32(u_input.d, 16u)], global2[_wgslsmith_index_u32(u_input.d, 16u)], var_0.a), var_0.a | global2[_wgslsmith_index_u32(4294967295u, 16u)])) != global3.a, all(select(vec2<bool>(true, true), vec2<bool>(true, true), !(!vec2<bool>(true, var_0.a)))), !var_0.a, var_0.a);
    global1 = array<vec2<i32>, 16>();
    var var_2 = abs(abs(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29111u, 10u)], 10u)] % 32u), 10u)], _wgslsmith_add_u32(abs(40681u), 8862u), _wgslsmith_mod_u32(~20665u, ~global0[_wgslsmith_index_u32(59597u, 10u)]), u_input.b)));
    var var_3 = var_2.zwy | (vec3<u32>(global0[_wgslsmith_index_u32(6170u ^ (var_2.x & global0[_wgslsmith_index_u32(var_2.x, 10u)]), 10u)], var_2.x, 4294967295u) & vec3<u32>(2231u, 1u, global0[_wgslsmith_index_u32(var_2.x, 10u)]));
    let var_4 = global3.b.xx;
    let x = u_input.a;
    s_output = StorageBuffer(62777u << (_wgslsmith_clamp_u32(6397u, var_3.x, var_3.x) % 32u), ~vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(var_3.x, 16u)], vec2<i32>(-40431i, -2147483647i))), _wgslsmith_div_i32(1i, ~u_input.c.x)), _wgslsmith_clamp_i32(-501i, abs(firstTrailingBit(u_input.a & -46821i)), 1i));
}

