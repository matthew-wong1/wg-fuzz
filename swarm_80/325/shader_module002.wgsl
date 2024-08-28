struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 1u), -728f, false, vec4<bool>(true, false, false, true), 1u);

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) - 1257f), any(select(global0.d.www, vec3<bool>(false, !global0.d.x, true), global0.d.x)), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - 650f)) != 1425f, all(global1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_f_op_f32(-322f - global1.b)) >= global1.b, !(!all(global0.d.wwz))), 85684u);
    let var_0 = _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.b >> (8195u % 32u), u_input.b)), -(~vec2<i32>(-2147483647i, 29941i) >> (vec2<u32>(67417u, global1.a.x) % vec2<u32>(32u)))) ^ vec2<i32>(2147483647i, u_input.b);
    var var_1 = vec4<bool>(!select(global1.d.x, global0.c, global1.c), !global1.d.x, all(!global1.d.xy), false);
    var_1 = select(vec4<bool>(any(!(!global0.d)), all(select(vec3<bool>(global0.c, global1.d.x, global0.c), select(var_1.wwz, vec3<bool>(global1.c, global0.c, global1.d.x), vec3<bool>(true, true, var_1.x)), vec3<bool>(true, global0.c, global1.d.x))), !global0.d.x, false), !(!(!vec4<bool>(true, false, global0.d.x, true))), global0.d);
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(max(_wgslsmith_div_vec2_u32(global0.a, ~vec2<u32>(u_input.a, 1u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global0.a.x), global1.a), global1.a & global1.a)), global0.a), 243f, true || select(global0.c, all(!vec3<bool>(true, var_1.x, var_1.x)), !any(vec3<bool>(global0.c, var_1.x, false))), !global1.d, 0u << (~_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(0u, 1u, 0u)) % 32u));
    return ~global1.a >> (firstTrailingBit(abs(global0.a)) % vec2<u32>(32u));
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(global0.e, ~1u), ~(~63058u)) | ~func_3(), global0.b, false, !vec4<bool>(global1.b <= _wgslsmith_f_op_f32(f32(-1f) * -595f), true, true, global1.c), func_3().x);
    let var_0 = Struct_1(firstLeadingBit(~(vec2<u32>(4294967295u, global0.e) | ~global0.a)), global0.b, select(global0.c, true, true), select(select(select(select(vec4<bool>(global0.d.x, true, false, false), vec4<bool>(true, false, true, true), true), !vec4<bool>(global1.d.x, global0.c, true, false), !vec4<bool>(global0.c, true, global1.d.x, global1.d.x)), global0.d, any(global0.d.yw)), !(!select(global0.d, global0.d, global0.c)), !vec4<bool>(true, !global1.d.x, false, true)), 33925u);
    global0 = Struct_1(global1.a & global1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -510f))) - _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(sign(var_0.b)))))), _wgslsmith_f_op_f32(abs(1639f)) > global1.b, select(vec4<bool>(global0.d.x, any(var_0.d), true, false), vec4<bool>(global1.d.x, any(vec2<bool>(var_0.d.x, var_0.d.x)), global1.c, true), global1.c), _wgslsmith_mod_u32(u_input.a, ~reverseBits(_wgslsmith_mod_u32(var_0.a.x, 41111u))));
    let var_1 = vec2<u32>(var_0.e, 1u) | vec2<u32>(~u_input.a, var_0.e);
    global0 = Struct_1(~_wgslsmith_div_vec2_u32(func_3(), vec2<u32>(global1.e, 38220u) >> (vec2<u32>(global0.a.x, 4294967295u) % vec2<u32>(32u))) & vec2<u32>(~(global1.a.x >> (var_0.e % 32u)), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(sign(var_0.b)))))), !global0.d.x, vec4<bool>(true | !any(global0.d.xw), true, !var_0.c, all(global0.d.xz)), 49364u);
    return Struct_1(vec2<u32>(var_1.x, 15689u), -855f, false, global0.d, 4294967295u);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = func_2();
    return func_2();
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = func_1(global1.d, -_wgslsmith_mult_vec4_i32(abs(select(vec4<i32>(u_input.b, u_input.b, 1i, -20570i), vec4<i32>(u_input.b, 62065i, u_input.b, -28210i), global1.d)), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, u_input.b, u_input.b, -22337i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-27267i, 17571i, u_input.b, 2147483647i), vec4<i32>(-16346i, -2147483647i, 63939i, u_input.b)))));
    var_0 = func_2();
    let var_1 = vec2<u32>(u_input.a, min(var_0.e, _wgslsmith_mult_u32(arg_2.e, ~0u) << (arg_2.a.x % 32u)));
    var var_2 = Struct_1(~select(~global1.a, ~global0.a, arg_2.b < -1018f) | ~func_1(vec4<bool>(true, global1.d.x, arg_2.d.x, var_0.c), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 58796i, u_input.b), vec4<i32>(-25006i, 12452i, -2147483647i, -1i))).a, -294f, true, vec4<bool>(var_1.x == firstLeadingBit(var_1.x << (u_input.a % 32u)), all(arg_1), false, !(!global1.c) & any(var_0.d.wwx)), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 4466u), _wgslsmith_sub_u32(u_input.a, 43518u)) ^ (_wgslsmith_mod_u32(4294967295u, min(24718u, global1.a.x)) | (~0u & u_input.a)));
    var_2 = func_1(arg_3.d, reverseBits(vec4<i32>(~(-1i), -u_input.b, ~2147483647i, 1i)) | _wgslsmith_mod_vec4_i32(vec4<i32>(0i, firstTrailingBit(20260i), _wgslsmith_mod_i32(u_input.b, 2147483647i), ~(-2147483647i)), -select(vec4<i32>(u_input.b, 43130i, -28509i, 1i), vec4<i32>(1i, u_input.b, u_input.b, 26821i), var_0.c)));
    return _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-493f, arg_0)), _wgslsmith_f_op_f32(-var_0.b)))))));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    global0 = Struct_1(global0.a, arg_2, any(global1.d), global0.d, global1.e);
    global1 = Struct_1(vec2<u32>(func_1(global1.d, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 17625i), -vec4<i32>(u_input.b, u_input.b, u_input.b, 0i))).e, ~(~_wgslsmith_clamp_u32(28968u, 66244u, 16875u))), _wgslsmith_f_op_f32(-arg_3.x), abs(3678u) >= func_1(!select(vec4<bool>(true, arg_1, global1.d.x, false), vec4<bool>(true, false, arg_1, global0.d.x), false), abs(max(vec4<i32>(-26816i, -33961i, 69539i, arg_0), vec4<i32>(64144i, u_input.b, arg_0, arg_0)))).a.x, func_1(func_2().d, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i | u_input.b, -u_input.b, 1i, u_input.b), vec4<i32>(u_input.b, 1i, u_input.b, abs(2147483647i)))).d, ~abs(func_3().x));
    var var_0 = 0i;
    var_0 = abs(_wgslsmith_div_i32(-65227i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i ^ arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.b, u_input.b, 0i), vec4<i32>(u_input.b, arg_0, -90723i, 38576i))), -(u_input.b ^ arg_0))));
    let var_1 = Struct_1(global0.a, 2132f, any(func_1(global1.d, countOneBits(vec4<i32>(arg_0, arg_0, arg_0, u_input.b))).d), global0.d, _wgslsmith_mod_u32(func_2().e, global0.e));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(u_input.b, any(vec3<bool>(false, !global1.d.x, global1.b == -1501f)), _wgslsmith_f_op_f32(-global1.b), vec4<f32>(619f, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global0.b, global1.d.yz, func_1(global0.d, vec4<i32>(2147483647i, u_input.b, -1i, u_input.b)), func_2()))), 3342f));
    let var_0 = global0.a.x;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(min(u_input.a, firstLeadingBit(~0u)), _wgslsmith_add_u32(abs(0u), _wgslsmith_clamp_u32(53114u, _wgslsmith_div_u32(global0.a.x, global1.a.x), ~global0.e)), 4294967295u, global1.a.x << (global0.a.x % 32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.e, 23122u, 52214u) >> (~vec3<u32>(39391u, u_input.a, 5837u) % vec3<u32>(32u)), vec3<u32>(global1.a.x, global0.e, ~global0.a.x)), 0u, _wgslsmith_sub_u32(func_5(u_input.b, true, _wgslsmith_div_f32(610f, global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-772f, 260f, global0.b, global1.b))).a.x, 4294967295u), ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, global1.e), ~global0.e)));
    var var_2 = func_2();
    let var_3 = Struct_1(func_1(!func_5(-73432i, global0.d.x, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.b, var_2.b, 308f, -1127f)))).d, _wgslsmith_mod_vec4_i32(~(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b) | vec4<i32>(u_input.b, u_input.b, -38916i, u_input.b)), (vec4<i32>(0i, u_input.b, -2147483647i, u_input.b) ^ vec4<i32>(-1i, u_input.b, u_input.b, 1i)) & ~vec4<i32>(u_input.b, -31455i, u_input.b, -2147483647i))).a, 1f, true, global1.d, u_input.a);
    global1 = Struct_1(~(~(~_wgslsmith_mult_vec2_u32(global1.a, vec2<u32>(1u, 1u)))), func_2().b, true, vec4<bool>(global0.d.x, false, true, true), global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~20204u))));
}

