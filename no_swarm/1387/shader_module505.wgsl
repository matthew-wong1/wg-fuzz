struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-2171f, vec4<u32>(37561u, 26552u, 1u, 50771u), false, 90244u, vec3<bool>(true, false, true));

var<private> global1: vec4<i32> = vec4<i32>(34237i, 0i, 1i, -6072i);

var<private> global2: array<vec4<u32>, 24>;

var<private> global3: array<Struct_1, 29>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    global2 = array<vec4<u32>, 24>();
    global3 = array<Struct_1, 29>();
    var var_0 = Struct_1(firstLeadingBit(~_wgslsmith_mult_vec2_u32(arg_0.b.yw, u_input.d.xz) ^ (~vec2<u32>(u_input.d.x, 4294967295u) << (vec2<u32>(0u, 5264u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-492f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.a)))))) + arg_0.a));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(-348f)), arg_0.a, _wgslsmith_f_op_f32(exp2(global0.a)));
    let var_2 = var_1.xz;
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(193f, arg_0.a, global0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 1503f, global0.a)))) + vec3<f32>(-1167f, -1943f, _wgslsmith_f_op_f32(-769f - -540f))))));
    let var_1 = global3[_wgslsmith_index_u32(~(~48059u), 29u)];
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(sign(var_0.x))));
    global3 = array<Struct_1, 29>();
    var var_2 = Struct_2(1125f, ~global2[_wgslsmith_index_u32(arg_0.b.x, 24u)], !global0.e.x, _wgslsmith_mod_u32(select(global0.b.x, arg_1.d, false), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d.x, var_1.a.x), u_input.c)), func_2(func_2(func_2(Struct_2(var_1.b, vec4<u32>(arg_0.b.x, arg_0.d, 9559u, 58473u), false, 120096u, vec3<bool>(global0.e.x, true, arg_0.e.x)), global1.yxz >> (arg_1.b.zzx % vec3<u32>(32u))), global1.wyw), _wgslsmith_mod_vec3_i32(-(~global1.yyy), ~min(global1.xzw, global1.wyy))).e);
    return ~vec2<i32>(-1i, _wgslsmith_mod_i32(0i, -reverseBits(1i)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<f32>(-833f, arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2606f)) * -171f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1129f)))))));
    let var_1 = _wgslsmith_sub_vec2_i32(countOneBits(u_input.e), vec2<i32>(max(~func_3(arg_1, Struct_2(1000f, u_input.d, false, arg_1.d, vec3<bool>(true, true, true)), var_0.x).x, -14443i), -8841i));
    global3 = array<Struct_1, 29>();
    var var_2 = ~2849u == reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d & 0u, global0.d, max(u_input.d.x, 0u), _wgslsmith_sub_u32(38599u, arg_1.b.x)), arg_1.b >> (_wgslsmith_div_vec4_u32(vec4<u32>(8923u, arg_1.d, global0.d, u_input.d.x), vec4<u32>(1u, global0.b.x, 1u, arg_1.d)) % vec4<u32>(32u))));
    var var_3 = global3[_wgslsmith_index_u32(u_input.d.x, 29u)];
    return Struct_1(var_3.a, arg_1.a);
}

