struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(-39314i, i32(-2147483648), 4686i), vec3<i32>(-1i, -57438i, 1i), vec3<i32>(2147483647i, 1i, 36840i), vec3<i32>(4393i, -76621i, 63318i), vec3<i32>(61705i, 2147483647i, -32007i), vec3<i32>(-43835i, 0i, -10567i), vec3<i32>(i32(-2147483648), 57018i, 43180i), vec3<i32>(-36484i, -18948i, 27281i), vec3<i32>(-34418i, -1204i, 67379i), vec3<i32>(-91907i, -12942i, 10640i), vec3<i32>(2147483647i, -43067i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -13444i, 1i), vec3<i32>(2147483647i, 2607i, -11155i), vec3<i32>(1i, 0i, -1161i), vec3<i32>(i32(-2147483648), 0i, 12961i), vec3<i32>(-37536i, i32(-2147483648), 38174i), vec3<i32>(-54345i, 22092i, 0i), vec3<i32>(53158i, 957i, -25270i), vec3<i32>(-43167i, 52886i, -15124i), vec3<i32>(1i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), -14018i, -13229i), vec3<i32>(-32132i, -12219i, -6768i), vec3<i32>(-48240i, 2835i, 2147483647i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(15340i, i32(-2147483648), 2147483647i), vec3<i32>(-10908i, -1i, -8292i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(-1i, 3411i, 1i), vec3<i32>(-35021i, i32(-2147483648), i32(-2147483648)), vec3<i32>(31134i, -30882i, i32(-2147483648)));

var<private> global2: Struct_2;

var<private> global3: array<vec3<bool>, 5>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    return 24290u;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2261f + -1000f))) * _wgslsmith_f_op_f32(1264f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-426f - 1563f))) + 380f)));
    return select(arg_1.x, any(!arg_1.ww), arg_1.x);
}

fn func_2() -> Struct_4 {
    global1 = array<vec3<i32>, 31>();
    var var_0 = countOneBits(102284u);
    var var_1 = any(vec3<bool>(false, func_3(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global2.a.a, u_input.d.x, global2.b.x, 14265u), vec4<u32>(global2.b.x, u_input.d.x, global2.b.x, 0u))), vec4<bool>(true, true, true, true)), true));
    var_1 = 32182u > global2.a.a;
    let var_2 = true;
    return Struct_4(Struct_3(reverseBits(select(u_input.d, u_input.d, global3[_wgslsmith_index_u32(u_input.d.x, 5u)])) | select(u_input.d, abs(u_input.d), select(vec3<bool>(false, false, false), vec3<bool>(var_2, true, var_2), vec3<bool>(var_2, false, var_2)))), u_input.a.zyz >> (vec3<u32>(global2.b.x, global2.b.x, global2.a.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -346f), _wgslsmith_f_op_f32(-1223f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -261f) + 1000f)), all(!select(vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(true, true, var_2, false))))), 1338f);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_1.a;
    let var_1 = 4294967295u;
    var var_2 = -countOneBits(31862i) == arg_0;
    global0 = _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, arg_1.b.x, -5772i)), abs(global1[_wgslsmith_index_u32(var_0.a.x, 31u)])), 32595i) < ~arg_0;
    return func_2().a;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    global0 = true | (all(vec4<bool>(true, true, true, true)) && false);
    global2 = arg_3;
    global1 = array<vec3<i32>, 31>();
    global3 = array<vec3<bool>, 5>();
    var var_0 = select(firstTrailingBit(-firstTrailingBit(global1[_wgslsmith_index_u32(~23394u, 31u)])), abs(_wgslsmith_add_vec3_i32(vec3<i32>(1i, min(arg_0.x, 6451i), -1i), vec3<i32>(-2147483647i, u_input.e.x, u_input.b) << ((vec3<u32>(4294967295u, arg_1.a.x, arg_1.a.x) & arg_1.a) % vec3<u32>(32u)))), -465f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(-arg_2.x))));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.d.x, func_1(0u, Struct_3(u_input.d), vec2<f32>(863f, 442f), u_input.d.x)), 0u), 31u)], func_4(u_input.e.x, func_2(), max(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, global2.b.x, u_input.d.x) | vec4<u32>(61373u, global2.b.x, 4294967295u, 1u), ~vec4<u32>(global2.b.x, 42523u, 1u, 1531u)), ~vec4<u32>(global2.b.x, u_input.d.x, 0u, global2.b.x) << (countOneBits(vec4<u32>(global2.b.x, 4294967295u, 0u, 1u)) % vec4<u32>(32u))), Struct_2(global2.a, global2.b)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -738f))), 1000f, _wgslsmith_f_op_f32(max(378f, 1f))))), Struct_2(global2.a, reverseBits(vec2<u32>(0u, global2.b.x)) | ~u_input.d.zx));
    global0 = false;
    var var_1 = func_2();
    global1 = array<vec3<i32>, 31>();
    var var_2 = select(u_input.a.ywz, ~_wgslsmith_sub_vec3_i32(u_input.a.wxz, vec3<i32>(~var_1.b.x, ~13113i, 21687i)), !select(func_3(vec4<u32>(3778u, global2.a.a, 0u, 0u), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false)), false, any(vec4<bool>(true, true, true, true))));
    let var_3 = select(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(u_input.c, u_input.e.x)), -(vec2<i32>(u_input.b, var_1.b.x) >> (u_input.d.xy % vec2<u32>(32u)))), vec2<i32>(31127i, -(u_input.b << (u_input.d.x % 32u))), true) ^ vec2<i32>(select(var_1.b.x, -1i, all(vec3<bool>(true, true, true))), abs(_wgslsmith_dot_vec3_i32(reverseBits(var_1.b), global1[_wgslsmith_index_u32(abs(global2.b.x), 31u)])));
    var var_4 = Struct_3(u_input.d);
    let var_5 = func_2().d;
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -357f) - -800f);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(firstTrailingBit(global2.b)), var_4.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(827f)) - -867f), var_5, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(868f, 1000f))), var_5) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6, -1088f, -590f, var_1.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-872f, 867f, -121f, -1119f))))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-668f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1060f, var_5)) * _wgslsmith_f_op_f32(975f * 2594f)))));
}

