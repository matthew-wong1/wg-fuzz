struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(1i), Struct_3(1i), Struct_3(23614i), Struct_3(29554i), Struct_3(2147483647i), Struct_3(-1i), Struct_3(-1i), Struct_3(-34335i), Struct_3(158i), Struct_3(-2845i), Struct_3(-64478i), Struct_3(-1i), Struct_3(1i), Struct_3(21401i), Struct_3(0i), Struct_3(0i), Struct_3(27044i), Struct_3(4842i), Struct_3(-44606i), Struct_3(11651i), Struct_3(0i), Struct_3(36149i), Struct_3(8468i), Struct_3(2147483647i), Struct_3(-34523i));

var<private> global1: array<vec2<u32>, 13>;

var<private> global2: Struct_2 = Struct_2(Struct_1(4394u, vec4<i32>(-14399i, -39965i, 65924i, -16293i), vec4<u32>(1u, 9194u, 1u, 2172u), 104789u, false), 885f, vec4<u32>(12447u, 98818u, 48471u, 44282u), -10781i, vec4<bool>(true, false, true, true));

var<private> global3: vec2<u32> = vec2<u32>(1u, 449u);

var<private> global4: array<bool, 6> = array<bool, 6>(true, true, false, true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(global2.c.x, vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(global2.a.b.x, global2.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-39899i, u_input.b.x, 47678i, 9192i), global2.a.b)), -1i, -_wgslsmith_dot_vec2_i32(global2.a.b.yy, vec2<i32>(global2.a.b.x, global2.a.b.x)), _wgslsmith_div_i32(global2.a.b.x, 9265i << (1u % 32u))), ~(vec4<u32>(global3.x, 34213u, 82881u, global2.c.x) ^ vec4<u32>(u_input.d.x, u_input.d.x, global3.x, 0u)), arg_0, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global2.b))))), ~u_input.d >> (max((u_input.d ^ u_input.d) & abs(vec4<u32>(arg_0, 17407u, arg_0, global3.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_0, 30831u, 41598u, 26156u), vec4<u32>(global2.c.x, 107823u, global2.a.c.x, 54159u))) % vec4<u32>(32u)), _wgslsmith_mod_i32(-19922i, ~_wgslsmith_sub_i32(global2.d, _wgslsmith_mod_i32(u_input.b.x, global2.d))), vec4<bool>(all(!vec2<bool>(true, global2.a.e)), any(global2.e.xzz), global2.e.x, global2.e.x));
    global1 = array<vec2<u32>, 13>();
    let var_1 = arg_0;
    global0 = array<Struct_3, 25>();
    var_0 = Struct_2(Struct_1(global2.a.c.x, countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(60910i, -1i, 36464i, global2.d), var_0.a.b)), vec4<u32>(39560u, firstLeadingBit(global2.c.x), _wgslsmith_dot_vec3_u32(var_0.a.c.yyx, ~vec3<u32>(u_input.d.x, arg_0, global2.a.d)), ~(~global2.c.x)), ~global2.a.c.x, all(select(vec4<bool>(true, false, true, global2.e.x), var_0.e, global2.e.x)) | (true | any(vec4<bool>(true, true, true, false)))), var_0.b, abs(var_0.c ^ reverseBits(u_input.d)), u_input.b.x, var_0.e);
    return _wgslsmith_mod_u32(_wgslsmith_add_u32(~reverseBits(u_input.a), 4294967295u) | 1u, arg_0);
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = true;
    var var_1 = _wgslsmith_mod_u32(global2.a.a, _wgslsmith_div_u32(~(~global2.a.c.x), global3.x)) & func_3(~global2.c.x);
    let var_2 = global2.e.zxw;
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, global2.b)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1371f, 291f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 432f))), select(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 6u)], var_2.x), vec2<bool>(true, false), global4[_wgslsmith_index_u32(u_input.d.x, 6u)]))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, -1000f) + vec2<f32>(-1000f, 913f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.b, -1064f))))))));
    let var_4 = vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(arg_0, 0i & (u_input.b.x ^ arg_0)), -38087i, -(~(-2304i)));
    return abs(_wgslsmith_dot_vec4_u32(~u_input.d, ~(~(vec4<u32>(16501u, u_input.a, 14954u, u_input.a) | global2.a.c))));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    var var_0 = Struct_1(~u_input.a, global2.a.b, vec4<u32>(~abs(13919u), global2.c.x, u_input.a, _wgslsmith_dot_vec3_u32(~global2.a.c.yww, u_input.d.xxx)), u_input.a, !global4[_wgslsmith_index_u32(~(~11279u & _wgslsmith_add_u32(1u, global3.x)), 6u)]);
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(global3.x >> (64403u % 32u)) | ~(4294967295u >> (global2.a.c.x % 32u)), max(func_2(~(-1i)), arg_0.x), func_3(arg_0.x), 1u), firstLeadingBit(vec4<u32>(22554u ^ _wgslsmith_mod_u32(3001u, global2.c.x), abs(func_3(1u)), 0u, ~39446u)));
    var_1 = max(firstLeadingBit(var_0.c), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, global3.x, 43075u, u_input.a), vec4<u32>(1u, global2.c.x, var_0.a, 18097u)) | ~(~(vec4<u32>(global3.x, 1u, var_0.a, 13669u) ^ var_0.c)));
    global3 = vec2<u32>(min(~(4294967295u | func_3(4294967295u)), arg_0.x), ~(~(~_wgslsmith_sub_u32(global3.x, arg_0.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(-797f, _wgslsmith_f_op_f32(-global2.b))), global2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-global2.b)))))));
    return arg_0.x;
}

