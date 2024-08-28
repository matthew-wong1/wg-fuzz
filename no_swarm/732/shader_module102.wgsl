struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<bool>, 32>;

var<private> global2: f32 = 1481f;

var<private> global3: array<f32, 8>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_mult_i32(u_input.a.x, global0.x);
    let var_1 = Struct_1(u_input.b, ~vec2<u32>(firstLeadingBit(~u_input.b), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(10787u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)))));
    var var_2 = global0.x == (-u_input.a.x ^ firstLeadingBit(-14790i));
    let var_3 = vec3<u32>(_wgslsmith_div_u32(~var_1.a, ~u_input.b), 1u, max(~(~0u) << (firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), var_1.b)) % 32u), reverseBits(reverseBits(var_1.b.x >> (var_1.b.x % 32u)))));
    global2 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(min(u_input.b, u_input.b), var_3.x), _wgslsmith_clamp_vec2_u32(var_3.xx, vec2<u32>(0u, u_input.b) & var_1.b, ~vec2<u32>(4294967295u, 0u))), u_input.b), 8u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1129f + global3[_wgslsmith_index_u32(~var_3.x, 8u)])) + global3[_wgslsmith_index_u32(~select(_wgslsmith_mod_u32(var_1.b.x, 59174u), countOneBits(1u), 0u <= var_1.b.x), 8u)]));
    return _wgslsmith_div_u32(0u, 4552u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<f32>) -> u32 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.x)) + global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(), arg_0.a), 8u)]);
    var var_0 = (abs(~_wgslsmith_sub_i32(u_input.a.x, u_input.c.x)) ^ -u_input.c.x) | 2147483647i;
    global0 = u_input.a.yz;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~0u, 8u)] * _wgslsmith_f_op_f32(f32(-1f) * -1194f))))) * arg_2.x);
    global3 = array<f32, 8>();
    return 29830u;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_u32(u_input.b, func_2(Struct_1(u_input.b, ~vec2<u32>(u_input.b, 9952u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(124f, 1029f) + vec2<f32>(1249f, global3[_wgslsmith_index_u32(35443u, 8u)])))), vec2<f32>(1682f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(78635u, 8u)] + global3[_wgslsmith_index_u32(0u, 8u)])))), abs(vec2<u32>(_wgslsmith_clamp_u32(~4294967295u, ~4294967295u, _wgslsmith_mod_u32(0u, 5880u)), u_input.b)));
    global3 = array<f32, 8>();
    global1 = array<vec3<bool>, 32>();
    global3 = array<f32, 8>();
    return Struct_1(u_input.b, abs(~_wgslsmith_add_vec2_u32(var_0.b, vec2<u32>(1u, 1u)) | abs(reverseBits(var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = (vec3<u32>(_wgslsmith_add_u32(4294967295u, ~u_input.b), ~u_input.b, ~0u) | min(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, 1u), vec3<u32>(u_input.b, var_0.a, 4294967295u)), ~vec3<u32>(15545u, 4294967295u, var_0.a) << ((vec3<u32>(1u, 0u, var_0.a) | vec3<u32>(2517u, u_input.b, var_0.a)) % vec3<u32>(32u)))) >> (vec3<u32>(1u, ~var_0.b.x, ~(~(~u_input.b))) % vec3<u32>(32u));
    let var_2 = Struct_1(firstLeadingBit(max(~78484u, var_0.b.x >> (1284u % 32u))) ^ 22601u, ~var_0.b);
    var_1 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(firstTrailingBit(13415u), firstLeadingBit(func_2(Struct_1(55235u, var_2.b), vec2<f32>(global3[_wgslsmith_index_u32(41561u, 8u)], -291f), vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 8u)], global3[_wgslsmith_index_u32(var_1.x, 8u)])))), func_1().b.x), var_1.x, var_0.a);
    global0 = -countOneBits(u_input.c.zy);
    global1 = array<vec3<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(~abs(select(vec3<i32>(44945i, global0.x, u_input.a.x), u_input.a.wzy, global1[_wgslsmith_index_u32(0u, 32u)])), countOneBits(-_wgslsmith_mult_vec3_i32(u_input.a.xwz, vec3<i32>(-2147483647i, global0.x, global0.x)))));
}

