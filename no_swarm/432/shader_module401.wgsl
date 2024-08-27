struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(true);

var<private> global1: bool = true;

var<private> global2: Struct_5;

var<private> global3: array<Struct_3, 26>;

var<private> global4: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = true;
    return _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(u_input.d, 4294967295u) >> ((vec2<u32>(28605u, u_input.d) ^ vec2<u32>(6514u, 3531u)) % vec2<u32>(32u))), vec2<u32>(1u, ~4294967295u));
}

fn func_2() -> Struct_4 {
    let var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(reverseBits(25021u)), 26u)];
    let var_1 = _wgslsmith_div_u32(~_wgslsmith_add_u32(func_3(select(vec4<bool>(global0.a, var_0.a, true, false), vec4<bool>(var_0.a, var_0.a, global2.a, false), global2.a), Struct_2(vec2<bool>(false, false), Struct_1(vec4<i32>(-12262i, 2147483647i, 83729i, u_input.c), u_input.b, vec2<f32>(-225f, 431f)))), ~(~4294967295u)), 105766u);
    var var_2 = var_0.a;
    global0 = Struct_5(!(!(!(u_input.c <= u_input.b.x))));
    let var_3 = Struct_2(select(!select(select(vec2<bool>(true, global2.a), vec2<bool>(var_0.a, true), vec2<bool>(true, false)), vec2<bool>(global0.a, global0.a), vec2<bool>(true, false)), vec2<bool>(global2.a, u_input.c <= u_input.a), select(vec2<bool>(global2.a, global2.a), vec2<bool>(global0.a, false), !select(vec2<bool>(true, false), vec2<bool>(true, global2.a), vec2<bool>(true, true)))), Struct_1(reverseBits(vec4<i32>(u_input.e, 0i, 36347i, -1i)) | vec4<i32>(-20251i, 7244i, -1i, -2147483647i), u_input.b << (~(vec3<u32>(1u, var_1, 34081u) << (vec3<u32>(67437u, 46012u, u_input.d) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_div_f32(-1141f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2186f) - _wgslsmith_f_op_f32(f32(-1f) * -387f)))));
    return Struct_4(var_3, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1231f + 1010f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(176f)))), _wgslsmith_f_op_f32(-var_3.b.c.x)), vec4<f32>(595f, var_3.b.c.x, var_3.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.b.c.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.b.c.x * 1568f))))), var_3.b.c.x);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = select(vec2<bool>(all(!select(vec3<bool>(global2.a, global0.a, true), vec3<bool>(false, false, false), false)), true), vec2<bool>(arg_2.a.a.x, all(!arg_2.a.a)), func_2().a.a);
    var var_1 = vec3<i32>(arg_2.a.b.a.x, arg_2.a.b.a.x, max(u_input.c, _wgslsmith_div_i32(arg_2.a.b.b.x, 2147483647i)));
    var var_2 = func_2().a.b;
    let var_3 = func_2().c;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x)));
    return func_2().a.b;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> Struct_4 {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~4487u, select(u_input.d, 5595u, global2.a)) >> (84179u % 32u), arg_3.x), arg_3.x);
    global2 = Struct_5(false);
    return Struct_4(Struct_2(select(vec2<bool>(select(global0.a, true, global0.a), global2.a), !select(vec2<bool>(global2.a, false), vec2<bool>(true, global2.a), global0.a), !select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, global2.a), vec2<bool>(global0.a, global0.a))), func_4(Struct_3(!global2.a), _wgslsmith_f_op_f32(-arg_0), func_2(), arg_2.yy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-825f, arg_0, arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(126f + -340f), arg_0, arg_0))), vec4<f32>(2080f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1169f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(688f, arg_0))), arg_0, _wgslsmith_f_op_f32(trunc(arg_0))), -1106f);
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4, arg_3: f32) -> vec2<f32> {
    global1 = global0.a;
    let var_0 = _wgslsmith_f_op_f32(-arg_1.a.b.c.x);
    global2 = Struct_5(false);
    global2 = Struct_5(true);
    let var_1 = arg_1.a.b.a;
    return arg_2.b.xy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 200f))) * _wgslsmith_f_op_vec2_f32(func_5(114118u, func_1(-1336f, u_input.c, vec4<u32>(u_input.d, u_input.d, 45420u, u_input.d), vec3<u32>(u_input.d, 1u, u_input.d)), func_2(), -1109f)))));
    global1 = all(vec3<bool>(global2.a, all(select(func_2().a.a, func_1(1355f, u_input.b.x, vec4<u32>(u_input.d, 4294967295u, 5643u, 42233u), vec3<u32>(0u, 20294u, 9172u)).a.a, vec2<bool>(true, true))), global0.a));
    var var_1 = func_4(Struct_3(true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(1000f, u_input.a, vec4<u32>(5490u, u_input.d, u_input.d, u_input.d), vec3<u32>(1u, 94913u, 1u)).a.b.c.x))), Struct_4(func_2().a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, var_0.x, -1000f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 273f, -1180f) * vec3<f32>(532f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(733f, var_0.x, -2334f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1000f, 710f, var_0.x), vec4<f32>(var_0.x, 1000f, var_0.x, -2579f)), func_1(var_0.x, -2147483647i, vec4<u32>(0u, 0u, u_input.d, 4294967295u), vec3<u32>(u_input.d, u_input.d, u_input.d)).c))), _wgslsmith_f_op_f32(trunc(-898f))), firstTrailingBit(min(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 73587u), vec2<u32>(0u, u_input.d)), 661u), firstTrailingBit(firstLeadingBit(vec2<u32>(u_input.d, u_input.d))))));
    var var_2 = select(select(!vec4<bool>(global2.a, true && global2.a, 38581i > var_1.b.x, true), vec4<bool>(any(!vec2<bool>(false, global0.a)), select(all(vec2<bool>(true, false)), global0.a, func_1(var_1.c.x, var_1.b.x, vec4<u32>(u_input.d, 35595u, u_input.d, 1u), vec3<u32>(u_input.d, u_input.d, u_input.d)).a.a.x), true, global2.a), !vec4<bool>(true, true, global0.a & false, global0.a)), !vec4<bool>(false, false, !global2.a, true), false);
    var var_3 = Struct_2(vec2<bool>(var_2.x, true), func_1(-672f, 10428i, firstTrailingBit(abs(firstTrailingBit(vec4<u32>(u_input.d, 38335u, u_input.d, 94555u)))), countOneBits(abs(vec3<u32>(u_input.d, 67193u, 26554u)) | firstLeadingBit(vec3<u32>(1u, u_input.d, 52257u)))).a.b);
    let var_4 = Struct_5(all(vec4<bool>(false, global0.a, var_3.b.b.x > -1i, true)));
    let var_5 = Struct_1(vec4<i32>(func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), -var_1.b.x, _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.d, 0u, 55899u), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)), vec3<u32>(firstTrailingBit(u_input.d), ~u_input.d, abs(u_input.d))).a.b.a.x, u_input.e, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(21044i, -1i, -1i), vec3<i32>(var_3.b.a.x, var_1.b.x, u_input.b.x)), ~func_2().a.b.a.xzz), ~(var_1.a.x & min(var_3.b.a.x, -50090i))), vec3<i32>(~(u_input.a | reverseBits(7413i)), u_input.e, _wgslsmith_dot_vec3_i32(reverseBits(var_1.b), var_3.b.a.wxz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(398f - var_1.c.x), _wgslsmith_f_op_f32(var_1.c.x - -1159f)), vec2<f32>(-977f, _wgslsmith_div_f32(1012f, -342f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.d, u_input.d)), vec2<u32>(_wgslsmith_mod_u32(4294967295u, 19098u), u_input.d) << (abs(~vec2<u32>(u_input.d, 1u)) % vec2<u32>(32u)), vec2<u32>(u_input.d, u_input.d)), countOneBits(~(~min(vec4<u32>(u_input.d, 34607u, 29448u, u_input.d), vec4<u32>(22662u, u_input.d, u_input.d, 43686u)))), _wgslsmith_div_vec2_u32(min(vec2<u32>(u_input.d, ~88621u), vec2<u32>(1u, 1u) & countOneBits(vec2<u32>(u_input.d, 4294967295u))), firstTrailingBit((vec2<u32>(u_input.d, u_input.d) & vec2<u32>(7182u, 117982u)) ^ vec2<u32>(u_input.d, 7124u))));
}

