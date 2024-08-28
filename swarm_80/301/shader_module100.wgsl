struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_3(reverseBits(~40953u) >> (global0.e.x % 32u), Struct_2(vec2<u32>(global0.e.x, 1u), Struct_1(_wgslsmith_mod_vec4_i32(-global0.a, vec4<i32>(-28777i, arg_0, 0i, arg_0)), global0.d.x, countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, arg_0), vec2<i32>(-1i, -19969i))), arg_2.yx, global0.e), Struct_1(-reverseBits(vec4<i32>(global0.a.x, 2147483647i, arg_0, global0.c.x)), true, select(vec2<i32>(-2147483647i, global0.c.x), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, global0.a.x), vec2<i32>(global0.c.x, 0i)), select(vec2<bool>(true, arg_2.x), arg_2.zx, arg_2.yx)), vec2<bool>(arg_1, true), vec4<u32>(~1u, 62436u, global0.e.x, u_input.b.x ^ global0.e.x)), ~(~global0.a.wyx >> (u_input.a % vec3<u32>(32u))), Struct_1(abs(vec4<i32>(0i, -1i, -1i, -22184i)), true, global0.a.xy, vec2<bool>(true, true), vec4<u32>(_wgslsmith_dot_vec3_u32(global0.e.wxz, vec3<u32>(global0.e.x, 0u, 0u)), 0u, u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)))), Struct_1(global0.a, true, vec2<i32>(~1i, -arg_0) | global0.c, select(select(select(vec2<bool>(false, arg_2.x), arg_2.zy, arg_2.yx), vec2<bool>(true, true), arg_2.x), vec2<bool>(true, global0.d.x & global0.b), global0.e.x != ~u_input.a.x), global0.e), Struct_1(global0.a, select(all(select(global0.d, vec2<bool>(arg_1, true), arg_2.x)), false, !select(true, arg_2.x, global0.d.x)), vec2<i32>(countOneBits(1i), _wgslsmith_sub_i32(-9163i, -1i)), global0.d, global0.e), global0.e.yyx);
    let var_1 = !select(!vec4<bool>(all(vec4<bool>(global0.b, true, true, false)), arg_2.x, false, all(vec3<bool>(arg_2.x, global0.b, global0.b))), vec4<bool>(true, 1618f >= _wgslsmith_f_op_f32(round(-548f)), var_0.c.d.x, !(!global0.b)), true);
    var var_2 = var_1.yyz;
    return _wgslsmith_mod_vec2_i32(select(vec2<i32>(_wgslsmith_div_i32(2147483647i, -20455i), 1i), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -74538i), vec2<i32>(-18443i, -1i), vec2<i32>(var_0.c.a.x, var_0.c.a.x)), arg_2.x) | vec2<i32>(max(1i, _wgslsmith_sub_i32(1i, 2147483647i)), ~_wgslsmith_sub_i32(-2147483647i, var_0.c.a.x)), abs(~(-global0.c)));
}

