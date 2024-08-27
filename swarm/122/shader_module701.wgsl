struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21>;

var<private> global1: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec4<i32>(0i, -27034i, -1i, -10636i)), Struct_2(vec4<i32>(2147483647i, 0i, -44404i, 44889i)), Struct_2(vec4<i32>(0i, -40889i, 2147483647i, i32(-2147483648))), Struct_2(vec4<i32>(-1i, -38076i, -1i, -23306i)), Struct_2(vec4<i32>(27790i, -1i, -59125i, -74974i)), Struct_2(vec4<i32>(0i, 2147483647i, 24122i, 27470i)), Struct_2(vec4<i32>(-37348i, -10831i, -28536i, 2147483647i)), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), -16101i, 2147483647i)), Struct_2(vec4<i32>(1i, 1i, -15327i, 7452i)), Struct_2(vec4<i32>(-13766i, 2147483647i, i32(-2147483648), 31603i)), Struct_2(vec4<i32>(2147483647i, -34423i, 1i, 79233i)), Struct_2(vec4<i32>(1i, 19782i, 0i, 0i)), Struct_2(vec4<i32>(2147483647i, 7767i, 1352i, 35678i)), Struct_2(vec4<i32>(37969i, 26379i, 1i, i32(-2147483648))), Struct_2(vec4<i32>(1i, 40657i, -5996i, 21370i)), Struct_2(vec4<i32>(-55112i, 0i, i32(-2147483648), -7949i)), Struct_2(vec4<i32>(-35944i, 2147483647i, -15259i, -12633i)), Struct_2(vec4<i32>(-25558i, -3121i, 1i, 1i)), Struct_2(vec4<i32>(5545i, 49042i, 2147483647i, 1i)), Struct_2(vec4<i32>(-11107i, -24409i, i32(-2147483648), 44623i)));

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 17>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>) -> vec4<i32> {
    global2 = vec3<u32>(~arg_1.x, global2.x, ~4294967295u);
    let var_0 = vec2<u32>(abs(69530u) << (_wgslsmith_sub_u32(1u & arg_1.x, ~(~arg_1.x)) % 32u), 0u);
    let var_1 = arg_1.ww;
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1398f, -1496f, -657f, 938f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(929f, -1468f, -947f, -177f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(899f, -476f, -2233f, -799f) + vec4<f32>(333f, 660f, -399f, -1694f)), vec4<f32>(-1013f, 199f, -1080f, 245f)) - vec4<f32>(_wgslsmith_f_op_f32(140f - 951f), _wgslsmith_f_op_f32(floor(-1427f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1316f)))), all(!(!vec4<bool>(false, arg_0.a.c, arg_0.a.c, arg_0.a.c))), max(_wgslsmith_mult_u32(~0u, arg_0.a.e.x), countOneBits(25595u)) & 4294967295u, ~min(~var_0.x, 1u ^ arg_1.x), 1i);
    let var_3 = all(!(!(!vec2<bool>(var_2.b, var_2.b)))) || !all(vec4<bool>(arg_0.a.c, !arg_0.a.c, arg_0.a.c, !var_2.b));
    return select(~arg_0.a.d.a, select(-arg_0.a.d.a, vec4<i32>(reverseBits(min(arg_0.a.a, u_input.a)), 3604i, arg_0.a.b.x, -(~u_input.b.x)), vec4<bool>(any(!vec2<bool>(var_3, false)), var_3, true, true)), select(!(!select(vec4<bool>(false, var_2.b, true, false), vec4<bool>(false, var_2.b, var_3, true), vec4<bool>(false, var_3, true, false))), select(!select(vec4<bool>(arg_0.a.c, false, false, true), vec4<bool>(var_2.b, var_2.b, arg_0.a.c, false), vec4<bool>(var_2.b, arg_0.a.c, var_3, true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.a.c, true, var_2.b, false), vec4<bool>(arg_0.a.c, false, false, var_3)), vec4<bool>(true, var_3, false, var_2.b), select(vec4<bool>(true, false, var_2.b, arg_0.a.c), vec4<bool>(var_3, var_2.b, var_3, true), vec4<bool>(arg_0.a.c, var_2.b, true, false))), arg_0.a.c), vec4<bool>(false && any(vec2<bool>(true, true)), var_2.b, !(!var_2.b), any(vec2<bool>(false, true)))));
}

fn func_2() -> f32 {
    let var_0 = 1f;
    global3 = array<Struct_1, 17>();
    global0 = array<vec3<i32>, 21>();
    var var_1 = Struct_3(u_input.b.x, u_input.b, true, Struct_2(~(~func_3(Struct_4(Struct_3(u_input.b.x, global0[_wgslsmith_index_u32(0u, 21u)], false, Struct_2(vec4<i32>(785i, 5613i, -28950i, -1i)), vec3<u32>(global2.x, global2.x, global2.x))), vec4<u32>(18223u, global2.x, global2.x, global2.x)))), ~(~vec3<u32>(~0u, abs(global2.x), _wgslsmith_mult_u32(global2.x, global2.x))));
    let var_2 = var_1.e.x;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0) - -940f))));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    global3 = array<Struct_1, 17>();
    let var_0 = ~countOneBits(abs(~vec3<u32>(global2.x, global2.x, global2.x))) << (~vec3<u32>(_wgslsmith_sub_u32(67778u << (global2.x % 32u), global2.x), global2.x, global2.x) % vec3<u32>(32u));
    let var_1 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    global3 = array<Struct_1, 17>();
    let var_2 = ~vec2<u32>(4294967295u, ~4294967295u);
    return _wgslsmith_f_op_f32(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2012f, 952f)) * -1235f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(1399f, 1457f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1076f * _wgslsmith_f_op_f32(f32(-1f) * -2077f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -593f))));
    let var_2 = _wgslsmith_f_op_f32(-var_1);
    global0 = array<vec3<i32>, 21>();
    global0 = array<vec3<i32>, 21>();
    global1 = array<Struct_2, 20>();
    let var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.x, ~global2.x) << (~vec2<u32>(_wgslsmith_mult_u32(global2.x, 1u), _wgslsmith_mult_u32(1u, global2.x)) % vec2<u32>(32u)), firstTrailingBit(~_wgslsmith_mod_vec2_u32(global2.zx, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global2.x), vec2<u32>(37720u, global2.x)))));
    global2 = select(vec3<u32>(0u, firstLeadingBit(1u), 1u), (abs(vec3<u32>(1u, 39213u, global2.x)) & ~countOneBits(vec3<u32>(33783u, 0u, var_3))) & ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_3, 2948u, global2.x), vec3<u32>(global2.x, 4294967295u, 1u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-(~(-42033i))), var_2, _wgslsmith_add_i32(u_input.a, -(~(-u_input.a))), ~u_input.a);
}

