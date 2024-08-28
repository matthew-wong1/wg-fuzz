struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
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

var<private> global0: array<f32, 3> = array<f32, 3>(-111f, -678f, -554f);

var<private> global1: i32 = -21108i;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(38533i, vec2<bool>(false, true), vec2<i32>(-58520i, -2264i)), Struct_1(0i, vec2<bool>(false, false), vec2<i32>(1i, 0i)), Struct_1(9007i, vec2<bool>(false, true), vec2<i32>(1i, 18712i)), Struct_1(24720i, vec2<bool>(false, false), vec2<i32>(-33410i, 33357i)), Struct_1(1i, vec2<bool>(false, true), vec2<i32>(-1i, 1i)), Struct_1(1i, vec2<bool>(false, false), vec2<i32>(-9333i, 46171i)), Struct_1(2147483647i, vec2<bool>(true, false), vec2<i32>(46138i, 1i)), Struct_1(-1i, vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 33919i)), Struct_1(1123i, vec2<bool>(false, true), vec2<i32>(3437i, -8886i)), Struct_1(27545i, vec2<bool>(false, true), vec2<i32>(-346i, 0i)), Struct_1(46204i, vec2<bool>(false, true), vec2<i32>(2240i, 0i)), Struct_1(-49449i, vec2<bool>(true, false), vec2<i32>(-1i, 2147483647i)), Struct_1(-10641i, vec2<bool>(true, false), vec2<i32>(1i, 29858i)), Struct_1(0i, vec2<bool>(false, false), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec2<i32>(-73409i, 0i)), Struct_1(-3298i, vec2<bool>(false, true), vec2<i32>(-1i, 1i)), Struct_1(-1i, vec2<bool>(true, false), vec2<i32>(1i, -73566i)), Struct_1(3321i, vec2<bool>(true, false), vec2<i32>(0i, -15059i)), Struct_1(2147483647i, vec2<bool>(true, true), vec2<i32>(0i, -9230i)), Struct_1(-35293i, vec2<bool>(true, true), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(0i, vec2<bool>(true, false), vec2<i32>(-1i, 2147483647i)), Struct_1(9361i, vec2<bool>(true, true), vec2<i32>(10883i, i32(-2147483648))), Struct_1(12510i, vec2<bool>(false, false), vec2<i32>(-23867i, -42343i)), Struct_1(-21390i, vec2<bool>(true, true), vec2<i32>(2147483647i, -42375i)), Struct_1(2147483647i, vec2<bool>(false, true), vec2<i32>(-1i, 13380i)));

var<private> global3: array<bool, 25>;

var<private> global4: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1002f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a, 3u)]))) + global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(~(~17745u)), _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, ~arg_0.x), _wgslsmith_mod_u32(select(0u, 0u, global4.x), u_input.b.x << (8151u % 32u)))), 3u)]);
    var var_1 = arg_2;
    global4 = select(select(vec3<bool>(true, global4.x, !all(vec4<bool>(arg_1.b.x, false, false, arg_1.b.x))), vec3<bool>(true, true, true), vec3<bool>(true, false, any(vec3<bool>(arg_1.b.x, global4.x, global3[_wgslsmith_index_u32(u_input.a, 25u)])))), vec3<bool>((_wgslsmith_clamp_i32(-17267i, 0i, 16230i) > arg_3) != all(vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 25u)], true)), (_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, arg_3, -22700i), vec4<i32>(arg_2, arg_1.c.x, 21782i, 2147483647i)) >> (~arg_0.x % 32u)) >= firstLeadingBit(1i), true), vec3<bool>(select(true, !global4.x, any(vec4<bool>(arg_1.b.x, false, global4.x, global4.x))), arg_1.b.x, !(!(1i < arg_2))));
    var var_2 = -(vec2<i32>(~(~arg_3), -30566i) << (_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(arg_0.x, 17852u) | vec2<u32>(4294967295u, 0u)), select(_wgslsmith_mult_vec2_u32(vec2<u32>(10280u, u_input.b.x), arg_0.ww), ~u_input.b.zz, all(vec4<bool>(global4.x, global4.x, arg_1.b.x, global3[_wgslsmith_index_u32(arg_0.x, 25u)])))) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(2071f * global0[_wgslsmith_index_u32(1u >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, arg_0.x, 4294967295u)), reverseBits(arg_0)), u_input.b.x) % 32u), 3u)]);
    return vec2<i32>(-13538i, -abs(3455i));
}

fn func_2() -> f32 {
    global0 = array<f32, 3>();
    global1 = -_wgslsmith_div_i32(-39344i, _wgslsmith_mod_i32(-30086i, -1298i << (u_input.b.x % 32u)));
    let var_0 = Struct_1(~(-8807i), !select(vec2<bool>(global4.x, !global3[_wgslsmith_index_u32(u_input.a, 25u)]), global4.yx, global4.xy), func_3(u_input.b, global2[_wgslsmith_index_u32(max(abs(4294967295u), u_input.a), 25u)], reverseBits(_wgslsmith_mult_i32(_wgslsmith_div_i32(27692i, -13074i), _wgslsmith_add_i32(-1i, -14345i))), -32496i));
    let var_1 = vec3<u32>(u_input.b.x, u_input.a, u_input.b.x);
    var var_2 = Struct_1(~(-7990i), global4.zx, vec2<i32>(-1i) * -firstTrailingBit(firstLeadingBit(vec2<i32>(-1i, -36992i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1215f))) - global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a >> (u_input.a % 32u), u_input.b.x), 3u)]));
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(max(984f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 7628u), vec3<u32>(0u, 15561u, 0u))), 3u)])));
    var var_1 = countOneBits(-arg_0.a);
    return abs(~firstLeadingBit(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(4512i, arg_0.c.x, arg_0.a), vec3<i32>(arg_0.a, arg_0.a, arg_0.a), vec3<i32>(5290i, arg_0.c.x, arg_0.c.x)), vec3<i32>(arg_0.a, -1i, 1i) << (u_input.b.yzy % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 3>();
    global2 = array<Struct_1, 25>();
    var var_0 = _wgslsmith_dot_vec3_i32(func_1(global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.a >> (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(70348u, 76145u, u_input.a, u_input.a)) % 32u)), 25u)]), countOneBits(vec3<i32>(-1i) * -vec3<i32>(-1i, -1i, -18613i)) >> ((vec3<u32>(u_input.b.x, u_input.a >> (1716u % 32u), u_input.b.x) & u_input.b.xzz) % vec3<u32>(32u)));
    global4 = vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2257f) * -363f) == global0[_wgslsmith_index_u32(u_input.a, 3u)], any(!select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.a, 25u)]), vec3<bool>(global4.x, true, global3[_wgslsmith_index_u32(0u, 25u)]), vec3<bool>(global4.x, global4.x, true))) & global4.x);
    let var_1 = vec3<u32>(31458u, 44936u, _wgslsmith_div_u32(abs(_wgslsmith_sub_u32(u_input.b.x, 29411u) ^ 51818u), _wgslsmith_mult_u32(u_input.a, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_1.x | _wgslsmith_sub_u32(~u_input.a, select(var_1.x, u_input.b.x, global4.x))));
}

