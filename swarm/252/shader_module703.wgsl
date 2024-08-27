struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22> = array<vec4<u32>, 22>(vec4<u32>(28281u, 109197u, 0u, 1u), vec4<u32>(1u, 2238u, 4294967295u, 1u), vec4<u32>(4734u, 51132u, 4294967295u, 893u), vec4<u32>(17771u, 82525u, 9601u, 83324u), vec4<u32>(54131u, 69879u, 1u, 0u), vec4<u32>(1u, 0u, 0u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, 45146u, 27221u, 1u), vec4<u32>(0u, 0u, 0u, 25765u), vec4<u32>(93418u, 4294967295u, 8613u, 71037u), vec4<u32>(13746u, 44493u, 0u, 0u), vec4<u32>(38190u, 1u, 126343u, 0u), vec4<u32>(1u, 4294967295u, 30190u, 141u), vec4<u32>(1530u, 14071u, 24076u, 1176u), vec4<u32>(0u, 4294967295u, 476u, 8982u), vec4<u32>(5839u, 4294967295u, 4294967295u, 0u), vec4<u32>(40000u, 52816u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 66715u, 10165u), vec4<u32>(1u, 0u, 32193u, 11417u), vec4<u32>(4294967295u, 30355u, 1u, 26873u), vec4<u32>(14264u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(20061u, 4294967295u, 43590u, 36501u));

var<private> global1: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> vec2<bool> {
    var var_0 = !any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)));
    let var_1 = arg_0;
    global1 = 61526u;
    var var_2 = Struct_1(~max(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), ~vec2<u32>(38823u, 38624u)), vec2<u32>(firstLeadingBit(u_input.a.x), u_input.a.x)), ~(vec4<u32>(66813u, _wgslsmith_div_u32(31632u, u_input.a.x), 0u, max(u_input.a.x, 55358u)) | global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 22u)]));
    let var_3 = Struct_1(~abs(u_input.a.zz << (~u_input.a.yz % vec2<u32>(32u))), reverseBits(~global0[_wgslsmith_index_u32(~1u, 22u)]));
    return vec2<bool>(false, true);
}

fn func_2() -> Struct_1 {
    let var_0 = countOneBits(firstLeadingBit(vec4<i32>(-31804i, abs(-486i), i32(-1i) * -1i, u_input.b.x)));
    let var_1 = select(!(!func_3(vec4<i32>(1i, -1i, -58677i, u_input.b.x), var_0.x)), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, true), !vec2<bool>(u_input.a.x != 43996u, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_3(var_0, -50890i), true), var_0.x > 2147483647i)));
    global0 = array<vec4<u32>, 22>();
    var var_2 = Struct_1(u_input.a.xz, select(abs(global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), abs(_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(32906u, 22u)], vec4<u32>(u_input.a.x, 1u, 1u, 0u), global0[_wgslsmith_index_u32(u_input.a.x, 22u)])), select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, var_1.x, false), false)) | ~global0[_wgslsmith_index_u32(u_input.a.x, 22u)]);
    let var_3 = Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, var_0.xyw), vec3<i32>(12528i, -1i, -12860i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(185f + _wgslsmith_f_op_f32(-1976f + -2271f)), 644f)), Struct_1(u_input.a.zx, ~select(abs(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, var_2.b.x)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(18777u, 4294967295u, u_input.a.x), 22u)], !vec4<bool>(false, var_1.x, false, true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(127f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2261f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-177f, -538f) - _wgslsmith_f_op_f32(round(1766f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-126f, 1694f)))), _wgslsmith_div_f32(738f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(446f, -969f)))))));
    return Struct_1(~var_3.c.b.yw, countOneBits(~(~var_3.c.b)));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = Struct_2(1i, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-554f)), _wgslsmith_f_op_f32(f32(-1f) * -735f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-838f)) - -742f)), var_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-506f * _wgslsmith_f_op_f32(ceil(-1419f))), 463f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -706f) * 684f), -107f)));
    var var_2 = func_2();
    var var_3 = ~4294967295u;
    global1 = var_1.c.b.x << (~(~23765u) % 32u);
    return Struct_2(u_input.b.x, _wgslsmith_f_op_f32(sign(626f)), var_1.c, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1000f;
    let var_1 = func_1(false, !vec2<bool>(!(47729u != u_input.a.x), any(select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    var var_2 = 15928u;
    var_0 = var_1.b;
    global1 = 1u;
    var var_3 = _wgslsmith_mod_u32(var_1.c.b.x, ~_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ u_input.a) | vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), var_1.c.b.xyz >> (vec3<u32>(var_1.c.b.x, var_1.c.a.x, 38476u) % vec3<u32>(32u))));
    var_0 = -2041f;
    global0 = array<vec4<u32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_1(reverseBits(-1i) >= abs(var_1.a), func_3(min(vec4<i32>(-100664i, 0i, -26124i, u_input.b.x), vec4<i32>(var_1.a, -2147483647i, u_input.b.x, 49552i)), var_1.a | u_input.b.x)).a, func_1(true, !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))).a, 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.d.x))) * var_1.b), var_1.a, _wgslsmith_mult_u32(~firstTrailingBit(~u_input.a.x), ~u_input.a.x), max(vec4<i32>(-2147483647i, countOneBits(max(u_input.b.x, 1i)), _wgslsmith_add_i32(-9109i, 0i), -_wgslsmith_div_i32(24891i, 1i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(var_1.a, 777i, -53362i, var_1.a), vec4<i32>(21544i, u_input.b.x, -1i, var_1.a)) | select(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a, u_input.b.x, 2147483647i, var_1.a), vec4<i32>(-76411i, -36885i, 0i, var_1.a), vec4<i32>(var_1.a, var_1.a, 34924i, 52804i)), vec4<i32>(25767i, -1i, 889i, -7480i), vec4<bool>(true, false, false, false))));
}

