struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<bool>(true, false, false, false), false, vec3<bool>(false, false, true), vec3<u32>(1u, 57377u, 54785u)), Struct_1(vec4<bool>(true, true, true, true), true, vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 9427u)), Struct_1(vec4<bool>(false, false, true, true), true, vec3<bool>(false, true, false), vec3<u32>(12947u, 0u, 54819u)), Struct_1(vec4<bool>(true, false, false, false), true, vec3<bool>(false, true, false), vec3<u32>(0u, 21204u, 17753u)), Struct_1(vec4<bool>(false, true, true, true), true, vec3<bool>(true, true, false), vec3<u32>(68939u, 46037u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, false), true, vec3<bool>(false, false, true), vec3<u32>(14743u, 0u, 0u)), Struct_1(vec4<bool>(true, false, false, false), true, vec3<bool>(false, true, false), vec3<u32>(41456u, 1u, 35497u)), Struct_1(vec4<bool>(false, false, true, true), true, vec3<bool>(true, false, false), vec3<u32>(25521u, 83179u, 0u)), Struct_1(vec4<bool>(false, true, false, false), true, vec3<bool>(true, true, false), vec3<u32>(1u, 5478u, 8750u)), Struct_1(vec4<bool>(true, false, false, true), false, vec3<bool>(true, true, false), vec3<u32>(1u, 34334u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, false), true, vec3<bool>(true, true, false), vec3<u32>(39480u, 35872u, 4294967295u)), Struct_1(vec4<bool>(false, false, false, true), true, vec3<bool>(false, false, false), vec3<u32>(0u, 39915u, 1u)), Struct_1(vec4<bool>(true, true, true, false), true, vec3<bool>(false, false, false), vec3<u32>(35211u, 77336u, 46357u)), Struct_1(vec4<bool>(true, true, false, true), true, vec3<bool>(true, false, false), vec3<u32>(50399u, 0u, 17293u)), Struct_1(vec4<bool>(true, false, false, false), false, vec3<bool>(true, true, false), vec3<u32>(4294967295u, 1876u, 4294967295u)), Struct_1(vec4<bool>(false, true, true, false), true, vec3<bool>(false, false, false), vec3<u32>(82052u, 75275u, 4294967295u)), Struct_1(vec4<bool>(false, true, true, false), true, vec3<bool>(false, true, true), vec3<u32>(71529u, 29355u, 44370u)), Struct_1(vec4<bool>(true, false, true, true), true, vec3<bool>(true, true, true), vec3<u32>(17873u, 1u, 14518u)), Struct_1(vec4<bool>(false, false, true, false), false, vec3<bool>(false, true, true), vec3<u32>(1673u, 1u, 4348u)), Struct_1(vec4<bool>(true, true, true, true), true, vec3<bool>(false, true, true), vec3<u32>(0u, 10971u, 17364u)), Struct_1(vec4<bool>(false, false, false, true), true, vec3<bool>(true, true, false), vec3<u32>(20599u, 0u, 4294967295u)), Struct_1(vec4<bool>(true, true, false, false), true, vec3<bool>(false, false, true), vec3<u32>(15072u, 4294967295u, 0u)), Struct_1(vec4<bool>(true, true, true, true), true, vec3<bool>(false, true, false), vec3<u32>(1u, 0u, 60927u)), Struct_1(vec4<bool>(true, false, true, false), false, vec3<bool>(true, false, false), vec3<u32>(42224u, 0u, 60006u)), Struct_1(vec4<bool>(false, false, true, true), true, vec3<bool>(true, false, false), vec3<u32>(1u, 4971u, 33895u)), Struct_1(vec4<bool>(false, false, false, false), false, vec3<bool>(false, true, false), vec3<u32>(6419u, 1u, 0u)), Struct_1(vec4<bool>(true, false, false, true), false, vec3<bool>(false, false, false), vec3<u32>(0u, 4294967295u, 13024u)), Struct_1(vec4<bool>(true, false, false, false), true, vec3<bool>(true, true, true), vec3<u32>(0u, 22883u, 88499u)));

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global3: array<bool, 15>;

