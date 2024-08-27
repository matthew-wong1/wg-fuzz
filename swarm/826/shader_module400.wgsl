struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<bool>(true, false), vec2<u32>(0u, 29367u), vec3<u32>(6318u, 0u, 1u)), Struct_1(vec2<bool>(true, true), vec2<u32>(80993u, 0u), vec3<u32>(1u, 85105u, 10683u)), Struct_1(vec2<bool>(false, true), vec2<u32>(0u, 33421u), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec2<u32>(35423u, 0u), vec3<u32>(50600u, 42412u, 5302u)), Struct_1(vec2<bool>(false, false), vec2<u32>(0u, 1u), vec3<u32>(16109u, 56218u, 300u)), Struct_1(vec2<bool>(false, true), vec2<u32>(3746u, 1u), vec3<u32>(20494u, 0u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec2<u32>(102789u, 48726u), vec3<u32>(15718u, 0u, 108779u)), Struct_1(vec2<bool>(false, true), vec2<u32>(22000u, 3147u), vec3<u32>(61812u, 53961u, 63135u)), Struct_1(vec2<bool>(true, false), vec2<u32>(147221u, 19482u), vec3<u32>(1u, 71073u, 1u)), Struct_1(vec2<bool>(false, true), vec2<u32>(1245u, 1u), vec3<u32>(0u, 15625u, 18013u)), Struct_1(vec2<bool>(false, true), vec2<u32>(18695u, 41936u), vec3<u32>(84193u, 51509u, 5388u)), Struct_1(vec2<bool>(true, false), vec2<u32>(15952u, 11121u), vec3<u32>(0u, 0u, 674u)), Struct_1(vec2<bool>(true, true), vec2<u32>(30756u, 46069u), vec3<u32>(0u, 1u, 10795u)), Struct_1(vec2<bool>(false, true), vec2<u32>(23878u, 29535u), vec3<u32>(96021u, 1u, 0u)), Struct_1(vec2<bool>(true, true), vec2<u32>(1u, 34334u), vec3<u32>(4659u, 16501u, 28095u)), Struct_1(vec2<bool>(true, true), vec2<u32>(38638u, 8730u), vec3<u32>(0u, 4294967295u, 17190u)), Struct_1(vec2<bool>(true, false), vec2<u32>(4294967295u, 1u), vec3<u32>(4294967295u, 46044u, 6727u)), Struct_1(vec2<bool>(true, false), vec2<u32>(15772u, 0u), vec3<u32>(1u, 28268u, 6433u)), Struct_1(vec2<bool>(false, true), vec2<u32>(19633u, 94776u), vec3<u32>(76626u, 39649u, 1u)), Struct_1(vec2<bool>(true, true), vec2<u32>(94810u, 4106u), vec3<u32>(56124u, 26873u, 13063u)));

var<private> global2: array<Struct_2, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    global1 = array<Struct_1, 20>();
    let var_0 = abs(-vec3<i32>(abs(_wgslsmith_sub_i32(u_input.b.x, 4898i)), countOneBits(_wgslsmith_add_i32(0i, 2147483647i)), countOneBits(min(u_input.c, u_input.b.x))));
    let var_1 = vec2<bool>(all(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)))), false);
    var var_2 = Struct_4(vec4<f32>(-469f, _wgslsmith_f_op_f32(round(1319f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -1134f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-531f)), -917f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(702f * -876f) - _wgslsmith_f_op_f32(-1566f + 308f)) - -459f)), vec2<u32>(abs(u_input.a.x), min(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 37661u, global0.x), ~vec3<u32>(u_input.a.x, 4434u, 4294967295u)))), Struct_2(-1521f, select(vec4<bool>(any(var_1), false, false, u_input.c == -2147483647i), select(!vec4<bool>(false, var_1.x, true, false), vec4<bool>(false, false, true, true), select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(true, var_1.x, true, false))), var_1.x), Struct_1(select(var_1, vec2<bool>(false, var_1.x), false), ~global0.xz, vec3<u32>(global0.x, firstTrailingBit(1u), global0.x & global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1024f * -427f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1131f) + _wgslsmith_f_op_f32(f32(-1f) * -1069f)))));
    var var_3 = all(!select(vec4<bool>(true, select(var_1.x, var_1.x, false), true, false && var_1.x), var_2.c.b, select(select(vec4<bool>(true, true, true, var_2.c.b.x), vec4<bool>(true, var_2.c.c.a.x, var_2.c.b.x, var_1.x), var_1.x), var_2.c.b, !var_2.c.b.x)));
    return countOneBits(global0.xz);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: i32, arg_3: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a.zzw - vec3<f32>(_wgslsmith_f_op_f32(-689f + arg_0.a.x), arg_0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1506f) * arg_1.x))) * arg_1);
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    return vec3<u32>(countOneBits(u_input.a.x), u_input.a.x, 51884u);
}

