struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: bool;

var<private> global2: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    let var_0 = ~min(vec3<i32>(-(~69143i), arg_0.d.x, -1i), min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.d.x, -16143i, arg_0.d.x), vec3<i32>(0i, u_input.c, -2147483647i)), arg_0.d.ywx));
    let var_1 = select(!select(!vec2<bool>(true, arg_1.d), vec2<bool>(true, false), vec2<bool>(true, true)), !vec2<bool>(arg_1.d, arg_1.d), vec2<bool>(true, true));
    global1 = false;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), 691f);
    return (var_1.x & arg_1.d) & !(1i <= u_input.c);
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = (vec3<i32>(arg_0, _wgslsmith_clamp_i32(u_input.c, arg_0, u_input.c) ^ arg_0, _wgslsmith_sub_i32(abs(0i), arg_0)) ^ countOneBits(vec3<i32>(9405i, arg_0, -2147483647i) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), u_input.a.wxy) % vec3<u32>(32u)))) << (firstTrailingBit(vec3<u32>(global2.x, reverseBits(global2.x), u_input.a.x)) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -311f)))));
    var var_2 = _wgslsmith_f_op_f32(abs(-281f));
    var var_3 = vec2<bool>(any(vec3<bool>(true, true, true)), !(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true))));
    var var_4 = ~u_input.a << (~vec4<u32>(global2.x, 1u, 39357u, min(~1u, 24959u)) % vec4<u32>(32u));
    return u_input.a.x;
}

fn func_3() -> f32 {
    var var_0 = Struct_3(abs(-abs(u_input.c ^ 53775i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(519f + -365f))), _wgslsmith_f_op_f32(min(1107f, _wgslsmith_f_op_f32(min(-814f, _wgslsmith_f_op_f32(min(-211f, -1646f)))))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global2.yy, ~_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c, u_input.c, -40836i, -75107i)) ^ -vec4<i32>(0i, u_input.c, -2147483647i, 0i), min(-vec4<i32>(-23394i, -2147483647i, 2147483647i, 33412i), firstTrailingBit(vec4<i32>(u_input.c, 0i, 0i, -1i)))));
    let var_1 = Struct_1(global2.xx, _wgslsmith_f_op_f32(ceil(-776f)), _wgslsmith_f_op_f32(exp2(var_0.b.x)), true && func_1(Struct_3(15420i >> (1u % 32u), var_0.b, global2.xy, _wgslsmith_div_vec4_i32(var_0.d, var_0.d)), global0[_wgslsmith_index_u32(1u, 7u)]));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1606f, var_1.b, 1803f), var_0.b.wwx, vec3<bool>(true, false, false))))) - var_0.b.wyw);
    let var_3 = u_input.c;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(select(-359f, -1066f, var_1.d)), 354f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(-1852f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b))), select(false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, var_1.d))), true && all(vec2<bool>(true, true))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.x)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, func_1(Struct_3(-2147483647i, vec4<f32>(-554f, 853f, -1298f, -821f), vec2<u32>(1u, u_input.a.x) | u_input.a.xz, ~vec4<i32>(15821i, 15995i, u_input.c, 17907i)), global0[_wgslsmith_index_u32(global2.x, 7u)]), max(u_input.b, 4294967295u) == firstTrailingBit(~u_input.a.x), false);
    let var_1 = Struct_1(global2.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-428f + 2867f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_f_op_f32(step(591f, 1119f)))), 235f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(132f))))) - -1000f), !(!var_0.x) || all(var_0.xz));
    let var_2 = Struct_2(Struct_1(var_1.a, -931f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(601f + 1300f)))), false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(691f, 1180f)))))));
    var var_3 = -9448i;
    let var_4 = vec4<u32>(firstTrailingBit(func_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, -2147483647i, -2147483647i, 2147483647i)), -u_input.c))), u_input.a.x, func_2(_wgslsmith_mod_i32(max(1i, -61159i) ^ u_input.c, ~(u_input.c | u_input.c))), var_1.a.x);
    var_0 = !(!(!select(select(vec4<bool>(false, false, var_2.a.d, false), vec4<bool>(var_1.d, true, true, var_1.d), vec4<bool>(false, var_0.x, var_2.a.d, false)), !vec4<bool>(false, false, var_0.x, var_2.a.d), all(var_0.xyy))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_2.a.c + var_2.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, -521f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(func_3()))), var_2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + var_1.b)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.c, _wgslsmith_f_op_f32(sign(-569f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, -410f))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.c, -720f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, var_1.b)))))), vec4<u32>(~0u, _wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_4.x, 25367u), global2.x)), _wgslsmith_div_u32(abs(93624u), ~var_2.a.a.x) & var_1.a.x, 1u));
}

