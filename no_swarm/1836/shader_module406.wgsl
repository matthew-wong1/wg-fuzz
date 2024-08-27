struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
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

var<private> global0: vec2<u32> = vec2<u32>(0u, 16453u);

var<private> global1: f32;

var<private> global2: array<f32, 22> = array<f32, 22>(1301f, 637f, -1917f, 937f, 822f, 1215f, -324f, 1120f, -632f, -809f, 1000f, -200f, -1000f, 125f, 204f, 138f, -1055f, 1000f, 329f, 1066f, 1169f, 1000f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> bool {
    let var_0 = ~_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.b.x), vec3<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_3.a.b.x), vec2<i32>(arg_3.a.b.x, arg_3.a.a))), max(arg_3.a.a, firstLeadingBit(34859i)), firstLeadingBit(~0i)));
    var var_1 = global2[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(firstTrailingBit(~0u), ~arg_0.c.x), ~u_input.c), 22u)];
    global2 = array<f32, 22>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1108f * _wgslsmith_f_op_f32(-1531f - -355f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(1u, 22u)])) + global2[_wgslsmith_index_u32(arg_0.c.x & 4294967295u, 22u)])));
    var var_3 = arg_1;
    return false;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> i32 {
    global0 = vec2<u32>(firstTrailingBit(firstLeadingBit(_wgslsmith_div_u32(41321u, global0.x))), abs(~max(global0.x, firstTrailingBit(u_input.d.x))));
    var var_0 = _wgslsmith_f_op_f32(ceil(968f));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 22u)] * 694f)))) * global2[_wgslsmith_index_u32(reverseBits(global0.x), 22u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1566f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~1u, 22u)])))));
    let var_1 = vec2<bool>(!select(false, all(vec2<bool>(arg_1, arg_1)), u_input.d.x != ~global0.x), arg_1);
    let var_2 = arg_0.a;
    return abs(-(~_wgslsmith_sub_i32(2147483647i, var_2.b.x))) >> (global0.x % 32u);
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = firstLeadingBit(vec3<i32>(-2147483647i, func_4(Struct_3(Struct_1(19126i, vec3<i32>(arg_3.a, arg_3.b.x, arg_3.a))), select(true, !arg_2.x, func_3(Struct_2(vec2<bool>(false, arg_2.x), vec3<bool>(arg_2.x, false, true), u_input.d.yy), arg_2.x, 4294967295u, Struct_3(Struct_1(u_input.b.x, arg_0.xzy)))), Struct_3(Struct_1(arg_1, u_input.a.ywx))), ~countOneBits(-1i)));
    var_0 = -vec3<i32>(func_4(Struct_3(Struct_1(u_input.b.x, vec3<i32>(1i, arg_3.a, var_0.x))), 37011u == u_input.c, Struct_3(arg_3)), select(max(arg_1, -1i), firstLeadingBit(select(1i, -1i, arg_2.x)), any(vec2<bool>(arg_2.x, false))), u_input.b.x);
    let var_1 = arg_3;
    global1 = global2[_wgslsmith_index_u32(global0.x, 22u)];
    let var_2 = Struct_2(!vec2<bool>(countOneBits(1i) <= select(8439i, var_0.x, true), any(vec2<bool>(false, false))), vec3<bool>(true, !((u_input.b.x > var_1.b.x) | any(arg_2.xy)), false), ~u_input.d.wx);
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(u_input.c, 4294967295u)), 4294967295u, _wgslsmith_add_u32(1u, firstLeadingBit(global0.x))), u_input.d.yzx), u_input.c, var_2.c.x), 22u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>) -> vec4<i32> {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-667f, 1202f)), global2[_wgslsmith_index_u32(4294967295u, 22u)]))), 834f, -495f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(594f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.x, 22u)])), 669f))) + vec4<f32>(-606f, _wgslsmith_f_op_f32(-1285f - global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.x, u_input.d.x) >> (_wgslsmith_clamp_u32(21643u, 0u, global0.x) % 32u), 22u)]), 776f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(393f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 22u)]), -650f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~arg_0.x, 22u)])), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec4<i32>(-20434i, u_input.b.x, -10295i, u_input.a.x), 19253i, vec3<bool>(true, false, false), Struct_1(u_input.a.x, vec3<i32>(6725i, var_0, u_input.a.x)))))))));
    let var_2 = u_input.a;
    let var_3 = Struct_1(-abs(-33727i), var_2.ywx);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(-firstTrailingBit(u_input.a.x) >> (u_input.d.x % 32u), -1354i), ~_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(14667i, u_input.a.x, -2147483647i, 9506i), vec4<i32>(-2147483647i, -1i, -2147483647i, -26270i), vec4<i32>(11575i, 1i, 6139i, u_input.b.x))), func_1(_wgslsmith_mult_vec2_u32(u_input.d.yy, vec2<u32>(41012u, 28619u)), ~vec3<u32>(global0.x, 0u, u_input.c))));
    var var_1 = u_input.d;
    let var_2 = select(vec3<bool>(false, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), select(true, true, false))), !all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))), !select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(reverseBits(28604u), 22u)] == 1006f), vec3<bool>(58219u == _wgslsmith_mod_u32(global0.x, global0.x), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), true));
    let var_3 = ~(_wgslsmith_add_u32(1u, global0.x) & ~firstLeadingBit(1u));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u >> (0u % 32u), 22u)]))))));
    var var_4 = Struct_2(vec2<bool>(select(all(vec2<bool>(var_2.x, var_2.x)), true, false), var_2.x), vec3<bool>(func_3(Struct_2(select(var_2.xy, var_2.zy, var_2.yz), vec3<bool>(true, true, false), u_input.d.xz), var_2.x, ~(1u | var_1.x), Struct_3(Struct_1(var_0.x, vec3<i32>(var_0.x, var_0.x, u_input.a.x)))), all(select(select(var_2.xz, vec2<bool>(var_2.x, var_2.x), false), vec2<bool>(true, true), !vec2<bool>(true, var_2.x))), select(true, true, true) != any(vec4<bool>(false, var_2.x, false, false))), ~vec2<u32>(102239u, u_input.d.x >> (var_3 % 32u)) | var_1.zz);
    let x = u_input.a;
    s_output = StorageBuffer(19496u ^ global0.x);
}

