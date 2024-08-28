struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27>;

var<private> global1: array<vec2<u32>, 32>;

var<private> global2: array<Struct_2, 22>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = array<Struct_2, 22>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), arg_0.a.x) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(arg_0.a * vec2<f32>(691f, arg_0.a.x))))), abs(min(abs(4294967295u), abs(arg_0.b)))));
    let var_1 = global2[_wgslsmith_index_u32(var_0.a.b & select(14561u, 45509u, select(false, false || (arg_0.b < 1u), all(vec4<bool>(true, false, true, true)))), 22u)];
    let var_2 = global2[_wgslsmith_index_u32(arg_0.b, 22u)];
    let var_3 = u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-842f, arg_0.a.x, all(vec2<bool>(true, true)) || any(vec4<bool>(true, true, false, true)))))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global2 = array<Struct_2, 22>();
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-796f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(-1000f, 2362f), 32225u))) * _wgslsmith_f_op_f32(trunc(-611f))) * _wgslsmith_f_op_f32(f32(-1f) * -126f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-570f, -573f), -410f)), 1f)));
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(872f + 1000f) + 1228f), -1149f), 0u));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1.a.a.x;
    global0 = array<vec2<u32>, 27>();
    var var_1 = _wgslsmith_mod_vec2_i32(abs(u_input.a), select(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a) << (arg_1.a.b % 32u), u_input.a.x), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i) << (vec2<u32>(arg_1.a.b, arg_1.a.b) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(72444i, u_input.a.x))), ~vec2<i32>(u_input.a.x, -15499i)), true));
    var var_2 = Struct_2(func_2(-(~(~15464i))).a);
    var var_3 = select(select(vec3<bool>(true, !(var_1.x != var_1.x), (var_2.a.b >> (1u % 32u)) < ~var_2.a.b), select(!arg_0, !arg_0, any(!arg_0.xz)), arg_0.x), arg_0, any(select(vec3<bool>(arg_0.x & arg_0.x, true, true), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), !arg_0), true)));
    return func_2(-_wgslsmith_sub_i32(firstTrailingBit(abs(16951i)), ~countOneBits(-24837i)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = abs(arg_0.a.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f), 1704f) + 1007f));
    var var_2 = !(true != (max(~0u, arg_0.a.b) != 13174u));
    var var_3 = 1i;
    let var_4 = select(select(vec2<bool>(true, all(vec2<bool>(true, true))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), false), vec2<bool>(false && all(vec3<bool>(false, true, true)), true), !(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))));
    return func_4(!select(!(!vec3<bool>(false, true, var_4.x)), select(vec3<bool>(false, var_4.x, var_4.x), select(vec3<bool>(true, var_4.x, var_4.x), vec3<bool>(false, false, var_4.x), var_4.x), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, var_4.x, true), vec3<bool>(true, var_4.x, true), vec3<bool>(var_4.x, var_4.x, false)), select(vec3<bool>(true, var_4.x, var_4.x), vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(false, var_4.x, var_4.x)), select(vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(var_4.x, true, var_4.x), vec3<bool>(var_4.x, var_4.x, true)))), Struct_2(func_2(i32(-1i) * -2147483647i).a)).a;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = (_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1017i, u_input.a.x, 18359i), vec3<bool>(true, false, true)) | vec3<i32>(42910i, -12496i, -11627i), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -12147i, 0i), vec3<i32>(2147483647i, 0i, 2147483647i)), -vec3<i32>(2147483647i, u_input.a.x, -5531i))) | (vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(u_input.a.x, 1i, -2147483647i)))) & (abs(~vec3<i32>(-1i, u_input.a.x, u_input.a.x) & _wgslsmith_clamp_vec3_i32(vec3<i32>(31328i, -67345i, u_input.a.x), vec3<i32>(0i, -6751i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))) << (abs(vec3<u32>(~1u, ~20713u, 1u)) % vec3<u32>(32u)));
    global0 = array<vec2<u32>, 27>();
    let var_1 = func_5(func_4(vec3<bool>(false, false, any(vec4<bool>(true, true, true, true))), func_2(~var_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.yz, _wgslsmith_f_op_vec2_f32(-arg_0.zx)), vec2<f32>(_wgslsmith_f_op_f32(round(-770f)), _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_0.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_0.x) + vec2<f32>(arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 383f) * vec2<f32>(302f, arg_0.x))))), -1609f);
    global2 = array<Struct_2, 22>();
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(countOneBits(_wgslsmith_mult_i32(-4022i, -53429i)), firstTrailingBit(~(-1i)) >> (var_1.b % 32u), 8985i), ~_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -19514i, -1i), vec3<i32>(-2147483647i, var_0.x, 1531i)), var_0));
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(func_4(vec3<bool>(true, true, true), Struct_2(Struct_1(vec2<f32>(-1863f, arg_0.x), 10766u))).a.a)), var_1.b);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(arg_2.b, func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a.x, 1773f, 967f), vec3<f32>(-418f, 1000f, arg_1.a.x), vec3<bool>(true, arg_0.x, false))))), -714f).b), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_2.b, arg_1.b), reverseBits(vec2<u32>(41202u, arg_2.b)) ^ countOneBits(max(vec2<u32>(38648u, 4294967295u), global1[_wgslsmith_index_u32(26448u, 32u)]))), arg_2.b);
    let var_1 = min(min(vec4<i32>(-1i) * -abs(vec4<i32>(11233i, -34241i, u_input.a.x, u_input.a.x)), vec4<i32>(-17013i, u_input.a.x, -28563i, _wgslsmith_div_i32(~(-40064i), 49368i << (var_0.x % 32u)))), _wgslsmith_clamp_vec4_i32(~(~vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, 30539i)), select(firstTrailingBit(vec4<i32>(18705i, 0i, u_input.a.x, u_input.a.x) | vec4<i32>(0i, 11538i, u_input.a.x, -52487i)), vec4<i32>(u_input.a.x, 68176i, abs(55429i), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), vec4<bool>(true, -45344i <= u_input.a.x, true, true)), ~abs(~vec4<i32>(u_input.a.x, 0i, -34669i, u_input.a.x))));
    var var_2 = ~(vec4<u32>(_wgslsmith_add_u32(26368u, ~arg_1.b), _wgslsmith_add_u32(0u, var_0.x ^ arg_2.b), arg_1.b, ~var_0.x | 78400u) << (vec4<u32>(29964u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(22029u, arg_2.b), vec2<u32>(21540u, arg_2.b)), 4294967295u, arg_2.b, ~(~arg_1.b)) % vec4<u32>(32u)));
    global1 = array<vec2<u32>, 32>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(984f * arg_1.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-984f, 104f)))))), 1u);
    return 643f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(func_6(vec2<bool>(true, true), func_1(vec3<f32>(1991f, 266f, 198f), -117f), Struct_1(vec2<f32>(-1479f, 378f), 4294967295u))), 263f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1674f + 586f), 283f)))));
    let var_1 = Struct_2(func_2(u_input.a.x).a);
    var var_2 = !vec3<bool>(true, !all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true)), true);
    var var_3 = select(select(!select(vec4<bool>(true, false, var_2.x, true), !vec4<bool>(true, var_2.x, var_2.x, var_2.x), -356f >= var_1.a.a.x), !vec4<bool>(u_input.a.x <= 1i, var_2.x, var_2.x && true, !var_2.x), false), !select(vec4<bool>(var_2.x, !var_2.x, true, var_2.x), select(select(vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(false, true, true, false), vec4<bool>(true, var_2.x, var_2.x, var_2.x)), vec4<bool>(true, var_2.x, true, false), !var_2.x), true), select(select(!vec4<bool>(true, false, false, var_2.x), select(!vec4<bool>(var_2.x, var_2.x, true, true), !vec4<bool>(var_2.x, true, true, true), var_2.x), select(!vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_2.x, true), !var_2.x)), vec4<bool>(all(!vec3<bool>(true, false, var_2.x)), -1858f > _wgslsmith_f_op_f32(-var_1.a.a.x), true || var_2.x, select(true, any(vec4<bool>(var_2.x, var_2.x, var_2.x, false)), var_2.x)), select(!select(vec4<bool>(true, true, false, var_2.x), vec4<bool>(var_2.x, true, true, false), true), vec4<bool>(!var_2.x, true, false | var_2.x, true), vec4<bool>(any(var_2.yy), any(vec4<bool>(false, var_2.x, true, var_2.x)), true, false))));
    let var_4 = select(select(u_input.a.x, -2147483647i, any(!(!var_3.xz))), (-min(1i, u_input.a.x) & -reverseBits(0i)) >> (func_2(u_input.a.x).a.b % 32u), all(vec2<bool>((true & var_2.x) || all(vec3<bool>(true, var_2.x, var_3.x)), select(true, any(vec2<bool>(var_3.x, true)), true))));
    var var_5 = -2147483647i;
    var var_6 = func_2(_wgslsmith_div_i32(~1i, ~(-u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_5(Struct_2(var_1.a), _wgslsmith_f_op_vec2_f32(-var_0.wy), _wgslsmith_f_op_f32(select(-413f, -493f, true))).a.x, _wgslsmith_f_op_f32(f32(-1f) * -665f))), vec4<u32>(var_1.a.b, _wgslsmith_clamp_u32(0u, ~var_6.a.b, ~(var_1.a.b << (var_1.a.b % 32u))), var_6.a.b, var_1.a.b));
}

