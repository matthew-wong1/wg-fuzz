struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-281f), Struct_1(957f), Struct_1(-1116f), Struct_1(1445f), Struct_1(570f), Struct_1(-1271f), Struct_1(296f), Struct_1(-729f), Struct_1(1292f));

var<private> global1: vec3<u32>;

var<private> global2: bool;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> vec2<u32> {
    var var_0 = 1i;
    global0 = array<Struct_1, 9>();
    let var_1 = -1312f;
    var var_2 = _wgslsmith_sub_i32(i32(-1i) * -_wgslsmith_mod_i32(-35227i, -1i), i32(-1i) * -1i);
    var var_3 = var_1;
    return ~u_input.a.zx;
}

fn func_3() -> u32 {
    let var_0 = abs(0u);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(~0u, firstTrailingBit(1u)), u_input.a.x), min(var_0, _wgslsmith_add_u32(~global1.x, 4294967295u))), ~((~u_input.a << (countOneBits(u_input.a) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(firstTrailingBit(u_input.a), select(vec3<u32>(1u, var_0, global1.x), u_input.a, false), ~u_input.a) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    global1 = vec3<u32>(~max(max(1u >> (1u % 32u), 0u), reverseBits(global1.x & arg_0.x)), _wgslsmith_mod_u32(~func_3(), arg_0.x), 17376u);
    let var_0 = select(_wgslsmith_clamp_vec3_i32(vec3<i32>(min(i32(-1i) * -1753i, 1i), ~_wgslsmith_clamp_i32(1i, -2147483647i, -38096i), -14763i), -(~firstLeadingBit(vec3<i32>(-27524i, 1i, -1i))), -vec3<i32>(2147483647i << (u_input.a.x % 32u), 1i, firstTrailingBit(-2147483647i))), abs(_wgslsmith_div_vec3_i32(firstLeadingBit(-vec3<i32>(22257i, 26940i, 1i)), vec3<i32>(1i, 2147483647i, 1i))), true);
    global0 = array<Struct_1, 9>();
    let var_1 = abs(u_input.a.yz);
    global2 = true | any(vec3<bool>(true, true, select(true, true, select(true, true, false))));
    return _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(arg_1.a - -1048f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true || all(vec2<bool>(true, true)), true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_2(reverseBits(~func_1(vec2<u32>(2716u, u_input.a.x), 1u)), global0[_wgslsmith_index_u32(~4294967295u, 9u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2975f)), _wgslsmith_div_f32(-725f, 401f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-955f * 584f))), _wgslsmith_f_op_f32(-1031f * _wgslsmith_f_op_f32(f32(-1f) * -989f)), (u_input.a.x & 1u) == _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -223f));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], Struct_1(var_1.x), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(abs(~u_input.a.x), ~_wgslsmith_mod_u32(4294967295u, 1u)), 9u)], !vec4<bool>(false, false, true, all(select(vec2<bool>(var_0.x, var_0.x), var_0.yz, var_0.x))), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, 47423u, u_input.a.x) ^ vec4<u32>(global1.x, 1232u, 3251u, global1.x), ~vec4<u32>(4294967295u, global1.x, u_input.a.x, global1.x)), reverseBits(0u))), 9u)]);
    var var_3 = true;
    let var_4 = any(vec4<bool>(all(var_0), 21193u != global1.x, all(var_2.d), any(!select(var_2.d.xzz, var_2.d.xxw, false))));
    let var_5 = max(_wgslsmith_div_u32(global1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(global1.x, 4294967295u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.xy))), global1.x) != u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.a), _wgslsmith_f_op_vec3_f32(var_1.zzx - vec3<f32>(var_2.b.a, 753f, _wgslsmith_f_op_f32(-var_1.x))), ~min(countOneBits(global1.x << (4294967295u % 32u)), 0u), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(ceil(-1040f)), -546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(546f * 1759f))))));
}

