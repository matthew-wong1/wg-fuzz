struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(1u, vec2<i32>(-23690i, i32(-2147483648)), vec4<u32>(0u, 4294967295u, 32372u, 64962u));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = Struct_1(select(vec4<bool>(true, any(select(vec2<bool>(true, global0.a.x), vec2<bool>(false, global0.a.x), vec2<bool>(global2.a.x, true))), any(select(global2.a.wxy, vec3<bool>(global2.a.x, global0.a.x, true), vec3<bool>(false, global2.a.x, global0.a.x))), true), select(!select(global2.a, global0.a, global0.a.x), !(!vec4<bool>(global2.a.x, false, false, global0.a.x)), vec4<bool>(false, false, global0.a.x & true, global0.a.x & global0.a.x)), !(!select(vec4<bool>(global2.a.x, false, true, global2.a.x), global2.a, vec4<bool>(true, global0.a.x, true, true)))), ~(~vec2<u32>(global0.b.x, countOneBits(0u))));
    let var_0 = u_input.a;
    global2 = Struct_1(select(global0.a, vec4<bool>(true != (global2.a.x && false), all(global0.a), global2.a.x, global0.a.x), !select(vec4<bool>(false, global0.a.x, false, false), select(global2.a, global2.a, vec4<bool>(true, true, false, global2.a.x)), global2.a)), ~global0.b >> (global2.b % vec2<u32>(32u)));
    var var_1 = Struct_1(global0.a, var_0.yx);
    var_1 = Struct_1(select(select(!(!global2.a), var_1.a, true), global2.a, vec4<bool>(true, var_1.a.x, true, false)), var_0.zy);
    return _wgslsmith_f_op_f32(f32(-1f) * -1125f);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1011f, 210f))), _wgslsmith_f_op_f32(min(2323f, _wgslsmith_f_op_f32(f32(-1f) * -559f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f * 884f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-1049f * -1000f))))));
    let var_1 = Struct_1(vec4<bool>(global2.a.x, -704f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1i)) * _wgslsmith_f_op_f32(-424f + 268f)), false, global0.a.x), abs(_wgslsmith_mult_vec2_u32(u_input.a.yz, select(select(u_input.b, vec2<u32>(4294967295u, 1u), vec2<bool>(global2.a.x, global0.a.x)), vec2<u32>(u_input.a.x, u_input.a.x), global2.a.x))));
    var var_2 = _wgslsmith_sub_u32(u_input.a.x >> (min(abs(1u), _wgslsmith_sub_u32(~0u, reverseBits(1u))) % 32u), 1u);
    let var_3 = countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x | 10856u, 49215u >> (1u % 32u), 5910u << (u_input.a.x % 32u), 0u) << (global1.c % vec4<u32>(32u)), abs(~global1.c)));
    var var_4 = ~(-max(vec4<i32>(2147483647i, -1i, u_input.c.x, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(global1.b.x, u_input.c.x, -17025i, u_input.c.x), vec4<i32>(0i, 29130i, 0i, arg_0)))) << ((var_3 << (~vec4<u32>(var_1.b.x, 0u, 1u, ~0u) % vec4<u32>(32u))) % vec4<u32>(32u));
    return Struct_1(select(!vec4<bool>(true, var_1.a.x, select(false, global2.a.x, var_1.a.x), true), vec4<bool>(global0.a.x, false, !any(vec3<bool>(false, global0.a.x, false)), true), select(!select(vec4<bool>(false, true, var_1.a.x, true), global0.a, vec4<bool>(global2.a.x, true, var_1.a.x, var_1.a.x)), select(select(var_1.a, var_1.a, true), vec4<bool>(global0.a.x, true, global0.a.x, false), vec4<bool>(var_1.a.x, true, true, var_1.a.x)), all(!vec4<bool>(var_1.a.x, global0.a.x, global2.a.x, global2.a.x)))), ~max(firstLeadingBit(var_3.wx), global2.b));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_2 {
    global0 = func_2(~_wgslsmith_div_i32(global1.b.x, _wgslsmith_div_i32(~u_input.c.x, -1i & u_input.c.x)));
    let var_0 = false;
    global0 = func_2(firstTrailingBit(-1i) | reverseBits(-1i));
    let var_1 = _wgslsmith_mod_vec3_u32(countOneBits(min(~u_input.a, ~global1.c.yxw)), global1.c.xxx) << (firstLeadingBit(vec3<u32>(~(~global2.b.x), global1.a, select(global1.c.x, _wgslsmith_div_u32(31964u, u_input.b.x), true))) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * -203f);
    return Struct_2(~select(53680u, u_input.b.x, !all(global0.a.wwy)), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -global1.b, vec2<i32>(u_input.c.x, global1.b.x) | countOneBits(u_input.c.yy)), -(-vec2<i32>(-23312i, u_input.c.x) >> (firstLeadingBit(vec2<u32>(42820u, 4294967295u)) % vec2<u32>(32u)))), global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0i << (global2.b.x % 32u);
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-678f, -1211f)) * 784f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1046f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - -135f), -1821f, !global0.a.x)))), false);
    var var_2 = all(select(vec2<bool>(true && (var_1.b.x <= var_1.b.x), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, global0.a.x)))), select(select(select(vec2<bool>(global2.a.x, false), global0.a.wy, vec2<bool>(false, global0.a.x)), func_2(var_1.b.x).a.zx, global0.b.x > var_1.a), select(vec2<bool>(false, global0.a.x), global2.a.wy, global2.a.wx), vec2<bool>(true, true)), true));
    var var_3 = any(select(global0.a.zw, select(func_2(-2147483647i).a.ww, func_2(-var_1.b.x).a.zx, vec2<bool>(true, true)), func_2(-40457i).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, 14316u, ~u_input.b.x, _wgslsmith_mod_u32(global2.b.x & 0u, ~var_1.c.x)), var_1.c.xz, var_1.c, ~(-2147483647i << (0u % 32u)));
}

