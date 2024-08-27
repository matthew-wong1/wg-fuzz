struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_3,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(0i, i32(-2147483648), -1i, 684i), vec4<i32>(-4197i, -1735i, i32(-2147483648), -15477i), vec4<i32>(0i, 11487i, 0i, 0i), vec4<i32>(1i, -1i, 18853i, -15214i), vec4<i32>(23031i, 1i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), -57988i, 1i, -470i), vec4<i32>(37804i, -23574i, -52443i, -1i), vec4<i32>(21549i, -1i, 2147483647i, 2147483647i), vec4<i32>(-28173i, -18295i, -29320i, 11424i), vec4<i32>(0i, -9256i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -1i, 0i, 61233i), vec4<i32>(-59897i, -1i, -61818i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 1i, -1i, 15051i), vec4<i32>(1i, 1i, -1i, 25699i), vec4<i32>(-244i, -47464i, i32(-2147483648), -47001i), vec4<i32>(1i, 13571i, 2147483647i, -1i), vec4<i32>(0i, 2147483647i, -7961i, 0i), vec4<i32>(18025i, 35663i, -29009i, -79079i), vec4<i32>(i32(-2147483648), -12751i, -18913i, 1i), vec4<i32>(28263i, -1i, 1i, 0i), vec4<i32>(-1i, i32(-2147483648), 10636i, 12548i), vec4<i32>(0i, i32(-2147483648), -1i, -23798i), vec4<i32>(33650i, -1608i, 1i, 0i), vec4<i32>(0i, -23980i, -17732i, 63528i), vec4<i32>(0i, i32(-2147483648), -26489i, -11782i), vec4<i32>(318i, -23463i, -1i, -5953i), vec4<i32>(-22995i, -1i, 0i, 2147483647i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_3 {
    global1 = array<vec4<i32>, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0.b.d.b)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.d.b.x))) - global0.b.d.b.x);
    global0 = Struct_5(global0.e, Struct_3(max(global1[_wgslsmith_index_u32(u_input.b, 27u)], max(global0.b.a, global0.b.b)), ~global0.b.a, global0.a.e.zww, global0.b.d, true), abs(max(_wgslsmith_sub_i32(-49866i, ~global0.c), reverseBits(1i))), true, global0.a);
    var var_2 = 1u;
    return global0.b;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = arg_1;
    var_0 = Struct_3(_wgslsmith_mult_vec4_i32(-reverseBits(vec4<i32>(-1i, -2147483647i, global0.b.a.x, arg_1.a.x)) & -(vec4<i32>(global0.c, 2147483647i, 14411i, -7402i) & arg_1.a), -_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.x, 2147483647i, arg_0.a.x, var_0.a.x), vec4<i32>(1i, var_0.b.x, arg_2.b.x, global0.c)) | vec4<i32>(~(-9024i), -2147483647i ^ global0.b.b.x, arg_2.a.x, _wgslsmith_add_i32(30256i, u_input.a.x))), arg_1.a, select(!vec3<bool>(true, true, arg_1.d.a.a), !(!(!vec3<bool>(arg_2.d.a.e.x, global0.d, true))), var_0.c), arg_2.d, true);
    let var_1 = true;
    let var_2 = firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(27604i), var_0.b.x, ~(-675i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.b.x, var_0.b.x, arg_2.b.x), vec3<i32>(var_0.a.x, -24804i, -2147483647i)))));
    var var_3 = firstLeadingBit(firstTrailingBit(firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.b, arg_3.x, 1u, 1u)))) ^ (~(~vec4<u32>(u_input.b, 1u, arg_3.x, arg_3.x)) << ((select(vec4<u32>(arg_3.x, 1u, u_input.b, arg_3.x), vec4<u32>(u_input.b, u_input.b, 27295u, 4294967295u), vec4<bool>(global0.e.a, var_0.e, var_0.e, var_1)) | (vec4<u32>(u_input.b, 0u, u_input.b, 88559u) | vec4<u32>(u_input.b, u_input.b, arg_3.x, 1u))) % vec4<u32>(32u))));
    return Struct_3(-_wgslsmith_mult_vec4_i32(~(global1[_wgslsmith_index_u32(var_3.x, 27u)] << (vec4<u32>(var_3.x, 0u, arg_3.x, arg_3.x) % vec4<u32>(32u))), vec4<i32>(firstLeadingBit(1i), 1i, 1i, countOneBits(global0.b.b.x))), ~countOneBits(vec4<i32>(_wgslsmith_mult_i32(-10964i, arg_2.b.x), ~(-2147483647i), ~(-4966i), reverseBits(0i))), var_0.c, arg_0.d, (max(_wgslsmith_mult_i32(u_input.a.x, 13966i), _wgslsmith_add_i32(global0.b.b.x, 2147483647i)) ^ countOneBits(708i)) == -var_2);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: f32) -> vec3<u32> {
    global0 = Struct_5(global0.b.d.a, func_3(global0.b, func_2(), func_2(), ~vec2<u32>(_wgslsmith_mod_u32(32885u, arg_0.x), 1u)), 1i, !(!global0.d), func_3(Struct_3(vec4<i32>(i32(-1i) * -2147483647i, abs(global0.c), _wgslsmith_clamp_i32(-1i, -1i, 1i), min(u_input.a.x, -20497i)), firstLeadingBit(global0.b.a) | ~vec4<i32>(arg_1.x, arg_1.x, -1161i, arg_1.x), select(select(global0.e.d.yyx, global0.b.c, vec3<bool>(true, true, global0.d)), !global0.a.e.zyx, global0.b.d.a.d.x), Struct_2(func_2().d.a, _wgslsmith_f_op_vec4_f32(global0.b.d.b + global0.b.d.b)), true), func_3(func_2(), Struct_3(countOneBits(global1[_wgslsmith_index_u32(arg_0.x, 27u)]), vec4<i32>(-12119i, -8689i, global0.b.b.x, 38631i), func_3(Struct_3(vec4<i32>(global0.b.b.x, u_input.a.x, -18546i, 1i), global0.b.b, vec3<bool>(global0.a.c, false, global0.e.b.x), global0.b.d, global0.a.a), global0.b, Struct_3(vec4<i32>(2147483647i, global0.c, global0.c, -47748i), vec4<i32>(global0.b.a.x, u_input.a.x, 17647i, arg_1.x), global0.b.d.a.d.zyy, global0.b.d, true), vec2<u32>(4294967295u, arg_0.x)).d.a.d.xzx, global0.b.d, true), global0.b, _wgslsmith_clamp_vec2_u32(abs(arg_0), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, arg_0.x), arg_0), min(arg_0, arg_0))), Struct_3(countOneBits(vec4<i32>(u_input.a.x, global0.c, -1i, u_input.a.x) ^ vec4<i32>(global0.b.b.x, 0i, 17446i, global0.b.b.x)), vec4<i32>(firstLeadingBit(arg_1.x), reverseBits(22822i), func_2().b.x, _wgslsmith_dot_vec4_i32(global0.b.b, global1[_wgslsmith_index_u32(76992u, 27u)])), vec3<bool>(global0.b.e, !global0.d, true), Struct_2(func_2().d.a, vec4<f32>(121f, -350f, -2398f, global0.b.d.b.x)), any(vec3<bool>(global0.b.c.x, global0.e.d.x, global0.b.d.a.d.x))), vec2<u32>(max(1u, arg_0.x), u_input.b) ^ arg_0).d.a);
    let var_0 = countOneBits(arg_0);
    return abs(vec3<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(arg_0.x, 0u, u_input.b))), 4294967295u, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.a.x);
    var var_1 = global0.d;
    let var_2 = _wgslsmith_sub_u32(abs(u_input.b), firstTrailingBit(u_input.b));
    var var_3 = ~countOneBits(select(vec2<u32>(u_input.b, var_2) | vec2<u32>(1u, var_2), vec2<u32>(u_input.b, 1u) ^ vec2<u32>(var_2, 1u), global0.d)) << (~vec2<u32>(_wgslsmith_dot_vec3_u32(func_1(vec2<u32>(u_input.b, var_2), vec3<i32>(global0.c, 30144i, global0.c), -1202f), func_1(vec2<u32>(var_2, 62890u), global0.b.a.yzx, 788f)), _wgslsmith_sub_u32(select(u_input.b, 127542u, false), func_1(vec2<u32>(0u, u_input.b), vec3<i32>(-24051i, var_0, var_0), -1029f).x)) % vec2<u32>(32u));
    let var_4 = ~(~_wgslsmith_mod_i32(countOneBits(var_0), ~global0.c));
    var var_5 = global0.e;
    let var_6 = vec3<u32>(firstTrailingBit(reverseBits(max(var_2, u_input.b)) ^ u_input.b), abs(129330u), ~min(func_1(max(vec2<u32>(48803u, u_input.b), vec2<u32>(0u, 1u)), vec3<i32>(global0.c, 2147483647i, -2147483647i), global0.b.d.b.x).x, 73400u));
    var var_7 = func_3(Struct_3(vec4<i32>(~0i, u_input.a.x, -_wgslsmith_mod_i32(-1i, global0.c), ~0i), -_wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(var_6.x, 27u)], global1[_wgslsmith_index_u32(abs(20443u), 27u)]), global0.a.e.zyx, global0.b.d, true), func_3(global0.b, global0.b, global0.b, var_6.yy), global0.b, var_6.xz);
    var_1 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_7.b.ywz, firstTrailingBit(var_3.x), var_7.a, ~reverseBits(~vec4<u32>(0u, 55210u, 17788u, 4294967295u)));
}

