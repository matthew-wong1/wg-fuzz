struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, 9140i, 10697i) >> (max(u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(-1i, _wgslsmith_mod_i32(17450i, 2147483647i), firstTrailingBit(-8929i), 0i), abs(vec4<i32>(2147483647i, -24582i, 6858i, -56995i))), firstLeadingBit(firstLeadingBit(-vec4<i32>(-2147483647i, 26509i, 0i, 3075i)))));
    global1 = Struct_2(Struct_1(u_input.a.x), global2[_wgslsmith_index_u32(~firstTrailingBit(global1.a.a), 1u)]);
    global1 = Struct_2(Struct_1(~0u), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(global1.a.a, 6267u, 23968u, global1.a.a))));
    global2 = array<Struct_1, 1>();
    let var_1 = select(vec2<bool>(!any(vec3<bool>(true, true, true)), !arg_0.x), arg_0, select(select(arg_0, vec2<bool>(true, arg_0.x), !any(arg_0)), select(vec2<bool>(4294967295u != u_input.a.x, select(arg_0.x, true, arg_0.x)), vec2<bool>(true, true), select(true, true, any(vec3<bool>(false, false, false)))), any(!vec2<bool>(arg_0.x, arg_0.x))));
    return -(~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0, -7646i, var_0), vec3<i32>(var_0, var_0, var_0)), ~vec3<i32>(var_0, var_0, 9050i))) | -vec3<i32>(var_0, 0i, min(2147483647i >> (global1.b.a % 32u), -8083i));
}

fn func_2() -> i32 {
    global2 = array<Struct_1, 1>();
    let var_0 = Struct_2(global1.b, Struct_1(_wgslsmith_clamp_u32(25909u & u_input.a.x, ~(~34873u), _wgslsmith_div_u32(~13705u, 1u))));
    global1 = var_0;
    var var_1 = abs(-(~(-vec3<i32>(-2147483647i, 19406i, 2147483647i)) & func_3(vec2<bool>(true, true))));
    var_1 = vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-78846i, firstTrailingBit(var_1.x), select(var_1.x, var_1.x, false)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_1.x, var_1.x), vec3<i32>(var_1.x, var_1.x, -2147483647i)))), -2147483647i, _wgslsmith_add_i32(var_1.x, var_1.x));
    return var_1.x;
}

fn func_1(arg_0: i32, arg_1: f32) -> u32 {
    global2 = array<Struct_1, 1>();
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(func_2(), arg_0), ~arg_0, arg_0, arg_0);
    let var_1 = vec4<i32>(-22750i, min(_wgslsmith_div_i32(arg_0, min(arg_0, ~arg_0)), -11618i), 2147483647i, firstTrailingBit(arg_0));
    var var_2 = _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), abs(u_input.a.yx), vec2<u32>(global1.b.a, 0u))), _wgslsmith_sub_vec2_u32(vec2<u32>(30383u, abs(8632u)), u_input.a.yx & vec2<u32>(4294967295u, 0u))) >= u_input.a.x;
    global1 = Struct_2(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)]);
    return global1.a.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_2 {
    global0 = array<vec2<f32>, 17>();
    var var_0 = Struct_2(arg_1, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, firstTrailingBit(~(~global1.a.a))), 1u)]);
    global0 = array<vec2<f32>, 17>();
    var var_1 = arg_1.a;
    global1 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, ~_wgslsmith_clamp_u32(67590u, global1.a.a, global1.a.a), _wgslsmith_div_u32(var_0.b.a, arg_1.a) >> (global1.a.a % 32u)), 4294967295u), 1u)], Struct_1(_wgslsmith_mod_u32(~(~arg_2.x), 42069u)));
    return Struct_2(Struct_1(var_0.b.a), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(vec2<i32>(-2147483647i, ~1i), Struct_1(global1.a.a & func_1(_wgslsmith_clamp_i32(0i, 39180i, 0i), -101f)), ~u_input.a.wxx);
    global2 = array<Struct_1, 1>();
    let var_0 = ~(~max(u_input.a.zwz, _wgslsmith_clamp_vec3_u32(u_input.a.xwx, u_input.a.xxw, u_input.a.yww))) & vec3<u32>(22747u & _wgslsmith_mult_u32(~43804u, abs(global1.a.a)), u_input.a.x, ~55697u);
    global0 = array<vec2<f32>, 17>();
    var var_1 = vec3<i32>(max(max(select(-2262i, 34288i, true), 1i), abs(0i)) | 7740i, 1i, _wgslsmith_mod_i32(1i, reverseBits(~_wgslsmith_add_i32(-1i, -86779i))));
    global0 = array<vec2<f32>, 17>();
    global1 = func_4(~max(_wgslsmith_clamp_vec2_i32(abs(var_1.yy), var_1.zy, var_1.zz), vec2<i32>(2147483647i >> (u_input.a.x % 32u), 0i)), func_4(var_1.yz, global1.b, _wgslsmith_add_vec3_u32(~u_input.a.wzw, var_0)).a, ~vec3<u32>(0u, 1u, 31457u));
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(round(-398f)), -215f, _wgslsmith_f_op_f32(817f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-305f * -277f), _wgslsmith_f_op_f32(f32(-1f) * -1055f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(925f))))), ~(-2147483647i), func_4(-abs(var_1.yx), global1.a, var_0), true);
    var var_3 = select(select(select(select(vec4<bool>(var_2.d, var_2.d, var_2.d, var_2.d), vec4<bool>(var_2.d, var_2.d, true, var_2.d), false), vec4<bool>(true, var_2.d && false, true, all(vec4<bool>(false, var_2.d, var_2.d, var_2.d))), vec4<bool>(var_2.d, false, var_2.d, true)), vec4<bool>(true, !(u_input.a.x == var_0.x), var_2.d, !var_2.d), !vec4<bool>(true, var_2.d, var_2.d, true)), vec4<bool>(all(select(vec2<bool>(var_2.d, var_2.d), vec2<bool>(true, true), !vec2<bool>(var_2.d, true))), !var_2.d, any(vec4<bool>(var_2.d, true, true, true)), var_2.d), !(!vec4<bool>(all(vec3<bool>(var_2.d, false, var_2.d)), false, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, vec4<i32>(1i, ~(-reverseBits(1i)), func_2(), ~_wgslsmith_add_i32(var_1.x, -var_2.b)), 4294967295u, _wgslsmith_div_vec2_i32(vec2<i32>(-43169i ^ var_1.x, 42662i ^ var_2.b) ^ ~_wgslsmith_add_vec2_i32(var_1.zz, vec2<i32>(-1i, var_2.b)), var_1.zx));
}

