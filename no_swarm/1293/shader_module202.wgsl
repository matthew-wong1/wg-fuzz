struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(42717u, 148696u, 12818u, 0u, 4294967295u, 11811u, 0u, 1u, 24814u, 4294967295u, 4294967295u, 116221u, 4294967295u, 19980u, 1u, 28575u, 1u, 38675u, 46860u, 47784u, 12369u, 1u);

var<private> global1: array<vec4<u32>, 23>;

var<private> global2: array<vec4<f32>, 22>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> vec2<bool> {
    let var_0 = Struct_1(min(arg_0.b.b, vec2<u32>(u_input.c.x, 4294967295u)), (vec2<u32>(27263u, 14417u) << (~(~u_input.c) % vec2<u32>(32u))) ^ ~(vec2<u32>(12875u, 0u) >> (u_input.c % vec2<u32>(32u))), u_input.b.x);
    global1 = array<vec4<u32>, 23>();
    let var_1 = arg_0;
    return select(!vec2<bool>(true, all(vec2<bool>(true, false))), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), vec2<bool>(true, arg_2 <= _wgslsmith_f_op_f32(-363f * arg_0.c)), true), !(!all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
}

fn func_1() -> vec2<u32> {
    global2 = array<vec4<f32>, 22>();
    global2 = array<vec4<f32>, 22>();
    global0 = array<u32, 22>();
    var var_0 = vec3<bool>(true, all(vec3<bool>(false, true, false)), !(!all(func_2(Struct_2(vec3<i32>(-1i, u_input.b.x, 1i), Struct_1(u_input.a.yw, vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(37539u, 22u)]), 1i), 580f), 23711i, 1458f))));
    global1 = array<vec4<u32>, 23>();
    return ~u_input.c;
}

fn func_3(arg_0: vec2<u32>) -> bool {
    global2 = array<vec4<f32>, 22>();
    var var_0 = select(select(u_input.b, reverseBits(max(min(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), min(u_input.b, u_input.b))), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), all(vec4<bool>(true, true, false, false)) | true, true)), -u_input.b, -350f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-795f * _wgslsmith_f_op_f32(sign(357f))))));
    var var_1 = select(vec3<bool>(false, false, true), select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), vec3<bool>(func_2(Struct_2(vec3<i32>(2095i, -1i, var_0.x), Struct_1(u_input.a.yy, u_input.a.yy, var_0.x), 1072f), var_0.x, 261f).x, any(vec3<bool>(true, false, true)), true), false), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true)), vec3<bool>(true, true, true)), !vec3<bool>(true == func_2(Struct_2(vec3<i32>(-2147483647i, u_input.b.x, var_0.x), Struct_1(u_input.c, arg_0, -2147483647i), -1243f), -1i, -1000f).x, (global0[_wgslsmith_index_u32(7070u, 22u)] | u_input.a.x) >= func_1().x, !func_2(Struct_2(vec3<i32>(-11589i, u_input.b.x, u_input.b.x), Struct_1(vec2<u32>(u_input.c.x, 1u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.c.x, 22u)]), -2147483647i), 775f), 2147483647i, 404f).x));
    let var_2 = Struct_1(_wgslsmith_add_vec2_u32(~func_1(), ~(~(~u_input.a.yz))), select(vec2<u32>(49634u, ~(~1u)), vec2<u32>(~arg_0.x, countOneBits(u_input.a.x)), var_1.zz), _wgslsmith_dot_vec4_i32(~(reverseBits(vec4<i32>(9516i, var_0.x, var_0.x, -24698i)) >> (~global1[_wgslsmith_index_u32(18030u, 23u)] % vec4<u32>(32u))), vec4<i32>(max(var_0.x, u_input.b.x), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b.x, var_0.x), firstLeadingBit(u_input.b.x), u_input.b.x >> (20471u % 32u)), ~0i ^ -u_input.b.x, _wgslsmith_div_i32(var_0.x, _wgslsmith_add_i32(var_0.x, u_input.b.x)))));
    var var_3 = func_2(Struct_2(vec3<i32>(_wgslsmith_clamp_i32(1i, ~var_0.x, 33418i), var_2.c, -var_2.c), Struct_1(vec2<u32>(_wgslsmith_mod_u32(arg_0.x, 0u), func_1().x), min(reverseBits(vec2<u32>(1u, 0u)), arg_0), var_2.c), 1f), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -2521f), arg_0.x < 21396u)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-115f, -960f), _wgslsmith_f_op_f32(select(-671f, -1000f, var_1.x))))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 22>();
    let var_0 = Struct_1(vec2<u32>(u_input.a.x ^ u_input.c.x, firstLeadingBit(~global0[_wgslsmith_index_u32(33015u, 22u)])), ~func_1(), 48825i);
    let var_1 = func_3(u_input.a.xw);
    global1 = array<vec4<u32>, 23>();
    let var_2 = ~u_input.b.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(0i, var_2.x)), vec2<i32>(20279i, u_input.b.x) | vec2<i32>(var_0.c, var_0.c)), vec2<i32>(var_0.c, abs(-8655i))), firstTrailingBit(firstTrailingBit(global1[_wgslsmith_index_u32(func_1().x, 23u)])) | firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(8249u, 23u)], vec4<u32>(var_0.a.x, 1u, var_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 22u)])), vec4<u32>(var_0.b.x, 4294967295u, var_0.b.x, u_input.a.x))), 4294967295u, u_input.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(1u), ~2458u ^ u_input.a.x, 52741u, 40630u), countOneBits(u_input.a), ~(~select(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], vec4<u32>(4294967295u, u_input.c.x, 74478u, 91883u), true))));
}

