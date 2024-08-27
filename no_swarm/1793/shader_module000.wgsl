struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: i32 = 1i;

var<private> global2: array<f32, 8>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    return 34865u;
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = Struct_3(Struct_1(arg_0), Struct_1(func_3()), Struct_2(Struct_1(1u), ((vec3<i32>(-19222i, u_input.c.x, u_input.b) >> (vec3<u32>(arg_0, 1u, u_input.d) % vec3<u32>(32u))) ^ ~vec3<i32>(-2147483647i, u_input.a, u_input.b)) << ((~vec3<u32>(68001u, 34079u, arg_0) | _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 51352u, 0u), vec3<u32>(arg_0, u_input.d, arg_0))) % vec3<u32>(32u))), ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 0i, 1i), vec3<i32>(-91i, u_input.a, u_input.b), vec3<i32>(u_input.a, -14279i, -34447i))) >> (vec3<u32>(3683u, ~(~0u), 0u) % vec3<u32>(32u)), -1220f);
    var var_1 = Struct_3(Struct_1(max(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(44697u, 4294967295u, var_0.b.a), vec3<u32>(11730u, var_0.c.a.a, 92990u)) & ~var_0.c.a.a)), var_0.c.a, var_0.c, vec3<i32>(select(_wgslsmith_mult_i32(~u_input.b, ~var_0.c.b.x), u_input.a, (u_input.a | 1i) <= (-5353i >> (arg_0 % 32u))), ~u_input.c.x, u_input.a), global2[_wgslsmith_index_u32(0u, 8u)]);
    global1 = var_1.c.b.x;
    var var_2 = 84681u;
    let var_3 = vec3<u32>(reverseBits(~arg_0 >> (var_1.b.a % 32u)), var_0.c.a.a, var_0.a.a);
    return !(-var_1.d.x >= _wgslsmith_sub_i32(~countOneBits(-39586i), -37862i));
}

fn func_1() -> Struct_1 {
    global0 = select(1u, 0u, func_2(min(firstTrailingBit(u_input.d >> (20796u % 32u)), 76747u)));
    let var_0 = 1i;
    var var_1 = Struct_2(Struct_1(func_3()), vec3<i32>(var_0, 0i, _wgslsmith_mult_i32(1i, abs(u_input.c.x)) & (i32(-1i) * -86536i)));
    var_1 = Struct_2(var_1.a, min(vec3<i32>(~var_1.b.x, 1i, ~9975i) >> ((~vec3<u32>(u_input.d, 4294967295u, 9966u) >> (_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.a, 43408u, u_input.d), vec3<u32>(var_1.a.a, var_1.a.a, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(var_1.b)));
    global0 = 4294967295u;
    return var_1.a;
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = func_1();
    global2 = array<f32, 8>();
    let var_1 = u_input.c;
    global2 = array<f32, 8>();
    let var_2 = _wgslsmith_sub_u32(var_0.a, u_input.d);
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.d;
    var var_0 = _wgslsmith_f_op_f32(sign(271f));
    global0 = _wgslsmith_div_u32(func_4(func_1()), 4294967295u);
    var var_1 = _wgslsmith_div_vec4_u32(select(select(~vec4<u32>(u_input.d, 1u, u_input.d, 20654u), _wgslsmith_div_vec4_u32(vec4<u32>(27723u, u_input.d, u_input.d, 4294967295u), vec4<u32>(1u, 7041u, 4294967295u, 0u)), all(vec3<bool>(true, true, true))), vec4<u32>(abs(1u), ~1u, func_3(), 76517u), true), min(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(20885u, u_input.d, u_input.d, u_input.d)), firstTrailingBit(vec4<u32>(1u, u_input.d, 69447u, 48963u))), select(vec4<u32>(23883u, 1u, u_input.d, 0u), vec4<u32>(0u, u_input.d, 60615u, u_input.d), false) ^ vec4<u32>(1u, 1u, 38291u, 20057u))) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.d, 11394u, 0u, 18736u)), vec4<u32>(98174u, 1u, 1777u, u_input.d)), max(min(vec4<u32>(1u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 1u)), ~(~vec4<u32>(1u, u_input.d, 1116u, u_input.d))), vec4<u32>(func_1().a, ~1254u, u_input.d, firstTrailingBit(1u))) % vec4<u32>(32u));
    global0 = ~(_wgslsmith_mod_u32(~(~1u), u_input.d) << (1u % 32u));
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(u_input.a, 15143i), u_input.a, ~(-u_input.b) >> (~1u % 32u)), global2[_wgslsmith_index_u32(select(~(~1u), u_input.d >> (~u_input.d % 32u), any(vec4<bool>(true, false, true, true))), 8u)], _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(9708u << (0u % 32u), 8u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.x, 8u)] * global2[_wgslsmith_index_u32(79884u, 8u)]), _wgslsmith_f_op_f32(round(376f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 8u)] + global2[_wgslsmith_index_u32(u_input.d, 8u)])) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(310u, 8u)], 1000f, -851f, global2[_wgslsmith_index_u32(var_1.x, 8u)]) - vec4<f32>(1000f, global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)], 464f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(8516u, 8u)], -3101f, 1000f, global2[_wgslsmith_index_u32(21924u, 8u)]))))))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, countOneBits(u_input.a)), vec2<i32>(i32(-1i) * -21559i, reverseBits(u_input.c.x))), -u_input.c));
}

