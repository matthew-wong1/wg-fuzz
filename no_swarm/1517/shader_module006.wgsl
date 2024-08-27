struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global1: i32 = 0i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    global0 = array<Struct_1, 23>();
    var var_0 = -25382i;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(51502u >> (u_input.a.x % 32u)), firstLeadingBit(u_input.a.x)), 23u)];
    var_0 = 0i;
    var_0 = ~_wgslsmith_mod_i32(~(-u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(7927i, u_input.b), ~(-vec2<i32>(1i, -14357i))));
    return !(true || (_wgslsmith_f_op_f32(round(-1000f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1149f)))));
}

fn func_2() -> Struct_3 {
    let var_0 = true;
    let var_1 = select(u_input.a.yx, u_input.a.xw, func_3(32495i, true));
    var var_2 = Struct_2((-54440i < u_input.b) && (var_0 | var_0), Struct_1(_wgslsmith_f_op_f32(-666f * -2900f) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(502f))))));
    var var_3 = func_3(-1i, (min(_wgslsmith_mod_u32(4294967295u, 4294967295u), u_input.a.x) >> (u_input.a.x % 32u)) > (var_1.x << ((firstTrailingBit(u_input.a.x) | ~4294967295u) % 32u)));
    var var_4 = Struct_2(!(u_input.a.x != 0u), global0[_wgslsmith_index_u32(u_input.a.x, 23u)]);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-995f))), abs(reverseBits(abs(var_1.x))), Struct_2(var_4.b.a, Struct_1(false)));
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_1, 23>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    var var_0 = func_1();
    var_0 = Struct_3(274f, _wgslsmith_mult_u32(_wgslsmith_sub_u32(func_2().b, ~_wgslsmith_sub_u32(2669u, u_input.a.x)), max(var_0.b, 71470u)), func_1().c);
    var_0 = Struct_3(-608f, var_0.b, var_0.c);
    var_0 = Struct_3(-1000f, var_0.b, var_0.c);
    let var_1 = _wgslsmith_div_vec4_u32(u_input.a, ~vec4<u32>(~var_0.b, _wgslsmith_div_u32(1u, var_0.b >> (u_input.a.x % 32u)), 1u, countOneBits(func_1().b)));
    let var_2 = select(firstTrailingBit(max(firstLeadingBit(var_1), vec4<u32>(var_1.x, countOneBits(var_0.b), 1u, 11611u))), countOneBits(select(select(reverseBits(u_input.a), vec4<u32>(0u, var_1.x, 11091u, u_input.a.x) ^ u_input.a, false), vec4<u32>(~var_0.b, var_1.x << (60643u % 32u), var_1.x, ~u_input.a.x), select(vec4<bool>(var_0.c.b.a, var_0.c.b.a, var_0.c.a, var_0.c.b.a), vec4<bool>(var_0.c.b.a, var_0.c.b.a, var_0.c.a, var_0.c.b.a), vec4<bool>(true, true, true, true)))), !(!vec4<bool>(any(vec3<bool>(var_0.c.a, true, var_0.c.a)), false, var_0.c.a | false, var_0.c.a)));
    global0 = array<Struct_1, 23>();
    var var_3 = u_input.c & -46816i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b ^ reverseBits(u_input.c >> (abs(var_1.x) % 32u)), abs(-(vec4<i32>(-1i) * -vec4<i32>(19332i, u_input.b, u_input.b, u_input.b))), min(~_wgslsmith_mod_vec2_i32(~vec2<i32>(-16157i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, -9737i))), ~select(~vec2<i32>(2147483647i, u_input.b), vec2<i32>(-33617i, -1i), !vec2<bool>(var_0.c.a, var_0.c.a))));
}

