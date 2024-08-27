struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 1122u, 26407u);

var<private> global1: array<u32, 20>;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(true, vec2<i32>(0i, 17517i), 4294967295u, vec4<f32>(-1000f, 659f, -327f, -210f), -1447f), Struct_1(false, vec2<i32>(0i, 0i), 21875u, vec4<f32>(1640f, -485f, -1000f, 954f), -1283f));

var<private> global3: vec4<bool>;

var<private> global4: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_div_u32(~u_input.a.x, ~select(u_input.a.x ^ max(global0.x, global1[_wgslsmith_index_u32(47865u, 20u)]), 4294967295u, all(!vec4<bool>(false, false, true, global3.x))));
    let var_1 = Struct_1(false, _wgslsmith_add_vec2_i32(arg_0.a.b << (~(~vec2<u32>(34140u, arg_0.a.c)) % vec2<u32>(32u)), vec2<i32>(max(~1i, countOneBits(u_input.b)), -2147483647i)), 22353u, _wgslsmith_f_op_vec4_f32(-arg_0.a.d), arg_2.x);
    var var_2 = select(countOneBits(~(~abs(var_1.c))), 1u, true);
    var var_3 = 32093u;
    let var_4 = Struct_4(!vec4<bool>(_wgslsmith_dot_vec2_u32(global0.yz, vec2<u32>(0u, global0.x)) == var_1.c, false, all(select(vec3<bool>(global3.x, true, var_1.a), global3.wyy, true)), false), arg_0.b);
    return firstTrailingBit(var_1.b.x);
}

fn func_2(arg_0: i32, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2199f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1186f, -1653f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-421f, 1548f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1358f, -289f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(962f, -245f) + vec2<f32>(426f, -586f)))))));
    let var_1 = global3.x;
    var var_2 = global2[_wgslsmith_index_u32(global0.x, 2u)];
    let var_3 = ~(~(~vec4<i32>(func_3(Struct_3(Struct_1(var_2.a, var_2.b, 0u, var_2.d, 619f), arg_0), arg_1, var_2.d.wx), abs(1i), abs(51750i), u_input.b)));
    global2 = array<Struct_1, 2>();
    return all(!select(global3.yw, vec2<bool>(true, false), select(global3.zz, select(vec2<bool>(global3.x, true), vec2<bool>(false, var_2.a), vec2<bool>(false, var_2.a)), global3.xx)));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = Struct_4(select(vec4<bool>(global3.x, true, !select(arg_3.a.x, global3.x, true), select(true, true, any(arg_1.a.xz))), arg_1.a, vec4<bool>(true, true, true, arg_1.a.x)), 1i);
    let var_1 = 1u;
    global1 = array<u32, 20>();
    var var_2 = vec3<f32>(389f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-189f - 1528f), _wgslsmith_f_op_f32(min(-423f, 1259f)))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(1598f - 519f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1667f) - _wgslsmith_f_op_f32(-995f * 629f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(811f, -518f))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(2089f - 386f))))));
    let var_3 = Struct_4(select(!vec4<bool>(var_0.a.x, arg_3.a.x, false, 0u > arg_0), var_0.a, 25146i != (i32(-1i) * -arg_3.b)), arg_3.b);
    return Struct_2(vec4<bool>(all(!arg_1.a.ww), var_2.x != _wgslsmith_f_op_f32(-var_2.x), true | (~46221u >= arg_0), arg_1.a.x), -3985i ^ firstLeadingBit(func_3(Struct_3(global2[_wgslsmith_index_u32(arg_0, 2u)], arg_1.b), false, _wgslsmith_f_op_vec2_f32(min(var_2.yx, vec2<f32>(var_2.x, var_2.x))))), abs(min(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, arg_0), vec3<u32>(var_1, u_input.a.x, u_input.a.x)), ~firstTrailingBit(vec3<u32>(36796u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 20u)], 20u)], 4294967295u)))));
}

