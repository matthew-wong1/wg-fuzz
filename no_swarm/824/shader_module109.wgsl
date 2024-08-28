struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec2<f32>(835f, 1158f), Struct_1(vec3<i32>(-23020i, 0i, 1i)), vec4<i32>(2147483647i, i32(-2147483648), 1i, 2147483647i), Struct_1(vec3<i32>(7202i, 0i, -5885i))), Struct_2(vec2<f32>(272f, -1047f), Struct_1(vec3<i32>(-21827i, i32(-2147483648), 15831i)), vec4<i32>(-27449i, -14568i, 0i, 0i), Struct_1(vec3<i32>(10286i, 1650i, -1i))), Struct_2(vec2<f32>(-127f, -1117f), Struct_1(vec3<i32>(-46175i, -1i, i32(-2147483648))), vec4<i32>(i32(-2147483648), 26869i, i32(-2147483648), -7252i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -9634i))));

var<private> global1: f32;

var<private> global2: vec2<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> i32 {
    let var_0 = arg_1.d.a;
    global2 = ~countOneBits(~arg_1.d.d.yw);
    var var_1 = 19055i;
    var var_2 = Struct_1(vec3<i32>(max(0i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-8617i, arg_0), min(1i, -8216i))), -arg_1.d.b.a.x, -2147483647i));
    var var_3 = vec2<f32>(1f, 1f);
    return 24815i;
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = select(!vec3<bool>(true, func_3(arg_0.c.x, Struct_5(Struct_1(vec3<i32>(-2147483647i, arg_0.c.x, -1i)), 106f, arg_0.a.x, Struct_4(arg_0.d, arg_0.d, arg_0.a, vec4<u32>(799u, 14164u, global2.x, 8781u), arg_0.a.x))) > -62618i, true), select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, 113422u <= u_input.a), true)), vec3<bool>(!any(vec2<bool>(true, false)), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), any(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), all(vec3<bool>(true, false, true))))));
    global1 = -269f;
    var var_1 = arg_0.c.yxy;
    var var_2 = select(vec4<bool>(u_input.a > u_input.a, var_0.x, var_0.x, true), select(select(!vec4<bool>(true, false, var_0.x, var_0.x), select(select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), var_0.x), !vec4<bool>(var_0.x, var_0.x, false, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(all(vec4<bool>(var_0.x, true, true, true)), any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), any(vec4<bool>(false, true, false, var_0.x)), false)), select(vec4<bool>(all(vec2<bool>(var_0.x, var_0.x)), !var_0.x, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(!var_0.x, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), true, true)), !vec4<bool>(var_0.x, !var_0.x, var_0.x, true)), false);
    var_2 = vec4<bool>(var_2.x, all(select(!vec4<bool>(var_0.x, true, var_0.x, false), select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(false, true, var_0.x, var_0.x), any(var_0.yy)), !(!vec4<bool>(true, var_0.x, var_0.x, true)))), true, _wgslsmith_sub_i32(0i, ~func_3(arg_0.c.x, Struct_5(arg_0.b, 1000f, -975f, Struct_4(Struct_1(vec3<i32>(arg_0.d.a.x, var_1.x, 0i)), arg_0.b, arg_0.a, vec4<u32>(u_input.a, u_input.a, u_input.a, 43825u), 659f)))) >= max(arg_0.c.x, func_3(arg_0.b.a.x, Struct_5(arg_0.d, arg_0.a.x, -934f, Struct_4(arg_0.b, Struct_1(vec3<i32>(arg_0.c.x, -48070i, -17032i)), arg_0.a, vec4<u32>(4294967295u, 1u, u_input.a, 45495u), arg_0.a.x)))));
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: i32) -> Struct_5 {
    var var_0 = !arg_0;
    var var_1 = arg_2;
    var var_2 = _wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(40282u, u_input.a, global2.x) << (~arg_1.d.zzx % vec3<u32>(32u)))), vec3<u32>(44792u, global2.x, abs(0u)), arg_1.d.yxy);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(trunc(arg_1.c.x)), max(~(-14007i), ~(~1i)) << ((firstLeadingBit(_wgslsmith_mod_u32(0u, 1921u)) | ~firstTrailingBit(1u)) % 32u), Struct_2(arg_1.c, Struct_1(~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2, arg_1.b.a.x, 7298i), arg_1.b.a, arg_1.b.a)), -max(vec4<i32>(30058i, 15782i, arg_1.a.a.x, arg_1.b.a.x), vec4<i32>(arg_1.a.a.x, -15955i, arg_2, arg_2)) | reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(10662i, arg_2, -1i, -2147483647i), vec4<i32>(-7906i, 0i, arg_1.b.a.x, arg_2))), Struct_1(_wgslsmith_mult_vec3_i32(arg_1.a.a ^ arg_1.a.a, vec3<i32>(arg_2, 1i, arg_2) | arg_1.a.a))));
    var var_4 = Struct_1(_wgslsmith_mult_vec3_i32(arg_1.b.a, _wgslsmith_mult_vec3_i32(arg_1.b.a, var_3.c.d.a >> (~arg_1.d.xxz % vec3<u32>(32u)))));
    return Struct_5(var_3.c.b, -2697f, var_3.a, arg_1);
}

