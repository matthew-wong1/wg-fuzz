struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 716f, 1u, 1u);

var<private> global1: i32;

var<private> global2: array<Struct_1, 17>;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(4294967295u, -242f, 4294967295u, 1u), Struct_1(3527u, -1196f, 1u, 74291u), Struct_1(0u, 279f, 0u, 4294967295u), Struct_1(0u, 123f, 4294967295u, 30782u), Struct_1(4294967295u, -674f, 4294967295u, 0u), Struct_1(4294967295u, 1015f, 1216u, 4294967295u), Struct_1(1u, 756f, 17709u, 1u), Struct_1(13463u, 1000f, 6142u, 14785u), Struct_1(38999u, -215f, 4294967295u, 1u), Struct_1(0u, -1176f, 4294967295u, 1u), Struct_1(99972u, 1000f, 107361u, 4871u), Struct_1(4294967295u, -1071f, 4294967295u, 0u), Struct_1(0u, 581f, 1u, 68730u), Struct_1(34000u, -1117f, 1u, 1u), Struct_1(7989u, -919f, 1u, 0u), Struct_1(4294967295u, 185f, 61869u, 4294967295u), Struct_1(68424u, 986f, 28759u, 1u), Struct_1(47724u, 1560f, 1u, 43431u), Struct_1(1u, 605f, 0u, 1479u), Struct_1(0u, 952f, 0u, 4294967295u), Struct_1(4625u, -363f, 1u, 28173u), Struct_1(1u, -1125f, 1u, 1u), Struct_1(1u, -1414f, 81296u, 1u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global0 = arg_0.b;
    let var_0 = select(reverseBits(-vec4<i32>(u_input.a.x, -10799i, 31600i, u_input.d)) << (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, global0.c, arg_1.c, 38890u), _wgslsmith_add_vec4_u32(vec4<u32>(49186u, global0.c, arg_1.c, 2391u), vec4<u32>(arg_0.c.x, u_input.c, global0.c, 55968u))), abs(vec4<u32>(global0.c, u_input.b, global0.a, arg_1.a))) % vec4<u32>(32u)), -(~vec4<i32>(-u_input.e, 1i, reverseBits(u_input.a.x), _wgslsmith_sub_i32(-2147483647i, u_input.e))), false);
    var var_1 = _wgslsmith_div_f32(1233f, arg_1.b);
    var var_2 = u_input.e;
    global3 = array<Struct_1, 23>();
    return -108f;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(558f, global0.b, global0.b) * vec3<f32>(-1253f, global0.b, -2317f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, global0.b)))))));
    var var_1 = Struct_1(u_input.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(true, Struct_1(global0.a, var_0.x, 5946u, 4294967295u), vec3<u32>(u_input.b, global0.c, global0.c), vec3<bool>(false, arg_1, false)), global3[_wgslsmith_index_u32(4294967295u, 23u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2173f), _wgslsmith_f_op_f32(round(var_0.x))))), _wgslsmith_f_op_f32(sign(global0.b)))), ((~global0.c ^ 20940u) << (~49663u % 32u)) << (_wgslsmith_add_u32(3617u, 32675u) % 32u), ~1u);
    let var_2 = Struct_2(false, global3[_wgslsmith_index_u32(43965u, 23u)], _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(global0.c, 0u, 4294967295u))), vec3<u32>(~(~u_input.c), 46861u & global0.c, ~(~1u))), !vec3<bool>(arg_1, false, any(vec4<bool>(false, false, arg_1, false)) || true));
    let var_3 = var_2.a;
    global0 = global3[_wgslsmith_index_u32(0u << (global0.a % 32u), 23u)];
    return 0u;
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(global0.b)), 2205f, 735f, global0.b);
    global0 = global2[_wgslsmith_index_u32(func_2((vec2<i32>(-38666i, -6620i) | _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, u_input.d), u_input.a, vec2<i32>(u_input.e, u_input.e))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(~global0.d, u_input.b), vec2<u32>(global0.a, global0.c) >> (vec2<u32>(84563u, u_input.c) % vec2<u32>(32u))) % vec2<u32>(32u)), true), 17u)];
    let var_1 = !select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(_wgslsmith_f_op_f32(-arg_0.b) != var_0.x, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))), true, (170f < arg_0.b) & false), !all(vec3<bool>(false, true, true)));
    var var_2 = global3[_wgslsmith_index_u32(1u, 23u)];
    var var_3 = !all(var_1.yzz);
    return vec3<u32>(global0.c | max(143266u, reverseBits(_wgslsmith_add_u32(global0.a, 14620u))), ~arg_0.c, var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_2(false != any(vec3<bool>(var_0, any(vec2<bool>(var_0, var_0)), !var_0)), Struct_1(~_wgslsmith_clamp_u32(1u, max(1u, 4294967295u), ~u_input.c), 670f, global0.a, _wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 0u), vec2<u32>(global0.c, 0u) | vec2<u32>(75300u, global0.a)))), (firstTrailingBit(~vec3<u32>(32411u, 33833u, 0u)) >> (abs(vec3<u32>(57384u, 72806u, 0u) ^ vec3<u32>(0u, 4294967295u, u_input.c)) % vec3<u32>(32u))) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(global0.a, 2193u, global0.a) ^ vec3<u32>(global0.a, u_input.b, global0.d)) << ((func_1(Struct_1(29586u, -1803f, global0.a, global0.a)) ^ ~vec3<u32>(19910u, 0u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<bool>(!all(!vec4<bool>(false, true, var_0, true)), true, false));
    var var_2 = 983f;
    let var_3 = Struct_1(1u, _wgslsmith_div_f32(-1123f, -815f), u_input.c, var_1.c.x);
    let var_4 = false;
    let var_5 = Struct_1(var_1.c.x, _wgslsmith_f_op_f32(global0.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(global0.b * -375f)), 1082f)), 31515u, abs(var_3.d));
    var var_6 = var_1.c.yx >> (func_1(var_3).zy % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-37622i, u_input.e, u_input.e, 2147483647i), vec4<i32>(2147483647i, u_input.a.x, -9276i, u_input.a.x))) & (vec4<i32>(u_input.e >> (34692u % 32u), u_input.a.x, ~u_input.a.x, u_input.d & -43389i) >> (~(vec4<u32>(var_3.a, var_5.c, u_input.b, 0u) << (vec4<u32>(4294967295u, 42013u, var_3.c, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~(-2147483647i));
}

