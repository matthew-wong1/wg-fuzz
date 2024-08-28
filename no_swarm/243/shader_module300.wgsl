struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-10024i, 1u, false);

var<private> global1: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(1i, -7816i, 0i, 2147483647i), vec4<i32>(0i, 0i, 8688i, 0i), vec4<i32>(31515i, 0i, -22490i, -47849i), vec4<i32>(38101i, -78211i, i32(-2147483648), i32(-2147483648)), vec4<i32>(26802i, 1i, 19357i, 25595i), vec4<i32>(2147483647i, -1i, -36356i, 6831i), vec4<i32>(1i, 1i, -17988i, 14395i), vec4<i32>(-1i, 36713i, 91214i, 0i), vec4<i32>(2147483647i, -15344i, 5686i, 19817i), vec4<i32>(2147483647i, -1i, -1i, i32(-2147483648)), vec4<i32>(1i, -8922i, -1i, 4344i), vec4<i32>(45749i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(-3819i, -1i, 22927i, 32818i), vec4<i32>(29884i, -3468i, -1i, 2147483647i), vec4<i32>(-6067i, -18495i, -1i, 33445i), vec4<i32>(1133i, -1i, 2147483647i, 2147483647i), vec4<i32>(0i, 1i, 1i, -21408i), vec4<i32>(0i, 1i, -8714i, 32785i), vec4<i32>(0i, 9458i, 0i, 1i), vec4<i32>(44836i, 38024i, 2147483647i, -57572i), vec4<i32>(32018i, 0i, -1i, 4947i), vec4<i32>(2147483647i, 2147483647i, 49524i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), 37074i, 23565i), vec4<i32>(0i, 9002i, 23110i, -345i), vec4<i32>(33120i, -1i, 2147483647i, -4659i), vec4<i32>(-4368i, i32(-2147483648), 68708i, -24678i), vec4<i32>(-5440i, i32(-2147483648), 26857i, -39378i), vec4<i32>(-15298i, -41727i, 2147483647i, i32(-2147483648)), vec4<i32>(-28451i, 19982i, 3185i, -36929i));

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(7935i, 4294967295u, false), Struct_1(-52371i, 29287u, true), Struct_1(-26062i, 4294967295u, true), Struct_1(26216i, 0u, false), Struct_1(-9960i, 52102u, true), Struct_1(i32(-2147483648), 4294967295u, false), Struct_1(-1i, 0u, false), Struct_1(-23983i, 9746u, true), Struct_1(-1i, 0u, false), Struct_1(1i, 20881u, true), Struct_1(-11439i, 112338u, true), Struct_1(2147483647i, 11760u, false), Struct_1(2147483647i, 45602u, false), Struct_1(-13588i, 41138u, true), Struct_1(0i, 4294967295u, false), Struct_1(0i, 19997u, false), Struct_1(55998i, 4294967295u, false));

