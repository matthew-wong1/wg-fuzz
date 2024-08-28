struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(614f, -1916f, 791f, -1220f);

var<private> global1: array<f32, 5>;

var<private> global2: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(1u, 24547u), vec2<u32>(19905u, 14380u), vec2<u32>(29218u, 68330u), vec2<u32>(4294967295u, 0u), vec2<u32>(99641u, 88973u), vec2<u32>(44792u, 0u), vec2<u32>(47029u, 25475u), vec2<u32>(1u, 1u), vec2<u32>(48129u, 1u), vec2<u32>(67380u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 13967u), vec2<u32>(1330u, 1u), vec2<u32>(1u, 0u), vec2<u32>(1780u, 4294967295u), vec2<u32>(14837u, 70429u), vec2<u32>(12975u, 4294967295u), vec2<u32>(62641u, 4294967295u), vec2<u32>(123829u, 0u), vec2<u32>(5048u, 35116u), vec2<u32>(67813u, 1u));

var<private> global3: Struct_4;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> vec2<f32> {
    global1 = array<f32, 5>();
    var var_0 = arg_0.c;
    var_0 = Struct_1(countOneBits(arg_0.a.a), u_input.b.x, vec2<bool>(arg_1.c.x, true));
    global1 = array<f32, 5>();
    var var_1 = Struct_1(arg_2, countOneBits(arg_0.b.b), arg_1.c);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 5u)])), global0.x))), 1379f) + vec2<f32>(1000f, _wgslsmith_f_op_f32(-global0.x)));
}

