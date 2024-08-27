struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(37193u, 4294967295u, 20419u), vec2<i32>(-14865i, 1027i), vec2<u32>(53634u, 4294967295u));

var<private> global1: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(-592f, -801f), vec2<f32>(-1000f, -404f), vec2<f32>(246f, 1207f), vec2<f32>(363f, -1017f), vec2<f32>(150f, 1969f), vec2<f32>(237f, 1675f), vec2<f32>(-1264f, -872f), vec2<f32>(299f, -1000f), vec2<f32>(-480f, 1453f), vec2<f32>(-1601f, -917f), vec2<f32>(-575f, 2661f), vec2<f32>(-564f, 564f), vec2<f32>(-1629f, 1725f), vec2<f32>(-1067f, -341f), vec2<f32>(-185f, -729f), vec2<f32>(737f, 623f), vec2<f32>(1000f, 1438f), vec2<f32>(1591f, -1987f), vec2<f32>(-148f, 127f), vec2<f32>(759f, 239f));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    global1 = array<vec2<f32>, 20>();
    let var_0 = Struct_1(arg_3.a, abs(~(reverseBits(vec2<i32>(-8293i, arg_0.x)) << (u_input.b % vec2<u32>(32u)))), vec2<u32>(1u, 4294967295u));
    var var_1 = Struct_1(~vec3<u32>(_wgslsmith_mult_u32(1u, 48538u), ~(~global0.a.x), abs(~var_0.c.x)), _wgslsmith_div_vec2_i32(arg_0.zy, vec2<i32>(1i, -1i)), arg_3.a.zz);
    let var_2 = _wgslsmith_sub_u32(4294967295u, ~(~(15575u & var_0.c.x))) == 0u;
    var var_3 = 4688i;
    return ~(~_wgslsmith_sub_u32(firstLeadingBit(19714u), arg_3.a.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    global1 = array<vec2<f32>, 20>();
    let var_0 = Struct_1(vec3<u32>(~_wgslsmith_sub_u32(98861u, 0u), _wgslsmith_dot_vec3_u32(global0.a, arg_0.a), _wgslsmith_div_u32((1u & u_input.c) << (func_3(vec3<i32>(u_input.a.x, -2147483647i, u_input.d.x), vec4<u32>(global0.c.x, u_input.b.x, 1u, global0.c.x), vec4<u32>(u_input.b.x, arg_0.c.x, 0u, 39653u), Struct_1(vec3<u32>(39192u, global0.a.x, u_input.b.x), arg_0.b, vec2<u32>(1u, 31692u))) % 32u), ~24640u >> (global0.a.x % 32u))), u_input.a, max(_wgslsmith_div_vec2_u32(arg_0.c, vec2<u32>(arg_1.a.x ^ 4294967295u, _wgslsmith_mod_u32(31812u, 34652u))), u_input.b));
    let var_1 = Struct_1(global0.a, arg_1.b, var_0.a.xz);
    let var_2 = -688f;
    let var_3 = select(!vec3<bool>(true, !(3727u == var_1.c.x), u_input.b.x > max(var_0.a.x, global0.c.x)), select(vec3<bool>(true, !(arg_1.a.x == var_0.a.x), any(vec2<bool>(false, false))), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true)), !select(false, true, true), false)), vec3<bool>(true, true, true));
    return var_0.a.x;
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<f32>, 20>();
    let var_0 = Struct_1(~(_wgslsmith_mult_vec3_u32(min(vec3<u32>(0u, u_input.c, 32035u), vec3<u32>(global0.c.x, global0.a.x, u_input.b.x)), ~global0.a) << (vec3<u32>(~global0.c.x, ~global0.c.x, 1u | u_input.b.x) % vec3<u32>(32u))), ~global0.b, max(u_input.b, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 48672u), vec2<u32>(u_input.b.x, global0.a.x)), global0.c)) | vec2<u32>(func_2(Struct_1(global0.a, u_input.a, vec2<u32>(u_input.b.x, u_input.c)), Struct_1(vec3<u32>(global0.a.x, 1u, u_input.b.x), vec2<i32>(global0.b.x, -1i), u_input.b), 1f), 116388u));
    let var_1 = vec3<f32>(251f, _wgslsmith_f_op_f32(sign(-1517f)), 1261f);
    return Struct_1(global0.a ^ _wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(19031u), 1u >> (var_0.c.x % 32u), select(1u, 1u, false)), ~(global0.a << (var_0.a % vec3<u32>(32u)))), _wgslsmith_sub_vec2_i32(~vec2<i32>(abs(-2147483647i), -1i | u_input.a.x), _wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(var_0.b, u_input.a), max(firstTrailingBit(u_input.a), vec2<i32>(global0.b.x, 1i)))), u_input.b >> (firstTrailingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0.a.x, 43683u), global0.c), vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~global0.b.x);
    var_0 = 58462i;
    var var_1 = vec3<bool>(true, false, true);
    var var_2 = func_1();
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, -31766i, vec3<u32>(~global0.a.x, ~1u, 50399u), var_2.c.x);
}

