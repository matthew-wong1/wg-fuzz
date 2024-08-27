struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), false, vec3<u32>(1u, 12297u, 1u), vec2<u32>(49492u, 27114u)), 18581u, vec2<u32>(0u, 0u), 0u, Struct_1(vec2<bool>(false, true), true, vec3<u32>(14748u, 0u, 4294967295u), vec2<u32>(53560u, 0u)));

var<private> global2: array<u32, 27>;

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec2<bool>(true, true), false, vec3<u32>(22692u, 30648u, 49048u), vec2<u32>(45064u, 4294967295u)), 52522u, vec2<u32>(36404u, 1u), 1u, Struct_1(vec2<bool>(false, true), true, vec3<u32>(16150u, 57632u, 1u), vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(vec2<bool>(true, false), true, vec3<u32>(0u, 0u, 4294967295u), vec2<u32>(17001u, 0u)), 66463u, vec2<u32>(0u, 1u), 6438u, Struct_1(vec2<bool>(false, false), false, vec3<u32>(4294967295u, 1u, 0u), vec2<u32>(29197u, 75338u))), Struct_2(Struct_1(vec2<bool>(false, true), true, vec3<u32>(57309u, 24108u, 0u), vec2<u32>(0u, 1u)), 27352u, vec2<u32>(39901u, 20911u), 78822u, Struct_1(vec2<bool>(true, false), true, vec3<u32>(62760u, 51821u, 64171u), vec2<u32>(31539u, 59268u))), Struct_2(Struct_1(vec2<bool>(true, true), false, vec3<u32>(0u, 75833u, 98737u), vec2<u32>(7696u, 1u)), 22839u, vec2<u32>(21530u, 64198u), 24868u, Struct_1(vec2<bool>(false, false), false, vec3<u32>(0u, 24748u, 4294967295u), vec2<u32>(4294967295u, 1u))), Struct_2(Struct_1(vec2<bool>(false, false), true, vec3<u32>(24785u, 7784u, 101557u), vec2<u32>(80396u, 49769u)), 1u, vec2<u32>(8258u, 82782u), 0u, Struct_1(vec2<bool>(true, true), true, vec3<u32>(1u, 1u, 1u), vec2<u32>(1u, 611u))), Struct_2(Struct_1(vec2<bool>(false, false), false, vec3<u32>(31831u, 1u, 4294967295u), vec2<u32>(6992u, 1u)), 0u, vec2<u32>(62773u, 4294967295u), 41801u, Struct_1(vec2<bool>(true, true), false, vec3<u32>(43884u, 1u, 4294967295u), vec2<u32>(1u, 0u))));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(707f, 1053f, 1205f), vec3<f32>(-594f, 788f, 288f))))))));
    global2 = array<u32, 27>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -673f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(236f, -192f)));
    var var_2 = select(!(!(!vec4<bool>(global1.a.b, arg_1.a.x, arg_1.a.x, global1.e.b))), vec4<bool>(false, (0i != -u_input.b.x) && true, 108889u == global1.e.c.x, true), select(true, !any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, global1.e.b))), !arg_1.b));
    var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2352f, 459f, -1000f, var_1.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(295f + 409f), _wgslsmith_div_f32(-1513f, var_0.x), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -474f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.x, var_0.x, arg_0.x) * vec4<f32>(var_0.x, var_0.x, -101f, 1000f))) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(417f)), 1212f)))));
    return select(arg_1.c.xx << (reverseBits(~vec2<u32>(global0[_wgslsmith_index_u32(global1.a.c.x, 14u)], 1u)) % vec2<u32>(32u)), arg_1.d, !var_2.wy) << (vec2<u32>(~global0[_wgslsmith_index_u32(~u_input.c & 6567u, 14u)], u_input.c) % vec2<u32>(32u));
}