fn func_1() -> bool {
    let var_0 = func_4(!vec4<bool>(false, all(vec4<bool>(true, true, true, true)), func_2(global0[_wgslsmith_index_u32(0u, 3u)]) & any(vec4<bool>(false, false, true, false)), true), Struct_4(Struct_1(select(abs(vec3<i32>(1i, -4716i, -1i)), ~vec3<i32>(15223i, -1i, 14256i), vec3<bool>(true, true, true))), Struct_1(min(vec3<i32>(50425i, 2147483647i, -6643i), vec3<i32>(-1i, 9682i, 1i))), vec2<f32>(_wgslsmith_div_f32(-426f, _wgslsmith_f_op_f32(372f - 584f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1284f * -339f))), _wgslsmith_mult_vec4_u32(vec4<u32>(40269u, 0u, 0u, ~63066u), ~countOneBits(vec4<u32>(u_input.a, 84812u, u_input.a, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f - 218f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-29637i, firstTrailingBit(14386i)) >> (~max(vec2<u32>(global2.x, u_input.a), vec2<u32>(global2.x, global2.x)) % vec2<u32>(32u)), vec2<i32>(1i, 1i)));
    let var_1 = Struct_1(abs(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(min(var_0.d.b.a, var_0.d.a.a), vec3<i32>(var_0.d.a.a.x, -2147483647i, 1i)), firstTrailingBit(countOneBits(vec3<i32>(var_0.d.b.a.x, 24777i, var_0.d.a.a.x))))));
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(-var_0.c) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.d.e), var_0.b)), 992f), true, any(select(vec3<bool>(true, u_input.a != var_0.d.d.x, true), vec3<bool>(true, true, all(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, var_0.d.e < 282f))));
    global2 = _wgslsmith_sub_vec2_u32(select(abs(abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 15678u), vec2<u32>(global2.x, 12659u)))), ~vec2<u32>(_wgslsmith_add_u32(var_0.d.d.x, 73627u), u_input.a), var_2.yy), max(abs(var_0.d.d.yw << (var_0.d.d.xy % vec2<u32>(32u))), vec2<u32>(12766u, 1u)) | (abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 10522u), var_0.d.d.xw)) ^ func_4(vec4<bool>(false, false, var_2.x, true), func_4(vec4<bool>(var_2.x, var_2.x, false, var_2.x), Struct_4(Struct_1(var_1.a), Struct_1(var_0.a.a), var_0.d.c, var_0.d.d, var_0.b), var_1.a.x).d, abs(var_1.a.x)).d.d.zy));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(213f, 406f, false)) * _wgslsmith_f_op_f32(837f * 1016f)) + _wgslsmith_f_op_f32(-179f * 1000f)))));
    let var_0 = select(vec4<bool>(select(global2.x == u_input.a, func_1(), true), all(vec3<bool>(select(false, true, true), true, any(vec3<bool>(true, true, false)))), select(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true)), !any(vec3<bool>(false, false, false)), all(vec2<bool>(true, true)) || true), false), select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(true, true)), true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(any(vec4<bool>(true, true, false, true)), true, false, any(vec2<bool>(true, true)))), vec4<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), all(vec4<bool>(false, false, true, false)), true)), true);
    var var_1 = u_input.a;
    var var_2 = -vec2<i32>(~func_3(0i, Struct_5(Struct_1(vec3<i32>(0i, -29327i, 1i)), 633f, 621f, Struct_4(Struct_1(vec3<i32>(0i, -2147483647i, 33424i)), Struct_1(vec3<i32>(39323i, -1i, 42119i)), vec2<f32>(-569f, 316f), vec4<u32>(73478u, global2.x, 4294967295u, 0u), -473f))), _wgslsmith_sub_i32(countOneBits(53803i), countOneBits(1i))) >> (vec2<u32>(reverseBits(select(0u, ~u_input.a, true)), _wgslsmith_clamp_u32(countOneBits(global2.x), abs(~global2.x), 1u)) % vec2<u32>(32u));
    var var_3 = _wgslsmith_sub_vec3_i32(-_wgslsmith_mult_vec3_i32(-vec3<i32>(42091i, -1i, -34730i), abs(vec3<i32>(-1i, var_2.x, var_2.x))), ~(vec3<i32>(max(-62997i, 5367i), func_4(vec4<bool>(true, false, var_0.x, var_0.x), Struct_4(Struct_1(vec3<i32>(2147483647i, var_2.x, var_2.x)), Struct_1(vec3<i32>(42404i, 1i, 35792i)), vec2<f32>(1328f, 164f), vec4<u32>(0u, 1u, 4294967295u, global2.x), -131f), 1i).d.a.a.x, max(var_2.x, var_2.x)) ^ _wgslsmith_div_vec3_i32(-vec3<i32>(9391i, var_2.x, -2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_2.x, var_2.x), vec3<i32>(-2147483647i, 15586i, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1260f, 743f, 1416f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1162f, 1716f, -658f)))) * vec3<f32>(_wgslsmith_div_f32(232f, 411f), -1461f, _wgslsmith_f_op_f32(min(1347f, 150f)))))));
}