fn func_2() -> Struct_4 {
    global2 = array<vec2<u32>, 21>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(vec2<u32>(71315u, 4294967295u), countOneBits(u_input.b.x), select(global3.a.zx, global3.a.xx, global3.a.x)), Struct_1(firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 21u)]), -2147483647i, global3.a.yx), Struct_1(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.d, u_input.d)), global3.b ^ -1i, vec2<bool>(global3.a.x, true)), Struct_1(~vec2<u32>(25184u, 0u), -2147483647i >> (u_input.a.x % 32u), !vec2<bool>(global3.a.x, true))), Struct_1(~vec2<u32>(4294967295u, 7959u) | firstTrailingBit(vec2<u32>(4294967295u, 13225u)), ~1i, vec2<bool>(u_input.c != u_input.c, select(global3.a.x, global3.a.x, true))), ~(~u_input.a >> (vec2<u32>(u_input.c, 21456u) % vec2<u32>(32u))), false)));
    let var_1 = !(!select(!vec4<bool>(global3.a.x, global3.a.x, global3.a.x, true), vec4<bool>(!global3.a.x, -1i < global3.b, !global3.a.x, global3.a.x), !vec4<bool>(true, global3.a.x, global3.a.x, false)));
    let var_2 = 1u;
    var var_3 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(var_2, 21u)], global3.b, select(vec2<bool>(false, false), !select(var_1.xw, vec2<bool>(global3.a.x, false), vec2<bool>(global3.a.x, false)), !(!var_1.wz))), Struct_1(~global2[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_sub_i32(2147483647i >> (u_input.c % 32u), ~u_input.b.x & max(global3.b, global3.b)), !vec2<bool>(any(global3.a), !global3.a.x)), Struct_1(~_wgslsmith_clamp_vec2_u32(countOneBits(global2[_wgslsmith_index_u32(1u, 21u)]), ~global2[_wgslsmith_index_u32(0u, 21u)], ~u_input.a), ~(~1i), !global3.a.yx), Struct_1(_wgslsmith_sub_vec2_u32(global2[_wgslsmith_index_u32(~(~var_2), 21u)], countOneBits(firstLeadingBit(u_input.a))), _wgslsmith_sub_i32(_wgslsmith_div_i32(abs(global3.b), ~global3.b), countOneBits(global3.b)), select(select(vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, global3.a.x), vec2<bool>(var_1.x, global3.a.x), true), !global3.a.x), vec2<bool>(true, !global3.a.x), true)));
    return Struct_4(select(select(!select(global3.a, var_1.wzx, var_1.x), !vec3<bool>(var_1.x, true, var_3.d.c.x), !var_1.xyx), vec3<bool>(select(true, true, var_3.a.c.x) & (-37675i >= global3.b), global3.a.x != var_1.x, _wgslsmith_add_i32(global3.b, 32027i) > -1i), all(!var_1)), reverseBits(var_3.d.b));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2();
    global1 = array<f32, 5>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 5u)]))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(213f)))))));
    let var_2 = global0.x;
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> f32 {
    var var_0 = arg_1.a.x;
    var var_1 = arg_2;
    let var_2 = -1140f;
    var var_3 = ~(~(-1623i));
    let var_4 = ~u_input.b.zy;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * arg_0.b))))));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(u_input.a ^ ~global2[_wgslsmith_index_u32(countOneBits(1u), 21u)], func_2().b, vec2<bool>(true, global3.a.x)), Struct_1(~_wgslsmith_sub_vec2_u32(min(global2[_wgslsmith_index_u32(9153u, 21u)], vec2<u32>(12567u, 61472u)), u_input.a), u_input.b.x, !vec2<bool>(-1154f >= global0.x, false)), Struct_1(vec2<u32>(~u_input.d, 1u) | firstTrailingBit(u_input.a), u_input.b.x, !func_2().a.yx), Struct_1(global2[_wgslsmith_index_u32(~4294967295u, 21u)], abs(-2147483647i), vec2<bool>(all(select(vec2<bool>(global3.a.x, false), global3.a.xy, true)), !(u_input.c == 0u))));
    global1 = array<f32, 5>();
    return Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, var_0.c.a.x)), select(~vec2<u32>(0u, 4294967295u), ~vec2<u32>(1u, u_input.c), arg_3), ~select(global2[_wgslsmith_index_u32(1u, 21u)], vec2<u32>(4294967295u, u_input.c), arg_0)), 1i, select(select(vec2<bool>(false, true), !var_0.a.c, true), !(!global3.a.xy), vec2<bool>(arg_1 && global3.a.x, func_2().a.x))), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], firstLeadingBit(max(_wgslsmith_div_i32(u_input.b.x, var_0.d.b), var_0.a.b)), func_2().a.yx), var_0.c, var_0.a);
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = select(~(~(~(vec3<u32>(4294967295u, u_input.a.x, 72417u) << (vec3<u32>(21607u, 4294967295u, u_input.d) % vec3<u32>(32u))))), vec3<u32>(u_input.d, u_input.d, 1u), vec3<bool>(select(!(!global3.a.x), any(vec2<bool>(true, true)), !all(vec4<bool>(true, false, true, arg_0.b.c.x))), global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-261f)) * -135f) <= global1[_wgslsmith_index_u32(0u, 5u)]));
    global1 = array<f32, 5>();
    var var_1 = vec4<u32>(arg_0.c.a.x, arg_0.d.a.x >> (0u % 32u), ~(abs(arg_0.a.a.x) >> (u_input.c % 32u)), 0u) >> (((~_wgslsmith_sub_vec4_u32(vec4<u32>(14985u, 31417u, u_input.c, u_input.a.x), vec4<u32>(arg_0.d.a.x, 66188u, arg_0.b.a.x, arg_0.b.a.x)) | vec4<u32>(var_0.x, func_5(global3.a.x, global3.a.x, -1000f, global3.a.yz).b.a.x, ~34546u, var_0.x >> (arg_0.a.a.x % 32u))) | ~vec4<u32>(1u, var_0.x, ~0u, 1u)) % vec4<u32>(32u));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-659f, global1[_wgslsmith_index_u32(arg_0.a.a.x, 5u)])) * _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(arg_0.a.a.x, 5u)]))), 135f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.zy, vec2<f32>(_wgslsmith_f_op_f32(sign(-270f)), _wgslsmith_f_op_f32(f32(-1f) * -1507f)))));
    var var_3 = global0.yyz;
    return Struct_1(vec2<u32>(~4294967295u, 0u), func_1().b, !global3.a.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(false || global3.a.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(vec2<i32>(global3.b, 0i), -911f, Struct_1(vec2<u32>(u_input.c, u_input.d), global3.b, vec2<bool>(false, true)), Struct_2(Struct_1(u_input.a, 0i, vec2<bool>(false, global3.a.x)), Struct_1(vec2<u32>(99560u, u_input.a.x), global3.b, vec2<bool>(true, true)), Struct_1(global2[_wgslsmith_index_u32(u_input.c, 21u)], -42055i, vec2<bool>(true, global3.a.x)), Struct_1(global2[_wgslsmith_index_u32(41105u, 21u)], 2147483647i, vec2<bool>(global3.a.x, false))), -24893i), func_1(), ~u_input.b.x))), func_1().a.yz));
    global3 = Struct_4(vec3<bool>(_wgslsmith_div_u32(~var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 13698u, 52495u), vec3<u32>(78925u, 0u, 8334u))) <= var_0.a.x, true, global3.a.x), global3.b);
    var var_1 = Struct_4(!global3.a, firstLeadingBit(-3246i));
    var var_2 = global0.x;
    var var_3 = vec3<i32>(-1i) * -u_input.b.zzx;
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_5(true, select(global3.a.x, global3.a.x, var_0.c.x), -933f, func_5(false, true, 1389f, vec2<bool>(false, false)).b.c).d.b), select(37341u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, var_0.a.x) >> (1u % 32u), firstLeadingBit(countOneBits(33274u))), !var_1.a.x), _wgslsmith_dot_vec3_u32(~max(firstLeadingBit(vec3<u32>(u_input.c, var_0.a.x, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(23592u, 72235u, u_input.d), vec3<u32>(u_input.d, var_0.a.x, 67128u))), ~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.d, u_input.d, 15439u)), ~vec3<u32>(1u, 13797u, 4294967295u), ~vec3<u32>(0u, 46963u, 0u))));
}

