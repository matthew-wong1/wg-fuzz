struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true));

var<private> global1: u32 = 0u;

var<private> global2: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_1(vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(12073u, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 0u)), 58573u) >> (~(~(~vec4<u32>(1u, 0u, u_input.a.x, 62542u))) % vec4<u32>(32u)), -_wgslsmith_div_i32(arg_0.x, i32(-1i) * -1i), vec2<i32>(abs(~(-arg_0.x)), -2147483647i));
    global1 = _wgslsmith_div_u32(var_0.a.x, ~45796u);
    global1 = u_input.a.x;
    global1 = var_0.a.x;
    let var_1 = 44179u;
    return -min(-2147483647i, 43528i) >> (1u % 32u);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = arg_1;
    var var_1 = Struct_1(vec4<u32>(countOneBits(abs(u_input.a.x)), abs(~1u ^ u_input.a.x), ~23952u ^ reverseBits(u_input.a.x >> (44371u % 32u)), 32500u), func_2(vec3<i32>(_wgslsmith_mult_i32(-27861i >> (arg_2 % 32u), 1i), i32(-1i) * -8923i, _wgslsmith_add_i32(arg_1.c.x, 2147483647i))), ~(reverseBits(arg_1.c) >> (~(~arg_1.a.zz) % vec2<u32>(32u))));
    let var_2 = 34649u;
    var var_3 = arg_1.b;
    var var_4 = Struct_1(arg_1.a, var_0.c.x, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(~var_0.b, -25149i), -_wgslsmith_clamp_i32(23671i, 37647i, -21275i)), var_1.b));
    return 35756i;
}

fn func_3() -> i32 {
    global0 = array<vec3<bool>, 4>();
    global0 = array<vec3<bool>, 4>();
    var var_0 = -abs(func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(304f + -1000f), _wgslsmith_f_op_f32(round(829f)))), Struct_1(u_input.a, 1i, vec2<i32>(1i, 1i)), u_input.a.x));
    let var_1 = firstLeadingBit(u_input.a.zwy);
    var_0 = ~(~_wgslsmith_clamp_i32(0i, ~(~1518i), (0i >> (u_input.a.x % 32u)) << (~var_1.x % 32u)));
    return ~reverseBits(reverseBits(func_2(vec3<i32>(1i, 1i, 1i))));
}

fn func_4(arg_0: vec4<i32>) -> vec3<bool> {
    var var_0 = !select(vec3<bool>(!any(vec2<bool>(global2.x, global2.x)), false, true), vec3<bool>(true, !any(vec4<bool>(true, false, global2.x, global2.x)), !(!global2.x)), all(select(vec4<bool>(global2.x, false, global2.x, true), !vec4<bool>(true, global2.x, false, false), select(vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(false, true, global2.x, global2.x), global2.x))));
    let var_1 = Struct_1(vec4<u32>(~(~min(1u, u_input.a.x)), reverseBits(0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), u_input.a & firstLeadingBit(u_input.a)), u_input.a.x), arg_0.x, vec2<i32>(_wgslsmith_mod_i32(39394i, func_1(_wgslsmith_f_op_f32(select(569f, 618f, false)), Struct_1(u_input.a, -1i, vec2<i32>(106849i, -21481i)), u_input.a.x)), select(arg_0.x >> (_wgslsmith_dot_vec3_u32(u_input.a.yxz, u_input.a.zww) % 32u), func_1(_wgslsmith_f_op_f32(round(1103f)), Struct_1(vec4<u32>(u_input.a.x, 0u, 50608u, u_input.a.x), 0i, arg_0.zz), u_input.a.x ^ u_input.a.x), ~0u <= (u_input.a.x | 29760u))));
    global0 = array<vec3<bool>, 4>();
    let var_2 = select(!(!(!vec4<bool>(var_0.x, true, false, false))), !vec4<bool>(!var_0.x, !global2.x, global2.x, select(!global2.x, true, global2.x)), any(vec3<bool>(global2.x, true, true)));
    global1 = 55197u;
    return !(!(!global0[_wgslsmith_index_u32(var_1.a.x, 4u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(~(~vec4<u32>(8099u, 33915u, u_input.a.x, 13605u)), vec4<u32>(~u_input.a.x, 4294967295u, 1u, u_input.a.x)) ^ u_input.a, 0i, min(vec2<i32>(_wgslsmith_add_i32(20331i, -2147483647i), -37178i), ~vec2<i32>(~(-2147483647i), -11707i)));
    var var_1 = var_0;
    var var_2 = var_0;
    var var_3 = select(vec3<i32>(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1031f)), var_0, ~var_0.a.x), -2147483647i, var_1.b), _wgslsmith_div_vec3_i32(~vec3<i32>(var_2.b, var_2.b, var_1.b) | reverseBits(vec3<i32>(-14618i, 2147483647i, 44464i)), select(vec3<i32>(-2147483647i, 2147483647i, 0i), abs(vec3<i32>(var_2.b, var_0.c.x, 2147483647i)), all(vec3<bool>(global2.x, global2.x, global2.x)))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), !func_4(vec4<i32>(~var_0.b, func_3(), 28145i, ~var_0.c.x)));
    var var_4 = select(select(vec3<bool>(global2.x, true, true), vec3<bool>(!all(vec3<bool>(false, false, false)), global2.x || false, any(select(global0[_wgslsmith_index_u32(var_2.a.x, 4u)], vec3<bool>(true, global2.x, true), global2.x))), !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.a.x, ~var_2.a.x), 4u)]), !(!select(select(vec3<bool>(global2.x, false, true), vec3<bool>(true, global2.x, global2.x), global2.x), global0[_wgslsmith_index_u32(max(0u, 0u), 4u)], vec3<bool>(false, global2.x, false))), !vec3<bool>(true, select(any(vec4<bool>(global2.x, global2.x, global2.x, global2.x)), false, true), true));
    var_3 = _wgslsmith_mult_vec3_i32(abs(~vec3<i32>(-14942i, var_1.c.x, _wgslsmith_clamp_i32(1i, 29490i, var_2.c.x))), vec3<i32>(abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, var_2.c.x), var_0.b >> (7429u % 32u))), -_wgslsmith_mult_i32(-2147483647i, var_1.b) ^ -12663i, min(min(-49222i, -1i) >> (1u % 32u), var_2.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-53794i, 2147483647i), vec2<i32>(53749i, -13914i)), min(vec2<i32>(var_1.b, -3103i), var_0.c)), firstLeadingBit(-2147483647i), var_1.b & 2270i), abs(var_3.x) ^ -reverseBits(var_3.x));
}

