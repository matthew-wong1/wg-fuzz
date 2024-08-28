struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1207f, -1048f, 1000f, -261f);

var<private> global1: f32 = 120f;

var<private> global2: f32 = -2552f;

var<private> global3: array<Struct_1, 2>;

var<private> global4: Struct_1 = Struct_1(vec3<u32>(21893u, 525u, 18688u), vec4<u32>(4294967295u, 60171u, 57919u, 14662u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> f32 {
    let var_0 = 1u;
    return _wgslsmith_f_op_f32(select(global0.x, 1f, arg_1));
}

fn func_2() -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -721f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global4.b.wxw, u_input.a), -2147483647i, global3[_wgslsmith_index_u32(u_input.c.x, 2u)]), false, Struct_3(global4.a.x))))) + 561f), _wgslsmith_f_op_f32(f32(-1f) * -825f), -1278f);
    var var_1 = Struct_2(Struct_1(vec3<u32>(~0u, u_input.c.x, ~82779u), u_input.a), u_input.d, Struct_1(~(~u_input.c.xyx), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wwy << (vec3<u32>(35722u, 33045u, u_input.b) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(global4.b.xyw, vec3<u32>(13298u, 25944u, u_input.c.x))), 15354u, abs(u_input.a.x) ^ firstTrailingBit(global4.b.x), 1u)));
    var_1 = Struct_2(var_1.c, u_input.d, global3[_wgslsmith_index_u32(~(~30736u), 2u)]);
    global3 = array<Struct_1, 2>();
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(~(~vec4<u32>(u_input.c.x, 18597u, 1u, 78897u))), min(select(~vec4<u32>(2051u, var_1.c.b.x, global4.a.x, 4294967295u), ~vec4<u32>(20507u, 43574u, u_input.a.x, var_1.c.a.x), all(vec3<bool>(false, false, false))), vec4<u32>(var_1.a.a.x, 1u, var_1.c.a.x, abs(37440u)))), 2u)], _wgslsmith_mult_i32(var_1.b, u_input.d), var_1.a);
    return ~(4671u ^ ~_wgslsmith_mult_u32(31596u, ~var_2.c.b.x));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = vec2<u32>(1u << ((arg_0.a & (37538u | global4.b.x)) % 32u), 4294967295u);
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~1u), _wgslsmith_mult_u32(102808u, func_2()), var_0.x, _wgslsmith_clamp_u32(6275u, ~u_input.b, u_input.a.x >> (u_input.a.x % 32u))) ^ u_input.c, abs(firstTrailingBit(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 0u, var_0.x, arg_0.a), vec4<u32>(arg_0.a, global4.a.x, global4.a.x, 30594u))))));
    global3 = array<Struct_1, 2>();
    var var_2 = ~1i;
    var var_3 = Struct_3(~var_0.x);
    return vec3<bool>((u_input.d != (-1i | _wgslsmith_add_i32(-1i, u_input.d))) & true, false, true);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_5) -> Struct_2 {
    let var_0 = ~firstTrailingBit(_wgslsmith_dot_vec2_u32(global4.a.xy, global4.a.yy) | _wgslsmith_dot_vec4_u32(global4.b, global4.b)) << (1u % 32u);
    global2 = -1359f;
    let var_1 = u_input.a.xwx;
    let var_2 = Struct_3(1u);
    let var_3 = Struct_2(global3[_wgslsmith_index_u32(max(4294967295u, 28827u), 2u)], 2147483647i, Struct_1(~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, 43498u, 1u), global4.a)), ~global4.b));
    return Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 1u, 0u), ~vec3<u32>(0u, 102925u, var_3.c.a.x) << (select(vec3<u32>(u_input.b, 5667u, global4.a.x), vec3<u32>(71213u, 19604u, 10125u), true) % vec3<u32>(32u))), ~vec4<u32>(4294967295u, countOneBits(0u), u_input.b, ~7316u)), _wgslsmith_add_i32(u_input.d, -1i) << (1u % 32u), Struct_1(global4.b.xzz, vec4<u32>(var_2.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_3.b, 33305u, 26878u), 4294967295u), 0u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global0.x, _wgslsmith_f_op_f32(min(-1482f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.x, -1331f, false)), _wgslsmith_f_op_f32(select(1048f, 323f, false)))))))), func_1(Struct_3(~4294967295u >> (0u % 32u))), Struct_5(2147483647i, u_input.a.x, u_input.d));
    var var_1 = _wgslsmith_div_f32(-126f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(max(global0.x, global0.x))) + _wgslsmith_f_op_f32(floor(273f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1141f)));
}