fn func_2() -> vec3<u32> {
    global2 = array<Struct_2, 27>();
    global0 = vec3<u32>(firstLeadingBit(reverseBits((global0.x >> (u_input.a.x % 32u)) >> (_wgslsmith_div_u32(98721u, u_input.a.x) % 32u))), global0.x, 4294967295u);
    let var_0 = func_4(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-1792f - -901f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1850f - 1000f)), 444f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-790f - 1000f), _wgslsmith_div_f32(633f, 356f)))), func_3(), Struct_2(502f, vec4<bool>(true, false, any(vec3<bool>(true, false, false)), all(vec4<bool>(false, false, true, false))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 12541u), u_input.a.x & global0.x), 20u)], _wgslsmith_f_op_f32(min(1229f, -396f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(694f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(680f + 887f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222f * 965f)))), ~u_input.c, !any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))));
    var var_1 = global1[_wgslsmith_index_u32(~68582u, 20u)];
    global2 = array<Struct_2, 27>();
    return vec3<u32>(16540u, 16342u, _wgslsmith_clamp_u32(abs(_wgslsmith_clamp_u32(35238u, ~u_input.a.x, global0.x)), firstTrailingBit(abs(~var_1.b.x)), var_0.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: i32, arg_3: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(1u, u_input.a.x)), 92629u, 0u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 1u, 44302u), arg_0.yzz >> (vec3<u32>(0u, 1u, 0u) % vec3<u32>(32u))), ~(~115758u), 23932u)) & func_2();
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u & select(~var_0.x, 4294967295u, true), ~(~54112u)), 27u)], _wgslsmith_div_vec2_u32(arg_0.wz, abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, global0.x), countOneBits(vec2<u32>(var_0.x, u_input.a.x))))), min(vec4<u32>(11274u, _wgslsmith_mult_u32(arg_0.x << (1u % 32u), ~4294967295u), u_input.a.x, global0.x), ~firstLeadingBit(arg_0 | vec4<u32>(u_input.a.x, var_0.x, var_0.x, u_input.a.x))));
    var_1 = Struct_3(var_1.a, _wgslsmith_add_vec2_u32(vec2<u32>(~select(u_input.a.x, global0.x, var_1.a.b.x), arg_0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.x, 1u), min(_wgslsmith_clamp_vec2_u32(var_1.b, vec2<u32>(global0.x, u_input.a.x), var_0.zy), u_input.a))), _wgslsmith_div_vec4_u32(arg_0, ~_wgslsmith_add_vec4_u32(arg_0, reverseBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u)))));
    global0 = _wgslsmith_mod_vec3_u32(arg_0.wzy, _wgslsmith_div_vec3_u32(var_1.a.c.c, var_1.a.c.c));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.d - arg_1.a.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    return !var_1.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec2<bool>(!var_0, all(vec4<bool>(false, true, true, func_1(vec4<u32>(6227u, 1u, global0.x, 38783u), Struct_4(vec4<f32>(363f, 1297f, -1725f, -1748f), vec2<u32>(global0.x, u_input.a.x), global2[_wgslsmith_index_u32(0u, 27u)]), 0i, vec3<bool>(var_0, false, true)))) || all(!select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, false, var_0), vec3<bool>(var_0, false, var_0))));
    var var_2 = 8787i;
    var_2 = firstLeadingBit(-16817i) << (~u_input.a.x % 32u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f) - _wgslsmith_f_op_f32(abs(-561f)))) + -450f));
    var_3 = 962f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-470f, 607f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))))), u_input.a.x | reverseBits(0u), countOneBits(abs(~vec4<u32>(4294967295u, 22067u, 29181u, 1084u))) & vec4<u32>(~(global0.x >> (u_input.a.x % 32u)), _wgslsmith_mod_u32(u_input.a.x, func_4(Struct_4(vec4<f32>(-388f, -142f, 220f, -1219f), vec2<u32>(global0.x, global0.x), Struct_2(384f, vec4<bool>(var_1.x, var_1.x, var_1.x, false), Struct_1(vec2<bool>(true, var_1.x), vec2<u32>(14745u, 60839u), vec3<u32>(global0.x, global0.x, 4294967295u)), -622f)), vec3<f32>(-1667f, 1541f, -1190f), u_input.b.x, var_1.x).x), ~111613u, 4294967295u));
}

