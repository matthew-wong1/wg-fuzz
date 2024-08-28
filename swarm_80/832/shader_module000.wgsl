struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

var<private> global2: vec3<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = 12511u;
    var var_1 = ~(u_input.a | abs(-global0.c & firstTrailingBit(arg_2.c)));
    var var_2 = arg_0.x;
    var_2 = -967f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1396f))), 715f)) + 2385f);
    var var_3 = _wgslsmith_add_vec2_i32(max(firstLeadingBit(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(2147483647i, global0.c)), countOneBits(vec2<i32>(-1605i, 8139i)), abs(vec2<i32>(2147483647i, 45384i)))), -abs(-vec2<i32>(arg_1.c, 31466i))), select(_wgslsmith_mod_vec2_i32(select(vec2<i32>(global0.c, 48801i), vec2<i32>(0i, global0.c), arg_0.wz), vec2<i32>(70814i, -61510i)) << (_wgslsmith_div_vec2_u32(vec2<u32>(91082u, 24503u) | vec2<u32>(var_0, 4294967295u), vec2<u32>(u_input.c.x, 1u)) % vec2<u32>(32u)), -vec2<i32>(_wgslsmith_add_i32(arg_2.c, 15794i), ~arg_1.c), arg_0.zx));
    return _wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, -(u_input.a << (0u % 32u)), -36767i, ~(~global0.c)), _wgslsmith_div_vec4_i32(abs(abs(vec4<i32>(-27755i, global0.c, u_input.a, -35275i))), vec4<i32>(-1i) * -vec4<i32>(1i, global0.c, -28264i, arg_1.c)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(32465u, max(51905u, 1u), _wgslsmith_sub_u32(20441u, u_input.c.x), _wgslsmith_div_u32(global2.x, 10512u)), vec4<u32>(_wgslsmith_dot_vec2_u32(global1.yy, arg_2.d), arg_2.d.x, ~1u, firstTrailingBit(arg_1.a))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    let var_0 = 12688i;
    global0 = arg_2;
    global1 = _wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(53204u, 10730u, arg_0.a, 37601u) | vec4<u32>(global1.x, 4294967295u, 4294967295u, 37559u)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(min(global0.d.x, 0u), 0u, select(1u, 3578u, arg_2.b), _wgslsmith_div_u32(4294967295u, 97622u)), ~vec4<u32>(global1.x, arg_2.a, 958u, 120246u)) % vec4<u32>(32u)), abs(~firstTrailingBit(vec4<u32>(1u, 52859u, arg_3, 0u)) ^ _wgslsmith_mod_vec4_u32(min(vec4<u32>(81942u, 100162u, arg_3, 64533u), vec4<u32>(arg_0.d.x, 1u, global2.x, 1868u)), ~vec4<u32>(arg_2.d.x, global0.a, global1.x, u_input.c.x))));
    global2 = _wgslsmith_sub_vec3_u32(~vec3<u32>(countOneBits(59638u), 1u, ~(~34152u)), ~vec3<u32>(4294967295u, ~(95686u >> (global2.x % 32u)), min(1u, max(arg_2.d.x, u_input.c.x))));
    global1 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 0u, 4294967295u, global1.x), ~vec4<u32>(global2.x, 4708u, arg_0.d.x, global0.d.x))) | _wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(0u, global2.x, 66028u, global1.x)), firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(10962u, global0.a, 0u, global0.d.x), vec4<u32>(1u, 0u, global0.d.x, 1u)))));
    return ~(~min(-9688i, -var_0));
}