fn func_2() -> u32 {
    var var_0 = ~(~(~1u)) != _wgslsmith_clamp_u32(abs(4294967295u), 30438u, 0u);
    var_0 = global0.b;
    let var_1 = Struct_3(23191u, Struct_2(vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(global0.e.x, 1u)), Struct_1(vec4<i32>(-global0.c.x, _wgslsmith_div_i32(global0.a.x, -89013i), 1i, -global0.a.x), select(all(vec4<bool>(global0.d.x, true, false, global0.b)), true, global0.b), select(func_3(global0.a.x, global0.b, vec3<bool>(global0.d.x, global0.b, global0.d.x)), abs(vec2<i32>(global0.c.x, global0.c.x)), vec2<bool>(true, false)), !vec2<bool>(false, global0.b), global0.e), Struct_1(_wgslsmith_mod_vec4_i32(abs(global0.a), vec4<i32>(global0.c.x, -1i, global0.c.x, global0.c.x)), any(select(vec2<bool>(true, false), vec2<bool>(true, global0.b), vec2<bool>(global0.b, true))), vec2<i32>(-15231i, global0.a.x), vec2<bool>(select(true, global0.d.x, global0.b), true), vec4<u32>(u_input.a.x >> (4294967295u % 32u), u_input.a.x, _wgslsmith_clamp_u32(4294967295u, global0.e.x, 4294967295u), u_input.b.x)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.a.x, -10080i), global0.c.x), -global0.c.x, _wgslsmith_mod_i32(abs(-59946i), _wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(global0.a.x, global0.a.x, 12992i, global0.c.x)))), Struct_1(vec4<i32>(global0.c.x, global0.a.x, _wgslsmith_dot_vec4_i32(global0.a, global0.a), -global0.c.x), global0.d.x, min(global0.c, ~global0.a.yz), select(global0.d, !vec2<bool>(global0.d.x, true), global0.d), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(5126u, 1u, u_input.b.x, global0.e.x), global0.e), global0.e))), Struct_1(vec4<i32>(-countOneBits(global0.c.x), _wgslsmith_mult_i32(countOneBits(global0.a.x), -2147483647i), ~global0.a.x, ~select(-2147483647i, -2147483647i, global0.b)), true, select(global0.a.zz, ~(global0.c << (global0.e.yx % vec2<u32>(32u))), global0.d), global0.d, abs(abs(vec4<u32>(1u, u_input.b.x, 0u, u_input.a.x)))), Struct_1(abs(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(-7926i, global0.c.x, -1i, -21124i)), global0.a ^ global0.a, global0.a)), any(vec2<bool>(true, true)), global0.c, vec2<bool>(false, true), vec4<u32>(1u, ~abs(22374u), global0.e.x, global0.e.x)), global0.e.zzx);
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(select(16441i, -23663i, true), firstLeadingBit(global0.c.x), ~(-global0.a.x), _wgslsmith_sub_i32(-1i, countOneBits(global0.a.x))), global0.a);
    let var_3 = global0.a.zwx;
    return _wgslsmith_sub_u32(1u, 1u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(reverseBits(arg_0.c.x), firstLeadingBit(-2147483647i), firstTrailingBit(global0.c.x)), -1i, global0.a.x, _wgslsmith_mod_i32(arg_0.a.x >> (0u % 32u), _wgslsmith_div_i32(arg_0.c.x, global0.c.x))), arg_0.a, global0.a & (select(vec4<i32>(-1i, -1706i, arg_0.a.x, -2147483647i), arg_0.a, vec4<bool>(arg_1.x, arg_1.x, global0.b, true)) << (~vec4<u32>(0u, 0u, arg_3, u_input.a.x) % vec4<u32>(32u)))), !global0.d.x, (arg_0.c | global0.c) ^ arg_0.a.ww, arg_1, vec4<u32>(func_2(), u_input.a.x, global0.e.x >> (select(global0.e.x, 4294967295u, true) % 32u), 17934u) & vec4<u32>(18799u, _wgslsmith_clamp_u32(10676u, global0.e.x, 24382u), _wgslsmith_mod_u32(global0.e.x, 47586u) >> (_wgslsmith_sub_u32(arg_0.e.x, 0u) % 32u), ~135702u));
    let var_0 = ~114494u;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1072f, 1000f) - 447f), 1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f * 519f) - _wgslsmith_f_op_f32(-956f * -1703f)) - 1f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - -267f), -1942f)) * -227f))));
    var var_2 = reverseBits(vec4<i32>(-44290i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_0.c.x, -44676i), -16143i, firstLeadingBit(max(arg_0.a.x, 0i))), -2147483647i ^ -abs(global0.c.x), (abs(-30472i) | global0.a.x) ^ ~(i32(-1i) * -73515i)));
    let var_3 = Struct_3(arg_3, Struct_2(vec2<u32>(0u, _wgslsmith_sub_u32(5785u, 1u)), arg_0, Struct_1(-vec4<i32>(1i, 21699i, 1i, var_2.x), arg_1.x, _wgslsmith_mod_vec2_i32(-arg_0.a.zx, -vec2<i32>(var_2.x, global0.a.x)), arg_1, ~vec4<u32>(1u, arg_3, 0u, 48971u)), abs(countOneBits(arg_0.a.xzx)), Struct_1(_wgslsmith_clamp_vec4_i32(global0.a, -arg_0.a, global0.a), false, _wgslsmith_add_vec2_i32(var_2.wy, -vec2<i32>(var_2.x, -2147483647i)), select(arg_0.d, arg_0.d, global0.d), global0.e)), arg_0, Struct_1(arg_0.a, arg_2 == (2147483647i <= _wgslsmith_add_i32(33779i, arg_0.a.x)), vec2<i32>(var_2.x, _wgslsmith_mod_i32(global0.a.x, _wgslsmith_clamp_i32(-2147483647i, global0.a.x, arg_0.a.x))), select(vec2<bool>(!arg_0.b, !global0.d.x), select(!arg_0.d, !vec2<bool>(arg_1.x, false), false), global0.d.x), (select(arg_0.e, arg_0.e, vec4<bool>(arg_1.x, arg_2, arg_2, arg_2)) | vec4<u32>(arg_3, arg_0.e.x, arg_0.e.x, global0.e.x)) >> (arg_0.e % vec4<u32>(32u))), min(firstLeadingBit(~vec3<u32>(arg_0.e.x, var_0, arg_3)) >> (u_input.a % vec3<u32>(32u)), countOneBits(~vec3<u32>(u_input.a.x, var_0, arg_3)) << (~arg_0.e.wzy % vec3<u32>(32u))));
    return var_3.b.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global0 = arg_0.e;
    let var_0 = -(~arg_1.a.xzx);
    global0 = func_1(func_1(func_1(Struct_1(arg_1.a, arg_1.d.x, _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, -42982i), vec2<i32>(global0.c.x, -22230i)), vec2<bool>(arg_1.d.x, arg_1.d.x), ~vec4<u32>(u_input.a.x, 0u, 38489u, 33768u)), !vec2<bool>(arg_1.d.x, false), countOneBits(global0.a.x) != abs(1i), arg_0.b.e.x), global0.d, any(select(vec2<bool>(false, false), arg_0.e.d, arg_1.d.x)) & true, arg_0.e.e.x), !(!vec2<bool>(true, all(vec3<bool>(arg_0.b.b, false, true)))), arg_1.b, u_input.a.x);
    global0 = arg_0.b;
    global0 = Struct_1(arg_1.a, false, _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(-(vec2<i32>(-21893i, var_0.x) << (global0.e.zw % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, global0.a.x), var_0.yy), -var_0.xx)), ~select(var_0.yy << (global0.e.wx % vec2<u32>(32u)), arg_0.b.c, true), min(abs(vec2<i32>(arg_0.c.a.x, arg_1.c.x) | vec2<i32>(var_0.x, var_0.x)), vec2<i32>(global0.a.x, var_0.x))), arg_0.b.d, vec4<u32>(arg_0.a.x, 0u, (_wgslsmith_mult_u32(61956u, 1u) & func_2()) | ~countOneBits(global0.e.x), ~(~0u)));
    return Struct_1(~(-arg_1.a), _wgslsmith_sub_i32(arg_1.c.x, 11794i) >= (20393i ^ (1i << ((1u ^ u_input.b.x) % 32u))), vec2<i32>(2147483647i >> (0u % 32u), global0.c.x), !vec2<bool>(global0.b, 1359i <= -var_0.x), global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(66608u, u_input.a.x) << (_wgslsmith_sub_vec2_u32(vec2<u32>(global0.e.x, u_input.a.x), vec2<u32>(43089u, global0.e.x)) % vec2<u32>(32u)), ~(u_input.b ^ vec2<u32>(24028u, global0.e.x))), Struct_1(_wgslsmith_sub_vec4_i32(global0.a, vec4<i32>(global0.a.x, 1i, global0.c.x, global0.a.x)), global0.d.x, vec2<i32>(global0.c.x, 8919i), global0.d, vec4<u32>(_wgslsmith_mult_u32(9237u, global0.e.x), _wgslsmith_add_u32(global0.e.x, 110881u), 1u, ~32263u)), func_1(Struct_1(global0.a, global0.b, global0.a.yy ^ vec2<i32>(global0.c.x, global0.a.x), select(global0.d, global0.d, global0.d), abs(vec4<u32>(15485u, global0.e.x, 0u, 0u))), !global0.d, !(!global0.d.x), global0.e.x), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(global0.a.zzz, global0.a.xwy), reverseBits(global0.a.ywy), vec3<i32>(0i, 0i, global0.a.x) << (u_input.a % vec3<u32>(32u))), func_1(Struct_1(global0.a, true, _wgslsmith_mult_vec2_i32(vec2<i32>(global0.c.x, global0.c.x), vec2<i32>(global0.a.x, global0.a.x)), global0.d, countOneBits(vec4<u32>(0u, 20458u, 1u, 32295u))), !global0.d, any(func_1(Struct_1(vec4<i32>(1i, 9897i, -10289i, -23725i), true, vec2<i32>(-27813i, global0.a.x), global0.d, vec4<u32>(26887u, 4294967295u, 0u, 4294967295u)), vec2<bool>(global0.d.x, global0.d.x), false, 57685u).d), ~firstLeadingBit(u_input.a.x))), func_1(func_1(Struct_1(vec4<i32>(global0.a.x, global0.a.x, 0i, global0.c.x), true, select(global0.c, global0.a.xw, vec2<bool>(global0.b, global0.d.x)), global0.d, global0.e), select(!global0.d, select(global0.d, global0.d, global0.d), select(vec2<bool>(false, false), global0.d, global0.d)), true, 23316u), vec2<bool>(true, true), select(all(vec4<bool>(false, true, global0.d.x, global0.b)), true, false), ~func_1(func_1(Struct_1(global0.a, global0.b, global0.a.xw, global0.d, global0.e), vec2<bool>(true, global0.b), false, 4294967295u), vec2<bool>(global0.d.x, true), any(vec3<bool>(global0.d.x, false, false)), global0.e.x).e.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2025f * -516f)))), _wgslsmith_f_op_f32(308f + _wgslsmith_f_op_f32(-1288f * -532f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(649f - 1000f))), 726f));
    var var_0 = vec2<f32>(_wgslsmith_div_f32(-1498f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-481f * -415f)))), 758f);
    var var_1 = _wgslsmith_div_f32(var_0.x, var_0.x);
    var_1 = _wgslsmith_f_op_f32(484f * _wgslsmith_f_op_f32(max(481f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(103f * var_0.x) - _wgslsmith_f_op_f32(max(-569f, var_0.x))), var_0.x)))));
    var var_2 = global0.c.x >> (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-global0.a.zwz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-154f + var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -378f)))), global0.e.x ^ ~global0.e.x, vec2<f32>(_wgslsmith_f_op_f32(sign(245f)), _wgslsmith_f_op_f32(218f * _wgslsmith_f_op_f32(-var_0.x))), ~_wgslsmith_dot_vec2_i32(func_1(Struct_1(global0.a, true, global0.c, vec2<bool>(global0.d.x, global0.b), vec4<u32>(u_input.b.x, 87244u, 4294967295u, 4294967295u)), global0.d, false, u_input.b.x).c, min(global0.c | global0.c, global0.a.zx)));
}