fn func_1() -> Struct_2 {
    let var_0 = 35929u;
    let var_1 = global3.x;
    var var_2 = true;
    global2 = array<Struct_1, 2>();
    global3 = vec4<bool>(true && all(global3.yzy), true, !(-countOneBits(-1i) != min(~(-2147483647i), abs(u_input.b))), false);
    return func_4(reverseBits(~1u), Struct_4(vec4<bool>(!func_2(u_input.b, global3.x), false, true, global3.x), max(func_3(Struct_3(Struct_1(global3.x, vec2<i32>(u_input.b, u_input.b), var_0, vec4<f32>(-1233f, 721f, -711f, 245f), 683f), u_input.b), false, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1008f, -941f) - vec2<f32>(-2154f, 1000f))), 42341i)), u_input.b, Struct_4(!vec4<bool>(true, any(vec3<bool>(global3.x, true, false)), global3.x, u_input.b < -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, firstTrailingBit(-1i), u_input.b), ~(~vec3<i32>(u_input.b, u_input.b, u_input.b)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = func_2(2147483647i, arg_1.a.x);
    var var_2 = !select(!(!arg_1.a.zyw), select(!(!vec3<bool>(global3.x, global3.x, arg_1.a.x)), select(!arg_1.a.yxw, !vec3<bool>(false, arg_2, false), arg_2), vec3<bool>(true, u_input.b <= arg_1.b, !var_1)), any(arg_1.a));
    let var_3 = vec2<f32>(187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1674f - _wgslsmith_f_op_f32(-1444f * 1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1462f + -673f), _wgslsmith_f_op_f32(-1693f - -255f)))))));
    let var_4 = reverseBits(30399u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - -1395f));
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    let var_0 = select(~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global0.x, 1u, 1u) >> (u_input.a % vec4<u32>(32u))), select(~vec4<u32>(61214u, 4294967295u, global1[_wgslsmith_index_u32(76671u, 20u)], 0u), vec4<u32>(0u, 42184u, 0u, 104944u), arg_1.a.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(arg_0, 20u)], global1[_wgslsmith_index_u32(arg_0, 20u)]), min(vec4<u32>(global0.x, global0.x, global0.x, global0.x), u_input.a)) >> (vec4<u32>(arg_0, ~(global0.x << (4294967295u % 32u)), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), firstLeadingBit(_wgslsmith_mod_u32(12518u, arg_0))) % vec4<u32>(32u)), !select(true, global3.x, arg_1.a.x));
    let var_1 = Struct_3(Struct_1(select(arg_1.a.x, !global3.x, any(arg_1.a.zy)), vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(arg_1.b, u_input.b, arg_1.b)) ^ (_wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_1.b), vec2<i32>(53215i, -29167i)) | select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 32175i), arg_1.a.x)), (35429u ^ ~global1[_wgslsmith_index_u32(global0.x, 20u)]) << (var_0.x % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(215f, 715f, 691f, arg_2), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(707f, 831f, arg_2, arg_2)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, -201f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -896f), -1297f, global3.x)))), _wgslsmith_mult_i32(arg_1.b, _wgslsmith_div_i32(arg_1.b, u_input.b)));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(~(-15230i), firstLeadingBit(-1i)), u_input.b), 0i);
    let var_3 = func_1().b;
    var var_4 = arg_2;
    return func_4(_wgslsmith_add_u32(1u, ~var_0.x >> (74843u % 32u)), arg_1, arg_1.b, Struct_4(arg_1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_3, var_2, var_1.a.b.x), vec3<i32>(u_input.b << (4294967295u % 32u), 2147483647i, -7611i))));
}

fn func_7(arg_0: Struct_2, arg_1: f32) -> vec2<u32> {
    var var_0 = 0i;
    var var_1 = global2[_wgslsmith_index_u32(4190u, 2u)];
    global4 = 942f;
    var var_2 = func_4(global0.x, Struct_4(func_1().a, u_input.b), _wgslsmith_sub_i32(_wgslsmith_sub_i32(~25447i, reverseBits(_wgslsmith_sub_i32(u_input.b, -1i))), 2147483647i), Struct_4(arg_0.a, _wgslsmith_add_i32(u_input.b, -var_1.b.x) << (~u_input.a.x % 32u)));
    var var_3 = ~var_1.b.x;
    return ~reverseBits(u_input.a.wy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_7(func_6(u_input.a.x, Struct_4(vec4<bool>(true, true, global3.x, global3.x), 1i), _wgslsmith_f_op_f32(func_5(-vec4<i32>(u_input.b, -1i, 53641i, 1i), func_1(), global3.x && true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), Struct_2(vec4<bool>(true, global3.x, false, true), u_input.b, u_input.a.xzx), true))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -486f);
    let var_2 = vec2<i32>(-1i) * -select(~reverseBits(vec2<i32>(-56635i, u_input.b)), firstTrailingBit(vec2<i32>(u_input.b, 7757i)), !(!vec2<bool>(false, global3.x)));
    let var_3 = Struct_4(vec4<bool>(global3.x, global3.x, true, true), -3188i >> (var_0.x % 32u));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-var_1), 1553f);
    global3 = vec4<bool>(any(!global3.yxx), !func_6(~(~var_0.x), var_3, _wgslsmith_f_op_f32(round(var_1))).a.x, global3.x, !(global3.x | !(!global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, ~u_input.b, ~(-1i), func_4(global1[_wgslsmith_index_u32(0u, 20u)], Struct_4(vec4<bool>(var_3.a.x, var_3.a.x, global3.x, global3.x), 0i), -23926i, Struct_4(vec4<bool>(true, true, true, true), var_2.x)).b), -abs(vec4<i32>(var_2.x, 1i, var_3.b, var_2.x))), u_input.a.x, ~_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~var_2, vec2<i32>(-1i, var_3.b), var_2), min(var_2, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 36850i), var_2))), min(var_2 ^ _wgslsmith_mod_vec2_i32(select(vec2<i32>(var_2.x, var_3.b), var_2, var_3.a.x), var_2), vec2<i32>(0i, -u_input.b) << (vec2<u32>(var_0.x, 0u) % vec2<u32>(32u))));
}

