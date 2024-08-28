struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(29487u, 4294967295u, 3021u, 109u, 4294967295u, 61540u, 4294967295u, 84875u, 2567u, 1u, 7747u, 1u, 1u, 13337u, 4294967295u, 4294967295u, 0u, 1u, 54416u, 37631u, 49818u, 4294967295u, 1u, 69619u, 52470u, 55639u, 0u, 4294967295u, 1u, 4294967295u, 7834u, 36619u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    let var_0 = false;
    global0 = array<u32, 32>();
    var var_1 = ~((u_input.a.zz << (select(~u_input.e.yx, reverseBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], 4294967295u)), var_0) % vec2<u32>(32u))) << ((vec2<u32>(84382u, u_input.c | arg_1) | ~vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    return 4294967295u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> f32 {
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    let var_0 = arg_0;
    var var_1 = abs(_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(1u, 29558u, u_input.d, global0[_wgslsmith_index_u32(21685u, 32u)])), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 32u)], 32u)], firstLeadingBit(4294967295u << (u_input.e.x % 32u)), 4294967295u), firstTrailingBit(vec4<u32>(0u, global0[_wgslsmith_index_u32(30006u, 32u)], 49911u, u_input.c)) | vec4<u32>(51845u, 14735u, global0[_wgslsmith_index_u32(126766u, 32u)] & global0[_wgslsmith_index_u32(1u, 32u)], u_input.a.x >> (u_input.e.x % 32u))));
    var var_2 = Struct_1(true);
    return 1f;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_2(0i, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(select(countOneBits(vec2<i32>(63166i, u_input.b)), vec2<i32>(-20501i, arg_2), all(vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a))), countOneBits(vec2<i32>(arg_2, arg_2)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(61922i, -12988i), vec2<i32>(u_input.b, 16058i))), vec2<i32>(-(~arg_2), _wgslsmith_mod_i32(arg_2, arg_2 & arg_2)), ~(~vec2<i32>(arg_2, 1i)) << (u_input.a.yy % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(9427i, -u_input.b, ~u_input.b, ~u_input.b)), vec4<i32>(0i, arg_2, u_input.b, 9945i)));
    var var_2 = arg_1;
    return _wgslsmith_f_op_f32(-arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 32>();
    let var_0 = ~max(reverseBits(u_input.e.xx), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(0u, u_input.c), func_1(Struct_3(Struct_1(false), Struct_2(u_input.b, vec2<i32>(1i, 1i), -53744i), -19647i, vec3<i32>(u_input.b, u_input.b, u_input.b)), 4294967295u, vec3<f32>(938f, -1165f, -621f), false)), vec2<u32>(4294967295u, 4294967295u)));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(false), Struct_2(-29353i, vec2<i32>(1i, u_input.b), 13172i), -49124i, vec3<i32>(u_input.b, u_input.b, u_input.b)), Struct_2(u_input.b, vec2<i32>(1i, u_input.b), 23793i), true)), -115f, _wgslsmith_f_op_f32(f32(-1f) * -489f)), Struct_1(true), u_input.b)), _wgslsmith_f_op_f32(-1412f + 1335f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-362f)), _wgslsmith_f_op_f32(f32(-1f) * -279f)))));
    let var_2 = ~(~_wgslsmith_add_vec3_i32(vec3<i32>(1i, 2147483647i, 23298i), -vec3<i32>(20424i, 2147483647i, 8429i)) | (vec3<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-35470i, -1i), vec2<i32>(u_input.b, -16100i)), u_input.b) << (u_input.e % vec3<u32>(32u))));
    global0 = array<u32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(~(-var_2.x), _wgslsmith_sub_i32(min(-3056i, var_2.x), -61802i), _wgslsmith_clamp_i32(1i, 1i, -18910i))), -149f, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -1094f, 1000f)))))));
}