fn func_2() -> Struct_2 {
    var var_0 = -1i;
    var_0 = reverseBits(_wgslsmith_sub_i32(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a) << (vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(0u, 14u)]) % vec2<u32>(32u)), -vec2<i32>(u_input.a, 1i))) | ~(~u_input.b.x));
    global3 = array<Struct_2, 6>();
    global0 = array<u32, 14>();
    var var_1 = Struct_2(global1.e, _wgslsmith_add_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global1.b) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 35989u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(11202u, 14u)], global2[_wgslsmith_index_u32(94001u, 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76935u, 14u)], 14u)], u_input.c)), 27u)], 18795u), abs(u_input.c)), (_wgslsmith_div_vec2_u32(global1.e.d ^ vec2<u32>(5406u, 46008u), vec2<u32>(14203u, global1.b)) << ((global1.e.d >> (~vec2<u32>(38587u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ reverseBits(vec2<u32>(~global1.e.d.x, ~global1.b)), ~8794u, global1.e);
    return Struct_2(var_1.a, var_1.e.d.x | (_wgslsmith_mult_u32(0u, select(global1.e.d.x, global2[_wgslsmith_index_u32(11667u, 27u)], global1.a.a.x)) << (1u % 32u)), _wgslsmith_clamp_vec2_u32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-895f, -1037f))), Struct_1(!vec2<bool>(global1.a.a.x, true), true, ~var_1.a.c, abs(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25520u, 14u)], 14u)], 14u)], u_input.c)))), ~abs(~vec2<u32>(16004u, global2[_wgslsmith_index_u32(global1.a.d.x, 27u)])), ~(global1.c | global1.a.c.yx) & global1.e.d), ~(~func_3(vec2<f32>(-643f, 799f), Struct_1(vec2<bool>(global1.a.b, global1.a.b), true, vec3<u32>(4294967295u, var_1.b, global1.c.x), vec2<u32>(4294967295u, u_input.c))).x & var_1.d), Struct_1(global1.a.a, select(all(global1.a.a), all(select(vec4<bool>(global1.a.b, global1.e.b, var_1.a.b, var_1.e.a.x), vec4<bool>(global1.a.b, false, global1.e.b, true), vec4<bool>(var_1.a.b, false, false, var_1.e.a.x))), all(vec4<bool>(false, global1.e.b, var_1.e.a.x, var_1.a.b))), vec3<u32>(~4294967295u >> (~global2[_wgslsmith_index_u32(44151u, 27u)] % 32u), 0u, 17672u), (firstTrailingBit(global1.c) << (global1.c % vec2<u32>(32u))) & select(global1.a.d, firstTrailingBit(var_1.c), u_input.c > 1u)));
}

fn func_1() -> Struct_1 {
    var var_0 = !vec4<bool>(true, global1.e.b, any(!vec4<bool>(global1.a.b, true, false, false)), !global1.a.a.x);
    global1 = global3[_wgslsmith_index_u32(1u, 6u)];
    var var_1 = func_2();
    global3 = array<Struct_2, 6>();
    var var_2 = ~32299u;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<u32, 14>();
    var var_1 = Struct_2(Struct_1(vec2<bool>(global1.e.b, select(func_1().a.x, func_2().a.a.x, !global1.a.a.x)), global1.e.b, var_0.c, global1.e.c.xy), _wgslsmith_div_u32(4294967295u, abs(~global2[_wgslsmith_index_u32(var_0.c.x << (u_input.c % 32u), 27u)])), abs(vec2<u32>(global1.d, countOneBits(4262u))), countOneBits(var_0.d.x), func_1());
    var var_2 = global3[_wgslsmith_index_u32(select(global1.d, 1u, false), 6u)];
    var var_3 = Struct_2(Struct_1(vec2<bool>(var_1.a.b, -1i == u_input.a), !var_2.a.b, _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~var_0.c, var_2.e.c), _wgslsmith_sub_vec3_u32(var_0.c, firstTrailingBit(var_2.e.c)), vec3<u32>(var_2.b, global2[_wgslsmith_index_u32(var_2.e.c.x, 27u)] >> (global1.c.x % 32u), ~68410u)), var_0.c.xz), 38302u, min(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, global1.d), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), var_1.e.c.yy)) << ((_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.d.x, global2[_wgslsmith_index_u32(global1.d, 27u)]), var_2.a.d) >> (firstTrailingBit(vec2<u32>(72309u, 24456u)) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(~_wgslsmith_clamp_vec2_u32(var_2.e.c.xy, vec2<u32>(1u, global1.c.x), var_1.e.c.yz))), countOneBits(~(~_wgslsmith_sub_u32(var_0.c.x, var_1.c.x))), Struct_1(vec2<bool>(true, func_3(vec2<f32>(422f, -1000f), global1.a).x == ~var_1.b), true, abs(_wgslsmith_mult_vec3_u32(var_2.a.c, var_2.a.c)), select(select(var_0.c.yx, vec2<u32>(var_2.a.d.x, global0[_wgslsmith_index_u32(var_0.c.x, 14u)]), func_1().a), ~min(vec2<u32>(6474u, global2[_wgslsmith_index_u32(u_input.c, 27u)]), var_1.c), var_2.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(58895u, vec2<i32>(((i32(-1i) * -6237i) & select(u_input.b.x, 2147483647i, var_2.e.a.x)) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.c, var_0.c), var_1.a.c) % 32u), u_input.a), _wgslsmith_div_u32(45543u, ~global1.b), _wgslsmith_f_op_f32(-598f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f - -1289f)))));
}

