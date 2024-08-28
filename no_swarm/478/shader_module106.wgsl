struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(1u, true), Struct_2(4294967295u, false), Struct_2(1u, false), Struct_2(4294967295u, false), Struct_2(7270u, true), Struct_2(53322u, false), Struct_2(13126u, true), Struct_2(9529u, true), Struct_2(4294967295u, false), Struct_2(18699u, true), Struct_2(18866u, false), Struct_2(1u, true), Struct_2(33663u, true), Struct_2(8195u, false), Struct_2(8110u, false), Struct_2(45136u, true), Struct_2(4758u, false), Struct_2(73787u, true), Struct_2(1u, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> i32 {
    var var_0 = any(!(!(!(!vec3<bool>(arg_0.b, true, arg_0.b)))));
    global0 = array<Struct_2, 19>();
    var_0 = arg_0.b;
    var var_1 = any(vec4<bool>(arg_0.b, all(select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(false, arg_0.b, true), arg_0.b)), false, true));
    var_1 = arg_0.b;
    return -_wgslsmith_add_i32(-(~(-arg_1.x)), 11500i);
}

fn func_2() -> f32 {
    global0 = array<Struct_2, 19>();
    let var_0 = _wgslsmith_add_i32(func_3(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, u_input.a) >> (34516u % 32u), 19u)], ~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 6164i), vec2<i32>(1i, 1i))), -24405i);
    var var_1 = vec3<u32>(max(1u, abs(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, 74412u, 49208u)), ~vec3<u32>(97081u, 57112u, u_input.a)))), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(abs(76490u), u_input.a << (1u % 32u)), 1u), abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(51985u, u_input.a), ~vec2<u32>(1u, 47126u)))));
    global0 = array<Struct_2, 19>();
    var_1 = ~(~(~(vec3<u32>(30542u, 4294967295u, 3348u) ^ ~vec3<u32>(var_1.x, u_input.a, 36307u))));
    return 1035f;
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    global0 = array<Struct_2, 19>();
    var var_0 = Struct_3(Struct_2(countOneBits(u_input.a), !(arg_0.x | true) == all(vec3<bool>(false, arg_0.x, arg_0.x))));
    var var_1 = arg_0.wxy;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(469f, 464f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-391f, -1000f))), any(select(arg_0, !vec4<bool>(true, false, var_0.a.b, true), false || var_1.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    global0 = array<Struct_2, 19>();
    return arg_0.zxw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(1u, any(func_1(vec4<bool>(false, true, true, any(vec3<bool>(false, false, true))))));
    let var_1 = Struct_1(select(_wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(29667i, -1i), vec2<i32>(26139i, -54114i))), _wgslsmith_sub_vec2_i32(-vec2<i32>(2147483647i, -2147483647i), abs(vec2<i32>(-1i, 2147483647i)))), -countOneBits(-vec2<i32>(-45198i, -26622i)), !var_0.b && any(vec4<bool>(var_0.b, true, var_0.b, false))), _wgslsmith_sub_i32(23389i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(17833i, 2147483647i, 37953i), vec3<i32>(2147483647i, -2147483647i, -7505i)), 0i, all(vec3<bool>(true, var_0.b, var_0.b)))) != 1i, select(~(~vec3<u32>(80033u, var_0.a, 33748u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.a, var_0.a), min(vec3<u32>(var_0.a, 0u, var_0.a), vec3<u32>(33277u, 56280u, 22827u))), vec3<bool>(true, any(vec2<bool>(false, var_0.b)), all(vec2<bool>(var_0.b, var_0.b)))) << (~vec3<u32>(_wgslsmith_sub_u32(8495u, u_input.a), var_0.a, abs(94330u)) % vec3<u32>(32u)), max(_wgslsmith_div_vec4_u32(~(vec4<u32>(1u, u_input.a, u_input.a, u_input.a) & vec4<u32>(0u, var_0.a, 10746u, 24993u)), vec4<u32>(0u, 0u, var_0.a, var_0.a) >> (~vec4<u32>(0u, 4294967295u, 121922u, var_0.a) % vec4<u32>(32u))), ~vec4<u32>(~0u, 48033u, countOneBits(var_0.a), _wgslsmith_add_u32(var_0.a, var_0.a))));
    let var_2 = ~(-(~_wgslsmith_add_i32(-6525i, 2147483647i)));
    var_0 = global0[_wgslsmith_index_u32(~min(var_0.a, ~(~var_0.a)), 19u)];
    var var_3 = Struct_3(Struct_2(~4294967295u, ~(-7789i) < -(~var_2)));
    var_0 = global0[_wgslsmith_index_u32(var_0.a, 19u)];
    global0 = array<Struct_2, 19>();
    let var_4 = Struct_2(~(_wgslsmith_mult_u32(u_input.a, var_3.a.a) ^ 1u), abs(4294967295u) > abs(var_3.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, ~var_0.a, ~1u, var_3.a.a), ~vec4<u32>(0u, var_3.a.a, var_1.d.x, 4294967295u)));
}

