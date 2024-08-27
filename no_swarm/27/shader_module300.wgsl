struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(0i, true, i32(-2147483648)), Struct_1(23227i, false, -1i), Struct_1(5413i, true, 1i), Struct_1(53323i, false, -1i), Struct_1(-3418i, true, 2147483647i), Struct_1(-22349i, false, 35288i), Struct_1(71786i, false, 1i), Struct_1(i32(-2147483648), false, -2057i), Struct_1(15549i, true, 0i), Struct_1(-7032i, false, -9556i), Struct_1(-20948i, true, 95983i), Struct_1(1571i, true, -1i), Struct_1(1i, true, i32(-2147483648)), Struct_1(2147483647i, false, i32(-2147483648)), Struct_1(31426i, false, -1i), Struct_1(7683i, true, 1i));

var<private> global2: vec2<f32> = vec2<f32>(604f, 1577f);

var<private> global3: Struct_1 = Struct_1(i32(-2147483648), true, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, arg_1)), arg_1), vec2<bool>(min(_wgslsmith_mult_i32(-40178i, u_input.a), _wgslsmith_clamp_i32(27930i, u_input.d.x, global3.c)) == max(abs(120539i), -u_input.a), global3.b));
    global0 = array<vec2<f32>, 11>();
    var var_1 = global1[_wgslsmith_index_u32(~(~firstTrailingBit(u_input.c.x)), 16u)];
    global0 = array<vec2<f32>, 11>();
    var var_2 = ~_wgslsmith_add_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-83683i, 0i), u_input.d.zw), var_1.a), vec2<i32>(u_input.d.x | global3.c, -7925i) | (-vec2<i32>(-45880i, -2147483647i) & select(vec2<i32>(-33585i, 2147483647i), vec2<i32>(-39558i, arg_0.c), vec2<bool>(var_1.b, true))));
    return select(vec3<bool>(global3.b || false, !(!(!arg_0.b)), false), select(!select(!vec3<bool>(var_0.x, arg_0.b, false), select(vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, false, false), var_0.x), select(vec3<bool>(false, true, global3.b), vec3<bool>(true, var_1.b, true), false)), !(!(!vec3<bool>(arg_1, var_0.x, global3.b))), any(vec3<bool>(var_1.b & arg_0.b, var_1.b, all(vec2<bool>(true, true))))), select(!any(select(vec2<bool>(arg_1, var_0.x), vec2<bool>(true, false), vec2<bool>(arg_1, var_0.x))), global3.b, !(-1754f >= _wgslsmith_f_op_f32(min(global2.x, -1128f)))));
}

fn func_2() -> i32 {
    let var_0 = ~u_input.c;
    var var_1 = true;
    global3 = global1[_wgslsmith_index_u32(u_input.c.x, 16u)];
    let var_2 = vec2<u32>(~var_0.x, 89642u >> (u_input.c.x % 32u));
    var var_3 = select(select(select(!vec3<bool>(global3.b, global3.b, global3.b), select(!vec3<bool>(true, global3.b, global3.b), !vec3<bool>(false, false, global3.b), !vec3<bool>(global3.b, true, true)), global3.b), !select(select(vec3<bool>(false, true, global3.b), vec3<bool>(global3.b, true, global3.b), global3.b), func_3(Struct_1(u_input.d.x, global3.b, global3.a), true), any(vec3<bool>(global3.b, false, global3.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(353f + global2.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x))), !(!vec3<bool>(global3.b && global3.b, false, select(true, true, false))), !select(!(!vec3<bool>(global3.b, global3.b, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, global3.b), vec3<bool>(global3.b, global3.b, global3.b), vec3<bool>(false, global3.b, global3.b)), select(vec3<bool>(global3.b, global3.b, true), vec3<bool>(true, global3.b, global3.b), vec3<bool>(false, true, global3.b))), any(!vec3<bool>(global3.b, true, true))));
    return -27498i;
}

fn func_1() -> Struct_1 {
    let var_0 = any(!vec3<bool>(global3.b, _wgslsmith_f_op_f32(858f - global2.x) < -2070f, u_input.d.x == 1i));
    var var_1 = abs(-vec3<i32>(min(global3.a, func_2()), u_input.d.x, ~min(global3.a, u_input.a)));
    var var_2 = Struct_1(~(_wgslsmith_clamp_i32(~u_input.d.x, 1i, countOneBits(-49506i)) | var_1.x), true, -12418i);
    let var_3 = abs(~var_1.yy);
    let var_4 = global1[_wgslsmith_index_u32(~u_input.c.x, 16u)];
    return Struct_1(12829i, global2.x != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))), -503i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1();
    var var_0 = _wgslsmith_div_vec2_u32(u_input.c.zz, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, u_input.c.x), u_input.c.zx, false) & _wgslsmith_clamp_vec2_u32(vec2<u32>(50403u, u_input.c.x), u_input.c.xy, vec2<u32>(0u, 17223u)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.yx, vec2<u32>(u_input.b, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, 32605u)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(5799u, 51715u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 34676u), vec2<u32>(35602u, 0u)) ^ (u_input.c.xy & u_input.c.yx), _wgslsmith_add_vec2_u32(u_input.c.yy, ~vec2<u32>(55824u, 22133u))), vec2<u32>(firstLeadingBit(u_input.c.x), 29293u)));
    var var_1 = global1[_wgslsmith_index_u32(47725u << (u_input.c.x % 32u), 16u)];
    let var_2 = Struct_1(-(~(i32(-1i) * -52301i)) >> (abs(~abs(u_input.b)) % 32u), var_1.b, -1i | u_input.a);
    let var_3 = ~19729u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, var_3, 0u), vec4<u32>(u_input.c.x, 29918u, var_0.x, var_3)), 4294967295u) & 21232u));
}