fn func_1(arg_0: f32) -> Struct_2 {
    global1 = ~max(vec4<i32>(-62758i, u_input.e.x >> (u_input.d.x % 32u), 1i, -86i ^ u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(9440i, global1.x, global1.x, 8202i), max(vec4<i32>(u_input.a, global1.x, 2147483647i, u_input.e.x), vec4<i32>(global1.x, 15104i, global1.x, 2147483647i)))) << (u_input.d % vec4<u32>(32u));
    let var_0 = vec2<bool>(global0.c, !((global1.x <= -2147483647i) && global0.c));
    global1 = -vec4<i32>((i32(-1i) * -21912i) << (~_wgslsmith_clamp_u32(u_input.d.x, 34787u, u_input.c) % 32u), ~91474i, u_input.b, u_input.a);
    var var_1 = func_4(true, Struct_2(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(exp2(arg_0)), false)), ~(u_input.d & vec4<u32>(51149u, 1u, global0.d, u_input.d.x)) & vec4<u32>(60930u, _wgslsmith_add_u32(u_input.c, 32702u), ~0u, ~1u), true, ~global0.d, vec3<bool>(!all(var_0), var_0.x, !global0.e.x)), func_3(func_2(Struct_2(global0.a, _wgslsmith_mult_vec4_u32(global0.b, vec4<u32>(1u, 41920u, u_input.d.x, u_input.c)), var_0.x != false, 60156u, global0.e), global1.xyy), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1315f + global0.a))), _wgslsmith_mult_vec4_u32(~vec4<u32>(17367u, global0.d, 26678u, 4294967295u), global2[_wgslsmith_index_u32(~78967u, 24u)]), !any(vec4<bool>(global0.e.x, var_0.x, global0.c, false)), ~_wgslsmith_sub_u32(1u, 0u), global0.e), 645f), !global0.e);
    var var_2 = true;
    return func_2(Struct_2(var_1.b, vec4<u32>(var_1.a.x, 1u, ~(~4294967295u), abs(min(var_1.a.x, var_1.a.x))), false, ~(~(~global0.d)), !global0.e), vec3<i32>(-countOneBits(-1i & u_input.b), -14302i, (u_input.e.x >> (4294967295u % 32u)) | ~59577i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -min(global1.x, global1.x) == reverseBits(global1.x);
    let var_1 = func_1(-384f);
    let var_2 = min(_wgslsmith_mult_vec3_u32(abs(select(vec3<u32>(var_1.d, 41530u, u_input.c), vec3<u32>(46252u, 9139u, global0.b.x), global0.e.x)), ~countOneBits(global0.b.zzy) ^ var_1.b.yyz), var_1.b.zww);
    let var_3 = min(-(-33699i ^ _wgslsmith_dot_vec3_i32(min(vec3<i32>(global1.x, -1i, u_input.b), global1.www), global1.wzx)), 16214i);
    var var_4 = Struct_2(-621f, u_input.d, true, 4294967295u, func_2(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(126f * global0.a)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_1.d), vec2<u32>(70176u, 14647u)), countOneBits(var_1.b.x), var_1.d, 0u & u_input.d.x), var_1.c, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global2[_wgslsmith_index_u32(var_2.x, 24u)], vec4<u32>(74017u, u_input.d.x, u_input.d.x, global0.b.x)), var_1.b), !select(vec3<bool>(global0.c, var_1.e.x, false), vec3<bool>(true, false, true), var_1.e.x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(global1.wzx, vec3<i32>(2147483647i, u_input.b, 2147483647i)), global1.xxx & vec3<i32>(u_input.b, 50399i, u_input.e.x)), -global1.zxw, _wgslsmith_add_vec3_i32(-global1.yyx, _wgslsmith_sub_vec3_i32(global1.wzx, global1.zzx)))).e);
    global3 = array<Struct_1, 29>();
    global1 = select(abs(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -19714i, u_input.e.x, -1406i), vec4<i32>(var_3, 2147483647i, global1.x, var_3))), _wgslsmith_add_vec4_i32(firstTrailingBit(firstTrailingBit(vec4<i32>(var_3, global1.x, 11119i, -13445i))), -(vec4<i32>(u_input.e.x, -65181i, u_input.e.x, -2147483647i) << ((var_4.b & vec4<u32>(global0.d, u_input.d.x, 47525u, var_1.d)) % vec4<u32>(32u)))), !var_1.c);
    var var_5 = func_1(_wgslsmith_f_op_f32(select(var_1.a, -1000f, all(select(!var_1.e.xz, vec2<bool>(true, true), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_5.a, _wgslsmith_f_op_f32(-1f), -357f), u_input.e << (~vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), _wgslsmith_sub_i32(global1.x, global1.x), var_1.b.wx, global0.d);
}

