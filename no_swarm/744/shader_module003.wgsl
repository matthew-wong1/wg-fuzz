struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<u32, 18> = array<u32, 18>(61047u, 34335u, 0u, 4083u, 45920u, 22843u, 0u, 24680u, 0u, 1u, 58918u, 0u, 0u, 49967u, 4294967295u, 3284u, 4294967295u, 19040u);

var<private> global2: vec3<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1833f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(368f)))))), -778f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-379f * 222f))) - _wgslsmith_f_op_f32(763f * _wgslsmith_f_op_f32(f32(-1f) * -283f)))));
    var var_1 = Struct_4(var_0.a);
    var var_2 = Struct_1(_wgslsmith_mult_i32(u_input.b, ~(-2147483647i & u_input.b) >> (8630u % 32u)), vec4<f32>(var_1.a.x, -196f, 354f, 1053f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.yz) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.wz) + vec2<f32>(1375f, var_1.a.x)))));
    global2 = _wgslsmith_clamp_vec3_u32(~select(~select(u_input.a.wwy, u_input.a.wwz, false), vec3<u32>(~1u, 16874u, 1u), any(vec4<bool>(false, true, false, true))), vec3<u32>(8718u, ~11135u, _wgslsmith_add_u32(global2.x, abs(56645u | u_input.a.x))), vec3<u32>(abs(global1[_wgslsmith_index_u32(min(4294967295u, 1u), 18u)] & 1u), 4294967295u, 15498u & ~_wgslsmith_mult_u32(global2.x, u_input.a.x)));
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(1u, 15u)], global2.x, max(69581u, u_input.a.x));
    return _wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a.x, var_2.b.x, var_2.c.x, var_2.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(343f, 1559f, 972f, var_3.a.b.x)) - _wgslsmith_f_op_vec4_f32(min(var_3.a.b, vec4<f32>(184f, var_1.a.x, 271f, var_3.a.c.x))))))));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    var var_0 = Struct_1(12608i << (~_wgslsmith_div_u32(_wgslsmith_clamp_u32(20831u, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), 65765u) % 32u), vec4<f32>(1000f, _wgslsmith_f_op_f32(select(1000f, 633f, 1u > _wgslsmith_sub_u32(global2.x, 20577u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(847f * -1035f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2595f - _wgslsmith_f_op_f32(select(1238f, -1121f, false))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1048f), -813f)))), vec2<f32>(1f, 1f));
    global1 = array<u32, 18>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(func_3()));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(16053u & select(global2.x, 26796u, false), 15u)], _wgslsmith_div_u32(global2.x, reverseBits(~4294967295u)) ^ ~15592u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(24940u, u_input.a.x) ^ select(27059u, u_input.a.x, false), _wgslsmith_dot_vec2_u32(global2.zx, vec2<u32>(u_input.a.x, 25304u)) & ~u_input.a.x, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(78226u, 18u)], 18u)], 7938u) & 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global2.x, 18u)], 17664u), 52064u), _wgslsmith_sub_vec3_u32(select(u_input.a.ywy, vec3<u32>(1u, 11903u, global2.x), vec3<bool>(false, false, true)), vec3<u32>(u_input.a.x, 57481u, global1[_wgslsmith_index_u32(4294967295u, 18u)]) >> (u_input.a.ywz % vec3<u32>(32u))), ~(u_input.a.zww & u_input.a.xwx))));
    var var_3 = var_1;
    return !select(vec2<bool>(true, true), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(any(vec4<bool>(false, true, false, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true)), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 15u)], u_input.a.x, u_input.a.x);
    var var_1 = arg_1.x;
    let var_2 = select(vec2<bool>(any(vec2<bool>(true, true)), true), !(!func_2(41057i)), false);
    var_0 = Struct_2(global0[_wgslsmith_index_u32(~abs(~34123u), 15u)], countOneBits(~max(global2.x, 4294967295u)), _wgslsmith_dot_vec3_u32(u_input.a.xyx << ((_wgslsmith_add_vec3_u32(vec3<u32>(52636u, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec3<u32>(0u, global2.x, var_0.c)) << (firstLeadingBit(u_input.a.xyw) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.a.wwz, vec3<u32>(101810u, u_input.a.x, 1u)), vec3<u32>(_wgslsmith_mod_u32(30446u, 4294967295u), global2.x >> (u_input.a.x % 32u), firstLeadingBit(global2.x)))));
    return ~_wgslsmith_add_vec3_i32(max(select(vec3<i32>(var_0.a.a, u_input.b, var_0.a.a), vec3<i32>(2147483647i, var_0.a.a, -1i), vec3<bool>(var_2.x, false, true)), reverseBits(vec3<i32>(u_input.b, -32789i, -29096i))), vec3<i32>(u_input.b, 1i, _wgslsmith_clamp_i32(14866i, 1i, u_input.b))) >> (~u_input.a.yzz % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_i32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-255f, 1335f) + vec2<f32>(1031f, 557f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(583f, -2202f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-361f, 932f) * vec2<f32>(-837f, 1000f)))) >> (u_input.a.xwx % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(firstLeadingBit(firstLeadingBit(vec3<i32>(-1i, u_input.b, -2147483647i))), countOneBits(min(reverseBits(vec3<i32>(-1i, u_input.b, u_input.b)), max(vec3<i32>(u_input.b, u_input.b, -11655i), vec3<i32>(2147483647i, 0i, -31938i))))), countOneBits(abs(-firstLeadingBit(vec3<i32>(u_input.b, u_input.b, -2147483647i)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-430f, 1448f, -448f))))))));
    var var_2 = u_input.a << (~vec4<u32>(u_input.a.x, ~global2.x, 41408u, ~1u) % vec4<u32>(32u));
    var var_3 = !all(vec3<bool>(func_2(-1i << (u_input.a.x % 32u)).x, !(var_0.x >= -16451i), true && (2147483647i != var_0.x)));
    var var_4 = select(u_input.a, u_input.a, true & (_wgslsmith_mod_i32(u_input.b, var_0.x) == _wgslsmith_mod_i32(~u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(1i, 19948i, -17256i)))));
    var var_5 = Struct_3(~min(~vec3<i32>(-3895i, -2147483647i, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, 4860i), vec3<i32>(var_0.x, var_0.x, var_0.x))) << (var_2.ywy % vec3<u32>(32u)), select(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(-837f)), -1529f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(731f + _wgslsmith_f_op_f32(f32(-1f) * -907f))), ~(var_0.x & u_input.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.x)), -453f)) * _wgslsmith_f_op_f32(-var_1.x)))), ~_wgslsmith_mult_u32(var_4.x, _wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(13866u, 18u)])) & 3764u);
}

