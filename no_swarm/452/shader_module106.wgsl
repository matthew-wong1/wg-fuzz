struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2>;

var<private> global1: f32;

var<private> global2: array<i32, 5> = array<i32, 5>(20795i, 49422i, 0i, 1i, 0i);

var<private> global3: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_2(Struct_1(vec2<u32>(110482u, 29453u), -1156f, vec3<f32>(-2585f, -1473f, 159f))), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec2<u32>(0u, 0u), 420f, vec3<f32>(772f, -1589f, 1042f))), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec2<u32>(13269u, 32940u), 1217f, vec3<f32>(1560f, -522f, -1191f))), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec2<u32>(64657u, 4625u), -168f, vec3<f32>(1620f, 1335f, -868f))), vec2<bool>(false, false)), Struct_4(Struct_2(Struct_1(vec2<u32>(4294967295u, 8986u), 516f, vec3<f32>(-820f, 635f, 1000f))), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec2<u32>(41923u, 78544u), -221f, vec3<f32>(-914f, -1676f, -338f))), vec2<bool>(false, false)), Struct_4(Struct_2(Struct_1(vec2<u32>(53981u, 15972u), 1145f, vec3<f32>(1000f, -1903f, -2255f))), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec2<u32>(1u, 10526u), -856f, vec3<f32>(609f, 1000f, -2477f))), vec2<bool>(false, true)), Struct_4(Struct_2(Struct_1(vec2<u32>(1u, 1u), 1476f, vec3<f32>(666f, -659f, 1367f))), vec2<bool>(true, false)), Struct_4(Struct_2(Struct_1(vec2<u32>(1u, 30971u), -975f, vec3<f32>(-350f, 817f, -414f))), vec2<bool>(true, true)), Struct_4(Struct_2(Struct_1(vec2<u32>(1u, 0u), -1000f, vec3<f32>(-1807f, -1557f, 1483f))), vec2<bool>(false, true)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4) -> bool {
    global3 = array<Struct_4, 11>();
    global3 = array<Struct_4, 11>();
    return arg_0.b.x;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_3(4294967295u);
    global1 = -1041f;
    global3 = array<Struct_4, 11>();
    global2 = array<i32, 5>();
    let var_1 = !(func_3(Struct_4(Struct_2(Struct_1(vec2<u32>(1u, var_0.a), -371f, vec3<f32>(1554f, 1337f, 1276f))), vec2<bool>(true, true))) || true);
    return Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(max(firstLeadingBit(u_input.b.zx), ~vec2<u32>(var_0.a, 1u)), vec2<u32>(1u, u_input.b.x >> (0u % 32u))), 1084f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-499f, 2506f, -634f) * vec3<f32>(1000f, -1000f, 569f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(109f, -417f, 664f) * vec3<f32>(285f, -473f, -1616f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(195f, 589f, -551f)) * vec3<f32>(1986f, -1000f, -556f)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = func_2(arg_1.x);
    let var_1 = !arg_0.b;
    var var_2 = global3[_wgslsmith_index_u32(~firstLeadingBit(11643u), 11u)];
    var var_3 = func_3(global3[_wgslsmith_index_u32(~0u, 11u)]);
    global2 = array<i32, 5>();
    return Struct_1(~var_0.a.a, -642f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a.a.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.a.c)))) + var_2.a.a.c));
}

fn func_1() -> bool {
    global2 = array<i32, 5>();
    let var_0 = Struct_4(Struct_2(func_4(Struct_4(func_2(-2147483647i), vec2<bool>(false, false)), ~vec4<i32>(889i, -1i, 34483i, -6550i), countOneBits(u_input.a & -15610i), global0[_wgslsmith_index_u32(u_input.b.x, 2u)])), select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(false, func_3(Struct_4(Struct_2(Struct_1(vec2<u32>(u_input.b.x, 4294967295u), 944f, vec3<f32>(-151f, 272f, 853f))), vec2<bool>(true, false)))), select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec3<bool>(true, true, false))), select(true, false, true)), select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, false, true))), !(u_input.b.x > u_input.b.x))));
    var var_1 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(~(~vec4<u32>(26320u, 48455u, 22303u, var_0.a.a.a.x)), vec4<u32>(1u, 5369u, select(var_0.a.a.a.x, var_0.a.a.a.x, true), ~34727u)), select(select(~reverseBits(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u)), ~countOneBits(vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), !vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x)), select(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(30947u, 50082u, 0u, 79262u)), abs(vec4<u32>(0u, 0u, u_input.b.x, var_0.a.a.a.x))), ~select(vec4<u32>(u_input.b.x, 89689u, var_0.a.a.a.x, 4294967295u), vec4<u32>(u_input.b.x, 3797u, 84353u, 4294967295u), var_0.b.x), true), !vec4<bool>(false, false || var_0.b.x, !var_0.b.x, var_0.b.x)), vec4<u32>(~(~(var_0.a.a.a.x | u_input.b.x)), _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_add_vec3_u32(u_input.b | u_input.b, max(u_input.b, vec3<u32>(u_input.b.x, 43467u, 25784u)))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(91624u, 38652u), abs(var_0.a.a.a.x | u_input.b.x)), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a.a.x, u_input.b.x, 40270u, var_0.a.a.a.x), vec4<u32>(4294967295u, u_input.b.x, 63289u, u_input.b.x)), 1u)));
    var var_2 = _wgslsmith_f_op_f32(-740f * _wgslsmith_f_op_f32(var_0.a.a.b * -597f));
    var var_3 = !all(vec3<bool>(var_0.b.x, 1u == ~u_input.b.x, var_0.b.x));
    return func_3(var_0) != true;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 11>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f - 1025f)) * -494f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1332f * 1000f) + _wgslsmith_f_op_f32(sign(-349f))) + _wgslsmith_f_op_f32(f32(-1f) * -1485f))));
    global2 = array<i32, 5>();
    var var_0 = 44358i;
    var_0 = 17513i;
    var var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, true)), true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -13791i, u_input.a), vec3<i32>(-21215i, -1i, 2147483647i)) != (u_input.a >> (1u % 32u)), func_1() | any(vec3<bool>(true, false, false))), -1162f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1699f), 692f, true)));
    var var_2 = global3[_wgslsmith_index_u32(u_input.b.x, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(abs(vec4<u32>(4294967295u, var_2.a.a.a.x, 4294967295u, u_input.b.x))), var_2.a.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(419f)))) - func_4(global3[_wgslsmith_index_u32(func_4(Struct_4(var_2.a, var_1.ww), ~vec4<i32>(global2[_wgslsmith_index_u32(var_2.a.a.a.x, 5u)], -40066i, global2[_wgslsmith_index_u32(1u, 5u)], 2147483647i), -global2[_wgslsmith_index_u32(13304u, 5u)], _wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 2u)]))).a.x, 11u)], _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(var_2.a.a.a.x, 5u)], 5843i, 46553i)), ~vec4<i32>(-1i, -69255i, u_input.c, 0i)), global2[_wgslsmith_index_u32(~(var_2.a.a.a.x << (u_input.b.x % 32u)), 5u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(75462u, 2u)]))).b), ~max(u_input.b.xz, ~func_2(u_input.c).a.a));
}

