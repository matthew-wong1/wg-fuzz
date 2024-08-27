struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<u32> = vec4<u32>(35462u, 1u, 4294967295u, 1u);

var<private> global2: Struct_3 = Struct_3(Struct_1(63037i, vec2<u32>(4294967295u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 27455u)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec3<i32>, arg_3: u32) -> f32 {
    let var_0 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-185f - _wgslsmith_f_op_f32(floor(arg_1))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(step(arg_1, 181f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, arg_1)) - _wgslsmith_f_op_f32(1000f * 1037f))))));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_2(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(23346u, 32070u, u_input.a.x, 1u) ^ vec4<u32>(10941u, 12334u, global1.x, u_input.a.x), ~global2.a.c, vec4<u32>(4294967295u, 6193u, global1.x, u_input.a.x) ^ vec4<u32>(4294967295u, 17285u, 43220u, global2.a.c.x)), global2.a.c), global1.yww, global2.a);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(global2.a), _wgslsmith_f_op_f32(f32(-1f) * -1669f), u_input.b.zxy, 0u ^ global1.x)) + 1f)));
    let var_2 = -_wgslsmith_clamp_vec4_i32(select(vec4<i32>(~(-2147483647i), _wgslsmith_div_i32(arg_0, 2147483647i), arg_1 | var_0.c.a, ~(-2147483647i)), u_input.b, vec4<bool>(true, true, true, true)), -(-vec4<i32>(arg_1, arg_1, -1i, arg_1) & vec4<i32>(arg_0, var_0.c.a, -2147483647i, var_0.c.a)), (u_input.b & _wgslsmith_div_vec4_i32(vec4<i32>(0i, 0i, 2147483647i, 1i), u_input.b)) >> (firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, global1.x, global1.x), vec4<u32>(1u, 4294967295u, u_input.a.x, 1u))) % vec4<u32>(32u)));
    var var_3 = !all(select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), true), vec4<bool>(all(vec2<bool>(true, true)), false, true, true), vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true)));
    var var_4 = var_0.c;
    return global2.a;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec3<u32>) -> vec4<i32> {
    var var_0 = -991i;
    global1 = ~_wgslsmith_mult_vec4_u32(global2.a.c, ~global2.a.c);
    global0 = i32(-1i) * -(~_wgslsmith_add_i32(79997i, global2.a.a));
    var var_1 = Struct_3(func_2(2147483647i, ~u_input.b.x));
    var var_2 = Struct_3(func_2(u_input.b.x, var_1.a.a));
    return ~u_input.b;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    global2 = Struct_3(Struct_1(-abs(arg_0.x << (arg_2.c.x % 32u)), (~vec2<u32>(arg_1.b.x, 0u) ^ global1.xw) ^ arg_2.b, vec4<u32>(~(~77800u), _wgslsmith_dot_vec3_u32(abs(global2.a.c.zzx), _wgslsmith_add_vec3_u32(arg_2.c.zxz, vec3<u32>(u_input.a.x, 54766u, arg_2.c.x))), ~1u, abs(select(1u, u_input.a.x, false)))));
    global0 = ~_wgslsmith_add_i32(arg_1.c.a, u_input.b.x);
    var var_0 = ~vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(arg_1.c.c, vec4<u32>(25588u, arg_1.b.x, 5051u, 0u) >> (min(arg_1.c.c, global2.a.c) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-303f)), 725f, _wgslsmith_f_op_f32(f32(-1f) * -1151f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1467f, 512f, 126f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(516f, 1070f, -135f), vec3<f32>(783f, 879f, -862f), vec3<bool>(true, true, true)))))))));
    let var_2 = func_2(_wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, 2147483647i, arg_2.a), vec3<i32>(1i, global2.a.a, arg_2.a)), global2.a.a), _wgslsmith_mod_i32(36422i, 22557i));
    return Struct_3(Struct_1(2147483647i, ~vec2<u32>(_wgslsmith_mod_u32(global2.a.c.x, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, global2.a.b.x)), vec4<u32>(select(1u, 360u, true) & ~u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 3788u, 0u), arg_1.c.c.wyw), 61941u, 1u)));
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_1 {
    global2 = Struct_3(Struct_1(select(1i, arg_2.a.a, true), ~(arg_1 >> ((vec2<u32>(37851u, 39806u) & arg_1) % vec2<u32>(32u))), ~reverseBits(firstTrailingBit(vec4<u32>(arg_2.a.b.x, 38185u, global2.a.b.x, 4294967295u)))));
    var var_0 = Struct_3(arg_2.a);
    let var_1 = global2.a;
    let var_2 = func_4(~(-u_input.b), Struct_2(6547u, _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global1.x, var_1.c.x), 4294967295u, _wgslsmith_mod_u32(1u, 4294967295u)), _wgslsmith_mult_vec3_u32(~arg_2.a.c.zzy, firstLeadingBit(vec3<u32>(0u, var_0.a.c.x, 6381u)))), arg_2.a), func_2(arg_2.a.a ^ -1i, 1i));
    let var_3 = !all(!(!vec4<bool>(true, arg_0, true, arg_0)));
    return Struct_1(-2147483647i, _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(func_2(1i, var_0.a.a).b, abs(vec2<u32>(global1.x, 5061u))), func_4(vec4<i32>(-4086i, -4784i, var_1.a, 22533i), Struct_2(4294967295u, vec3<u32>(1022u, 0u, 4294967295u), global2.a), global2.a).a.c.xx | vec2<u32>(arg_1.x, global1.x)), ~arg_1, vec2<u32>(68241u, var_1.c.x)), var_0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2.a.c.x, ~global1.yzy >> (~global1.xyz % vec3<u32>(32u)), func_5(u_input.b.x <= -1i, ~(~(~vec2<u32>(u_input.a.x, 1u))), func_4(func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1321f, -285f, 672f))), vec4<bool>(true, true, true, true), vec3<u32>(global1.x, 1u, 61935u)), Struct_2(0u, global2.a.c.xzw, Struct_1(global2.a.a, vec2<u32>(global1.x, global1.x), global2.a.c)), func_2(global2.a.a, ~u_input.b.x))));
    global1 = min(min(firstLeadingBit(~vec4<u32>(0u, 1u, var_0.b.x, global1.x)), ~max(_wgslsmith_mod_vec4_u32(var_0.c.c, vec4<u32>(1u, 37865u, 0u, 4294967295u)), _wgslsmith_clamp_vec4_u32(var_0.c.c, global2.a.c, global2.a.c))), countOneBits(var_0.c.c));
    var var_1 = Struct_2(1u, var_0.c.c.wyy, Struct_1(_wgslsmith_mult_i32(reverseBits(-3740i), reverseBits(countOneBits(u_input.b.x))), abs(func_2(global2.a.a, -global2.a.a).b), var_0.c.c));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-573f - 1716f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1249f))) - _wgslsmith_f_op_f32(func_3(func_4(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, var_1.c.a), Struct_2(55252u, vec3<u32>(var_0.c.b.x, 4294967295u, global2.a.c.x), global2.a), global2.a), _wgslsmith_f_op_f32(-620f * 160f), min(u_input.b.xyz, vec3<i32>(global2.a.a, u_input.b.x, global2.a.a)), 1u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(850f, 780f, 1391f), vec3<f32>(411f, -681f, 948f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-462f, -155f, 1085f) * vec3<f32>(447f, -154f, 518f))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-889f, -531f, 495f), vec3<f32>(-1000f, 1000f, -831f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(747f, 540f, -238f), vec3<f32>(-427f, -1000f, 632f)), vec3<f32>(327f, 1049f, 1000f)))))));
}

