struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(64734u), Struct_1(7991u), Struct_1(65002u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(0u), Struct_1(46356u), Struct_1(81246u), Struct_1(19356u), Struct_1(4294967295u), Struct_1(962u), Struct_1(36276u), Struct_1(33587u), Struct_1(66466u), Struct_1(0u), Struct_1(4294967295u), Struct_1(0u), Struct_1(4294967295u), Struct_1(69265u), Struct_1(14658u), Struct_1(18185u), Struct_1(1u), Struct_1(20055u), Struct_1(4294967295u), Struct_1(48348u), Struct_1(0u));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(5042u), Struct_1(1u), Struct_1(66934u), Struct_1(18517u), Struct_1(1u));

var<private> global3: array<u32, 10>;

var<private> global4: vec4<u32> = vec4<u32>(14132u, 4294967295u, 0u, 127949u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = 750f;
    var var_1 = vec2<bool>(any(!select(!arg_0.zyy, !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, true))), true);
    var_1 = !vec2<bool>(true, arg_0.x);
    return Struct_3(true, 608f, countOneBits(vec4<i32>(0i, _wgslsmith_sub_i32(min(26977i, u_input.c), _wgslsmith_dot_vec2_i32(u_input.b.xz, u_input.b.zz)), 14935i, ~u_input.b.x)), global4.zxw ^ global4.wzx, Struct_1(global3[_wgslsmith_index_u32(max(~35032u, 4294967295u), 10u)]));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(~((_wgslsmith_div_u32(~1u, 43469u) >> (max(global3[_wgslsmith_index_u32(global4.x, 10u)], countOneBits(global4.x)) % 32u)) | 1u), 27u)];
    global0 = ~arg_0.c.x;
    let var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(218f, -1274f, arg_0.b) - vec3<f32>(1000f, -1414f, -406f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(450f, -402f, arg_0.b), vec3<f32>(-511f, arg_0.b, 795f))) + vec3<f32>(arg_0.b, arg_0.b, 101f)))));
    let var_2 = arg_0.b;
    var var_3 = vec2<u32>(43770u, max(~global4.x, _wgslsmith_div_u32(1u, 1u)));
    return reverseBits(select(var_0.a, arg_0.d.x, select(_wgslsmith_add_i32(arg_0.c.x, -44114i) <= (u_input.c | arg_0.c.x), !arg_1.x, arg_0.a)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<f32>) -> bool {
    global4 = ~vec4<u32>(~(~1u), ~(~(arg_2.x >> (global3[_wgslsmith_index_u32(110936u, 10u)] % 32u))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_2.x, arg_2.x, 1514u, 0u)), _wgslsmith_sub_vec4_u32(arg_2, ~vec4<u32>(arg_0, arg_2.x, global3[_wgslsmith_index_u32(arg_2.x, 10u)], 70933u))), _wgslsmith_clamp_u32(max(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(16679u, 10u)], 10u)], ~5136u), global3[_wgslsmith_index_u32(arg_0, 10u)], select(~arg_2.x, ~arg_2.x, true)));
    let var_0 = Struct_3(false, -612f, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, u_input.a), ~u_input.b.xx), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.b.x, u_input.a), vec4<i32>(u_input.b.x, -6743i, u_input.a, u_input.a)), vec4<i32>(38215i, -16917i, 2147483647i, 22583i))), ~(u_input.a ^ countOneBits(1i)), 30671i >> (global3[_wgslsmith_index_u32(arg_0, 10u)] % 32u), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, 0i), -1i)), global4.wxz, Struct_1(func_3(func_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(296f, arg_3.x, arg_1.a.x, 1000f) - vec4<f32>(-1204f, arg_3.x, 735f, 1000f)), func_2(vec4<bool>(false, false, true, false), vec4<f32>(-1837f, arg_3.x, 1000f, -812f), Struct_1(arg_2.x)).e), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true))));
    let var_1 = -14652i;
    let var_2 = select(arg_2, ~arg_2, select(select(vec4<bool>(arg_1.a.x >= -207f, false, !var_0.a, var_0.a | var_0.a), !select(vec4<bool>(var_0.a, true, true, true), vec4<bool>(var_0.a, false, false, false), vec4<bool>(var_0.a, false, var_0.a, false)), vec4<bool>(u_input.a < 2147483647i, false, var_0.a, true)), vec4<bool>(!any(vec4<bool>(var_0.a, true, true, true)), var_0.a, select(all(vec4<bool>(true, false, var_0.a, true)), false, !var_0.a), false), vec4<bool>(false, any(!vec2<bool>(var_0.a, var_0.a)), var_0.a, u_input.c == -var_0.c.x)));
    let var_3 = vec3<i32>(-2945i, -u_input.a, var_0.c.x);
    return false & (all(!(!vec2<bool>(true, var_0.a))) || (0u <= ~func_2(vec4<bool>(var_0.a, true, var_0.a, false), vec4<f32>(638f, -1085f, -541f, arg_1.a.x), var_0.e).d.x));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global1 = array<Struct_1, 27>();
    let var_0 = Struct_3(true & any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false), any(vec2<bool>(false, true)))), -2486f, countOneBits(arg_0 << (select(~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(53481u, 10u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 10u)], 10u)], 10u)], 4294967295u), ~vec4<u32>(4294967295u, 4294967295u, 0u, 2134u), false) % vec4<u32>(32u))), global4.wzx, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20340u, 10u)], 10u)], 8u)]);
    var var_1 = func_4(~func_3(func_2(!vec4<bool>(var_0.a, false, false, true), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b, -727f, var_0.b, var_0.b))), Struct_1(4294967295u)), vec2<bool>(var_0.a, var_0.a)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2194f, -343f, var_0.b) - vec3<f32>(-1612f, var_0.b, var_0.b)))), vec4<u32>(~(_wgslsmith_mult_u32(global4.x, var_0.e.a) & global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(0u, 10u)], 0u), 10u)]), 13793u, _wgslsmith_sub_u32(63352u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(39528u, 10u)], 10u)]) << (6811u % 32u), ~global4.x), vec3<f32>(-1088f, var_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1425f * 1817f)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b));
    global3 = array<u32, 10>();
    return func_2(vec4<bool>((true | select(var_0.a, var_0.a, false)) != any(!vec3<bool>(var_0.a, var_0.a, false)), false, !(!var_0.a), false && var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -1000f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(floor(var_0.b)))), func_2(!(!vec4<bool>(var_0.a, false, false, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 1184f, -505f, 174f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-758f, var_0.b, 308f, var_0.b))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, -457f, var_0.b)), vec4<f32>(189f, var_0.b, var_0.b, var_0.b), all(vec2<bool>(true, true))))), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(36972u, global3[_wgslsmith_index_u32(global4.x, 10u)]), vec2<u32>(0u, 4142u)), vec2<u32>(26124u, global4.x)))).e).e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 27>();
    let var_0 = false;
    let var_1 = var_0;
    var var_2 = func_1(reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, i32(-1i) * -u_input.a, max(u_input.b.x, -91866i))));
    var var_3 = any(!select(!(!vec3<bool>(true, var_1, var_1)), vec3<bool>(true, var_1, var_1), any(select(vec2<bool>(var_1, var_1), vec2<bool>(var_0, var_0), vec2<bool>(true, false)))));
    var var_4 = Struct_1(16966u);
    let var_5 = u_input.a;
    var var_6 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(global4.wzw, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f), -299f)), var_5, ~44103u);
}

