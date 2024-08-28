struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_add_u32(~u_input.d ^ _wgslsmith_add_u32(~3581u, _wgslsmith_div_u32(21829u, _wgslsmith_mod_u32(4294967295u, u_input.a.x))), ~0u);
    var var_1 = Struct_2(Struct_1(arg_1), vec4<bool>(u_input.c < ~(-2147483647i), any(arg_0.b.zw), true && arg_0.d.a.x, any(arg_1.zy)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.x, ~arg_0.c.x, abs(_wgslsmith_mult_i32(56827i, 3369i)), 19069i), vec4<i32>(~1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, arg_0.c.x, 0i), ~vec3<i32>(38843i, 2147483647i, 0i)), arg_0.c.x, -arg_0.c.x)), Struct_1(arg_1));
    var var_2 = var_1.c.x;
    var_1 = arg_0;
    let var_3 = Struct_2(Struct_1(!vec3<bool>(arg_0.b.x, false, var_1.d.a.x)), !arg_0.b, abs(~vec4<i32>(arg_0.c.x, 0i, 2147483647i, u_input.c) | _wgslsmith_mod_vec4_i32(arg_0.c, arg_0.c)) << (select(countOneBits(~vec4<u32>(4294967295u, 0u, var_0, u_input.a.x)), abs(~vec4<u32>(u_input.d, var_0, 1u, 4294967295u)), false) % vec4<u32>(32u)), arg_0.a);
    return select(select(vec3<bool>(true, arg_1.x, _wgslsmith_f_op_f32(-arg_2) <= _wgslsmith_f_op_f32(1215f - 2376f)), !(!var_1.d.a), any(arg_0.a.a)), arg_1, false);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(vec3<bool>(false, false, u_input.c > select(u_input.c & u_input.b.x, 1i, true)));
    let var_1 = Struct_1(select(!func_3(Struct_2(Struct_1(var_0.a), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true), vec4<i32>(-2313i, 24582i, 7766i, -8594i), Struct_1(var_0.a)), !var_0.a, _wgslsmith_f_op_f32(-805f + -186f)), var_0.a, var_0.a.x));
    var var_2 = Struct_2(Struct_1(!var_1.a), vec4<bool>(true, true, true, true), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, _wgslsmith_mod_i32(27703i, u_input.b.x), _wgslsmith_add_i32(u_input.b.x, 42550i)), (vec4<i32>(u_input.c, -19946i, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.c, u_input.b.x, -3587i, u_input.b.x)) & -vec4<i32>(-1i, -2315i, u_input.c, 14945i)), var_1);
    var var_3 = _wgslsmith_sub_u32(~u_input.d, 66743u);
    var_2 = Struct_2(Struct_1(!var_2.d.a), !(!var_2.b), ~min(-_wgslsmith_clamp_vec4_i32(var_2.c, vec4<i32>(u_input.c, u_input.b.x, -30739i, var_2.c.x), var_2.c), -vec4<i32>(-2147483647i, -49852i, 18659i, u_input.c)), var_0);
    return var_2.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = true;
    let var_1 = u_input.b;
    var var_2 = Struct_2(Struct_1(arg_0.a), arg_1, select(vec4<i32>(arg_3.x, var_1.x, var_1.x, _wgslsmith_div_i32(-var_1.x, 1i)), -vec4<i32>(_wgslsmith_div_i32(0i, 2147483647i), func_2(), max(arg_3.x, arg_3.x), _wgslsmith_clamp_i32(-4146i, 1i, u_input.b.x)), func_3(Struct_2(arg_0, !vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), vec4<i32>(-20819i, -38766i, arg_3.x, -1i), Struct_1(vec3<bool>(false, false, arg_0.a.x))), arg_0.a, arg_2.x).x), arg_0);
    let var_3 = Struct_2(Struct_1(var_2.a.a), vec4<bool>(true, 34588u <= firstTrailingBit(~52752u), any(var_2.b.yz), arg_0.a.x), arg_3, var_2.d);
    var_0 = arg_3.x < 0i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(trunc(131f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(615f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, false, false)), vec4<bool>(false, true, true, true), vec2<f32>(266f, -397f), vec4<i32>(u_input.b.x, u_input.c, u_input.c, 0i))) * -536f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1096f * 557f) - _wgslsmith_f_op_f32(f32(-1f) * -414f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1205f, -447f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-317f))))))));
    var var_1 = select(select(u_input.d, reverseBits(_wgslsmith_mult_u32(u_input.a.x, 4294967295u)), _wgslsmith_clamp_i32(~2147483647i, -u_input.b.x, ~u_input.c) > ~(~u_input.c)), u_input.d ^ (reverseBits(u_input.a.x) ^ 1u), !(true || all(vec3<bool>(true, false, false))));
    var var_2 = select(vec4<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, true, true)), vec4<bool>(true, true, false, true), vec2<f32>(var_0, -1000f), vec4<i32>(u_input.c, -51780i, 33410i, u_input.b.x))))) <= 638f, -u_input.b.x <= u_input.c, true, false), vec4<bool>(true & all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), true, true & !func_3(Struct_2(Struct_1(vec3<bool>(false, false, false)), vec4<bool>(false, false, false, false), vec4<i32>(u_input.c, 16317i, u_input.c, 15197i), Struct_1(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), var_0).x, true), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), true))));
    let var_3 = countOneBits(~(~(~_wgslsmith_add_u32(1u, u_input.d))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(145f, 468f, var_0))) - vec3<f32>(var_0, -680f, -213f)))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(744f, -694f, var_0), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, -459f, var_0))))))));
    var_1 = ~var_3;
    var var_5 = vec3<bool>(true, true, false);
    let var_6 = var_4.zy;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(-2147483647i, 19968i), -u_input.b.x, ~16249i, -u_input.b.x)) | -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, u_input.c), vec4<i32>(-2147483647i, u_input.b.x, -41720i, -2870i)), _wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.xx), max(0i, u_input.c), 67101i));
}

