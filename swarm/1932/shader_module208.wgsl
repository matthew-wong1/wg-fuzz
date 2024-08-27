struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_0.a;
    global0 = array<bool, 8>();
    var var_1 = arg_0.a;
    global0 = array<bool, 8>();
    var var_2 = arg_2;
    return 4294967295u;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec2<f32>) -> bool {
    global0 = array<bool, 8>();
    var var_0 = _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) * arg_1.x))));
    let var_1 = Struct_2(Struct_1(arg_2.yy), !global0[_wgslsmith_index_u32(4294967295u, 8u)], vec2<u32>(_wgslsmith_add_u32(~(~0u), 1u), _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_mult_u32(0u, 8597u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(11128u, 4294967295u), min(vec2<u32>(15036u, 4294967295u), vec2<u32>(0u, 0u))))), _wgslsmith_mod_u32(5166u, 73776u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-323f * 845f), _wgslsmith_f_op_f32(arg_3.x + arg_2.x))))))));
    return var_1.b && !arg_0.x;
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 8>();
    let var_0 = select(vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(18229u, 8u)], !global0[_wgslsmith_index_u32(1u, 8u)])), global0[_wgslsmith_index_u32(63904u, 8u)]), select(select(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]), false), vec2<bool>(u_input.a.x > -2147483647i, true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~54125u, 40976u), 8u)]), vec2<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(12683u, 8u)], true)), _wgslsmith_f_op_f32(trunc(-135f)) > -791f), global0[_wgslsmith_index_u32(~reverseBits(func_2(Struct_2(Struct_1(vec2<f32>(1193f, -1000f)), false, vec2<u32>(0u, 4294967295u), 27472u), u_input.a.x, Struct_1(vec2<f32>(1040f, 1686f)))), 8u)]), vec2<bool>(any(!select(vec4<bool>(global0[_wgslsmith_index_u32(47092u, 8u)], false, false, global0[_wgslsmith_index_u32(80268u, 8u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(75387u, 8u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(20956u, 8u)], false, false))), (false | func_3(vec4<bool>(false, global0[_wgslsmith_index_u32(47472u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], true), vec3<f32>(1393f, -389f, -677f), vec3<f32>(587f, 262f, 335f), vec2<f32>(-441f, -279f))) && !global0[_wgslsmith_index_u32(66058u, 8u)]));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(414f, -552f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1513f, var_1.a.x)));
    let var_3 = min(u_input.a.x, u_input.a.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.a.x)), var_1.a.x)))), true, firstTrailingBit(vec2<u32>(39226u >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 31350u), vec2<u32>(1u, 7142u))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(15532u, 31653u), firstTrailingBit(vec2<u32>(2474u, 4294967295u))) % vec2<u32>(32u))), ~1u);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.a.x - arg_3.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a.a.x, -3049f)) - arg_2.a.a.x)), arg_2.a.a.x));
    var_0 = func_1().a;
    var var_1 = var_0.a.x;
    let var_2 = firstLeadingBit(~4294967295u);
    let var_3 = arg_2;
    return Struct_1(_wgslsmith_f_op_vec2_f32(trunc(var_3.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(min(-130f, 435f))))), _wgslsmith_f_op_f32(-1917f + -695f)));
    var_0 = func_4(-57491i >> (~(~0u | select(4294967295u, 27042u, false)) % 32u), select(_wgslsmith_div_vec3_u32(firstLeadingBit(countOneBits(vec3<u32>(1u, 65499u, 1u))), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(vec3<u32>(1u, firstLeadingBit(8983u), 1u)), !vec3<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 8u)], true, global0[_wgslsmith_index_u32(1373u, 8u)])), all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 8u)], false)), all(vec4<bool>(global0[_wgslsmith_index_u32(11949u, 8u)], global0[_wgslsmith_index_u32(13451u, 8u)], false, global0[_wgslsmith_index_u32(28275u, 8u)])))), func_1(), func_1().a);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(889f, var_0.a.x) - -753f), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -665f)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -444f, _wgslsmith_f_op_f32(f32(-1f) * -1339f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -672f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.a.x)), func_1().a.a.x, -1011f, func_4(1i, _wgslsmith_mod_vec3_u32(vec3<u32>(8412u, 0u, 5664u), vec3<u32>(4294967295u, 2919u, 38515u)), func_1(), func_4(u_input.a.x, vec3<u32>(43123u, 4294967295u, 0u), Struct_2(Struct_1(vec2<f32>(1000f, var_0.a.x)), true, vec2<u32>(0u, 15003u), 4294967295u), Struct_1(var_0.a))).a.x) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1300f, -617f, 1040f))))))));
    var var_2 = !select(!select(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 8u)], true, true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(36924u, 8u)], false, global0[_wgslsmith_index_u32(9302u, 8u)]), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(0u, 8u)]), true), vec4<bool>(false, global0[_wgslsmith_index_u32(2911u, 8u)], true, global0[_wgslsmith_index_u32(2445u, 8u)])), vec4<bool>(func_3(vec4<bool>(false, true, true, true), var_1.xzx, var_1.zzz, func_4(u_input.a.x, vec3<u32>(9362u, 45099u, 4294967295u), Struct_2(Struct_1(var_0.a), global0[_wgslsmith_index_u32(1u, 8u)], vec2<u32>(0u, 0u), 36902u), Struct_1(vec2<f32>(1000f, var_1.x))).a), true, false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(~1u, 8u)], true, var_0.a.x >= _wgslsmith_f_op_f32(-var_0.a.x)));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -354f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2331f, 1272f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a.x, var_1.x))))))));
    let var_3 = func_1().a;
    var var_4 = Struct_2(var_3, var_2.x, ~firstLeadingBit(abs(min(vec2<u32>(105823u, 4294967295u), vec2<u32>(1u, 69356u)))), firstTrailingBit(_wgslsmith_mult_u32(27090u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(16137u, 64304u), vec2<u32>(93597u, 0u)))));
    var_2 = !select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_4.c.x, 8u)], true, var_4.b), !(!select(vec4<bool>(var_4.b, false, var_2.x, false), vec4<bool>(global0[_wgslsmith_index_u32(var_4.d, 8u)], global0[_wgslsmith_index_u32(var_4.d, 8u)], true, global0[_wgslsmith_index_u32(var_4.c.x, 8u)]), vec4<bool>(var_4.b, global0[_wgslsmith_index_u32(var_4.d, 8u)], false, var_4.b))), select(!select(vec4<bool>(false, false, var_2.x, global0[_wgslsmith_index_u32(20276u, 8u)]), vec4<bool>(true, true, var_2.x, var_4.b), vec4<bool>(var_2.x, true, true, var_4.b)), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 8u)], false, false), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(0u, 8u)])), select(vec4<bool>(true, true, var_4.b, var_4.b), vec4<bool>(global0[_wgslsmith_index_u32(var_4.c.x, 8u)], true, false, false), select(vec4<bool>(var_2.x, var_4.b, true, true), vec4<bool>(var_2.x, global0[_wgslsmith_index_u32(var_4.d, 8u)], false, true), true))));
    var var_5 = ~(-u_input.a.zz);
    let x = u_input.a;
    s_output = StorageBuffer(abs(1i), (59802u ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(35468u, var_4.c.x, 38327u), vec3<u32>(104224u, var_4.c.x, 0u)) & (36006u | var_4.c.x))) & var_4.c.x, ~countOneBits(vec4<u32>(select(var_4.d, 0u, true), var_4.c.x, max(var_4.c.x, var_4.c.x), 0u)), ~vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_5.x, var_5.x), u_input.a.zx & u_input.a.xx), 32953i, ~max(0i, -29419i)));
}

