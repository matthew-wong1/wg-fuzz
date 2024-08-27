struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec4<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_4 = Struct_4(Struct_1(2346f, i32(-2147483648), vec3<f32>(-437f, -118f, -1394f), false), vec3<bool>(true, true, false), vec4<f32>(-106f, 1895f, 814f, -482f), 2147483647i, false);

var<private> global2: vec4<u32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: i32, arg_3: vec4<u32>) -> bool {
    let var_0 = Struct_3(all(global1.b), global1.e, Struct_2(~(~_wgslsmith_div_i32(0i, -2147483647i)), arg_1.c.b, 4294967295u, arg_1.c.d, false));
    let var_1 = 1000f;
    let var_2 = !all(!global0.b.xy);
    return global0.b.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> bool {
    return any(global1.b);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_2) -> Struct_3 {
    let var_0 = !(!(!(func_2(arg_0.a.c.b.a, Struct_3(false, global1.e, arg_1), 6306i, vec4<u32>(global2.x, arg_0.a.c.c, arg_0.d.c.c, 105529u)) | false)));
    return Struct_3(global0.e, !func_3(select(arg_1.d, global1.b, global1.b), arg_0.d, global0.a.c.x, func_2(_wgslsmith_f_op_f32(global1.c.x - -1150f), Struct_3(false, global0.b.x, arg_1), ~(-19900i), countOneBits(vec4<u32>(69607u, u_input.a.x, arg_1.c, 11335u)))), arg_0.d.c);
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = func_1(Struct_5(arg_0, countOneBits(global0.d), -(_wgslsmith_mult_vec4_i32(vec4<i32>(142i, arg_0.c.a, 11i, u_input.b), vec4<i32>(global0.d, 34396i, global1.d, arg_0.c.b.b)) & (vec4<i32>(global0.a.b, global1.a.b, arg_0.c.b.b, global0.a.b) | vec4<i32>(1i, global0.a.b, global1.a.b, u_input.b))), arg_0), arg_0.c).c;
    global1 = Struct_4(func_1(Struct_5(arg_0, -52144i | -u_input.b, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, var_0.b.b, 1i, 0i), vec4<i32>(var_0.a, -5794i, 1i, global1.a.b)), -global0.d, var_0.b.b, _wgslsmith_div_i32(global0.a.b, -16720i)), func_1(Struct_5(arg_0, global0.d, vec4<i32>(479i, 0i, 0i, -29359i), arg_0), Struct_2(0i, global1.a, 4294967295u, arg_0.c.d, true))), arg_0.c).c.b, global1.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, 1813f, 263f, global1.c.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, arg_0.c.b.c.x, 1642f, global1.a.a))) - vec4<f32>(-635f, _wgslsmith_f_op_f32(max(arg_0.c.b.c.x, -701f)), arg_0.c.b.a, _wgslsmith_f_op_f32(-global0.a.a))))), -2147483647i, arg_0.b);
    let var_1 = !global1.a.d;
    var_0 = Struct_2(-max(-var_0.b.b >> (min(77811u, arg_0.c.c) % 32u), max(abs(u_input.b), -2147483647i)), global1.a, ~var_0.c & _wgslsmith_sub_u32(0u, max(~0u, _wgslsmith_sub_u32(global2.x, 51064u))), select(select(select(select(global0.b, vec3<bool>(true, var_1, true), true), arg_0.c.d, true), vec3<bool>(false, true, all(vec3<bool>(true, global0.e, var_1))), true), select(func_1(Struct_5(arg_0, arg_0.c.a, vec4<i32>(-2147483647i, 1i, global0.a.b, -25465i), Struct_3(global0.a.d, false, Struct_2(1i, global1.a, 19903u, vec3<bool>(global1.e, global0.a.d, global0.a.d), true))), Struct_2(global1.a.b, Struct_1(1480f, u_input.b, global1.a.c, false), 1u, vec3<bool>(false, false, var_0.e), true)).c.d, func_1(Struct_5(Struct_3(true, false, arg_0.c), var_0.a, vec4<i32>(-1i, arg_0.c.b.b, var_0.a, arg_0.c.b.b), Struct_3(var_1, var_1, arg_0.c)), arg_0.c).c.d, !vec3<bool>(false, arg_0.b, true)), any(select(vec3<bool>(false, var_1, true), global1.b, select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), arg_0.b)))), true);
    var var_2 = func_1(Struct_5(arg_0, global1.a.b, ~(-vec4<i32>(arg_0.c.a, u_input.b, var_0.a, u_input.b)), func_1(Struct_5(func_1(Struct_5(Struct_3(true, var_1, arg_0.c), var_0.b.b, vec4<i32>(1i, arg_0.c.b.b, -39831i, -2147483647i), Struct_3(false, global1.e, Struct_2(4892i, global1.a, u_input.c.x, vec3<bool>(false, true, global1.b.x), true))), Struct_2(arg_0.c.a, global1.a, arg_0.c.c, global0.b, true)), min(global0.d, -8186i), vec4<i32>(var_0.b.b, -1i, global0.d, 1i), arg_0), Struct_2(u_input.b, arg_0.c.b, abs(u_input.c.x), vec3<bool>(true, true, var_1), false))), Struct_2((_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(global0.a.b, 8518i)) & u_input.b) | _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.b.b, global1.a.b, global0.d, arg_0.c.a)), firstLeadingBit(vec4<i32>(global0.a.b, arg_0.c.a, u_input.b, global0.d))), func_1(Struct_5(func_1(Struct_5(Struct_3(global1.b.x, arg_0.a, arg_0.c), 13441i, vec4<i32>(u_input.b, 0i, global1.a.b, 17000i), arg_0), arg_0.c), -42480i, -vec4<i32>(-1i, arg_0.c.a, global0.a.b, global0.d), func_1(Struct_5(arg_0, -25249i, vec4<i32>(0i, var_0.b.b, 2147483647i, -42935i), Struct_3(global0.b.x, arg_0.c.e, arg_0.c)), arg_0.c)), Struct_2(~23859i, func_1(Struct_5(Struct_3(false, true, Struct_2(-20700i, Struct_1(1028f, -19197i, global0.a.c, var_1), 11367u, arg_0.c.d, arg_0.a)), 389i, vec4<i32>(-1i, u_input.b, -32642i, -1i), arg_0), Struct_2(u_input.b, global1.a, global2.x, var_0.d, false)).c.b, _wgslsmith_dot_vec2_u32(vec2<u32>(28179u, var_0.c), vec2<u32>(u_input.a.x, arg_0.c.c)), arg_0.c.d, var_0.c != 17859u)).c.b, _wgslsmith_dot_vec2_u32(~(~global2.wz), global2.yy), var_0.d, func_3(select(vec3<bool>(var_0.b.d, global1.b.x, arg_0.a), vec3<bool>(global0.a.d, false, global0.b.x), vec3<bool>(true, false, false)), func_1(Struct_5(arg_0, 21740i, vec4<i32>(arg_0.c.a, u_input.b, 9106i, 12138i), arg_0), Struct_2(global1.a.b, Struct_1(-2386f, global1.d, vec3<f32>(223f, var_0.b.c.x, var_0.b.a), var_1), var_0.c, vec3<bool>(arg_0.a, true, false), false)), -854f, global0.a.d)));
    return func_2(var_2.c.b.a, arg_0, ~(-27935i), _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(1u, 31755u, 4294967295u), ~(~0u), 4294967295u, u_input.a.x), vec4<u32>(var_0.c, var_0.c, ~1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec4<bool>(any(vec4<bool>(true, global1.a.d, global0.a.d, false)), true, global1.b.x, global1.e)), !vec4<bool>(!select(global0.a.d, false, false), true, global0.b.x, global1.e), vec4<bool>((_wgslsmith_div_f32(global0.a.a, global1.a.c.x) == -2891f) & func_4(func_1(Struct_5(Struct_3(true, true, Struct_2(global0.a.b, Struct_1(-1933f, global0.a.b, global1.c.wyy, global1.a.d), global2.x, global1.b, false)), -9045i, vec4<i32>(-27679i, global1.d, global1.d, global0.a.b), Struct_3(true, global0.b.x, Struct_2(global1.a.b, global0.a, u_input.c.x, global0.b, global0.e))), Struct_2(21913i, global0.a, 28647u, global1.b, global1.b.x))), !global1.e, true, false));
    var var_1 = Struct_2(max(global1.a.b, global0.a.b), global0.a, ~_wgslsmith_dot_vec3_u32(max(select(u_input.c, vec3<u32>(4294967295u, u_input.c.x, 84131u), global1.a.d), u_input.c >> (vec3<u32>(38944u, 16536u, 0u) % vec3<u32>(32u))), vec3<u32>(~10221u, ~22412u, global2.x << (u_input.a.x % 32u))), vec3<bool>(any(!vec3<bool>(global0.b.x, true, global1.e)), all(var_0), var_0.x), var_0.x);
    var var_2 = Struct_4(global1.a, vec3<bool>(true, var_1.d.x, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, -5226i), firstLeadingBit(2147483647i)) <= max(func_1(Struct_5(Struct_3(var_0.x, global0.a.d, Struct_2(2147483647i, Struct_1(global1.a.c.x, -1i, global1.a.c, true), global2.x, var_1.d, false)), u_input.b, vec4<i32>(global1.d, -2147483647i, 1i, var_1.a), Struct_3(true, var_1.e, Struct_2(-1i, global1.a, 4294967295u, global0.b, global1.e))), Struct_2(global1.d, Struct_1(var_1.b.a, 38264i, var_1.b.c, true), 25739u, vec3<bool>(var_1.e, global1.e, global0.b.x), var_0.x)).c.a, u_input.b)), global0.c, _wgslsmith_div_i32(u_input.b, min(0i, ~global0.a.b)), global0.e);
    let var_3 = 2147483647i;
    global0 = Struct_4(global0.a, !var_0.wwx, var_2.c, func_1(Struct_5(Struct_3(false, var_1.e && global0.b.x, func_1(Struct_5(Struct_3(var_0.x, global0.e, Struct_2(global1.d, var_2.a, u_input.a.x, var_0.zxx, var_0.x)), -29389i, vec4<i32>(31924i, var_1.a, 1i, var_3), Struct_3(true, true, Struct_2(global0.d, var_2.a, 27964u, vec3<bool>(var_0.x, global0.a.d, var_2.e), false))), Struct_2(var_2.a.b, global1.a, u_input.a.x, var_1.d, false)).c), 2147483647i, vec4<i32>(-1i) * -vec4<i32>(-9699i, -23138i, var_1.b.b, u_input.b), Struct_3(var_2.e, global1.a.b > global1.a.b, func_1(Struct_5(Struct_3(false, global0.e, Struct_2(var_2.d, global0.a, var_1.c, vec3<bool>(true, global0.e, var_0.x), global0.e)), u_input.b, vec4<i32>(var_1.a, global0.a.b, var_2.a.b, var_2.a.b), Struct_3(true, false, Struct_2(2147483647i, global0.a, global2.x, var_2.b, var_0.x))), Struct_2(global1.a.b, var_1.b, global2.x, vec3<bool>(false, false, true), false)).c)), Struct_2(max(-var_3, -1i), Struct_1(_wgslsmith_div_f32(-1715f, -855f), _wgslsmith_dot_vec4_i32(vec4<i32>(-13986i, global1.a.b, u_input.b, 23209i), vec4<i32>(var_2.d, global0.a.b, -5954i, 2147483647i)), _wgslsmith_div_vec3_f32(var_2.c.xzw, global0.c.xxx), any(global0.b)), abs(min(4294967295u, 76787u)), !select(vec3<bool>(var_0.x, var_2.a.d, global0.a.d), var_0.zyy, true), true)).c.a, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4316u), u_input.a), max(func_1(Struct_5(Struct_3(true, false, Struct_2(var_3, global0.a, u_input.a.x, global0.b, true)), var_1.b.b, vec4<i32>(var_2.a.b, global1.d, -10772i, global0.a.b), Struct_3(global0.b.x, false, Struct_2(u_input.b, var_2.a, u_input.a.x, global1.b, true))), Struct_2(-48259i, Struct_1(1624f, var_3, var_1.b.c, var_0.x), 0u, var_0.wzw, false)).c.c, ~u_input.c.x), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, var_1.c), ~0u), reverseBits(~u_input.c.yy))), ~(vec3<u32>(_wgslsmith_add_u32(1u, global2.x), abs(var_1.c), ~0u) | min(vec3<u32>(18110u, var_1.c, u_input.a.x), global2.xxw)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global0.c)) - vec4<f32>(_wgslsmith_f_op_f32(-935f * 549f), _wgslsmith_div_f32(var_1.b.c.x, global1.a.c.x), _wgslsmith_div_f32(752f, global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -2002f))))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(~var_1.b.b, 8465i, _wgslsmith_add_i32(var_1.b.b, 2381i)), min(vec3<i32>(-2147483647i, u_input.b, var_3), -vec3<i32>(-18108i, var_3, var_3))));
}

