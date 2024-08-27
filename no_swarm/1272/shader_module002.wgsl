struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(0u, 4294967295u, 20123u), Struct_1(vec2<bool>(true, false), true, vec3<u32>(45947u, 0u, 4294967295u), 19129i, 467f), vec4<f32>(-432f, 1000f, 735f, 1000f), 0i, vec2<i32>(i32(-2147483648), 34082i));

var<private> global2: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-24857i, 1i), vec2<i32>(2147483647i, 14346i), vec2<i32>(2147483647i, 19705i), vec2<i32>(i32(-2147483648), -2398i), vec2<i32>(16847i, -1i), vec2<i32>(-50460i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, 28177i), vec2<i32>(12752i, i32(-2147483648)), vec2<i32>(25827i, 1i), vec2<i32>(0i, 1i), vec2<i32>(-58849i, i32(-2147483648)), vec2<i32>(1i, 44241i), vec2<i32>(i32(-2147483648), 36143i));

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = u_input.c;
    var var_1 = global3.a.x;
    return 970f;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(firstLeadingBit(global1.b.c), global1.b, global3.c, ~1122i, -global2[_wgslsmith_index_u32(0u, 14u)]), _wgslsmith_div_vec2_i32(~countOneBits(abs(global2[_wgslsmith_index_u32(478u, 14u)])), global1.e >> (global3.b.c.yx % vec2<u32>(32u))), reverseBits(select(i32(-1i) * -5394i, u_input.d, !arg_2)), global3.b.e);
    var var_1 = vec3<u32>(global3.a.x, u_input.a.x, abs(global3.b.c.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + var_0.d);
    let var_3 = global3.b.a;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec4<bool>(var_3.x, arg_1, !arg_1, all(vec3<bool>(true, arg_1, global3.b.b))))))) - 1344f);
    return var_0.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec2<u32>(select(arg_1.c.x, global3.a.x, all(!select(vec4<bool>(true, arg_0.a.b.a.x, false, global1.b.b), vec4<bool>(global1.b.a.x, true, arg_1.a.x, global3.b.a.x), vec4<bool>(arg_1.a.x, arg_0.a.b.b, global1.b.a.x, true)))), _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(arg_1.c.xz, vec2<u32>(func_2(global1.c.yxz, global1.b.a.x, true).b.c.x, _wgslsmith_add_u32(1u, 1u)))));
    var var_1 = global2[_wgslsmith_index_u32(15853u, 14u)];
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1013f, _wgslsmith_f_op_f32(-799f - _wgslsmith_f_op_f32(168f * 328f)), _wgslsmith_f_op_f32(ceil(-118f))), vec3<f32>(arg_1.e, -1157f, global3.b.e)), vec3<f32>(-1362f, _wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e + _wgslsmith_f_op_f32(-global3.c.x)))));
    global2 = array<vec2<i32>, 14>();
    let var_3 = 1i;
    return Struct_2(reverseBits(arg_1.c), Struct_1(global3.b.a, select((arg_1.d != -2147483647i) && true, true, global1.b.b), ~select(vec3<u32>(39494u, 4294967295u, arg_0.a.b.c.x) >> (vec3<u32>(1u, arg_1.c.x, 34715u) % vec3<u32>(32u)), arg_1.c, all(vec3<bool>(arg_0.a.b.a.x, false, false))), _wgslsmith_mod_i32(~global1.d, 28282i) & arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(697f, 1224f)), global3.c.x))), global1.c, reverseBits(select(_wgslsmith_mod_i32(7470i | var_3, global1.e.x), -2147483647i, select(true, arg_1.b, !global3.b.a.x))), max(~(~global2[_wgslsmith_index_u32(max(31473u, global1.b.c.x), 14u)]), arg_0.b));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(Struct_3(func_2(_wgslsmith_f_op_vec3_f32(global3.c.wxw - _wgslsmith_f_op_vec3_f32(-global1.c.yzx)), global3.b.b, all(vec4<bool>(global3.b.a.x, false, true, true))), min(global2[_wgslsmith_index_u32(u_input.b.x, 14u)], -vec2<i32>(global1.d, -1i)), reverseBits(_wgslsmith_add_i32(-2025i, 28135i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-341f, -1114f) + _wgslsmith_f_op_f32(global3.c.x * global1.b.e)))), Struct_1(global3.b.a, !(!global1.b.b), ~vec3<u32>(~u_input.c.x, 1u, 4294967295u), firstTrailingBit(_wgslsmith_clamp_i32(global1.e.x, -2147483647i, ~1i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.e))))));
    global1 = func_4(Struct_3(Struct_2(vec3<u32>(0u, 34658u, 10052u) ^ vec3<u32>(global3.b.c.x, u_input.c.x, global1.b.c.x), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(503f, 474f, 749f, var_0.b.e) + vec4<f32>(global3.c.x, 693f, global3.b.e, -124f)) * global3.c), abs(firstLeadingBit(global3.b.d)), var_0.e), global2[_wgslsmith_index_u32(~abs(~0u), 14u)], reverseBits(var_0.b.d << (49423u % 32u)), global1.b.e), global3.b);
    let var_1 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), var_0.e), var_0.e), ~(-33194i), _wgslsmith_div_i32(global3.d, ~0i))), abs(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(global1.e.x, 1i, u_input.d, -7968i), -vec4<i32>(global1.d, global1.e.x, global1.e.x, global1.b.d)), vec4<i32>(~var_0.e.x, max(var_0.d, 31948i), -1i, _wgslsmith_mod_i32(36464i, global1.e.x)), select(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.e.x, global3.b.d, 2147483647i, var_0.e.x), vec4<i32>(-22958i, 2147483647i, -7331i, -1i)), min(vec4<i32>(-10441i, 0i, -21269i, global1.d), vec4<i32>(global1.e.x, global3.b.d, 33685i, -11798i)), !vec4<bool>(false, true, var_0.b.b, false)))));
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1310f, var_0.b.e, var_0.c.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-func_2(global1.c.yyx, global1.b.a.x, false).b.e), global1.b.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)))), global3.b.b && any(vec2<bool>(false, 100472u > global1.a.x)), !func_4(Struct_3(var_0, ~var_1.zz, func_2(var_0.c.zww, global3.b.b, var_0.b.b).b.d, global3.c.x), func_2(vec3<f32>(319f, -1597f, -1000f), all(vec4<bool>(global1.b.a.x, global3.b.b, true, false)), any(vec3<bool>(false, var_0.b.a.x, false))).b).b.a.x).b.e;
    global2 = array<vec2<i32>, 14>();
    return func_4(Struct_3(Struct_2(~(~vec3<u32>(1u, 13143u, 4294967295u)), Struct_1(global1.b.a, global1.c.x >= 995f, vec3<u32>(u_input.a.x, 4294967295u, 37988u), _wgslsmith_mod_i32(-36604i, -20255i), _wgslsmith_f_op_f32(abs(502f))), vec4<f32>(-434f, _wgslsmith_f_op_f32(-1267f + global1.b.e), -729f, -755f), 2147483647i, (vec2<i32>(global1.d, -5079i) >> (vec2<u32>(global3.b.c.x, global3.b.c.x) % vec2<u32>(32u))) & global1.e), -var_0.e, 14231i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -896f) + _wgslsmith_f_op_f32(ceil(global1.b.e)))))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.b.e + global1.c.x), _wgslsmith_f_op_f32(-101f + global1.b.e), 1263f)), !(!select(global3.b.b, true, global1.b.a.x)), ~global3.b.c.x <= _wgslsmith_add_u32(func_4(Struct_3(Struct_2(u_input.c, global1.b, vec4<f32>(-887f, var_2, -592f, var_2), var_1.x, var_0.e), vec2<i32>(u_input.d, var_1.x), var_1.x, -1000f), global1.b).a.x, 70197u)).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~firstTrailingBit(~vec4<i32>(-2147483647i, global1.b.d, -27800i, -1i)) << (vec4<u32>(global1.a.x, 0u, _wgslsmith_mult_u32(global1.b.c.x >> (u_input.b.x % 32u), global1.b.c.x), ~firstTrailingBit(61038u)) % vec4<u32>(32u)));
    var var_1 = global1.b;
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.d << (17946u % 32u), 0i), func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-1199f, -1000f), -174f, global1.b.e), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global1.c.yxx))), global3.b.b)), true, var_2.b.b).e.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(round(-462f)), var_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -492f), -1271f))));
}

