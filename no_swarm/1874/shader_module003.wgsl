struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1238f, -112f, -865f, 203f);

var<private> global1: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(20725i, 15432i, -1i, -1i), vec4<i32>(2147483647i, 2147483647i, -21107i, 2147483647i), vec4<i32>(1i, -63140i, 2147483647i, -43076i), vec4<i32>(-44922i, 71965i, 1i, 1i), vec4<i32>(-1i, -1i, -1i, -43073i), vec4<i32>(-1i, 4258i, -1376i, 1i), vec4<i32>(12699i, i32(-2147483648), -43875i, -56796i));

var<private> global2: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>) -> i32 {
    global1 = array<vec4<i32>, 7>();
    let var_0 = Struct_1(-_wgslsmith_mult_i32(-1i, _wgslsmith_sub_i32(u_input.a.x, -2147483647i | u_input.a.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(342f + _wgslsmith_f_op_f32(select(-464f, global0.x, !global2.x)))), _wgslsmith_mult_vec2_u32(vec2<u32>(28061u, 42487u), _wgslsmith_div_vec2_u32(~u_input.d.yx & countOneBits(vec2<u32>(122378u, arg_1.x)), max(vec2<u32>(0u, arg_0.x), vec2<u32>(64132u, u_input.e)) & arg_1.wz)), vec3<bool>(true, !(2715i < ~u_input.a.x), true));
    var var_1 = arg_0.x;
    global2 = select(select(vec4<bool>(global2.x, true, true, true), select(vec4<bool>(true, var_0.a == var_0.a, var_0.d.x, var_0.d.x), !select(vec4<bool>(false, var_0.d.x, true, false), vec4<bool>(false, var_0.d.x, var_0.d.x, false), true), _wgslsmith_mod_u32(arg_1.x, 4294967295u) <= u_input.e), !(!global2.x)), vec4<bool>(!any(vec3<bool>(true, true, true)), all(vec4<bool>(true, var_0.c.x >= u_input.d.x, all(vec4<bool>(var_0.d.x, false, global2.x, false)), true)), false, select(false, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), global2.x)), !any(!select(vec4<bool>(var_0.d.x, var_0.d.x, global2.x, true), vec4<bool>(false, false, var_0.d.x, false), vec4<bool>(true, global2.x, false, global2.x))));
    let var_2 = Struct_1((min(abs(var_0.a), _wgslsmith_sub_i32(-1i, u_input.a.x)) << (~abs(u_input.e) % 32u)) >> (_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(arg_0.zy, arg_0.xx), 1u) % 32u), _wgslsmith_f_op_f32(-global0.x), arg_0.zy, vec3<bool>(false, min(arg_1.x, reverseBits(arg_0.x)) < ~(~4294967295u), any(select(select(var_0.d, global2.xxw, var_0.d.x), vec3<bool>(false, true, false), false == global2.x))));
    return -31455i;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = ~((vec3<u32>(firstLeadingBit(arg_1), ~1u, 30049u ^ arg_2) >> ((u_input.d ^ _wgslsmith_sub_vec3_u32(vec3<u32>(28349u, arg_2, arg_1), u_input.d)) % vec3<u32>(32u))) ^ u_input.d);
    var var_1 = Struct_2(abs(vec3<i32>(func_3(var_0 << (u_input.d % vec3<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(15419u, 0u, u_input.d.x, arg_2), vec4<u32>(var_0.x, 18119u, 0u, 4294967295u))), _wgslsmith_sub_i32(~u_input.a.x, 23725i), min(max(1i, 0i), max(arg_3.a.x, 9419i)))));
    let var_2 = countOneBits(-vec2<i32>(arg_3.a.x, ~var_1.a.x & -1i));
    let var_3 = min(-43392i, 2147483647i);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), 361f))) - 275f);
    return !global2.xzz;
}

fn func_1() -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-183f, global0.x, 1806f, global0.x)), vec4<f32>(2055f, -1126f, global0.x, _wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 1077f, 1117f), vec4<f32>(651f, global0.x, -1202f, 606f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(219f, 254f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 542f, -234f, global0.x))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 261f, 673f, global0.x), vec4<f32>(global0.x, global0.x, -1557f, global0.x)))))));
    let var_0 = Struct_1(firstLeadingBit(u_input.b.x), _wgslsmith_f_op_f32(371f + global0.x), ~vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 72452u, u_input.d.x, 5530u), vec4<u32>(u_input.e, 4294967295u, u_input.e, 73902u)), vec4<u32>(1u, 0u, u_input.d.x, 7447u) ^ vec4<u32>(u_input.d.x, u_input.e, u_input.d.x, u_input.d.x)), u_input.d.x), !select(func_2(_wgslsmith_f_op_vec2_f32(global0.yz * vec2<f32>(global0.x, global0.x)), abs(37162u), u_input.d.x & u_input.d.x, Struct_2(vec3<i32>(-2147483647i, u_input.a.x, -626i))), !select(vec3<bool>(true, global2.x, global2.x), global2.zxx, vec3<bool>(global2.x, true, true)), !global2.x));
    let var_1 = true;
    let var_2 = 4294967295u;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-236f, _wgslsmith_div_f32(-234f, -796f)))), -587f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -433f))) - global0.x), 1703f);
    return 0u << ((~firstLeadingBit(countOneBits(58189u)) ^ var_2) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<bool>(true, ~(~0u) > _wgslsmith_mod_u32(func_1(), 0u), u_input.e == u_input.d.x, any(select(global2.xy, global2.wx, select(global2.zz, func_2(global0.yw, u_input.e, u_input.e, Struct_2(u_input.a.xyy)).zy, vec2<bool>(false, global2.x)))));
    let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.e, 15317u, 38174u)), ~vec3<u32>(52466u, u_input.d.x, u_input.d.x)), ~15723u), vec2<u32>(87618u, ~(~4294967295u))), _wgslsmith_mult_u32(5961u, 60710u));
    global1 = array<vec4<i32>, 7>();
    let var_1 = all(vec3<bool>(true, (-9941i >= -u_input.c) | !(!global2.x), true));
    let var_2 = -(~(~30853i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(~4294967295u, ~4294967295u, ~82993u, reverseBits(u_input.d.x))) ^ vec4<u32>(u_input.d.x, u_input.d.x, reverseBits(max(54229u, 60164u)), firstLeadingBit(~0u)), global0.x, select(var_0.x >> (((var_0.x | var_0.x) | ~var_0.x) % 32u), ~0u, global2.x));
}

