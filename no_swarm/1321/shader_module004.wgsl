struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(0u, Struct_1(vec3<u32>(0u, 326u, 1u)), Struct_1(vec3<u32>(2903u, 0u, 0u))), Struct_2(38438u, Struct_1(vec3<u32>(1u, 4294967295u, 20127u)), Struct_1(vec3<u32>(0u, 30777u, 1u))), Struct_2(10913u, Struct_1(vec3<u32>(16925u, 1u, 32820u)), Struct_1(vec3<u32>(4294967295u, 11077u, 6462u))), Struct_2(4294967295u, Struct_1(vec3<u32>(54125u, 0u, 0u)), Struct_1(vec3<u32>(4294967295u, 8540u, 25898u))), Struct_2(94302u, Struct_1(vec3<u32>(33177u, 1149u, 26740u)), Struct_1(vec3<u32>(1u, 52134u, 0u))), Struct_2(4294967295u, Struct_1(vec3<u32>(0u, 15988u, 4294967295u)), Struct_1(vec3<u32>(19357u, 4294967295u, 24314u))), Struct_2(1u, Struct_1(vec3<u32>(0u, 1u, 40336u)), Struct_1(vec3<u32>(39956u, 15466u, 53277u))), Struct_2(28785u, Struct_1(vec3<u32>(28613u, 1u, 1u)), Struct_1(vec3<u32>(22914u, 1u, 73462u))), Struct_2(49263u, Struct_1(vec3<u32>(5081u, 4753u, 1u)), Struct_1(vec3<u32>(61275u, 0u, 16261u))), Struct_2(4294967295u, Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(67063u, 0u, 65387u))), Struct_2(26934u, Struct_1(vec3<u32>(0u, 0u, 0u)), Struct_1(vec3<u32>(70401u, 0u, 47721u))), Struct_2(7320u, Struct_1(vec3<u32>(4294967295u, 4294967295u, 25577u)), Struct_1(vec3<u32>(25088u, 16710u, 0u))), Struct_2(23683u, Struct_1(vec3<u32>(1u, 34513u, 10546u)), Struct_1(vec3<u32>(44481u, 4294967295u, 24301u))));

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<u32>(34268u, 62018u, 0u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 17415u)), Struct_1(vec3<u32>(1u, 9907u, 4294967295u)), Struct_1(vec3<u32>(43287u, 0u, 4294967295u)), Struct_1(vec3<u32>(1u, 2906u, 4294967295u)), Struct_1(vec3<u32>(20124u, 13635u, 22260u)), Struct_1(vec3<u32>(34124u, 4294967295u, 6621u)), Struct_1(vec3<u32>(1u, 30190u, 4294967295u)), Struct_1(vec3<u32>(1u, 4294967295u, 1u)), Struct_1(vec3<u32>(32299u, 17981u, 5281u)), Struct_1(vec3<u32>(0u, 24499u, 20981u)), Struct_1(vec3<u32>(4294967295u, 15753u, 4159u)), Struct_1(vec3<u32>(4294967295u, 1u, 12312u)), Struct_1(vec3<u32>(38303u, 4294967295u, 0u)), Struct_1(vec3<u32>(7318u, 59086u, 20290u)), Struct_1(vec3<u32>(0u, 62194u, 55732u)), Struct_1(vec3<u32>(24998u, 51232u, 1u)), Struct_1(vec3<u32>(108503u, 0u, 4294967295u)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 40617u, 4294967295u)), Struct_1(vec3<u32>(1u, 0u, 52999u)), Struct_1(vec3<u32>(4845u, 0u, 1u)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: i32) -> f32 {
    var var_0 = reverseBits(~u_input.a);
    var var_1 = false;
    global1 = array<Struct_1, 22>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, 978f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1000f, -778f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1221f, 949f, -1000f), vec3<f32>(-1303f, -620f, -146f)))))) + vec3<f32>(682f, _wgslsmith_div_f32(-135f, _wgslsmith_f_op_f32(round(708f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(707f, -2060f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1476f, 1f, -345f), vec3<f32>(_wgslsmith_f_op_f32(-1000f + 1601f), _wgslsmith_f_op_f32(773f - -792f), -2252f), arg_0))));
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(~(~0u), 13u)], vec4<u32>(var_0.x, select(select(var_0.x, var_0.x, true) | 1u, 39843u, !(!arg_0)), 1u, var_0.x), Struct_2(~abs(var_0.x), Struct_1(vec3<u32>(19712u, 0u, reverseBits(var_0.x))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~reverseBits(var_0.x), 1u), 22u)]));
    return _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-var_2.x))))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(all(vec4<bool>(true, true, true, true)), _wgslsmith_div_i32(87416i, 5376i) >> (~4294967295u % 32u))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-905f, arg_1), _wgslsmith_f_op_f32(-879f * arg_1)))));
    var var_1 = vec3<u32>(~(~(~_wgslsmith_add_u32(144834u, 60776u))), ~(~firstLeadingBit(~10869u)), _wgslsmith_mult_u32(u_input.a.x, 33591u));
    global0 = array<Struct_2, 13>();
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 13u)];
    let var_3 = _wgslsmith_mult_i32(u_input.c, abs(1i) & (-u_input.c >> (_wgslsmith_add_u32(0u, var_1.x) % 32u))) ^ u_input.c;
    return countOneBits(firstLeadingBit(vec2<i32>(33371i | _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(u_input.b.x, -1i)), ~countOneBits(var_3))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = abs(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, reverseBits(16928i)), u_input.b.yy, vec2<i32>(_wgslsmith_mod_i32(0i, -31731i), 1i << (arg_0.x % 32u))), _wgslsmith_mod_vec2_i32(func_2(vec4<f32>(625f, -939f, 1000f, 598f), 2008f) << (reverseBits(u_input.a) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.xz), u_input.c))));
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    var var_1 = false;
    let var_2 = true;
    return 2290f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1122f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(376f + -1067f) + _wgslsmith_f_op_f32(-1763f * 265f)))), _wgslsmith_f_op_f32(206f * 1000f));
    let var_1 = Struct_3(Struct_2(_wgslsmith_div_u32(u_input.a.x, max(0u, 15091u)), global1[_wgslsmith_index_u32(16372u, 22u)], Struct_1(vec3<u32>(u_input.a.x, 55085u << (0u % 32u), u_input.a.x))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 1u)), u_input.a.x | 73666u, 34705u, ~27370u) >> (~(vec4<u32>(0u, 11534u, 4294967295u, 0u) << (vec4<u32>(u_input.a.x, 31050u, 4294967295u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(1u & (_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1u)) >> (firstTrailingBit(15783u) % 32u)), 13u)]);
    var var_2 = var_1.a;
    var var_3 = Struct_5(select(true, true, false), -252f, var_1.c, var_2.c.a.xz, var_2.b);
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), vec2<i32>(u_input.c, _wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.c, -2147483647i, 2388i))))) < ~_wgslsmith_div_i32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, 1932f, var_0.x, var_0.x)), 2057f).x, u_input.b.x);
    var_4 = any(!vec3<bool>(false, any(!vec4<bool>(var_3.a, false, var_3.a, false)), _wgslsmith_add_u32(var_2.b.a.x, var_1.a.a) <= min(4884u, 45347u)));
    var_3 = Struct_5(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2170f + 2007f))), _wgslsmith_f_op_f32(405f * _wgslsmith_f_op_f32(-2270f * var_3.b))))), Struct_2(~_wgslsmith_mult_u32(var_1.b.x, ~u_input.a.x), Struct_1(var_1.a.c.a), var_2.b), var_2.b.a.xx, global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(var_3.e.a.x, 1u)), 22u)]);
    let var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -931f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_3.b, var_0.x)))) + _wgslsmith_f_op_f32(var_0.x * var_3.b)), _wgslsmith_f_op_f32(select(653f, 1694f, u_input.b.x <= 4213i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(u_input.b.x, -51081i, u_input.b.x, -50545i) >> (var_1.b % vec4<u32>(32u))) ^ vec4<i32>(i32(-1i) * -1i, u_input.b.x, -9358i, -16927i), ~(-vec4<i32>(1i, u_input.c, u_input.c, u_input.b.x) & select(vec4<i32>(u_input.b.x, u_input.b.x, 22765i, -2147483647i), vec4<i32>(-25562i, -2147483647i, 0i, u_input.c), vec4<bool>(var_3.a, var_3.a, false, true))), ~vec4<i32>(_wgslsmith_mod_i32(u_input.c, -10204i), u_input.b.x, abs(-53775i), u_input.b.x)), 4294967295u, max(u_input.b, ~countOneBits(-u_input.b)));
}