fn func_4(arg_0: Struct_3) -> vec3<f32> {
    global0 = array<Struct_3, 25>();
    global2 = Struct_2(Struct_1(u_input.a, -global2.a.b, abs(u_input.d), 2833u << (((u_input.a ^ global3.x) >> ((1u >> (0u % 32u)) % 32u)) % 32u), true), -1016f, u_input.d, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, global2.d, u_input.c.x), global2.a.b.wwz), vec3<i32>(2147483647i, u_input.c.x, arg_0.a)), u_input.b.x), !vec4<bool>(global2.e.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.d.xxy, vec3<u32>(global2.c.x, global3.x, 15825u)), 6u)], countOneBits(-22210i) == global2.d, global2.e.x));
    global0 = array<Struct_3, 25>();
    global1 = array<vec2<u32>, 13>();
    var var_0 = u_input.b;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.b + global2.b), -2054f, 1504f)), vec3<f32>(552f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b * 390f), 701f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.b))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-505f, 2022f, global2.e.x)), _wgslsmith_f_op_f32(390f * global2.b), _wgslsmith_f_op_f32(-global2.b)) + vec3<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(global2.b * global2.b), global2.b))));
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: bool) -> Struct_4 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 25u)];
    let var_1 = select(u_input.b, -reverseBits(vec3<i32>(countOneBits(var_0.a), u_input.c.x, ~u_input.c.x)), !global2.e.xwz);
    let var_2 = ~1u;
    var var_3 = Struct_2(global2.a, arg_0.x, u_input.d, -24662i, select(select(!(!vec4<bool>(global2.a.e, false, arg_2, global2.e.x)), !vec4<bool>(global2.a.e, global2.a.e, arg_2, global2.e.x), !(!vec4<bool>(false, global2.a.e, global4[_wgslsmith_index_u32(u_input.d.x, 6u)], true))), vec4<bool>(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global2.c.yzx, vec3<u32>(28436u, 78788u, 63361u)), 6u)], all(global2.e.zy), !any(vec2<bool>(false, false)), any(!vec4<bool>(global4[_wgslsmith_index_u32(global3.x, 6u)], false, arg_2, true))), all(!select(global2.e.yyz, global2.e.wxz, global2.a.e))));
    var var_4 = global2.e.zw;
    return Struct_4(vec2<u32>(_wgslsmith_add_u32(~(~global3.x), func_3(var_2)), 57393u), global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(func_4(global0[_wgslsmith_index_u32(func_1(max(vec4<u32>(13396u, 126284u, global3.x, 8060u), global2.a.c) | ~u_input.d, global2.b), 25u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f * global2.b)) * _wgslsmith_f_op_f32(-639f + global2.b)) - 461f), false);
    let var_1 = Struct_2(func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-351f, -830f, -310f), vec3<f32>(global2.b, global2.b, 1151f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.b, 1169f, global2.b), vec3<f32>(global2.b, 1158f, global2.b), global2.e.x)), !global2.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-133f, global2.b, -149f))))), global2.b, true & !global4[_wgslsmith_index_u32(4294967295u, 6u)]).b, 183f, u_input.d >> (vec4<u32>(0u, var_0.b.a, global3.x, ~(var_0.a.x >> (u_input.d.x % 32u))) % vec4<u32>(32u)), firstTrailingBit(-(~(~var_0.b.b.x))), select(!vec4<bool>(global4[_wgslsmith_index_u32(var_0.b.c.x, 6u)], false, !global4[_wgslsmith_index_u32(22469u, 6u)], global2.e.x), vec4<bool>(var_0.b.e, false, false, true), !(!global4[_wgslsmith_index_u32(min(0u, u_input.d.x), 6u)])));
    var var_2 = select(select(select(vec3<bool>(all(vec2<bool>(var_1.e.x, true)), any(vec2<bool>(var_1.e.x, false)), false), select(var_1.e.zyz, global2.e.yyy, select(var_1.e.xxx, global2.e.xyw, var_1.a.e)), true), var_1.e.xxx, global2.e.xyw), global2.e.xwz, true && var_0.b.e);
    var_2 = !select(!(!select(vec3<bool>(var_1.a.e, global2.a.e, false), vec3<bool>(var_2.x, global2.a.e, true), true)), !select(vec3<bool>(false, var_0.b.e, true), global2.e.yyy, vec3<bool>(false, var_2.x, false)), var_1.e.wxz);
    let var_3 = var_1;
    let var_4 = 5545u;
    var var_5 = vec2<bool>(select(false, !any(!var_1.e), global4[_wgslsmith_index_u32(43009u, 6u)]), global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0.b.d, ~var_0.a.x), 6u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b);
}

