struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
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

var<private> global0: vec4<i32>;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: u32) -> vec2<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(756f + arg_0.x));
    return select(!global2.xx, global2.xw, vec2<bool>(arg_0.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(217f - -1600f) * _wgslsmith_f_op_f32(floor(arg_0.x))), false));
}

fn func_3() -> bool {
    let var_0 = 4294967295u;
    global0 = (vec4<i32>(abs(-28404i | u_input.a), u_input.a, min(global0.x, -2147483647i), u_input.a) | -_wgslsmith_clamp_vec4_i32(vec4<i32>(-20798i, global0.x, 0i, 41837i), vec4<i32>(u_input.a, 2147483647i, u_input.a, global0.x), abs(vec4<i32>(2147483647i, global0.x, -48851i, 64613i)))) >> (~firstTrailingBit(~vec4<u32>(5562u, 1u, 1u, 14815u) >> (vec4<u32>(var_0, 1u, u_input.b.x, 4017u) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = _wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, global0.x, u_input.a, global0.x) ^ vec4<i32>(7338i, u_input.a, -13591i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -1i, 1i, global0.x), vec4<i32>(2147483647i, u_input.a, -27091i, u_input.a))) << (abs(~(~vec4<u32>(97831u, var_0, u_input.b.x, 44413u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global0.x, 0i, -2147483647i), vec4<i32>(-15352i, 1i, global0.x, 0i)) & vec4<i32>(-7127i, global0.x, u_input.a, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 3455i, u_input.a, -1i), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -1i), global0.zw, vec2<i32>(global0.x, 69938i))), -global0.x, abs(firstTrailingBit(-16570i)), 1i));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-37827i, -26247i, global0.x), ~(~firstTrailingBit(u_input.a)), u_input.a), global0.wyx);
    global2 = select(vec4<bool>(global2.x, !global2.x, !global2.x, false), select(vec4<bool>(true, global2.x, true, true), select(vec4<bool>(u_input.a != global0.x, all(global2.ww), true, all(global2.zwz)), select(!vec4<bool>(global2.x, global2.x, global2.x, global2.x), !vec4<bool>(global2.x, true, true, true), all(vec3<bool>(true, global2.x, true))), !vec4<bool>(global2.x, global2.x, global2.x, true)), !select(!vec4<bool>(true, true, false, global2.x), select(vec4<bool>(global2.x, true, false, false), vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(false, global2.x, true, global2.x)), all(global2.xy))), vec4<bool>(true, global2.x, all(vec3<bool>(true, !global2.x, global2.x)), true));
    return global2.x;
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    var var_0 = Struct_3(select(select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, global0.x), vec3<i32>(-2147483647i, -11700i, 15285i)), vec3<i32>(-1i, -1i, 45293i), arg_0.x), (vec3<i32>(2147483647i, -2147483647i, global0.x) ^ vec3<i32>(2147483647i, -53259i, global0.x)) | firstTrailingBit(vec3<i32>(1i, u_input.a, u_input.a)), func_3()) ^ ~(-(global0.zzz >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))));
    let var_1 = Struct_4(var_0.a.x);
    let var_2 = -26345i;
    var_0 = Struct_3(vec3<i32>(~firstTrailingBit(_wgslsmith_mod_i32(2147483647i, global0.x)), max(max(~var_2, countOneBits(-2147483647i)), select(u_input.a, u_input.a, global2.x) & 7119i), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -17878i, u_input.a), vec4<i32>(u_input.a, u_input.a, -8917i, var_1.a)) ^ var_0.a.x));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-594f, 933f)))) + -274f), -633f);
    return 29899i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit((vec4<i32>(global0.x, global0.x, u_input.a, global0.x) >> (vec4<u32>(24649u, firstLeadingBit(u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), ~u_input.b.x) % vec4<u32>(32u))) | vec4<i32>(func_2(func_1(vec2<f32>(998f, -1286f), vec4<u32>(24971u, 39938u, 41404u, u_input.b.x), u_input.b.x)), -(~u_input.a), select(_wgslsmith_div_i32(-1i, -2147483647i), func_2(vec2<bool>(true, global2.x)), true), global0.x));
    var var_0 = all(select(!(!(!global2.zww)), select(vec3<bool>(true, true, true), !select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(false, global2.x, false), global2.x), !(!vec3<bool>(true, global2.x, true))), vec3<bool>(all(select(global2.yzy, global2.wwz, global2.xwy)), true, any(vec2<bool>(global2.x, false)))));
    let var_1 = Struct_3(global0.zyy);
    var var_2 = global2.x;
    let var_3 = Struct_4(global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~1i, _wgslsmith_add_u32(~(~(~u_input.b.x)), u_input.b.x));
}