var<private> global4: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-444f, -294f))));
    var var_1 = arg_3.a;
    let var_2 = reverseBits(select(u_input.e.yyy ^ u_input.e.xzw, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 33863i, 0i), select(firstTrailingBit(u_input.e.zzz), vec3<i32>(-2147483647i, 4649i, u_input.e.x), false)), arg_1.wyx));
    global0 = Struct_1(u_input.e.x, _wgslsmith_sub_u32(reverseBits(~(~4294967295u)), arg_0.b & arg_0.b), true);
    global3 = array<Struct_1, 17>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_3.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)), var_0)), arg_2)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -307f), 243f, -1000f));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1764f)), _wgslsmith_f_op_f32(-global4.a.x))) - arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -855f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.a.x, arg_1.x, global4.a.x), arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-290f, -1441f, 1000f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(333f, -1498f, 1144f)))))) + _wgslsmith_f_op_vec3_f32(func_3(global3[_wgslsmith_index_u32(0u, 17u)], !select(vec4<bool>(global4.c.x, global4.d.c, global4.b.c, false), vec4<bool>(global4.c.x, global4.b.c, global0.c, global4.d.c), true), -877f, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(361f, 166f) - arg_1.zx), Struct_1(-2507i, 34935u, false), !vec2<bool>(false, global0.c), Struct_1(global4.b.a, arg_2.x, global4.c.x))))));
    global3 = array<Struct_1, 17>();
    var var_1 = ~_wgslsmith_mult_u32(~1u, u_input.b);
    let var_2 = countOneBits(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 29448i), u_input.e.wy, vec2<i32>(-2147483647i, 1i)), u_input.a, !global4.c)) >> (vec2<u32>(~4294967295u, ~1u) % vec2<u32>(32u));
    global2 = vec4<u32>(global4.b.b, arg_2.x, select(firstLeadingBit(global4.b.b), arg_2.x, all(!(!vec3<bool>(global0.c, true, global4.c.x)))), global4.b.b);
    return _wgslsmith_f_op_f32(ceil(701f));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -12419i), u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1287f, global4.a.x, global4.a.x)), select(global2.ww, vec2<u32>(4294967295u, global0.b), global0.c))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -821f), global4.a.x))))));
    global2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(reverseBits(15313u), ~global4.d.b, 4294967295u, max(global0.b, 8825u)) >> (abs(vec4<u32>(u_input.b, 22142u, ~global0.b, u_input.b)) % vec4<u32>(32u)), abs((vec4<u32>(4294967295u, 1u, u_input.c, global0.b) << (countOneBits(vec4<u32>(0u, 4294967295u, global2.x, 4294967295u)) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.b, global4.b.b, 4294967295u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(global4.d.b, global4.b.b, global2.x, global0.b), vec4<u32>(0u, 4294967295u, u_input.b, 4294967295u))) % vec4<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(func_2(~(-(vec2<i32>(global0.a, -115i) & vec2<i32>(global4.d.a, global4.d.a))), vec3<f32>(-922f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a.x, global4.a.x))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(1i, global2.x & global0.b, true), vec4<bool>(true, !global4.c.x, global0.c, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) * _wgslsmith_f_op_f32(-1470f + 723f)), Struct_2(_wgslsmith_f_op_vec2_f32(-global4.a), Struct_1(1i, 0u, false), select(global4.c, global4.c, vec2<bool>(false, true)), global4.b))).x), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global0.b, ~global2.x), _wgslsmith_add_u32(global4.d.b, ~global2.x)), vec2<u32>(~0u, global2.x))));
    var var_1 = global3[_wgslsmith_index_u32(4294967295u, 17u)];
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a.x, global4.a.x) * vec2<f32>(-1000f, global4.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a.x, 1793f) - _wgslsmith_f_op_vec2_f32(sign(global4.a)))))), global4.d, !global4.c, global3[_wgslsmith_index_u32(reverseBits(~(~_wgslsmith_dot_vec2_u32(global2.yz, vec2<u32>(66553u, u_input.b)))), 17u)]);
    return Struct_1(max(-23507i, -var_1.a & _wgslsmith_div_i32(var_2.b.a << (var_2.b.b % 32u), _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(global4.d.a, 2147483647i, var_2.d.a, -21607i)))), ~4294967295u, any(select(select(!vec3<bool>(global0.c, false, var_2.b.c), select(vec3<bool>(false, global0.c, true), vec3<bool>(false, true, var_2.d.c), vec3<bool>(var_2.b.c, false, var_2.d.c)), true), !(!vec3<bool>(var_1.c, true, var_1.c)), vec3<bool>(!var_2.c.x, any(vec3<bool>(true, true, true)), !global0.c))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global3 = array<Struct_1, 17>();
    var var_0 = vec3<bool>(arg_2.c.x, false, true);
    let var_1 = arg_2;
    let var_2 = vec2<bool>(any(select(select(select(vec4<bool>(true, true, global0.c, false), vec4<bool>(true, true, false, arg_3.c), vec4<bool>(false, false, global0.c, global4.d.c)), select(vec4<bool>(global4.b.c, arg_2.b.c, arg_2.b.c, arg_0.c), vec4<bool>(var_1.c.x, arg_0.c, false, false), vec4<bool>(arg_0.c, global0.c, true, global0.c)), true), !vec4<bool>(true, var_0.x, false, false), vec4<bool>(true, false, global4.d.b >= 5696u, any(vec4<bool>(var_1.d.c, var_1.d.c, global4.c.x, arg_0.c))))), global4.d.c);
    global0 = func_1();
    return Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.x - arg_1.x), -920f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(arg_1.yz, vec2<f32>(-1000f, -2304f))))) - _wgslsmith_f_op_vec2_f32(var_1.a * vec2<f32>(var_1.a.x, arg_1.x))))), Struct_1(56355i, ~global2.x | reverseBits(~4294967295u), all(select(!global4.c, select(vec2<bool>(false, arg_2.b.c), var_1.c, true), vec2<bool>(true, global4.b.c)))), select(var_1.c, !global4.c, select(!var_0.xz, !arg_2.c, arg_2.c)), Struct_1(38218i, 47397u, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global4.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(2494f)))), -1323f), vec3<f32>(global4.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global4.a.x, 746f), _wgslsmith_f_op_f32(1276f * -1162f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) + global4.a.x))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(19011i, global2.x, global4.c.x), vec4<bool>(global0.c, global4.d.c, global0.c, global4.d.c), 982f, Struct_2(global4.a, global3[_wgslsmith_index_u32(28944u, 17u)], vec2<bool>(global4.b.c, false), global3[_wgslsmith_index_u32(0u, 17u)]))).zz * vec2<f32>(global4.a.x, global4.a.x)) + vec2<f32>(-1567f, _wgslsmith_f_op_f32(global4.a.x + global4.a.x))), func_1(), vec2<bool>(!(u_input.e.x != -69776i), true), func_1()), func_1());
    var var_1 = global3[_wgslsmith_index_u32(4294967295u, 17u)];
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global4.a), var_0.a)), Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global4.d.a, u_input.a.x, var_0.b.a)), -vec3<i32>(-2147483647i, 2147483647i, 30864i)), func_1().a), 1u, var_1.c), func_4(global4.b, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(func_2(u_input.a, vec3<f32>(var_0.a.x, -348f, 641f), vec2<u32>(var_1.b, 20300u))), _wgslsmith_f_op_f32(global4.a.x + -1185f)))), var_0, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.b, global2.x >> (firstTrailingBit(u_input.c) % 32u)), 17u)]).c, global3[_wgslsmith_index_u32(4294967295u, 17u)]);
    global1 = array<vec4<i32>, 29>();
    var var_3 = _wgslsmith_mult_vec3_u32(~vec3<u32>(var_1.b, 1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.b, 0u), u_input.b)), vec3<u32>((global2.x & max(var_2.d.b, u_input.b)) & (_wgslsmith_dot_vec3_u32(global2.yzz, vec3<u32>(1u, var_0.b.b, global2.x)) | ~4294967295u), _wgslsmith_add_u32(~1u << (_wgslsmith_div_u32(1u, var_0.d.b) % 32u), _wgslsmith_mult_u32(min(4294967295u, global2.x), global4.b.b)), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.a + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, global4.a.x) + var_0.a)) * vec2<f32>(_wgslsmith_f_op_f32(-2210f + 941f), _wgslsmith_f_op_f32(-global4.a.x))) * vec2<f32>(global4.a.x, -1000f)), abs(vec4<i32>(global4.d.a & select(var_1.a, 26384i, true), var_0.b.a, var_1.a, global4.b.a)), u_input.e.xyw, global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-457f * var_0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(u_input.a, vec3<f32>(var_2.a.x, global4.a.x, 751f), var_3.yx)), var_0.a.x)), all(vec4<bool>(false, false, global0.c, var_2.b.c))))));
}