fn func_2() -> vec3<i32> {
    global2 = ~(~(~(~global1.xzx)) >> (vec3<u32>(1u, 0u, _wgslsmith_mult_u32(u_input.c.x, ~1u)) % vec3<u32>(32u)));
    global2 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.c.x, 15476u, 1u, 20266u), vec4<u32>(u_input.c.x, global0.d.x, global0.d.x, 1u)), select(vec4<u32>(global2.x, 0u, 8987u, global2.x), vec4<u32>(u_input.c.x, global0.d.x, global1.x, 4294967295u), vec4<bool>(global0.b, global0.b, global0.b, global0.b))) & 24844u, ~(~(46441u << (0u % 32u)))), 28414u, ~87515u);
    var var_0 = max(vec2<i32>(~(-1i), 0i), -firstLeadingBit(vec2<i32>(global0.c, 54824i) << (vec2<u32>(global1.x, global2.x) % vec2<u32>(32u))));
    global2 = global1.ywz;
    let var_1 = vec4<i32>(u_input.a, 0i, -min(global0.c | var_0.x, ~61596i) >> (~(~_wgslsmith_add_u32(1u, 67499u)) % 32u), u_input.a);
    return vec3<i32>(func_4(Struct_1(global1.x ^ global2.x, global0.b, ~firstLeadingBit(23363i), ~vec2<u32>(7252u, 1u)), ~reverseBits(func_3(vec4<bool>(false, global0.b, global0.b, global0.b), Struct_1(global1.x, false, global0.c, vec2<u32>(u_input.c.x, 47228u)), Struct_1(4118u, true, -1i, vec2<u32>(1029u, 50539u)))), Struct_1(abs(~global2.x), !global0.b, 1i << (~global0.d.x % 32u), global2.xx), min(global1.x << (_wgslsmith_sub_u32(0u, u_input.c.x) % 32u), 40410u)), -(abs(-2147483647i) ^ (15455i >> (global0.d.x % 32u))) >> (~(u_input.c.x ^ 4294967295u) % 32u), ~countOneBits(~select(var_1.x, global0.c, true)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_u32(4294967295u, 4294967295u), true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_1.c, u_input.b) << (_wgslsmith_sub_vec3_u32(vec3<u32>(50192u, 0u, 1u), global1.wyx) % vec3<u32>(32u)), func_2()), select(arg_2.d, vec2<u32>(_wgslsmith_sub_u32(global2.x >> (4294967295u % 32u), 1u), 0u), false));
    var var_1 = Struct_1(global0.a, false, 2147483647i, ~vec2<u32>(min(_wgslsmith_add_u32(0u, global0.a), arg_2.a), firstTrailingBit(countOneBits(global1.x))));
    global2 = countOneBits(~(~((global1.zzw ^ global1.wwy) | ~global1.wwz)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-348f, 1414f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(-2348f))))))));
    let var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~global0.c, arg_1.c), vec2<i32>((-u_input.a << (arg_1.d.x % 32u)) & 19720i, -2147483647i), _wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(-2983i, var_0.c), ~vec2<i32>(2147483647i, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.c, -43576i), -vec2<i32>(global0.c, 2147483647i)) & (vec2<i32>(var_0.c, arg_1.c) ^ vec2<i32>(u_input.a, var_1.c))));
    return _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, abs(1u), ~abs(var_0.d.x), u_input.c.x)), _wgslsmith_sub_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(3503u, var_0.a, u_input.c.x, 0u), ~vec4<u32>(u_input.c.x, 0u, 57733u, 4294967295u)), vec4<u32>(u_input.c.x, global2.x, 0u, 4294967295u) & vec4<u32>(arg_2.d.x, arg_1.d.x, global2.x, global0.d.x)), countOneBits(~vec4<u32>(33255u, 19539u, u_input.c.x, u_input.c.x)) << ((vec4<u32>(arg_1.d.x, global0.a, 1u, 11804u) | vec4<u32>(var_1.a, 4294967295u, global1.x, var_1.d.x)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(global0.b, !(!(!(-16154i <= global0.c))), false);
    global2 = ~_wgslsmith_mod_vec3_u32(~(global1.wyx | vec3<u32>(global2.x, 29618u, 26732u)), vec3<u32>(u_input.c.x, 1u, func_1(vec2<bool>(var_0.x, var_0.x), Struct_1(37896u, global0.b, u_input.a, global2.yz), Struct_1(global2.x, true, u_input.b, global2.zz))) >> (global1.zxx % vec3<u32>(32u)));
    global0 = Struct_1(_wgslsmith_clamp_u32(~(~u_input.c.x) | 1u, 0u, 69702u >> (select(0u & global0.a, _wgslsmith_dot_vec3_u32(global1.yzz, vec3<u32>(50769u, 0u, 4294967295u)), true) % 32u)), global0.b, -_wgslsmith_add_i32(-(~10076i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-21726i, 0i), abs(vec2<i32>(u_input.a, -1i)))), firstTrailingBit(abs(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.a, 52322u), global0.d), vec2<u32>(global1.x, u_input.c.x) & vec2<u32>(global2.x, 30989u)))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(531f, -1445f, 253f, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(988f, 1243f, 465f, -1273f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1222f, 833f, -496f, 1786f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-340f, -1612f, -647f, -158f) * vec4<f32>(-425f, -1571f, -385f, -692f))))))));
    global2 = min(vec3<u32>(_wgslsmith_add_u32(~reverseBits(9709u), (0u >> (global0.d.x % 32u)) | 38588u), ~max(_wgslsmith_div_u32(global0.a, 0u), abs(u_input.c.x)), ~_wgslsmith_sub_u32(16452u, global1.x)), _wgslsmith_add_vec3_u32(global1.xzx ^ reverseBits(_wgslsmith_add_vec3_u32(global1.wxx, global1.zzw)), global1.xzy));
    var var_2 = var_0.x;
    var var_3 = Struct_1(~0u, ~2147483647i <= -firstTrailingBit(-17747i), _wgslsmith_dot_vec2_i32(max(vec2<i32>(max(global0.c, -2147483647i), -u_input.a), -_wgslsmith_div_vec2_i32(vec2<i32>(-12288i, -2998i), vec2<i32>(global0.c, global0.c))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-30260i, -37367i), global0.c), -vec2<i32>(2147483647i, 1i) >> (global1.xx % vec2<u32>(32u)))), ~min(global2.xx, ~vec2<u32>(u_input.c.x, 100664u)));
    let x = u_input.a;
    s_output = StorageBuffer(15664i << (var_3.a % 32u));
}

