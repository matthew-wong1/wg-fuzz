struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1245f, -1162f, -449f, 1032f);

var<private> global1: i32;

var<private> global2: f32;

var<private> global3: bool = true;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    global3 = !any(vec4<bool>(arg_3.e.a.x, (true == arg_0.a.a.x) & arg_0.d, arg_3.b.a.x, any(vec3<bool>(false, false, false))));
    let var_0 = firstLeadingBit(firstLeadingBit(select(vec3<u32>(arg_0.e, arg_0.e, 3013u), vec3<u32>(12244u, arg_1.x, arg_0.c), vec3<bool>(arg_0.b.a.x, false, arg_3.b.a.x)) << (abs(vec3<u32>(4294967295u, 40962u, 0u)) % vec3<u32>(32u)))) ^ _wgslsmith_clamp_vec3_u32(max(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, arg_1.x, arg_0.e), vec3<u32>(2958u, arg_1.x, arg_1.x)), abs(vec3<u32>(81565u, 2422u, arg_1.x))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_0.c, arg_1.x, arg_0.c), vec3<u32>(arg_0.c, arg_1.x, countOneBits(50466u)), _wgslsmith_div_vec3_u32(~vec3<u32>(75019u, arg_1.x, 0u), firstTrailingBit(vec3<u32>(arg_0.e, 0u, 0u)))), _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(57006u, arg_1.x, arg_1.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.x), arg_1), reverseBits(arg_0.e), arg_1.x)));
    let var_1 = vec3<bool>(false, arg_3.b.a.x, false);
    global1 = ~(arg_3.a.x >> ((73407u ^ (6549u << (_wgslsmith_mod_u32(41581u, var_0.x) % 32u))) % 32u));
    var var_2 = Struct_3(Struct_1(vec3<bool>(_wgslsmith_f_op_f32(select(357f, arg_3.d, true)) != _wgslsmith_f_op_f32(-global0.x), arg_0.b.a.x, false)), arg_3.e, _wgslsmith_mult_u32(_wgslsmith_add_u32(reverseBits(var_0.x), 4294967295u), arg_1.x), true, 1u);
    return arg_0.e;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> vec3<bool> {
    global3 = true;
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c.yz, -vec2<i32>(arg_0.x, -2147483647i), vec2<i32>(arg_2.a.x, 3417i)), vec2<i32>(u_input.a | _wgslsmith_sub_i32(-73022i, -1i), ~arg_2.a.x));
    var var_1 = arg_2;
    let var_2 = !(!select(arg_2.b.a.xx, arg_2.c.a.xy, !arg_3.b.a.xx));
    var_1 = arg_2;
    return var_1.b.a;
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = vec2<u32>(abs(1u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(75276u, 39058u, 19246u, 5368u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = Struct_1(!(!vec3<bool>(false, any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, true)))));
    var var_2 = Struct_3(Struct_1(func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(42544i, u_input.b, 6281i, arg_0), u_input.c), Struct_3(var_1, Struct_1(vec3<bool>(true, var_1.a.x, true)), var_0.x, var_1.a.x, firstLeadingBit(var_0.x)), Struct_2(~u_input.c, var_1, var_1, _wgslsmith_f_op_f32(f32(-1f) * -764f), var_1), Struct_3(Struct_1(var_1.a), Struct_1(vec3<bool>(false, var_1.a.x, var_1.a.x)), func_3(Struct_3(var_1, var_1, var_0.x, var_1.a.x, 17013u), vec2<u32>(4294967295u, var_0.x), -1i, Struct_2(u_input.c, var_1, Struct_1(vec3<bool>(true, true, var_1.a.x)), global0.x, Struct_1(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)))), var_1.a.x || var_1.a.x, firstLeadingBit(0u)))), var_1, ~(_wgslsmith_mult_u32(var_0.x, ~var_0.x) >> (countOneBits(_wgslsmith_sub_u32(0u, var_0.x)) % 32u)), any(vec4<bool>(all(var_1.a), any(vec3<bool>(true, var_1.a.x, true)), all(var_1.a.xz), var_1.a.x)) | var_1.a.x, ~var_0.x);
    var_2 = Struct_3(Struct_1(select(!select(var_2.a.a, vec3<bool>(var_1.a.x, var_2.a.a.x, var_2.a.a.x), var_2.b.a.x), vec3<bool>(var_1.a.x, false, all(var_1.a)), var_1.a)), Struct_1(select(vec3<bool>(var_2.a.a.x, all(var_1.a), !var_2.a.a.x), var_2.b.a, var_2.b.a.x)), _wgslsmith_mod_u32(~18103u, firstTrailingBit(0u >> (~var_2.e % 32u))), !var_2.a.a.x & var_2.d, ~0u);
    var var_3 = Struct_3(Struct_1(func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zw, vec2<i32>(arg_0, arg_0)), u_input.c.x, arg_0, i32(-1i) * -2147483647i), Struct_3(Struct_1(var_1.a), var_2.b, 0u, false, reverseBits(1u)), Struct_2(max(u_input.c, u_input.c), var_2.b, var_2.b, global0.x, var_1), Struct_3(Struct_1(var_1.a), var_1, var_2.c, var_2.d, var_0.x))), Struct_1(var_2.a.a), _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(var_2.c, var_0.x, 1u)), max(~vec3<u32>(var_0.x, 34472u, 4294967295u) & select(vec3<u32>(var_2.c, 1u, var_2.e), vec3<u32>(var_0.x, 4294967295u, 6374u), vec3<bool>(var_2.a.a.x, var_1.a.x, var_1.a.x)), ~vec3<u32>(24194u, var_2.c, 23452u))), !var_1.a.x, var_0.x);
    return Struct_3(Struct_1(!(!vec3<bool>(var_2.a.a.x, true, var_1.a.x))), Struct_1(vec3<bool>(var_2.d, var_1.a.x || (var_3.b.a.x && false), var_1.a.x)), 1u, true, 66549u);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = func_2(abs(firstLeadingBit(-21705i)));
    var var_1 = Struct_2(u_input.c, Struct_1(vec3<bool>(false, arg_0.a.x, select(arg_0.a.x & true, -2147483647i < u_input.b, any(vec2<bool>(arg_0.a.x, var_0.d))))), var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1995f) - global0.x) * _wgslsmith_div_f32(2049f, _wgslsmith_f_op_f32(f32(-1f) * -1189f))))), arg_0);
    let var_2 = var_1.a.zzx;
    let var_3 = select(!arg_0.a.yy, arg_0.a.yy, var_0.b.a.xy);
    var var_4 = _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(1u, var_0.c), var_0.e, var_0.e << (4294967295u % 32u), 1u), ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e, arg_1.x, 0u, 4294967295u), arg_1))));
    return func_2(countOneBits(_wgslsmith_div_i32(26746i, 1i))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))), func_1(Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), max(abs(~vec4<u32>(0u, 1u, 1u, 30710u)), _wgslsmith_add_vec4_u32(~vec4<u32>(62901u, 1u, 41459u, 1u), vec4<u32>(1u, 1u, 1u, 1u)))), ~(max(firstTrailingBit(12703u), _wgslsmith_add_u32(42745u, 1u)) ^ 1u), all(vec4<bool>(!any(vec2<bool>(false, false)), !all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), true)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(10275u, 812u)), ~vec2<u32>(1u, 1u)), ~reverseBits(countOneBits(vec2<u32>(0u, 19212u)))));
    let var_1 = func_2(-_wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(-60280i, reverseBits(u_input.b))));
    let var_2 = Struct_2(reverseBits(firstLeadingBit(vec4<i32>(18854i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -1941i), u_input.c.zz), 1i, ~56723i))), var_0.b, Struct_1(!var_1.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x)) - _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-677f * global0.x))), false))), func_1(Struct_1(var_0.a.a), vec4<u32>(14645u, ~23875u, 1u, var_0.c) | select(vec4<u32>(4294967295u, var_0.e, 0u, var_0.e), vec4<u32>(1u, var_1.e, 0u, 114239u), vec4<bool>(var_1.a.a.x, var_0.d, var_1.d, var_1.b.a.x))));
    global2 = global0.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d + global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d * global0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(803f + -411f) * _wgslsmith_f_op_f32(f32(-1f) * -604f)))) < 1367f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, _wgslsmith_mod_u32(~46831u, ~var_0.c), _wgslsmith_mod_u32(43722u, var_1.e), func_2(u_input.a).c), ~firstTrailingBit(countOneBits(0i << (1u % 32u))));
}

