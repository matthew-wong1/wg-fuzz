struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<i32, 26>;

var<private> global2: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_add_i32(~arg_0.x, arg_1.d.x);
    global1 = array<i32, 26>();
    let var_2 = vec4<bool>(select(true, arg_1.b, all(vec4<bool>(arg_3.b | var_0.b, !var_0.b, var_0.b, true))), false, !(0u <= ~(var_0.a.x | arg_3.a.x)), all(!vec4<bool>(false, arg_1.b, true, arg_1.b)));
    let var_3 = ~_wgslsmith_mult_u32(16432u, ~arg_3.c.x) < global2.x;
    return min(firstLeadingBit((countOneBits(vec3<i32>(-22442i, 0i, 41602i)) | -arg_0) | vec3<i32>(var_0.d.x, 0i ^ arg_2.x, var_0.d.x)), arg_0);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1096f) + 376f));
    global2 = vec2<u32>(arg_0.a.x, arg_0.a.x);
    var var_0 = arg_0;
    var var_1 = vec3<i32>(-1i) * -func_3(vec3<i32>(1i, select(var_0.d.x, global1[_wgslsmith_index_u32(var_0.c.x, 26u)], var_0.b), global1[_wgslsmith_index_u32(abs(global2.x), 26u)]), Struct_1(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(29945u, global2.x, 4294967295u, var_0.a.x)), all(vec3<bool>(var_0.b, arg_0.b, true)), ~u_input.a.wy, arg_0.d), min(arg_0.d, select(var_0.d, vec2<i32>(arg_0.d.x, 1i), vec2<bool>(arg_0.b, arg_0.b))), Struct_1(var_0.a, 1u == global2.x, vec2<u32>(var_0.c.x, arg_0.a.x) & var_0.c, ~vec2<i32>(-21081i, 0i)));
    var_1 = ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(-41980i), ~(-1i), ~global1[_wgslsmith_index_u32(4294967295u, 26u)]), select(vec3<i32>(u_input.d, var_0.d.x, -29797i), vec3<i32>(-2147483647i, 11571i, var_0.d.x), !vec3<bool>(true, arg_0.b, false))));
    return Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(~arg_0.a, arg_0.a), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.a.x, 6657u), _wgslsmith_div_u32(4294967295u, arg_0.a.x)), u_input.a.x), _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(var_0.a.x, global2.x, var_0.c.x, 1u) | u_input.a), ~reverseBits(~var_0.a)), arg_0.b, _wgslsmith_div_vec2_u32(reverseBits(~(~vec2<u32>(arg_0.a.x, global2.x))), _wgslsmith_div_vec2_u32(vec2<u32>(33096u, 69666u), arg_0.a.yz)), vec2<i32>(var_0.d.x, min(var_0.d.x, _wgslsmith_clamp_i32(arg_0.d.x, 14539i, u_input.b) << (var_0.c.x % 32u))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = vec4<u32>(~arg_0.c.x, ~0u, ~0u, ~u_input.a.x);
    var var_1 = !vec4<bool>(!(any(vec3<bool>(arg_0.b, true, true)) || arg_0.b), all(vec3<bool>(true, true, -2147483647i == arg_0.d.x)), any(vec4<bool>(all(vec2<bool>(arg_0.b, true)), arg_0.b, arg_0.b == true, !arg_0.b)), arg_0.b);
    global1 = array<i32, 26>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-483f))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -876f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-345f, -1487f)) + 808f)));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1325f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1045f + -442f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1158f)) - _wgslsmith_f_op_f32(f32(-1f) * -1546f)))));
    global2 = ~u_input.a.zw;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1478f - 1171f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(Struct_1(u_input.a, true, vec2<u32>(1u, global2.x), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.c))))))));
    global1 = array<i32, 26>();
    global0 = _wgslsmith_f_op_f32(round(1000f));
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, firstTrailingBit(func_2(Struct_1(vec4<u32>(0u, 48516u, u_input.a.x, 18762u), false, u_input.a.wy, vec2<i32>(u_input.d, -2147483647i))).a.x)), u_input.a.wz, ~u_input.a.yw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(37660u, u_input.a.x), 26u)];
    let var_1 = Struct_1(~u_input.a, all(vec3<bool>(true, any(vec3<bool>(true, false, true)), true)) | false, u_input.a.xz, ~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(min(vec2<i32>(-2147483647i, 43368i), vec2<i32>(-7143i, global1[_wgslsmith_index_u32(4294967295u, 26u)])), -vec2<i32>(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 26u)])), -_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 26u)], 1i), vec2<i32>(u_input.b, -2737i), vec2<i32>(u_input.b, u_input.b))));
    let var_2 = Struct_1(firstTrailingBit(~vec4<u32>(u_input.a.x, reverseBits(35809u), ~var_1.a.x, 61041u)), all(vec3<bool>(0u >= ~var_1.a.x, !var_1.b, true == any(vec4<bool>(false, true, true, true)))), func_1(), abs(-reverseBits(vec2<i32>(-1i, -3378i))) & -var_1.d);
    var var_3 = vec3<i32>(var_2.d.x, 1i, _wgslsmith_div_i32(~var_2.d.x, i32(-1i) * -20130i));
    var var_4 = Struct_1(u_input.a, false, var_1.c, firstLeadingBit(var_2.d));
    var_0 = 37402i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-231f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(181f, 1940f))))), 68816i, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(var_2.a.zww), vec3<u32>(var_4.c.x, _wgslsmith_mult_u32(global2.x, var_4.a.x), ~u_input.a.x)), _wgslsmith_dot_vec2_u32(var_4.c, u_input.a.xz << (vec2<u32>(var_2.c.x, var_1.c.x) % vec2<u32>(32u)))), u_input.a.yy);
}

