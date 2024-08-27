struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = vec3<u32>(min(0u, ~countOneBits(_wgslsmith_div_u32(4294967295u, u_input.d.x))), 4294967295u, _wgslsmith_dot_vec2_u32(abs(reverseBits(~vec2<u32>(61163u, u_input.d.x))), u_input.d.yz));
    var var_1 = min(_wgslsmith_mod_u32(abs(u_input.b & 1u), ~1u), 37215u);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 893f, -2104f) * vec3<f32>(377f, -191f, 685f)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, -1289f, -1553f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(850f, -217f, 1321f), vec3<f32>(-1494f, 1357f, 140f))), u_input.a.x < 0i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(432f, 169f, 386f)))), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)))), 66528i, Struct_3(Struct_2(Struct_1(vec3<u32>(64900u, var_0.x, u_input.d.x), any(vec4<bool>(true, true, false, true)), vec2<bool>(true, false), _wgslsmith_f_op_f32(trunc(-926f))), true), countOneBits(-u_input.a.x)));
    var var_3 = _wgslsmith_f_op_f32(var_2.c.a.a.d * _wgslsmith_f_op_f32(floor(var_2.c.a.a.d))) == -242f;
    let var_4 = var_2.c;
    return ~var_4.a.a.a.x;
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = Struct_1(~(~min(~u_input.d, u_input.d ^ u_input.d)), true, vec2<bool>(true, true), arg_0);
    let var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(firstLeadingBit(1u), select(var_0.a.x, var_0.a.x, true), func_3()), ~(~_wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 30245u, u_input.d.x)))) >> (~(~(~(~vec3<u32>(43792u, 5476u, var_0.a.x)))) % vec3<u32>(32u));
    var var_2 = vec2<bool>(var_0.c.x, (u_input.c & (_wgslsmith_div_i32(-1i, u_input.a.x) >> (4294967295u % 32u))) <= -1i);
    var_0 = Struct_1(abs(~(~(~vec3<u32>(var_0.a.x, var_0.a.x, 4294967295u)))), false, vec2<bool>(var_0.c.x, var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(~var_1.yy, reverseBits(var_1.yx)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0.a.x, 63862u, u_input.d.x), vec4<u32>(4294967295u, var_1.x, var_1.x, 4294967295u), vec4<u32>(41556u, u_input.e.x, 0u, 65799u)), vec4<u32>(u_input.d.x, 0u, var_1.x, 0u)), 1u) >> (vec3<u32>(~u_input.b & var_1.x, ~u_input.d.x, var_1.x) % vec3<u32>(32u)), !var_0.c.x, !(!vec2<bool>(true && var_0.c.x, !var_2.x)), _wgslsmith_div_f32(-1337f, 1096f));
    return 2147483647i;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_2.a.zx * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.a.a.d, arg_2.c.a.a.d)), arg_2.c.a.a.d) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x), _wgslsmith_f_op_f32(floor(-533f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-545f, -277f)), arg_2.a.xz)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -800f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.a.a.d), _wgslsmith_f_op_f32(-arg_2.c.a.a.d)))) * arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1456f))));
    var var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_1.x, 2147483647i, firstLeadingBit(arg_2.c.b), 0i), vec4<i32>(2147483647i, func_2(_wgslsmith_f_op_f32(step(-292f, 193f))), u_input.a.x, 2147483647i)), _wgslsmith_div_vec4_i32(max(-vec4<i32>(u_input.c, -26207i, 1i, arg_2.c.b) << (min(vec4<u32>(0u, u_input.b, arg_2.c.a.a.a.x, u_input.b), vec4<u32>(4294967295u, 96739u, 0u, u_input.d.x)) % vec4<u32>(32u)), vec4<i32>(arg_1.x & 24983i, -arg_1.x, u_input.c << (27621u % 32u), arg_1.x >> (arg_2.c.a.a.a.x % 32u))), ~_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(arg_1.x, -2147483647i, u_input.a.x, u_input.a.x)), ~vec4<i32>(-8079i, 13797i, -2147483647i, arg_2.b))));
    var var_3 = Struct_3(arg_2.c.a, firstTrailingBit(2147483647i));
    var var_4 = var_3.a.a;
    return 33279i;
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    var var_0 = 38855u;
    let var_1 = arg_0.b;
    var_0 = _wgslsmith_add_u32(1u, ~82238u);
    let var_2 = true | (_wgslsmith_f_op_f32(-arg_0.a.a.d) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.d) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.d) - -1182f)));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.d), _wgslsmith_f_op_f32(abs(568f)), arg_0.a.a.d) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.d), _wgslsmith_f_op_f32(-arg_0.a.a.d), -400f))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -1i), vec2<i32>(arg_1, arg_1)) << (arg_0.a.a.a.x % 32u), _wgslsmith_mod_i32(u_input.c, u_input.a.x)), Struct_3(Struct_2(Struct_1(~vec3<u32>(arg_0.a.a.a.x, 69292u, u_input.e.x), true, select(vec2<bool>(var_2, arg_0.a.b), arg_0.a.a.c, var_2), _wgslsmith_f_op_f32(sign(-196f))), !(arg_0.a.a.d != 647f)), 2147483647i));
    return var_3.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.d.x, u_input.b, u_input.d.x), false, select(vec2<bool>(false, true), vec2<bool>(false, true), true), _wgslsmith_f_op_f32(-1000f * 564f)), any(vec2<bool>(true, true))), -_wgslsmith_mod_i32(-56519i, func_1(vec3<bool>(false, false, false), u_input.a.xx, Struct_4(vec3<f32>(1000f, -1775f, -1831f), -4851i, Struct_3(Struct_2(Struct_1(u_input.d, false, vec2<bool>(true, true), 1295f), false), u_input.a.x))))), abs(firstTrailingBit(~u_input.c)));
    var var_1 = vec2<bool>(any(select(vec4<bool>(var_0.a.c.x, var_0.b, var_0.a.c.x, false), !select(vec4<bool>(false, var_0.b, true, var_0.b), vec4<bool>(false, true, var_0.a.b, var_0.a.b), true), any(!vec3<bool>(var_0.b, false, true)))), select(!all(vec4<bool>(false, true, var_0.b, var_0.b)), all(func_4(Struct_3(Struct_2(Struct_1(vec3<u32>(var_0.a.a.x, 1u, 1u), true, vec2<bool>(true, var_0.a.b), var_0.a.d), true), u_input.a.x), -2147483647i).a.c), (u_input.b == 29395u) & true));
    var_1 = select(var_0.a.c, var_0.a.c, var_0.a.c.x);
    var_1 = var_0.a.c;
    var var_2 = _wgslsmith_f_op_f32(var_0.a.d - -1361f);
    let x = u_input.a;
    s_output = StorageBuffer(1803f, -1i);
}

