struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(54321i, 23532i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-44976i, 24667i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(19411i, -1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, 2147483647i), vec2<i32>(-17328i, -37434i), vec2<i32>(11458i, 2147483647i), vec2<i32>(-48180i, 1i), vec2<i32>(-27766i, 63621i), vec2<i32>(15647i, 0i), vec2<i32>(1i, -1i), vec2<i32>(-1i, -23764i), vec2<i32>(-68064i, 1i), vec2<i32>(-21286i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), 14719i), vec2<i32>(0i, 2147483647i), vec2<i32>(-59799i, 31839i), vec2<i32>(2147483647i, 465i), vec2<i32>(-1597i, -16321i), vec2<i32>(-26814i, -136i));

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(false, false, true, true)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> vec2<bool> {
    global1 = array<Struct_2, 6>();
    var var_0 = Struct_4(u_input.a, vec4<i32>(1i, -firstLeadingBit(1i), u_input.a, i32(-1i) * -6994i), reverseBits(~abs(firstLeadingBit(vec3<u32>(u_input.d, u_input.d, 78337u)))));
    return !vec2<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true)), true);
}

fn func_3() -> f32 {
    global0 = array<vec2<i32>, 23>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(899f, -536f), -2372f)))), 459f)) * 860f);
    let var_1 = Struct_4(u_input.b, vec4<i32>(65808i, firstTrailingBit((u_input.a & -2147483647i) >> ((u_input.d & 4294967295u) % 32u)), u_input.b >> (u_input.e % 32u), ~u_input.c), firstTrailingBit(vec3<u32>(select(u_input.e, u_input.e, true), 1u, u_input.d)));
    var var_2 = Struct_4(~(-_wgslsmith_dot_vec4_i32(var_1.b ^ var_1.b, vec4<i32>(9125i, 1i, var_1.a, var_1.b.x))), _wgslsmith_sub_vec4_i32(~(~var_1.b), vec4<i32>(var_1.a, 1i | u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 6245i, 20298i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-10513i, 23036i, u_input.c, var_1.a), var_1.b, vec4<i32>(var_1.b.x, var_1.a, var_1.a, u_input.a))), max(firstTrailingBit(0i), i32(-1i) * -24496i))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(min(var_1.c, vec3<u32>(u_input.d, 1386u, 4294967295u)), ~vec3<u32>(26797u, 0u, u_input.e)), ~(var_1.c >> (var_1.c % vec3<u32>(32u))), var_1.c));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1059f, 1676f, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-843f, -364f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-500f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: i32) -> vec2<f32> {
    let var_0 = Struct_4(_wgslsmith_dot_vec2_i32(abs(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 48995u), 23u)]) & -global0[_wgslsmith_index_u32(reverseBits(57262u), 23u)], ~vec2<i32>(1i >> (arg_1.x % 32u), 15007i)), abs(_wgslsmith_add_vec4_i32(max(vec4<i32>(arg_2, 29392i, -70801i, u_input.a), select(vec4<i32>(1i, 2147483647i, arg_3, u_input.b), vec4<i32>(0i, -76740i, 13289i, 1i), vec4<bool>(true, false, true, true))), vec4<i32>(u_input.b << (0u % 32u), ~2147483647i, arg_2, max(-31145i, u_input.b)))), firstLeadingBit(vec3<u32>(~2903u, 49547u, ~6066u)) << ((vec3<u32>(arg_0.a, abs(22608u), arg_1.x) >> (_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(14599u, 1u, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.d, arg_0.a), vec3<u32>(0u, u_input.d, arg_0.a), vec3<u32>(1u, 5527u, arg_0.a)), abs(vec3<u32>(arg_1.x, 4294967295u, arg_1.x))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f)));
    var var_2 = select(select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, true, false), any(vec3<bool>(false, true, true))), vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), true), !any(vec3<bool>(true, true, true))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), true), false);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1894f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) * 1980f)))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1829f * _wgslsmith_f_op_f32(f32(-1f) * -989f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(310f * -1000f) - _wgslsmith_f_op_f32(ceil(-302f)))), _wgslsmith_f_op_f32(-1f))));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1111f, 1000f), vec2<f32>(630f, 821f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 6>();
    var var_0 = select(select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true)), vec2<bool>(all(vec4<bool>(false, true, true, false)), !any(vec3<bool>(true, false, true))), true), !func_1(), !vec2<bool>(true & all(vec2<bool>(true, true)), true));
    let var_1 = vec3<bool>(true, false, true & var_0.x);
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f) + _wgslsmith_f_op_f32(f32(-1f) * -629f))), -1004f), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(87086u), vec2<u32>(u_input.e, ~32642u), i32(-1i) * -u_input.c, u_input.a)));
    var var_3 = global0[_wgslsmith_index_u32(0u, 23u)];
    let var_4 = firstTrailingBit(-abs(~(vec4<i32>(4632i, u_input.c, 23860i, u_input.a) | vec4<i32>(2147483647i, var_3.x, var_3.x, -4077i))));
    var var_5 = Struct_2(!select(vec4<bool>(var_0.x | var_0.x, all(vec4<bool>(var_1.x, true, true, true)), !var_1.x, select(false, var_0.x, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_1.x, var_0.x, false, false), false), select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_1.x, true))), select(select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(false, var_1.x, var_1.x, true), var_1.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_1.x), select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(false, true, false, false), var_1.x))));
    var var_6 = Struct_3(vec4<i32>(-(~select(-65262i, 0i, true)), _wgslsmith_sub_i32(var_3.x, u_input.c), firstTrailingBit(~var_3.x), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_4.xxy, vec3<i32>(u_input.c, var_3.x, var_3.x)), _wgslsmith_clamp_i32(var_4.x, 27762i, 0i))), var_4.xx);
    var var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1057f)) * -109f) + _wgslsmith_f_op_f32(step(1361f, 528f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, 148f, var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_div_f32(-814f, var_2.x), -800f, var_2.x))), ~(~(_wgslsmith_sub_u32(u_input.e, 1u) | _wgslsmith_sub_u32(u_input.e, u_input.e))));
}

