struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<vec2<i32>, 11>;

var<private> global2: array<u32, 6>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> f32 {
    var var_0 = vec2<i32>(~arg_1.x, arg_0);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -617f)), _wgslsmith_f_op_f32(-1f))) * 385f);
    let var_2 = reverseBits(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, 32655u, global2[_wgslsmith_index_u32(16731u, 6u)], u_input.b.x), min(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 6u)], 1u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 6u)], 26829u, 1u, u_input.b.x))), vec4<u32>(24520u, reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21u, 6u)], 6u)]), _wgslsmith_dot_vec2_u32(u_input.d, u_input.d), abs(1u))));
    var var_3 = -1440f;
    global1 = array<vec2<i32>, 11>();
    return var_1;
}

fn func_2(arg_0: vec2<f32>) -> vec3<bool> {
    global1 = array<vec2<i32>, 11>();
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(func_3(-2147483647i, vec2<i32>(u_input.a.x, u_input.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(243f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) * -784f)), arg_0.x, arg_0.x), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + 2204f), 418f), -135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -711f)), 370f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, arg_0.x, -385f) * vec3<f32>(-444f, 309f, 1000f)), vec3<f32>(arg_0.x, 511f, -1057f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1067f, 306f, arg_0.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -1000f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))), ~4294967295u ^ ~(15755u << (global2[_wgslsmith_index_u32(21020u, 6u)] % 32u)), all(select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_add_i32(~u_input.a.x, u_input.a.x);
    var var_2 = ~select(var_0.b.c, 1u, all(select(!vec4<bool>(var_0.b.d, true, global0.x, false), vec4<bool>(false, global0.x, var_0.b.d, global0.x), true)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(200f + _wgslsmith_f_op_f32(func_3(abs(2147483647i), global1[_wgslsmith_index_u32(var_0.b.c, 11u)] >> (u_input.d % vec2<u32>(32u))))) - _wgslsmith_f_op_f32(f32(-1f) * -311f)) == var_0.a.x;
    return select(!vec3<bool>(all(global0.zx), var_0.b.d, !(!global0.x)), vec3<bool>(false, all(vec2<bool>(var_0.b.d, true)), !(!global0.x)), select(!select(!vec3<bool>(global0.x, false, var_0.b.d), select(vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x)), var_0.b.d), !vec3<bool>(var_0.a.x == var_0.b.a.x, false, true), select(!(!vec3<bool>(true, false, global0.x)), !vec3<bool>(global0.x, var_0.b.d, var_0.b.d), vec3<bool>(true, true, !global0.x))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> u32 {
    global0 = !(!select(!(!vec3<bool>(true, true, arg_0)), select(!vec3<bool>(arg_3.b.d, true, true), select(vec3<bool>(false, arg_3.b.d, true), vec3<bool>(false, arg_3.b.d, global0.x), false), func_2(arg_3.b.b.xy)), arg_0));
    let var_0 = select(vec4<bool>(arg_0, true, !all(select(global0.xz, vec2<bool>(arg_3.b.d, true), false)), false), !vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 36831u), 6u)] <= 20596u, arg_3.b.d, arg_3.b.d && any(vec4<bool>(false, arg_3.b.d, arg_0, false))), !(arg_3.b.d != true));
    global0 = var_0.zzy;
    let var_1 = ~max(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 25733u) ^ (u_input.d & vec2<u32>(arg_3.b.c, global2[_wgslsmith_index_u32(arg_1, 6u)])), u_input.d), abs(_wgslsmith_add_vec2_u32(~u_input.d, reverseBits(u_input.d))));
    var var_2 = arg_3;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.d.x, 6u)]) << (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 16590u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]), vec3<u32>(1u, 4294967295u, u_input.d.x)), 6u)] % 32u)) | _wgslsmith_dot_vec3_u32(~(~vec3<u32>(49696u, u_input.b.x, global2[_wgslsmith_index_u32(u_input.c, 6u)])), vec3<u32>(func_1(global0.x, u_input.c, global2[_wgslsmith_index_u32(73997u, 6u)], Struct_3(vec4<f32>(1614f, -1066f, 1225f, -454f), Struct_1(vec4<f32>(-775f, 186f, 1000f, -1696f), vec3<f32>(807f, -671f, 371f), 4294967295u, global0.x))), select(1u, 4294967295u, global0.x), u_input.c)), min(min(~8688u, ~u_input.d.x), 0u) << (global2[_wgslsmith_index_u32(19418u, 6u)] % 32u), true && global0.x);
    let var_1 = Struct_2((~(var_0 & 59847u) ^ ~u_input.b.x) << (func_1(global0.x, ~(4294967295u << (global2[_wgslsmith_index_u32(1u, 6u)] % 32u)), 1u, Struct_3(vec4<f32>(-876f, 765f, 1000f, -118f), Struct_1(vec4<f32>(678f, -144f, 146f, 269f), vec3<f32>(-1000f, 343f, -355f), global2[_wgslsmith_index_u32(var_0, 6u)], true))) % 32u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1528f - -217f), _wgslsmith_div_f32(-1000f, -1352f), -441f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(559f)), _wgslsmith_div_f32(773f, 187f), _wgslsmith_f_op_f32(select(-693f, 623f, true))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-659f, -2346f, 751f), vec3<f32>(632f, 1385f, 724f))))))), ~select(min(global2[_wgslsmith_index_u32(~4294967295u, 6u)], 13623u), u_input.b.x >> (7111u % 32u), all(vec2<bool>(false, global0.x))), func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, -263f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(517f, -1660f), vec2<f32>(707f, -1074f), global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(947f, 1000f) * vec2<f32>(691f, 197f)))))).x);
    let var_3 = -2147483647i;
    var var_4 = Struct_2(_wgslsmith_dot_vec3_u32((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 1u, global2[_wgslsmith_index_u32(var_2.c, 6u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 6u)], 6u)], u_input.b.x, var_2.c)) >> (~vec3<u32>(4294967295u, var_0, var_2.c) % vec3<u32>(32u))) ^ abs(~vec3<u32>(4294967295u, 22927u, global2[_wgslsmith_index_u32(var_1.a, 6u)])), vec3<u32>(~39788u, 1u, 1393u)));
    var var_5 = min(57798u, _wgslsmith_dot_vec4_u32(vec4<u32>(min(abs(13028u), var_1.a), ~var_0, _wgslsmith_div_u32(u_input.d.x >> (1u % 32u), ~var_2.c), (1u << (0u % 32u)) & _wgslsmith_mod_u32(u_input.d.x, 4294967295u)), reverseBits(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0, 12688u, var_4.a), vec4<u32>(global2[_wgslsmith_index_u32(19750u, 6u)], u_input.c, var_4.a, var_4.a)), ~46743u, max(var_1.a, 0u)))));
    var var_6 = !vec4<bool>(var_2.d, !var_2.d, all(vec3<bool>(true, true, true)), !(!(true && var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(-abs(u_input.e))));
}

