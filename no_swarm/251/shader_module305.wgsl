struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<i32>(i32(-2147483648), 26171i), vec2<bool>(false, true), vec3<u32>(23129u, 0u, 4294967295u), false, -1i), Struct_1(vec2<i32>(-61091i, 13357i), vec2<bool>(true, true), vec3<u32>(19694u, 1u, 0u), true, 0i), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec2<bool>(true, true), vec3<u32>(1u, 1u, 15060u), false, 2147483647i), Struct_1(vec2<i32>(0i, 2147483647i), vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 35005u), true, 43671i), Struct_1(vec2<i32>(2147483647i, -40524i), vec2<bool>(true, false), vec3<u32>(4294967295u, 20341u, 0u), false, 0i), Struct_1(vec2<i32>(26035i, 23757i), vec2<bool>(true, false), vec3<u32>(8880u, 0u, 18880u), true, -32641i), Struct_1(vec2<i32>(i32(-2147483648), 31505i), vec2<bool>(true, false), vec3<u32>(34370u, 4294967295u, 7460u), false, -16381i), Struct_1(vec2<i32>(0i, 0i), vec2<bool>(false, true), vec3<u32>(0u, 4294967295u, 60015u), true, 0i), Struct_1(vec2<i32>(10244i, 20338i), vec2<bool>(false, true), vec3<u32>(16097u, 15736u, 37692u), true, -1i), Struct_1(vec2<i32>(35915i, 0i), vec2<bool>(true, false), vec3<u32>(1u, 4294967295u, 4294967295u), false, i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), 23448i), vec2<bool>(true, true), vec3<u32>(1u, 1412u, 3426u), true, i32(-2147483648)), Struct_1(vec2<i32>(0i, 51131i), vec2<bool>(false, false), vec3<u32>(58185u, 15267u, 63493u), false, i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, 0i), vec2<bool>(true, true), vec3<u32>(17025u, 4294967295u, 53809u), false, -10315i), Struct_1(vec2<i32>(20529i, 0i), vec2<bool>(false, false), vec3<u32>(34823u, 5682u, 4294967295u), true, 30641i), Struct_1(vec2<i32>(-90232i, 24239i), vec2<bool>(false, false), vec3<u32>(56405u, 27188u, 50498u), true, i32(-2147483648)), Struct_1(vec2<i32>(i32(-2147483648), -20717i), vec2<bool>(true, true), vec3<u32>(1u, 0u, 1u), true, 1i), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec2<bool>(true, true), vec3<u32>(17138u, 0u, 43152u), false, i32(-2147483648)), Struct_1(vec2<i32>(-11711i, -62236i), vec2<bool>(false, true), vec3<u32>(1u, 11349u, 1u), false, -1i), Struct_1(vec2<i32>(42049i, 0i), vec2<bool>(false, true), vec3<u32>(1u, 35810u, 9549u), true, 0i), Struct_1(vec2<i32>(43565i, 70488i), vec2<bool>(false, false), vec3<u32>(0u, 29253u, 25195u), true, 0i), Struct_1(vec2<i32>(35911i, i32(-2147483648)), vec2<bool>(false, false), vec3<u32>(0u, 50954u, 0u), false, 1i), Struct_1(vec2<i32>(-1i, 1512i), vec2<bool>(true, true), vec3<u32>(15282u, 1u, 1u), true, -1i), Struct_1(vec2<i32>(775i, -22619i), vec2<bool>(false, true), vec3<u32>(0u, 1u, 1u), true, 1i), Struct_1(vec2<i32>(i32(-2147483648), -38251i), vec2<bool>(true, true), vec3<u32>(34805u, 34815u, 4294967295u), true, 48948i));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = max(1i, u_input.a.x);
    let var_1 = countOneBits(~(-(~_wgslsmith_mult_i32(-4499i, 15118i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-600f, -440f), vec2<f32>(-402f, arg_1))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(294f, arg_1) + vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-318f, -1216f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1))))))));
    let var_3 = u_input.a.yyw;
    let var_4 = (~select(select(arg_0.a, arg_0.a, arg_0.b.x), _wgslsmith_clamp_vec2_i32(arg_0.a, arg_0.a, vec2<i32>(var_3.x, u_input.a.x)), vec2<bool>(arg_0.b.x, arg_0.b.x)) << (arg_0.c.zz % vec2<u32>(32u))) << ((_wgslsmith_div_vec2_u32(~arg_0.c.zy, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, arg_0.c.x), arg_0.c.xy), ~arg_0.c.x)) | vec2<u32>(_wgslsmith_sub_u32(~58736u, arg_0.c.x), arg_0.c.x | arg_0.c.x)) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(abs(arg_1));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = arg_0.c.c.x;
    global1 = array<Struct_1, 24>();
    let var_1 = select(!vec4<bool>(!(!arg_0.c.d), any(select(vec2<bool>(false, true), vec2<bool>(arg_0.c.d, arg_1.d), vec2<bool>(false, arg_1.b.x))), arg_0.c.b.x, !arg_1.b.x), vec4<bool>(((arg_1.d && arg_1.d) == any(vec2<bool>(true, false))) & !any(vec3<bool>(arg_1.b.x, arg_1.b.x, false)), any(select(select(vec2<bool>(false, false), vec2<bool>(arg_1.b.x, arg_0.c.d), vec2<bool>(true, arg_0.c.b.x)), !vec2<bool>(arg_1.b.x, arg_0.c.b.x), arg_0.c.b)), true, any(!select(vec4<bool>(false, false, arg_1.b.x, arg_0.c.d), vec4<bool>(false, false, true, arg_1.b.x), true))), vec4<bool>(!arg_0.c.b.x, arg_0.a > _wgslsmith_div_f32(arg_0.a, -992f), true, arg_1.b.x));
    var var_2 = arg_0;
    var var_3 = arg_0.c.d;
    return 1i ^ max(1i, -firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.a.xzw, u_input.a.zwz)));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    global1 = array<Struct_1, 24>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1639f) + 376f), _wgslsmith_sub_vec4_u32(vec4<u32>(~arg_0.x, arg_0.x, _wgslsmith_add_u32(arg_0.x ^ arg_0.x, arg_0.x & arg_0.x), _wgslsmith_add_u32(firstLeadingBit(arg_0.x), ~arg_0.x)), countOneBits(vec4<u32>(4294967295u, countOneBits(4294967295u), arg_0.x, 16231u))), global1[_wgslsmith_index_u32(arg_0.x, 24u)], u_input.a.x, abs(func_4(Struct_2(_wgslsmith_f_op_f32(abs(2433f)), arg_0, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(45144u, 1u), 24u)], _wgslsmith_add_i32(u_input.a.x, u_input.a.x), reverseBits(38302i)), Struct_1(~u_input.a.zy, vec2<bool>(true, true), vec3<u32>(4294967295u, 4294967295u, 4294967295u), true, 74382i), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(-1i, 0i), vec2<bool>(false, true), vec3<u32>(arg_0.x, arg_0.x, arg_0.x), false, 0i), -194f)), u_input.a.x)));
    global0 = ~2147483647i;
    let var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.a))));
    return ~u_input.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = arg_0.a;
    let var_1 = u_input.a.zxz;
    let var_2 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c.e, 16185i), _wgslsmith_add_vec2_i32(-var_1.zy ^ arg_0.c.a, u_input.a.wx)), vec2<bool>(true, any(!select(vec4<bool>(arg_0.c.b.x, false, true, arg_0.c.b.x), vec4<bool>(arg_0.c.b.x, false, arg_0.c.b.x, arg_2), vec4<bool>(arg_2, true, arg_2, false)))), arg_0.c.c ^ select(arg_0.b.yxx, vec3<u32>(15055u, arg_0.b.x, abs(arg_0.c.c.x)), true), arg_0.c.b.x, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(abs(u_input.a.x), min(u_input.a.x, 1i), func_2(vec4<u32>(1u, 11734u, 88852u, arg_0.b.x))), -_wgslsmith_div_i32(1i, u_input.a.x)));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(~arg_0.b, vec4<u32>(~0u, 1u, 0u, ~29394u)), select(arg_1 | (abs(arg_1) | 81194u), arg_0.c.c.x, -1000f > _wgslsmith_f_op_f32(floor(-631f)))), 24u)];
    var var_4 = Struct_2(1f, ~vec4<u32>(~var_2.c.x << (~28345u % 32u), 4294967295u, ~var_3.c.x, 0u), Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(arg_0.c.a), select(vec2<i32>(var_2.a.x, var_2.e), u_input.a.yw, var_2.b.x), vec2<i32>(var_3.a.x, -8447i)), vec2<i32>(2147483647i, ~(-1i))), select(!var_2.b, !vec2<bool>(arg_0.c.d, true), var_1.x == -46904i), arg_0.b.zwy & ~select(var_2.c, vec3<u32>(var_2.c.x, var_2.c.x, 4294967295u), vec3<bool>(false, arg_2, var_2.d)), all(vec4<bool>(var_3.b.x, var_2.d | false, select(var_2.d, false, var_3.b.x), arg_0.c.d)), -11043i), -1i, -20494i);
    return ~_wgslsmith_dot_vec4_u32(max(~(~arg_0.b), vec4<u32>(abs(16644u), _wgslsmith_clamp_u32(5091u, 23288u, var_3.c.x), arg_1, _wgslsmith_sub_u32(var_4.b.x, arg_0.c.c.x))), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_sub_vec3_u32(select(~vec3<u32>(1u, 1u, ~48804u), vec3<u32>(28046u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(53660u, 44761u), vec2<u32>(1u, 14805u)))), !vec3<bool>(true, true, any(vec3<bool>(false, false, true)))), countOneBits(~vec3<u32>(func_1(Struct_2(-481f, vec4<u32>(32827u, 1u, 12469u, 16750u), global1[_wgslsmith_index_u32(69705u, 24u)], u_input.a.x, 51490i), 4294967295u, true), 1u, firstTrailingBit(0u))));
    let var_1 = Struct_1(min(u_input.a.yz, _wgslsmith_mod_vec2_i32(-(~u_input.a.xy), ~_wgslsmith_add_vec2_i32(u_input.a.wx, u_input.a.zz))), vec2<bool>(~(~var_0.x) >= ~var_0.x, all(vec3<bool>(u_input.a.x != 0i, true, true))), _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_0.x, var_0.x, var_0.x)) | ~(var_0 << (vec3<u32>(70895u, var_0.x, 6077u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 73111u, var_0.x), ~var_0), var_0, ~(~vec3<u32>(1u, var_0.x, 41514u)))), false, firstTrailingBit(_wgslsmith_mod_i32(-_wgslsmith_add_i32(2147483647i, 0i), ~_wgslsmith_dot_vec3_i32(u_input.a.wwx, vec3<i32>(-2147483647i, 2147483647i, 15819i)))));
    global0 = 0i;
    let var_2 = vec4<u32>(abs(var_1.c.x), var_1.c.x, ~(~4294967295u), ~_wgslsmith_add_u32(var_0.x, 0u));
    global0 = -3611i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(countOneBits(4294967295u), ~_wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.c.yz), vec2<u32>(4294967295u, var_2.x)), firstLeadingBit(1u)), var_1.e, 1i, 44601i);
}

