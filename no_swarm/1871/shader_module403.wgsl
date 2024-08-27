struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    global0 = true & !(all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)) || true);
    global0 = !(55496i < _wgslsmith_div_i32(-1i, max(-1i, _wgslsmith_add_i32(2147483647i, arg_1.a.x))));
    global0 = false;
    global0 = !(!(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true)) | !any(vec3<bool>(false, false, true))));
    global0 = (_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-arg_1.a.zy, ~u_input.a.xy), _wgslsmith_mod_i32(arg_0, arg_0) ^ ~u_input.a.x) | u_input.a.x) < _wgslsmith_add_i32(36706i, _wgslsmith_add_i32(reverseBits(firstTrailingBit(2147483647i)), arg_1.a.x ^ -arg_0));
    return vec2<bool>(abs(arg_1.b) == _wgslsmith_clamp_u32(u_input.b.x ^ arg_1.b, min(select(0u, u_input.b.x, true), 1u), ~_wgslsmith_mod_u32(arg_1.b, 0u)), !any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> vec3<bool> {
    global0 = all(vec2<bool>(true, true));
    let var_0 = Struct_4(Struct_3(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true), reverseBits(-vec3<i32>(39321i, 13709i, arg_0)), any(func_3(~(-48738i), Struct_1(arg_1, 4294967295u, vec4<f32>(1945f, 2192f, -776f, -1006f)))), Struct_2((2147483647i <= u_input.a.x) & false, _wgslsmith_div_f32(-758f, 634f), Struct_1(arg_1, _wgslsmith_mod_u32(198u, u_input.b.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1026f, -755f, 1252f, 489f))))), 1f), _wgslsmith_mod_u32(9598u, 25471u), ~arg_1);
    var var_1 = func_3(_wgslsmith_dot_vec4_i32(-vec4<i32>(reverseBits(u_input.a.x), 0i, abs(16007i), countOneBits(25396i)), firstTrailingBit(firstLeadingBit(-vec4<i32>(0i, u_input.a.x, 11198i, 1i)))), var_0.a.d.c);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1049f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.e * _wgslsmith_div_f32(230f, -1220f))))));
    global0 = var_1.x;
    return !select(!vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, var_1.x, true), true);
}

fn func_1() -> vec3<bool> {
    let var_0 = select(vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(408f)))) > -409f, true, true), !select(!func_2(u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec3<bool>(true, true, true), vec3<bool>(select(true, true, true), true, true)), select(vec3<bool>(select(true, true, true), true, false), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(any(vec4<bool>(false, true, false, true)), false, all(vec2<bool>(false, false)))), reverseBits(reverseBits(-17974i)) > (~(-38622i) << (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u))));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(min(4294967295u, u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 8652u), ~u_input.b.x, u_input.b.x) >> (~(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 88790u)) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x, _wgslsmith_clamp_u32(~30304u, ~49924u, 20299u))) >> (firstTrailingBit(~(~vec4<u32>(4294967295u, 49229u, u_input.b.x, 4294967295u))) % vec4<u32>(32u));
    global0 = any(vec4<bool>(var_0.x, !(_wgslsmith_f_op_f32(sign(-952f)) > 643f), false, select(var_0.x, true, u_input.b.x != u_input.b.x) | !var_0.x));
    let var_3 = _wgslsmith_add_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, i32(-1i) * -13334i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, -2147483647i)), select(-vec4<i32>(-1i, u_input.a.x, -1i, 1i), vec4<i32>(7662i, 2147483647i, 2147483647i, u_input.a.x), !var_0.x))), -vec4<i32>(min(-1i, u_input.a.x >> (u_input.b.x % 32u)), -13006i, 2147483647i, -1i));
    return select(var_0, select(vec3<bool>(all(vec4<bool>(true, false, true, false)), var_0.x, var_0.x), func_2(var_3.x, vec4<i32>(~var_3.x, _wgslsmith_add_i32(var_3.x, 11440i), -2147483647i, ~u_input.a.x)), true), vec3<bool>(true && var_0.x, firstTrailingBit(~u_input.b.x) > _wgslsmith_clamp_u32(u_input.b.x | var_2.x, ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_2.x), u_input.b.xy)), ~select(33121u, var_2.x, true) != 51979u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a.x;
    global0 = true;
    var_0 = -45970i;
    let var_1 = vec2<u32>(1u, u_input.b.x);
    let var_2 = select(func_1(), !func_1(), !vec3<bool>(true, all(vec3<bool>(true, true, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_i32(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x), -(u_input.a.x & 137i)), firstTrailingBit(~(~6851i)), !var_2.x), (reverseBits(var_1) | ~u_input.b.zz) << (vec2<u32>(max(var_1.x, _wgslsmith_dot_vec2_u32(u_input.b.yy, var_1)), countOneBits(var_1.x)) % vec2<u32>(32u)));
}

