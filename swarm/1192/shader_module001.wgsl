struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1;

var<private> global2: i32 = -797i;

var<private> global3: array<Struct_2, 19>;

var<private> global4: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<u32>(4294967295u, 0u, 10817u, 1u), -56457i, vec2<f32>(-1220f, 1000f), 47819u, vec3<u32>(13687u, 0u, 29496u)), Struct_1(vec4<u32>(39753u, 39326u, 58273u, 1u), 29065i, vec2<f32>(-237f, 1155f), 16469u, vec3<u32>(4294967295u, 40793u, 0u)), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), 2147483647i, vec2<f32>(-1000f, -417f), 4294967295u, vec3<u32>(1u, 37828u, 4294967295u)), Struct_1(vec4<u32>(18248u, 73526u, 1u, 1u), -31198i, vec2<f32>(1005f, -631f), 5740u, vec3<u32>(19870u, 0u, 64169u)), Struct_1(vec4<u32>(46727u, 20406u, 69272u, 13532u), 2147483647i, vec2<f32>(-807f, 851f), 1u, vec3<u32>(4294967295u, 3103u, 34859u)), Struct_1(vec4<u32>(11721u, 16091u, 5770u, 47241u), 27897i, vec2<f32>(669f, 1873f), 0u, vec3<u32>(1u, 30869u, 17587u)), Struct_1(vec4<u32>(4898u, 58927u, 0u, 4294967295u), 0i, vec2<f32>(-989f, -336f), 45464u, vec3<u32>(0u, 1u, 134300u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: f32, arg_3: vec4<u32>) -> i32 {
    let var_0 = Struct_2(vec3<i32>(2147483647i, ~global0.x, -_wgslsmith_clamp_i32(i32(-1i) * -39586i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, global1.b, 4529i), vec4<i32>(0i, -2147483647i, 2147483647i, u_input.a.x)))), global1.c.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, global1.c.x, global1.c.x) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-147f, var_0.b, -1752f, -1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(708f, -343f, 354f, 289f)))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2, -650f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, -283f))))))));
    global4 = array<Struct_1, 7>();
    var var_2 = var_0.a.x;
    global3 = array<Struct_2, 19>();
    return -abs(firstLeadingBit(_wgslsmith_mult_i32(i32(-1i) * -24002i, u_input.b)));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = !vec3<bool>(all(vec2<bool>(any(vec3<bool>(false, arg_0, arg_0)), all(vec4<bool>(arg_0, arg_0, false, false)))), !arg_0, any(select(vec3<bool>(arg_0, true, arg_0), !vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)))));
    global2 = reverseBits(global0.x);
    global4 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-global0.x, u_input.b & 24922i, func_3(select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0)), select(arg_0, var_0.x, var_0.x), -1000f, vec4<u32>(48387u, global1.a.x, global1.d, global1.d)))), vec3<i32>(global0.x, max(global0.x, _wgslsmith_sub_i32(u_input.b, u_input.b)), u_input.b) & _wgslsmith_mod_vec3_i32(vec3<i32>(~u_input.b, global1.b, -global1.b), vec3<i32>(53802i, u_input.a.x, 2147483647i) & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 6768i, -18350i), vec3<i32>(1i, -20944i, global0.x), vec3<i32>(u_input.a.x, 0i, global0.x))));
    var var_2 = vec3<i32>(2147483647i, global0.x, ~firstTrailingBit(1i)) >> (countOneBits(~min(vec3<u32>(global1.e.x, global1.d, global1.a.x) << (vec3<u32>(0u, 4294967295u, global1.e.x) % vec3<u32>(32u)), ~global1.e)) % vec3<u32>(32u));
    return ~global1.d >= ~(~15785u);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = global1.a.wwz;
    var var_1 = vec3<bool>(func_2(true), !(func_2(true) && true) & (global1.d == arg_0.e.x), all(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true, true, -30805i < _wgslsmith_mult_i32(global1.b, -50966i))));
    let var_2 = arg_0;
    var var_3 = var_0.x;
    let var_4 = arg_0;
    return _wgslsmith_add_vec3_u32(~(~(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_4.a.x, var_0.x), var_2.a.wxw) | countOneBits(vec3<u32>(arg_0.d, var_0.x, arg_0.e.x)))), abs(~abs(var_4.a.xzw)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = 3276i;
    global3 = array<Struct_2, 19>();
    global1 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x * 1000f)), _wgslsmith_f_op_f32(floor(1012f)), arg_1.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, _wgslsmith_f_op_f32(519f * global1.c.x), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(trunc(arg_1.c.x))) + vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.c.x)), -497f, arg_0.c.x, -1174f)), vec4<bool>(true, true, true, true))));
    let var_2 = all(vec2<bool>(true, all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, true), false))));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec2<bool>(true, true));
    var var_1 = global3[_wgslsmith_index_u32(reverseBits(~(~_wgslsmith_mult_u32(firstLeadingBit(0u), global1.d))), 19u)];
    global0 = var_1.a;
    let var_2 = global1.e.x;
    let var_3 = 0i;
    global2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-func_4(Struct_1(vec4<u32>(global1.a.x, global1.e.x, 13497u, 1u), -var_3, _wgslsmith_f_op_vec2_f32(vec2<f32>(-827f, -940f) * global1.c), ~4294967295u, func_1(Struct_1(vec4<u32>(16354u, 3978u, global1.a.x, global1.e.x), -31507i, vec2<f32>(global1.c.x, global1.c.x), 32144u, global1.a.wwy), var_3, Struct_2(var_1.a, -992f), global3[_wgslsmith_index_u32(global1.d, 19u)])), global4[_wgslsmith_index_u32(~(~global1.d), 7u)]), global1.e.x);
}