var<private> global4: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(326f, 445f), vec2<f32>(1125f, -906f), vec2<f32>(-1006f, 404f), vec2<f32>(-291f, 1000f), vec2<f32>(1527f, -1508f), vec2<f32>(513f, 419f), vec2<f32>(1979f, 617f), vec2<f32>(1027f, 758f), vec2<f32>(-681f, -789f), vec2<f32>(-667f, -614f), vec2<f32>(659f, -1336f), vec2<f32>(544f, -120f), vec2<f32>(189f, -738f), vec2<f32>(1849f, -547f), vec2<f32>(1559f, 2069f), vec2<f32>(-1313f, 318f), vec2<f32>(-1212f, -1312f), vec2<f32>(-1000f, -492f), vec2<f32>(-711f, -1857f), vec2<f32>(404f, 1561f), vec2<f32>(-324f, 543f), vec2<f32>(-1000f, -251f), vec2<f32>(-939f, 1000f), vec2<f32>(-1402f, -956f), vec2<f32>(-642f, -396f), vec2<f32>(515f, -2483f), vec2<f32>(-527f, 800f), vec2<f32>(133f, -1504f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(-262f)), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(377f - _wgslsmith_f_op_f32(1946f - -223f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-518f + -786f), -2125f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1214f, 1383f), _wgslsmith_f_op_f32(max(604f, -1000f)), any(global2.xy))))), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1063f)) * -468f))));
    var var_1 = 20013i;
    let var_2 = global1[_wgslsmith_index_u32(u_input.e.x, 28u)];
    global4 = array<vec2<f32>, 28>();
    var var_3 = u_input.b;
    return _wgslsmith_f_op_f32(floor(var_0.x));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global4 = array<vec2<f32>, 28>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 28u)];
    var var_1 = vec2<bool>(true, !(!(~1u <= _wgslsmith_sub_u32(u_input.c.x, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-776f + 1194f)), -1811f, false))));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(global4[_wgslsmith_index_u32(arg_2.d.x, 28u)]));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, 1000f)));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_mod_vec4_i32(-_wgslsmith_add_vec4_i32(-firstTrailingBit(vec4<i32>(-12065i, 34424i, -39088i, u_input.b.x)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-8923i, u_input.b.x, 2147483647i, 728i), vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, u_input.b.x), vec4<i32>(-3795i, 2147483647i, -1i, u_input.b.x))), vec4<i32>(~u_input.d.x, min(countOneBits(u_input.d.x), -u_input.d.x) | abs(u_input.b.x), -select(2147483647i, ~2147483647i, any(arg_1.c)), i32(-1i) * -1i));
    let var_1 = global1[_wgslsmith_index_u32(35377u, 28u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + 1400f))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -285f), arg_0) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, 724f, 1001f, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -931f, arg_0, -1796f)))))));
    let var_3 = Struct_1(!select(select(select(var_1.a, vec4<bool>(false, global2.x, global0[_wgslsmith_index_u32(arg_1.d.x, 17u)], global0[_wgslsmith_index_u32(u_input.e.x, 17u)]), arg_1.c.x), select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_1.d.x, 17u)], true, global3[_wgslsmith_index_u32(10924u, 15u)]), vec4<bool>(false, arg_1.b, true, global3[_wgslsmith_index_u32(0u, 15u)]), vec4<bool>(global3[_wgslsmith_index_u32(var_1.d.x, 15u)], global0[_wgslsmith_index_u32(arg_1.d.x, 17u)], global2.x, global2.x)), global2.x | true), arg_1.a, !(!var_1.a)), var_1.a.x, !(!(!vec3<bool>(false, true, global3[_wgslsmith_index_u32(var_1.d.x, 15u)]))), vec3<u32>(~(~4294967295u), ~u_input.c.x, firstLeadingBit(u_input.e.x)));
    let var_4 = arg_1.a;
    return -1i;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    var var_0 = global1[_wgslsmith_index_u32(min(20439u, 4294967295u), 28u)];
    var var_1 = -u_input.d.x > func_4(_wgslsmith_f_op_f32(func_2(false, arg_1, arg_1)), global1[_wgslsmith_index_u32(min(u_input.c.x, u_input.a.x), 28u)]);
    let var_2 = global1[_wgslsmith_index_u32(var_0.d.x, 28u)];
    global4 = array<vec2<f32>, 28>();
    var var_3 = var_0.a.x;
    return StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-145f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f))))), max(~u_input.d, vec3<i32>(~(-1i), 0i, func_4(_wgslsmith_f_op_f32(1829f - 342f), global1[_wgslsmith_index_u32(u_input.e.x & 5967u, 28u)]))), vec3<i32>(_wgslsmith_clamp_i32(u_input.d.x, firstTrailingBit(-1i), _wgslsmith_add_i32(~u_input.b.x, min(-15834i, -7675i))), select(u_input.d.x, 0i, var_2.c.x || true), -u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec2<bool>(true, true), Struct_1(!select(vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(false, global2.x, true, false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), !global0[_wgslsmith_index_u32(u_input.c.x, 17u)], select(select(global2.wxz, global2.zyw, vec3<bool>(false, global2.x, false)), !global2.zyw, !any(vec3<bool>(global0[_wgslsmith_index_u32(44317u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global2.x))), vec3<u32>(54750u, u_input.a.x, ~(~u_input.e.x))), global2.x);
}

