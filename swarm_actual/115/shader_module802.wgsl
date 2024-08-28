struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
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

var<private> global0: array<f32, 27>;

var<private> global1: Struct_2 = Struct_2(true, vec4<u32>(39062u, 98030u, 4294967295u, 15388u), vec2<bool>(true, false));

var<private> global2: array<i32, 16>;

var<private> global3: vec4<f32> = vec4<f32>(1000f, -349f, 1039f, -180f);

var<private> global4: array<u32, 18>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = abs(global1.b);
    global2 = array<i32, 16>();
    return 1u;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> u32 {
    global2 = array<i32, 16>();
    var var_0 = vec3<i32>(~global2[_wgslsmith_index_u32(~39659u, 16u)], -1i, -40891i);
    let var_1 = arg_0.b.x;
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 745f), vec4<f32>(global0[_wgslsmith_index_u32(global1.b.x, 27u)], -533f, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, -769f, global3.x) - vec4<f32>(global0[_wgslsmith_index_u32(global1.b.x, 27u)], global3.x, -1968f, global0[_wgslsmith_index_u32(var_1, 27u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -812f, global0[_wgslsmith_index_u32(global1.b.x, 27u)], global3.x)), vec4<bool>(false, arg_1, arg_1, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-822f, 1984f, 495f, 168f))), _wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 621f, global3.x, global3.x), vec4<f32>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(global1.b.x, 27u)], global3.x, global0[_wgslsmith_index_u32(4294967295u, 27u)]))))))) - vec4<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~1u | arg_0.b.x, 27u)])), 1047f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(207f)), -808f), -1522f));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x));
    return _wgslsmith_mod_u32(~max(abs(abs(arg_0.b.x)), global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(17407u, 69925u), 18u)]), 1u);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global1 = Struct_2(~(global4[_wgslsmith_index_u32(u_input.a, 18u)] >> (reverseBits(4499u) % 32u)) != global1.b.x, global1.b, vec2<bool>(global1.c.x, any(select(vec3<bool>(false, false, global1.c.x), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))));
    var var_0 = Struct_1(global3.xx, global1.c.x, arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(step(global3.x, 703f))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), !(global0[_wgslsmith_index_u32(~func_3(Struct_2(var_0.b, global1.b, vec2<bool>(var_0.b, true)), var_0.b, vec4<i32>(2147483647i, -22840i, 56617i, arg_0.x)), 27u)] >= 396f), _wgslsmith_mult_i32(~max(~var_0.c, ~30871i), ~_wgslsmith_sub_i32(arg_0.x, ~(-1i))));
    let var_3 = Struct_2(!(!global1.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.x, ~min(global4[_wgslsmith_index_u32(u_input.a, 18u)], 4294967295u), 0u, func_1(Struct_1(var_0.a, var_0.b, var_0.c), true, ~0u, var_2.a.x)), ~(~vec4<u32>(global1.b.x, u_input.c.x, global1.b.x, u_input.c.x))), vec2<bool>(false, true));
    return Struct_1(var_2.a, all(select(!vec4<bool>(global1.a, false, var_3.a, false), !vec4<bool>(true, var_0.b, false, var_0.b), var_3.c.x)) & global1.c.x, -(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(var_3.b.x, 16u)], -1i << (u_input.c.x % 32u)) >> (global4[_wgslsmith_index_u32(47791u, 18u)] % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(-2147483647i);
    var var_1 = ~((~(~0u) << ((firstTrailingBit(52655u) ^ 1u) % 32u)) >> (~(~0u) % 32u));
    global4 = array<u32, 18>();
    var var_2 = _wgslsmith_sub_u32(u_input.a, countOneBits(global4[_wgslsmith_index_u32(firstLeadingBit(countOneBits(u_input.a)), 18u)]));
    let var_3 = Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(countOneBits(func_1(Struct_1(global3.zw, global1.a, u_input.b), global1.c.x, 14344u, 426f)), 18u)], 49533u, global1.b.x, ~(~global1.b.x)), ~global1.b), func_2(vec3<i32>(-1977i, ~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(4294967295u, 16u)], u_input.b), _wgslsmith_mod_i32(~global2[_wgslsmith_index_u32(15907u, 16u)], ~8614i))), Struct_2(all(vec4<bool>(false, false, global1.a, any(vec2<bool>(global1.c.x, global1.c.x)))), vec4<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 123006u, 4294967295u, 48902u)), vec4<u32>(1u, global1.b.x, global1.b.x, 44626u)), 0u, func_3(Struct_2(global1.c.x, vec4<u32>(65254u, 11651u, 1u, global4[_wgslsmith_index_u32(114100u, 18u)]), vec2<bool>(global1.a, global1.a)), all(vec3<bool>(global1.c.x, global1.a, true)), vec4<i32>(14424i, u_input.b, -2147483647i, u_input.b)), ~(~u_input.a)), !select(vec2<bool>(global1.c.x, true), !global1.c, select(global1.c.x, true, global1.a))), vec3<i32>(u_input.b >> (81751u % 32u), (-u_input.b >> (reverseBits(26712u) % 32u)) & -(~0i), 0i));
    var var_4 = ~u_input.b;
    let var_5 = _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1973f), _wgslsmith_f_op_f32(f32(-1f) * -1529f), 4616i > (-76505i & var_3.b.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | min(u_input.c.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 0u, u_input.a), ~45565u)));
}

